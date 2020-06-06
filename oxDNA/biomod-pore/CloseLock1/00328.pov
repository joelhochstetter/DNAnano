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
	<23.987980, 34.788357, 34.949856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331509, 34.642994, 34.805435>,  <24.537626, 34.555775, 34.718784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331509, 34.642994, 34.805435>,  <23.987980, 34.788357, 34.949856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331509, 34.642994, 34.805435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443390, -0.880330, -0.168596,
		-0.256571, 0.304878, -0.917181,
		0.858823, -0.363412, -0.361047,
		24.589155, 34.533970, 34.697121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.858505, 34.406139, 34.403709>,  <23.987980, 34.788357, 34.949856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.858505, 34.406139, 34.403709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216560, 34.254139, 34.496941>,  <24.431393, 34.162937, 34.552879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216560, 34.254139, 34.496941>,  <23.858505, 34.406139, 34.403709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216560, 34.254139, 34.496941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368387, -0.924981, -0.093280,
		0.251040, -0.002365, -0.967974,
		0.895137, -0.380005, 0.233079,
		24.485102, 34.140137, 34.566864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254293, 34.078190, 33.726868>,  <23.858505, 34.406139, 34.403709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254293, 34.078190, 33.726868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316219, 33.924408, 34.090897>,  <24.353374, 33.832138, 34.309315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316219, 33.924408, 34.090897>,  <24.254293, 34.078190, 33.726868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316219, 33.924408, 34.090897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107799, -0.922249, -0.371262,
		0.982044, -0.040627, -0.184223,
		0.154816, -0.384455, 0.910069,
		24.362663, 33.809071, 34.363918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815649, 34.003540, 33.091579>,  <24.254293, 34.078190, 33.726868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815649, 34.003540, 33.091579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987839, 34.263218, 32.840744>,  <25.091152, 34.419025, 32.690243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987839, 34.263218, 32.840744>,  <24.815649, 34.003540, 33.091579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987839, 34.263218, 32.840744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063945, -0.714948, -0.696247,
		-0.900335, 0.259617, -0.349278,
		0.430474, 0.649190, -0.627092,
		25.116982, 34.457973, 32.652615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406923, 33.964291, 32.503597>,  <24.815649, 34.003540, 33.091579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406923, 33.964291, 32.503597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780344, 34.080997, 32.420315>,  <25.004396, 34.151024, 32.370346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780344, 34.080997, 32.420315>,  <24.406923, 33.964291, 32.503597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780344, 34.080997, 32.420315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035587, -0.653440, -0.756142,
		-0.356670, 0.698489, -0.620404,
		0.933553, 0.291771, -0.208205,
		25.060410, 34.168530, 32.357853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478540, 34.177979, 31.791340>,  <24.406923, 33.964291, 32.503597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478540, 34.177979, 31.791340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857088, 34.097614, 31.892548>,  <25.084217, 34.049397, 31.953272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857088, 34.097614, 31.892548>,  <24.478540, 34.177979, 31.791340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857088, 34.097614, 31.892548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108449, -0.540158, -0.834546,
		0.304335, 0.817230, -0.489402,
		0.946371, -0.200907, 0.253017,
		25.140999, 34.037342, 31.968452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952002, 34.087395, 31.118017>,  <24.478540, 34.177979, 31.791340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952002, 34.087395, 31.118017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134962, 33.920609, 31.432196>,  <25.244738, 33.820538, 31.620703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134962, 33.920609, 31.432196>,  <24.952002, 34.087395, 31.118017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134962, 33.920609, 31.432196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227204, -0.799144, -0.556549,
		0.859746, 0.433023, -0.270793,
		0.457401, -0.416965, 0.785445,
		25.272182, 33.795517, 31.667830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636089, 33.955437, 30.925915>,  <24.952002, 34.087395, 31.118017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636089, 33.955437, 30.925915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595459, 33.713947, 31.242191>,  <25.571081, 33.569054, 31.431957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595459, 33.713947, 31.242191>,  <25.636089, 33.955437, 30.925915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595459, 33.713947, 31.242191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342781, -0.767373, -0.541885,
		0.933908, 0.215992, 0.284893,
		-0.101576, -0.603727, 0.790694,
		25.564987, 33.532829, 31.479399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322611, 33.734737, 31.010445>,  <25.636089, 33.955437, 30.925915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322611, 33.734737, 31.010445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054529, 33.474289, 31.152916>,  <25.893681, 33.318020, 31.238398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054529, 33.474289, 31.152916>,  <26.322611, 33.734737, 31.010445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054529, 33.474289, 31.152916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397138, -0.720051, -0.569041,
		0.626982, -0.239923, 0.741168,
		-0.670205, -0.651125, 0.356177,
		25.853468, 33.278950, 31.259769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753502, 33.083817, 31.174767>,  <26.322611, 33.734737, 31.010445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753502, 33.083817, 31.174767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377733, 32.950611, 31.207247>,  <26.152273, 32.870689, 31.226734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377733, 32.950611, 31.207247>,  <26.753502, 33.083817, 31.174767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377733, 32.950611, 31.207247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241981, -0.812093, -0.530990,
		0.242768, -0.479173, 0.843479,
		-0.939419, -0.333013, 0.081199,
		26.095907, 32.850708, 31.231607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916573, 32.424335, 31.337387>,  <26.753502, 33.083817, 31.174767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916573, 32.424335, 31.337387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536415, 32.427433, 31.213007>,  <26.308321, 32.429291, 31.138378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536415, 32.427433, 31.213007>,  <26.916573, 32.424335, 31.337387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536415, 32.427433, 31.213007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164778, -0.835363, -0.524420,
		-0.263816, -0.549643, 0.792650,
		-0.950394, 0.007739, -0.310951,
		26.251297, 32.429756, 31.119722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642540, 31.738216, 31.462395>,  <26.916573, 32.424335, 31.337387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642540, 31.738216, 31.462395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424871, 31.920588, 31.180683>,  <26.294270, 32.030010, 31.011656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424871, 31.920588, 31.180683>,  <26.642540, 31.738216, 31.462395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424871, 31.920588, 31.180683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258957, -0.707184, -0.657899,
		-0.798010, -0.540386, 0.266762,
		-0.544170, 0.455930, -0.704277,
		26.261620, 32.057365, 30.969400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235510, 31.251341, 31.245699>,  <26.642540, 31.738216, 31.462395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235510, 31.251341, 31.245699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218258, 31.508566, 30.939859>,  <26.207907, 31.662901, 30.756355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218258, 31.508566, 30.939859>,  <26.235510, 31.251341, 31.245699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218258, 31.508566, 30.939859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311217, -0.718582, -0.621919,
		-0.949360, -0.264779, -0.169140,
		-0.043130, 0.643064, -0.764597,
		26.205318, 31.701485, 30.710480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886759, 30.956758, 30.743288>,  <26.235510, 31.251341, 31.245699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886759, 30.956758, 30.743288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093548, 31.238516, 30.548735>,  <26.217621, 31.407570, 30.432003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093548, 31.238516, 30.548735>,  <25.886759, 30.956758, 30.743288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093548, 31.238516, 30.548735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210545, -0.655385, -0.725356,
		-0.829704, 0.272585, -0.487124,
		0.516975, 0.704392, -0.486383,
		26.248640, 31.449833, 30.402821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669769, 30.871214, 30.080566>,  <25.886759, 30.956758, 30.743288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669769, 30.871214, 30.080566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011557, 31.069143, 30.017277>,  <26.216629, 31.187901, 29.979303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011557, 31.069143, 30.017277>,  <25.669769, 30.871214, 30.080566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011557, 31.069143, 30.017277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272416, -0.686113, -0.674565,
		-0.442350, 0.533291, -0.721060,
		0.854468, 0.494822, -0.158225,
		26.267897, 31.217590, 29.969809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744316, 30.817402, 29.414873>,  <25.669769, 30.871214, 30.080566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744316, 30.817402, 29.414873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115917, 30.888748, 29.544577>,  <26.338877, 30.931557, 29.622398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115917, 30.888748, 29.544577>,  <25.744316, 30.817402, 29.414873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115917, 30.888748, 29.544577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351587, -0.698881, -0.622858,
		0.115521, 0.692640, -0.711972,
		0.929000, 0.178367, 0.324258,
		26.394617, 30.942259, 29.641853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161116, 31.009829, 28.784969>,  <25.744316, 30.817402, 29.414873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161116, 31.009829, 28.784969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390512, 30.879461, 29.085604>,  <26.528151, 30.801241, 29.265984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390512, 30.879461, 29.085604>,  <26.161116, 31.009829, 28.784969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390512, 30.879461, 29.085604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544702, -0.533558, -0.647005,
		0.611886, 0.780444, -0.128463,
		0.573494, -0.325920, 0.751586,
		26.562561, 30.781685, 29.311079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769388, 31.078712, 28.493732>,  <26.161116, 31.009829, 28.784969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769388, 31.078712, 28.493732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848022, 30.831894, 28.798523>,  <26.895203, 30.683802, 28.981398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848022, 30.831894, 28.798523>,  <26.769388, 31.078712, 28.493732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848022, 30.831894, 28.798523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722748, -0.433957, -0.537882,
		0.662564, 0.656455, 0.360660,
		0.196585, -0.617048, 0.761976,
		26.906998, 30.646780, 29.027115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448381, 31.164694, 28.458975>,  <26.769388, 31.078712, 28.493732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448381, 31.164694, 28.458975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327442, 30.824005, 28.630161>,  <27.254879, 30.619593, 28.732874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327442, 30.824005, 28.630161>,  <27.448381, 31.164694, 28.458975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327442, 30.824005, 28.630161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545691, -0.522789, -0.654915,
		0.781541, 0.035524, 0.622842,
		-0.302349, -0.851722, 0.427966,
		27.236738, 30.568489, 28.758551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025761, 30.677660, 28.510120>,  <27.448381, 31.164694, 28.458975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025761, 30.677660, 28.510120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726364, 30.421665, 28.579609>,  <27.546726, 30.268068, 28.621302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726364, 30.421665, 28.579609>,  <28.025761, 30.677660, 28.510120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726364, 30.421665, 28.579609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382047, -0.630280, -0.675860,
		0.542035, -0.439505, 0.716264,
		-0.748491, -0.639986, 0.173722,
		27.501818, 30.229670, 28.631725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382866, 29.940599, 28.497503>,  <28.025761, 30.677660, 28.510120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382866, 29.940599, 28.497503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994438, 29.878187, 28.425198>,  <27.761381, 29.840740, 28.381815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994438, 29.878187, 28.425198>,  <28.382866, 29.940599, 28.497503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994438, 29.878187, 28.425198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238132, -0.576621, -0.781538,
		0.017710, -0.801974, 0.597096,
		-0.971071, -0.156029, -0.180763,
		27.703117, 29.831379, 28.370968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272612, 29.166792, 28.449434>,  <28.382866, 29.940599, 28.497503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272612, 29.166792, 28.449434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989325, 29.365061, 28.248343>,  <27.819351, 29.484022, 28.127687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989325, 29.365061, 28.248343>,  <28.272612, 29.166792, 28.449434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989325, 29.365061, 28.248343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264125, -0.474352, -0.839778,
		-0.654725, -0.727530, 0.205025,
		-0.708218, 0.495672, -0.502729,
		27.776859, 29.513762, 28.097525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215763, 28.769850, 27.865044>,  <28.272612, 29.166792, 28.449434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215763, 28.769850, 27.865044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985235, 29.073256, 27.743382>,  <27.846918, 29.255299, 27.670385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985235, 29.073256, 27.743382>,  <28.215763, 28.769850, 27.865044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985235, 29.073256, 27.743382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201408, -0.228867, -0.952394,
		-0.792017, -0.610143, -0.020870,
		-0.576320, 0.758516, -0.304155,
		27.812340, 29.300810, 27.652136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860769, 28.537390, 27.359772>,  <28.215763, 28.769850, 27.865044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860769, 28.537390, 27.359772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828426, 28.932516, 27.306578>,  <27.809021, 29.169592, 27.274662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828426, 28.932516, 27.306578>,  <27.860769, 28.537390, 27.359772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828426, 28.932516, 27.306578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165857, -0.118225, -0.979037,
		-0.982829, -0.101219, -0.154277,
		-0.080858, 0.987815, -0.132983,
		27.804169, 29.228861, 27.266684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368713, 28.636339, 26.771547>,  <27.860769, 28.537390, 27.359772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368713, 28.636339, 26.771547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631332, 28.931763, 26.832840>,  <27.788904, 29.109016, 26.869616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631332, 28.931763, 26.832840>,  <27.368713, 28.636339, 26.771547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631332, 28.931763, 26.832840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258167, -0.029151, -0.965661,
		-0.708729, 0.673560, -0.209810,
		0.656547, 0.738557, 0.153231,
		27.828297, 29.153330, 26.878809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402172, 29.048126, 26.083006>,  <27.368713, 28.636339, 26.771547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402172, 29.048126, 26.083006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723373, 29.177088, 26.283501>,  <27.916094, 29.254465, 26.403797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723373, 29.177088, 26.283501>,  <27.402172, 29.048126, 26.083006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723373, 29.177088, 26.283501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483261, 0.139945, -0.864219,
		-0.348775, 0.936200, -0.043430,
		0.803004, 0.322406, 0.501238,
		27.964275, 29.273809, 26.433872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637262, 29.795269, 26.114738>,  <27.402172, 29.048126, 26.083006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637262, 29.795269, 26.114738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967951, 29.570223, 26.115179>,  <28.166363, 29.435196, 26.115442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967951, 29.570223, 26.115179>,  <27.637262, 29.795269, 26.114738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967951, 29.570223, 26.115179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196244, 0.286532, -0.937757,
		0.527279, 0.775478, 0.347291,
		0.826720, -0.562613, 0.001101,
		28.215967, 29.401440, 26.115509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395428, 29.984396, 26.150000>,  <27.637262, 29.795269, 26.114738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395428, 29.984396, 26.150000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352880, 29.655685, 25.926083>,  <28.327353, 29.458460, 25.791733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352880, 29.655685, 25.926083>,  <28.395428, 29.984396, 26.150000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352880, 29.655685, 25.926083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335356, 0.500353, -0.798238,
		0.936067, -0.272639, 0.222365,
		-0.106369, -0.821776, -0.559795,
		28.320971, 29.409153, 25.758144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025585, 29.946232, 25.797972>,  <28.395428, 29.984396, 26.150000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025585, 29.946232, 25.797972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726061, 29.764069, 25.605354>,  <28.546347, 29.654770, 25.489784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726061, 29.764069, 25.605354>,  <29.025585, 29.946232, 25.797972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726061, 29.764069, 25.605354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255111, 0.472525, -0.843587,
		0.611717, -0.754535, -0.237653,
		-0.748813, -0.455408, -0.481541,
		28.501417, 29.627445, 25.460892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063520, 29.557768, 25.005154>,  <29.025585, 29.946232, 25.797972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063520, 29.557768, 25.005154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717241, 29.741364, 25.085051>,  <28.509474, 29.851521, 25.132990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717241, 29.741364, 25.085051>,  <29.063520, 29.557768, 25.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717241, 29.741364, 25.085051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102538, 0.553175, -0.826731,
		-0.489955, -0.695216, -0.525946,
		-0.865696, 0.458990, 0.199745,
		28.457533, 29.879061, 25.144974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574015, 29.431868, 24.444130>,  <29.063520, 29.557768, 25.005154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574015, 29.431868, 24.444130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519617, 29.787441, 24.619083>,  <28.486979, 30.000786, 24.724056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519617, 29.787441, 24.619083>,  <28.574015, 29.431868, 24.444130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519617, 29.787441, 24.619083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144777, 0.454576, -0.878863,
		-0.980074, -0.056196, -0.190516,
		-0.135993, 0.888933, 0.437383,
		28.478819, 30.054121, 24.750298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034805, 29.861160, 24.183846>,  <28.574015, 29.431868, 24.444130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034805, 29.861160, 24.183846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306152, 30.106348, 24.345877>,  <28.468960, 30.253460, 24.443096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306152, 30.106348, 24.345877>,  <28.034805, 29.861160, 24.183846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306152, 30.106348, 24.345877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123143, 0.448677, -0.885169,
		-0.724331, 0.650351, 0.228884,
		0.678366, 0.612970, 0.405077,
		28.509663, 30.290239, 24.467400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931490, 30.577734, 23.910631>,  <28.034805, 29.861160, 24.183846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931490, 30.577734, 23.910631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311319, 30.538916, 24.029890>,  <28.539217, 30.515625, 24.101444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311319, 30.538916, 24.029890>,  <27.931490, 30.577734, 23.910631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311319, 30.538916, 24.029890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300520, 0.552908, -0.777162,
		-0.089425, 0.827571, 0.554192,
		0.949574, -0.097048, 0.298146,
		28.596191, 30.509802, 24.119333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303761, 31.272373, 24.071543>,  <27.931490, 30.577734, 23.910631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303761, 31.272373, 24.071543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576658, 30.998138, 23.969946>,  <28.740398, 30.833597, 23.908987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576658, 30.998138, 23.969946>,  <28.303761, 31.272373, 24.071543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576658, 30.998138, 23.969946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259200, 0.551645, -0.792782,
		0.683634, 0.475038, 0.554061,
		0.682247, -0.685585, -0.253994,
		28.781332, 30.792463, 23.893747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117895, 32.000107, 24.208523>,  <28.303761, 31.272373, 24.071543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117895, 32.000107, 24.208523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739233, 32.127441, 24.188484>,  <27.512035, 32.203842, 24.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739233, 32.127441, 24.188484>,  <28.117895, 32.000107, 24.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739233, 32.127441, 24.188484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115919, 0.481440, 0.868780,
		0.300681, 0.816627, -0.492658,
		-0.946654, 0.318333, -0.050097,
		27.455236, 32.222942, 24.173454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081409, 32.798950, 24.190187>,  <28.117895, 32.000107, 24.208523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081409, 32.798950, 24.190187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817392, 32.618031, 24.430113>,  <27.658983, 32.509480, 24.574068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817392, 32.618031, 24.430113>,  <28.081409, 32.798950, 24.190187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817392, 32.618031, 24.430113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016185, 0.789695, 0.613287,
		-0.751055, 0.414502, -0.513911,
		-0.660041, -0.452294, 0.599813,
		27.619379, 32.482342, 24.610056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505617, 33.251549, 24.330500>,  <28.081409, 32.798950, 24.190187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505617, 33.251549, 24.330500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537380, 32.988556, 24.630207>,  <27.556438, 32.830761, 24.810032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537380, 32.988556, 24.630207>,  <27.505617, 33.251549, 24.330500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537380, 32.988556, 24.630207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064268, 0.753457, 0.654349,
		-0.994768, -0.003808, 0.102087,
		0.079410, -0.657486, 0.749270,
		27.561203, 32.791309, 24.854988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959938, 33.452721, 24.788780>,  <27.505617, 33.251549, 24.330500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959938, 33.452721, 24.788780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226009, 33.236225, 24.994537>,  <27.385653, 33.106327, 25.117992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226009, 33.236225, 24.994537>,  <26.959938, 33.452721, 24.788780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226009, 33.236225, 24.994537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131913, 0.592888, 0.794407,
		-0.734942, -0.596277, 0.322979,
		0.665176, -0.541238, 0.514395,
		27.425562, 33.073853, 25.148855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629436, 33.431206, 25.362450>,  <26.959938, 33.452721, 24.788780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629436, 33.431206, 25.362450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018787, 33.355129, 25.413618>,  <27.252398, 33.309483, 25.444319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018787, 33.355129, 25.413618>,  <26.629436, 33.431206, 25.362450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018787, 33.355129, 25.413618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023711, 0.638654, 0.769129,
		-0.227977, -0.745620, 0.626161,
		0.973378, -0.190190, 0.127919,
		27.310801, 33.298073, 25.451994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714876, 33.510437, 26.060793>,  <26.629436, 33.431206, 25.362450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714876, 33.510437, 26.060793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096378, 33.502605, 25.940813>,  <27.325279, 33.497906, 25.868826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096378, 33.502605, 25.940813>,  <26.714876, 33.510437, 26.060793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096378, 33.502605, 25.940813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248224, 0.614064, 0.749207,
		0.169519, -0.789014, 0.590526,
		0.953755, -0.019578, -0.299947,
		27.382505, 33.496731, 25.850828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036428, 33.312988, 26.639776>,  <26.714876, 33.510437, 26.060793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036428, 33.312988, 26.639776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296343, 33.516750, 26.414110>,  <27.452291, 33.639008, 26.278709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296343, 33.516750, 26.414110>,  <27.036428, 33.312988, 26.639776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296343, 33.516750, 26.414110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231460, 0.574362, 0.785197,
		0.724020, -0.640792, 0.255305,
		0.649786, 0.509405, -0.564167,
		27.491280, 33.669571, 26.244860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514183, 33.454853, 27.095797>,  <27.036428, 33.312988, 26.639776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514183, 33.454853, 27.095797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630926, 33.683620, 26.789143>,  <27.700972, 33.820881, 26.605150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630926, 33.683620, 26.789143>,  <27.514183, 33.454853, 27.095797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630926, 33.683620, 26.789143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425598, 0.640152, 0.639587,
		0.856554, -0.512947, -0.056573,
		0.291859, 0.571918, -0.766634,
		27.718485, 33.855194, 26.559153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267359, 33.673531, 27.159323>,  <27.514183, 33.454853, 27.095797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267359, 33.673531, 27.159323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073727, 33.955311, 26.951700>,  <27.957548, 34.124378, 26.827127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073727, 33.955311, 26.951700>,  <28.267359, 33.673531, 27.159323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073727, 33.955311, 26.951700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095879, 0.632319, 0.768752,
		0.869755, 0.322370, -0.373634,
		-0.484079, 0.704450, -0.519054,
		27.928503, 34.166645, 26.795984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645025, 34.216560, 27.360418>,  <28.267359, 33.673531, 27.159323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645025, 34.216560, 27.360418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321304, 34.378128, 27.189831>,  <28.127071, 34.475071, 27.087479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321304, 34.378128, 27.189831>,  <28.645025, 34.216560, 27.360418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321304, 34.378128, 27.189831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003893, 0.729708, 0.683747,
		0.587378, 0.551698, -0.592128,
		-0.809303, 0.403923, -0.426467,
		28.078514, 34.499306, 27.061890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760506, 34.915848, 27.320534>,  <28.645025, 34.216560, 27.360418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760506, 34.915848, 27.320534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360596, 34.920883, 27.313663>,  <28.120649, 34.923904, 27.309542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360596, 34.920883, 27.313663>,  <28.760506, 34.915848, 27.320534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360596, 34.920883, 27.313663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010572, 0.406720, 0.913492,
		0.018483, 0.913466, -0.406495,
		-0.999773, 0.012586, -0.017175,
		28.060663, 34.924660, 27.308512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534155, 35.559261, 27.536926>,  <28.760506, 34.915848, 27.320534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534155, 35.559261, 27.536926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221571, 35.317516, 27.598974>,  <28.034019, 35.172470, 27.636202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221571, 35.317516, 27.598974>,  <28.534155, 35.559261, 27.536926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221571, 35.317516, 27.598974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177745, 0.453929, 0.873129,
		-0.598101, 0.654746, -0.462151,
		-0.781462, -0.604364, 0.155118,
		27.987133, 35.136208, 27.645510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045427, 35.967548, 27.805246>,  <28.534155, 35.559261, 27.536926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045427, 35.967548, 27.805246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922611, 35.601784, 27.910757>,  <27.848921, 35.382324, 27.974064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922611, 35.601784, 27.910757>,  <28.045427, 35.967548, 27.805246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922611, 35.601784, 27.910757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211969, 0.335910, 0.917733,
		-0.927790, 0.225870, -0.296965,
		-0.307042, -0.914411, 0.263776,
		27.830500, 35.327461, 27.989889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493212, 36.073170, 28.367260>,  <28.045427, 35.967548, 27.805246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493212, 36.073170, 28.367260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534254, 35.679729, 28.426601>,  <27.558880, 35.443665, 28.462206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534254, 35.679729, 28.426601>,  <27.493212, 36.073170, 28.367260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534254, 35.679729, 28.426601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394801, 0.096621, 0.913672,
		-0.913019, -0.152319, -0.378411,
		0.102607, -0.983597, 0.148353,
		27.565037, 35.384651, 28.471107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882870, 35.742882, 28.705561>,  <27.493212, 36.073170, 28.367260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882870, 35.742882, 28.705561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213865, 35.542217, 28.806438>,  <27.412462, 35.421818, 28.866966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213865, 35.542217, 28.806438>,  <26.882870, 35.742882, 28.705561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213865, 35.542217, 28.806438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216357, 0.129593, 0.967675,
		-0.518124, -0.855305, -0.001300,
		0.827489, -0.501657, 0.252196,
		27.462112, 35.391720, 28.882097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646906, 35.294807, 29.263887>,  <26.882870, 35.742882, 28.705561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646906, 35.294807, 29.263887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043154, 35.330803, 29.305031>,  <27.280903, 35.352398, 29.329718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043154, 35.330803, 29.305031>,  <26.646906, 35.294807, 29.263887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043154, 35.330803, 29.305031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091645, -0.120927, 0.988422,
		0.101382, -0.988575, -0.111545,
		0.990617, 0.089985, 0.102858,
		27.340340, 35.357800, 29.335888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759502, 34.852467, 29.849468>,  <26.646906, 35.294807, 29.263887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759502, 34.852467, 29.849468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107630, 35.046917, 29.817913>,  <27.316507, 35.163589, 29.798981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107630, 35.046917, 29.817913>,  <26.759502, 34.852467, 29.849468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107630, 35.046917, 29.817913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168013, -0.142507, 0.975430,
		0.462943, -0.862189, -0.205702,
		0.870319, 0.486129, -0.078886,
		27.368725, 35.192757, 29.794247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234844, 34.432560, 30.154701>,  <26.759502, 34.852467, 29.849468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234844, 34.432560, 30.154701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452017, 34.768314, 30.164991>,  <27.582321, 34.969765, 30.171165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452017, 34.768314, 30.164991>,  <27.234844, 34.432560, 30.154701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452017, 34.768314, 30.164991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228170, -0.176931, 0.957410,
		0.808185, -0.513939, -0.287583,
		0.542933, 0.839382, 0.025727,
		27.614897, 35.020130, 30.172710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866127, 34.185364, 30.519672>,  <27.234844, 34.432560, 30.154701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866127, 34.185364, 30.519672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857378, 34.584961, 30.535297>,  <27.852129, 34.824718, 30.544672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857378, 34.584961, 30.535297>,  <27.866127, 34.185364, 30.519672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857378, 34.584961, 30.535297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104471, -0.036576, 0.993855,
		0.994287, 0.025820, -0.103566,
		-0.021873, 0.998997, 0.039065,
		27.850817, 34.884659, 30.547016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396521, 34.354130, 30.947754>,  <27.866127, 34.185364, 30.519672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396521, 34.354130, 30.947754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156258, 34.673874, 30.941702>,  <28.012100, 34.865723, 30.938070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156258, 34.673874, 30.941702>,  <28.396521, 34.354130, 30.947754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156258, 34.673874, 30.941702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040798, 0.049546, 0.997938,
		0.798465, 0.598801, -0.062373,
		-0.600657, 0.799364, -0.015131,
		27.976061, 34.913685, 30.937162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736900, 34.915413, 31.222609>,  <28.396521, 34.354130, 30.947754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736900, 34.915413, 31.222609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351656, 35.013378, 31.267214>,  <28.120510, 35.072159, 31.293976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351656, 35.013378, 31.267214>,  <28.736900, 34.915413, 31.222609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351656, 35.013378, 31.267214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152738, 0.156330, 0.975824,
		0.221562, 0.956858, -0.187971,
		-0.963110, 0.244915, 0.111512,
		28.062723, 35.086853, 31.300667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802689, 35.461128, 31.578857>,  <28.736900, 34.915413, 31.222609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802689, 35.461128, 31.578857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416872, 35.378796, 31.644939>,  <28.185381, 35.329395, 31.684587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416872, 35.378796, 31.644939>,  <28.802689, 35.461128, 31.578857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416872, 35.378796, 31.644939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099274, 0.297039, 0.949691,
		-0.244544, 0.932418, -0.266073,
		-0.964543, -0.205827, 0.165204,
		28.127510, 35.317047, 31.694500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452234, 36.045181, 31.696569>,  <28.802689, 35.461128, 31.578857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452234, 36.045181, 31.696569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299257, 35.730579, 31.890541>,  <28.207472, 35.541821, 32.006924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299257, 35.730579, 31.890541>,  <28.452234, 36.045181, 31.696569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299257, 35.730579, 31.890541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341994, 0.367062, 0.865046,
		-0.858359, 0.496672, 0.128599,
		-0.382440, -0.786500, 0.484930,
		28.184525, 35.494629, 32.036018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037296, 36.395016, 32.230476>,  <28.452234, 36.045181, 31.696569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037296, 36.395016, 32.230476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153709, 36.019241, 32.302883>,  <28.223557, 35.793777, 32.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153709, 36.019241, 32.302883>,  <28.037296, 36.395016, 32.230476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153709, 36.019241, 32.302883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324507, 0.274921, 0.905049,
		-0.899998, -0.204657, 0.384863,
		0.291032, -0.939433, 0.181015,
		28.241018, 35.737411, 32.357189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892742, 36.076889, 32.870113>,  <28.037296, 36.395016, 32.230476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892742, 36.076889, 32.870113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261583, 36.009686, 32.730686>,  <28.482887, 35.969364, 32.647030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261583, 36.009686, 32.730686>,  <27.892742, 36.076889, 32.870113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261583, 36.009686, 32.730686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382395, 0.533371, 0.754513,
		0.059152, -0.829029, 0.556068,
		0.922103, -0.168007, -0.348566,
		28.538214, 35.959282, 32.626118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333872, 35.765026, 33.435658>,  <27.892742, 36.076889, 32.870113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333872, 35.765026, 33.435658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543715, 35.953735, 33.152187>,  <28.669621, 36.066959, 32.982105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543715, 35.953735, 33.152187>,  <28.333872, 35.765026, 33.435658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543715, 35.953735, 33.152187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348890, 0.640170, 0.684440,
		0.776572, -0.606311, 0.171241,
		0.524606, 0.471772, -0.708674,
		28.701096, 36.095268, 32.939587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058496, 35.751385, 33.538303>,  <28.333872, 35.765026, 33.435658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058496, 35.751385, 33.538303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884762, 36.076096, 33.382168>,  <28.780521, 36.270924, 33.288486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884762, 36.076096, 33.382168>,  <29.058496, 35.751385, 33.538303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884762, 36.076096, 33.382168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482199, 0.575574, 0.660453,
		0.760812, 0.098638, -0.641432,
		-0.434338, 0.811779, -0.390341,
		28.754461, 36.319630, 33.265064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597284, 36.406677, 33.351147>,  <29.058496, 35.751385, 33.538303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597284, 36.406677, 33.351147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237751, 36.560238, 33.435738>,  <29.022032, 36.652374, 33.486492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237751, 36.560238, 33.435738>,  <29.597284, 36.406677, 33.351147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237751, 36.560238, 33.435738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424372, 0.641636, 0.638914,
		0.109589, 0.664020, -0.739640,
		-0.898832, 0.383901, 0.211475,
		28.968102, 36.675407, 33.499180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817236, 37.139202, 33.451180>,  <29.597284, 36.406677, 33.351147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817236, 37.139202, 33.451180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456079, 37.043133, 33.593784>,  <29.239386, 36.985493, 33.679348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456079, 37.043133, 33.593784>,  <29.817236, 37.139202, 33.451180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456079, 37.043133, 33.593784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183240, 0.535202, 0.824610,
		-0.388854, 0.809863, -0.439221,
		-0.902893, -0.240170, 0.356515,
		29.185211, 36.971081, 33.700737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442158, 37.747971, 33.510658>,  <29.817236, 37.139202, 33.451180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442158, 37.747971, 33.510658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330099, 37.448296, 33.750736>,  <29.262865, 37.268490, 33.894783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330099, 37.448296, 33.750736>,  <29.442158, 37.747971, 33.510658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330099, 37.448296, 33.750736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264778, 0.540671, 0.798478,
		-0.922719, 0.382608, 0.046902,
		-0.280146, -0.749190, 0.600194,
		29.246056, 37.223537, 33.930794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813368, 37.941154, 34.036770>,  <29.442158, 37.747971, 33.510658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813368, 37.941154, 34.036770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094450, 37.680885, 34.151886>,  <29.263100, 37.524723, 34.220955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094450, 37.680885, 34.151886>,  <28.813368, 37.941154, 34.036770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094450, 37.680885, 34.151886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196700, 0.566402, 0.800311,
		-0.683751, -0.505774, 0.526002,
		0.702705, -0.650678, 0.287792,
		29.305262, 37.485683, 34.238224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673311, 37.883820, 34.745773>,  <28.813368, 37.941154, 34.036770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673311, 37.883820, 34.745773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047447, 37.745377, 34.716507>,  <29.271929, 37.662312, 34.698948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047447, 37.745377, 34.716507>,  <28.673311, 37.883820, 34.745773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047447, 37.745377, 34.716507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264495, 0.546867, 0.794342,
		-0.234914, -0.762331, 0.603049,
		0.935339, -0.346106, -0.073166,
		29.328049, 37.641544, 34.694557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830919, 37.710472, 35.399837>,  <28.673311, 37.883820, 34.745773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830919, 37.710472, 35.399837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191097, 37.756390, 35.232018>,  <29.407204, 37.783939, 35.131325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191097, 37.756390, 35.232018>,  <28.830919, 37.710472, 35.399837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191097, 37.756390, 35.232018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354672, 0.364622, 0.860963,
		0.251805, -0.924053, 0.287611,
		0.900445, 0.114788, -0.419550,
		29.461231, 37.790825, 35.106152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281599, 37.422714, 35.924553>,  <28.830919, 37.710472, 35.399837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281599, 37.422714, 35.924553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506832, 37.656799, 35.691154>,  <29.641972, 37.797249, 35.551117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506832, 37.656799, 35.691154>,  <29.281599, 37.422714, 35.924553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506832, 37.656799, 35.691154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485104, 0.337551, 0.806681,
		0.669037, -0.737284, -0.093818,
		0.563084, 0.585210, -0.583493,
		29.675758, 37.832363, 35.516106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814842, 37.427002, 36.269871>,  <29.281599, 37.422714, 35.924553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814842, 37.427002, 36.269871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873980, 37.743740, 36.032848>,  <29.909462, 37.933781, 35.890633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873980, 37.743740, 36.032848>,  <29.814842, 37.427002, 36.269871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873980, 37.743740, 36.032848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414454, 0.494394, 0.764070,
		0.897981, -0.358553, -0.255088,
		0.147846, 0.791842, -0.592560,
		29.918333, 37.981293, 35.855080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481470, 37.636059, 36.344006>,  <29.814842, 37.427002, 36.269871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481470, 37.636059, 36.344006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296631, 37.965214, 36.211750>,  <30.185726, 38.162708, 36.132397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296631, 37.965214, 36.211750>,  <30.481470, 37.636059, 36.344006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296631, 37.965214, 36.211750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445504, 0.537776, 0.715768,
		0.766805, 0.183455, -0.615105,
		-0.462100, 0.822886, -0.330639,
		30.158001, 38.212078, 36.112556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027639, 38.206837, 36.423584>,  <30.481470, 37.636059, 36.344006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027639, 38.206837, 36.423584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690563, 38.414276, 36.365715>,  <30.488317, 38.538738, 36.330994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690563, 38.414276, 36.365715>,  <31.027639, 38.206837, 36.423584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690563, 38.414276, 36.365715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355748, 0.738022, 0.573383,
		0.404126, 0.431718, -0.806413,
		-0.842690, 0.518598, -0.144671,
		30.437756, 38.569855, 36.322315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253393, 38.880047, 36.343960>,  <31.027639, 38.206837, 36.423584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253393, 38.880047, 36.343960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865801, 38.882126, 36.442791>,  <30.633245, 38.883373, 36.502090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865801, 38.882126, 36.442791>,  <31.253393, 38.880047, 36.343960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865801, 38.882126, 36.442791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188101, 0.663976, 0.723708,
		-0.160292, 0.747736, -0.644358,
		-0.968981, 0.005200, 0.247080,
		30.575106, 38.883686, 36.516914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258276, 39.496254, 36.573612>,  <31.253393, 38.880047, 36.343960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258276, 39.496254, 36.573612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912399, 39.343693, 36.704357>,  <30.704874, 39.252155, 36.782803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912399, 39.343693, 36.704357>,  <31.258276, 39.496254, 36.573612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912399, 39.343693, 36.704357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149912, 0.425121, 0.892636,
		-0.479412, 0.820855, -0.310421,
		-0.864691, -0.381405, 0.326864,
		30.652992, 39.229271, 36.802418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861416, 40.105003, 36.908436>,  <31.258276, 39.496254, 36.573612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861416, 40.105003, 36.908436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718367, 39.757545, 37.045589>,  <30.632538, 39.549072, 37.127880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718367, 39.757545, 37.045589>,  <30.861416, 40.105003, 36.908436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718367, 39.757545, 37.045589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033322, 0.355061, 0.934249,
		-0.933271, 0.345535, -0.098033,
		-0.357623, -0.868641, 0.342882,
		30.611080, 39.496952, 37.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256636, 40.286667, 37.293686>,  <30.861416, 40.105003, 36.908436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256636, 40.286667, 37.293686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413273, 39.935322, 37.403332>,  <30.507256, 39.724514, 37.469120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413273, 39.935322, 37.403332>,  <30.256636, 40.286667, 37.293686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413273, 39.935322, 37.403332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039532, 0.313692, 0.948702,
		-0.919288, -0.360670, 0.157563,
		0.391595, -0.878359, 0.274115,
		30.530752, 39.671814, 37.485565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899055, 40.054134, 37.899353>,  <30.256636, 40.286667, 37.293686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899055, 40.054134, 37.899353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240919, 39.847115, 37.915821>,  <30.446037, 39.722900, 37.925701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240919, 39.847115, 37.915821>,  <29.899055, 40.054134, 37.899353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240919, 39.847115, 37.915821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007916, 0.092281, 0.995702,
		-0.519127, -0.850661, 0.082966,
		0.854661, -0.517552, 0.041172,
		30.497318, 39.691849, 37.928173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760122, 39.560566, 38.403366>,  <29.899055, 40.054134, 37.899353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760122, 39.560566, 38.403366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154154, 39.622223, 38.372742>,  <30.390572, 39.659218, 38.354366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154154, 39.622223, 38.372742>,  <29.760122, 39.560566, 38.403366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154154, 39.622223, 38.372742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080488, -0.019360, 0.996567,
		0.152131, -0.987859, -0.031478,
		0.985077, 0.154143, -0.076565,
		30.449677, 39.668465, 38.349773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024036, 39.197815, 39.010742>,  <29.760122, 39.560566, 38.403366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024036, 39.197815, 39.010742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353868, 39.401173, 38.911465>,  <30.551767, 39.523190, 38.851898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353868, 39.401173, 38.911465>,  <30.024036, 39.197815, 39.010742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353868, 39.401173, 38.911465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120256, 0.271172, 0.954989,
		0.552819, -0.817310, 0.162464,
		0.824578, 0.508399, -0.248196,
		30.601242, 39.553692, 38.837006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666817, 38.871449, 39.280415>,  <30.024036, 39.197815, 39.010742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666817, 38.871449, 39.280415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727261, 39.261971, 39.218460>,  <30.763527, 39.496284, 39.181290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727261, 39.261971, 39.218460>,  <30.666817, 38.871449, 39.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727261, 39.261971, 39.218460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065847, 0.146394, 0.987033,
		0.986322, -0.159348, -0.042165,
		0.151109, 0.976308, -0.154884,
		30.772593, 39.554863, 39.171993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050840, 39.053951, 39.812042>,  <30.666817, 38.871449, 39.280415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050840, 39.053951, 39.812042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969988, 39.415432, 39.661060>,  <30.921476, 39.632320, 39.570469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969988, 39.415432, 39.661060>,  <31.050840, 39.053951, 39.812042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969988, 39.415432, 39.661060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215238, 0.416982, 0.883062,
		0.955414, 0.097251, -0.278795,
		-0.202131, 0.903697, -0.377458,
		30.909349, 39.686543, 39.547821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499001, 39.515865, 40.233829>,  <31.050840, 39.053951, 39.812042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499001, 39.515865, 40.233829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206663, 39.756191, 40.104279>,  <31.031261, 39.900387, 40.026550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206663, 39.756191, 40.104279>,  <31.499001, 39.515865, 40.233829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206663, 39.756191, 40.104279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074656, 0.542028, 0.837037,
		0.678450, 0.587564, -0.440992,
		-0.730843, 0.600811, -0.323874,
		30.987410, 39.936436, 40.007118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723928, 40.175159, 40.434452>,  <31.499001, 39.515865, 40.233829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723928, 40.175159, 40.434452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332285, 40.211948, 40.361912>,  <31.097300, 40.234024, 40.318390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332285, 40.211948, 40.361912>,  <31.723928, 40.175159, 40.434452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332285, 40.211948, 40.361912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091453, 0.597369, 0.796735,
		0.181612, 0.796675, -0.576477,
		-0.979108, 0.091976, -0.181348,
		31.038553, 40.239540, 40.307507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561180, 40.924740, 40.392963>,  <31.723928, 40.175159, 40.434452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561180, 40.924740, 40.392963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229477, 40.721783, 40.486668>,  <31.030455, 40.600006, 40.542892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229477, 40.721783, 40.486668>,  <31.561180, 40.924740, 40.392963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229477, 40.721783, 40.486668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096473, 0.542852, 0.834269,
		-0.550476, 0.669224, -0.499115,
		-0.829259, -0.507396, 0.234265,
		30.980700, 40.569565, 40.556946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202820, 41.452557, 40.719574>,  <31.561180, 40.924740, 40.392963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202820, 41.452557, 40.719574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026457, 41.112335, 40.834225>,  <30.920639, 40.908203, 40.903015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026457, 41.112335, 40.834225>,  <31.202820, 41.452557, 40.719574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026457, 41.112335, 40.834225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216896, 0.410850, 0.885527,
		-0.870953, 0.328265, -0.365628,
		-0.440906, -0.850555, 0.286632,
		30.894186, 40.857170, 40.920216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551680, 41.665352, 40.794769>,  <31.202820, 41.452557, 40.719574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551680, 41.665352, 40.794769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626484, 41.331207, 41.001534>,  <30.671366, 41.130722, 41.125591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626484, 41.331207, 41.001534>,  <30.551680, 41.665352, 40.794769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626484, 41.331207, 41.001534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389522, 0.420004, 0.819676,
		-0.901831, -0.354636, -0.246847,
		0.187010, -0.835362, 0.516911,
		30.682587, 41.080597, 41.156609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832121, 41.321209, 41.218769>,  <30.551680, 41.665352, 40.794769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832121, 41.321209, 41.218769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170897, 41.229710, 41.410755>,  <30.374163, 41.174809, 41.525948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170897, 41.229710, 41.410755>,  <29.832121, 41.321209, 41.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170897, 41.229710, 41.410755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346493, 0.447245, 0.824569,
		-0.403283, -0.864665, 0.299529,
		0.846939, -0.228750, 0.479967,
		30.424978, 41.161083, 41.554745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675304, 41.383804, 41.879009>,  <29.832121, 41.321209, 41.218769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675304, 41.383804, 41.879009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068459, 41.335640, 41.934780>,  <30.304350, 41.306740, 41.968243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068459, 41.335640, 41.934780>,  <29.675304, 41.383804, 41.879009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068459, 41.335640, 41.934780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091845, 0.335802, 0.937444,
		-0.159702, -0.934204, 0.318994,
		0.982883, -0.120414, 0.139430,
		30.363323, 41.299515, 41.976608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700201, 41.007397, 42.461617>,  <29.675304, 41.383804, 41.879009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700201, 41.007397, 42.461617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053320, 41.191235, 42.422745>,  <30.265190, 41.301537, 42.399422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053320, 41.191235, 42.422745>,  <29.700201, 41.007397, 42.461617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053320, 41.191235, 42.422745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004685, 0.215485, 0.976496,
		0.469735, -0.861591, 0.192382,
		0.882795, 0.459595, -0.097184,
		30.318159, 41.329113, 42.393589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218409, 40.631226, 43.000179>,  <29.700201, 41.007397, 42.461617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218409, 40.631226, 43.000179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354425, 40.980724, 42.861076>,  <30.436035, 41.190422, 42.777615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354425, 40.980724, 42.861076>,  <30.218409, 40.631226, 43.000179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354425, 40.980724, 42.861076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108052, 0.331047, 0.937407,
		0.934182, -0.356333, 0.018160,
		0.340041, 0.873748, -0.347761,
		30.456438, 41.242847, 42.756748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736015, 40.853867, 43.449718>,  <30.218409, 40.631226, 43.000179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736015, 40.853867, 43.449718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640436, 41.205605, 43.284958>,  <30.583088, 41.416645, 43.186104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640436, 41.205605, 43.284958>,  <30.736015, 40.853867, 43.449718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640436, 41.205605, 43.284958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055812, 0.435921, 0.898253,
		0.969427, 0.191648, -0.153240,
		-0.238948, 0.879343, -0.411897,
		30.568752, 41.469406, 43.161388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200203, 41.291889, 43.719025>,  <30.736015, 40.853867, 43.449718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200203, 41.291889, 43.719025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905043, 41.525627, 43.583942>,  <30.727947, 41.665871, 43.502892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905043, 41.525627, 43.583942>,  <31.200203, 41.291889, 43.719025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905043, 41.525627, 43.583942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042108, 0.539260, 0.841086,
		0.673594, 0.606419, -0.422526,
		-0.737901, 0.584342, -0.337707,
		30.683672, 41.700932, 43.482632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467964, 41.941605, 43.809906>,  <31.200203, 41.291889, 43.719025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467964, 41.941605, 43.809906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074730, 42.011185, 43.786999>,  <30.838789, 42.052933, 43.773254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074730, 42.011185, 43.786999>,  <31.467964, 41.941605, 43.809906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074730, 42.011185, 43.786999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057874, 0.591772, 0.804025,
		0.173749, 0.787113, -0.591831,
		-0.983088, 0.173950, -0.057267,
		30.779804, 42.063370, 43.769817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307718, 42.654598, 43.895401>,  <31.467964, 41.941605, 43.809906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307718, 42.654598, 43.895401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963392, 42.472054, 43.985497>,  <30.756796, 42.362526, 44.039555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963392, 42.472054, 43.985497>,  <31.307718, 42.654598, 43.895401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963392, 42.472054, 43.985497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154326, 0.655822, 0.738973,
		-0.484951, 0.601361, -0.634970,
		-0.860817, -0.456359, 0.225236,
		30.705147, 42.335144, 44.053066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849627, 43.208206, 44.009228>,  <31.307718, 42.654598, 43.895401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849627, 43.208206, 44.009228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710737, 42.882256, 44.194878>,  <30.627403, 42.686684, 44.306267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710737, 42.882256, 44.194878>,  <30.849627, 43.208206, 44.009228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710737, 42.882256, 44.194878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021495, 0.501703, 0.864773,
		-0.937536, 0.290293, -0.191718,
		-0.347223, -0.814877, 0.464125,
		30.606571, 42.637791, 44.334114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343599, 43.434177, 44.512764>,  <30.849627, 43.208206, 44.009228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343599, 43.434177, 44.512764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437138, 43.064018, 44.632065>,  <30.493261, 42.841923, 44.703644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437138, 43.064018, 44.632065>,  <30.343599, 43.434177, 44.512764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437138, 43.064018, 44.632065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058147, 0.319520, 0.945794,
		-0.970533, -0.203829, 0.128528,
		0.233848, -0.925397, 0.298252,
		30.507292, 42.786400, 44.721542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143970, 43.382442, 45.191025>,  <30.343599, 43.434177, 44.512764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143970, 43.382442, 45.191025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356602, 43.043766, 45.181728>,  <30.484180, 42.840561, 45.176151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356602, 43.043766, 45.181728>,  <30.143970, 43.382442, 45.191025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356602, 43.043766, 45.181728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112375, 0.043299, 0.992722,
		-0.839522, -0.530320, 0.118164,
		0.531577, -0.846691, -0.023244,
		30.516075, 42.789761, 45.174755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926081, 42.951904, 45.741306>,  <30.143970, 43.382442, 45.191025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926081, 42.951904, 45.741306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307878, 42.878056, 45.647621>,  <30.536957, 42.833744, 45.591412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307878, 42.878056, 45.647621>,  <29.926081, 42.951904, 45.741306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307878, 42.878056, 45.647621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232905, -0.029047, 0.972066,
		-0.186271, -0.982380, 0.015274,
		0.954494, -0.184625, -0.234212,
		30.594227, 42.822666, 45.577358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135742, 42.604080, 46.302673>,  <29.926081, 42.951904, 45.741306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135742, 42.604080, 46.302673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463587, 42.729164, 46.110653>,  <30.660294, 42.804214, 45.995441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463587, 42.729164, 46.110653>,  <30.135742, 42.604080, 46.302673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463587, 42.729164, 46.110653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495357, 0.034189, 0.868016,
		0.287853, -0.949232, -0.126884,
		0.819610, 0.312714, -0.480051,
		30.709471, 42.822979, 45.966637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646433, 42.114002, 46.392433>,  <30.135742, 42.604080, 46.302673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646433, 42.114002, 46.392433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825258, 42.467945, 46.340015>,  <30.932552, 42.680309, 46.308567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825258, 42.467945, 46.340015>,  <30.646433, 42.114002, 46.392433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825258, 42.467945, 46.340015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299206, -0.009870, 0.954138,
		0.842978, -0.465766, -0.269166,
		0.447062, 0.884853, -0.131040,
		30.959377, 42.733402, 46.300705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411390, 42.029598, 46.574551>,  <30.646433, 42.114002, 46.392433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411390, 42.029598, 46.574551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270475, 42.401485, 46.617466>,  <31.185926, 42.624619, 46.643215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270475, 42.401485, 46.617466>,  <31.411390, 42.029598, 46.574551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270475, 42.401485, 46.617466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146783, -0.058328, 0.987448,
		0.924309, 0.363615, -0.115919,
		-0.352289, 0.929722, 0.107286,
		31.164789, 42.680401, 46.649651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880634, 42.436695, 47.035595>,  <31.411390, 42.029598, 46.574551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880634, 42.436695, 47.035595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518843, 42.606529, 47.019367>,  <31.301767, 42.708427, 47.009628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518843, 42.606529, 47.019367>,  <31.880634, 42.436695, 47.035595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518843, 42.606529, 47.019367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019979, 0.137196, 0.990342,
		0.426047, 0.894935, -0.132574,
		-0.904481, 0.424581, -0.040572,
		31.247498, 42.733902, 47.007195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981855, 42.998940, 47.494480>,  <31.880634, 42.436695, 47.035595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981855, 42.998940, 47.494480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589920, 42.932217, 47.450497>,  <31.354759, 42.892185, 47.424107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589920, 42.932217, 47.450497>,  <31.981855, 42.998940, 47.494480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589920, 42.932217, 47.450497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140407, 0.183374, 0.972964,
		-0.142130, 0.968788, -0.203098,
		-0.979839, -0.166804, -0.109962,
		31.295969, 42.882175, 47.417507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729101, 43.537319, 47.747097>,  <31.981855, 42.998940, 47.494480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729101, 43.537319, 47.747097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410797, 43.296112, 47.769501>,  <31.219814, 43.151386, 47.782944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410797, 43.296112, 47.769501>,  <31.729101, 43.537319, 47.747097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410797, 43.296112, 47.769501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219037, 0.372803, 0.901688,
		-0.564616, 0.705257, -0.428745,
		-0.795759, -0.603018, 0.056013,
		31.172070, 43.115208, 47.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182167, 43.886009, 47.862282>,  <31.729101, 43.537319, 47.747097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182167, 43.886009, 47.862282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067719, 43.529900, 48.004013>,  <30.999048, 43.316235, 48.089054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067719, 43.529900, 48.004013>,  <31.182167, 43.886009, 47.862282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067719, 43.529900, 48.004013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399830, 0.446989, 0.800211,
		-0.870787, 0.087287, -0.483851,
		-0.286124, -0.890271, 0.354332,
		30.981882, 43.262817, 48.110313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478294, 43.938671, 48.180275>,  <31.182167, 43.886009, 47.862282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478294, 43.938671, 48.180275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636837, 43.608292, 48.340626>,  <30.731962, 43.410065, 48.436836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636837, 43.608292, 48.340626>,  <30.478294, 43.938671, 48.180275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636837, 43.608292, 48.340626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411394, 0.230575, 0.881811,
		-0.820766, -0.514431, -0.248402,
		0.396356, -0.825952, 0.400882,
		30.755743, 43.360508, 48.460892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117033, 43.479134, 48.599186>,  <30.478294, 43.938671, 48.180275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117033, 43.479134, 48.599186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488533, 43.444782, 48.743435>,  <30.711433, 43.424171, 48.829983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488533, 43.444782, 48.743435>,  <30.117033, 43.479134, 48.599186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488533, 43.444782, 48.743435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327862, 0.263694, 0.907178,
		-0.173000, -0.960776, 0.216749,
		0.928751, -0.085878, 0.360621,
		30.767159, 43.419018, 48.851620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174259, 43.072315, 49.233696>,  <30.117033, 43.479134, 48.599186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174259, 43.072315, 49.233696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432882, 43.376522, 49.209763>,  <30.588057, 43.559048, 49.195404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432882, 43.376522, 49.209763>,  <30.174259, 43.072315, 49.233696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432882, 43.376522, 49.209763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340253, 0.357685, 0.869649,
		0.682783, -0.541918, 0.490032,
		0.646556, 0.760517, -0.059832,
		30.626850, 43.604675, 49.191814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567984, 43.004372, 49.860920>,  <30.174259, 43.072315, 49.233696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567984, 43.004372, 49.860920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474754, 43.364502, 49.713902>,  <30.418818, 43.580582, 49.625690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474754, 43.364502, 49.713902>,  <30.567984, 43.004372, 49.860920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474754, 43.364502, 49.713902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670414, 0.125020, 0.731379,
		0.704431, 0.416869, 0.574454,
		-0.233071, 0.900328, -0.367543,
		30.404833, 43.634602, 49.603638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696636, 43.621727, 50.303482>,  <30.567984, 43.004372, 49.860920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696636, 43.621727, 50.303482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385059, 43.714035, 50.070244>,  <30.198112, 43.769421, 49.930302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385059, 43.714035, 50.070244>,  <30.696636, 43.621727, 50.303482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385059, 43.714035, 50.070244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585699, 0.064512, 0.807958,
		0.224068, 0.970867, 0.084910,
		-0.778942, 0.230770, -0.583091,
		30.151377, 43.783264, 49.895317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502836, 42.956699, 50.672379>,  <30.696636, 43.621727, 50.303482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502836, 42.956699, 50.672379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370638, 42.692051, 50.403149>,  <30.291319, 42.533260, 50.241611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370638, 42.692051, 50.403149>,  <30.502836, 42.956699, 50.672379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370638, 42.692051, 50.403149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898703, -0.438438, -0.010304,
		-0.288284, -0.608298, 0.739504,
		-0.330494, -0.661623, -0.673074,
		30.271490, 42.493565, 50.201225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805019, 42.788410, 50.978718>,  <30.502836, 42.956699, 50.672379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805019, 42.788410, 50.978718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668709, 42.437035, 51.112709>,  <29.586924, 42.226208, 51.193104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668709, 42.437035, 51.112709>,  <29.805019, 42.788410, 50.978718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668709, 42.437035, 51.112709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693884, -0.475419, -0.540834,
		0.634348, 0.048135, 0.771548,
		-0.340775, -0.878442, 0.334982,
		29.566477, 42.173504, 51.213203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392733, 42.418449, 51.210541>,  <29.805019, 42.788410, 50.978718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392733, 42.418449, 51.210541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110788, 42.180511, 51.055969>,  <29.941622, 42.037750, 50.963226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110788, 42.180511, 51.055969>,  <30.392733, 42.418449, 51.210541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110788, 42.180511, 51.055969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664832, -0.364053, -0.652276,
		0.247321, -0.716676, 0.652079,
		-0.704862, -0.594845, -0.386431,
		29.899330, 42.002060, 50.940041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760817, 41.924183, 50.921055>,  <30.392733, 42.418449, 51.210541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760817, 41.924183, 50.921055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418779, 41.804749, 50.751507>,  <30.213556, 41.733089, 50.649776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418779, 41.804749, 50.751507>,  <30.760817, 41.924183, 50.921055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418779, 41.804749, 50.751507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514549, -0.388282, -0.764511,
		0.063691, -0.871828, 0.485653,
		-0.855092, -0.298584, -0.423868,
		30.162252, 41.715172, 50.624348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739006, 41.206501, 50.896935>,  <30.760817, 41.924183, 50.921055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739006, 41.206501, 50.896935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539324, 41.355934, 50.584209>,  <30.419514, 41.445595, 50.396576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539324, 41.355934, 50.584209>,  <30.739006, 41.206501, 50.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539324, 41.355934, 50.584209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463835, -0.646905, -0.605286,
		-0.731882, -0.664794, 0.149659,
		-0.499205, 0.373581, -0.781813,
		30.389563, 41.468006, 50.349667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388962, 40.702995, 50.645004>,  <30.739006, 41.206501, 50.896935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388962, 40.702995, 50.645004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418013, 40.926327, 50.314430>,  <30.435444, 41.060326, 50.116085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418013, 40.926327, 50.314430>,  <30.388962, 40.702995, 50.645004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418013, 40.926327, 50.314430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403298, -0.774298, -0.487661,
		-0.912182, -0.297882, -0.281408,
		0.072628, 0.558327, -0.826436,
		30.439800, 41.093826, 50.066498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083342, 40.334156, 50.125988>,  <30.388962, 40.702995, 50.645004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083342, 40.334156, 50.125988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333828, 40.596279, 49.957024>,  <30.484119, 40.753551, 49.855644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333828, 40.596279, 49.957024>,  <30.083342, 40.334156, 50.125988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333828, 40.596279, 49.957024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378273, -0.729123, -0.570341,
		-0.681737, 0.197369, -0.704471,
		0.626214, 0.655305, -0.422411,
		30.521692, 40.792870, 49.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996868, 40.278118, 49.437309>,  <30.083342, 40.334156, 50.125988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996868, 40.278118, 49.437309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358522, 40.447372, 49.460945>,  <30.575516, 40.548927, 49.475128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358522, 40.447372, 49.460945>,  <29.996868, 40.278118, 49.437309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358522, 40.447372, 49.460945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307951, -0.549549, -0.776635,
		-0.296148, 0.720382, -0.627173,
		0.904136, 0.423138, 0.059094,
		30.629763, 40.574314, 49.478672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155704, 40.476700, 48.769890>,  <29.996868, 40.278118, 49.437309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155704, 40.476700, 48.769890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503412, 40.448181, 48.965561>,  <30.712036, 40.431068, 49.082962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503412, 40.448181, 48.965561>,  <30.155704, 40.476700, 48.769890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503412, 40.448181, 48.965561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358784, -0.589734, -0.723524,
		0.340070, 0.804444, -0.487055,
		0.869267, -0.071301, 0.489173,
		30.764193, 40.426792, 49.112312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603441, 40.551266, 48.290428>,  <30.155704, 40.476700, 48.769890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603441, 40.551266, 48.290428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849632, 40.415760, 48.575085>,  <30.997347, 40.334457, 48.745876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849632, 40.415760, 48.575085>,  <30.603441, 40.551266, 48.290428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849632, 40.415760, 48.575085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396459, -0.647297, -0.651020,
		0.681182, 0.682823, -0.264091,
		0.615476, -0.338762, 0.711638,
		31.034275, 40.314133, 48.788578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331373, 40.613667, 48.034286>,  <30.603441, 40.551266, 48.290428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331373, 40.613667, 48.034286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391890, 40.333969, 48.313766>,  <31.428200, 40.166153, 48.481453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391890, 40.333969, 48.313766>,  <31.331373, 40.613667, 48.034286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391890, 40.333969, 48.313766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544445, -0.531011, -0.649313,
		0.825040, 0.478636, 0.300360,
		0.151290, -0.699239, 0.698696,
		31.437277, 40.124199, 48.523376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969635, 40.495064, 47.932541>,  <31.331373, 40.613667, 48.034286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969635, 40.495064, 47.932541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843428, 40.176003, 48.138138>,  <31.767704, 39.984566, 48.261497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843428, 40.176003, 48.138138>,  <31.969635, 40.495064, 47.932541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843428, 40.176003, 48.138138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457973, -0.602408, -0.653732,
		0.831089, 0.029133, 0.555375,
		-0.315517, -0.797656, 0.513997,
		31.748772, 39.936707, 48.292336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591194, 40.026260, 48.071732>,  <31.969635, 40.495064, 47.932541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591194, 40.026260, 48.071732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271889, 39.786369, 48.094028>,  <32.080307, 39.642433, 48.107407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271889, 39.786369, 48.094028>,  <32.591194, 40.026260, 48.071732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271889, 39.786369, 48.094028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438389, -0.641972, -0.629036,
		0.413033, -0.477700, 0.775375,
		-0.798260, -0.599729, 0.055738,
		32.032410, 39.606449, 48.110748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821945, 39.346619, 48.171356>,  <32.591194, 40.026260, 48.071732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821945, 39.346619, 48.171356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449104, 39.322872, 48.028439>,  <32.225399, 39.308624, 47.942688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449104, 39.322872, 48.028439>,  <32.821945, 39.346619, 48.171356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449104, 39.322872, 48.028439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326302, -0.565753, -0.757265,
		-0.157183, -0.822435, 0.546711,
		-0.932105, -0.059364, -0.357289,
		32.169472, 39.305061, 47.921253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711597, 38.586063, 47.883442>,  <32.821945, 39.346619, 48.171356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711597, 38.586063, 47.883442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428413, 38.804150, 47.703869>,  <32.258503, 38.935001, 47.596127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428413, 38.804150, 47.703869>,  <32.711597, 38.586063, 47.883442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428413, 38.804150, 47.703869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087299, -0.563214, -0.821687,
		-0.700840, -0.620909, 0.351133,
		-0.707956, 0.545218, -0.448928,
		32.216026, 38.967716, 47.569191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483128, 38.094425, 47.414421>,  <32.711597, 38.586063, 47.883442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483128, 38.094425, 47.414421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352718, 38.445625, 47.274239>,  <32.274471, 38.656345, 47.190128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352718, 38.445625, 47.274239>,  <32.483128, 38.094425, 47.414421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352718, 38.445625, 47.274239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190369, -0.302138, -0.934062,
		-0.925994, -0.371245, -0.068639,
		-0.326027, 0.878003, -0.350452,
		32.254910, 38.709026, 47.169102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905809, 38.021400, 46.820683>,  <32.483128, 38.094425, 47.414421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905809, 38.021400, 46.820683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092228, 38.372833, 46.778942>,  <32.204079, 38.583694, 46.753899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092228, 38.372833, 46.778942>,  <31.905809, 38.021400, 46.820683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092228, 38.372833, 46.778942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175086, -0.207197, -0.962504,
		-0.867263, 0.430302, -0.250392,
		0.466048, 0.878584, -0.104355,
		32.232040, 38.636410, 46.747635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726852, 38.236195, 46.238197>,  <31.905809, 38.021400, 46.820683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726852, 38.236195, 46.238197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020031, 38.502354, 46.294811>,  <32.195938, 38.662048, 46.328777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020031, 38.502354, 46.294811>,  <31.726852, 38.236195, 46.238197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020031, 38.502354, 46.294811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123170, 0.074807, -0.989562,
		-0.669041, 0.742730, -0.027127,
		0.732949, 0.665399, 0.141531,
		32.239914, 38.701973, 46.337269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551046, 38.696606, 45.754307>,  <31.726852, 38.236195, 46.238197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551046, 38.696606, 45.754307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917387, 38.821503, 45.855278>,  <32.137192, 38.896442, 45.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917387, 38.821503, 45.855278>,  <31.551046, 38.696606, 45.754307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917387, 38.821503, 45.855278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234651, 0.093918, -0.967532,
		-0.325816, 0.945347, 0.012746,
		0.915851, 0.312247, 0.252427,
		32.192142, 38.915176, 45.931007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782627, 39.314503, 45.324207>,  <31.551046, 38.696606, 45.754307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782627, 39.314503, 45.324207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114952, 39.134228, 45.454826>,  <32.314346, 39.026062, 45.533195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114952, 39.134228, 45.454826>,  <31.782627, 39.314503, 45.324207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114952, 39.134228, 45.454826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324468, -0.084472, -0.942117,
		0.452183, 0.888677, 0.076052,
		0.830813, -0.450686, 0.326544,
		32.364197, 38.999023, 45.552788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308277, 39.561638, 44.896748>,  <31.782627, 39.314503, 45.324207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308277, 39.561638, 44.896748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485710, 39.236046, 45.046776>,  <32.592171, 39.040691, 45.136795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485710, 39.236046, 45.046776>,  <32.308277, 39.561638, 44.896748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485710, 39.236046, 45.046776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334052, -0.238184, -0.911964,
		0.831653, 0.529823, 0.166256,
		0.443580, -0.813975, 0.375075,
		32.618786, 38.991852, 45.159298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954338, 39.611439, 44.560078>,  <32.308277, 39.561638, 44.896748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954338, 39.611439, 44.560078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857624, 39.239620, 44.671421>,  <32.799595, 39.016529, 44.738228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857624, 39.239620, 44.671421>,  <32.954338, 39.611439, 44.560078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857624, 39.239620, 44.671421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171210, -0.323242, -0.930700,
		0.955106, -0.177372, 0.237303,
		-0.241786, -0.929545, 0.278363,
		32.785088, 38.960758, 44.754929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433498, 39.097355, 44.216282>,  <32.954338, 39.611439, 44.560078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433498, 39.097355, 44.216282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108059, 38.885033, 44.311195>,  <32.912796, 38.757641, 44.368145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108059, 38.885033, 44.311195>,  <33.433498, 39.097355, 44.216282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108059, 38.885033, 44.311195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002748, -0.404591, -0.914494,
		0.581421, -0.744683, 0.327716,
		-0.813598, -0.530805, 0.237284,
		32.863979, 38.725792, 44.382381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593204, 38.365334, 44.021374>,  <33.433498, 39.097355, 44.216282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593204, 38.365334, 44.021374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200085, 38.439194, 44.020069>,  <32.964214, 38.483509, 44.019287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200085, 38.439194, 44.020069>,  <33.593204, 38.365334, 44.021374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200085, 38.439194, 44.020069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067314, -0.374617, -0.924733,
		-0.171976, -0.908607, 0.380602,
		-0.982799, 0.184652, -0.003263,
		32.905247, 38.494591, 44.019089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291733, 37.777172, 43.861893>,  <33.593204, 38.365334, 44.021374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291733, 37.777172, 43.861893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994507, 38.026920, 43.765545>,  <32.816174, 38.176769, 43.707737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994507, 38.026920, 43.765545>,  <33.291733, 37.777172, 43.861893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994507, 38.026920, 43.765545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113019, -0.471835, -0.874413,
		-0.659611, -0.622519, 0.421168,
		-0.743061, 0.624373, -0.240871,
		32.771587, 38.214233, 43.693283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777908, 37.352917, 43.570091>,  <33.291733, 37.777172, 43.861893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777908, 37.352917, 43.570091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715771, 37.728363, 43.446892>,  <32.678490, 37.953632, 43.372971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715771, 37.728363, 43.446892>,  <32.777908, 37.352917, 43.570091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715771, 37.728363, 43.446892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294870, -0.341627, -0.892381,
		-0.942826, -0.047806, 0.329839,
		-0.155343, 0.938619, -0.307999,
		32.669167, 38.009949, 43.354492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438187, 37.196888, 42.934875>,  <32.777908, 37.352917, 43.570091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438187, 37.196888, 42.934875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448074, 37.593601, 42.884678>,  <32.454006, 37.831631, 42.854561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448074, 37.593601, 42.884678>,  <32.438187, 37.196888, 42.934875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448074, 37.593601, 42.884678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198347, -0.118167, -0.972983,
		-0.979820, 0.048942, 0.193797,
		0.024720, 0.991787, -0.125490,
		32.455490, 37.891136, 42.847031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824144, 37.396698, 42.552231>,  <32.438187, 37.196888, 42.934875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824144, 37.396698, 42.552231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098213, 37.684929, 42.509689>,  <32.262653, 37.857868, 42.484165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098213, 37.684929, 42.509689>,  <31.824144, 37.396698, 42.552231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098213, 37.684929, 42.509689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078249, -0.072355, -0.994305,
		-0.724168, 0.689590, 0.006809,
		0.685170, 0.720576, -0.106357,
		32.303764, 37.901100, 42.477783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528410, 37.961555, 42.196205>,  <31.824144, 37.396698, 42.552231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528410, 37.961555, 42.196205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925819, 37.979961, 42.154644>,  <32.164265, 37.991005, 42.129707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925819, 37.979961, 42.154644>,  <31.528410, 37.961555, 42.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925819, 37.979961, 42.154644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107333, 0.079707, -0.991023,
		-0.037316, 0.995756, 0.084129,
		0.993523, 0.046011, -0.103903,
		32.223877, 37.993763, 42.123474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629042, 38.523869, 41.835091>,  <31.528410, 37.961555, 42.196205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629042, 38.523869, 41.835091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948809, 38.290264, 41.778721>,  <32.140667, 38.150101, 41.744900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948809, 38.290264, 41.778721>,  <31.629042, 38.523869, 41.835091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948809, 38.290264, 41.778721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130197, 0.060588, -0.989635,
		0.586501, 0.809478, -0.027602,
		0.799416, -0.584015, -0.140927,
		32.188633, 38.115059, 41.736443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016083, 38.831745, 41.265167>,  <31.629042, 38.523869, 41.835091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016083, 38.831745, 41.265167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232197, 38.495911, 41.287773>,  <32.361866, 38.294411, 41.301338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232197, 38.495911, 41.287773>,  <32.016083, 38.831745, 41.265167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232197, 38.495911, 41.287773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074035, -0.019471, -0.997066,
		0.838220, 0.542882, 0.051639,
		0.540284, -0.839583, 0.056513,
		32.394283, 38.244034, 41.304726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623634, 38.852440, 40.672817>,  <32.016083, 38.831745, 41.265167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623634, 38.852440, 40.672817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544365, 38.479870, 40.794914>,  <32.496803, 38.256329, 40.868172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544365, 38.479870, 40.794914>,  <32.623634, 38.852440, 40.672817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544365, 38.479870, 40.794914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003351, -0.312058, -0.950057,
		0.980160, -0.187258, 0.064964,
		-0.198178, -0.931426, 0.305240,
		32.484913, 38.200443, 40.886486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925213, 38.482178, 40.131027>,  <32.623634, 38.852440, 40.672817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925213, 38.482178, 40.131027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700260, 38.197945, 40.300171>,  <32.565289, 38.027405, 40.401657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700260, 38.197945, 40.300171>,  <32.925213, 38.482178, 40.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700260, 38.197945, 40.300171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161963, -0.406821, -0.899036,
		0.810862, -0.574087, 0.113701,
		-0.562380, -0.710578, 0.422856,
		32.531548, 37.984772, 40.427029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227448, 37.785374, 40.041336>,  <32.925213, 38.482178, 40.131027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227448, 37.785374, 40.041336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838146, 37.731812, 40.116005>,  <32.604565, 37.699677, 40.160805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838146, 37.731812, 40.116005>,  <33.227448, 37.785374, 40.041336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838146, 37.731812, 40.116005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079980, -0.564226, -0.821737,
		0.215357, -0.814690, 0.538426,
		-0.973254, -0.133904, 0.186669,
		32.546169, 37.691639, 40.172005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016598, 37.028255, 39.846756>,  <33.227448, 37.785374, 40.041336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016598, 37.028255, 39.846756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674778, 37.234734, 39.869682>,  <32.469685, 37.358620, 39.883438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674778, 37.234734, 39.869682>,  <33.016598, 37.028255, 39.846756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674778, 37.234734, 39.869682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280675, -0.366132, -0.887225,
		-0.437002, -0.774263, 0.457762,
		-0.854547, 0.516202, 0.057316,
		32.418415, 37.389595, 39.886879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524208, 36.568405, 39.788273>,  <33.016598, 37.028255, 39.846756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524208, 36.568405, 39.788273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362770, 36.912636, 39.664005>,  <32.265907, 37.119175, 39.589447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362770, 36.912636, 39.664005>,  <32.524208, 36.568405, 39.788273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362770, 36.912636, 39.664005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434137, -0.479019, -0.762932,
		-0.805379, -0.173045, 0.566940,
		-0.403596, 0.860579, -0.310666,
		32.241692, 37.170811, 39.570805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866505, 36.342014, 39.758537>,  <32.524208, 36.568405, 39.788273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866505, 36.342014, 39.758537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897394, 36.665287, 39.524998>,  <31.915928, 36.859249, 39.384876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897394, 36.665287, 39.524998>,  <31.866505, 36.342014, 39.758537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897394, 36.665287, 39.524998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449375, -0.494527, -0.743979,
		-0.889999, 0.319818, 0.324988,
		0.077223, 0.808183, -0.583847,
		31.920561, 36.907742, 39.349842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271048, 36.385159, 39.411957>,  <31.866505, 36.342014, 39.758537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271048, 36.385159, 39.411957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493856, 36.610950, 39.168289>,  <31.627542, 36.746426, 39.022091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493856, 36.610950, 39.168289>,  <31.271048, 36.385159, 39.411957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493856, 36.610950, 39.168289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318669, -0.532076, -0.784440,
		-0.766925, 0.631074, -0.116496,
		0.557024, 0.564483, -0.609166,
		31.660963, 36.780296, 38.985538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839903, 36.354832, 38.876545>,  <31.271048, 36.385159, 39.411957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839903, 36.354832, 38.876545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189667, 36.482483, 38.730358>,  <31.399525, 36.559074, 38.642647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189667, 36.482483, 38.730358>,  <30.839903, 36.354832, 38.876545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189667, 36.482483, 38.730358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174024, -0.496843, -0.850213,
		-0.452905, 0.807035, -0.378909,
		0.874410, 0.319127, -0.365466,
		31.451990, 36.578220, 38.620720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657381, 36.679657, 38.281040>,  <30.839903, 36.354832, 38.876545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657381, 36.679657, 38.281040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035534, 36.552128, 38.253906>,  <31.262426, 36.475609, 38.237625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035534, 36.552128, 38.253906>,  <30.657381, 36.679657, 38.281040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035534, 36.552128, 38.253906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219629, -0.469271, -0.855306,
		0.240857, 0.823491, -0.513664,
		0.945384, -0.318822, -0.067836,
		31.319149, 36.456482, 38.233555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899990, 36.898205, 37.656075>,  <30.657381, 36.679657, 38.281040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899990, 36.898205, 37.656075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109680, 36.568897, 37.743168>,  <31.235495, 36.371311, 37.795425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109680, 36.568897, 37.743168>,  <30.899990, 36.898205, 37.656075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109680, 36.568897, 37.743168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233418, -0.384803, -0.892996,
		0.818964, 0.417310, -0.393891,
		0.524227, -0.823273, 0.217733,
		31.266949, 36.321915, 37.808487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136902, 36.767464, 37.059647>,  <30.899990, 36.898205, 37.656075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136902, 36.767464, 37.059647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271990, 36.425846, 37.217911>,  <31.353043, 36.220875, 37.312870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271990, 36.425846, 37.217911>,  <31.136902, 36.767464, 37.059647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271990, 36.425846, 37.217911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208308, -0.477750, -0.853442,
		0.917907, 0.205806, -0.339251,
		0.337720, -0.854049, 0.395659,
		31.373306, 36.169632, 37.336609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601303, 36.537151, 36.613903>,  <31.136902, 36.767464, 37.059647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601303, 36.537151, 36.613903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482815, 36.229290, 36.840137>,  <31.411722, 36.044575, 36.975880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482815, 36.229290, 36.840137>,  <31.601303, 36.537151, 36.613903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482815, 36.229290, 36.840137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026040, -0.585437, -0.810300,
		0.954765, -0.254755, 0.153376,
		-0.296220, -0.769651, 0.565589,
		31.393950, 35.998394, 37.009815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048649, 35.947079, 36.363014>,  <31.601303, 36.537151, 36.613903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048649, 35.947079, 36.363014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712635, 35.809418, 36.530773>,  <31.511026, 35.726822, 36.631428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712635, 35.809418, 36.530773>,  <32.048649, 35.947079, 36.363014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712635, 35.809418, 36.530773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139669, -0.609801, -0.780151,
		0.524240, -0.713934, 0.464189,
		-0.840039, -0.344154, 0.419396,
		31.460623, 35.706173, 36.656593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053490, 35.150387, 36.207779>,  <32.048649, 35.947079, 36.363014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053490, 35.150387, 36.207779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678528, 35.270050, 36.279087>,  <31.453550, 35.341846, 36.321873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678528, 35.270050, 36.279087>,  <32.053490, 35.150387, 36.207779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678528, 35.270050, 36.279087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295191, -0.410982, -0.862529,
		-0.184763, -0.861162, 0.473564,
		-0.937403, 0.299156, 0.178273,
		31.397306, 35.359798, 36.332569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446541, 34.682739, 36.564632>,  <32.053490, 35.150387, 36.207779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446541, 34.682739, 36.564632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630203, 34.327957, 36.544693>,  <32.740402, 34.115089, 36.532730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630203, 34.327957, 36.544693>,  <32.446541, 34.682739, 36.564632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630203, 34.327957, 36.544693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160178, 0.027468, 0.986706,
		-0.873794, -0.461040, 0.154682,
		0.459160, -0.886954, -0.049847,
		32.767952, 34.061871, 36.529739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165741, 34.436371, 37.237110>,  <32.446541, 34.682739, 36.564632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165741, 34.436371, 37.237110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495770, 34.279053, 37.074837>,  <32.693787, 34.184662, 36.977470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495770, 34.279053, 37.074837>,  <32.165741, 34.436371, 37.237110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495770, 34.279053, 37.074837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362799, -0.181688, 0.913984,
		-0.433171, -0.901283, -0.007219,
		0.825070, -0.393292, -0.405686,
		32.743290, 34.161064, 36.953133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267754, 33.799454, 37.614639>,  <32.165741, 34.436371, 37.237110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267754, 33.799454, 37.614639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615696, 33.944042, 37.480362>,  <32.824463, 34.030796, 37.399796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615696, 33.944042, 37.480362>,  <32.267754, 33.799454, 37.614639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615696, 33.944042, 37.480362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330856, 0.077248, 0.940515,
		0.365901, -0.929178, -0.052401,
		0.869857, 0.361472, -0.335689,
		32.876652, 34.052483, 37.379654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743019, 33.408543, 37.940125>,  <32.267754, 33.799454, 37.614639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743019, 33.408543, 37.940125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995468, 33.694283, 37.819202>,  <33.146938, 33.865726, 37.746651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995468, 33.694283, 37.819202>,  <32.743019, 33.408543, 37.940125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995468, 33.694283, 37.819202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405431, 0.028467, 0.913682,
		0.661298, -0.699206, -0.271655,
		0.631119, 0.714354, -0.302305,
		33.184803, 33.908588, 37.728512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436520, 33.245342, 38.170757>,  <32.743019, 33.408543, 37.940125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436520, 33.245342, 38.170757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421288, 33.639755, 38.105900>,  <33.412148, 33.876404, 38.066986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421288, 33.639755, 38.105900>,  <33.436520, 33.245342, 38.170757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421288, 33.639755, 38.105900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452538, 0.161688, 0.876965,
		0.890932, -0.039977, -0.452374,
		-0.038085, 0.986032, -0.162144,
		33.409863, 33.935566, 38.057255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059490, 33.434074, 38.472973>,  <33.436520, 33.245342, 38.170757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059490, 33.434074, 38.472973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871510, 33.784981, 38.433895>,  <33.758720, 33.995525, 38.410450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871510, 33.784981, 38.433895>,  <34.059490, 33.434074, 38.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871510, 33.784981, 38.433895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321981, 0.273422, 0.906404,
		0.821873, 0.394509, -0.410959,
		-0.469950, 0.877270, -0.097693,
		33.730526, 34.048161, 38.404587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519203, 33.959591, 38.607635>,  <34.059490, 33.434074, 38.472973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519203, 33.959591, 38.607635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166958, 34.125439, 38.699387>,  <33.955612, 34.224949, 38.754436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166958, 34.125439, 38.699387>,  <34.519203, 33.959591, 38.607635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166958, 34.125439, 38.699387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314413, 0.149137, 0.937498,
		0.354496, 0.897691, -0.261694,
		-0.880612, 0.414619, 0.229377,
		33.902775, 34.249825, 38.768200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601475, 34.592552, 38.997299>,  <34.519203, 33.959591, 38.607635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601475, 34.592552, 38.997299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221767, 34.506226, 39.088791>,  <33.993942, 34.454430, 39.143684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221767, 34.506226, 39.088791>,  <34.601475, 34.592552, 38.997299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221767, 34.506226, 39.088791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142930, 0.351775, 0.925108,
		-0.280118, 0.910865, -0.303081,
		-0.949265, -0.215820, 0.228729,
		33.936989, 34.441479, 39.157410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374172, 35.224770, 39.278713>,  <34.601475, 34.592552, 38.997299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374172, 35.224770, 39.278713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147945, 34.919781, 39.404423>,  <34.012211, 34.736786, 39.479847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147945, 34.919781, 39.404423>,  <34.374172, 35.224770, 39.278713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147945, 34.919781, 39.404423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035970, 0.357905, 0.933065,
		-0.823917, 0.539016, -0.174993,
		-0.565568, -0.762473, 0.314273,
		33.978275, 34.691040, 39.498703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903950, 35.530918, 39.769894>,  <34.374172, 35.224770, 39.278713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903950, 35.530918, 39.769894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877022, 35.139687, 39.848717>,  <33.860867, 34.904949, 39.896011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877022, 35.139687, 39.848717>,  <33.903950, 35.530918, 39.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877022, 35.139687, 39.848717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112193, 0.203670, 0.972590,
		-0.991403, 0.043367, -0.123445,
		-0.067320, -0.978079, 0.197054,
		33.856827, 34.846264, 39.907833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410938, 35.504433, 40.265339>,  <33.903950, 35.530918, 39.769894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410938, 35.504433, 40.265339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603508, 35.156128, 40.305332>,  <33.719051, 34.947144, 40.329327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603508, 35.156128, 40.305332>,  <33.410938, 35.504433, 40.265339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603508, 35.156128, 40.305332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012063, 0.120645, 0.992622,
		-0.876403, -0.476670, 0.068586,
		0.481427, -0.870765, 0.099984,
		33.747936, 34.894897, 40.335327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086227, 35.165806, 40.881790>,  <33.410938, 35.504433, 40.265339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086227, 35.165806, 40.881790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433945, 34.968555, 40.868214>,  <33.642574, 34.850204, 40.860069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433945, 34.968555, 40.868214>,  <33.086227, 35.165806, 40.881790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433945, 34.968555, 40.868214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043295, -0.144366, 0.988577,
		-0.492396, -0.857894, -0.146846,
		0.869294, -0.493129, -0.033942,
		33.694733, 34.820618, 40.858032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014610, 34.688164, 41.236233>,  <33.086227, 35.165806, 40.881790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014610, 34.688164, 41.236233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414162, 34.687454, 41.217304>,  <33.653893, 34.687031, 41.205948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414162, 34.687454, 41.217304>,  <33.014610, 34.688164, 41.236233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414162, 34.687454, 41.217304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047215, 0.114863, 0.992259,
		0.003676, -0.993380, 0.114818,
		0.998878, -0.001773, -0.047325,
		33.713825, 34.686924, 41.203106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156517, 34.197918, 41.683857>,  <33.014610, 34.688164, 41.236233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156517, 34.197918, 41.683857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509579, 34.385784, 41.676411>,  <33.721416, 34.498505, 41.671944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509579, 34.385784, 41.676411>,  <33.156517, 34.197918, 41.683857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509579, 34.385784, 41.676411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106387, -0.161052, 0.981195,
		0.457833, -0.868032, -0.192118,
		0.882650, 0.469663, -0.018612,
		33.774372, 34.526684, 41.670826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703865, 33.700962, 41.918522>,  <33.156517, 34.197918, 41.683857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703865, 33.700962, 41.918522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801365, 34.083660, 41.982063>,  <33.859863, 34.313278, 42.020187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801365, 34.083660, 41.982063>,  <33.703865, 33.700962, 41.918522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801365, 34.083660, 41.982063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091946, -0.185852, 0.978266,
		0.965470, -0.223845, -0.133270,
		0.243748, 0.956741, 0.158853,
		33.874489, 34.370682, 42.029720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944168, 33.689175, 42.657394>,  <33.703865, 33.700962, 41.918522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944168, 33.689175, 42.657394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932701, 34.083309, 42.590115>,  <33.925819, 34.319790, 42.549747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932701, 34.083309, 42.590115>,  <33.944168, 33.689175, 42.657394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932701, 34.083309, 42.590115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048254, 0.169433, 0.984360,
		0.998423, 0.020107, -0.052405,
		-0.028672, 0.985336, -0.168195,
		33.924099, 34.378910, 42.539658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344681, 33.971798, 43.104057>,  <33.944168, 33.689175, 42.657394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344681, 33.971798, 43.104057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139286, 34.297310, 42.995174>,  <34.016048, 34.492615, 42.929844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139286, 34.297310, 42.995174>,  <34.344681, 33.971798, 43.104057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139286, 34.297310, 42.995174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040502, 0.293887, 0.954982,
		0.857140, 0.501398, -0.117948,
		-0.513490, 0.813775, -0.272210,
		33.985241, 34.541443, 42.913513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696606, 34.583920, 43.383636>,  <34.344681, 33.971798, 43.104057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696606, 34.583920, 43.383636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324364, 34.708187, 43.306225>,  <34.101017, 34.782749, 43.259777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324364, 34.708187, 43.306225>,  <34.696606, 34.583920, 43.383636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324364, 34.708187, 43.306225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060615, 0.390620, 0.918554,
		0.360964, 0.866544, -0.344683,
		-0.930608, 0.310672, -0.193525,
		34.045181, 34.801388, 43.248169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724113, 35.306778, 43.504311>,  <34.696606, 34.583920, 43.383636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724113, 35.306778, 43.504311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332054, 35.231678, 43.529766>,  <34.096817, 35.186619, 43.545040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332054, 35.231678, 43.529766>,  <34.724113, 35.306778, 43.504311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332054, 35.231678, 43.529766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059920, 0.586585, 0.807668,
		-0.188975, 0.787824, -0.586192,
		-0.980152, -0.187753, 0.063643,
		34.038010, 35.175350, 43.548859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423519, 35.979000, 43.607178>,  <34.724113, 35.306778, 43.504311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423519, 35.979000, 43.607178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158798, 35.711185, 43.742077>,  <33.999966, 35.550495, 43.823017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158798, 35.711185, 43.742077>,  <34.423519, 35.979000, 43.607178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158798, 35.711185, 43.742077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188768, 0.584189, 0.789360,
		-0.725523, 0.458740, -0.513006,
		-0.661803, -0.669537, 0.337247,
		33.960258, 35.510323, 43.843250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788605, 36.326057, 43.762199>,  <34.423519, 35.979000, 43.607178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788605, 36.326057, 43.762199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775276, 35.987892, 43.975426>,  <33.767281, 35.784992, 44.103363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775276, 35.987892, 43.975426>,  <33.788605, 36.326057, 43.762199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775276, 35.987892, 43.975426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203424, 0.527939, 0.824560,
		-0.978524, -0.080963, -0.189570,
		-0.033323, -0.845414, 0.533071,
		33.765278, 35.734268, 44.135345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247826, 36.470139, 44.141605>,  <33.788605, 36.326057, 43.762199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247826, 36.470139, 44.141605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453094, 36.180347, 44.325691>,  <33.576256, 36.006474, 44.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453094, 36.180347, 44.325691>,  <33.247826, 36.470139, 44.141605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453094, 36.180347, 44.325691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144773, 0.455453, 0.878409,
		-0.845990, -0.517398, 0.128840,
		0.513167, -0.724473, 0.460215,
		33.607044, 35.963005, 44.463757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900650, 36.405258, 44.788979>,  <33.247826, 36.470139, 44.141605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900650, 36.405258, 44.788979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257954, 36.234863, 44.846428>,  <33.472336, 36.132626, 44.880898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257954, 36.234863, 44.846428>,  <32.900650, 36.405258, 44.788979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257954, 36.234863, 44.846428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061544, 0.432354, 0.899601,
		-0.445310, -0.794738, 0.412421,
		0.893258, -0.425984, 0.143621,
		33.525932, 36.107067, 44.889515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894897, 35.979961, 45.485973>,  <32.900650, 36.405258, 44.788979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894897, 35.979961, 45.485973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270782, 36.077366, 45.389946>,  <33.496315, 36.135811, 45.332329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270782, 36.077366, 45.389946>,  <32.894897, 35.979961, 45.485973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270782, 36.077366, 45.389946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142954, 0.358000, 0.922713,
		0.310637, -0.901409, 0.301608,
		0.939718, 0.243512, -0.240068,
		33.552696, 36.150421, 45.317924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342472, 35.737423, 46.039402>,  <32.894897, 35.979961, 45.485973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342472, 35.737423, 46.039402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536098, 36.044327, 45.871117>,  <33.652275, 36.228470, 45.770145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536098, 36.044327, 45.871117>,  <33.342472, 35.737423, 46.039402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536098, 36.044327, 45.871117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206970, 0.366759, 0.907001,
		0.850201, -0.526124, 0.018737,
		0.484067, 0.767256, -0.420711,
		33.681320, 36.274502, 45.744904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663067, 36.020813, 46.625595>,  <33.342472, 35.737423, 46.039402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663067, 36.020813, 46.625595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781155, 36.262794, 46.329788>,  <33.852009, 36.407982, 46.152306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781155, 36.262794, 46.329788>,  <33.663067, 36.020813, 46.625595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781155, 36.262794, 46.329788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374507, 0.638801, 0.672070,
		0.878970, -0.475364, -0.037969,
		0.295223, 0.604949, -0.739513,
		33.869720, 36.444279, 46.107933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368206, 36.151218, 46.693222>,  <33.663067, 36.020813, 46.625595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368206, 36.151218, 46.693222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229431, 36.455585, 46.473900>,  <34.146168, 36.638206, 46.342308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229431, 36.455585, 46.473900>,  <34.368206, 36.151218, 46.693222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229431, 36.455585, 46.473900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415467, 0.648812, 0.637519,
		0.840847, -0.006624, -0.541233,
		-0.346935, 0.760920, -0.548303,
		34.125351, 36.683861, 46.309410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920109, 36.464111, 46.740891>,  <34.368206, 36.151218, 46.693222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920109, 36.464111, 46.740891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642254, 36.715870, 46.601551>,  <34.475540, 36.866924, 46.517948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642254, 36.715870, 46.601551>,  <34.920109, 36.464111, 46.740891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642254, 36.715870, 46.601551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339170, 0.713592, 0.612985,
		0.634385, 0.307654, -0.709158,
		-0.694636, 0.629393, -0.348345,
		34.433865, 36.904690, 46.497047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288586, 37.057186, 46.441422>,  <34.920109, 36.464111, 46.740891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288586, 37.057186, 46.441422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916992, 37.190838, 46.505096>,  <34.694035, 37.271030, 46.543301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916992, 37.190838, 46.505096>,  <35.288586, 37.057186, 46.441422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916992, 37.190838, 46.505096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368365, 0.792941, 0.485336,
		0.035935, 0.509511, -0.859713,
		-0.928987, 0.334129, 0.159191,
		34.638298, 37.291077, 46.552853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342323, 37.830257, 46.251419>,  <35.288586, 37.057186, 46.441422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342323, 37.830257, 46.251419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013504, 37.772423, 46.471722>,  <34.816212, 37.737724, 46.603905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013504, 37.772423, 46.471722>,  <35.342323, 37.830257, 46.251419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013504, 37.772423, 46.471722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194127, 0.838121, 0.509772,
		-0.535304, 0.525974, -0.660909,
		-0.822049, -0.144583, 0.550756,
		34.766888, 37.729050, 46.636948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940807, 38.415657, 46.347622>,  <35.342323, 37.830257, 46.251419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940807, 38.415657, 46.347622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837658, 38.188118, 46.660007>,  <34.775768, 38.051594, 46.847439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837658, 38.188118, 46.660007>,  <34.940807, 38.415657, 46.347622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837658, 38.188118, 46.660007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191635, 0.762133, 0.618409,
		-0.946983, 0.309133, -0.087524,
		-0.257875, -0.568850, 0.780968,
		34.760296, 38.017464, 46.894299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414211, 38.841202, 46.743637>,  <34.940807, 38.415657, 46.347622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414211, 38.841202, 46.743637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564407, 38.549534, 46.972485>,  <34.654526, 38.374535, 47.109795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564407, 38.549534, 46.972485>,  <34.414211, 38.841202, 46.743637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564407, 38.549534, 46.972485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093558, 0.643955, 0.759321,
		-0.922092, -0.231591, 0.310018,
		0.375490, -0.729169, 0.572119,
		34.677055, 38.330784, 47.144119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027538, 38.769699, 47.241581>,  <34.414211, 38.841202, 46.743637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027538, 38.769699, 47.241581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388653, 38.668858, 47.380966>,  <34.605320, 38.608353, 47.464596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388653, 38.668858, 47.380966>,  <34.027538, 38.769699, 47.241581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388653, 38.668858, 47.380966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085315, 0.689121, 0.719606,
		-0.421550, -0.679377, 0.600618,
		0.902783, -0.252109, 0.348460,
		34.659489, 38.593224, 47.485504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098091, 39.180969, 47.827122>,  <34.027538, 38.769699, 47.241581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098091, 39.180969, 47.827122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461563, 39.019775, 47.783466>,  <34.679646, 38.923061, 47.757271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461563, 39.019775, 47.783466>,  <34.098091, 39.180969, 47.827122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461563, 39.019775, 47.783466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347747, 0.585877, 0.731998,
		-0.231038, -0.703103, 0.672508,
		0.908677, -0.402982, -0.109142,
		34.734165, 38.898880, 47.750725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356457, 39.080750, 48.570724>,  <34.098091, 39.180969, 47.827122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356457, 39.080750, 48.570724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695362, 39.078793, 48.358265>,  <34.898705, 39.077618, 48.230789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695362, 39.078793, 48.358265>,  <34.356457, 39.080750, 48.570724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695362, 39.078793, 48.358265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439488, 0.568054, 0.695820,
		0.298317, -0.822977, 0.483442,
		0.847265, -0.004892, -0.531148,
		34.949543, 39.077324, 48.198921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992176, 39.068890, 49.025299>,  <34.356457, 39.080750, 48.570724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992176, 39.068890, 49.025299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120224, 39.211533, 48.674221>,  <35.197052, 39.297119, 48.463573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120224, 39.211533, 48.674221>,  <34.992176, 39.068890, 49.025299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120224, 39.211533, 48.674221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516271, 0.711137, 0.477230,
		0.794347, -0.605902, 0.043545,
		0.320121, 0.356605, -0.877699,
		35.216259, 39.318512, 48.410912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765022, 39.108551, 49.070286>,  <34.992176, 39.068890, 49.025299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765022, 39.108551, 49.070286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637344, 39.375790, 48.801434>,  <35.560738, 39.536133, 48.640121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637344, 39.375790, 48.801434>,  <35.765022, 39.108551, 49.070286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637344, 39.375790, 48.801434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464919, 0.728412, 0.503254,
		0.825813, -0.151852, -0.543115,
		-0.319192, 0.668099, -0.672131,
		35.541588, 39.576218, 48.599792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262867, 39.547691, 49.026604>,  <35.765022, 39.108551, 49.070286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262867, 39.547691, 49.026604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961971, 39.766209, 48.879250>,  <35.781433, 39.897320, 48.790836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961971, 39.766209, 48.879250>,  <36.262867, 39.547691, 49.026604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961971, 39.766209, 48.879250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302089, 0.782818, 0.544002,
		0.585560, 0.297934, -0.753893,
		-0.752238, 0.546289, -0.368384,
		35.736301, 39.930096, 48.768734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383495, 40.330303, 49.054211>,  <36.262867, 39.547691, 49.026604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383495, 40.330303, 49.054211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100796, 40.168041, 49.286057>,  <35.931175, 40.070686, 49.425163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100796, 40.168041, 49.286057>,  <36.383495, 40.330303, 49.054211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100796, 40.168041, 49.286057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688789, -0.207536, 0.694621,
		-0.161482, 0.890155, 0.426084,
		-0.706748, -0.405651, 0.579616,
		35.888771, 40.046345, 49.459942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127102, 40.905777, 49.366489>,  <36.383495, 40.330303, 49.054211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127102, 40.905777, 49.366489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390896, 41.187061, 49.260227>,  <36.549171, 41.355831, 49.196468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390896, 41.187061, 49.260227>,  <36.127102, 40.905777, 49.366489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390896, 41.187061, 49.260227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108108, -0.261005, -0.959265,
		-0.743902, 0.661342, -0.096106,
		0.659487, 0.703209, -0.265658,
		36.588741, 41.398026, 49.180531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886612, 41.272297, 48.748158>,  <36.127102, 40.905777, 49.366489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886612, 41.272297, 48.748158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283680, 41.316708, 48.767273>,  <36.521919, 41.343353, 48.778744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283680, 41.316708, 48.767273>,  <35.886612, 41.272297, 48.748158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283680, 41.316708, 48.767273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080334, -0.310563, -0.947152,
		-0.090319, 0.944046, -0.317205,
		0.992667, 0.111029, 0.047790,
		36.581482, 41.350018, 48.781609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033207, 41.708988, 48.149563>,  <35.886612, 41.272297, 48.748158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033207, 41.708988, 48.149563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372025, 41.533062, 48.268940>,  <36.575317, 41.427505, 48.340565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372025, 41.533062, 48.268940>,  <36.033207, 41.708988, 48.149563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372025, 41.533062, 48.268940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184327, -0.283576, -0.941068,
		0.498532, 0.852140, -0.159132,
		0.847048, -0.439820, 0.298444,
		36.626141, 41.401115, 48.358475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562519, 41.962475, 47.699558>,  <36.033207, 41.708988, 48.149563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562519, 41.962475, 47.699558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687080, 41.613144, 47.849403>,  <36.761818, 41.403545, 47.939312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687080, 41.613144, 47.849403>,  <36.562519, 41.962475, 47.699558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687080, 41.613144, 47.849403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068916, -0.372421, -0.925501,
		0.947776, 0.314020, -0.055787,
		0.311402, -0.873324, 0.374613,
		36.780502, 41.351147, 47.961788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098255, 41.750240, 47.187065>,  <36.562519, 41.962475, 47.699558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098255, 41.750240, 47.187065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020149, 41.443565, 47.431705>,  <36.973286, 41.259560, 47.578491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020149, 41.443565, 47.431705>,  <37.098255, 41.750240, 47.187065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020149, 41.443565, 47.431705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196340, -0.641539, -0.741538,
		0.960897, -0.024714, 0.275801,
		-0.195264, -0.766692, 0.611601,
		36.961571, 41.213558, 47.615185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722782, 41.302448, 47.113438>,  <37.098255, 41.750240, 47.187065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722782, 41.302448, 47.113438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390415, 41.119061, 47.239532>,  <37.190994, 41.009029, 47.315189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390415, 41.119061, 47.239532>,  <37.722782, 41.302448, 47.113438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390415, 41.119061, 47.239532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110137, -0.690905, -0.714507,
		0.545380, -0.558979, 0.624582,
		-0.830922, -0.458467, 0.315241,
		37.141140, 40.981522, 47.334106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855679, 40.586559, 47.131050>,  <37.722782, 41.302448, 47.113438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855679, 40.586559, 47.131050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459499, 40.636753, 47.108212>,  <37.221790, 40.666870, 47.094509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459499, 40.636753, 47.108212>,  <37.855679, 40.586559, 47.131050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459499, 40.636753, 47.108212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044656, -0.683816, -0.728286,
		-0.130433, -0.718782, 0.682890,
		-0.990451, 0.125488, -0.057094,
		37.162365, 40.674400, 47.091084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597248, 39.851357, 47.084824>,  <37.855679, 40.586559, 47.131050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597248, 39.851357, 47.084824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311539, 40.098450, 46.953232>,  <37.140114, 40.246704, 46.874279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311539, 40.098450, 46.953232>,  <37.597248, 39.851357, 47.084824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311539, 40.098450, 46.953232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214412, -0.640595, -0.737337,
		-0.666217, -0.456121, 0.590007,
		-0.714270, 0.617731, -0.328977,
		37.097256, 40.283768, 46.854538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115437, 39.349949, 46.876865>,  <37.597248, 39.851357, 47.084824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115437, 39.349949, 46.876865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008987, 39.692505, 46.699879>,  <36.945118, 39.898037, 46.593685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008987, 39.692505, 46.699879>,  <37.115437, 39.349949, 46.876865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008987, 39.692505, 46.699879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364307, -0.514330, -0.776366,
		-0.892446, -0.045414, 0.448863,
		-0.266121, 0.856389, -0.442467,
		36.929150, 39.949421, 46.567139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414257, 39.245117, 46.645020>,  <37.115437, 39.349949, 46.876865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414257, 39.245117, 46.645020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556011, 39.556755, 46.438168>,  <36.641064, 39.743736, 46.314056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556011, 39.556755, 46.438168>,  <36.414257, 39.245117, 46.645020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556011, 39.556755, 46.438168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287835, -0.435280, -0.853043,
		-0.889696, 0.451157, 0.069992,
		0.354390, 0.779095, -0.517125,
		36.662327, 39.790485, 46.283031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945713, 39.269203, 46.059708>,  <36.414257, 39.245117, 46.645020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945713, 39.269203, 46.059708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234180, 39.512928, 45.927853>,  <36.407261, 39.659161, 45.848740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234180, 39.512928, 45.927853>,  <35.945713, 39.269203, 46.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234180, 39.512928, 45.927853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013080, -0.463773, -0.885858,
		-0.692639, 0.643162, -0.326487,
		0.721166, 0.609309, -0.329640,
		36.450531, 39.695721, 45.828960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620415, 39.541248, 45.388145>,  <35.945713, 39.269203, 46.059708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620415, 39.541248, 45.388145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016682, 39.589439, 45.362621>,  <36.254440, 39.618355, 45.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016682, 39.589439, 45.362621>,  <35.620415, 39.541248, 45.388145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016682, 39.589439, 45.362621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005923, -0.429583, -0.903008,
		-0.136202, 0.894955, -0.424859,
		0.990663, 0.120475, -0.063811,
		36.313881, 39.625584, 45.343479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759583, 39.889423, 44.788456>,  <35.620415, 39.541248, 45.388145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759583, 39.889423, 44.788456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106544, 39.698788, 44.845692>,  <36.314720, 39.584404, 44.880032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106544, 39.698788, 44.845692>,  <35.759583, 39.889423, 44.788456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106544, 39.698788, 44.845692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103061, -0.453378, -0.885340,
		0.486821, 0.753197, -0.442379,
		0.867401, -0.476594, 0.143089,
		36.366764, 39.555809, 44.888618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133003, 40.052811, 44.193073>,  <35.759583, 39.889423, 44.788456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133003, 40.052811, 44.193073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262707, 39.719128, 44.371490>,  <36.340527, 39.518917, 44.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262707, 39.719128, 44.371490>,  <36.133003, 40.052811, 44.193073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262707, 39.719128, 44.371490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042706, -0.483946, -0.874055,
		0.945005, 0.264370, -0.192549,
		0.324257, -0.834209, 0.446041,
		36.359985, 39.468864, 44.505302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627968, 39.814842, 43.745770>,  <36.133003, 40.052811, 44.193073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627968, 39.814842, 43.745770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572056, 39.472019, 43.944126>,  <36.538509, 39.266327, 44.063141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572056, 39.472019, 43.944126>,  <36.627968, 39.814842, 43.745770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572056, 39.472019, 43.944126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074666, -0.490263, -0.868370,
		0.987364, -0.158406, 0.004536,
		-0.139779, -0.857058, 0.495896,
		36.530121, 39.214901, 44.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025543, 39.183941, 43.337440>,  <36.627968, 39.814842, 43.745770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025543, 39.183941, 43.337440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770809, 38.991856, 43.578716>,  <36.617970, 38.876606, 43.723480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770809, 38.991856, 43.578716>,  <37.025543, 39.183941, 43.337440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770809, 38.991856, 43.578716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087085, -0.732538, -0.675133,
		0.766068, -0.482476, 0.424685,
		-0.636833, -0.480214, 0.603190,
		36.579758, 38.847790, 43.759674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243614, 38.474163, 43.366257>,  <37.025543, 39.183941, 43.337440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243614, 38.474163, 43.366257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857719, 38.481655, 43.471283>,  <36.626183, 38.486149, 43.534298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857719, 38.481655, 43.471283>,  <37.243614, 38.474163, 43.366257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857719, 38.481655, 43.471283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143576, -0.873468, -0.465231,
		0.220629, -0.486522, 0.845352,
		-0.964733, 0.018728, 0.262565,
		36.568298, 38.487274, 43.550053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159565, 37.856609, 43.549797>,  <37.243614, 38.474163, 43.366257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159565, 37.856609, 43.549797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785904, 37.992485, 43.506023>,  <36.561707, 38.074009, 43.479759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785904, 37.992485, 43.506023>,  <37.159565, 37.856609, 43.549797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785904, 37.992485, 43.506023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249648, -0.841113, -0.479797,
		-0.255026, -0.420882, 0.870528,
		-0.934151, 0.339687, -0.109433,
		36.505657, 38.094391, 43.473194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722988, 37.276611, 43.776089>,  <37.159565, 37.856609, 43.549797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722988, 37.276611, 43.776089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485611, 37.511932, 43.556374>,  <36.343185, 37.653126, 43.424545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485611, 37.511932, 43.556374>,  <36.722988, 37.276611, 43.776089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485611, 37.511932, 43.556374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303005, -0.795543, -0.524691,
		-0.745660, -0.144940, 0.650372,
		-0.593447, 0.588306, -0.549286,
		36.307575, 37.688423, 43.391586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218891, 36.841606, 43.589935>,  <36.722988, 37.276611, 43.776089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218891, 36.841606, 43.589935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171799, 37.128819, 43.315540>,  <36.143543, 37.301147, 43.150906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171799, 37.128819, 43.315540>,  <36.218891, 36.841606, 43.589935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171799, 37.128819, 43.315540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188331, -0.694394, -0.694513,
		-0.975024, 0.047430, 0.216976,
		-0.117726, 0.718030, -0.685984,
		36.136482, 37.344227, 43.109745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622051, 36.553703, 43.313190>,  <36.218891, 36.841606, 43.589935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622051, 36.553703, 43.313190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807896, 36.791840, 43.050983>,  <35.919403, 36.934723, 42.893658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807896, 36.791840, 43.050983>,  <35.622051, 36.553703, 43.313190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807896, 36.791840, 43.050983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211571, -0.644196, -0.735016,
		-0.859868, 0.480186, -0.173345,
		0.464613, 0.595342, -0.655517,
		35.947281, 36.970444, 42.854328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204498, 36.634815, 42.697083>,  <35.622051, 36.553703, 43.313190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204498, 36.634815, 42.697083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580986, 36.707241, 42.583019>,  <35.806881, 36.750698, 42.514584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580986, 36.707241, 42.583019>,  <35.204498, 36.634815, 42.697083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580986, 36.707241, 42.583019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107179, -0.640476, -0.760463,
		-0.320331, 0.746327, -0.583424,
		0.941223, 0.181069, -0.285155,
		35.863354, 36.761562, 42.497471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134850, 36.995239, 41.994946>,  <35.204498, 36.634815, 42.697083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134850, 36.995239, 41.994946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498550, 36.832195, 42.028679>,  <35.716770, 36.734371, 42.048920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498550, 36.832195, 42.028679>,  <35.134850, 36.995239, 41.994946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498550, 36.832195, 42.028679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114702, -0.440118, -0.890584,
		0.400122, 0.800096, -0.446933,
		0.909256, -0.407606, 0.084329,
		35.771328, 36.709915, 42.053978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267025, 36.783909, 41.334431>,  <35.134850, 36.995239, 41.994946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267025, 36.783909, 41.334431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569530, 36.595455, 41.516022>,  <35.751034, 36.482384, 41.624977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569530, 36.595455, 41.516022>,  <35.267025, 36.783909, 41.334431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569530, 36.595455, 41.516022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086636, -0.615650, -0.783243,
		0.648503, 0.631671, -0.424778,
		0.756266, -0.471134, 0.453976,
		35.796410, 36.454117, 41.652214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912868, 36.908348, 40.929531>,  <35.267025, 36.783909, 41.334431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912868, 36.908348, 40.929531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960579, 36.559738, 41.119781>,  <35.989204, 36.350574, 41.233932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960579, 36.559738, 41.119781>,  <35.912868, 36.908348, 40.929531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960579, 36.559738, 41.119781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190030, -0.450154, -0.872496,
		0.974506, 0.194453, 0.111922,
		0.119277, -0.871521, 0.475630,
		35.996361, 36.298283, 41.262470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644863, 36.646683, 40.675774>,  <35.912868, 36.908348, 40.929531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644863, 36.646683, 40.675774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430405, 36.336315, 40.808743>,  <36.301731, 36.150097, 40.888523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430405, 36.336315, 40.808743>,  <36.644863, 36.646683, 40.675774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430405, 36.336315, 40.808743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247910, -0.521175, -0.816650,
		0.806901, -0.355433, 0.471783,
		-0.536146, -0.775915, 0.332421,
		36.269562, 36.103542, 40.908470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052464, 36.069038, 40.538334>,  <36.644863, 36.646683, 40.675774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052464, 36.069038, 40.538334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680031, 35.934002, 40.593643>,  <36.456570, 35.852982, 40.626827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680031, 35.934002, 40.593643>,  <37.052464, 36.069038, 40.538334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680031, 35.934002, 40.593643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086937, -0.573440, -0.814622,
		0.354297, -0.746459, 0.563269,
		-0.931083, -0.337587, 0.138273,
		36.400707, 35.832726, 40.635124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160339, 35.404934, 40.219517>,  <37.052464, 36.069038, 40.538334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160339, 35.404934, 40.219517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764442, 35.450008, 40.254662>,  <36.526905, 35.477055, 40.275749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764442, 35.450008, 40.254662>,  <37.160339, 35.404934, 40.219517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764442, 35.450008, 40.254662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138463, -0.604503, -0.784477,
		-0.035289, -0.788592, 0.613903,
		-0.989738, 0.112686, 0.087859,
		36.467522, 35.483814, 40.281017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935661, 34.814140, 40.056053>,  <37.160339, 35.404934, 40.219517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935661, 34.814140, 40.056053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622303, 35.059723, 40.017380>,  <36.434288, 35.207073, 39.994175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622303, 35.059723, 40.017380>,  <36.935661, 34.814140, 40.056053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622303, 35.059723, 40.017380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132910, -0.317450, -0.938915,
		-0.607146, -0.722691, 0.330290,
		-0.783396, 0.613957, -0.096686,
		36.387283, 35.243912, 39.988373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339561, 34.331505, 39.712215>,  <36.935661, 34.814140, 40.056053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339561, 34.331505, 39.712215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335819, 34.720428, 39.618809>,  <36.333572, 34.953781, 39.562763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335819, 34.720428, 39.618809>,  <36.339561, 34.331505, 39.712215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335819, 34.720428, 39.618809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089148, -0.231785, -0.968674,
		-0.995974, -0.029883, -0.084510,
		-0.009359, 0.972308, -0.233516,
		36.333012, 35.012119, 39.548756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887825, 34.412064, 39.055843>,  <36.339561, 34.331505, 39.712215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887825, 34.412064, 39.055843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087234, 34.758636, 39.066936>,  <36.206879, 34.966579, 39.073593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087234, 34.758636, 39.066936>,  <35.887825, 34.412064, 39.055843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087234, 34.758636, 39.066936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109825, -0.031395, -0.993455,
		-0.859893, 0.498303, -0.110807,
		0.498520, 0.866435, 0.027729,
		36.236790, 35.018566, 39.075256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623486, 34.817524, 38.507851>,  <35.887825, 34.412064, 39.055843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623486, 34.817524, 38.507851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988518, 34.948738, 38.605488>,  <36.207539, 35.027466, 38.664070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988518, 34.948738, 38.605488>,  <35.623486, 34.817524, 38.507851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988518, 34.948738, 38.605488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250857, 0.022253, -0.967768,
		-0.322894, 0.944403, -0.061983,
		0.912584, 0.328036, 0.244096,
		36.262295, 35.047150, 38.678715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687927, 35.188263, 37.970806>,  <35.623486, 34.817524, 38.507851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687927, 35.188263, 37.970806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052956, 35.160358, 38.131973>,  <36.271973, 35.143616, 38.228676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052956, 35.160358, 38.131973>,  <35.687927, 35.188263, 37.970806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052956, 35.160358, 38.131973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408234, 0.212320, -0.887843,
		-0.023613, 0.974707, 0.222235,
		0.912572, -0.069760, 0.402922,
		36.326729, 35.139431, 38.252850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071045, 35.766171, 37.662025>,  <35.687927, 35.188263, 37.970806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071045, 35.766171, 37.662025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342575, 35.501247, 37.788857>,  <36.505493, 35.342293, 37.864956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342575, 35.501247, 37.788857>,  <36.071045, 35.766171, 37.662025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342575, 35.501247, 37.788857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460651, 0.047830, -0.886292,
		0.571834, 0.747701, 0.337563,
		0.678827, -0.662310, 0.317078,
		36.546223, 35.302555, 37.883980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701065, 36.092430, 37.516586>,  <36.071045, 35.766171, 37.662025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701065, 36.092430, 37.516586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779930, 35.703739, 37.568546>,  <36.827248, 35.470524, 37.599720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779930, 35.703739, 37.568546>,  <36.701065, 36.092430, 37.516586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779930, 35.703739, 37.568546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458991, -0.025584, -0.888072,
		0.866287, 0.234717, 0.440970,
		0.197164, -0.971727, 0.129896,
		36.839081, 35.412220, 37.607513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335579, 36.119522, 37.306744>,  <36.701065, 36.092430, 37.516586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335579, 36.119522, 37.306744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264751, 35.725845, 37.306122>,  <37.222256, 35.489639, 37.305748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264751, 35.725845, 37.306122>,  <37.335579, 36.119522, 37.306744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264751, 35.725845, 37.306122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602195, -0.107093, -0.791133,
		0.778464, -0.141025, 0.611642,
		-0.177073, -0.984197, -0.001556,
		37.211628, 35.430588, 37.305656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980938, 35.789024, 37.411228>,  <37.335579, 36.119522, 37.306744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980938, 35.789024, 37.411228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728500, 35.565605, 37.195919>,  <37.577038, 35.431553, 37.066734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728500, 35.565605, 37.195919>,  <37.980938, 35.789024, 37.411228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728500, 35.565605, 37.195919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690688, -0.088760, -0.717685,
		0.353086, -0.824708, 0.441800,
		-0.631094, -0.558551, -0.538276,
		37.539173, 35.398041, 37.034435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328941, 35.251671, 37.299599>,  <37.980938, 35.789024, 37.411228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328941, 35.251671, 37.299599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029694, 35.224922, 37.035522>,  <37.850147, 35.208874, 36.877075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029694, 35.224922, 37.035522>,  <38.328941, 35.251671, 37.299599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029694, 35.224922, 37.035522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661134, -0.160244, -0.732955,
		-0.056779, -0.984810, 0.164090,
		-0.748116, -0.066869, -0.660190,
		37.805260, 35.204861, 36.837467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473400, 34.656982, 36.861515>,  <38.328941, 35.251671, 37.299599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473400, 34.656982, 36.861515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219353, 34.904129, 36.676098>,  <38.066925, 35.052418, 36.564846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219353, 34.904129, 36.676098>,  <38.473400, 34.656982, 36.861515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219353, 34.904129, 36.676098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567704, -0.033553, -0.822549,
		-0.523776, -0.785569, -0.329453,
		-0.635115, 0.617863, -0.463545,
		38.028820, 35.089489, 36.537033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457279, 34.379078, 36.154606>,  <38.473400, 34.656982, 36.861515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457279, 34.379078, 36.154606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358700, 34.765648, 36.125534>,  <38.299553, 34.997589, 36.108089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358700, 34.765648, 36.125534>,  <38.457279, 34.379078, 36.154606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358700, 34.765648, 36.125534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675774, 0.117603, -0.727667,
		-0.694689, -0.228450, -0.682069,
		-0.246449, 0.966426, -0.072683,
		38.284763, 35.055576, 36.103729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024986, 34.361336, 35.733864>,  <38.457279, 34.379078, 36.154606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024986, 34.361336, 35.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943928, 34.749161, 35.788841>,  <38.895294, 34.981853, 35.821827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943928, 34.749161, 35.788841>,  <39.024986, 34.361336, 35.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943928, 34.749161, 35.788841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794363, 0.244830, -0.555919,
		-0.572646, -0.003476, -0.819796,
		-0.202643, 0.969560, 0.137439,
		38.883133, 35.040028, 35.830074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837814, 34.787762, 35.075462>,  <39.024986, 34.361336, 35.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837814, 34.787762, 35.075462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029636, 34.978897, 35.369862>,  <39.144730, 35.093578, 35.546501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029636, 34.978897, 35.369862>,  <38.837814, 34.787762, 35.075462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029636, 34.978897, 35.369862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735717, 0.238201, -0.634020,
		-0.478275, 0.845535, -0.237324,
		0.479555, 0.477839, 0.736000,
		39.173504, 35.122250, 35.590660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016335, 35.461613, 34.842522>,  <38.837814, 34.787762, 35.075462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016335, 35.461613, 34.842522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294250, 35.355846, 35.110058>,  <39.461002, 35.292389, 35.270580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294250, 35.355846, 35.110058>,  <39.016335, 35.461613, 34.842522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294250, 35.355846, 35.110058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706958, 0.422016, -0.567550,
		-0.132194, 0.867172, 0.480142,
		0.694792, -0.264414, 0.668842,
		39.502689, 35.276524, 35.310711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411804, 36.004166, 35.152313>,  <39.016335, 35.461613, 34.842522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411804, 36.004166, 35.152313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662170, 35.692619, 35.168331>,  <39.812389, 35.505692, 35.177940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662170, 35.692619, 35.168331>,  <39.411804, 36.004166, 35.152313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662170, 35.692619, 35.168331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721176, 0.558478, -0.409887,
		0.296882, 0.285433, 0.911257,
		0.625912, -0.778865, 0.040045,
		39.849945, 35.458961, 35.180344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988106, 36.388958, 35.157623>,  <39.411804, 36.004166, 35.152313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988106, 36.388958, 35.157623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019161, 36.025826, 34.992786>,  <40.037796, 35.807945, 34.893883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019161, 36.025826, 34.992786>,  <39.988106, 36.388958, 35.157623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019161, 36.025826, 34.992786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606179, 0.371149, -0.703417,
		0.791529, -0.195189, 0.579122,
		0.077642, -0.907827, -0.412095,
		40.042454, 35.753479, 34.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693104, 36.277374, 34.985130>,  <39.988106, 36.388958, 35.157623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693104, 36.277374, 34.985130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472382, 36.033348, 34.757683>,  <40.339947, 35.886932, 34.621216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472382, 36.033348, 34.757683>,  <40.693104, 36.277374, 34.985130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472382, 36.033348, 34.757683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522977, 0.277972, -0.805746,
		0.649618, -0.741992, 0.165662,
		-0.551808, -0.610065, -0.568620,
		40.306839, 35.850330, 34.587097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233410, 35.941261, 34.735142>,  <40.693104, 36.277374, 34.985130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233410, 35.941261, 34.735142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912514, 35.960484, 34.497116>,  <40.719975, 35.972019, 34.354301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912514, 35.960484, 34.497116>,  <41.233410, 35.941261, 34.735142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912514, 35.960484, 34.497116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592269, 0.189307, -0.783186,
		0.075009, -0.980741, -0.180335,
		-0.802241, 0.048061, -0.595062,
		40.671841, 35.974903, 34.318596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814030, 35.981892, 34.186417>,  <41.233410, 35.941261, 34.735142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814030, 35.981892, 34.186417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043034, 35.677303, 34.307999>,  <42.180435, 35.494549, 34.380947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043034, 35.677303, 34.307999>,  <41.814030, 35.981892, 34.186417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043034, 35.677303, 34.307999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700356, -0.646945, -0.301601,
		0.426307, -0.040211, -0.903684,
		0.572507, -0.761476, 0.303960,
		42.214787, 35.448860, 34.399185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960800, 35.439701, 33.603996>,  <41.814030, 35.981892, 34.186417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960800, 35.439701, 33.603996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017467, 35.244305, 33.948391>,  <42.051468, 35.127068, 34.155029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017467, 35.244305, 33.948391>,  <41.960800, 35.439701, 33.603996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017467, 35.244305, 33.948391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571449, -0.750564, -0.331812,
		0.808316, -0.445004, -0.385482,
		0.141672, -0.488492, 0.860991,
		42.059967, 35.097755, 34.206688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146965, 34.852539, 33.392132>,  <41.960800, 35.439701, 33.603996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146965, 34.852539, 33.392132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001724, 34.815395, 33.762974>,  <41.914577, 34.793110, 33.985481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001724, 34.815395, 33.762974>,  <42.146965, 34.852539, 33.392132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001724, 34.815395, 33.762974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704512, -0.623815, -0.338405,
		0.609769, -0.776036, 0.161089,
		-0.363105, -0.092860, 0.927109,
		41.892792, 34.787537, 34.041107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089714, 34.133713, 33.522408>,  <42.146965, 34.852539, 33.392132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089714, 34.133713, 33.522408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840305, 34.284729, 33.796249>,  <41.690662, 34.375340, 33.960556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840305, 34.284729, 33.796249>,  <42.089714, 34.133713, 33.522408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840305, 34.284729, 33.796249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585506, -0.805779, -0.088894,
		0.518081, -0.456269, 0.723472,
		-0.623518, 0.377543, 0.684607,
		41.653252, 34.397991, 34.001633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914646, 33.567867, 33.968739>,  <42.089714, 34.133713, 33.522408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914646, 33.567867, 33.968739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629036, 33.833946, 34.056076>,  <41.457668, 33.993595, 34.108479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629036, 33.833946, 34.056076>,  <41.914646, 33.567867, 33.968739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629036, 33.833946, 34.056076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671148, -0.739129, 0.057006,
		0.199308, -0.105840, 0.974204,
		-0.714029, 0.665197, 0.218348,
		41.414825, 34.033504, 34.121582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473755, 33.345856, 34.519501>,  <41.914646, 33.567867, 33.968739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473755, 33.345856, 34.519501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239056, 33.596275, 34.314060>,  <41.098236, 33.746529, 34.190796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239056, 33.596275, 34.314060>,  <41.473755, 33.345856, 34.519501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239056, 33.596275, 34.314060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728944, -0.684571, -0.001686,
		-0.352650, 0.373395, 0.858029,
		-0.586753, 0.626050, -0.513598,
		41.063030, 33.784092, 34.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844326, 33.146641, 34.738274>,  <41.473755, 33.345856, 34.519501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844326, 33.146641, 34.738274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762142, 33.358654, 34.409187>,  <40.712833, 33.485863, 34.211735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762142, 33.358654, 34.409187>,  <40.844326, 33.146641, 34.738274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762142, 33.358654, 34.409187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797527, -0.577904, -0.173142,
		-0.567218, 0.620559, 0.541452,
		-0.205463, 0.530032, -0.822710,
		40.700504, 33.517662, 34.162373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096889, 33.111927, 34.762249>,  <40.844326, 33.146641, 34.738274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096889, 33.111927, 34.762249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220112, 33.214073, 34.395668>,  <40.294044, 33.275360, 34.175720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220112, 33.214073, 34.395668>,  <40.096889, 33.111927, 34.762249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220112, 33.214073, 34.395668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502278, -0.774450, -0.384635,
		-0.807972, 0.578804, -0.110308,
		0.308056, 0.255369, -0.916454,
		40.312527, 33.290684, 34.120731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563507, 33.169464, 34.363987>,  <40.096889, 33.111927, 34.762249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563507, 33.169464, 34.363987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852631, 33.076885, 34.103531>,  <40.026104, 33.021339, 33.947258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852631, 33.076885, 34.103531>,  <39.563507, 33.169464, 34.363987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852631, 33.076885, 34.103531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549940, -0.763229, -0.339186,
		-0.418465, 0.603253, -0.678949,
		0.722809, -0.231444, -0.651138,
		40.069473, 33.007454, 33.908188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196712, 32.948215, 33.769737>,  <39.563507, 33.169464, 34.363987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196712, 32.948215, 33.769737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565842, 32.800102, 33.727234>,  <39.787319, 32.711235, 33.701733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565842, 32.800102, 33.727234>,  <39.196712, 32.948215, 33.769737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565842, 32.800102, 33.727234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376085, -0.806264, -0.456617,
		0.083406, 0.461338, -0.883295,
		0.922824, -0.370279, -0.106256,
		39.842690, 32.689018, 33.695358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248161, 32.750454, 33.104126>,  <39.196712, 32.948215, 33.769737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248161, 32.750454, 33.104126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535408, 32.532684, 33.277519>,  <39.707756, 32.402023, 33.381557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535408, 32.532684, 33.277519>,  <39.248161, 32.750454, 33.104126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535408, 32.532684, 33.277519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334147, -0.816139, -0.471449,
		0.610453, 0.193707, -0.768001,
		0.718118, -0.544422, 0.433487,
		39.750843, 32.369358, 33.407566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545010, 32.378712, 32.634212>,  <39.248161, 32.750454, 33.104126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545010, 32.378712, 32.634212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659382, 32.184570, 32.964710>,  <39.728004, 32.068085, 33.163010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659382, 32.184570, 32.964710>,  <39.545010, 32.378712, 32.634212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659382, 32.184570, 32.964710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175503, -0.874181, -0.452777,
		0.942043, -0.015547, -0.335133,
		0.285927, -0.485352, 0.826244,
		39.745159, 32.038963, 33.212582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028637, 31.934631, 32.445831>,  <39.545010, 32.378712, 32.634212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028637, 31.934631, 32.445831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924755, 31.791273, 32.804520>,  <39.862427, 31.705257, 33.019733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924755, 31.791273, 32.804520>,  <40.028637, 31.934631, 32.445831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924755, 31.791273, 32.804520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118962, -0.933382, -0.338595,
		0.958332, 0.018740, 0.285042,
		-0.259708, -0.358396, 0.896719,
		39.846844, 31.683754, 33.073536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426754, 31.351353, 32.475578>,  <40.028637, 31.934631, 32.445831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426754, 31.351353, 32.475578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129147, 31.296370, 32.737125>,  <39.950581, 31.263380, 32.894054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129147, 31.296370, 32.737125>,  <40.426754, 31.351353, 32.475578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129147, 31.296370, 32.737125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041551, -0.967198, -0.250603,
		0.666865, -0.213622, 0.713902,
		-0.744019, -0.137456, 0.653867,
		39.905941, 31.255133, 32.933285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494221, 30.591076, 32.649769>,  <40.426754, 31.351353, 32.475578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494221, 30.591076, 32.649769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136383, 30.695669, 32.794724>,  <39.921680, 30.758425, 32.881695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136383, 30.695669, 32.794724>,  <40.494221, 30.591076, 32.649769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136383, 30.695669, 32.794724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345449, -0.919082, -0.189611,
		0.283481, -0.294810, 0.912538,
		-0.894597, 0.261485, 0.362384,
		39.868004, 30.774115, 32.903439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416634, 30.238626, 33.219822>,  <40.494221, 30.591076, 32.649769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416634, 30.238626, 33.219822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046604, 30.314209, 33.088039>,  <39.824589, 30.359558, 33.008972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046604, 30.314209, 33.088039>,  <40.416634, 30.238626, 33.219822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046604, 30.314209, 33.088039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189890, -0.981357, -0.029656,
		-0.328916, 0.035126, 0.943706,
		-0.925071, 0.188955, -0.329454,
		39.769081, 30.370895, 32.989204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167118, 29.664532, 33.432358>,  <40.416634, 30.238626, 33.219822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167118, 29.664532, 33.432358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864388, 29.822092, 33.223724>,  <39.682747, 29.916628, 33.098545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864388, 29.822092, 33.223724>,  <40.167118, 29.664532, 33.432358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864388, 29.822092, 33.223724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418949, -0.904869, -0.075450,
		-0.501687, 0.161415, 0.849856,
		-0.756830, 0.393899, -0.521586,
		39.637337, 29.940262, 33.067249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428810, 29.506752, 33.702347>,  <40.167118, 29.664532, 33.432358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428810, 29.506752, 33.702347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360535, 29.585163, 33.316097>,  <39.319569, 29.632210, 33.084347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360535, 29.585163, 33.316097>,  <39.428810, 29.506752, 33.702347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360535, 29.585163, 33.316097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364525, -0.923042, -0.122945,
		-0.915416, 0.331010, 0.229013,
		-0.170693, 0.196027, -0.965628,
		39.309326, 29.643970, 33.026409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780979, 29.233664, 33.594852>,  <39.428810, 29.506752, 33.702347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780979, 29.233664, 33.594852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932091, 29.260351, 33.225456>,  <39.022758, 29.276363, 33.003819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932091, 29.260351, 33.225456>,  <38.780979, 29.233664, 33.594852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932091, 29.260351, 33.225456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307144, -0.931892, -0.192976,
		-0.873465, 0.356547, -0.331560,
		0.377784, 0.066721, -0.923487,
		39.045425, 29.280367, 32.948410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245472, 29.026548, 33.186111>,  <38.780979, 29.233664, 33.594852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245472, 29.026548, 33.186111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586769, 28.978470, 32.983120>,  <38.791546, 28.949623, 32.861324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586769, 28.978470, 32.983120>,  <38.245472, 29.026548, 33.186111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586769, 28.978470, 32.983120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361270, -0.838010, -0.408930,
		-0.376119, 0.532252, -0.758447,
		0.853240, -0.120198, -0.507478,
		38.842743, 28.942410, 32.830875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114555, 28.868158, 32.520668>,  <38.245472, 29.026548, 33.186111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114555, 28.868158, 32.520668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468555, 28.693644, 32.585690>,  <38.680958, 28.588936, 32.624702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468555, 28.693644, 32.585690>,  <38.114555, 28.868158, 32.520668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468555, 28.693644, 32.585690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356788, -0.859828, -0.365238,
		0.299120, 0.265238, -0.916611,
		0.885003, -0.436286, 0.162557,
		38.734055, 28.562757, 32.634457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313049, 28.697086, 31.871729>,  <38.114555, 28.868158, 32.520668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313049, 28.697086, 31.871729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475910, 28.471994, 32.159496>,  <38.573627, 28.336939, 32.332157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475910, 28.471994, 32.159496>,  <38.313049, 28.697086, 31.871729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475910, 28.471994, 32.159496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376719, -0.821007, -0.428987,
		0.832050, -0.096354, -0.546268,
		0.407155, -0.562728, 0.719418,
		38.598057, 28.303177, 32.375320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873981, 28.180759, 31.598047>,  <38.313049, 28.697086, 31.871729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873981, 28.180759, 31.598047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663956, 28.083185, 31.924189>,  <38.537941, 28.024641, 32.119873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663956, 28.083185, 31.924189>,  <38.873981, 28.180759, 31.598047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663956, 28.083185, 31.924189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416231, -0.762043, -0.496027,
		0.742334, -0.599822, 0.298587,
		-0.525064, -0.243936, 0.815355,
		38.506435, 28.010004, 32.168797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866745, 27.384548, 31.779640>,  <38.873981, 28.180759, 31.598047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866745, 27.384548, 31.779640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532703, 27.554382, 31.919542>,  <38.332279, 27.656282, 32.003483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532703, 27.554382, 31.919542>,  <38.866745, 27.384548, 31.779640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532703, 27.554382, 31.919542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549505, -0.614457, -0.566115,
		-0.025454, -0.664957, 0.746448,
		-0.835102, 0.424587, 0.349757,
		38.282173, 27.681759, 32.024471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958488, 27.706741, 31.090134>,  <38.866745, 27.384548, 31.779640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958488, 27.706741, 31.090134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057129, 27.970329, 30.805897>,  <39.116314, 28.128483, 30.635355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057129, 27.970329, 30.805897>,  <38.958488, 27.706741, 31.090134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057129, 27.970329, 30.805897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834901, 0.227842, 0.501028,
		0.492067, -0.716829, -0.493991,
		0.246599, 0.658972, -0.710594,
		39.131107, 28.168020, 30.592718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645969, 27.584469, 30.814978>,  <38.958488, 27.706741, 31.090134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645969, 27.584469, 30.814978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559311, 27.974741, 30.828297>,  <39.507317, 28.208904, 30.836288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559311, 27.974741, 30.828297>,  <39.645969, 27.584469, 30.814978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559311, 27.974741, 30.828297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715382, 0.135453, 0.685479,
		0.664300, 0.172324, -0.727331,
		-0.216644, 0.975683, 0.033296,
		39.494316, 28.267447, 30.838285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266655, 27.921530, 30.645437>,  <39.645969, 27.584469, 30.814978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266655, 27.921530, 30.645437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035267, 28.177382, 30.847918>,  <39.896435, 28.330893, 30.969406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035267, 28.177382, 30.847918>,  <40.266655, 27.921530, 30.645437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035267, 28.177382, 30.847918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789395, 0.282656, 0.544941,
		0.205480, 0.714827, -0.668431,
		-0.578475, 0.639631, 0.506200,
		39.861725, 28.369270, 30.999777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553459, 27.229591, 30.894783>,  <40.266655, 27.921530, 30.645437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553459, 27.229591, 30.894783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930004, 27.136124, 30.797436>,  <41.155933, 27.080042, 30.739027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930004, 27.136124, 30.797436>,  <40.553459, 27.229591, 30.894783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930004, 27.136124, 30.797436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337343, 0.640380, 0.690009,
		-0.005388, -0.731649, 0.681660,
		0.941366, -0.233671, -0.243366,
		41.212414, 27.066023, 30.724426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805996, 27.228661, 31.523849>,  <40.553459, 27.229591, 30.894783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805996, 27.228661, 31.523849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112999, 27.265461, 31.270090>,  <41.297203, 27.287540, 31.117834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112999, 27.265461, 31.270090>,  <40.805996, 27.228661, 31.523849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112999, 27.265461, 31.270090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444803, 0.636203, 0.630394,
		0.461603, -0.766017, 0.447371,
		0.767511, 0.092000, -0.634400,
		41.343250, 27.293060, 31.079769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604374, 27.130234, 31.795258>,  <40.805996, 27.228661, 31.523849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604374, 27.130234, 31.795258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655560, 27.368181, 31.477829>,  <41.686272, 27.510950, 31.287373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655560, 27.368181, 31.477829>,  <41.604374, 27.130234, 31.795258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655560, 27.368181, 31.477829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423089, 0.690947, 0.586164,
		0.897007, -0.410758, -0.163267,
		0.127963, 0.594869, -0.793572,
		41.693947, 27.546642, 31.239758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337708, 27.484194, 31.620920>,  <41.604374, 27.130234, 31.795258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337708, 27.484194, 31.620920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065914, 27.716005, 31.440941>,  <41.902840, 27.855093, 31.332954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065914, 27.716005, 31.440941>,  <42.337708, 27.484194, 31.620920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065914, 27.716005, 31.440941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285427, 0.773749, 0.565548,
		0.675897, 0.255852, -0.691161,
		-0.679481, 0.579528, -0.449947,
		41.862068, 27.889864, 31.305956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558910, 28.129786, 31.109192>,  <42.337708, 27.484194, 31.620920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558910, 28.129786, 31.109192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223198, 28.205368, 31.313114>,  <42.021770, 28.250717, 31.435467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223198, 28.205368, 31.313114>,  <42.558910, 28.129786, 31.109192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223198, 28.205368, 31.313114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404151, 0.844036, 0.352512,
		-0.363683, 0.501896, -0.784752,
		-0.839283, 0.188956, 0.509803,
		41.971413, 28.262054, 31.466055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392448, 28.824913, 30.967360>,  <42.558910, 28.129786, 31.109192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392448, 28.824913, 30.967360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169899, 28.750452, 31.291285>,  <42.036369, 28.705776, 31.485640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169899, 28.750452, 31.291285>,  <42.392448, 28.824913, 30.967360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169899, 28.750452, 31.291285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328082, 0.846187, 0.419917,
		-0.763423, 0.499314, -0.409719,
		-0.556369, -0.186153, 0.809815,
		42.002987, 28.694607, 31.534229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063408, 29.533720, 31.219408>,  <42.392448, 28.824913, 30.967360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063408, 29.533720, 31.219408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008705, 29.313635, 31.548908>,  <41.975883, 29.181583, 31.746609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008705, 29.313635, 31.548908>,  <42.063408, 29.533720, 31.219408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008705, 29.313635, 31.548908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092675, 0.820808, 0.563636,
		-0.986260, 0.153423, -0.061261,
		-0.136758, -0.550214, 0.823749,
		41.967678, 29.148571, 31.796032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682720, 29.892469, 31.619349>,  <42.063408, 29.533720, 31.219408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682720, 29.892469, 31.619349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847290, 29.650751, 31.892275>,  <41.946033, 29.505720, 32.056030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847290, 29.650751, 31.892275>,  <41.682720, 29.892469, 31.619349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847290, 29.650751, 31.892275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209342, 0.791248, 0.574545,
		-0.887076, -0.093547, 0.452046,
		0.411427, -0.604298, 0.682314,
		41.970718, 29.469461, 32.096970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393467, 30.045252, 32.279896>,  <41.682720, 29.892469, 31.619349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393467, 30.045252, 32.279896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745514, 29.872688, 32.359177>,  <41.956741, 29.769150, 32.406746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745514, 29.872688, 32.359177>,  <41.393467, 30.045252, 32.279896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745514, 29.872688, 32.359177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279633, 0.808428, 0.517928,
		-0.383671, -0.400413, 0.832146,
		0.880115, -0.431409, 0.198202,
		42.009548, 29.743265, 32.418636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564686, 30.023514, 33.027168>,  <41.393467, 30.045252, 32.279896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564686, 30.023514, 33.027168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921276, 30.013336, 32.846226>,  <42.135231, 30.007231, 32.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921276, 30.013336, 32.846226>,  <41.564686, 30.023514, 33.027168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921276, 30.013336, 32.846226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319819, 0.742540, 0.588516,
		0.320918, -0.669318, 0.670093,
		0.891475, -0.025443, -0.452355,
		42.188717, 30.005703, 32.710518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998028, 30.127924, 33.599617>,  <41.564686, 30.023514, 33.027168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998028, 30.127924, 33.599617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234379, 30.200474, 33.285172>,  <42.376190, 30.244003, 33.096504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234379, 30.200474, 33.285172>,  <41.998028, 30.127924, 33.599617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234379, 30.200474, 33.285172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435501, 0.748530, 0.500041,
		0.679123, -0.637814, 0.363299,
		0.590873, 0.181372, -0.786112,
		42.411640, 30.254885, 33.049339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639336, 30.319586, 33.895439>,  <41.998028, 30.127924, 33.599617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639336, 30.319586, 33.895439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695282, 30.438507, 33.517647>,  <42.728848, 30.509859, 33.290970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695282, 30.438507, 33.517647>,  <42.639336, 30.319586, 33.895439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695282, 30.438507, 33.517647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515609, 0.792465, 0.325802,
		0.845332, -0.532552, -0.042455,
		0.139862, 0.297301, -0.944484,
		42.737240, 30.527697, 33.234303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292908, 30.471025, 33.866203>,  <42.639336, 30.319586, 33.895439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292908, 30.471025, 33.866203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169765, 30.665207, 33.538898>,  <43.095879, 30.781715, 33.342514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169765, 30.665207, 33.538898>,  <43.292908, 30.471025, 33.866203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169765, 30.665207, 33.538898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512637, 0.809155, 0.287178,
		0.801516, -0.331065, -0.497964,
		-0.307856, 0.485453, -0.818267,
		43.077408, 30.810843, 33.293419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885960, 30.799974, 33.457733>,  <43.292908, 30.471025, 33.866203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885960, 30.799974, 33.457733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533215, 30.983047, 33.412392>,  <43.321568, 31.092892, 33.385185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533215, 30.983047, 33.412392>,  <43.885960, 30.799974, 33.457733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533215, 30.983047, 33.412392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380025, 0.832216, 0.403730,
		0.279116, 0.312956, -0.907829,
		-0.881859, 0.457685, -0.113354,
		43.268658, 31.120354, 33.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108456, 31.450590, 33.170090>,  <43.885960, 30.799974, 33.457733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108456, 31.450590, 33.170090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725426, 31.542042, 33.240261>,  <43.495605, 31.596912, 33.282364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725426, 31.542042, 33.240261>,  <44.108456, 31.450590, 33.170090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725426, 31.542042, 33.240261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281663, 0.871232, 0.402021,
		-0.060924, 0.434377, -0.898668,
		-0.957577, 0.228629, 0.175427,
		43.438152, 31.610630, 33.292889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031956, 32.174007, 32.953037>,  <44.108456, 31.450590, 33.170090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031956, 32.174007, 32.953037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740433, 32.121052, 33.221756>,  <43.565517, 32.089279, 33.382988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740433, 32.121052, 33.221756>,  <44.031956, 32.174007, 32.953037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740433, 32.121052, 33.221756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203556, 0.894884, 0.397175,
		-0.653762, 0.426213, -0.625250,
		-0.728807, -0.132385, 0.671799,
		43.521790, 32.081337, 33.423294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816208, 32.780945, 32.987007>,  <44.031956, 32.174007, 32.953037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816208, 32.780945, 32.987007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665066, 32.620045, 33.320576>,  <43.574379, 32.523502, 33.520718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665066, 32.620045, 33.320576>,  <43.816208, 32.780945, 32.987007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665066, 32.620045, 33.320576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145589, 0.863671, 0.482572,
		-0.914346, 0.303752, -0.267780,
		-0.377856, -0.402252, 0.833917,
		43.551708, 32.499371, 33.570751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330612, 33.256161, 33.260685>,  <43.816208, 32.780945, 32.987007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330612, 33.256161, 33.260685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439217, 33.033600, 33.574806>,  <43.504379, 32.900063, 33.763279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439217, 33.033600, 33.574806>,  <43.330612, 33.256161, 33.260685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439217, 33.033600, 33.574806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237117, 0.829476, 0.505713,
		-0.932769, 0.048902, 0.357143,
		0.271511, -0.556398, 0.785304,
		43.520672, 32.866680, 33.810398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135941, 33.700184, 33.794880>,  <43.330612, 33.256161, 33.260685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135941, 33.700184, 33.794880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412037, 33.430859, 33.900867>,  <43.577694, 33.269264, 33.964458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412037, 33.430859, 33.900867>,  <43.135941, 33.700184, 33.794880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412037, 33.430859, 33.900867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485319, 0.702411, 0.520658,
		-0.536683, -0.230788, 0.811608,
		0.690244, -0.673317, 0.264966,
		43.619110, 33.228863, 33.980358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160965, 33.776134, 34.527622>,  <43.135941, 33.700184, 33.794880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160965, 33.776134, 34.527622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497971, 33.581104, 34.436024>,  <43.700176, 33.464088, 34.381065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497971, 33.581104, 34.436024>,  <43.160965, 33.776134, 34.527622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497971, 33.581104, 34.436024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518629, 0.619349, 0.589432,
		-0.145562, -0.615371, 0.774681,
		0.842517, -0.487571, -0.228995,
		43.750725, 33.434834, 34.367325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480621, 33.542175, 35.097103>,  <43.160965, 33.776134, 34.527622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480621, 33.542175, 35.097103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777584, 33.550209, 34.829243>,  <43.955761, 33.555031, 34.668526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777584, 33.550209, 34.829243>,  <43.480621, 33.542175, 35.097103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777584, 33.550209, 34.829243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524220, 0.604991, 0.599315,
		0.417170, -0.795979, 0.438619,
		0.742403, 0.020083, -0.669652,
		44.000305, 33.556232, 34.628345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033653, 33.672127, 35.469036>,  <43.480621, 33.542175, 35.097103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033653, 33.672127, 35.469036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152130, 33.741493, 35.093334>,  <44.223217, 33.783112, 34.867912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152130, 33.741493, 35.093334>,  <44.033653, 33.672127, 35.469036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152130, 33.741493, 35.093334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619030, 0.714033, 0.327045,
		0.727371, -0.678295, 0.104148,
		0.296198, 0.173412, -0.939252,
		44.240990, 33.793518, 34.811558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684505, 33.783062, 35.483326>,  <44.033653, 33.672127, 35.469036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684505, 33.783062, 35.483326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560806, 33.974483, 35.154606>,  <44.486588, 34.089336, 34.957375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560806, 33.974483, 35.154606>,  <44.684505, 33.783062, 35.483326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560806, 33.974483, 35.154606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497072, 0.818055, 0.289320,
		0.810732, -0.319023, -0.490854,
		-0.309246, 0.478550, -0.821801,
		44.468033, 34.118050, 34.908066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274040, 34.126324, 35.196198>,  <44.684505, 33.783062, 35.483326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274040, 34.126324, 35.196198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959999, 34.335468, 35.063393>,  <44.771576, 34.460957, 34.983711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959999, 34.335468, 35.063393>,  <45.274040, 34.126324, 35.196198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959999, 34.335468, 35.063393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471419, 0.852138, 0.227211,
		0.401717, 0.021869, -0.915503,
		-0.785104, 0.522860, -0.332008,
		44.724468, 34.492325, 34.963791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320530, 34.598026, 34.510666>,  <45.274040, 34.126324, 35.196198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320530, 34.598026, 34.510666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133789, 34.709904, 34.846241>,  <45.021744, 34.777031, 35.047588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133789, 34.709904, 34.846241>,  <45.320530, 34.598026, 34.510666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133789, 34.709904, 34.846241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691460, 0.706856, 0.149123,
		-0.551302, 0.649712, -0.523393,
		-0.466851, 0.279694, 0.838941,
		44.993732, 34.793812, 35.097923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182087, 34.618134, 34.410526>,  <45.320530, 34.598026, 34.510666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182087, 34.618134, 34.410526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494919, 34.820831, 34.265438>,  <46.682617, 34.942451, 34.178387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494919, 34.820831, 34.265438>,  <46.182087, 34.618134, 34.410526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494919, 34.820831, 34.265438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399685, 0.038689, 0.915836,
		0.478127, -0.861228, -0.172280,
		0.782079, 0.506743, -0.362718,
		46.729542, 34.972855, 34.156624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740749, 34.506237, 34.784035>,  <46.182087, 34.618134, 34.410526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740749, 34.506237, 34.784035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878670, 34.825161, 34.585876>,  <46.961422, 35.016514, 34.466980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878670, 34.825161, 34.585876>,  <46.740749, 34.506237, 34.784035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878670, 34.825161, 34.585876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689884, 0.142637, 0.709728,
		0.636533, -0.586478, -0.500868,
		0.344798, 0.797307, -0.495395,
		46.982109, 35.064354, 34.437260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417324, 34.325790, 34.769852>,  <46.740749, 34.506237, 34.784035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417324, 34.325790, 34.769852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365871, 34.722057, 34.751812>,  <47.334999, 34.959816, 34.740990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365871, 34.722057, 34.751812>,  <47.417324, 34.325790, 34.769852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365871, 34.722057, 34.751812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596105, 0.113583, 0.794832,
		0.792536, 0.075353, -0.605151,
		-0.128627, 0.990667, -0.045100,
		47.327282, 35.019257, 34.738281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.117359, 34.640800, 34.871967>,  <47.417324, 34.325790, 34.769852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.117359, 34.640800, 34.871967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829014, 34.893555, 34.985859>,  <47.656006, 35.045208, 35.054195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829014, 34.893555, 34.985859>,  <48.117359, 34.640800, 34.871967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829014, 34.893555, 34.985859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604304, 0.371882, 0.704642,
		0.339367, 0.680017, -0.649928,
		-0.720865, 0.631887, 0.284733,
		47.612755, 35.083122, 35.071278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.426563, 41.499649, 41.767082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.070194, 41.670254, 41.704670>,  <33.856373, 41.772617, 41.667221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.070194, 41.670254, 41.704670>,  <34.426563, 41.499649, 41.767082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070194, 41.670254, 41.704670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042180, -0.419788, -0.906641,
		-0.452199, -0.801163, 0.391988,
		-0.890919, 0.426517, -0.156035,
		33.802917, 41.798206, 41.657860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934372, 40.969677, 41.668674>,  <34.426563, 41.499649, 41.767082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934372, 40.969677, 41.668674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790138, 41.306778, 41.508801>,  <33.703598, 41.509041, 41.412876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790138, 41.306778, 41.508801>,  <33.934372, 40.969677, 41.668674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790138, 41.306778, 41.508801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137934, -0.471977, -0.870754,
		-0.922472, -0.258848, 0.286430,
		-0.360581, 0.842755, -0.399682,
		33.681965, 41.559605, 41.388897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310513, 40.772945, 41.251339>,  <33.934372, 40.969677, 41.668674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310513, 40.772945, 41.251339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389435, 41.136433, 41.104206>,  <33.436787, 41.354527, 41.015926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389435, 41.136433, 41.104206>,  <33.310513, 40.772945, 41.251339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389435, 41.136433, 41.104206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184572, -0.334060, -0.924304,
		-0.962811, 0.250258, 0.101813,
		0.197303, 0.908721, -0.367828,
		33.448627, 41.409050, 40.993858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715263, 41.021408, 40.901165>,  <33.310513, 40.772945, 41.251339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715263, 41.021408, 40.901165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.040440, 41.193829, 40.744537>,  <33.235546, 41.297279, 40.650562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.040440, 41.193829, 40.744537>,  <32.715263, 41.021408, 40.901165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040440, 41.193829, 40.744537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250234, -0.348591, -0.903254,
		-0.525841, 0.832276, -0.175521,
		0.812942, 0.431047, -0.391567,
		33.284321, 41.323143, 40.627068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513809, 41.435780, 40.301937>,  <32.715263, 41.021408, 40.901165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513809, 41.435780, 40.301937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903942, 41.380272, 40.233265>,  <33.138020, 41.346966, 40.192062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903942, 41.380272, 40.233265>,  <32.513809, 41.435780, 40.301937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903942, 41.380272, 40.233265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214938, -0.419582, -0.881903,
		0.050349, 0.897047, -0.439058,
		0.975329, -0.138774, -0.171684,
		33.196541, 41.338638, 40.181759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661068, 41.700565, 39.705353>,  <32.513809, 41.435780, 40.301937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661068, 41.700565, 39.705353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.953197, 41.434814, 39.768879>,  <33.128475, 41.275364, 39.806995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.953197, 41.434814, 39.768879>,  <32.661068, 41.700565, 39.705353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953197, 41.434814, 39.768879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282015, -0.505004, -0.815744,
		0.622168, 0.550970, -0.556182,
		0.730325, -0.664382, 0.158815,
		33.172295, 41.235500, 39.816525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919094, 41.587685, 39.107643>,  <32.661068, 41.700565, 39.705353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919094, 41.587685, 39.107643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.109825, 41.287281, 39.290340>,  <33.224266, 41.107037, 39.399960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.109825, 41.287281, 39.290340>,  <32.919094, 41.587685, 39.107643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109825, 41.287281, 39.290340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034627, -0.535261, -0.843977,
		0.878313, 0.386619, -0.281234,
		0.476831, -0.751014, 0.456739,
		33.252876, 41.061977, 39.427361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300400, 41.367130, 38.641064>,  <32.919094, 41.587685, 39.107643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300400, 41.367130, 38.641064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.351707, 41.066696, 38.900112>,  <33.382492, 40.886436, 39.055542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.351707, 41.066696, 38.900112>,  <33.300400, 41.367130, 38.641064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351707, 41.066696, 38.900112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165660, -0.627618, -0.760692,
		0.977805, 0.204862, 0.043918,
		0.128273, -0.751084, 0.647626,
		33.390190, 40.841370, 39.094398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731380, 40.921532, 38.325085>,  <33.300400, 41.367130, 38.641064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731380, 40.921532, 38.325085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562561, 40.673683, 38.589794>,  <33.461269, 40.524975, 38.748619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562561, 40.673683, 38.589794>,  <33.731380, 40.921532, 38.325085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562561, 40.673683, 38.589794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050578, -0.744926, -0.665228,
		0.905163, -0.247285, 0.345733,
		-0.422046, -0.619626, 0.661772,
		33.435947, 40.487797, 38.788326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173840, 40.360035, 38.473156>,  <33.731380, 40.921532, 38.325085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173840, 40.360035, 38.473156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804756, 40.225056, 38.547707>,  <33.583305, 40.144070, 38.592438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804756, 40.225056, 38.547707>,  <34.173840, 40.360035, 38.473156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804756, 40.225056, 38.547707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118638, -0.708579, -0.695587,
		0.366786, -0.619713, 0.693847,
		-0.922710, -0.337448, 0.186375,
		33.527943, 40.123821, 38.603619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318676, 39.706703, 38.474472>,  <34.173840, 40.360035, 38.473156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318676, 39.706703, 38.474472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.933525, 39.777313, 38.392784>,  <33.702435, 39.819679, 38.343773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.933525, 39.777313, 38.392784>,  <34.318676, 39.706703, 38.474472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933525, 39.777313, 38.392784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009208, -0.734621, -0.678415,
		-0.269778, -0.655112, 0.705725,
		-0.962878, 0.176523, -0.204217,
		33.644661, 39.830269, 38.331520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043270, 39.105675, 38.450096>,  <34.318676, 39.706703, 38.474472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043270, 39.105675, 38.450096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762108, 39.323059, 38.266541>,  <33.593410, 39.453487, 38.156406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762108, 39.323059, 38.266541>,  <34.043270, 39.105675, 38.450096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762108, 39.323059, 38.266541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061581, -0.689230, -0.721921,
		-0.708618, -0.479179, 0.517926,
		-0.702900, 0.543461, -0.458892,
		33.551235, 39.486095, 38.128876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559467, 38.642982, 38.163864>,  <34.043270, 39.105675, 38.450096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559467, 38.642982, 38.163864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.484047, 38.970539, 37.947029>,  <33.438797, 39.167072, 37.816929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.484047, 38.970539, 37.947029>,  <33.559467, 38.642982, 38.163864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484047, 38.970539, 37.947029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116491, -0.566741, -0.815619,
		-0.975131, -0.090634, 0.202251,
		-0.188547, 0.818896, -0.542089,
		33.427483, 39.216209, 37.784401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194622, 38.361645, 37.694775>,  <33.559467, 38.642982, 38.163864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194622, 38.361645, 37.694775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.267509, 38.710381, 37.512917>,  <33.311241, 38.919621, 37.403801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.267509, 38.710381, 37.512917>,  <33.194622, 38.361645, 37.694775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267509, 38.710381, 37.512917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153589, -0.431469, -0.888957,
		-0.971188, 0.231812, 0.055283,
		0.182218, 0.871836, -0.454641,
		33.322174, 38.971931, 37.376526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737438, 38.376801, 37.188168>,  <33.194622, 38.361645, 37.694775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737438, 38.376801, 37.188168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007660, 38.648399, 37.073219>,  <33.169792, 38.811359, 37.004250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007660, 38.648399, 37.073219>,  <32.737438, 38.376801, 37.188168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007660, 38.648399, 37.073219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132731, -0.271395, -0.953272,
		-0.725263, 0.682132, -0.093218,
		0.675556, 0.679000, -0.287373,
		33.210327, 38.852100, 36.987007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454746, 38.486668, 36.585346>,  <32.737438, 38.376801, 37.188168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454746, 38.486668, 36.585346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835110, 38.610222, 36.592907>,  <33.063328, 38.684353, 36.597443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835110, 38.610222, 36.592907>,  <32.454746, 38.486668, 36.585346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835110, 38.610222, 36.592907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175242, -0.487148, -0.855557,
		-0.255060, 0.816871, -0.517364,
		0.950913, 0.308882, 0.018899,
		33.120384, 38.702885, 36.598576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509041, 38.553890, 35.993645>,  <32.454746, 38.486668, 36.585346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509041, 38.553890, 35.993645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.889263, 38.546707, 36.117661>,  <33.117397, 38.542397, 36.192070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.889263, 38.546707, 36.117661>,  <32.509041, 38.553890, 35.993645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889263, 38.546707, 36.117661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254894, -0.525193, -0.811912,
		0.177408, 0.850793, -0.494648,
		0.950556, -0.017957, 0.310035,
		33.174431, 38.541321, 36.210670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885826, 38.669151, 35.442028>,  <32.509041, 38.553890, 35.993645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885826, 38.669151, 35.442028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.138794, 38.467350, 35.677151>,  <33.290573, 38.346268, 35.818226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.138794, 38.467350, 35.677151>,  <32.885826, 38.669151, 35.442028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138794, 38.467350, 35.677151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242809, -0.591479, -0.768893,
		0.735587, 0.628989, -0.251565,
		0.632420, -0.504505, 0.587809,
		33.328522, 38.315998, 35.853493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419022, 38.650017, 35.051327>,  <32.885826, 38.669151, 35.442028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419022, 38.650017, 35.051327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.518909, 38.380276, 35.329285>,  <33.578842, 38.218430, 35.496059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.518909, 38.380276, 35.329285>,  <33.419022, 38.650017, 35.051327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518909, 38.380276, 35.329285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513672, -0.516081, -0.685421,
		0.820842, 0.528113, 0.217523,
		0.249720, -0.674357, 0.694897,
		33.593826, 38.177967, 35.537754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168789, 38.558533, 35.134823>,  <33.419022, 38.650017, 35.051327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168789, 38.558533, 35.134823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991589, 38.218143, 35.247677>,  <33.885269, 38.013912, 35.315392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991589, 38.218143, 35.247677>,  <34.168789, 38.558533, 35.134823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991589, 38.218143, 35.247677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397238, -0.468437, -0.789157,
		0.803714, -0.237518, 0.545554,
		-0.442997, -0.850971, 0.282138,
		33.858688, 37.962852, 35.332317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659336, 38.021698, 35.075230>,  <34.168789, 38.558533, 35.134823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659336, 38.021698, 35.075230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301949, 37.842224, 35.067299>,  <34.087517, 37.734539, 35.062542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301949, 37.842224, 35.067299>,  <34.659336, 38.021698, 35.075230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301949, 37.842224, 35.067299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252321, -0.464953, -0.848618,
		0.371539, -0.763220, 0.528634,
		-0.893473, -0.448680, -0.019828,
		34.033905, 37.707619, 35.061352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813564, 37.322784, 35.162453>,  <34.659336, 38.021698, 35.075230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813564, 37.322784, 35.162453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463673, 37.388077, 34.979939>,  <34.253738, 37.427250, 34.870430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463673, 37.388077, 34.979939>,  <34.813564, 37.322784, 35.162453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463673, 37.388077, 34.979939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338054, -0.469098, -0.815884,
		-0.347219, -0.867931, 0.355156,
		-0.874733, 0.163228, -0.456287,
		34.201252, 37.437046, 34.843052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354366, 37.197338, 34.692532>,  <34.813564, 37.322784, 35.162453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354366, 37.197338, 34.692532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753960, 37.207157, 34.677410>,  <35.993717, 37.213051, 34.668335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753960, 37.207157, 34.677410>,  <35.354366, 37.197338, 34.692532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753960, 37.207157, 34.677410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007293, 0.739631, 0.672973,
		0.044485, -0.672564, 0.738701,
		0.998983, 0.024550, -0.037807,
		36.053654, 37.214523, 34.666069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615967, 37.012886, 35.332561>,  <35.354366, 37.197338, 34.692532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615967, 37.012886, 35.332561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896454, 37.223408, 35.140186>,  <36.064747, 37.349720, 35.024761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896454, 37.223408, 35.140186>,  <35.615967, 37.012886, 35.332561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896454, 37.223408, 35.140186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122601, 0.575512, 0.808551,
		0.702329, -0.625932, 0.339033,
		0.701215, 0.526303, -0.480938,
		36.106819, 37.381298, 34.995903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205044, 36.934830, 35.754410>,  <35.615967, 37.012886, 35.332561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205044, 36.934830, 35.754410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247410, 37.266373, 35.534672>,  <36.272827, 37.465298, 35.402828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247410, 37.266373, 35.534672>,  <36.205044, 36.934830, 35.754410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247410, 37.266373, 35.534672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095917, 0.541359, 0.835303,
		0.989739, -0.141159, -0.022166,
		0.105911, 0.828858, -0.549343,
		36.279182, 37.515030, 35.369869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869091, 37.225750, 35.901318>,  <36.205044, 36.934830, 35.754410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869091, 37.225750, 35.901318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618298, 37.505997, 35.765064>,  <36.467823, 37.674145, 35.683311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618298, 37.505997, 35.765064>,  <36.869091, 37.225750, 35.901318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618298, 37.505997, 35.765064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260853, 0.600814, 0.755631,
		0.734063, 0.384913, -0.559458,
		-0.626982, 0.700618, -0.340629,
		36.430202, 37.716183, 35.662876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212620, 37.798042, 36.111336>,  <36.869091, 37.225750, 35.901318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212620, 37.798042, 36.111336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863850, 37.949665, 35.987354>,  <36.654587, 38.040638, 35.912968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863850, 37.949665, 35.987354>,  <37.212620, 37.798042, 36.111336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863850, 37.949665, 35.987354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105038, 0.763071, 0.637723,
		0.478247, 0.523487, -0.705153,
		-0.871921, 0.379057, -0.309950,
		36.602272, 38.063381, 35.894371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359657, 38.418148, 36.254341>,  <37.212620, 37.798042, 36.111336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359657, 38.418148, 36.254341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962303, 38.413239, 36.208664>,  <36.723892, 38.410294, 36.181259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962303, 38.413239, 36.208664>,  <37.359657, 38.418148, 36.254341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962303, 38.413239, 36.208664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092222, 0.677824, 0.729417,
		0.068446, 0.735121, -0.674471,
		-0.993383, -0.012275, -0.114188,
		36.664288, 38.409557, 36.174408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207077, 39.114567, 36.278690>,  <37.359657, 38.418148, 36.254341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207077, 39.114567, 36.278690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891090, 38.888515, 36.373837>,  <36.701500, 38.752884, 36.430923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891090, 38.888515, 36.373837>,  <37.207077, 39.114567, 36.278690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891090, 38.888515, 36.373837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268659, 0.667747, 0.694217,
		-0.551160, 0.484502, -0.679324,
		-0.789966, -0.565131, 0.237869,
		36.654102, 38.718975, 36.445198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816189, 39.649399, 36.728912>,  <37.207077, 39.114567, 36.278690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816189, 39.649399, 36.728912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654934, 39.290596, 36.801418>,  <36.558182, 39.075314, 36.844921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654934, 39.290596, 36.801418>,  <36.816189, 39.649399, 36.728912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654934, 39.290596, 36.801418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105433, 0.242280, 0.964461,
		-0.909046, 0.369698, -0.192246,
		-0.403136, -0.897008, 0.181266,
		36.533993, 39.021492, 36.855797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199219, 39.766994, 37.050137>,  <36.816189, 39.649399, 36.728912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199219, 39.766994, 37.050137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325722, 39.407482, 37.171574>,  <36.401623, 39.191772, 37.244438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325722, 39.407482, 37.171574>,  <36.199219, 39.766994, 37.050137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325722, 39.407482, 37.171574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150435, 0.268461, 0.951472,
		-0.936671, -0.346580, -0.050307,
		0.316255, -0.898783, 0.303597,
		36.420597, 39.137848, 37.262653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752766, 39.580898, 37.442944>,  <36.199219, 39.766994, 37.050137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752766, 39.580898, 37.442944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055004, 39.349247, 37.565372>,  <36.236347, 39.210255, 37.638832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055004, 39.349247, 37.565372>,  <35.752766, 39.580898, 37.442944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055004, 39.349247, 37.565372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209573, 0.228971, 0.950606,
		-0.620607, -0.782420, 0.051640,
		0.755597, -0.579130, 0.306075,
		36.281685, 39.175507, 37.657196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480915, 39.281689, 37.981548>,  <35.752766, 39.580898, 37.442944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480915, 39.281689, 37.981548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872475, 39.221916, 38.037296>,  <36.107410, 39.186054, 38.070744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872475, 39.221916, 38.037296>,  <35.480915, 39.281689, 37.981548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872475, 39.221916, 38.037296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096300, 0.264173, 0.959656,
		-0.180217, -0.952830, 0.244209,
		0.978902, -0.149429, 0.139366,
		36.166145, 39.177086, 38.079105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489887, 38.859543, 38.554237>,  <35.480915, 39.281689, 37.981548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489887, 38.859543, 38.554237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843174, 39.046314, 38.536808>,  <36.055145, 39.158379, 38.526352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843174, 39.046314, 38.536808>,  <35.489887, 38.859543, 38.554237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843174, 39.046314, 38.536808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060115, 0.204877, 0.976940,
		0.465092, -0.860232, 0.209021,
		0.883219, 0.466932, -0.043574,
		36.108139, 39.186394, 38.523735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770672, 38.652245, 39.166340>,  <35.489887, 38.859543, 38.554237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770672, 38.652245, 39.166340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965092, 38.979473, 39.043365>,  <36.081745, 39.175808, 38.969582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965092, 38.979473, 39.043365>,  <35.770672, 38.652245, 39.166340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965092, 38.979473, 39.043365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045236, 0.327762, 0.943677,
		0.872757, -0.472585, 0.122304,
		0.486054, 0.818068, -0.307434,
		36.110909, 39.224895, 38.951134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372845, 38.672676, 39.503403>,  <35.770672, 38.652245, 39.166340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372845, 38.672676, 39.503403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296257, 39.051758, 39.401264>,  <36.250305, 39.279205, 39.339981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296257, 39.051758, 39.401264>,  <36.372845, 38.672676, 39.503403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296257, 39.051758, 39.401264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126379, 0.281802, 0.951113,
		0.973329, 0.149835, -0.173725,
		-0.191466, 0.947701, -0.255350,
		36.238819, 39.336067, 39.324657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899586, 39.089703, 39.763210>,  <36.372845, 38.672676, 39.503403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899586, 39.089703, 39.763210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585514, 39.332066, 39.712044>,  <36.397072, 39.477482, 39.681343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585514, 39.332066, 39.712044>,  <36.899586, 39.089703, 39.763210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585514, 39.332066, 39.712044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094427, 0.321297, 0.942259,
		0.612022, 0.727766, -0.309491,
		-0.785183, 0.605908, -0.127920,
		36.349960, 39.513840, 39.673668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175346, 39.699783, 40.122868>,  <36.899586, 39.089703, 39.763210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175346, 39.699783, 40.122868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779129, 39.748035, 40.096737>,  <36.541397, 39.776985, 40.081059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779129, 39.748035, 40.096737>,  <37.175346, 39.699783, 40.122868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779129, 39.748035, 40.096737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048233, 0.139572, 0.989036,
		0.128426, 0.982836, -0.132434,
		-0.990545, 0.120630, -0.065330,
		36.481964, 39.784225, 40.077137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984386, 40.262276, 40.681213>,  <37.175346, 39.699783, 40.122868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984386, 40.262276, 40.681213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620071, 40.131081, 40.580910>,  <36.401482, 40.052364, 40.520725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620071, 40.131081, 40.580910>,  <36.984386, 40.262276, 40.681213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620071, 40.131081, 40.580910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321919, 0.183863, 0.928743,
		-0.258514, 0.926615, -0.273047,
		-0.910790, -0.327992, -0.250764,
		36.346836, 40.032684, 40.505680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617027, 40.761967, 40.823959>,  <36.984386, 40.262276, 40.681213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617027, 40.761967, 40.823959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364037, 40.452160, 40.827923>,  <36.212242, 40.266277, 40.830299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364037, 40.452160, 40.827923>,  <36.617027, 40.761967, 40.823959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364037, 40.452160, 40.827923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404037, 0.340797, 0.848888,
		-0.660855, 0.532897, -0.528480,
		-0.632474, -0.774518, 0.009907,
		36.174294, 40.219803, 40.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.750584, 41.070988, 40.783791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783962, 40.708900, 40.950462>,  <35.803989, 40.491650, 41.050465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783962, 40.708900, 40.950462>,  <35.750584, 41.070988, 40.783791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783962, 40.708900, 40.950462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532197, 0.313030, 0.786625,
		-0.842498, -0.287395, -0.455633,
		0.083446, -0.905216, 0.416678,
		35.808994, 40.437336, 41.075466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093273, 40.918751, 41.021935>,  <35.750584, 41.070988, 40.783791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093273, 40.918751, 41.021935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338547, 40.675941, 41.224129>,  <35.485710, 40.530254, 41.345448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338547, 40.675941, 41.224129>,  <35.093273, 40.918751, 41.021935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338547, 40.675941, 41.224129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433248, 0.276644, 0.857767,
		-0.660528, -0.744975, -0.093358,
		0.613188, -0.607026, 0.505490,
		35.522503, 40.493835, 41.375774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661819, 40.370922, 41.387730>,  <35.093273, 40.918751, 41.021935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661819, 40.370922, 41.387730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000427, 40.432468, 41.591583>,  <35.203590, 40.469395, 41.713898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000427, 40.432468, 41.591583>,  <34.661819, 40.370922, 41.387730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000427, 40.432468, 41.591583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528156, 0.122694, 0.840236,
		0.066745, -0.980446, 0.185123,
		0.846520, 0.153855, 0.509639,
		35.254383, 40.478626, 41.744476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415951, 40.222614, 42.093395>,  <34.661819, 40.370922, 41.387730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415951, 40.222614, 42.093395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.769917, 40.401833, 42.144283>,  <34.982296, 40.509361, 42.174816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.769917, 40.401833, 42.144283>,  <34.415951, 40.222614, 42.093395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769917, 40.401833, 42.144283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256649, 0.241143, 0.935939,
		0.388664, -0.860875, 0.328381,
		0.884914, 0.448044, 0.127219,
		35.035389, 40.536243, 42.182449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602547, 40.059029, 42.865982>,  <34.415951, 40.222614, 42.093395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602547, 40.059029, 42.865982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859516, 40.351616, 42.774544>,  <35.013699, 40.527168, 42.719681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859516, 40.351616, 42.774544>,  <34.602547, 40.059029, 42.865982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859516, 40.351616, 42.774544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107192, 0.381127, 0.918288,
		0.758820, -0.565422, 0.323250,
		0.642419, 0.731465, -0.228598,
		35.052242, 40.571056, 42.705963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120811, 40.089607, 43.398087>,  <34.602547, 40.059029, 42.865982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120811, 40.089607, 43.398087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152851, 40.454849, 43.238178>,  <35.172073, 40.673996, 43.142235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152851, 40.454849, 43.238178>,  <35.120811, 40.089607, 43.398087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152851, 40.454849, 43.238178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146676, 0.385897, 0.910807,
		0.985936, -0.131588, -0.103023,
		0.080096, 0.913109, -0.399771,
		35.176880, 40.728783, 43.118248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535458, 40.329472, 43.866375>,  <35.120811, 40.089607, 43.398087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535458, 40.329472, 43.866375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422375, 40.660412, 43.672230>,  <35.354527, 40.858974, 43.555744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422375, 40.660412, 43.672230>,  <35.535458, 40.329472, 43.866375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422375, 40.660412, 43.672230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206934, 0.546693, 0.811360,
		0.936620, 0.128937, -0.325759,
		-0.282705, 0.827346, -0.485362,
		35.337563, 40.908615, 43.526623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095474, 40.869778, 43.858643>,  <35.535458, 40.329472, 43.866375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095474, 40.869778, 43.858643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740421, 41.050472, 43.822765>,  <35.527390, 41.158890, 43.801239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740421, 41.050472, 43.822765>,  <36.095474, 40.869778, 43.858643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740421, 41.050472, 43.822765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235019, 0.611773, 0.755314,
		0.396076, 0.649360, -0.649196,
		-0.887632, 0.451735, -0.089697,
		35.474133, 41.185993, 43.795856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244068, 41.583519, 43.880562>,  <36.095474, 40.869778, 43.858643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244068, 41.583519, 43.880562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854904, 41.545177, 43.964706>,  <35.621407, 41.522171, 44.015194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854904, 41.545177, 43.964706>,  <36.244068, 41.583519, 43.880562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854904, 41.545177, 43.964706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115144, 0.588117, 0.800537,
		-0.200450, 0.803075, -0.561150,
		-0.972914, -0.095855, 0.210358,
		35.563030, 41.516422, 44.027813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028927, 42.173225, 43.946972>,  <36.244068, 41.583519, 43.880562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028927, 42.173225, 43.946972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745491, 41.976547, 44.149410>,  <35.575428, 41.858540, 44.270874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745491, 41.976547, 44.149410>,  <36.028927, 42.173225, 43.946972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745491, 41.976547, 44.149410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045309, 0.684049, 0.728027,
		-0.704161, 0.538805, -0.462434,
		-0.708593, -0.491696, 0.506094,
		35.532913, 41.829037, 44.301239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578438, 42.611668, 44.148571>,  <36.028927, 42.173225, 43.946972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578438, 42.611668, 44.148571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484547, 42.308720, 44.392303>,  <35.428211, 42.126949, 44.538544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484547, 42.308720, 44.392303>,  <35.578438, 42.611668, 44.148571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484547, 42.308720, 44.392303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276674, 0.548865, 0.788795,
		-0.931854, 0.353743, 0.080709,
		-0.234732, -0.757372, 0.609334,
		35.414127, 42.081509, 44.575104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233257, 42.888031, 44.647797>,  <35.578438, 42.611668, 44.148571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233257, 42.888031, 44.647797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304310, 42.540329, 44.832336>,  <35.346939, 42.331707, 44.943058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304310, 42.540329, 44.832336>,  <35.233257, 42.888031, 44.647797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304310, 42.540329, 44.832336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028630, 0.473168, 0.880507,
		-0.983681, -0.143196, 0.108936,
		0.177630, -0.869257, 0.461346,
		35.357597, 42.279552, 44.970741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689739, 42.853905, 45.250851>,  <35.233257, 42.888031, 44.647797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689739, 42.853905, 45.250851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000656, 42.620991, 45.346146>,  <35.187206, 42.481243, 45.403320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000656, 42.620991, 45.346146>,  <34.689739, 42.853905, 45.250851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000656, 42.620991, 45.346146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024916, 0.349880, 0.936463,
		-0.628645, -0.733842, 0.257451,
		0.777293, -0.582288, 0.238234,
		35.233845, 42.446304, 45.417618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510269, 42.312149, 45.803112>,  <34.689739, 42.853905, 45.250851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510269, 42.312149, 45.803112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903591, 42.384941, 45.803364>,  <35.139584, 42.428616, 45.803516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903591, 42.384941, 45.803364>,  <34.510269, 42.312149, 45.803112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903591, 42.384941, 45.803364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045293, 0.241363, 0.969378,
		0.176254, -0.953220, 0.245575,
		0.983302, 0.181979, 0.000633,
		35.198582, 42.439537, 45.803555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723328, 42.008160, 46.377285>,  <34.510269, 42.312149, 45.803112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723328, 42.008160, 46.377285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016373, 42.257927, 46.268925>,  <35.192200, 42.407787, 46.203911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016373, 42.257927, 46.268925>,  <34.723328, 42.008160, 46.377285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016373, 42.257927, 46.268925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104646, 0.289940, 0.951307,
		0.672554, -0.725287, 0.147071,
		0.732612, 0.624415, -0.270899,
		35.236156, 42.445251, 46.187656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225006, 41.823418, 46.802422>,  <34.723328, 42.008160, 46.377285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225006, 41.823418, 46.802422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303062, 42.194405, 46.674843>,  <35.349895, 42.416996, 46.598297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303062, 42.194405, 46.674843>,  <35.225006, 41.823418, 46.802422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303062, 42.194405, 46.674843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054295, 0.314484, 0.947709,
		0.979272, -0.202250, 0.011011,
		0.195137, 0.927467, -0.318946,
		35.361603, 42.472645, 46.579159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710880, 42.092415, 47.268459>,  <35.225006, 41.823418, 46.802422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710880, 42.092415, 47.268459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564751, 42.428135, 47.107407>,  <35.477074, 42.629566, 47.010773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564751, 42.428135, 47.107407>,  <35.710880, 42.092415, 47.268459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564751, 42.428135, 47.107407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016380, 0.438258, 0.898700,
		0.930737, 0.321720, -0.173853,
		-0.365323, 0.839301, -0.402633,
		35.455154, 42.679924, 46.986618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227585, 42.657852, 47.432594>,  <35.710880, 42.092415, 47.268459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227585, 42.657852, 47.432594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869926, 42.822681, 47.362503>,  <35.655331, 42.921577, 47.320446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869926, 42.822681, 47.362503>,  <36.227585, 42.657852, 47.432594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869926, 42.822681, 47.362503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123959, 0.603826, 0.787419,
		0.430280, 0.682344, -0.590987,
		-0.894144, 0.412069, -0.175232,
		35.601685, 42.946301, 47.309933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416187, 43.258900, 47.523453>,  <36.227585, 42.657852, 47.432594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416187, 43.258900, 47.523453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018513, 43.237709, 47.560951>,  <35.779907, 43.224995, 47.583450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018513, 43.237709, 47.560951>,  <36.416187, 43.258900, 47.523453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018513, 43.237709, 47.560951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042461, 0.607189, 0.793422,
		-0.098951, 0.792790, -0.601409,
		-0.994186, -0.052973, 0.093745,
		35.720257, 43.221817, 47.589073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120018, 43.979015, 47.460056>,  <36.416187, 43.258900, 47.523453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120018, 43.979015, 47.460056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846508, 43.748035, 47.638496>,  <35.682400, 43.609447, 47.745560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846508, 43.748035, 47.638496>,  <36.120018, 43.979015, 47.460056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846508, 43.748035, 47.638496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041697, 0.641274, 0.766178,
		-0.728496, 0.505296, -0.462568,
		-0.683779, -0.577445, 0.446097,
		35.641373, 43.574802, 47.772324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535198, 44.323231, 47.553349>,  <36.120018, 43.979015, 47.460056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535198, 44.323231, 47.553349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509117, 44.036896, 47.831436>,  <35.493469, 43.865097, 47.998287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509117, 44.036896, 47.831436>,  <35.535198, 44.323231, 47.553349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509117, 44.036896, 47.831436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004085, 0.696887, 0.717170,
		-0.997864, 0.043924, -0.048366,
		-0.065206, -0.715835, 0.695218,
		35.489555, 43.822144, 48.040001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006092, 44.435802, 47.946003>,  <35.535198, 44.323231, 47.553349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006092, 44.435802, 47.946003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238708, 44.234295, 48.201515>,  <35.378277, 44.113392, 48.354820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238708, 44.234295, 48.201515>,  <35.006092, 44.435802, 47.946003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238708, 44.234295, 48.201515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178122, 0.687301, 0.704194,
		-0.793781, -0.523295, 0.309959,
		0.581536, -0.503766, 0.638777,
		35.413170, 44.083164, 48.393147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818153, 44.552177, 48.675060>,  <35.006092, 44.435802, 47.946003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818153, 44.552177, 48.675060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196377, 44.429905, 48.719738>,  <35.423313, 44.356541, 48.746544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196377, 44.429905, 48.719738>,  <34.818153, 44.552177, 48.675060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196377, 44.429905, 48.719738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160412, 0.736374, 0.657284,
		-0.283167, -0.603584, 0.745321,
		0.945561, -0.305679, 0.111694,
		35.480045, 44.338200, 48.753246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124542, 44.863514, 48.852520>,  <34.818153, 44.552177, 48.675060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124542, 44.863514, 48.852520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772636, 44.946003, 49.023861>,  <33.561493, 44.995499, 49.126663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772636, 44.946003, 49.023861>,  <34.124542, 44.863514, 48.852520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772636, 44.946003, 49.023861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475112, -0.413160, -0.776896,
		0.016763, -0.887001, 0.461464,
		-0.879766, 0.206224, 0.428350,
		33.508705, 45.007870, 49.152367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801132, 44.230770, 48.972546>,  <34.124542, 44.863514, 48.852520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801132, 44.230770, 48.972546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533844, 44.526737, 48.941540>,  <33.373470, 44.704319, 48.922935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.533844, 44.526737, 48.941540>,  <33.801132, 44.230770, 48.972546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533844, 44.526737, 48.941540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328621, -0.387033, -0.861518,
		-0.667454, -0.550207, 0.501774,
		-0.668217, 0.739917, -0.077517,
		33.333378, 44.748711, 48.918285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159325, 43.950760, 48.914917>,  <33.801132, 44.230770, 48.972546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159325, 43.950760, 48.914917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113262, 44.322762, 48.775303>,  <33.085625, 44.545963, 48.691532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113262, 44.322762, 48.775303>,  <33.159325, 43.950760, 48.914917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113262, 44.322762, 48.775303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334755, -0.367158, -0.867833,
		-0.935242, 0.016904, 0.353606,
		-0.115160, 0.930005, -0.349040,
		33.078712, 44.601765, 48.670589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396523, 44.081417, 48.680626>,  <33.159325, 43.950760, 48.914917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396523, 44.081417, 48.680626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.655354, 44.328156, 48.501385>,  <32.810654, 44.476200, 48.393841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.655354, 44.328156, 48.501385>,  <32.396523, 44.081417, 48.680626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655354, 44.328156, 48.501385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293092, -0.341314, -0.893086,
		-0.703838, 0.709230, -0.040064,
		0.647078, 0.616845, -0.448099,
		32.849476, 44.513210, 48.366955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030865, 44.390530, 48.064610>,  <32.396523, 44.081417, 48.680626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030865, 44.390530, 48.064610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414455, 44.459869, 47.974884>,  <32.644608, 44.501472, 47.921047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414455, 44.459869, 47.974884>,  <32.030865, 44.390530, 48.064610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414455, 44.459869, 47.974884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132933, -0.423911, -0.895895,
		-0.250393, 0.888960, -0.383476,
		0.958975, 0.173349, -0.224316,
		32.702148, 44.511875, 47.907589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027283, 44.839249, 47.489708>,  <32.030865, 44.390530, 48.064610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027283, 44.839249, 47.489708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.381462, 44.653473, 47.496288>,  <32.593971, 44.542007, 47.500237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.381462, 44.653473, 47.496288>,  <32.027283, 44.839249, 47.489708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381462, 44.653473, 47.496288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097815, -0.220851, -0.970390,
		0.454322, 0.857624, -0.240982,
		0.885451, -0.464441, 0.016449,
		32.647099, 44.514141, 47.501225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472965, 45.179211, 46.913422>,  <32.027283, 44.839249, 47.489708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472965, 45.179211, 46.913422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622482, 44.812775, 46.971466>,  <32.712193, 44.592915, 47.006294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622482, 44.812775, 46.971466>,  <32.472965, 45.179211, 46.913422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622482, 44.812775, 46.971466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028924, -0.167888, -0.985381,
		0.927062, 0.364129, -0.089252,
		0.373790, -0.916091, 0.145111,
		32.734619, 44.537949, 47.014999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862633, 45.102230, 46.266453>,  <32.472965, 45.179211, 46.913422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862633, 45.102230, 46.266453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.897766, 44.751865, 46.456215>,  <32.918846, 44.541645, 46.570072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.897766, 44.751865, 46.456215>,  <32.862633, 45.102230, 46.266453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897766, 44.751865, 46.456215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195313, -0.451856, -0.870448,
		0.976800, 0.169109, 0.131390,
		0.087832, -0.875915, 0.474402,
		32.924114, 44.489090, 46.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455009, 44.774654, 46.092129>,  <32.862633, 45.102230, 46.266453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455009, 44.774654, 46.092129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231625, 44.471233, 46.226418>,  <33.097591, 44.289181, 46.306992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231625, 44.471233, 46.226418>,  <33.455009, 44.774654, 46.092129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231625, 44.471233, 46.226418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112483, -0.470224, -0.875350,
		0.821866, -0.451090, 0.347928,
		-0.558466, -0.758556, 0.335721,
		33.064083, 44.243668, 46.327133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910789, 44.131371, 46.128666>,  <33.455009, 44.774654, 46.092129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910789, 44.131371, 46.128666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521564, 44.040863, 46.110996>,  <33.288029, 43.986561, 46.100395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521564, 44.040863, 46.110996>,  <33.910789, 44.131371, 46.128666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521564, 44.040863, 46.110996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164300, -0.546231, -0.821363,
		0.161719, -0.806496, 0.568692,
		-0.973063, -0.226266, -0.044171,
		33.229645, 43.972984, 46.097744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995693, 43.541340, 45.948544>,  <33.910789, 44.131371, 46.128666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995693, 43.541340, 45.948544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627598, 43.645428, 45.831623>,  <33.406738, 43.707878, 45.761471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627598, 43.645428, 45.831623>,  <33.995693, 43.541340, 45.948544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627598, 43.645428, 45.831623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111847, -0.540880, -0.833630,
		-0.375025, -0.799835, 0.468637,
		-0.920243, 0.260216, -0.292302,
		33.351524, 43.723492, 45.743931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777264, 42.972343, 45.702305>,  <33.995693, 43.541340, 45.948544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777264, 42.972343, 45.702305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511059, 43.225677, 45.544327>,  <33.351337, 43.377678, 45.449539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511059, 43.225677, 45.544327>,  <33.777264, 42.972343, 45.702305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511059, 43.225677, 45.544327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125621, -0.426548, -0.895699,
		-0.735741, -0.645710, 0.204312,
		-0.665511, 0.633337, -0.394944,
		33.311405, 43.415680, 45.425842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193851, 42.615303, 45.359745>,  <33.777264, 42.972343, 45.702305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193851, 42.615303, 45.359745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237637, 42.974232, 45.188705>,  <33.263908, 43.189587, 45.086082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237637, 42.974232, 45.188705>,  <33.193851, 42.615303, 45.359745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237637, 42.974232, 45.188705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055428, -0.435022, -0.898712,
		-0.992445, 0.074671, -0.097353,
		0.109459, 0.897318, -0.427597,
		33.270473, 43.243427, 45.060425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804272, 42.556267, 44.869244>,  <33.193851, 42.615303, 45.359745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804272, 42.556267, 44.869244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995083, 42.880726, 44.733902>,  <33.109570, 43.075401, 44.652699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995083, 42.880726, 44.733902>,  <32.804272, 42.556267, 44.869244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995083, 42.880726, 44.733902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158153, -0.299471, -0.940906,
		-0.864540, 0.502352, -0.014572,
		0.477030, 0.811147, -0.338353,
		33.138191, 43.124069, 44.632397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426090, 42.725109, 44.223976>,  <32.804272, 42.556267, 44.869244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426090, 42.725109, 44.223976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.791031, 42.888844, 44.220837>,  <33.009995, 42.987083, 44.218952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.791031, 42.888844, 44.220837>,  <32.426090, 42.725109, 44.223976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791031, 42.888844, 44.220837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124474, -0.295588, -0.947172,
		-0.390035, 0.863174, -0.320631,
		0.912348, 0.409341, -0.007847,
		33.064735, 43.011646, 44.218483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418186, 43.238628, 43.617329>,  <32.426090, 42.725109, 44.223976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418186, 43.238628, 43.617329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785732, 43.117836, 43.718903>,  <33.006260, 43.045361, 43.779846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785732, 43.117836, 43.718903>,  <32.418186, 43.238628, 43.617329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785732, 43.117836, 43.718903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069887, -0.508854, -0.858012,
		0.388324, 0.806147, -0.446465,
		0.918869, -0.301984, 0.253939,
		33.061394, 43.027241, 43.795086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685284, 43.094738, 42.993298>,  <32.418186, 43.238628, 43.617329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685284, 43.094738, 42.993298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980610, 42.952538, 43.222561>,  <33.157806, 42.867218, 43.360119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980610, 42.952538, 43.222561>,  <32.685284, 43.094738, 42.993298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980610, 42.952538, 43.222561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360164, -0.510685, -0.780693,
		0.570242, 0.782828, -0.249007,
		0.738313, -0.355501, 0.573161,
		33.202103, 42.845886, 43.394508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310692, 43.440453, 42.804920>,  <32.685284, 43.094738, 42.993298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310692, 43.440453, 42.804920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367851, 43.073284, 42.952972>,  <33.402149, 42.852982, 43.041805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367851, 43.073284, 42.952972>,  <33.310692, 43.440453, 42.804920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367851, 43.073284, 42.952972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335940, -0.306783, -0.890522,
		0.930980, 0.251599, 0.264527,
		0.142902, -0.917923, 0.370131,
		33.410721, 42.797909, 43.064011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882313, 43.298481, 42.604496>,  <33.310692, 43.440453, 42.804920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882313, 43.298481, 42.604496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729210, 42.937607, 42.684052>,  <33.637348, 42.721081, 42.731785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729210, 42.937607, 42.684052>,  <33.882313, 43.298481, 42.604496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729210, 42.937607, 42.684052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319443, -0.331246, -0.887824,
		0.866866, -0.276284, 0.414984,
		-0.382753, -0.902188, 0.198889,
		33.614384, 42.666950, 42.743717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209049, 42.835964, 42.204456>,  <33.882313, 43.298481, 42.604496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209049, 42.835964, 42.204456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920372, 42.571987, 42.288017>,  <33.747166, 42.413601, 42.338154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920372, 42.571987, 42.288017>,  <34.209049, 42.835964, 42.204456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920372, 42.571987, 42.288017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151431, -0.444997, -0.882636,
		0.675446, -0.605358, 0.421086,
		-0.721693, -0.659939, 0.208901,
		33.703865, 42.374004, 42.350689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480927, 42.229687, 41.861130>,  <34.209049, 42.835964, 42.204456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480927, 42.229687, 41.861130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096920, 42.146019, 41.935558>,  <33.866516, 42.095818, 41.980217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096920, 42.146019, 41.935558>,  <34.480927, 42.229687, 41.861130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096920, 42.146019, 41.935558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033124, -0.575117, -0.817401,
		0.277989, -0.790879, 0.545191,
		-0.960013, -0.209170, 0.186073,
		33.808914, 42.083267, 41.991379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.960705, 28.218454, 32.712322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574879, 28.309551, 32.659027>,  <39.343384, 28.364210, 32.627048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574879, 28.309551, 32.659027>,  <39.960705, 28.218454, 32.712322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574879, 28.309551, 32.659027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233969, 0.971688, -0.032893,
		0.121978, -0.062901, -0.990538,
		-0.964562, 0.227743, -0.133241,
		39.285511, 28.377874, 32.619053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957684, 28.686346, 32.157860>,  <39.960705, 28.218454, 32.712322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957684, 28.686346, 32.157860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614029, 28.772934, 32.343342>,  <39.407837, 28.824886, 32.454632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614029, 28.772934, 32.343342>,  <39.957684, 28.686346, 32.157860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614029, 28.772934, 32.343342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190313, 0.976289, -0.103154,
		-0.475044, -0.000374, -0.879962,
		-0.859136, 0.216471, 0.463709,
		39.356289, 28.837875, 32.482456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773224, 29.388992, 31.899940>,  <39.957684, 28.686346, 32.157860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773224, 29.388992, 31.899940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548649, 29.337019, 32.226841>,  <39.413902, 29.305836, 32.422981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548649, 29.337019, 32.226841>,  <39.773224, 29.388992, 31.899940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548649, 29.337019, 32.226841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162778, 0.985642, 0.044878,
		-0.811350, -0.107834, -0.574529,
		-0.561441, -0.129933, 0.817253,
		39.380219, 29.298038, 32.472015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030598, 29.644093, 31.830334>,  <39.773224, 29.388992, 31.899940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030598, 29.644093, 31.830334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177574, 29.677990, 32.200806>,  <39.265759, 29.698328, 32.423088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177574, 29.677990, 32.200806>,  <39.030598, 29.644093, 31.830334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177574, 29.677990, 32.200806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157544, 0.987120, -0.027819,
		-0.916607, -0.135692, 0.376059,
		0.367440, 0.084745, 0.926178,
		39.287807, 29.703413, 32.478661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765850, 30.266315, 32.112812>,  <39.030598, 29.644093, 31.830334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765850, 30.266315, 32.112812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.031960, 30.185499, 32.400307>,  <39.191628, 30.137009, 32.572803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.031960, 30.185499, 32.400307>,  <38.765850, 30.266315, 32.112812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031960, 30.185499, 32.400307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019832, 0.957564, 0.287536,
		-0.746332, -0.205545, 0.633039,
		0.665278, -0.202042, 0.718738,
		39.231544, 30.124886, 32.615929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657303, 30.782034, 32.477150>,  <38.765850, 30.266315, 32.112812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657303, 30.782034, 32.477150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985928, 30.631674, 32.648605>,  <39.183102, 30.541458, 32.751480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985928, 30.631674, 32.648605>,  <38.657303, 30.782034, 32.477150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985928, 30.631674, 32.648605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146049, 0.865522, 0.479105,
		-0.551092, -0.331013, 0.765982,
		0.821564, -0.375902, 0.428638,
		39.232395, 30.518904, 32.777195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674988, 31.019323, 33.239750>,  <38.657303, 30.782034, 32.477150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674988, 31.019323, 33.239750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048618, 30.945780, 33.117310>,  <39.272797, 30.901653, 33.043846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048618, 30.945780, 33.117310>,  <38.674988, 31.019323, 33.239750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048618, 30.945780, 33.117310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316293, 0.823867, 0.470321,
		0.165712, -0.536133, 0.827708,
		0.934076, -0.183861, -0.306099,
		39.328842, 30.890621, 33.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018650, 31.005915, 33.804260>,  <38.674988, 31.019323, 33.239750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018650, 31.005915, 33.804260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303192, 31.087589, 33.535252>,  <39.473919, 31.136593, 33.373848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303192, 31.087589, 33.535252>,  <39.018650, 31.005915, 33.804260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303192, 31.087589, 33.535252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247140, 0.823093, 0.511311,
		0.657949, -0.529930, 0.535049,
		0.711355, 0.204185, -0.672520,
		39.516598, 31.148846, 33.333496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528790, 31.183668, 34.203743>,  <39.018650, 31.005915, 33.804260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528790, 31.183668, 34.203743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626415, 31.339006, 33.848301>,  <39.684990, 31.432209, 33.635036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626415, 31.339006, 33.848301>,  <39.528790, 31.183668, 34.203743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626415, 31.339006, 33.848301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233629, 0.865782, 0.442538,
		0.941197, -0.315611, 0.120575,
		0.244061, 0.388346, -0.888607,
		39.699635, 31.455509, 33.581718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194027, 31.488918, 34.294746>,  <39.528790, 31.183668, 34.203743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194027, 31.488918, 34.294746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062019, 31.651525, 33.953964>,  <39.982815, 31.749090, 33.749493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.062019, 31.651525, 33.953964>,  <40.194027, 31.488918, 34.294746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062019, 31.651525, 33.953964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472483, 0.852468, 0.223736,
		0.817219, -0.328698, -0.473403,
		-0.330020, 0.406516, -0.851957,
		39.963013, 31.773479, 33.698376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772541, 31.896553, 34.054153>,  <40.194027, 31.488918, 34.294746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772541, 31.896553, 34.054153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.448036, 32.037804, 33.867752>,  <40.253334, 32.122555, 33.755913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.448036, 32.037804, 33.867752>,  <40.772541, 31.896553, 34.054153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448036, 32.037804, 33.867752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373327, 0.926243, 0.051960,
		0.449979, -0.131818, -0.883257,
		-0.811262, 0.353125, -0.466001,
		40.204659, 32.143742, 33.727951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081886, 32.323349, 33.568123>,  <40.772541, 31.896553, 34.054153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081886, 32.323349, 33.568123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696213, 32.426331, 33.593651>,  <40.464809, 32.488117, 33.608967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696213, 32.426331, 33.593651>,  <41.081886, 32.323349, 33.568123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696213, 32.426331, 33.593651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256269, 0.966250, -0.026213,
		-0.068417, -0.008918, -0.997617,
		-0.964181, 0.257451, 0.063823,
		40.406960, 32.503567, 33.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953732, 32.843960, 33.015053>,  <41.081886, 32.323349, 33.568123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953732, 32.843960, 33.015053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697815, 32.886600, 33.319500>,  <40.544266, 32.912186, 33.502167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697815, 32.886600, 33.319500>,  <40.953732, 32.843960, 33.015053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697815, 32.886600, 33.319500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227006, 0.972360, 0.054631,
		-0.734257, 0.207730, -0.646309,
		-0.639793, 0.106603, 0.761118,
		40.505878, 32.918583, 33.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768173, 33.488434, 32.896103>,  <40.953732, 32.843960, 33.015053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768173, 33.488434, 32.896103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616085, 33.426273, 33.260799>,  <40.524830, 33.388977, 33.479618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.616085, 33.426273, 33.260799>,  <40.768173, 33.488434, 32.896103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616085, 33.426273, 33.260799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226195, 0.940224, 0.254589,
		-0.896808, 0.303033, -0.322345,
		-0.380225, -0.155404, 0.911745,
		40.502018, 33.379654, 33.534325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244019, 34.124821, 33.158634>,  <40.768173, 33.488434, 32.896103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244019, 34.124821, 33.158634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420162, 33.926407, 33.457973>,  <40.525848, 33.807358, 33.637577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420162, 33.926407, 33.457973>,  <40.244019, 34.124821, 33.158634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420162, 33.926407, 33.457973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512614, 0.823214, 0.244019,
		-0.737097, 0.276160, 0.616785,
		0.440358, -0.496039, 0.748352,
		40.552269, 33.777596, 33.682480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328548, 34.709236, 33.597725>,  <40.244019, 34.124821, 33.158634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328548, 34.709236, 33.597725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.539516, 34.407841, 33.754742>,  <40.666096, 34.227005, 33.848949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.539516, 34.407841, 33.754742>,  <40.328548, 34.709236, 33.597725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539516, 34.407841, 33.754742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519235, 0.651567, 0.553042,
		-0.672475, -0.087865, 0.734885,
		0.527420, -0.753486, 0.392540,
		40.697742, 34.181793, 33.872505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463211, 34.844021, 34.272053>,  <40.328548, 34.709236, 33.597725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463211, 34.844021, 34.272053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769783, 34.591080, 34.226940>,  <40.953724, 34.439316, 34.199871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769783, 34.591080, 34.226940>,  <40.463211, 34.844021, 34.272053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769783, 34.591080, 34.226940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607881, 0.657325, 0.445427,
		-0.207530, -0.409948, 0.888186,
		0.766428, -0.632351, -0.112785,
		40.999710, 34.401375, 34.193104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873894, 34.893848, 34.880596>,  <40.463211, 34.844021, 34.272053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873894, 34.893848, 34.880596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132687, 34.734879, 34.620300>,  <41.287964, 34.639496, 34.464123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132687, 34.734879, 34.620300>,  <40.873894, 34.893848, 34.880596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132687, 34.734879, 34.620300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742954, 0.520578, 0.420735,
		0.171553, -0.755681, 0.632073,
		0.646985, -0.397423, -0.650743,
		41.326782, 34.615650, 34.425079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410255, 34.666252, 35.298843>,  <40.873894, 34.893848, 34.880596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410255, 34.666252, 35.298843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546852, 34.687458, 34.923489>,  <41.628811, 34.700180, 34.698277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546852, 34.687458, 34.923489>,  <41.410255, 34.666252, 35.298843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546852, 34.687458, 34.923489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829483, 0.452497, 0.327420,
		0.441976, -0.890189, 0.110551,
		0.341490, 0.053011, -0.938389,
		41.649300, 34.703362, 34.641972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081924, 34.523994, 35.384476>,  <41.410255, 34.666252, 35.298843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081924, 34.523994, 35.384476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069981, 34.695011, 35.023075>,  <42.062813, 34.797619, 34.806232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069981, 34.695011, 35.023075>,  <42.081924, 34.523994, 35.384476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069981, 34.695011, 35.023075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850107, 0.486317, 0.202026,
		0.525763, -0.762042, -0.377976,
		-0.029864, 0.427538, -0.903504,
		42.061020, 34.823273, 34.752026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804226, 34.539799, 35.133495>,  <42.081924, 34.523994, 35.384476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804226, 34.539799, 35.133495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610428, 34.805294, 34.905560>,  <42.494148, 34.964592, 34.768799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610428, 34.805294, 34.905560>,  <42.804226, 34.539799, 35.133495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610428, 34.805294, 34.905560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770760, 0.631981, 0.080801,
		0.413759, -0.400063, -0.817773,
		-0.484492, 0.663739, -0.569841,
		42.465080, 35.004417, 34.734608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175835, 34.667286, 34.452045>,  <42.804226, 34.539799, 35.133495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175835, 34.667286, 34.452045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985641, 34.975132, 34.622509>,  <42.871525, 35.159840, 34.724789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985641, 34.975132, 34.622509>,  <43.175835, 34.667286, 34.452045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985641, 34.975132, 34.622509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873940, 0.468702, 0.128638,
		-0.100740, 0.433602, -0.895456,
		-0.475479, 0.769616, 0.426159,
		42.842999, 35.206017, 34.750355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803814, 34.948524, 34.097717>,  <43.175835, 34.667286, 34.452045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803814, 34.948524, 34.097717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.129642, 34.871803, 34.316692>,  <44.325138, 34.825771, 34.448078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.129642, 34.871803, 34.316692>,  <43.803814, 34.948524, 34.097717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129642, 34.871803, 34.316692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142267, -0.980985, -0.132019,
		0.562349, 0.029656, -0.826368,
		0.814570, -0.191806, 0.547436,
		44.374012, 34.814262, 34.480923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174534, 34.555275, 33.710163>,  <43.803814, 34.948524, 34.097717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174534, 34.555275, 33.710163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277958, 34.445656, 34.080685>,  <44.340012, 34.379883, 34.302998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277958, 34.445656, 34.080685>,  <44.174534, 34.555275, 33.710163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277958, 34.445656, 34.080685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214765, -0.951223, -0.221473,
		0.941820, -0.141675, -0.304801,
		0.258557, -0.274048, 0.926308,
		44.355526, 34.363441, 34.358578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758865, 34.053104, 33.698605>,  <44.174534, 34.555275, 33.710163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758865, 34.053104, 33.698605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600426, 33.947750, 34.050453>,  <44.505360, 33.884537, 34.261562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600426, 33.947750, 34.050453>,  <44.758865, 34.053104, 33.698605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600426, 33.947750, 34.050453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097027, -0.940608, -0.325335,
		0.913066, -0.214213, 0.347022,
		-0.396102, -0.263381, 0.879621,
		44.481594, 33.868736, 34.314339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104790, 33.439480, 33.889229>,  <44.758865, 34.053104, 33.698605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104790, 33.439480, 33.889229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.761024, 33.469219, 34.091568>,  <44.554764, 33.487064, 34.212971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.761024, 33.469219, 34.091568>,  <45.104790, 33.439480, 33.889229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761024, 33.469219, 34.091568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313812, -0.857793, -0.407078,
		0.403646, -0.508589, 0.760531,
		-0.859414, 0.074348, 0.505846,
		44.503201, 33.491524, 34.243320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813377, 32.906086, 33.853077>,  <45.104790, 33.439480, 33.889229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813377, 32.906086, 33.853077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505337, 33.064968, 34.052746>,  <44.320515, 33.160297, 34.172546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505337, 33.064968, 34.052746>,  <44.813377, 32.906086, 33.853077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505337, 33.064968, 34.052746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588558, -0.744229, -0.315789,
		0.246065, -0.536981, 0.806910,
		-0.770098, 0.397208, 0.499173,
		44.274307, 33.184132, 34.202499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550369, 32.398125, 34.375191>,  <44.813377, 32.906086, 33.853077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550369, 32.398125, 34.375191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268394, 32.658096, 34.261589>,  <44.099209, 32.814079, 34.193428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268394, 32.658096, 34.261589>,  <44.550369, 32.398125, 34.375191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268394, 32.658096, 34.261589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627548, -0.758130, -0.177265,
		-0.330525, 0.053268, 0.942293,
		-0.704937, 0.649925, -0.284009,
		44.056911, 32.853073, 34.176388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000088, 32.179901, 34.793365>,  <44.550369, 32.398125, 34.375191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000088, 32.179901, 34.793365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883945, 32.381660, 34.468090>,  <43.814259, 32.502716, 34.272926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883945, 32.381660, 34.468090>,  <44.000088, 32.179901, 34.793365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883945, 32.381660, 34.468090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654556, -0.724582, -0.215724,
		-0.698031, 0.469638, 0.540548,
		-0.290359, 0.504402, -0.813186,
		43.796837, 32.532982, 34.224136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213287, 31.952234, 34.709126>,  <44.000088, 32.179901, 34.793365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213287, 31.952234, 34.709126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306095, 32.114433, 34.355461>,  <43.361782, 32.211754, 34.143265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306095, 32.114433, 34.355461>,  <43.213287, 31.952234, 34.709126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306095, 32.114433, 34.355461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483738, -0.740492, -0.466551,
		-0.843898, 0.535952, 0.024343,
		0.232023, 0.405497, -0.884159,
		43.375702, 32.236084, 34.090214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607368, 31.966318, 34.362476>,  <43.213287, 31.952234, 34.709126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607368, 31.966318, 34.362476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.881165, 31.971167, 34.070908>,  <43.045441, 31.974075, 33.895966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.881165, 31.971167, 34.070908>,  <42.607368, 31.966318, 34.362476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881165, 31.971167, 34.070908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456272, -0.772700, -0.441305,
		-0.568587, 0.634655, -0.523375,
		0.684489, 0.012119, -0.728922,
		43.086510, 31.974802, 33.852230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233719, 31.871157, 33.824932>,  <42.607368, 31.966318, 34.362476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233719, 31.871157, 33.824932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.588039, 31.790014, 33.657982>,  <42.800632, 31.741329, 33.557812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.588039, 31.790014, 33.657982>,  <42.233719, 31.871157, 33.824932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588039, 31.790014, 33.657982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448066, -0.607986, -0.655431,
		-0.120802, 0.767595, -0.629448,
		0.885801, -0.202857, -0.417379,
		42.853779, 31.729156, 33.532768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191250, 31.826900, 33.041306>,  <42.233719, 31.871157, 33.824932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191250, 31.826900, 33.041306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498608, 31.600378, 33.160545>,  <42.683022, 31.464464, 33.232090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498608, 31.600378, 33.160545>,  <42.191250, 31.826900, 33.041306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498608, 31.600378, 33.160545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302755, -0.732043, -0.610289,
		0.563830, 0.378695, -0.733953,
		0.768398, -0.566306, 0.298096,
		42.729126, 31.430487, 33.249973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337006, 31.431276, 32.430798>,  <42.191250, 31.826900, 33.041306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337006, 31.431276, 32.430798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581017, 31.252556, 32.692554>,  <42.727425, 31.145323, 32.849609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581017, 31.252556, 32.692554>,  <42.337006, 31.431276, 32.430798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581017, 31.252556, 32.692554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003421, -0.827338, -0.561695,
		0.792370, 0.340413, -0.506230,
		0.610032, -0.446801, 0.654393,
		42.764027, 31.118515, 32.888874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824478, 30.998072, 32.004078>,  <42.337006, 31.431276, 32.430798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824478, 30.998072, 32.004078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798504, 30.857882, 32.377804>,  <42.782921, 30.773767, 32.602039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798504, 30.857882, 32.377804>,  <42.824478, 30.998072, 32.004078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798504, 30.857882, 32.377804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111450, -0.927889, -0.355811,
		0.991646, -0.127234, 0.021191,
		-0.064934, -0.350477, 0.934318,
		42.779022, 30.752739, 32.658100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173988, 30.348639, 32.007996>,  <42.824478, 30.998072, 32.004078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173988, 30.348639, 32.007996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.936375, 30.328014, 32.329109>,  <42.793808, 30.315639, 32.521778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.936375, 30.328014, 32.329109>,  <43.173988, 30.348639, 32.007996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936375, 30.328014, 32.329109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336148, -0.890730, -0.305948,
		0.730840, -0.451598, 0.511793,
		-0.594035, -0.051561, 0.802785,
		42.758163, 30.312546, 32.569946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343884, 29.687868, 32.221943>,  <43.173988, 30.348639, 32.007996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343884, 29.687868, 32.221943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998299, 29.806606, 32.384651>,  <42.790947, 29.877850, 32.482277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998299, 29.806606, 32.384651>,  <43.343884, 29.687868, 32.221943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998299, 29.806606, 32.384651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379562, -0.914719, -0.138642,
		0.330923, -0.274174, 0.902950,
		-0.863958, 0.296846, 0.406768,
		42.739113, 29.895660, 32.506680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119980, 29.192530, 32.683338>,  <43.343884, 29.687868, 32.221943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119980, 29.192530, 32.683338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769165, 29.363968, 32.596519>,  <42.558674, 29.466831, 32.544430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769165, 29.363968, 32.596519>,  <43.119980, 29.192530, 32.683338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769165, 29.363968, 32.596519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357682, -0.884146, -0.300581,
		-0.320726, -0.185989, 0.928732,
		-0.877040, 0.428595, -0.217044,
		42.506054, 29.492546, 32.531406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538742, 28.696392, 32.948696>,  <43.119980, 29.192530, 32.683338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538742, 28.696392, 32.948696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370590, 28.937019, 32.676991>,  <42.269699, 29.081396, 32.513969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370590, 28.937019, 32.676991>,  <42.538742, 28.696392, 32.948696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370590, 28.937019, 32.676991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582667, -0.752849, -0.306136,
		-0.695541, 0.267087, 0.666999,
		-0.420384, 0.601568, -0.679260,
		42.244476, 29.117489, 32.473213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909256, 28.412987, 32.879204>,  <42.538742, 28.696392, 32.948696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909256, 28.412987, 32.879204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.921921, 28.634600, 32.546448>,  <41.929520, 28.767569, 32.346794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.921921, 28.634600, 32.546448>,  <41.909256, 28.412987, 32.879204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921921, 28.634600, 32.546448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429119, -0.744161, -0.511939,
		-0.902693, 0.373190, 0.214184,
		0.031663, 0.554034, -0.831891,
		41.931419, 28.800810, 32.296879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272289, 28.467424, 32.632690>,  <41.909256, 28.412987, 32.879204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272289, 28.467424, 32.632690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.502182, 28.535656, 32.312546>,  <41.640118, 28.576595, 32.120457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.502182, 28.535656, 32.312546>,  <41.272289, 28.467424, 32.632690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502182, 28.535656, 32.312546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496177, -0.705114, -0.506580,
		-0.650760, 0.688271, -0.320616,
		0.574735, 0.170579, -0.800364,
		41.674603, 28.586830, 32.072437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848259, 28.444267, 32.042511>,  <41.272289, 28.467424, 32.632690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848259, 28.444267, 32.042511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202114, 28.379665, 31.867544>,  <41.414429, 28.340904, 31.762564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202114, 28.379665, 31.867544>,  <40.848259, 28.444267, 32.042511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202114, 28.379665, 31.867544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372607, -0.808831, -0.454924,
		-0.280322, 0.565427, -0.775701,
		0.884638, -0.161506, -0.437415,
		41.467506, 28.331213, 31.736320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.329029, 39.602058, 38.459053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942612, 39.499660, 38.473061>,  <36.710762, 39.438221, 38.481464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942612, 39.499660, 38.473061>,  <37.329029, 39.602058, 38.459053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942612, 39.499660, 38.473061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083486, -0.437536, -0.895317,
		0.244518, -0.861992, 0.444051,
		-0.966044, -0.255993, 0.035021,
		36.652798, 39.422863, 38.483566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407051, 38.929707, 38.344788>,  <37.329029, 39.602058, 38.459053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407051, 38.929707, 38.344788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028187, 39.019623, 38.253258>,  <36.800869, 39.073574, 38.198338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028187, 39.019623, 38.253258>,  <37.407051, 38.929707, 38.344788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028187, 39.019623, 38.253258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070895, -0.549028, -0.832792,
		-0.312835, -0.805008, 0.504080,
		-0.947158, 0.224790, -0.228826,
		36.744038, 39.087059, 38.184608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181423, 38.346367, 38.049271>,  <37.407051, 38.929707, 38.344788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181423, 38.346367, 38.049271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888626, 38.589775, 37.926704>,  <36.712948, 38.735821, 37.853165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888626, 38.589775, 37.926704>,  <37.181423, 38.346367, 38.049271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888626, 38.589775, 37.926704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021278, -0.429105, -0.903004,
		-0.680984, -0.667509, 0.301152,
		-0.731989, 0.608524, -0.306417,
		36.669029, 38.772331, 37.834778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778164, 37.899464, 37.608349>,  <37.181423, 38.346367, 38.049271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778164, 37.899464, 37.608349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653606, 38.266903, 37.511017>,  <36.578873, 38.487366, 37.452618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653606, 38.266903, 37.511017>,  <36.778164, 37.899464, 37.608349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653606, 38.266903, 37.511017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234304, -0.322376, -0.917156,
		-0.920943, -0.228582, 0.315617,
		-0.311392, 0.918599, -0.243333,
		36.560188, 38.542484, 37.438019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096458, 37.877182, 37.337292>,  <36.778164, 37.899464, 37.608349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096458, 37.877182, 37.337292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249279, 38.212940, 37.182659>,  <36.340973, 38.414394, 37.089878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249279, 38.212940, 37.182659>,  <36.096458, 37.877182, 37.337292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249279, 38.212940, 37.182659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303032, -0.281397, -0.910487,
		-0.873043, 0.465004, 0.146855,
		0.382056, 0.839397, -0.386583,
		36.363895, 38.464760, 37.066685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552330, 38.249489, 36.884274>,  <36.096458, 37.877182, 37.337292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552330, 38.249489, 36.884274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906158, 38.372322, 36.743855>,  <36.118454, 38.446022, 36.659603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906158, 38.372322, 36.743855>,  <35.552330, 38.249489, 36.884274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906158, 38.372322, 36.743855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308595, -0.179025, -0.934194,
		-0.349726, 0.934691, -0.063595,
		0.884568, 0.307087, -0.351050,
		36.171528, 38.464447, 36.638538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372875, 38.250481, 36.236378>,  <35.552330, 38.249489, 36.884274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372875, 38.250481, 36.236378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761574, 38.337353, 36.199421>,  <35.994793, 38.389477, 36.177246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761574, 38.337353, 36.199421>,  <35.372875, 38.250481, 36.236378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761574, 38.337353, 36.199421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015742, -0.450218, -0.892780,
		-0.235491, 0.866104, -0.440918,
		0.971749, 0.217183, -0.092388,
		36.053097, 38.402508, 36.171703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453133, 38.508961, 35.548725>,  <35.372875, 38.250481, 36.236378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453133, 38.508961, 35.548725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814770, 38.367126, 35.644131>,  <36.031750, 38.282024, 35.701374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814770, 38.367126, 35.644131>,  <35.453133, 38.508961, 35.548725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814770, 38.367126, 35.644131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050501, -0.465581, -0.883563,
		0.424349, 0.810865, -0.403020,
		0.904089, -0.354586, 0.238518,
		36.085995, 38.260750, 35.715687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946747, 38.658867, 35.025745>,  <35.453133, 38.508961, 35.548725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946747, 38.658867, 35.025745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083401, 38.351852, 35.242699>,  <36.165394, 38.167645, 35.372871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083401, 38.351852, 35.242699>,  <35.946747, 38.658867, 35.025745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083401, 38.351852, 35.242699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096810, -0.545296, -0.832635,
		0.934833, 0.336966, -0.111988,
		0.341636, -0.767533, 0.542382,
		36.185890, 38.121593, 35.405415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597221, 38.535320, 34.696369>,  <35.946747, 38.658867, 35.025745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597221, 38.535320, 34.696369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461304, 38.218369, 34.899025>,  <36.379753, 38.028198, 35.020618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461304, 38.218369, 34.899025>,  <36.597221, 38.535320, 34.696369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461304, 38.218369, 34.899025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224686, -0.591480, -0.774382,
		0.913268, -0.149294, 0.379016,
		-0.339792, -0.792377, 0.506635,
		36.359367, 37.980656, 35.051014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119923, 38.027351, 34.547779>,  <36.597221, 38.535320, 34.696369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119923, 38.027351, 34.547779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793644, 37.837749, 34.680416>,  <36.597878, 37.723988, 34.759998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793644, 37.837749, 34.680416>,  <37.119923, 38.027351, 34.547779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793644, 37.837749, 34.680416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166308, -0.741174, -0.650386,
		0.554059, -0.475370, 0.683405,
		-0.815696, -0.474008, 0.331596,
		36.548935, 37.695545, 34.779896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333576, 37.350826, 34.539421>,  <37.119923, 38.027351, 34.547779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333576, 37.350826, 34.539421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935963, 37.320293, 34.570572>,  <36.697395, 37.301975, 34.589264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935963, 37.320293, 34.570572>,  <37.333576, 37.350826, 34.539421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935963, 37.320293, 34.570572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002348, -0.728982, -0.684529,
		0.109020, -0.680264, 0.724814,
		-0.994037, -0.076330, 0.077876,
		36.637753, 37.297394, 34.593933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223423, 36.649807, 34.671932>,  <37.333576, 37.350826, 34.539421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223423, 36.649807, 34.671932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903538, 36.792950, 34.479103>,  <36.711605, 36.878834, 34.363407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903538, 36.792950, 34.479103>,  <37.223423, 36.649807, 34.671932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903538, 36.792950, 34.479103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151794, -0.656345, -0.739033,
		-0.580871, -0.664193, 0.470571,
		-0.799717, 0.357853, -0.482072,
		36.663624, 36.900307, 34.334480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689583, 36.607681, 35.310463>,  <37.223423, 36.649807, 34.671932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689583, 36.607681, 35.310463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348419, 36.625446, 35.518532>,  <37.143723, 36.636105, 35.643372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348419, 36.625446, 35.518532>,  <37.689583, 36.607681, 35.310463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348419, 36.625446, 35.518532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501670, -0.345478, -0.793078,
		0.144488, -0.937375, 0.316939,
		-0.852907, 0.044408, 0.520170,
		37.092548, 36.638767, 35.674583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719154, 36.214462, 35.999954>,  <37.689583, 36.607681, 35.310463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719154, 36.214462, 35.999954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907753, 35.862514, 36.023689>,  <38.020912, 35.651344, 36.037930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907753, 35.862514, 36.023689>,  <37.719154, 36.214462, 35.999954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907753, 35.862514, 36.023689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667808, -0.312290, 0.675653,
		-0.575957, -0.358192, -0.734828,
		0.471493, -0.879871, 0.059338,
		38.049202, 35.598553, 36.041492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143894, 35.846176, 35.914421>,  <37.719154, 36.214462, 35.999954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143894, 35.846176, 35.914421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409462, 35.602669, 36.088142>,  <37.568802, 35.456566, 36.192375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409462, 35.602669, 36.088142>,  <37.143894, 35.846176, 35.914421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409462, 35.602669, 36.088142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707116, -0.322107, 0.629472,
		-0.243307, -0.725021, -0.644319,
		0.663920, -0.608763, 0.434303,
		37.608639, 35.420040, 36.218433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781891, 35.161926, 35.989395>,  <37.143894, 35.846176, 35.914421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781891, 35.161926, 35.989395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094479, 35.160931, 36.238972>,  <37.282032, 35.160332, 36.388718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094479, 35.160931, 36.238972>,  <36.781891, 35.161926, 35.989395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094479, 35.160931, 36.238972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556519, -0.454945, 0.695207,
		0.282128, -0.890516, -0.356909,
		0.781467, -0.002489, 0.623942,
		37.328918, 35.160183, 36.426155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779747, 34.569675, 36.416222>,  <36.781891, 35.161926, 35.989395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779747, 34.569675, 36.416222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020012, 34.814865, 36.621540>,  <37.164169, 34.961979, 36.744732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020012, 34.814865, 36.621540>,  <36.779747, 34.569675, 36.416222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020012, 34.814865, 36.621540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546486, -0.153848, 0.823215,
		0.583578, -0.774981, 0.242571,
		0.600658, 0.612972, 0.513299,
		37.200211, 34.998756, 36.775528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926476, 34.212669, 37.114704>,  <36.779747, 34.569675, 36.416222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926476, 34.212669, 37.114704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013893, 34.600132, 37.161926>,  <37.066345, 34.832611, 37.190258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013893, 34.600132, 37.161926>,  <36.926476, 34.212669, 37.114704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013893, 34.600132, 37.161926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305041, -0.047097, 0.951174,
		0.926923, -0.243888, 0.285188,
		0.218548, 0.968660, 0.118051,
		37.079456, 34.890728, 37.197342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137020, 34.184113, 37.803009>,  <36.926476, 34.212669, 37.114704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137020, 34.184113, 37.803009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061203, 34.569839, 37.729069>,  <37.015713, 34.801273, 37.684704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061203, 34.569839, 37.729069>,  <37.137020, 34.184113, 37.803009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061203, 34.569839, 37.729069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421491, 0.090124, 0.902343,
		0.886802, 0.248948, 0.389367,
		-0.189546, 0.964315, -0.184852,
		37.004341, 34.859135, 37.673615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546707, 34.528042, 38.249680>,  <37.137020, 34.184113, 37.803009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546707, 34.528042, 38.249680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249069, 34.779530, 38.159321>,  <37.070488, 34.930424, 38.105106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249069, 34.779530, 38.159321>,  <37.546707, 34.528042, 38.249680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249069, 34.779530, 38.159321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364810, -0.099120, 0.925791,
		0.559676, 0.771286, 0.303120,
		-0.744094, 0.628724, -0.225898,
		37.025841, 34.968147, 38.091553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562649, 35.140579, 38.710045>,  <37.546707, 34.528042, 38.249680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562649, 35.140579, 38.710045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185097, 35.130001, 38.578354>,  <36.958565, 35.123653, 38.499340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185097, 35.130001, 38.578354>,  <37.562649, 35.140579, 38.710045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185097, 35.130001, 38.578354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330178, 0.101509, 0.938445,
		0.008599, 0.994483, -0.104545,
		-0.943879, -0.026449, -0.329229,
		36.901932, 35.122066, 38.479584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273323, 35.749031, 38.987404>,  <37.562649, 35.140579, 38.710045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273323, 35.749031, 38.987404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975960, 35.489754, 38.921448>,  <36.797543, 35.334187, 38.881874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975960, 35.489754, 38.921448>,  <37.273323, 35.749031, 38.987404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975960, 35.489754, 38.921448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437262, 0.284458, 0.853163,
		-0.506109, 0.706350, -0.494898,
		-0.743409, -0.648193, -0.164893,
		36.752937, 35.295296, 38.871979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676460, 36.221237, 39.150894>,  <37.273323, 35.749031, 38.987404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676460, 36.221237, 39.150894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543854, 35.844582, 39.127514>,  <36.464291, 35.618587, 39.113487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543854, 35.844582, 39.127514>,  <36.676460, 36.221237, 39.150894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543854, 35.844582, 39.127514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439396, 0.099279, 0.892790,
		-0.834883, 0.321654, -0.446665,
		-0.331514, -0.941638, -0.058447,
		36.444401, 35.562092, 39.109982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083347, 36.309971, 39.392403>,  <36.676460, 36.221237, 39.150894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083347, 36.309971, 39.392403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158966, 35.917645, 39.411442>,  <36.204338, 35.682251, 39.422867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158966, 35.917645, 39.411442>,  <36.083347, 36.309971, 39.392403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158966, 35.917645, 39.411442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353051, -0.022660, 0.935330,
		-0.916305, -0.193627, -0.350561,
		0.189049, -0.980814, 0.047597,
		36.215679, 35.623402, 39.425720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428089, 36.030399, 39.654961>,  <36.083347, 36.309971, 39.392403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428089, 36.030399, 39.654961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710400, 35.767101, 39.759720>,  <35.879787, 35.609123, 39.822575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710400, 35.767101, 39.759720>,  <35.428089, 36.030399, 39.654961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710400, 35.767101, 39.759720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218140, 0.149797, 0.964353,
		-0.674014, -0.737748, -0.037867,
		0.705777, -0.658247, 0.261898,
		35.922134, 35.569626, 39.838287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171680, 35.650356, 40.260693>,  <35.428089, 36.030399, 39.654961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171680, 35.650356, 40.260693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570873, 35.625763, 40.267117>,  <35.810387, 35.611008, 40.270969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570873, 35.625763, 40.267117>,  <35.171680, 35.650356, 40.260693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570873, 35.625763, 40.267117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010700, 0.086552, 0.996190,
		-0.062639, -0.994348, 0.085719,
		0.997979, -0.061483, 0.016061,
		35.870266, 35.607319, 40.271935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210030, 35.328140, 40.870594>,  <35.171680, 35.650356, 40.260693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210030, 35.328140, 40.870594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574036, 35.478565, 40.800797>,  <35.792439, 35.568821, 40.758919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574036, 35.478565, 40.800797>,  <35.210030, 35.328140, 40.870594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574036, 35.478565, 40.800797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101660, 0.205631, 0.973335,
		0.401914, -0.903490, 0.148897,
		0.910016, 0.376060, -0.174495,
		35.847042, 35.591385, 40.748447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994930, 34.581314, 41.196827>,  <35.210030, 35.328140, 40.870594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994930, 34.581314, 41.196827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595097, 34.580654, 41.208359>,  <34.355198, 34.580257, 41.215279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595097, 34.580654, 41.208359>,  <34.994930, 34.581314, 41.196827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595097, 34.580654, 41.208359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028312, -0.141217, -0.989574,
		0.005702, -0.989977, 0.141111,
		-0.999583, -0.001648, 0.028834,
		34.295223, 34.580158, 41.217010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816174, 34.112137, 40.736412>,  <34.994930, 34.581314, 41.196827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816174, 34.112137, 40.736412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473057, 34.313065, 40.779980>,  <34.267185, 34.433620, 40.806122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473057, 34.313065, 40.779980>,  <34.816174, 34.112137, 40.736412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473057, 34.313065, 40.779980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159393, -0.058503, -0.985480,
		-0.488652, -0.862702, 0.130250,
		-0.857795, 0.502318, 0.108921,
		34.215717, 34.463760, 40.812656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236324, 33.724159, 40.427055>,  <34.816174, 34.112137, 40.736412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236324, 33.724159, 40.427055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097645, 34.099232, 40.417618>,  <34.014439, 34.324276, 40.411957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097645, 34.099232, 40.417618>,  <34.236324, 33.724159, 40.427055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097645, 34.099232, 40.417618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432858, -0.182257, -0.882845,
		-0.832126, -0.295868, 0.469071,
		-0.346697, 0.937680, -0.023591,
		33.993637, 34.380535, 40.410542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561275, 33.681065, 40.285736>,  <34.236324, 33.724159, 40.427055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561275, 33.681065, 40.285736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681934, 34.043182, 40.166107>,  <33.754330, 34.260452, 40.094330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681934, 34.043182, 40.166107>,  <33.561275, 33.681065, 40.285736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681934, 34.043182, 40.166107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214429, -0.241229, -0.946482,
		-0.928993, 0.349635, 0.121355,
		0.301649, 0.905298, -0.299072,
		33.772430, 34.314774, 40.076385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060192, 33.868633, 39.860172>,  <33.561275, 33.681065, 40.285736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060192, 33.868633, 39.860172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335499, 34.133781, 39.742264>,  <33.500683, 34.292870, 39.671520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335499, 34.133781, 39.742264>,  <33.060192, 33.868633, 39.860172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335499, 34.133781, 39.742264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333879, -0.071299, -0.939916,
		-0.644057, 0.745334, 0.172245,
		0.688270, 0.662868, -0.294772,
		33.541981, 34.332642, 39.653831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694668, 34.419319, 39.562374>,  <33.060192, 33.868633, 39.860172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694668, 34.419319, 39.562374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056431, 34.429680, 39.392025>,  <33.273491, 34.435898, 39.289814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056431, 34.429680, 39.392025>,  <32.694668, 34.419319, 39.562374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056431, 34.429680, 39.392025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425960, -0.002356, -0.904739,
		-0.024439, 0.999662, 0.008904,
		0.904412, 0.025904, -0.425873,
		33.327755, 34.437450, 39.264263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758537, 34.808525, 38.981491>,  <32.694668, 34.419319, 39.562374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758537, 34.808525, 38.981491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102688, 34.620876, 38.901810>,  <33.309177, 34.508289, 38.854000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102688, 34.620876, 38.901810>,  <32.758537, 34.808525, 38.981491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102688, 34.620876, 38.901810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125981, 0.182963, -0.975014,
		0.493845, 0.863974, 0.098316,
		0.860375, -0.469120, -0.199200,
		33.360802, 34.480141, 38.842049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025574, 35.171135, 38.437851>,  <32.758537, 34.808525, 38.981491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025574, 35.171135, 38.437851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210392, 34.817257, 38.413113>,  <33.321281, 34.604931, 38.398270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210392, 34.817257, 38.413113>,  <33.025574, 35.171135, 38.437851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210392, 34.817257, 38.413113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226609, -0.050355, -0.972683,
		0.857416, 0.463439, -0.223747,
		0.462046, -0.884697, -0.061844,
		33.349007, 34.551849, 38.394558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430538, 35.215649, 37.876598>,  <33.025574, 35.171135, 38.437851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430538, 35.215649, 37.876598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368237, 34.824032, 37.929085>,  <33.330856, 34.589062, 37.960575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368237, 34.824032, 37.929085>,  <33.430538, 35.215649, 37.876598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368237, 34.824032, 37.929085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078309, -0.120177, -0.989659,
		0.984687, -0.164419, -0.057950,
		-0.155754, -0.979042, 0.131212,
		33.321510, 34.530319, 37.968449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767738, 34.979908, 37.239479>,  <33.430538, 35.215649, 37.876598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767738, 34.979908, 37.239479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586056, 34.663109, 37.402668>,  <33.477047, 34.473030, 37.500580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586056, 34.663109, 37.402668>,  <33.767738, 34.979908, 37.239479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586056, 34.663109, 37.402668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267095, -0.315813, -0.910452,
		0.849916, -0.522499, -0.068094,
		-0.454205, -0.791995, 0.407972,
		33.449795, 34.425510, 37.525059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064278, 34.340321, 36.949123>,  <33.767738, 34.979908, 37.239479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064278, 34.340321, 36.949123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689373, 34.253387, 37.058159>,  <33.464432, 34.201229, 37.123581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689373, 34.253387, 37.058159>,  <34.064278, 34.340321, 36.949123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689373, 34.253387, 37.058159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193672, -0.325563, -0.925473,
		0.289880, -0.920204, 0.263047,
		-0.937262, -0.217331, 0.272592,
		33.408195, 34.188187, 37.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939213, 33.726673, 36.664417>,  <34.064278, 34.340321, 36.949123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939213, 33.726673, 36.664417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587570, 33.903408, 36.735924>,  <33.376587, 34.009449, 36.778828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587570, 33.903408, 36.735924>,  <33.939213, 33.726673, 36.664417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587570, 33.903408, 36.735924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213529, -0.029761, -0.976483,
		-0.426124, -0.896603, 0.120507,
		-0.879104, 0.441834, 0.178769,
		33.323837, 34.035957, 36.789555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.208328, 34.924629, 45.080406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.010662, 35.217236, 44.892494>,  <33.892063, 35.392799, 44.779747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.010662, 35.217236, 44.892494>,  <34.208328, 34.924629, 45.080406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010662, 35.217236, 44.892494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087892, -0.579636, -0.810122,
		-0.864915, -0.359042, 0.350728,
		-0.494162, 0.731513, -0.469779,
		33.862411, 35.436691, 44.751560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540321, 34.707783, 44.834450>,  <34.208328, 34.924629, 45.080406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540321, 34.707783, 44.834450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623920, 35.024498, 44.604881>,  <33.674080, 35.214527, 44.467140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623920, 35.024498, 44.604881>,  <33.540321, 34.707783, 44.834450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623920, 35.024498, 44.604881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167849, -0.549130, -0.818708,
		-0.963403, 0.267443, 0.018133,
		0.209000, 0.791789, -0.573924,
		33.686619, 35.262035, 44.432705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163677, 34.579487, 44.296520>,  <33.540321, 34.707783, 44.834450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163677, 34.579487, 44.296520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.389107, 34.877384, 44.153553>,  <33.524364, 35.056122, 44.067772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.389107, 34.877384, 44.153553>,  <33.163677, 34.579487, 44.296520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389107, 34.877384, 44.153553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118206, -0.355518, -0.927165,
		-0.817567, 0.564772, -0.112327,
		0.563571, 0.744741, -0.357419,
		33.558178, 35.100807, 44.046326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802715, 34.966949, 43.694176>,  <33.163677, 34.579487, 44.296520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802715, 34.966949, 43.694176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195892, 35.011898, 43.635937>,  <33.431797, 35.038868, 43.600994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195892, 35.011898, 43.635937>,  <32.802715, 34.966949, 43.694176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195892, 35.011898, 43.635937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131756, -0.122111, -0.983732,
		-0.128320, 0.986135, -0.105223,
		0.982942, 0.112369, -0.145599,
		33.490776, 35.045609, 43.592258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880165, 35.265228, 43.026371>,  <32.802715, 34.966949, 43.694176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880165, 35.265228, 43.026371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.252666, 35.132515, 43.086628>,  <33.476166, 35.052887, 43.122784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.252666, 35.132515, 43.086628>,  <32.880165, 35.265228, 43.026371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252666, 35.132515, 43.086628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117185, -0.118761, -0.985983,
		0.345027, 0.935849, -0.071715,
		0.931249, -0.331787, 0.150643,
		33.532040, 35.032978, 43.131821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207775, 35.518379, 42.492641>,  <32.880165, 35.265228, 43.026371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207775, 35.518379, 42.492641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.453754, 35.233879, 42.628853>,  <33.601341, 35.063179, 42.710579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.453754, 35.233879, 42.628853>,  <33.207775, 35.518379, 42.492641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453754, 35.233879, 42.628853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233447, -0.248281, -0.940138,
		0.753221, 0.657632, 0.013359,
		0.614948, -0.711250, 0.340533,
		33.638237, 35.020504, 42.731014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873260, 35.673862, 42.310581>,  <33.207775, 35.518379, 42.492641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873260, 35.673862, 42.310581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874199, 35.278759, 42.372959>,  <33.874763, 35.041695, 42.410385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874199, 35.278759, 42.372959>,  <33.873260, 35.673862, 42.310581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874199, 35.278759, 42.372959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496026, -0.134257, -0.857865,
		0.868304, 0.079369, 0.489641,
		0.002350, -0.987763, 0.155945,
		33.874905, 34.982430, 42.419743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520229, 35.445702, 42.296043>,  <33.873260, 35.673862, 42.310581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520229, 35.445702, 42.296043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339474, 35.100620, 42.205231>,  <34.231018, 34.893574, 42.150742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339474, 35.100620, 42.205231>,  <34.520229, 35.445702, 42.296043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339474, 35.100620, 42.205231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372616, 0.048696, -0.926707,
		0.810525, -0.503367, 0.299450,
		-0.451892, -0.862699, -0.227032,
		34.203907, 34.841812, 42.137119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874352, 35.188324, 41.643318>,  <34.520229, 35.445702, 42.296043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874352, 35.188324, 41.643318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533169, 34.979717, 41.652096>,  <34.328461, 34.854553, 41.657360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533169, 34.979717, 41.652096>,  <34.874352, 35.188324, 41.643318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533169, 34.979717, 41.652096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035563, -0.100000, -0.994352,
		0.520769, -0.847359, 0.103842,
		-0.852957, -0.521520, 0.021942,
		34.277283, 34.823261, 41.658680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663830, 35.111965, 41.462978>,  <34.874352, 35.188324, 41.643318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663830, 35.111965, 41.462978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863335, 35.426373, 41.316875>,  <35.983040, 35.615017, 41.229214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863335, 35.426373, 41.316875>,  <35.663830, 35.111965, 41.462978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863335, 35.426373, 41.316875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125786, 0.351315, 0.927769,
		0.857561, -0.508684, 0.076354,
		0.498766, 0.786014, -0.365259,
		36.012966, 35.662178, 41.207298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293392, 35.216286, 41.873665>,  <35.663830, 35.111965, 41.462978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293392, 35.216286, 41.873665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190052, 35.549316, 41.677677>,  <36.128048, 35.749134, 41.560085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190052, 35.549316, 41.677677>,  <36.293392, 35.216286, 41.873665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190052, 35.549316, 41.677677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070618, 0.522110, 0.849950,
		0.963465, 0.184988, -0.193685,
		-0.258355, 0.832575, -0.489971,
		36.112545, 35.799088, 41.530685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674076, 35.674618, 42.181202>,  <36.293392, 35.216286, 41.873665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674076, 35.674618, 42.181202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.416119, 35.932793, 42.017483>,  <36.261345, 36.087700, 41.919250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.416119, 35.932793, 42.017483>,  <36.674076, 35.674618, 42.181202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416119, 35.932793, 42.017483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213613, 0.666414, 0.714326,
		0.733816, 0.373230, -0.567638,
		-0.644890, 0.645439, -0.409299,
		36.222652, 36.126423, 41.894691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014866, 36.348137, 42.045826>,  <36.674076, 35.674618, 42.181202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014866, 36.348137, 42.045826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.631916, 36.463589, 42.041241>,  <36.402145, 36.532860, 42.038490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.631916, 36.463589, 42.041241>,  <37.014866, 36.348137, 42.045826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631916, 36.463589, 42.041241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227594, 0.778162, 0.585376,
		0.177874, 0.557814, -0.810681,
		-0.957372, 0.288630, -0.011460,
		36.344704, 36.550179, 42.037804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963879, 37.050064, 41.942150>,  <37.014866, 36.348137, 42.045826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963879, 37.050064, 41.942150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613464, 36.958286, 42.111816>,  <36.403217, 36.903217, 42.213615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613464, 36.958286, 42.111816>,  <36.963879, 37.050064, 41.942150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613464, 36.958286, 42.111816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119583, 0.748737, 0.651992,
		-0.467187, 0.621891, -0.628481,
		-0.876035, -0.229446, 0.424167,
		36.350655, 36.889454, 42.239067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651493, 37.730640, 41.965031>,  <36.963879, 37.050064, 41.942150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651493, 37.730640, 41.965031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438110, 37.509323, 42.220936>,  <36.310081, 37.376534, 42.374477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438110, 37.509323, 42.220936>,  <36.651493, 37.730640, 41.965031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438110, 37.509323, 42.220936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044311, 0.773616, 0.632104,
		-0.844667, 0.308851, -0.437206,
		-0.533455, -0.553290, 0.639762,
		36.278072, 37.343334, 42.412865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124599, 38.220673, 42.170059>,  <36.651493, 37.730640, 41.965031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124599, 38.220673, 42.170059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156654, 37.938007, 42.451256>,  <36.175888, 37.768406, 42.619976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156654, 37.938007, 42.451256>,  <36.124599, 38.220673, 42.170059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156654, 37.938007, 42.451256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099742, 0.707408, 0.699733,
		-0.991781, 0.014044, 0.127173,
		0.080136, -0.706666, 0.702995,
		36.180695, 37.726009, 42.662155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568405, 38.355282, 42.559395>,  <36.124599, 38.220673, 42.170059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568405, 38.355282, 42.559395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806004, 38.169247, 42.821957>,  <35.948563, 38.057625, 42.979492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806004, 38.169247, 42.821957>,  <35.568405, 38.355282, 42.559395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806004, 38.169247, 42.821957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000574, 0.816191, 0.577781,
		-0.804469, -0.342822, 0.485080,
		0.593994, -0.465086, 0.656404,
		35.984203, 38.029720, 43.018879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246799, 38.487236, 43.113419>,  <35.568405, 38.355282, 42.559395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246799, 38.487236, 43.113419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613796, 38.374130, 43.225315>,  <35.833992, 38.306267, 43.292454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613796, 38.374130, 43.225315>,  <35.246799, 38.487236, 43.113419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613796, 38.374130, 43.225315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048580, 0.777688, 0.626771,
		-0.394783, -0.561465, 0.727257,
		0.917489, -0.282768, 0.279742,
		35.889042, 38.289299, 43.309238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340534, 38.539188, 43.787861>,  <35.246799, 38.487236, 43.113419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340534, 38.539188, 43.787861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734070, 38.478344, 43.750065>,  <35.970192, 38.441837, 43.727386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734070, 38.478344, 43.750065>,  <35.340534, 38.539188, 43.787861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734070, 38.478344, 43.750065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169147, 0.616214, 0.769201,
		-0.058782, -0.772750, 0.631983,
		0.983836, -0.152113, -0.094486,
		36.029221, 38.432709, 43.721718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664837, 38.393574, 44.551327>,  <35.340534, 38.539188, 43.787861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664837, 38.393574, 44.551327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963699, 38.516716, 44.315708>,  <36.143017, 38.590603, 44.174335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963699, 38.516716, 44.315708>,  <35.664837, 38.393574, 44.551327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963699, 38.516716, 44.315708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403250, 0.494538, 0.769949,
		0.528348, -0.812805, 0.245350,
		0.747154, 0.307864, -0.589051,
		36.187847, 38.609074, 44.138992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240261, 38.282646, 44.940544>,  <35.664837, 38.393574, 44.551327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240261, 38.282646, 44.940544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.329094, 38.563480, 44.669914>,  <36.382393, 38.731979, 44.507534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.329094, 38.563480, 44.669914>,  <36.240261, 38.282646, 44.940544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329094, 38.563480, 44.669914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390229, 0.571906, 0.721557,
		0.893532, -0.424267, -0.146963,
		0.222084, 0.702084, -0.676578,
		36.395718, 38.774105, 44.466942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921665, 38.362053, 44.972435>,  <36.240261, 38.282646, 44.940544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921665, 38.362053, 44.972435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746735, 38.692112, 44.829395>,  <36.641777, 38.890148, 44.743572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746735, 38.692112, 44.829395>,  <36.921665, 38.362053, 44.972435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746735, 38.692112, 44.829395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357690, 0.524434, 0.772675,
		0.825107, 0.210004, -0.524497,
		-0.437329, 0.825147, -0.357597,
		36.615536, 38.939655, 44.722115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451107, 38.871487, 45.141197>,  <36.921665, 38.362053, 44.972435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451107, 38.871487, 45.141197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135910, 39.104839, 45.062473>,  <36.946793, 39.244850, 45.015240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135910, 39.104839, 45.062473>,  <37.451107, 38.871487, 45.141197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135910, 39.104839, 45.062473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218613, 0.563948, 0.796349,
		0.575568, 0.584490, -0.571920,
		-0.787991, 0.583382, -0.196813,
		36.899513, 39.279854, 45.003429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.755911, 42.444992, 42.996651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.058836, 42.241276, 43.160160>,  <30.240591, 42.119045, 43.258266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.058836, 42.241276, 43.160160>,  <29.755911, 42.444992, 42.996651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058836, 42.241276, 43.160160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323443, -0.251267, -0.912277,
		0.567330, 0.823094, -0.025560,
		0.757312, -0.509295, 0.408775,
		30.286030, 42.088486, 43.282791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363552, 42.542629, 42.544106>,  <29.755911, 42.444992, 42.996651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363552, 42.542629, 42.544106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.460218, 42.206463, 42.738132>,  <30.518219, 42.004761, 42.854549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.460218, 42.206463, 42.738132>,  <30.363552, 42.542629, 42.544106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460218, 42.206463, 42.738132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365511, -0.384227, -0.847804,
		0.898887, 0.382185, 0.214328,
		0.241667, -0.840419, 0.485070,
		30.532719, 41.954338, 42.883652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995205, 42.356178, 42.284866>,  <30.363552, 42.542629, 42.544106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995205, 42.356178, 42.284866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840487, 42.024387, 42.446037>,  <30.747656, 41.825314, 42.542740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840487, 42.024387, 42.446037>,  <30.995205, 42.356178, 42.284866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840487, 42.024387, 42.446037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202697, -0.502725, -0.840346,
		0.899613, -0.243369, 0.362585,
		-0.386795, -0.829481, 0.402928,
		30.724447, 41.775543, 42.566917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549719, 41.786831, 42.327400>,  <30.995205, 42.356178, 42.284866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549719, 41.786831, 42.327400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.183107, 41.629196, 42.354736>,  <30.963140, 41.534615, 42.371140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.183107, 41.629196, 42.354736>,  <31.549719, 41.786831, 42.327400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183107, 41.629196, 42.354736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180250, -0.559499, -0.808994,
		0.357051, -0.729147, 0.583831,
		-0.916528, -0.394088, 0.068341,
		30.908150, 41.510971, 42.375240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620768, 41.081387, 42.233822>,  <31.549719, 41.786831, 42.327400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620768, 41.081387, 42.233822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232552, 41.146774, 42.163025>,  <30.999622, 41.186005, 42.120548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232552, 41.146774, 42.163025>,  <31.620768, 41.081387, 42.233822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232552, 41.146774, 42.163025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031124, -0.643404, -0.764894,
		-0.238912, -0.747871, 0.619363,
		-0.970542, 0.163465, -0.176993,
		30.941389, 41.195812, 42.109928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486547, 40.527584, 41.943169>,  <31.620768, 41.081387, 42.233822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486547, 40.527584, 41.943169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.151005, 40.722828, 41.846783>,  <30.949678, 40.839973, 41.788952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.151005, 40.722828, 41.846783>,  <31.486547, 40.527584, 41.943169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151005, 40.722828, 41.846783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107005, -0.581892, -0.806196,
		-0.533728, -0.650501, 0.540355,
		-0.838859, 0.488110, -0.240965,
		30.899347, 40.869263, 41.774494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011629, 40.040985, 41.841675>,  <31.486547, 40.527584, 41.943169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011629, 40.040985, 41.841675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880707, 40.358829, 41.637142>,  <30.802153, 40.549538, 41.514423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880707, 40.358829, 41.637142>,  <31.011629, 40.040985, 41.841675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880707, 40.358829, 41.637142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081102, -0.562764, -0.822629,
		-0.941431, -0.227781, 0.248641,
		-0.327306, 0.794615, -0.511330,
		30.782515, 40.597214, 41.483742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322474, 39.837910, 41.484699>,  <31.011629, 40.040985, 41.841675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322474, 39.837910, 41.484699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.509302, 40.143013, 41.305794>,  <30.621399, 40.326073, 41.198448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.509302, 40.143013, 41.305794>,  <30.322474, 39.837910, 41.484699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509302, 40.143013, 41.305794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137743, -0.436892, -0.888905,
		-0.873424, 0.476791, -0.098997,
		0.467073, 0.762755, -0.447267,
		30.649424, 40.371838, 41.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904865, 39.910259, 40.754292>,  <30.322474, 39.837910, 41.484699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904865, 39.910259, 40.754292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248604, 40.105694, 40.693890>,  <30.454847, 40.222954, 40.657646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248604, 40.105694, 40.693890>,  <29.904865, 39.910259, 40.754292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248604, 40.105694, 40.693890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026176, -0.252877, -0.967144,
		-0.510725, 0.835064, -0.204519,
		0.859346, 0.488591, -0.151010,
		30.506407, 40.252270, 40.648586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716225, 40.262737, 40.241447>,  <29.904865, 39.910259, 40.754292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716225, 40.262737, 40.241447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.115967, 40.276665, 40.237968>,  <30.355812, 40.285023, 40.235882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.115967, 40.276665, 40.237968>,  <29.716225, 40.262737, 40.241447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115967, 40.276665, 40.237968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008560, -0.466540, -0.884459,
		-0.034854, 0.883814, -0.466538,
		0.999356, 0.034820, -0.008696,
		30.415773, 40.287109, 40.235359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860296, 40.456272, 39.619404>,  <29.716225, 40.262737, 40.241447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860296, 40.456272, 39.619404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.228745, 40.333191, 39.714783>,  <30.449814, 40.259342, 39.772011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.228745, 40.333191, 39.714783>,  <29.860296, 40.456272, 39.619404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228745, 40.333191, 39.714783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151944, -0.279759, -0.947970,
		0.358400, 0.909425, -0.210938,
		0.921120, -0.307702, 0.238448,
		30.505081, 40.240879, 39.786316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346462, 40.789989, 39.121288>,  <29.860296, 40.456272, 39.619404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346462, 40.789989, 39.121288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518435, 40.464710, 39.278198>,  <30.621618, 40.269543, 39.372345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518435, 40.464710, 39.278198>,  <30.346462, 40.789989, 39.121288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518435, 40.464710, 39.278198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089743, -0.393833, -0.914791,
		0.898391, 0.428499, -0.096342,
		0.429929, -0.813194, 0.392271,
		30.647413, 40.220753, 39.395878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090746, 40.814320, 38.817673>,  <30.346462, 40.789989, 39.121288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090746, 40.814320, 38.817673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014652, 40.435009, 38.919331>,  <30.968996, 40.207424, 38.980324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014652, 40.435009, 38.919331>,  <31.090746, 40.814320, 38.817673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014652, 40.435009, 38.919331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324538, -0.305056, -0.895330,
		0.926546, -0.087842, 0.365782,
		-0.190232, -0.948274, 0.254140,
		30.957582, 40.150528, 38.995571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652534, 40.325550, 38.617607>,  <31.090746, 40.814320, 38.817673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652534, 40.325550, 38.617607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327999, 40.094810, 38.655495>,  <31.133278, 39.956367, 38.678226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327999, 40.094810, 38.655495>,  <31.652534, 40.325550, 38.617607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327999, 40.094810, 38.655495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189677, -0.413042, -0.890741,
		0.552950, -0.704725, 0.444532,
		-0.811338, -0.576853, 0.094722,
		31.084599, 39.921753, 38.683910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265148, 39.880520, 38.837170>,  <31.652534, 40.325550, 38.617607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265148, 39.880520, 38.837170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649597, 39.945999, 38.748222>,  <32.880268, 39.985287, 38.694855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649597, 39.945999, 38.748222>,  <32.265148, 39.880520, 38.837170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649597, 39.945999, 38.748222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169430, 0.286256, 0.943054,
		0.218029, -0.944066, 0.247392,
		0.961123, 0.163698, -0.222365,
		32.937935, 39.995110, 38.681515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651474, 39.853348, 39.596684>,  <32.265148, 39.880520, 38.837170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651474, 39.853348, 39.596684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.929928, 40.013096, 39.358055>,  <33.097000, 40.108944, 39.214878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.929928, 40.013096, 39.358055>,  <32.651474, 39.853348, 39.596684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929928, 40.013096, 39.358055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414823, 0.454457, 0.788283,
		0.585936, -0.796222, 0.150693,
		0.696132, 0.399373, -0.596574,
		33.138767, 40.132908, 39.179085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289547, 39.797962, 39.860813>,  <32.651474, 39.853348, 39.596684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289547, 39.797962, 39.860813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303238, 40.123104, 39.628231>,  <33.311451, 40.318192, 39.488682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303238, 40.123104, 39.628231>,  <33.289547, 39.797962, 39.860813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303238, 40.123104, 39.628231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216355, 0.561972, 0.798359,
		0.975715, -0.153123, -0.156634,
		0.034223, 0.812859, -0.581454,
		33.313503, 40.366962, 39.453796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828152, 40.147907, 40.117935>,  <33.289547, 39.797962, 39.860813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828152, 40.147907, 40.117935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645206, 40.415394, 39.883453>,  <33.535439, 40.575886, 39.742764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645206, 40.415394, 39.883453>,  <33.828152, 40.147907, 40.117935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645206, 40.415394, 39.883453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323083, 0.739098, 0.591059,
		0.828513, 0.080937, -0.554089,
		-0.457365, 0.668717, -0.586203,
		33.507996, 40.616009, 39.707592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352566, 40.626472, 40.030289>,  <33.828152, 40.147907, 40.117935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352566, 40.626472, 40.030289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996815, 40.791191, 39.950859>,  <33.783363, 40.890022, 39.903202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996815, 40.791191, 39.950859>,  <34.352566, 40.626472, 40.030289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996815, 40.791191, 39.950859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251770, 0.803724, 0.539110,
		0.381598, 0.429479, -0.818493,
		-0.889379, 0.411795, -0.198570,
		33.730000, 40.914730, 39.891289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474709, 41.321064, 39.994984>,  <34.352566, 40.626472, 40.030289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474709, 41.321064, 39.994984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080448, 41.298645, 40.058666>,  <33.843891, 41.285194, 40.096874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080448, 41.298645, 40.058666>,  <34.474709, 41.321064, 39.994984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080448, 41.298645, 40.058666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085668, 0.646583, 0.758018,
		-0.145426, 0.760782, -0.632504,
		-0.985653, -0.056051, 0.159205,
		33.784752, 41.281830, 40.106426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336445, 41.993813, 40.286186>,  <34.474709, 41.321064, 39.994984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336445, 41.993813, 40.286186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004097, 41.789932, 40.375500>,  <33.804688, 41.667603, 40.429089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004097, 41.789932, 40.375500>,  <34.336445, 41.993813, 40.286186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004097, 41.789932, 40.375500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164418, 0.608203, 0.776567,
		-0.531616, 0.608518, -0.589144,
		-0.830874, -0.509701, 0.223280,
		33.754833, 41.637020, 40.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731293, 42.491409, 40.368435>,  <34.336445, 41.993813, 40.286186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731293, 42.491409, 40.368435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664085, 42.158009, 40.578976>,  <33.623760, 41.957970, 40.705299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664085, 42.158009, 40.578976>,  <33.731293, 42.491409, 40.368435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664085, 42.158009, 40.578976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206902, 0.551867, 0.807858,
		-0.963826, 0.026834, -0.265178,
		-0.168021, -0.833500, 0.526352,
		33.613678, 41.907959, 40.736881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083519, 42.664486, 40.911552>,  <33.731293, 42.491409, 40.368435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083519, 42.664486, 40.911552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.248749, 42.328518, 41.052349>,  <33.347889, 42.126938, 41.136829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.248749, 42.328518, 41.052349>,  <33.083519, 42.664486, 40.911552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248749, 42.328518, 41.052349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221366, 0.282314, 0.933432,
		-0.883382, -0.463499, -0.069312,
		0.413077, -0.839921, 0.351994,
		33.372673, 42.076542, 41.157948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608475, 42.234638, 41.410088>,  <33.083519, 42.664486, 40.911552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608475, 42.234638, 41.410088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982349, 42.123589, 41.498894>,  <33.206673, 42.056957, 41.552177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982349, 42.123589, 41.498894>,  <32.608475, 42.234638, 41.410088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982349, 42.123589, 41.498894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231524, -0.001509, 0.972828,
		-0.269748, -0.960688, -0.065688,
		0.934683, -0.277627, 0.222015,
		33.262753, 42.040302, 41.565498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496620, 42.029247, 42.101814>,  <32.608475, 42.234638, 41.410088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496620, 42.029247, 42.101814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896015, 42.024593, 42.080341>,  <33.135654, 42.021801, 42.067459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896015, 42.024593, 42.080341>,  <32.496620, 42.029247, 42.101814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896015, 42.024593, 42.080341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054716, 0.125679, 0.990561,
		-0.004780, -0.992002, 0.126126,
		0.998490, -0.011636, -0.053678,
		33.195560, 42.021103, 42.064240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710037, 41.670742, 42.659782>,  <32.496620, 42.029247, 42.101814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710037, 41.670742, 42.659782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044476, 41.866589, 42.560806>,  <33.245136, 41.984097, 42.501423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044476, 41.866589, 42.560806>,  <32.710037, 41.670742, 42.659782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044476, 41.866589, 42.560806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113251, 0.287277, 0.951129,
		0.536771, -0.823254, 0.184740,
		0.836093, 0.489617, -0.247437,
		33.295303, 42.013474, 42.486576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388935, 41.441761, 43.014606>,  <32.710037, 41.670742, 42.659782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388935, 41.441761, 43.014606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450336, 41.825260, 42.918915>,  <33.487179, 42.055359, 42.861500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450336, 41.825260, 42.918915>,  <33.388935, 41.441761, 43.014606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450336, 41.825260, 42.918915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046207, 0.248797, 0.967453,
		0.987067, -0.137455, 0.082493,
		0.153505, 0.958753, -0.239228,
		33.496387, 42.112885, 42.847145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591160, 41.670593, 43.643402>,  <33.388935, 41.441761, 43.014606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591160, 41.670593, 43.643402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586636, 42.023903, 43.455914>,  <33.583923, 42.235889, 43.343422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586636, 42.023903, 43.455914>,  <33.591160, 41.670593, 43.643402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586636, 42.023903, 43.455914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161813, 0.464188, 0.870831,
		0.986757, -0.065998, -0.148174,
		-0.011308, 0.883274, -0.468720,
		33.583244, 42.288887, 43.315296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328812, 41.702271, 43.577095>,  <33.591160, 41.670593, 43.643402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328812, 41.702271, 43.577095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684128, 41.549980, 43.679848>,  <34.897316, 41.458607, 43.741501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684128, 41.549980, 43.679848>,  <34.328812, 41.702271, 43.577095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684128, 41.549980, 43.679848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110416, -0.365882, -0.924088,
		0.445815, 0.849221, -0.282970,
		0.888289, -0.380728, 0.256883,
		34.950615, 41.435760, 43.756912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727554, 41.940994, 43.040329>,  <34.328812, 41.702271, 43.577095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727554, 41.940994, 43.040329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902100, 41.616524, 43.196064>,  <35.006824, 41.421841, 43.289505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902100, 41.616524, 43.196064>,  <34.727554, 41.940994, 43.040329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902100, 41.616524, 43.196064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145192, -0.363553, -0.920189,
		0.887981, 0.458062, -0.040863,
		0.436359, -0.811177, 0.389335,
		35.033009, 41.373169, 43.312866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232410, 41.898800, 42.523880>,  <34.727554, 41.940994, 43.040329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232410, 41.898800, 42.523880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214375, 41.546051, 42.711609>,  <35.203552, 41.334400, 42.824245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214375, 41.546051, 42.711609>,  <35.232410, 41.898800, 42.523880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214375, 41.546051, 42.711609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226067, -0.466624, -0.855077,
		0.973068, 0.067547, 0.220400,
		-0.045086, -0.881873, 0.469327,
		35.200848, 41.281490, 42.852406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775951, 41.549309, 42.231228>,  <35.232410, 41.898800, 42.523880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775951, 41.549309, 42.231228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559612, 41.249847, 42.384594>,  <35.429810, 41.070171, 42.476612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559612, 41.249847, 42.384594>,  <35.775951, 41.549309, 42.231228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559612, 41.249847, 42.384594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353663, -0.615992, -0.703901,
		0.763154, -0.245106, 0.597929,
		-0.540850, -0.748650, 0.383412,
		35.397358, 41.025253, 42.499619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235161, 41.069656, 42.452469>,  <35.775951, 41.549309, 42.231228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235161, 41.069656, 42.452469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883694, 40.902466, 42.360176>,  <35.672813, 40.802151, 42.304802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883694, 40.902466, 42.360176>,  <36.235161, 41.069656, 42.452469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883694, 40.902466, 42.360176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429648, -0.481538, -0.763887,
		0.208180, -0.770337, 0.602695,
		-0.878671, -0.417973, -0.230727,
		35.620090, 40.777073, 42.290958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383823, 40.299316, 42.316223>,  <36.235161, 41.069656, 42.452469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383823, 40.299316, 42.316223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024471, 40.360397, 42.151493>,  <35.808861, 40.397045, 42.052654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024471, 40.360397, 42.151493>,  <36.383823, 40.299316, 42.316223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024471, 40.360397, 42.151493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296758, -0.480205, -0.825432,
		-0.323804, -0.863762, 0.386091,
		-0.898380, 0.152702, -0.411820,
		35.754959, 40.406208, 42.027946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112381, 39.584854, 42.082581>,  <36.383823, 40.299316, 42.316223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112381, 39.584854, 42.082581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937683, 39.874550, 41.869137>,  <35.832867, 40.048367, 41.741070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937683, 39.874550, 41.869137>,  <36.112381, 39.584854, 42.082581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937683, 39.874550, 41.869137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284680, -0.451416, -0.845684,
		-0.853355, -0.521252, -0.009024,
		-0.436741, 0.724238, -0.533608,
		35.806660, 40.091820, 41.709053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897530, 39.233021, 41.548885>,  <36.112381, 39.584854, 42.082581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897530, 39.233021, 41.548885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865608, 39.607487, 41.411934>,  <35.846455, 39.832169, 41.329765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865608, 39.607487, 41.411934>,  <35.897530, 39.233021, 41.548885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865608, 39.607487, 41.411934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287088, -0.307331, -0.907264,
		-0.954574, -0.170698, -0.244236,
		-0.079807, 0.936168, -0.342375,
		35.841667, 39.888336, 41.309223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464912, 39.116047, 40.932743>,  <35.897530, 39.233021, 41.548885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464912, 39.116047, 40.932743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.682503, 39.450867, 40.909275>,  <35.813057, 39.651760, 40.895195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.682503, 39.450867, 40.909275>,  <35.464912, 39.116047, 40.932743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682503, 39.450867, 40.909275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255155, -0.231617, -0.938749,
		-0.799368, 0.495685, -0.339571,
		0.543974, 0.837049, -0.058671,
		35.845695, 39.701981, 40.891674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323784, 39.298347, 40.251144>,  <35.464912, 39.116047, 40.932743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323784, 39.298347, 40.251144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619541, 39.555614, 40.330765>,  <35.796997, 39.709976, 40.378536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619541, 39.555614, 40.330765>,  <35.323784, 39.298347, 40.251144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619541, 39.555614, 40.330765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211536, 0.058755, -0.975603,
		-0.639175, 0.763465, -0.092610,
		0.739397, 0.643171, 0.199055,
		35.841362, 39.748566, 40.390480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204594, 39.966179, 39.852768>,  <35.323784, 39.298347, 40.251144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204594, 39.966179, 39.852768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596680, 39.942501, 39.928326>,  <35.831932, 39.928295, 39.973660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596680, 39.942501, 39.928326>,  <35.204594, 39.966179, 39.852768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596680, 39.942501, 39.928326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191843, 0.048800, -0.980212,
		0.048800, 0.997053, 0.059190,
		0.980212, -0.059190, 0.188896,
		35.890743, 39.924744, 39.984993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559940, 40.519642, 39.491318>,  <35.204594, 39.966179, 39.852768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559940, 40.519642, 39.491318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810452, 40.215954, 39.562157>,  <35.960758, 40.033741, 39.604660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810452, 40.215954, 39.562157>,  <35.559940, 40.519642, 39.491318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810452, 40.215954, 39.562157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218373, -0.047227, -0.974722,
		0.748392, 0.649118, 0.136216,
		0.626277, -0.759220, 0.177094,
		35.998333, 39.988190, 39.615284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031879, 40.550171, 38.953331>,  <35.559940, 40.519642, 39.491318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031879, 40.550171, 38.953331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.128788, 40.181870, 39.075657>,  <36.186932, 39.960888, 39.149052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.128788, 40.181870, 39.075657>,  <36.031879, 40.550171, 38.953331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128788, 40.181870, 39.075657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088072, -0.293029, -0.952039,
		0.966203, 0.257585, 0.010099,
		0.242272, -0.920752, 0.305812,
		36.201469, 39.905643, 39.167400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629768, 40.421242, 38.540684>,  <36.031879, 40.550171, 38.953331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629768, 40.421242, 38.540684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.477150, 40.070366, 38.657272>,  <36.385578, 39.859840, 38.727226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.477150, 40.070366, 38.657272>,  <36.629768, 40.421242, 38.540684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477150, 40.070366, 38.657272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162956, -0.374222, -0.912909,
		0.909871, -0.300823, 0.285728,
		-0.381550, -0.877191, 0.291473,
		36.362686, 39.807209, 38.744713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.345459, 30.294592, 27.238867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192383, 29.950815, 27.103275>,  <28.100538, 29.744549, 27.021921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192383, 29.950815, 27.103275>,  <28.345459, 30.294592, 27.238867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192383, 29.950815, 27.103275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865324, 0.204893, 0.457421,
		-0.323673, 0.468377, -0.822107,
		-0.382689, -0.859443, -0.338979,
		28.077576, 29.692982, 27.001581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731466, 30.445009, 26.940830>,  <28.345459, 30.294592, 27.238867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731466, 30.445009, 26.940830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716608, 30.067463, 27.072126>,  <27.707693, 29.840935, 27.150904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716608, 30.067463, 27.072126>,  <27.731466, 30.445009, 26.940830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716608, 30.067463, 27.072126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638834, 0.275013, 0.718512,
		-0.768448, -0.183001, -0.613188,
		-0.037146, -0.943864, 0.328240,
		27.705463, 29.784304, 27.170599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045391, 30.241190, 27.217894>,  <27.731466, 30.445009, 26.940830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045391, 30.241190, 27.217894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279453, 29.949715, 27.360220>,  <27.419891, 29.774830, 27.445616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279453, 29.949715, 27.360220>,  <27.045391, 30.241190, 27.217894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279453, 29.949715, 27.360220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551134, -0.035499, 0.833662,
		-0.594848, -0.683926, -0.422377,
		0.585157, -0.728688, 0.355818,
		27.455000, 29.731108, 27.466965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606945, 29.651228, 27.463896>,  <27.045391, 30.241190, 27.217894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606945, 29.651228, 27.463896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953234, 29.645870, 27.664036>,  <27.161007, 29.642656, 27.784121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953234, 29.645870, 27.664036>,  <26.606945, 29.651228, 27.463896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953234, 29.645870, 27.664036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494714, 0.129033, 0.859423,
		-0.076073, -0.991550, 0.105080,
		0.865719, -0.013394, 0.500350,
		27.212950, 29.641851, 27.814140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436810, 29.625282, 28.159843>,  <26.606945, 29.651228, 27.463896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436810, 29.625282, 28.159843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823084, 29.695322, 28.236563>,  <27.054850, 29.737347, 28.282595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823084, 29.695322, 28.236563>,  <26.436810, 29.625282, 28.159843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823084, 29.695322, 28.236563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248581, 0.409383, 0.877846,
		0.075191, -0.895403, 0.438863,
		0.965688, 0.175099, 0.191798,
		27.112791, 29.747852, 28.294102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555086, 29.417686, 28.865948>,  <26.436810, 29.625282, 28.159843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555086, 29.417686, 28.865948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842165, 29.682335, 28.779078>,  <27.014412, 29.841124, 28.726955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842165, 29.682335, 28.779078>,  <26.555086, 29.417686, 28.865948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842165, 29.682335, 28.779078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081529, 0.389564, 0.917384,
		0.691565, -0.640699, 0.333530,
		0.717698, 0.661623, -0.217174,
		27.057474, 29.880821, 28.713926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928852, 29.414822, 29.469776>,  <26.555086, 29.417686, 28.865948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928852, 29.414822, 29.469776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020767, 29.746424, 29.265835>,  <27.075916, 29.945385, 29.143471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020767, 29.746424, 29.265835>,  <26.928852, 29.414822, 29.469776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020767, 29.746424, 29.265835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171605, 0.550176, 0.817226,
		0.957992, -0.100294, 0.268685,
		0.229787, 0.829004, -0.509853,
		27.089703, 29.995125, 29.112879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261408, 29.873371, 29.986635>,  <26.928852, 29.414822, 29.469776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261408, 29.873371, 29.986635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.137762, 30.112345, 29.690657>,  <27.063576, 30.255730, 29.513069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.137762, 30.112345, 29.690657>,  <27.261408, 29.873371, 29.986635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137762, 30.112345, 29.690657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169992, 0.730811, 0.661074,
		0.935709, 0.330132, -0.124344,
		-0.309113, 0.597435, -0.739946,
		27.045029, 30.291574, 29.468674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567535, 30.448431, 30.159737>,  <27.261408, 29.873371, 29.986635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567535, 30.448431, 30.159737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281681, 30.563253, 29.904583>,  <27.110168, 30.632147, 29.751492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281681, 30.563253, 29.904583>,  <27.567535, 30.448431, 30.159737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281681, 30.563253, 29.904583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196815, 0.792562, 0.577157,
		0.671238, 0.538002, -0.509896,
		-0.714636, 0.287054, -0.637884,
		27.067291, 30.649370, 29.713219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579876, 31.203915, 30.043003>,  <27.567535, 30.448431, 30.159737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579876, 31.203915, 30.043003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209711, 31.104326, 29.928724>,  <26.987612, 31.044573, 29.860157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209711, 31.104326, 29.928724>,  <27.579876, 31.203915, 30.043003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209711, 31.104326, 29.928724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346097, 0.862344, 0.369568,
		0.154355, 0.440881, -0.884194,
		-0.925414, -0.248972, -0.285695,
		26.932087, 31.029634, 29.843016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373755, 31.842062, 29.906059>,  <27.579876, 31.203915, 30.043003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373755, 31.842062, 29.906059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030920, 31.636330, 29.917843>,  <26.825220, 31.512890, 29.924913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030920, 31.636330, 29.917843>,  <27.373755, 31.842062, 29.906059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030920, 31.636330, 29.917843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462746, 0.793734, 0.394782,
		-0.226431, 0.324730, -0.918302,
		-0.857085, -0.514332, 0.029458,
		26.773794, 31.482031, 29.926680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884537, 32.365929, 29.783756>,  <27.373755, 31.842062, 29.906059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884537, 32.365929, 29.783756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678734, 32.076931, 29.968491>,  <26.555252, 31.903534, 30.079330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678734, 32.076931, 29.968491>,  <26.884537, 32.365929, 29.783756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678734, 32.076931, 29.968491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523715, 0.691232, 0.497916,
		-0.678975, 0.014311, -0.734022,
		-0.514505, -0.722491, 0.461835,
		26.524382, 31.860184, 30.107040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230984, 32.569794, 29.744799>,  <26.884537, 32.365929, 29.783756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230984, 32.569794, 29.744799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227970, 32.300648, 30.040689>,  <26.226162, 32.139160, 30.218224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227970, 32.300648, 30.040689>,  <26.230984, 32.569794, 29.744799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227970, 32.300648, 30.040689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530154, 0.629913, 0.567580,
		-0.847868, -0.387891, -0.361470,
		-0.007536, -0.672867, 0.739725,
		26.225710, 32.098789, 30.262608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584003, 32.553856, 29.987028>,  <26.230984, 32.569794, 29.744799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584003, 32.553856, 29.987028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818888, 32.419998, 30.281836>,  <25.959818, 32.339684, 30.458719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818888, 32.419998, 30.281836>,  <25.584003, 32.553856, 29.987028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818888, 32.419998, 30.281836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532844, 0.525604, 0.663188,
		-0.609313, -0.782146, 0.130326,
		0.587210, -0.334646, 0.737019,
		25.995050, 32.319603, 30.502941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080223, 32.433666, 30.532427>,  <25.584003, 32.553856, 29.987028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080223, 32.433666, 30.532427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.443354, 32.459995, 30.698086>,  <25.661232, 32.475792, 30.797482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.443354, 32.459995, 30.698086>,  <25.080223, 32.433666, 30.532427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443354, 32.459995, 30.698086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397024, 0.452825, 0.798324,
		-0.134987, -0.889166, 0.437220,
		0.907827, 0.065823, 0.414146,
		25.715702, 32.479744, 30.822329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827625, 32.466232, 31.167681>,  <25.080223, 32.433666, 30.532427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827625, 32.466232, 31.167681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.215147, 32.553860, 31.214024>,  <25.447660, 32.606438, 31.241829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.215147, 32.553860, 31.214024>,  <24.827625, 32.466232, 31.167681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215147, 32.553860, 31.214024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220747, 0.550389, 0.805197,
		0.112630, -0.805655, 0.581579,
		0.968806, 0.219071, 0.115856,
		25.505789, 32.619579, 31.248781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825441, 32.585674, 31.817945>,  <24.827625, 32.466232, 31.167681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825441, 32.585674, 31.817945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.161343, 32.762974, 31.692507>,  <25.362885, 32.869354, 31.617243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.161343, 32.762974, 31.692507>,  <24.825441, 32.585674, 31.817945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161343, 32.762974, 31.692507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065814, 0.656396, 0.751540,
		0.538962, -0.610470, 0.580384,
		0.839755, 0.443249, -0.313595,
		25.413269, 32.895950, 31.598429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271605, 32.690193, 32.352905>,  <24.825441, 32.585674, 31.817945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271605, 32.690193, 32.352905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.354315, 32.965206, 32.074471>,  <25.403940, 33.130215, 31.907410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.354315, 32.965206, 32.074471>,  <25.271605, 32.690193, 32.352905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354315, 32.965206, 32.074471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001101, 0.711302, 0.702886,
		0.978388, -0.146106, 0.146322,
		0.206775, 0.687534, -0.696090,
		25.416348, 33.171467, 31.865644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919872, 33.037029, 32.591667>,  <25.271605, 32.690193, 32.352905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919872, 33.037029, 32.591667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.697245, 33.247429, 32.334435>,  <25.563669, 33.373669, 32.180092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.697245, 33.247429, 32.334435>,  <25.919872, 33.037029, 32.591667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697245, 33.247429, 32.334435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059113, 0.797165, 0.600861,
		0.828697, 0.296405, -0.474770,
		-0.556567, 0.525997, -0.643086,
		25.530275, 33.405228, 32.141510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302120, 33.690990, 32.559761>,  <25.919872, 33.037029, 32.591667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302120, 33.690990, 32.559761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.943811, 33.758221, 32.395157>,  <25.728825, 33.798557, 32.296394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.943811, 33.758221, 32.395157>,  <26.302120, 33.690990, 32.559761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943811, 33.758221, 32.395157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032738, 0.898301, 0.438159,
		0.443302, 0.405964, -0.799172,
		-0.895774, 0.168073, -0.411509,
		25.675079, 33.808643, 32.271706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375822, 34.348675, 32.238281>,  <26.302120, 33.690990, 32.559761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375822, 34.348675, 32.238281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984533, 34.295486, 32.302032>,  <25.749760, 34.263573, 32.340282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984533, 34.295486, 32.302032>,  <26.375822, 34.348675, 32.238281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984533, 34.295486, 32.302032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055613, 0.907677, 0.415969,
		-0.199976, 0.398047, -0.895303,
		-0.978221, -0.132974, 0.159377,
		25.691067, 34.255592, 32.349846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922899, 34.849506, 31.934980>,  <26.375822, 34.348675, 32.238281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922899, 34.849506, 31.934980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284239, 35.001587, 31.855576>,  <27.501043, 35.092834, 31.807932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284239, 35.001587, 31.855576>,  <26.922899, 34.849506, 31.934980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284239, 35.001587, 31.855576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321978, 0.295361, -0.899495,
		-0.283359, 0.876474, 0.389231,
		0.903348, 0.380204, -0.198512,
		27.555243, 35.115646, 31.796022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845520, 35.413872, 31.404610>,  <26.922899, 34.849506, 31.934980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845520, 35.413872, 31.404610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234026, 35.325100, 31.370224>,  <27.467129, 35.271835, 31.349592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234026, 35.325100, 31.370224>,  <26.845520, 35.413872, 31.404610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234026, 35.325100, 31.370224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082987, 0.022714, -0.996292,
		0.223064, 0.974797, 0.003643,
		0.971265, -0.221934, -0.085962,
		27.525406, 35.258518, 31.344435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215700, 36.005688, 31.015228>,  <26.845520, 35.413872, 31.404610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215700, 36.005688, 31.015228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444510, 35.677700, 31.006832>,  <27.581795, 35.480907, 31.001795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444510, 35.677700, 31.006832>,  <27.215700, 36.005688, 31.015228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444510, 35.677700, 31.006832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183451, 0.152835, -0.971075,
		0.799459, 0.551627, 0.237850,
		0.572023, -0.819969, -0.020989,
		27.616117, 35.431709, 31.000536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660004, 36.207020, 30.640968>,  <27.215700, 36.005688, 31.015228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660004, 36.207020, 30.640968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701973, 35.809814, 30.619392>,  <27.727154, 35.571491, 30.606447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701973, 35.809814, 30.619392>,  <27.660004, 36.207020, 30.640968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701973, 35.809814, 30.619392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340488, 0.086831, -0.936231,
		0.934377, 0.079866, 0.347220,
		0.104923, -0.993016, -0.053940,
		27.733450, 35.511909, 30.603210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196758, 36.164333, 30.214859>,  <27.660004, 36.207020, 30.640968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196758, 36.164333, 30.214859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.012325, 35.809395, 30.213531>,  <27.901665, 35.596432, 30.212734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.012325, 35.809395, 30.213531>,  <28.196758, 36.164333, 30.214859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012325, 35.809395, 30.213531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232141, -0.117013, -0.965618,
		0.856454, -0.446001, 0.259943,
		-0.461083, -0.887351, -0.003319,
		27.874001, 35.543190, 30.212536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522354, 35.869957, 29.661928>,  <28.196758, 36.164333, 30.214859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522354, 35.869957, 29.661928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193859, 35.645706, 29.704386>,  <27.996761, 35.511154, 29.729860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193859, 35.645706, 29.704386>,  <28.522354, 35.869957, 29.661928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193859, 35.645706, 29.704386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000065, -0.185930, -0.982563,
		0.570586, -0.806925, 0.152656,
		-0.821238, -0.560627, 0.106142,
		27.947487, 35.477520, 29.736229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662022, 35.253365, 29.377968>,  <28.522354, 35.869957, 29.661928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662022, 35.253365, 29.377968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265947, 35.307156, 29.362734>,  <28.028303, 35.339432, 29.353594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265947, 35.307156, 29.362734>,  <28.662022, 35.253365, 29.377968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265947, 35.307156, 29.362734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013120, -0.181861, -0.983237,
		-0.139148, -0.974085, 0.178311,
		-0.990184, 0.134477, -0.038085,
		27.968893, 35.347500, 29.351309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451561, 34.552563, 29.108730>,  <28.662022, 35.253365, 29.377968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451561, 34.552563, 29.108730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158936, 34.816429, 29.039845>,  <27.983360, 34.974747, 28.998512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158936, 34.816429, 29.039845>,  <28.451561, 34.552563, 29.108730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158936, 34.816429, 29.039845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071696, -0.325636, -0.942773,
		-0.677993, -0.677352, 0.285519,
		-0.731564, 0.659664, -0.172216,
		27.939466, 35.014328, 28.988180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986664, 34.189194, 28.708630>,  <28.451561, 34.552563, 29.108730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986664, 34.189194, 28.708630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848366, 34.556431, 28.631104>,  <27.765387, 34.776772, 28.584589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848366, 34.556431, 28.631104>,  <27.986664, 34.189194, 28.708630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848366, 34.556431, 28.631104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118166, -0.247509, -0.961653,
		-0.930858, -0.309584, 0.194063,
		-0.345744, 0.918094, -0.193814,
		27.744642, 34.831860, 28.572960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364603, 34.103264, 28.347248>,  <27.986664, 34.189194, 28.708630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364603, 34.103264, 28.347248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493229, 34.463760, 28.231070>,  <27.570404, 34.680058, 28.161362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493229, 34.463760, 28.231070>,  <27.364603, 34.103264, 28.347248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493229, 34.463760, 28.231070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012385, -0.302708, -0.953003,
		-0.946806, 0.310050, -0.086179,
		0.321566, 0.901242, -0.290446,
		27.589699, 34.734135, 28.143936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926207, 34.325397, 27.847576>,  <27.364603, 34.103264, 28.347248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926207, 34.325397, 27.847576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229694, 34.579475, 27.789780>,  <27.411787, 34.731922, 27.755102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229694, 34.579475, 27.789780>,  <26.926207, 34.325397, 27.847576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229694, 34.579475, 27.789780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091053, -0.323042, -0.941994,
		-0.645024, 0.701552, -0.302934,
		0.758718, 0.635192, -0.144491,
		27.457310, 34.770035, 27.746431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787727, 34.750916, 27.228466>,  <26.926207, 34.325397, 27.847576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787727, 34.750916, 27.228466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.180147, 34.805393, 27.283596>,  <27.415598, 34.838081, 27.316673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.180147, 34.805393, 27.283596>,  <26.787727, 34.750916, 27.228466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180147, 34.805393, 27.283596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156990, -0.141779, -0.977370,
		-0.113575, 0.980484, -0.160474,
		0.981048, 0.136198, 0.137824,
		27.474461, 34.846252, 27.324944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053871, 35.174992, 26.671606>,  <26.787727, 34.750916, 27.228466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053871, 35.174992, 26.671606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343313, 34.924957, 26.788683>,  <27.516977, 34.774937, 26.858929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343313, 34.924957, 26.788683>,  <27.053871, 35.174992, 26.671606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343313, 34.924957, 26.788683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091609, -0.333332, -0.938348,
		0.684110, 0.705805, -0.183937,
		0.723603, -0.625083, 0.292694,
		27.560394, 34.737431, 26.876492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342617, 35.002495, 26.045729>,  <27.053871, 35.174992, 26.671606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342617, 35.002495, 26.045729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.519691, 34.735413, 26.285126>,  <27.625937, 34.575161, 26.428764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.519691, 34.735413, 26.285126>,  <27.342617, 35.002495, 26.045729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519691, 34.735413, 26.285126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148806, -0.603496, -0.783358,
		0.884243, 0.435842, -0.167801,
		0.442687, -0.667709, 0.598493,
		27.652498, 34.535099, 26.464674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789967, 34.709064, 25.545126>,  <27.342617, 35.002495, 26.045729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789967, 34.709064, 25.545126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801506, 34.471004, 25.866364>,  <27.808430, 34.328167, 26.059107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801506, 34.471004, 25.866364>,  <27.789967, 34.709064, 25.545126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801506, 34.471004, 25.866364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066105, -0.802807, -0.592563,
		0.997396, -0.035994, -0.062502,
		0.028848, -0.595152, 0.803096,
		27.810160, 34.292458, 26.107292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428226, 34.326160, 25.573612>,  <27.789967, 34.709064, 25.545126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428226, 34.326160, 25.573612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146078, 34.127815, 25.776222>,  <27.976789, 34.008808, 25.897789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146078, 34.127815, 25.776222>,  <28.428226, 34.326160, 25.573612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146078, 34.127815, 25.776222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006380, -0.710115, -0.704057,
		0.708810, -0.499853, 0.497731,
		-0.705371, -0.495867, 0.506526,
		27.934467, 33.979053, 25.928181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562012, 33.626198, 25.473217>,  <28.428226, 34.326160, 25.573612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562012, 33.626198, 25.473217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191265, 33.573856, 25.613955>,  <27.968817, 33.542450, 25.698397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191265, 33.573856, 25.613955>,  <28.562012, 33.626198, 25.473217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191265, 33.573856, 25.613955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069293, -0.861530, -0.502956,
		0.368942, -0.490553, 0.789455,
		-0.926866, -0.130858, 0.351846,
		27.913206, 33.534599, 25.719509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540260, 32.943024, 25.823063>,  <28.562012, 33.626198, 25.473217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540260, 32.943024, 25.823063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168320, 33.048656, 25.720587>,  <27.945154, 33.112038, 25.659101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168320, 33.048656, 25.720587>,  <28.540260, 32.943024, 25.823063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168320, 33.048656, 25.720587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133044, -0.890520, -0.435057,
		-0.343033, -0.370454, 0.863187,
		-0.929854, 0.264080, -0.256191,
		27.889364, 33.127880, 25.643730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114618, 32.374729, 25.947472>,  <28.540260, 32.943024, 25.823063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114618, 32.374729, 25.947472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881361, 32.575256, 25.691776>,  <27.741407, 32.695572, 25.538359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881361, 32.575256, 25.691776>,  <28.114618, 32.374729, 25.947472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881361, 32.575256, 25.691776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212281, -0.853578, -0.475754,
		-0.784144, -0.141734, 0.604177,
		-0.583143, 0.501315, -0.639240,
		27.706417, 32.725651, 25.500004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544380, 31.954592, 25.890575>,  <28.114618, 32.374729, 25.947472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544380, 31.954592, 25.890575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549297, 32.196171, 25.571804>,  <27.552248, 32.341118, 25.380541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549297, 32.196171, 25.571804>,  <27.544380, 31.954592, 25.890575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549297, 32.196171, 25.571804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203416, -0.778812, -0.593359,
		-0.979015, 0.169402, 0.113278,
		0.012294, 0.603950, -0.796928,
		27.552986, 32.377357, 25.332726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896498, 31.789856, 25.519056>,  <27.544380, 31.954592, 25.890575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896498, 31.789856, 25.519056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118301, 31.975899, 25.243029>,  <27.251385, 32.087524, 25.077412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118301, 31.975899, 25.243029>,  <26.896498, 31.789856, 25.519056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118301, 31.975899, 25.243029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333979, -0.635140, -0.696458,
		-0.762218, 0.616662, -0.196856,
		0.554511, 0.465107, -0.690068,
		27.284655, 32.115433, 25.036009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.630966, 39.573250, 45.153526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.239586, 39.588085, 45.234776>,  <37.004757, 39.596985, 45.283527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.239586, 39.588085, 45.234776>,  <37.630966, 39.573250, 45.153526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239586, 39.588085, 45.234776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194617, 0.494363, 0.847189,
		-0.068998, 0.868464, -0.490927,
		-0.978450, 0.037088, 0.203127,
		36.946053, 39.599213, 45.295715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557343, 40.200912, 45.451115>,  <37.630966, 39.573250, 45.153526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557343, 40.200912, 45.451115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197006, 40.060810, 45.553726>,  <36.980804, 39.976749, 45.615292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197006, 40.060810, 45.553726>,  <37.557343, 40.200912, 45.451115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197006, 40.060810, 45.553726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022360, 0.627515, 0.778283,
		-0.433572, 0.695374, -0.573123,
		-0.900841, -0.350257, 0.256524,
		36.926754, 39.955734, 45.630684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116085, 40.774925, 45.610653>,  <37.557343, 40.200912, 45.451115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116085, 40.774925, 45.610653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954132, 40.473213, 45.817390>,  <36.856960, 40.292187, 45.941433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954132, 40.473213, 45.817390>,  <37.116085, 40.774925, 45.610653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954132, 40.473213, 45.817390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002404, 0.566126, 0.824315,
		-0.914365, 0.332510, -0.231028,
		-0.404884, -0.754281, 0.516846,
		36.832668, 40.246929, 45.972443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490044, 41.007622, 45.956673>,  <37.116085, 40.774925, 45.610653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490044, 41.007622, 45.956673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643692, 40.688610, 46.142746>,  <36.735882, 40.497204, 46.254391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643692, 40.688610, 46.142746>,  <36.490044, 41.007622, 45.956673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643692, 40.688610, 46.142746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003389, 0.502619, 0.864501,
		-0.923276, -0.333651, 0.190364,
		0.384122, -0.797528, 0.465186,
		36.758930, 40.449352, 46.282303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104748, 41.085388, 46.595436>,  <36.490044, 41.007622, 45.956673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104748, 41.085388, 46.595436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407681, 40.830078, 46.650642>,  <36.589439, 40.676891, 46.683765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407681, 40.830078, 46.650642>,  <36.104748, 41.085388, 46.595436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407681, 40.830078, 46.650642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094582, 0.316324, 0.943924,
		-0.646142, -0.701813, 0.299933,
		0.757334, -0.638277, 0.138012,
		36.634880, 40.638596, 46.692047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897202, 40.607265, 47.155819>,  <36.104748, 41.085388, 46.595436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897202, 40.607265, 47.155819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294453, 40.628963, 47.114353>,  <36.532803, 40.641983, 47.089474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294453, 40.628963, 47.114353>,  <35.897202, 40.607265, 47.155819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294453, 40.628963, 47.114353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089100, 0.223590, 0.970602,
		0.075822, -0.973173, 0.217222,
		0.993133, 0.054239, -0.103663,
		36.592392, 40.645237, 47.083256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110546, 40.267086, 47.734749>,  <35.897202, 40.607265, 47.155819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110546, 40.267086, 47.734749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427074, 40.484554, 47.622875>,  <36.616993, 40.615036, 47.555752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427074, 40.484554, 47.622875>,  <36.110546, 40.267086, 47.734749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427074, 40.484554, 47.622875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129067, 0.298592, 0.945613,
		0.597618, -0.784385, 0.166112,
		0.791325, 0.543675, -0.279682,
		36.664471, 40.647655, 47.538971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718697, 40.124298, 48.234901>,  <36.110546, 40.267086, 47.734749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718697, 40.124298, 48.234901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791622, 40.474258, 48.055431>,  <36.835377, 40.684235, 47.947750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791622, 40.474258, 48.055431>,  <36.718697, 40.124298, 48.234901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791622, 40.474258, 48.055431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180393, 0.418815, 0.889973,
		0.966551, -0.243192, -0.081470,
		0.182313, 0.874901, -0.448677,
		36.846317, 40.736729, 47.920830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422924, 40.331985, 48.334248>,  <36.718697, 40.124298, 48.234901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422924, 40.331985, 48.334248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199577, 40.653080, 48.250496>,  <37.065567, 40.845737, 48.200245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199577, 40.653080, 48.250496>,  <37.422924, 40.331985, 48.334248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199577, 40.653080, 48.250496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317795, 0.440106, 0.839829,
		0.766309, 0.402396, -0.500848,
		-0.558370, 0.802735, -0.209378,
		37.032066, 40.893902, 48.187683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812897, 40.881260, 48.605106>,  <37.422924, 40.331985, 48.334248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812897, 40.881260, 48.605106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442932, 41.027370, 48.562958>,  <37.220951, 41.115036, 48.537670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442932, 41.027370, 48.562958>,  <37.812897, 40.881260, 48.605106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442932, 41.027370, 48.562958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117323, 0.537886, 0.834814,
		0.361619, 0.759769, -0.540354,
		-0.924914, 0.365281, -0.105372,
		37.165459, 41.136955, 48.531345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918091, 41.489731, 48.836700>,  <37.812897, 40.881260, 48.605106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918091, 41.489731, 48.836700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518692, 41.468075, 48.833141>,  <37.279053, 41.455082, 48.831005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518692, 41.468075, 48.833141>,  <37.918091, 41.489731, 48.836700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518692, 41.468075, 48.833141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042234, 0.655027, 0.754424,
		-0.035015, 0.753664, -0.656327,
		-0.998494, -0.054136, -0.008895,
		37.219143, 41.451836, 48.830471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616158, 42.165417, 48.920212>,  <37.918091, 41.489731, 48.836700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616158, 42.165417, 48.920212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.293575, 41.942940, 49.000484>,  <37.100025, 41.809452, 49.048649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.293575, 41.942940, 49.000484>,  <37.616158, 42.165417, 48.920212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293575, 41.942940, 49.000484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194771, 0.570333, 0.797988,
		-0.558289, 0.604459, -0.568280,
		-0.806460, -0.556193, 0.200680,
		37.051636, 41.776081, 49.060688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240353, 42.655968, 49.182491>,  <37.616158, 42.165417, 48.920212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240353, 42.655968, 49.182491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088608, 42.313148, 49.321949>,  <36.997562, 42.107456, 49.405624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088608, 42.313148, 49.321949>,  <37.240353, 42.655968, 49.182491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088608, 42.313148, 49.321949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321961, 0.475536, 0.818662,
		-0.867427, 0.198316, -0.456335,
		-0.379357, -0.857051, 0.348642,
		36.974800, 42.056034, 49.426540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438828, 42.689163, 49.389488>,  <37.240353, 42.655968, 49.182491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438828, 42.689163, 49.389488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668251, 42.464211, 49.627735>,  <36.805904, 42.329239, 49.770683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668251, 42.464211, 49.627735>,  <36.438828, 42.689163, 49.389488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668251, 42.464211, 49.627735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472128, 0.367245, 0.801390,
		-0.669426, -0.740849, -0.054881,
		0.573555, -0.562382, 0.595619,
		36.840317, 42.295494, 49.806419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793266, 43.102161, 49.097755>,  <36.438828, 42.689163, 49.389488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793266, 43.102161, 49.097755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576748, 43.368526, 48.892403>,  <35.446838, 43.528343, 48.769192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576748, 43.368526, 48.892403>,  <35.793266, 43.102161, 49.097755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576748, 43.368526, 48.892403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050256, -0.583853, -0.810303,
		-0.839329, -0.464413, 0.282571,
		-0.541295, 0.665910, -0.513384,
		35.414360, 43.568298, 48.738388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236305, 42.811462, 48.806709>,  <35.793266, 43.102161, 49.097755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236305, 42.811462, 48.806709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309902, 43.136097, 48.584908>,  <35.354061, 43.330879, 48.451828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309902, 43.136097, 48.584908>,  <35.236305, 42.811462, 48.806709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309902, 43.136097, 48.584908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116508, -0.542147, -0.832167,
		-0.975998, 0.217717, -0.005195,
		0.183993, 0.811588, -0.554501,
		35.365101, 43.379574, 48.418556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624752, 42.944836, 48.342899>,  <35.236305, 42.811462, 48.806709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624752, 42.944836, 48.342899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929817, 43.129547, 48.161747>,  <35.112858, 43.240376, 48.053055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929817, 43.129547, 48.161747>,  <34.624752, 42.944836, 48.342899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929817, 43.129547, 48.161747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210217, -0.485204, -0.848755,
		-0.611676, 0.742521, -0.272975,
		0.762667, 0.461779, -0.452878,
		35.158619, 43.268082, 48.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428242, 43.191872, 47.584805>,  <34.624752, 42.944836, 48.342899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428242, 43.191872, 47.584805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826935, 43.222019, 47.573158>,  <35.066151, 43.240108, 47.566170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826935, 43.222019, 47.573158>,  <34.428242, 43.191872, 47.584805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826935, 43.222019, 47.573158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004101, -0.312684, -0.949848,
		-0.080696, 0.946862, -0.311353,
		0.996730, 0.075372, -0.029116,
		35.125954, 43.244629, 47.564423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525799, 43.545738, 46.943237>,  <34.428242, 43.191872, 47.584805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525799, 43.545738, 46.943237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862164, 43.362492, 47.058475>,  <35.063980, 43.252544, 47.127617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862164, 43.362492, 47.058475>,  <34.525799, 43.545738, 46.943237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862164, 43.362492, 47.058475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172534, -0.277624, -0.945070,
		0.512937, 0.844423, -0.154415,
		0.840909, -0.458120, 0.288096,
		35.114437, 43.225056, 47.144905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150734, 43.811001, 46.498131>,  <34.525799, 43.545738, 46.943237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150734, 43.811001, 46.498131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213032, 43.439404, 46.632416>,  <35.250412, 43.216446, 46.712986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213032, 43.439404, 46.632416>,  <35.150734, 43.811001, 46.498131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213032, 43.439404, 46.632416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258526, -0.289682, -0.921547,
		0.953366, 0.230320, 0.195053,
		0.155747, -0.928998, 0.335717,
		35.259754, 43.160706, 46.733131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789806, 43.643940, 46.176346>,  <35.150734, 43.811001, 46.498131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789806, 43.643940, 46.176346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636551, 43.291164, 46.286179>,  <35.544598, 43.079498, 46.352077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636551, 43.291164, 46.286179>,  <35.789806, 43.643940, 46.176346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636551, 43.291164, 46.286179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375752, -0.420365, -0.825895,
		0.843812, -0.213256, 0.492447,
		-0.383135, -0.881938, 0.274578,
		35.521610, 43.026585, 46.368553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301231, 43.178440, 45.952019>,  <35.789806, 43.643940, 46.176346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301231, 43.178440, 45.952019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985752, 42.940887, 46.015583>,  <35.796463, 42.798355, 46.053722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985752, 42.940887, 46.015583>,  <36.301231, 43.178440, 45.952019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985752, 42.940887, 46.015583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235681, -0.530817, -0.814057,
		0.567806, -0.604596, 0.558623,
		-0.788702, -0.593883, 0.158909,
		35.749142, 42.762722, 46.063255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558769, 42.453678, 45.848045>,  <36.301231, 43.178440, 45.952019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558769, 42.453678, 45.848045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160095, 42.428940, 45.826935>,  <35.920891, 42.414097, 45.814266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160095, 42.428940, 45.826935>,  <36.558769, 42.453678, 45.848045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160095, 42.428940, 45.826935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078764, -0.573374, -0.815499,
		0.020173, -0.816956, 0.576347,
		-0.996689, -0.061847, -0.052780,
		35.861088, 42.410385, 45.811100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317688, 41.736549, 45.661289>,  <36.558769, 42.453678, 45.848045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317688, 41.736549, 45.661289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995266, 41.955574, 45.571442>,  <35.801815, 42.086990, 45.517532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995266, 41.955574, 45.571442>,  <36.317688, 41.736549, 45.661289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995266, 41.955574, 45.571442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065871, -0.460160, -0.885389,
		-0.588169, -0.698873, 0.406981,
		-0.806051, 0.547567, -0.224616,
		35.753452, 42.119843, 45.504059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778698, 41.322353, 45.695431>,  <36.317688, 41.736549, 45.661289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778698, 41.322353, 45.695431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671326, 41.612003, 45.441315>,  <35.606903, 41.785793, 45.288845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671326, 41.612003, 45.441315>,  <35.778698, 41.322353, 45.695431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671326, 41.612003, 45.441315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172161, -0.684940, -0.707968,
		-0.947790, -0.080668, 0.308524,
		-0.268431, 0.724120, -0.635291,
		35.590797, 41.829239, 45.250729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118366, 41.071625, 45.336086>,  <35.778698, 41.322353, 45.695431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118366, 41.071625, 45.336086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230236, 41.380142, 45.107388>,  <35.297356, 41.565254, 44.970169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230236, 41.380142, 45.107388>,  <35.118366, 41.071625, 45.336086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230236, 41.380142, 45.107388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441789, -0.425331, -0.789883,
		-0.852412, 0.473497, 0.221796,
		0.279671, 0.771294, -0.571743,
		35.314137, 41.611530, 44.935863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577824, 41.242241, 44.909203>,  <35.118366, 41.071625, 45.336086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577824, 41.242241, 44.909203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872112, 41.428154, 44.712151>,  <35.048687, 41.539703, 44.593918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872112, 41.428154, 44.712151>,  <34.577824, 41.242241, 44.909203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872112, 41.428154, 44.712151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314613, -0.409596, -0.856300,
		-0.599772, 0.784990, -0.155124,
		0.735725, 0.464781, -0.492632,
		35.092831, 41.567589, 44.564362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273106, 41.528233, 44.329803>,  <34.577824, 41.242241, 44.909203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273106, 41.528233, 44.329803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664093, 41.504498, 44.248772>,  <34.898685, 41.490257, 44.200153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664093, 41.504498, 44.248772>,  <34.273106, 41.528233, 44.329803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664093, 41.504498, 44.248772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206295, -0.471889, -0.857183,
		-0.044731, 0.879659, -0.473497,
		0.977467, -0.059337, -0.202577,
		34.957333, 41.486698, 44.188000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070080, 42.186714, 44.115211>,  <34.273106, 41.528233, 44.329803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070080, 42.186714, 44.115211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824223, 42.404285, 43.886700>,  <33.676708, 42.534828, 43.749592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824223, 42.404285, 43.886700>,  <34.070080, 42.186714, 44.115211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824223, 42.404285, 43.886700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226029, 0.572413, 0.788196,
		0.755727, 0.613586, -0.228888,
		-0.614645, 0.543926, -0.571276,
		33.639828, 42.567463, 43.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274109, 42.875858, 44.222931>,  <34.070080, 42.186714, 44.115211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274109, 42.875858, 44.222931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911552, 42.917946, 44.059284>,  <33.694019, 42.943199, 43.961094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911552, 42.917946, 44.059284>,  <34.274109, 42.875858, 44.222931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911552, 42.917946, 44.059284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110133, 0.876128, 0.469330,
		0.407826, 0.470455, -0.782528,
		-0.906393, 0.105223, -0.409120,
		33.639633, 42.949512, 43.936546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229397, 43.617134, 44.199730>,  <34.274109, 42.875858, 44.222931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229397, 43.617134, 44.199730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873287, 43.434978, 44.201965>,  <33.659622, 43.325687, 44.203304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873287, 43.434978, 44.201965>,  <34.229397, 43.617134, 44.199730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873287, 43.434978, 44.201965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254754, 0.508134, 0.822739,
		-0.377500, 0.731044, -0.568391,
		-0.890277, -0.455385, 0.005584,
		33.606205, 43.298363, 44.203640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769650, 44.134422, 44.119858>,  <34.229397, 43.617134, 44.199730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769650, 44.134422, 44.119858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579273, 43.821907, 44.281384>,  <33.465046, 43.634399, 44.378300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579273, 43.821907, 44.281384>,  <33.769650, 44.134422, 44.119858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579273, 43.821907, 44.281384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304755, 0.577219, 0.757590,
		-0.824986, 0.237506, -0.512825,
		-0.475945, -0.781287, 0.403817,
		33.436489, 43.587521, 44.402527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147648, 44.411217, 44.532616>,  <33.769650, 44.134422, 44.119858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147648, 44.411217, 44.532616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190002, 44.045109, 44.688087>,  <33.215416, 43.825443, 44.781368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190002, 44.045109, 44.688087>,  <33.147648, 44.411217, 44.532616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190002, 44.045109, 44.688087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410425, 0.315801, 0.855465,
		-0.905726, -0.250101, -0.342212,
		0.105882, -0.915270, 0.388677,
		33.221767, 43.770527, 44.804691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564823, 44.278889, 44.875313>,  <33.147648, 44.411217, 44.532616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564823, 44.278889, 44.875313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802250, 44.006554, 45.046959>,  <32.944706, 43.843151, 45.149948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802250, 44.006554, 45.046959>,  <32.564823, 44.278889, 44.875313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802250, 44.006554, 45.046959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388760, 0.224304, 0.893618,
		-0.704662, -0.697243, -0.131544,
		0.593563, -0.680838, 0.429118,
		32.980320, 43.802303, 45.175694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111866, 43.904301, 45.294403>,  <32.564823, 44.278889, 44.875313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111866, 43.904301, 45.294403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483131, 43.866379, 45.438358>,  <32.705891, 43.843624, 45.524731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483131, 43.866379, 45.438358>,  <32.111866, 43.904301, 45.294403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483131, 43.866379, 45.438358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317766, 0.301477, 0.898964,
		-0.193728, -0.948748, 0.249694,
		0.928167, -0.094810, 0.359885,
		32.761581, 43.837936, 45.546322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830402, 43.079376, 45.314129>,  <32.111866, 43.904301, 45.294403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830402, 43.079376, 45.314129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515320, 42.939346, 45.516895>,  <31.326271, 42.855328, 45.638557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515320, 42.939346, 45.516895>,  <31.830402, 43.079376, 45.314129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515320, 42.939346, 45.516895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380592, -0.370503, -0.847276,
		0.484426, -0.860334, 0.158611,
		-0.787706, -0.350076, 0.506918,
		31.279009, 42.834324, 45.668972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762146, 42.386703, 45.206951>,  <31.830402, 43.079376, 45.314129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762146, 42.386703, 45.206951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396015, 42.517265, 45.301304>,  <31.176336, 42.595600, 45.357914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396015, 42.517265, 45.301304>,  <31.762146, 42.386703, 45.206951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396015, 42.517265, 45.301304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387481, -0.554253, -0.736656,
		-0.109708, -0.765680, 0.633797,
		-0.915326, 0.326401, 0.235881,
		31.121418, 42.615185, 45.372066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330475, 41.805161, 45.118351>,  <31.762146, 42.386703, 45.206951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330475, 41.805161, 45.118351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.084978, 42.120869, 45.126144>,  <30.937681, 42.310291, 45.130821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.084978, 42.120869, 45.126144>,  <31.330475, 41.805161, 45.118351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084978, 42.120869, 45.126144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488433, -0.360191, -0.794793,
		-0.620289, -0.497310, 0.606568,
		-0.613739, 0.789269, 0.019480,
		30.900856, 42.357651, 45.131989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591715, 41.661549, 45.345329>,  <31.330475, 41.805161, 45.118351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591715, 41.661549, 45.345329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588896, 41.988857, 45.115410>,  <30.587204, 42.185242, 44.977459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588896, 41.988857, 45.115410>,  <30.591715, 41.661549, 45.345329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588896, 41.988857, 45.115410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655589, -0.437821, -0.615237,
		-0.755085, 0.372494, 0.539532,
		-0.007046, 0.818267, -0.574795,
		30.586782, 42.234337, 44.942970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984716, 41.588451, 44.959999>,  <30.591715, 41.661549, 45.345329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984716, 41.588451, 44.959999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.142878, 41.885925, 44.744373>,  <30.237774, 42.064411, 44.614998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.142878, 41.885925, 44.744373>,  <29.984716, 41.588451, 44.959999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142878, 41.885925, 44.744373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447949, -0.356232, -0.820024,
		-0.801870, 0.565715, 0.192277,
		0.395405, 0.743684, -0.539063,
		30.261499, 42.109032, 44.582653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586712, 41.769531, 44.364384>,  <29.984716, 41.588451, 44.959999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586712, 41.769531, 44.364384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.915693, 41.977089, 44.271156>,  <30.113081, 42.101624, 44.215218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.915693, 41.977089, 44.271156>,  <29.586712, 41.769531, 44.364384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915693, 41.977089, 44.271156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114710, -0.250026, -0.961420,
		-0.557149, 0.817457, -0.146112,
		0.822452, 0.518893, -0.233072,
		30.162428, 42.132755, 44.201233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398375, 42.237755, 43.769249>,  <29.586712, 41.769531, 44.364384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398375, 42.237755, 43.769249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796370, 42.201736, 43.751850>,  <30.035166, 42.180126, 43.741409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796370, 42.201736, 43.751850>,  <29.398375, 42.237755, 43.769249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796370, 42.201736, 43.751850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074912, -0.382979, -0.920715,
		0.066245, 0.919358, -0.387804,
		0.994987, -0.090045, -0.043501,
		30.094866, 42.174725, 43.738800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.266514, 40.127422, 48.501690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.600235, 40.282703, 48.658276>,  <34.800468, 40.375870, 48.752228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.600235, 40.282703, 48.658276>,  <34.266514, 40.127422, 48.501690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600235, 40.282703, 48.658276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479978, 0.162120, 0.862171,
		0.271229, -0.907204, 0.321584,
		0.834299, 0.388199, 0.391466,
		34.850525, 40.399162, 48.775715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771339, 40.564705, 48.201649>,  <34.266514, 40.127422, 48.501690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771339, 40.564705, 48.201649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085575, 40.373188, 48.358421>,  <35.274117, 40.258278, 48.452484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085575, 40.373188, 48.358421>,  <34.771339, 40.564705, 48.201649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085575, 40.373188, 48.358421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112883, -0.733697, -0.670035,
		0.608366, 0.482129, -0.630431,
		0.785588, -0.478791, 0.391932,
		35.321251, 40.229549, 48.476002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252537, 40.447281, 47.745251>,  <34.771339, 40.564705, 48.201649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252537, 40.447281, 47.745251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.318302, 40.150295, 48.005013>,  <35.357761, 39.972103, 48.160870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.318302, 40.150295, 48.005013>,  <35.252537, 40.447281, 47.745251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318302, 40.150295, 48.005013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210258, -0.669609, -0.712330,
		0.963721, -0.019422, -0.266204,
		0.164417, -0.742459, 0.649400,
		35.367626, 39.927559, 48.199833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625370, 39.862370, 47.314438>,  <35.252537, 40.447281, 47.745251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625370, 39.862370, 47.314438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485744, 39.703407, 47.653904>,  <35.401970, 39.608032, 47.857582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485744, 39.703407, 47.653904>,  <35.625370, 39.862370, 47.314438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485744, 39.703407, 47.653904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240226, -0.837416, -0.490944,
		0.905786, -0.375239, 0.196841,
		-0.349060, -0.397403, 0.848662,
		35.381027, 39.584187, 47.908504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914154, 39.191479, 47.304970>,  <35.625370, 39.862370, 47.314438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914154, 39.191479, 47.304970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597473, 39.159691, 47.547256>,  <35.407463, 39.140617, 47.692627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597473, 39.159691, 47.547256>,  <35.914154, 39.191479, 47.304970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597473, 39.159691, 47.547256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233423, -0.876916, -0.420157,
		0.564550, -0.474028, 0.675708,
		-0.791705, -0.079474, 0.605712,
		35.359962, 39.135849, 47.728970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973629, 38.503975, 47.575069>,  <35.914154, 39.191479, 47.304970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973629, 38.503975, 47.575069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597538, 38.624886, 47.637810>,  <35.371883, 38.697433, 47.675453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597538, 38.624886, 47.637810>,  <35.973629, 38.503975, 47.575069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597538, 38.624886, 47.637810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335877, -0.899149, -0.280568,
		0.056228, -0.316481, 0.946931,
		-0.940226, 0.302277, 0.156856,
		35.315472, 38.715569, 47.684868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597466, 37.952950, 48.075638>,  <35.973629, 38.503975, 47.575069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597466, 37.952950, 48.075638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334309, 38.148182, 47.846218>,  <35.176414, 38.265324, 47.708569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334309, 38.148182, 47.846218>,  <35.597466, 37.952950, 48.075638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334309, 38.148182, 47.846218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316467, -0.870230, -0.377555,
		-0.683395, -0.066881, 0.726979,
		-0.657890, 0.488084, -0.573546,
		35.136940, 38.294609, 47.674156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148182, 37.383083, 47.874302>,  <35.597466, 37.952950, 48.075638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148182, 37.383083, 47.874302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.981857, 37.677341, 47.660416>,  <34.882061, 37.853897, 47.532085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.981857, 37.677341, 47.660416>,  <35.148182, 37.383083, 47.874302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981857, 37.677341, 47.660416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353317, -0.672442, -0.650375,
		-0.838013, -0.081510, 0.539528,
		-0.415813, 0.735648, -0.534717,
		34.857113, 37.898037, 47.500000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413849, 37.150265, 47.755470>,  <35.148182, 37.383083, 47.874302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413849, 37.150265, 47.755470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.505749, 37.440693, 47.496231>,  <34.560890, 37.614952, 47.340687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.505749, 37.440693, 47.496231>,  <34.413849, 37.150265, 47.755470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505749, 37.440693, 47.496231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422558, -0.525454, -0.738473,
		-0.876732, 0.443524, 0.186085,
		0.229751, 0.726075, -0.648097,
		34.574673, 37.658516, 47.301804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805721, 37.493233, 47.485111>,  <34.413849, 37.150265, 47.755470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805721, 37.493233, 47.485111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.097572, 37.554741, 47.218578>,  <34.272682, 37.591648, 47.058659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.097572, 37.554741, 47.218578>,  <33.805721, 37.493233, 47.485111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097572, 37.554741, 47.218578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515934, -0.515755, -0.683966,
		-0.448840, 0.842823, -0.296971,
		0.729627, 0.153774, -0.666332,
		34.316460, 37.600872, 47.018677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444469, 37.666805, 46.912689>,  <33.805721, 37.493233, 47.485111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444469, 37.666805, 46.912689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807487, 37.539665, 46.802906>,  <34.025299, 37.463379, 46.737038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807487, 37.539665, 46.802906>,  <33.444469, 37.666805, 46.912689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807487, 37.539665, 46.802906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402383, -0.471119, -0.784943,
		0.120194, 0.822810, -0.555462,
		0.907547, -0.317854, -0.274459,
		34.079750, 37.444309, 46.720570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488178, 37.850311, 46.216183>,  <33.444469, 37.666805, 46.912689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488178, 37.850311, 46.216183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.754292, 37.561848, 46.293457>,  <33.913960, 37.388767, 46.339821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.754292, 37.561848, 46.293457>,  <33.488178, 37.850311, 46.216183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754292, 37.561848, 46.293457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312217, -0.503785, -0.805432,
		0.678171, 0.475526, -0.560320,
		0.665285, -0.721162, 0.193185,
		33.953876, 37.345497, 46.351414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554058, 38.463352, 45.859161>,  <33.488178, 37.850311, 46.216183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554058, 38.463352, 45.859161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190922, 38.607529, 45.773464>,  <32.973038, 38.694035, 45.722046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190922, 38.607529, 45.773464>,  <33.554058, 38.463352, 45.859161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190922, 38.607529, 45.773464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094745, 0.321397, 0.942193,
		0.408467, 0.875661, -0.257628,
		-0.907843, 0.360445, -0.214244,
		32.918568, 38.715664, 45.709190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474949, 39.109394, 46.270359>,  <33.554058, 38.463352, 45.859161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474949, 39.109394, 46.270359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.095898, 39.027462, 46.172344>,  <32.868465, 38.978302, 46.113537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.095898, 39.027462, 46.172344>,  <33.474949, 39.109394, 46.270359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095898, 39.027462, 46.172344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286897, 0.208871, 0.934914,
		-0.140313, 0.956253, -0.256696,
		-0.947630, -0.204826, -0.245038,
		32.811607, 38.966015, 46.098831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133339, 39.648605, 46.474144>,  <33.474949, 39.109394, 46.270359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133339, 39.648605, 46.474144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.855854, 39.362553, 46.439869>,  <32.689362, 39.190922, 46.419304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.855854, 39.362553, 46.439869>,  <33.133339, 39.648605, 46.474144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855854, 39.362553, 46.439869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365546, 0.247070, 0.897404,
		-0.620592, 0.653866, -0.432810,
		-0.693716, -0.715134, -0.085688,
		32.647739, 39.148014, 46.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528141, 39.866943, 46.624897>,  <33.133339, 39.648605, 46.474144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528141, 39.866943, 46.624897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452110, 39.476925, 46.670761>,  <32.406490, 39.242912, 46.698280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452110, 39.476925, 46.670761>,  <32.528141, 39.866943, 46.624897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452110, 39.476925, 46.670761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524981, 0.199637, 0.827369,
		-0.829618, 0.097069, -0.549829,
		-0.190078, -0.975050, 0.114663,
		32.395088, 39.184410, 46.705158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781511, 39.817379, 46.586060>,  <32.528141, 39.866943, 46.624897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781511, 39.817379, 46.586060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906513, 39.484013, 46.768379>,  <31.981514, 39.283993, 46.877773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906513, 39.484013, 46.768379>,  <31.781511, 39.817379, 46.586060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906513, 39.484013, 46.768379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459921, 0.287092, 0.840268,
		-0.831152, -0.472220, -0.293590,
		0.312504, -0.833419, 0.455801,
		32.000263, 39.233986, 46.905121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229504, 39.633499, 47.045715>,  <31.781511, 39.817379, 46.586060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229504, 39.633499, 47.045715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.529415, 39.432934, 47.218418>,  <31.709362, 39.312595, 47.322041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.529415, 39.432934, 47.218418>,  <31.229504, 39.633499, 47.045715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529415, 39.432934, 47.218418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325731, 0.288273, 0.900443,
		-0.575961, -0.815769, 0.052814,
		0.749779, -0.501417, 0.431755,
		31.754349, 39.282509, 47.347946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966562, 39.135910, 47.464088>,  <31.229504, 39.633499, 47.045715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966562, 39.135910, 47.464088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.336889, 39.195057, 47.603230>,  <31.559086, 39.230545, 47.686714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.336889, 39.195057, 47.603230>,  <30.966562, 39.135910, 47.464088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336889, 39.195057, 47.603230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374215, 0.229129, 0.898589,
		0.053168, -0.962099, 0.267465,
		0.925817, 0.147865, 0.347850,
		31.614634, 39.239418, 47.707584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076439, 38.770935, 48.204933>,  <30.966562, 39.135910, 47.464088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076439, 38.770935, 48.204933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335985, 39.075031, 48.192223>,  <31.491713, 39.257488, 48.184597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335985, 39.075031, 48.192223>,  <31.076439, 38.770935, 48.204933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335985, 39.075031, 48.192223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245982, 0.249096, 0.936720,
		0.720045, -0.599991, 0.348635,
		0.648867, 0.760238, -0.031774,
		31.530645, 39.303104, 48.182690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169554, 38.924229, 48.851284>,  <31.076439, 38.770935, 48.204933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169554, 38.924229, 48.851284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.367252, 39.231667, 48.688808>,  <31.485872, 39.416130, 48.591324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.367252, 39.231667, 48.688808>,  <31.169554, 38.924229, 48.851284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367252, 39.231667, 48.688808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209724, 0.558865, 0.802300,
		0.843645, -0.311346, 0.437409,
		0.494245, 0.768592, -0.406187,
		31.515526, 39.462246, 48.566952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662865, 39.175247, 49.352005>,  <31.169554, 38.924229, 48.851284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662865, 39.175247, 49.352005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561630, 39.470116, 49.101398>,  <31.500889, 39.647038, 48.951035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561630, 39.470116, 49.101398>,  <31.662865, 39.175247, 49.352005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561630, 39.470116, 49.101398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253628, 0.574391, 0.778298,
		0.933606, 0.355877, 0.041598,
		-0.253085, 0.737174, -0.626516,
		31.485704, 39.691269, 48.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832388, 39.789150, 49.685661>,  <31.662865, 39.175247, 49.352005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832388, 39.789150, 49.685661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576693, 39.929638, 49.412014>,  <31.423275, 40.013931, 49.247826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576693, 39.929638, 49.412014>,  <31.832388, 39.789150, 49.685661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576693, 39.929638, 49.412014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212290, 0.774448, 0.595956,
		0.739127, 0.526189, -0.420496,
		-0.639238, 0.351220, -0.684119,
		31.384922, 40.035004, 49.206779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975594, 40.514984, 49.658344>,  <31.832388, 39.789150, 49.685661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975594, 40.514984, 49.658344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.608437, 40.455986, 49.510983>,  <31.388144, 40.420589, 49.422565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.608437, 40.455986, 49.510983>,  <31.975594, 40.514984, 49.658344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608437, 40.455986, 49.510983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333686, 0.789325, 0.515383,
		0.214776, 0.595997, -0.773730,
		-0.917892, -0.147491, -0.368404,
		31.333069, 40.411739, 49.400463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794479, 41.141651, 49.471153>,  <31.975594, 40.514984, 49.658344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794479, 41.141651, 49.471153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438438, 40.960522, 49.450462>,  <31.224813, 40.851845, 49.438046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438438, 40.960522, 49.450462>,  <31.794479, 41.141651, 49.471153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438438, 40.960522, 49.450462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447377, 0.846400, 0.288897,
		-0.087034, 0.280290, -0.955962,
		-0.890100, -0.452819, -0.051730,
		31.171408, 40.824677, 49.434944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295639, 41.510036, 49.027603>,  <31.794479, 41.141651, 49.471153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295639, 41.510036, 49.027603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.096237, 41.308556, 49.309818>,  <30.976597, 41.187668, 49.479145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.096237, 41.308556, 49.309818>,  <31.295639, 41.510036, 49.027603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096237, 41.308556, 49.309818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538609, 0.817685, 0.203205,
		-0.679260, -0.278709, -0.678917,
		-0.498505, -0.503700, 0.705535,
		30.946686, 41.157444, 49.521481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163187, 42.065559, 48.760185>,  <31.295639, 41.510036, 49.027603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163187, 42.065559, 48.760185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011288, 42.429108, 48.691196>,  <30.920149, 42.647236, 48.649803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011288, 42.429108, 48.691196>,  <31.163187, 42.065559, 48.760185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011288, 42.429108, 48.691196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108603, -0.228950, -0.967361,
		-0.918692, -0.348623, 0.185650,
		-0.379749, 0.908869, -0.172473,
		30.897364, 42.701767, 48.639454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544859, 42.085358, 48.318958>,  <31.163187, 42.065559, 48.760185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544859, 42.085358, 48.318958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.663778, 42.464809, 48.275650>,  <30.735130, 42.692478, 48.249664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.663778, 42.464809, 48.275650>,  <30.544859, 42.085358, 48.318958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663778, 42.464809, 48.275650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105351, -0.080112, -0.991203,
		-0.948954, 0.306091, 0.076121,
		0.297300, 0.948625, -0.108270,
		30.752968, 42.749397, 48.243168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051615, 42.434971, 47.989883>,  <30.544859, 42.085358, 48.318958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051615, 42.434971, 47.989883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427235, 42.547882, 47.911392>,  <30.652607, 42.615627, 47.864300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427235, 42.547882, 47.911392>,  <30.051615, 42.434971, 47.989883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427235, 42.547882, 47.911392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150356, -0.176074, -0.972826,
		-0.309157, 0.943036, -0.122900,
		0.939050, 0.282278, -0.196226,
		30.708950, 42.632565, 47.852524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995319, 42.604622, 47.228176>,  <30.051615, 42.434971, 47.989883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995319, 42.604622, 47.228176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.375797, 42.708397, 47.295010>,  <30.604084, 42.770660, 47.335110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.375797, 42.708397, 47.295010>,  <29.995319, 42.604622, 47.228176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375797, 42.708397, 47.295010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182538, -0.036471, -0.982522,
		-0.248809, 0.965071, -0.082049,
		0.951196, 0.259437, 0.167088,
		30.661156, 42.786228, 47.345135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076271, 43.329159, 46.916157>,  <29.995319, 42.604622, 47.228176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076271, 43.329159, 46.916157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443979, 43.178059, 46.960419>,  <30.664604, 43.087399, 46.986977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443979, 43.178059, 46.960419>,  <30.076271, 43.329159, 46.916157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443979, 43.178059, 46.960419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182895, 0.160981, -0.969863,
		0.348551, 0.911806, 0.217074,
		0.919272, -0.377749, 0.110654,
		30.719761, 43.064735, 46.993614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663986, 43.873226, 46.636063>,  <30.076271, 43.329159, 46.916157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663986, 43.873226, 46.636063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809801, 43.500919, 46.647205>,  <30.897291, 43.277534, 46.653889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809801, 43.500919, 46.647205>,  <30.663986, 43.873226, 46.636063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809801, 43.500919, 46.647205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472166, 0.158979, -0.867055,
		0.802602, 0.329226, 0.497433,
		0.364538, -0.930772, 0.027853,
		30.919163, 43.221687, 46.655560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460514, 43.822773, 46.592846>,  <30.663986, 43.873226, 46.636063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460514, 43.822773, 46.592846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.272116, 43.497368, 46.456398>,  <31.159077, 43.302124, 46.374531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.272116, 43.497368, 46.456398>,  <31.460514, 43.822773, 46.592846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272116, 43.497368, 46.456398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372270, 0.167272, -0.912927,
		0.799735, -0.556975, 0.224061,
		-0.470998, -0.813510, -0.341119,
		31.130816, 43.253315, 46.354061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972321, 43.694595, 46.048080>,  <31.460514, 43.822773, 46.592846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972321, 43.694595, 46.048080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.366364, 43.762321, 46.060032>,  <32.602791, 43.802959, 46.067204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.366364, 43.762321, 46.060032>,  <31.972321, 43.694595, 46.048080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366364, 43.762321, 46.060032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055398, 0.148073, 0.987424,
		0.162763, -0.974375, 0.155248,
		0.985109, 0.169317, 0.029877,
		32.661896, 43.813118, 46.068996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297058, 43.250866, 46.609684>,  <31.972321, 43.694595, 46.048080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297058, 43.250866, 46.609684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.513046, 43.574734, 46.517719>,  <32.642639, 43.769054, 46.462540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.513046, 43.574734, 46.517719>,  <32.297058, 43.250866, 46.609684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513046, 43.574734, 46.517719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086890, 0.325318, 0.941604,
		0.837185, -0.488465, 0.246016,
		0.539974, 0.809673, -0.229908,
		32.675037, 43.817635, 46.448746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863735, 43.230808, 47.025501>,  <32.297058, 43.250866, 46.609684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863735, 43.230808, 47.025501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822826, 43.616177, 46.926418>,  <32.798283, 43.847397, 46.866970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822826, 43.616177, 46.926418>,  <32.863735, 43.230808, 47.025501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822826, 43.616177, 46.926418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334834, 0.267818, 0.903416,
		0.936711, 0.009451, -0.349976,
		-0.102268, 0.963423, -0.247703,
		32.792145, 43.905205, 46.852108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472908, 43.518497, 47.334465>,  <32.863735, 43.230808, 47.025501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472908, 43.518497, 47.334465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245770, 43.836323, 47.248474>,  <33.109486, 44.027020, 47.196880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245770, 43.836323, 47.248474>,  <33.472908, 43.518497, 47.334465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245770, 43.836323, 47.248474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282730, 0.433555, 0.855625,
		0.773053, 0.425085, -0.470841,
		-0.567849, 0.794565, -0.214977,
		33.075417, 44.074692, 47.183983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847218, 44.089500, 47.514381>,  <33.472908, 43.518497, 47.334465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847218, 44.089500, 47.514381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472824, 44.229935, 47.503994>,  <33.248188, 44.314198, 47.497761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472824, 44.229935, 47.503994>,  <33.847218, 44.089500, 47.514381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472824, 44.229935, 47.503994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192071, 0.571079, 0.798109,
		0.295038, 0.742027, -0.601954,
		-0.935981, 0.351090, -0.025968,
		33.192028, 44.335262, 47.496204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867748, 44.817066, 47.553120>,  <33.847218, 44.089500, 47.514381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867748, 44.817066, 47.553120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.495300, 44.733021, 47.672363>,  <33.271832, 44.682594, 47.743908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.495300, 44.733021, 47.672363>,  <33.867748, 44.817066, 47.553120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495300, 44.733021, 47.672363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103161, 0.632261, 0.767856,
		-0.349821, 0.745719, -0.567035,
		-0.931119, -0.210117, 0.298108,
		33.215965, 44.669987, 47.761795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605309, 45.469193, 47.893932>,  <33.867748, 44.817066, 47.553120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605309, 45.469193, 47.893932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367813, 45.177624, 48.030247>,  <33.225315, 45.002682, 48.112034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367813, 45.177624, 48.030247>,  <33.605309, 45.469193, 47.893932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367813, 45.177624, 48.030247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000573, 0.423135, 0.906067,
		-0.804654, 0.538166, -0.250816,
		-0.593743, -0.728926, 0.340786,
		33.189690, 44.958946, 48.132481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027782, 45.854588, 48.191055>,  <33.605309, 45.469193, 47.893932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027782, 45.854588, 48.191055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004246, 45.478451, 48.325100>,  <32.990124, 45.252769, 48.405529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004246, 45.478451, 48.325100>,  <33.027782, 45.854588, 48.191055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004246, 45.478451, 48.325100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118629, 0.326732, 0.937642,
		-0.991194, 0.094923, 0.092327,
		-0.058838, -0.940338, 0.335116,
		32.986595, 45.196350, 48.425636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586746, 45.824795, 48.841122>,  <33.027782, 45.854588, 48.191055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586746, 45.824795, 48.841122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.795464, 45.484119, 48.860554>,  <32.920692, 45.279713, 48.872211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.795464, 45.484119, 48.860554>,  <32.586746, 45.824795, 48.841122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795464, 45.484119, 48.860554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206087, 0.181111, 0.961627,
		-0.827807, -0.491755, 0.270024,
		0.521789, -0.851690, 0.048581,
		32.952000, 45.228611, 48.875130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.924133, 37.478252, 34.532490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311382, 37.480732, 34.632645>,  <33.543732, 37.482220, 34.692738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311382, 37.480732, 34.632645>,  <32.924133, 37.478252, 34.532490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311382, 37.480732, 34.632645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237148, 0.344279, 0.908423,
		-0.080567, -0.938847, 0.334777,
		0.968127, 0.006202, 0.250383,
		33.601822, 37.482594, 34.707760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874561, 37.157986, 35.157112>,  <32.924133, 37.478252, 34.532490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874561, 37.157986, 35.157112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241211, 37.311268, 35.111580>,  <33.461201, 37.403236, 35.084259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241211, 37.311268, 35.111580>,  <32.874561, 37.157986, 35.157112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241211, 37.311268, 35.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051882, 0.396378, 0.916620,
		0.396378, -0.834287, 0.383210,
		-0.916620, -0.383210, 0.113832,
		33.516197, 37.426231, 35.077431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242405, 36.936916, 35.762897>,  <32.874561, 37.157986, 35.157112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242405, 36.936916, 35.762897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439995, 37.261547, 35.638103>,  <33.558548, 37.456326, 35.563229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439995, 37.261547, 35.638103>,  <33.242405, 36.936916, 35.762897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439995, 37.261547, 35.638103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091293, 0.405248, 0.909637,
		0.864672, -0.420853, 0.274273,
		0.493972, 0.811577, -0.311985,
		33.588188, 37.505020, 35.544506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647022, 37.144764, 36.309044>,  <33.242405, 36.936916, 35.762897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647022, 37.144764, 36.309044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642372, 37.472477, 36.079735>,  <33.639580, 37.669106, 35.942150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642372, 37.472477, 36.079735>,  <33.647022, 37.144764, 36.309044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642372, 37.472477, 36.079735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091914, 0.571762, 0.815254,
		0.995699, -0.043212, -0.081952,
		-0.011628, 0.819281, -0.573275,
		33.638885, 37.718262, 35.907753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079308, 37.615437, 36.628109>,  <33.647022, 37.144764, 36.309044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079308, 37.615437, 36.628109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879635, 37.848038, 36.371151>,  <33.759830, 37.987598, 36.216976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879635, 37.848038, 36.371151>,  <34.079308, 37.615437, 36.628109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879635, 37.848038, 36.371151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079174, 0.707655, 0.702108,
		0.862874, 0.401339, -0.307207,
		-0.499180, 0.581507, -0.642393,
		33.729881, 38.022491, 36.178432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387154, 38.254173, 36.567169>,  <34.079308, 37.615437, 36.628109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387154, 38.254173, 36.567169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008587, 38.334957, 36.466370>,  <33.781448, 38.383427, 36.405888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008587, 38.334957, 36.466370>,  <34.387154, 38.254173, 36.567169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008587, 38.334957, 36.466370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002050, 0.776548, 0.630055,
		0.322939, 0.596812, -0.734525,
		-0.946418, 0.201963, -0.252001,
		33.724663, 38.395546, 36.390770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425396, 38.942551, 36.439407>,  <34.387154, 38.254173, 36.567169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425396, 38.942551, 36.439407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056118, 38.821548, 36.534237>,  <33.834553, 38.748947, 36.591133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056118, 38.821548, 36.534237>,  <34.425396, 38.942551, 36.439407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056118, 38.821548, 36.534237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037095, 0.684096, 0.728448,
		-0.382542, 0.663704, -0.642774,
		-0.923193, -0.302506, 0.237075,
		33.779160, 38.730797, 36.605358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135700, 39.633934, 36.576683>,  <34.425396, 38.942551, 36.439407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135700, 39.633934, 36.576683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860771, 39.383564, 36.724087>,  <33.695812, 39.233341, 36.812531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860771, 39.383564, 36.724087>,  <34.135700, 39.633934, 36.576683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860771, 39.383564, 36.724087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230469, 0.669069, 0.706562,
		-0.688815, 0.400708, -0.604125,
		-0.687327, -0.625923, 0.368514,
		33.654572, 39.195786, 36.834641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807526, 40.101707, 36.884098>,  <34.135700, 39.633934, 36.576683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807526, 40.101707, 36.884098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618912, 39.770306, 37.004913>,  <33.505741, 39.571465, 37.077404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618912, 39.770306, 37.004913>,  <33.807526, 40.101707, 36.884098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618912, 39.770306, 37.004913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365501, 0.495324, 0.788076,
		-0.802534, 0.261211, -0.536384,
		-0.471538, -0.828506, 0.302042,
		33.477451, 39.521755, 37.095528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091789, 40.244358, 37.116184>,  <33.807526, 40.101707, 36.884098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091789, 40.244358, 37.116184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199413, 39.913017, 37.312729>,  <33.263988, 39.714211, 37.430656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199413, 39.913017, 37.312729>,  <33.091789, 40.244358, 37.116184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199413, 39.913017, 37.312729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311241, 0.408015, 0.858285,
		-0.911446, -0.383863, -0.148037,
		0.269062, -0.828356, 0.491357,
		33.280132, 39.664509, 37.460136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595726, 40.213295, 37.575397>,  <33.091789, 40.244358, 37.116184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595726, 40.213295, 37.575397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912926, 40.015751, 37.718086>,  <33.103245, 39.897224, 37.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912926, 40.015751, 37.718086>,  <32.595726, 40.213295, 37.575397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912926, 40.015751, 37.718086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209231, 0.329147, 0.920807,
		-0.572160, -0.804840, 0.157685,
		0.793004, -0.493856, 0.356722,
		33.150826, 39.867596, 37.825104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341255, 40.050007, 38.142765>,  <32.595726, 40.213295, 37.575397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341255, 40.050007, 38.142765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728874, 39.969666, 38.200191>,  <32.961445, 39.921459, 38.234646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728874, 39.969666, 38.200191>,  <32.341255, 40.050007, 38.142765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728874, 39.969666, 38.200191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058952, 0.376427, 0.924569,
		-0.239746, -0.904411, 0.352934,
		0.969044, -0.200855, 0.143564,
		33.019588, 39.909409, 38.243259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764351, 39.723503, 38.127537>,  <32.341255, 40.050007, 38.142765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764351, 39.723503, 38.127537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377644, 39.692795, 38.225079>,  <31.145618, 39.674370, 38.283604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377644, 39.692795, 38.225079>,  <31.764351, 39.723503, 38.127537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377644, 39.692795, 38.225079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148406, -0.608168, -0.779812,
		0.208169, -0.790087, 0.576565,
		-0.966768, -0.076767, 0.243856,
		31.087612, 39.669765, 38.298237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550522, 38.926582, 38.041847>,  <31.764351, 39.723503, 38.127537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550522, 38.926582, 38.041847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235039, 39.168797, 37.999374>,  <31.045750, 39.314125, 37.973892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235039, 39.168797, 37.999374>,  <31.550522, 38.926582, 38.041847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235039, 39.168797, 37.999374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235658, -0.457314, -0.857513,
		-0.567812, -0.651302, 0.503385,
		-0.788705, 0.605533, -0.106184,
		30.998426, 39.350456, 37.967518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082300, 38.510605, 37.800224>,  <31.550522, 38.926582, 38.041847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082300, 38.510605, 37.800224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905046, 38.859104, 37.715794>,  <30.798695, 39.068203, 37.665134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905046, 38.859104, 37.715794>,  <31.082300, 38.510605, 37.800224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905046, 38.859104, 37.715794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286567, -0.360779, -0.887535,
		-0.849419, -0.332806, 0.409544,
		-0.443132, 0.871251, -0.211081,
		30.772106, 39.120480, 37.652470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303774, 38.354282, 37.614815>,  <31.082300, 38.510605, 37.800224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303774, 38.354282, 37.614815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406214, 38.715965, 37.478092>,  <30.467678, 38.932976, 37.396057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406214, 38.715965, 37.478092>,  <30.303774, 38.354282, 37.614815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406214, 38.715965, 37.478092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423377, -0.212958, -0.880568,
		-0.869002, 0.370225, 0.328281,
		0.256099, 0.904202, -0.341806,
		30.483044, 38.987225, 37.375549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692535, 38.629120, 37.469894>,  <30.303774, 38.354282, 37.614815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692535, 38.629120, 37.469894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964317, 38.822552, 37.249172>,  <30.127386, 38.938610, 37.116737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964317, 38.822552, 37.249172>,  <29.692535, 38.629120, 37.469894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964317, 38.822552, 37.249172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468063, -0.293489, -0.833536,
		-0.565028, 0.824632, 0.026932,
		0.679456, 0.483576, -0.551809,
		30.168154, 38.967625, 37.083630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358555, 38.980915, 36.924927>,  <29.692535, 38.629120, 37.469894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358555, 38.980915, 36.924927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734482, 38.934826, 36.796265>,  <29.960039, 38.907173, 36.719067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734482, 38.934826, 36.796265>,  <29.358555, 38.980915, 36.924927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734482, 38.934826, 36.796265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338805, -0.435974, -0.833749,
		-0.044164, 0.892552, -0.448776,
		0.939820, -0.115226, -0.321655,
		30.016428, 38.900257, 36.699768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312744, 39.246281, 36.273991>,  <29.358555, 38.980915, 36.924927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312744, 39.246281, 36.273991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651079, 39.033009, 36.280609>,  <29.854080, 38.905045, 36.284580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651079, 39.033009, 36.280609>,  <29.312744, 39.246281, 36.273991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651079, 39.033009, 36.280609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283579, -0.475708, -0.832638,
		0.451822, 0.699583, -0.553571,
		0.845837, -0.533185, 0.016549,
		29.904831, 38.873055, 36.285572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598530, 39.305164, 35.657921>,  <29.312744, 39.246281, 36.273991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598530, 39.305164, 35.657921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752956, 38.967468, 35.806629>,  <29.845612, 38.764851, 35.895855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752956, 38.967468, 35.806629>,  <29.598530, 39.305164, 35.657921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752956, 38.967468, 35.806629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254175, -0.484765, -0.836898,
		0.886763, 0.228604, -0.401736,
		0.386065, -0.844241, 0.371766,
		29.868776, 38.714195, 35.918159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092512, 39.043644, 35.142563>,  <29.598530, 39.305164, 35.657921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092512, 39.043644, 35.142563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022930, 38.711319, 35.354027>,  <29.981180, 38.511925, 35.480904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022930, 38.711319, 35.354027>,  <30.092512, 39.043644, 35.142563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022930, 38.711319, 35.354027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124923, -0.513891, -0.848711,
		0.976798, -0.213679, -0.014394,
		-0.173955, -0.830817, 0.528661,
		29.970743, 38.462074, 35.512627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308256, 38.658604, 34.678787>,  <30.092512, 39.043644, 35.142563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308256, 38.658604, 34.678787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134794, 38.409775, 34.939548>,  <30.030718, 38.260479, 35.096004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134794, 38.409775, 34.939548>,  <30.308256, 38.658604, 34.678787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134794, 38.409775, 34.939548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027258, -0.732190, -0.680554,
		0.900667, -0.277356, 0.334474,
		-0.433655, -0.622070, 0.651899,
		30.004698, 38.223152, 35.135117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641781, 38.033749, 34.546135>,  <30.308256, 38.658604, 34.678787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641781, 38.033749, 34.546135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296783, 37.933754, 34.722141>,  <30.089785, 37.873756, 34.827744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296783, 37.933754, 34.722141>,  <30.641781, 38.033749, 34.546135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296783, 37.933754, 34.722141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126257, -0.735689, -0.665448,
		0.490066, -0.629499, 0.602964,
		-0.862493, -0.249985, 0.440015,
		30.038036, 37.858757, 34.854145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563028, 37.358295, 34.417736>,  <30.641781, 38.033749, 34.546135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563028, 37.358295, 34.417736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185360, 37.450222, 34.512161>,  <29.958759, 37.505379, 34.568817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185360, 37.450222, 34.512161>,  <30.563028, 37.358295, 34.417736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185360, 37.450222, 34.512161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329032, -0.621494, -0.710973,
		-0.016685, -0.748952, 0.662414,
		-0.944171, 0.229818, 0.236060,
		29.902109, 37.519169, 34.582977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329929, 36.790573, 34.597359>,  <30.563028, 37.358295, 34.417736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329929, 36.790573, 34.597359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011463, 37.010994, 34.497387>,  <29.820383, 37.143246, 34.437405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011463, 37.010994, 34.497387>,  <30.329929, 36.790573, 34.597359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011463, 37.010994, 34.497387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210607, -0.639595, -0.739299,
		-0.567239, -0.535971, 0.625280,
		-0.796169, 0.551047, -0.249924,
		29.772614, 37.176308, 34.422409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756315, 36.397663, 34.693298>,  <30.329929, 36.790573, 34.597359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756315, 36.397663, 34.693298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720264, 36.675613, 34.407917>,  <29.698635, 36.842384, 34.236687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720264, 36.675613, 34.407917>,  <29.756315, 36.397663, 34.693298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720264, 36.675613, 34.407917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223525, -0.712209, -0.665428,
		-0.970523, 0.099503, 0.219511,
		-0.090125, 0.694879, -0.713457,
		29.693226, 36.884079, 34.193878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532381, 35.902317, 35.121578>,  <29.756315, 36.397663, 34.693298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532381, 35.902317, 35.121578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498081, 36.124931, 35.452133>,  <29.477501, 36.258499, 35.650467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498081, 36.124931, 35.452133>,  <29.532381, 35.902317, 35.121578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498081, 36.124931, 35.452133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481573, -0.749267, 0.454628,
		0.872201, -0.358981, 0.332262,
		-0.085750, 0.556536, 0.826387,
		29.472357, 36.291893, 35.700050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841848, 35.572464, 35.742004>,  <29.532381, 35.902317, 35.121578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841848, 35.572464, 35.742004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517593, 35.790184, 35.828354>,  <29.323040, 35.920818, 35.880165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517593, 35.790184, 35.828354>,  <29.841848, 35.572464, 35.742004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517593, 35.790184, 35.828354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508291, -0.837145, 0.202062,
		0.290702, 0.054072, 0.955285,
		-0.810638, 0.544302, 0.215875,
		29.274403, 35.953476, 35.893116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595898, 35.543285, 36.449570>,  <29.841848, 35.572464, 35.742004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595898, 35.543285, 36.449570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339184, 35.575638, 36.144527>,  <29.185156, 35.595047, 35.961502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339184, 35.575638, 36.144527>,  <29.595898, 35.543285, 36.449570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339184, 35.575638, 36.144527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283163, -0.949144, 0.137639,
		-0.712693, 0.304277, 0.632047,
		-0.641784, 0.080878, -0.762609,
		29.146648, 35.599899, 35.915745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181131, 35.598408, 36.764221>,  <29.595898, 35.543285, 36.449570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181131, 35.598408, 36.764221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549898, 35.508499, 36.638020>,  <30.771158, 35.454556, 36.562298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549898, 35.508499, 36.638020>,  <30.181131, 35.598408, 36.764221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549898, 35.508499, 36.638020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370001, 0.269656, 0.889036,
		-0.114753, -0.936356, 0.331766,
		0.921917, -0.224773, -0.315509,
		30.826473, 35.441067, 36.543365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490713, 35.070057, 37.210102>,  <30.181131, 35.598408, 36.764221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490713, 35.070057, 37.210102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788548, 35.269283, 37.032330>,  <30.967249, 35.388821, 36.925667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788548, 35.269283, 37.032330>,  <30.490713, 35.070057, 37.210102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788548, 35.269283, 37.032330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273349, 0.379906, 0.883715,
		0.608992, -0.779487, 0.146727,
		0.744587, 0.498067, -0.444432,
		31.011923, 35.418705, 36.898998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017694, 34.942394, 37.657177>,  <30.490713, 35.070057, 37.210102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017694, 34.942394, 37.657177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145231, 35.257999, 37.447109>,  <31.221752, 35.447361, 37.321068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145231, 35.257999, 37.447109>,  <31.017694, 34.942394, 37.657177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145231, 35.257999, 37.447109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435643, 0.370093, 0.820516,
		0.841758, -0.490398, -0.225727,
		0.318840, 0.789013, -0.525167,
		31.240883, 35.494701, 37.289558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799107, 34.977795, 37.687790>,  <31.017694, 34.942394, 37.657177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799107, 34.977795, 37.687790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644884, 35.338551, 37.609886>,  <31.552351, 35.555004, 37.563145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644884, 35.338551, 37.609886>,  <31.799107, 34.977795, 37.687790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644884, 35.338551, 37.609886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512172, 0.384774, 0.767873,
		0.767480, 0.196306, -0.610277,
		-0.385556, 0.901894, -0.194764,
		31.529217, 35.609119, 37.551456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225616, 35.487309, 37.883820>,  <31.799107, 34.977795, 37.687790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225616, 35.487309, 37.883820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914196, 35.738091, 37.872658>,  <31.727343, 35.888561, 37.865963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914196, 35.738091, 37.872658>,  <32.225616, 35.487309, 37.883820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914196, 35.738091, 37.872658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524008, 0.673888, 0.520856,
		0.345358, 0.390893, -0.853188,
		-0.778552, 0.626959, -0.027901,
		31.680630, 35.926178, 37.864288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544994, 36.082363, 38.092716>,  <32.225616, 35.487309, 37.883820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544994, 36.082363, 38.092716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167469, 36.210094, 38.126778>,  <31.940954, 36.286736, 38.147213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167469, 36.210094, 38.126778>,  <32.544994, 36.082363, 38.092716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167469, 36.210094, 38.126778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304462, 0.739896, 0.599880,
		0.128557, 0.592098, -0.795546,
		-0.943809, 0.319332, 0.085152,
		31.884327, 36.305893, 38.152325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576416, 36.887646, 38.028309>,  <32.544994, 36.082363, 38.092716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576416, 36.887646, 38.028309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244347, 36.782875, 38.225170>,  <32.045105, 36.720013, 38.343288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244347, 36.782875, 38.225170>,  <32.576416, 36.887646, 38.028309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244347, 36.782875, 38.225170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227137, 0.647282, 0.727623,
		-0.509145, 0.715836, -0.477860,
		-0.830169, -0.261925, 0.492153,
		31.995296, 36.704296, 38.372818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439659, 37.527367, 38.269257>,  <32.576416, 36.887646, 38.028309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439659, 37.527367, 38.269257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198269, 37.302944, 38.495895>,  <32.053432, 37.168289, 38.631878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198269, 37.302944, 38.495895>,  <32.439659, 37.527367, 38.269257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198269, 37.302944, 38.495895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149182, 0.618584, 0.771426,
		-0.783300, 0.550065, -0.289602,
		-0.603478, -0.561055, 0.566597,
		32.017227, 37.134628, 38.665874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972282, 37.969952, 38.593197>,  <32.439659, 37.527367, 38.269257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972282, 37.969952, 38.593197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981081, 37.643623, 38.824348>,  <31.986361, 37.447826, 38.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981081, 37.643623, 38.824348>,  <31.972282, 37.969952, 38.593197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981081, 37.643623, 38.824348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194358, 0.570482, 0.797982,
		-0.980684, 0.094764, 0.171110,
		0.021995, -0.815825, 0.577881,
		31.987680, 37.398876, 38.997711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730722, 38.291771, 39.167572>,  <31.972282, 37.969952, 38.593197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730722, 38.291771, 39.167572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878942, 37.940899, 39.289719>,  <31.967875, 37.730377, 39.363007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878942, 37.940899, 39.289719>,  <31.730722, 38.291771, 39.167572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878942, 37.940899, 39.289719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052226, 0.347929, 0.936065,
		-0.927344, -0.330910, 0.174736,
		0.370549, -0.877180, 0.305367,
		31.990107, 37.677746, 39.381329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353573, 38.039871, 39.765392>,  <31.730722, 38.291771, 39.167572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353573, 38.039871, 39.765392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681938, 37.815552, 39.808468>,  <31.878958, 37.680958, 39.834312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681938, 37.815552, 39.808468>,  <31.353573, 38.039871, 39.765392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681938, 37.815552, 39.808468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083081, 0.303872, 0.949083,
		-0.564974, -0.770169, 0.296045,
		0.820915, -0.560803, 0.107694,
		31.928213, 37.647312, 39.840775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251587, 37.683266, 40.381821>,  <31.353573, 38.039871, 39.765392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251587, 37.683266, 40.381821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647057, 37.663727, 40.325058>,  <31.884338, 37.652004, 40.291000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647057, 37.663727, 40.325058>,  <31.251587, 37.683266, 40.381821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647057, 37.663727, 40.325058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146902, 0.121460, 0.981665,
		-0.030713, -0.991394, 0.127259,
		0.988674, -0.048845, -0.141908,
		31.943659, 37.649075, 40.282486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594564, 37.294956, 40.898090>,  <31.251587, 37.683266, 40.381821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594564, 37.294956, 40.898090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904074, 37.499523, 40.748569>,  <32.089779, 37.622261, 40.658855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904074, 37.499523, 40.748569>,  <31.594564, 37.294956, 40.898090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904074, 37.499523, 40.748569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267247, 0.271460, 0.924602,
		0.574327, -0.815331, 0.073375,
		0.773775, 0.511414, -0.373801,
		32.136208, 37.652946, 40.636429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177731, 37.012218, 41.160538>,  <31.594564, 37.294956, 40.898090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177731, 37.012218, 41.160538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291721, 37.387238, 41.080746>,  <32.360115, 37.612247, 41.032871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291721, 37.387238, 41.080746>,  <32.177731, 37.012218, 41.160538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291721, 37.387238, 41.080746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109631, 0.174864, 0.978470,
		0.952243, -0.300714, -0.052951,
		0.284980, 0.937547, -0.199480,
		32.377216, 37.668503, 41.020901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867260, 37.034237, 41.455334>,  <32.177731, 37.012218, 41.160538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867260, 37.034237, 41.455334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694954, 37.389980, 41.394035>,  <32.591568, 37.603424, 41.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694954, 37.389980, 41.394035>,  <32.867260, 37.034237, 41.455334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694954, 37.389980, 41.394035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032966, 0.185197, 0.982148,
		0.901860, 0.418028, -0.109096,
		-0.430770, 0.889356, -0.153241,
		32.565723, 37.656788, 41.348064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324371, 37.606678, 41.565907>,  <32.867260, 37.034237, 41.455334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324371, 37.606678, 41.565907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955822, 37.746822, 41.633224>,  <32.734692, 37.830910, 41.673615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955822, 37.746822, 41.633224>,  <33.324371, 37.606678, 41.565907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955822, 37.746822, 41.633224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276334, 0.285964, 0.917532,
		0.273336, 0.891894, -0.360294,
		-0.921372, 0.350356, 0.168296,
		32.679409, 37.851929, 41.683712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460739, 38.198292, 41.951656>,  <33.324371, 37.606678, 41.565907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460739, 38.198292, 41.951656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072937, 38.129364, 42.021370>,  <32.840256, 38.088009, 42.063198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072937, 38.129364, 42.021370>,  <33.460739, 38.198292, 41.951656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072937, 38.129364, 42.021370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103096, 0.358397, 0.927859,
		-0.222351, 0.917528, -0.329701,
		-0.969501, -0.172319, 0.174284,
		32.782085, 38.077667, 42.073654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195946, 38.808189, 42.297722>,  <33.460739, 38.198292, 41.951656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195946, 38.808189, 42.297722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901058, 38.547035, 42.367290>,  <32.724125, 38.390343, 42.409031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901058, 38.547035, 42.367290>,  <33.195946, 38.808189, 42.297722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901058, 38.547035, 42.367290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156705, 0.415616, 0.895939,
		-0.657234, 0.633246, -0.408710,
		-0.737216, -0.652888, 0.173924,
		32.679893, 38.351170, 42.419468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641098, 39.161327, 42.594208>,  <33.195946, 38.808189, 42.297722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641098, 39.161327, 42.594208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591862, 38.777191, 42.694283>,  <32.562321, 38.546711, 42.754326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591862, 38.777191, 42.694283>,  <32.641098, 39.161327, 42.594208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591862, 38.777191, 42.694283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124460, 0.265053, 0.956168,
		-0.984560, 0.086557, -0.152149,
		-0.123091, -0.960341, 0.250187,
		32.554935, 38.489090, 42.769341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142376, 39.135704, 43.114929>,  <32.641098, 39.161327, 42.594208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142376, 39.135704, 43.114929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313950, 38.782150, 43.189499>,  <32.416893, 38.570019, 43.234241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313950, 38.782150, 43.189499>,  <32.142376, 39.135704, 43.114929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313950, 38.782150, 43.189499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126114, 0.145761, 0.981249,
		-0.894488, -0.444404, -0.048948,
		0.428936, -0.883889, 0.186426,
		32.442631, 38.516983, 43.245426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733269, 38.899086, 43.642086>,  <32.142376, 39.135704, 43.114929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733269, 38.899086, 43.642086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071426, 38.685463, 43.638302>,  <32.274323, 38.557289, 43.636032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071426, 38.685463, 43.638302>,  <31.733269, 38.899086, 43.642086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071426, 38.685463, 43.638302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082946, 0.113765, 0.990039,
		-0.527663, -0.837758, 0.140475,
		0.845394, -0.534059, -0.009459,
		32.325047, 38.525246, 43.635464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639174, 38.397938, 44.138412>,  <31.733269, 38.899086, 43.642086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639174, 38.397938, 44.138412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036175, 38.438793, 44.111549>,  <32.274376, 38.463306, 44.095432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036175, 38.438793, 44.111549>,  <31.639174, 38.397938, 44.138412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036175, 38.438793, 44.111549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071027, -0.034712, 0.996870,
		0.099485, -0.994165, -0.041706,
		0.992501, 0.102136, -0.067159,
		32.333923, 38.469433, 44.091400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821671, 38.053379, 44.750622>,  <31.639174, 38.397938, 44.138412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821671, 38.053379, 44.750622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148743, 38.259369, 44.647705>,  <32.344986, 38.382965, 44.585953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148743, 38.259369, 44.647705>,  <31.821671, 38.053379, 44.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148743, 38.259369, 44.647705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213409, 0.143935, 0.966302,
		0.534657, -0.845033, 0.007792,
		0.817679, 0.514977, -0.257294,
		32.394047, 38.413860, 44.570518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426067, 37.779896, 45.158440>,  <31.821671, 38.053379, 44.750622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426067, 37.779896, 45.158440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513344, 38.153969, 45.046848>,  <32.565708, 38.378414, 44.979893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513344, 38.153969, 45.046848>,  <32.426067, 37.779896, 45.158440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513344, 38.153969, 45.046848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349779, 0.191934, 0.916960,
		0.911070, -0.297650, -0.285230,
		0.218188, 0.935182, -0.278977,
		32.578800, 38.434525, 44.963154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094959, 37.861816, 45.369438>,  <32.426067, 37.779896, 45.158440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094959, 37.861816, 45.369438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919395, 38.217407, 45.317162>,  <32.814056, 38.430759, 45.285793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919395, 38.217407, 45.317162>,  <33.094959, 37.861816, 45.369438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919395, 38.217407, 45.317162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002064, 0.144458, 0.989509,
		0.898527, 0.434578, -0.061570,
		-0.438913, 0.888974, -0.130696,
		32.787724, 38.484100, 45.277954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909061, 37.765240, 45.610458>,  <33.094959, 37.861816, 45.369438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909061, 37.765240, 45.610458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952194, 37.433506, 45.829758>,  <33.978073, 37.234467, 45.961338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952194, 37.433506, 45.829758>,  <33.909061, 37.765240, 45.610458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952194, 37.433506, 45.829758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246694, -0.556534, -0.793355,
		0.963076, -0.049701, -0.264604,
		0.107830, -0.829337, 0.548245,
		33.984543, 37.184704, 45.994232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791824, 37.296516, 45.192585>,  <33.909061, 37.765240, 45.610458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791824, 37.296516, 45.192585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871399, 37.051071, 45.498241>,  <33.919144, 36.903805, 45.681633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871399, 37.051071, 45.498241>,  <33.791824, 37.296516, 45.192585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871399, 37.051071, 45.498241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187764, -0.789142, -0.584807,
		0.961857, -0.027137, -0.272204,
		0.198938, -0.613611, 0.764137,
		33.931080, 36.866989, 45.727482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428356, 36.945000, 45.002831>,  <33.791824, 37.296516, 45.192585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428356, 36.945000, 45.002831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212860, 36.711819, 45.246117>,  <34.083561, 36.571911, 45.392086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212860, 36.711819, 45.246117>,  <34.428356, 36.945000, 45.002831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212860, 36.711819, 45.246117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074959, -0.752246, -0.654605,
		0.839129, -0.307072, 0.448964,
		-0.538742, -0.582952, 0.608213,
		34.051239, 36.536934, 45.428581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868752, 36.255020, 45.136238>,  <34.428356, 36.945000, 45.002831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868752, 36.255020, 45.136238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472717, 36.227745, 45.185349>,  <34.235096, 36.211380, 45.214813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472717, 36.227745, 45.185349>,  <34.868752, 36.255020, 45.136238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472717, 36.227745, 45.185349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045382, -0.671978, -0.739180,
		0.132902, -0.737426, 0.662224,
		-0.990090, -0.068185, 0.122773,
		34.175690, 36.207291, 45.222179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701221, 35.532627, 45.068672>,  <34.868752, 36.255020, 45.136238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701221, 35.532627, 45.068672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336525, 35.694035, 45.037964>,  <34.117706, 35.790878, 45.019539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336525, 35.694035, 45.037964>,  <34.701221, 35.532627, 45.068672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336525, 35.694035, 45.037964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243760, -0.681963, -0.689570,
		-0.330609, -0.609999, 0.720138,
		-0.911745, 0.403519, -0.076770,
		34.063000, 35.815090, 45.014935>
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
