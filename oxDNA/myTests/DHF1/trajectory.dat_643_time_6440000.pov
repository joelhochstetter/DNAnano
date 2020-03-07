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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.097138, -0.115526, 4.066311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.002125, 0.099632, 3.742768>,  <2.945117, 0.228727, 3.548643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.002125, 0.099632, 3.742768>,  <3.097138, -0.115526, 4.066311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.002125, 0.099632, 3.742768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471249, 0.791946, 0.388260,
		0.849413, -0.288949, -0.441595,
		-0.237532, 0.537895, -0.808856,
		2.930865, 0.261001, 3.500112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.675417, 0.212805, 3.871294>,  <3.097138, -0.115526, 4.066311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.675417, 0.212805, 3.871294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.370548, 0.441338, 3.749526>,  <3.187627, 0.578457, 3.676465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.370548, 0.441338, 3.749526>,  <3.675417, 0.212805, 3.871294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.370548, 0.441338, 3.749526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469274, 0.811526, 0.348148,
		0.445954, 0.122493, -0.886635,
		-0.762173, 0.571333, -0.304420,
		3.141896, 0.612737, 3.658200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.894325, 0.814511, 3.490238>,  <3.675417, 0.212805, 3.871294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.894325, 0.814511, 3.490238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.559475, 0.897663, 3.692627>,  <3.358565, 0.947555, 3.814060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.559475, 0.897663, 3.692627>,  <3.894325, 0.814511, 3.490238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.559475, 0.897663, 3.692627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503165, 0.655490, 0.563168,
		-0.214588, 0.726030, -0.653325,
		-0.837124, 0.207881, 0.505973,
		3.308338, 0.960027, 3.844419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.734037, 1.608647, 3.576851>,  <3.894325, 0.814511, 3.490238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.734037, 1.608647, 3.576851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.611027, 1.400936, 3.895794>,  <3.537220, 1.276310, 4.087160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.611027, 1.400936, 3.895794>,  <3.734037, 1.608647, 3.576851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.611027, 1.400936, 3.895794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517817, 0.611695, 0.598077,
		-0.798307, 0.596810, 0.080777,
		-0.307527, -0.519276, 0.797358,
		3.518769, 1.245153, 4.135001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.715315, 2.081748, 4.148516>,  <3.734037, 1.608647, 3.576851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.715315, 2.081748, 4.148516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.693138, 1.726479, 4.330976>,  <3.679832, 1.513317, 4.440453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.693138, 1.726479, 4.330976>,  <3.715315, 2.081748, 4.148516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.693138, 1.726479, 4.330976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508989, 0.367895, 0.778192,
		-0.858986, 0.275322, 0.431673,
		-0.055443, -0.888173, 0.456152,
		3.676505, 1.460027, 4.467822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.427559, 2.250570, 4.824128>,  <3.715315, 2.081748, 4.148516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.427559, 2.250570, 4.824128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.599174, 1.889622, 4.840391>,  <3.702144, 1.673053, 4.850149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.599174, 1.889622, 4.840391>,  <3.427559, 2.250570, 4.824128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.599174, 1.889622, 4.840391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414621, 0.236725, 0.878664,
		-0.802505, -0.360123, 0.475706,
		0.429039, -0.902371, 0.040658,
		3.727886, 1.618911, 4.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.468357, 2.182672, 5.583126>,  <3.427559, 2.250570, 4.824128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.468357, 2.182672, 5.583126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.719456, 1.931156, 5.399580>,  <3.870115, 1.780246, 5.289453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.719456, 1.931156, 5.399580>,  <3.468357, 2.182672, 5.583126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.719456, 1.931156, 5.399580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647470, 0.094550, 0.756203,
		-0.432108, -0.771805, 0.466476,
		0.627747, -0.628791, -0.458865,
		3.907780, 1.742519, 5.261920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.608435, 1.723019, 6.074688>,  <3.468357, 2.182672, 5.583126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.608435, 1.723019, 6.074688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.916805, 1.741371, 5.820580>,  <4.101828, 1.752383, 5.668116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.916805, 1.741371, 5.820580>,  <3.608435, 1.723019, 6.074688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.916805, 1.741371, 5.820580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602979, 0.268692, 0.751146,
		0.205152, -0.962133, 0.179479,
		0.770927, 0.045877, -0.635269,
		4.148083, 1.755135, 5.630000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.420534, 2.410311, 1.401684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.790298, 2.305119, 1.291192>,  <5.012157, 2.242003, 1.224897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.790298, 2.305119, 1.291192>,  <4.420534, 2.410311, 1.401684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.790298, 2.305119, 1.291192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339995, -0.240039, -0.909277,
		0.172817, 0.934464, -0.311308,
		0.924412, -0.262981, -0.276230,
		5.067622, 2.226224, 1.208323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.658336, 2.725006, 0.701646>,  <4.420534, 2.410311, 1.401684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.658336, 2.725006, 0.701646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.837166, 2.374104, 0.771554>,  <4.944464, 2.163562, 0.813498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.837166, 2.374104, 0.771554>,  <4.658336, 2.725006, 0.701646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.837166, 2.374104, 0.771554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525150, -0.415582, -0.742637,
		0.724114, 0.240234, -0.646487,
		0.447075, -0.877257, 0.174770,
		4.971288, 2.110926, 0.823985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.892432, 2.415736, -0.023460>,  <4.658336, 2.725006, 0.701645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.892432, 2.415736, -0.023460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.851814, 2.127371, 0.250758>,  <4.827444, 1.954352, 0.415289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.851814, 2.127371, 0.250758>,  <4.892432, 2.415736, -0.023460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.851814, 2.127371, 0.250758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432244, -0.588691, -0.683087,
		0.896021, -0.365687, -0.251832,
		-0.101544, -0.720913, 0.685546,
		4.821351, 1.911097, 0.456422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.088840, 1.668512, -0.244118>,  <4.892432, 2.415736, -0.023460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.088840, 1.668512, -0.244118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.799660, 1.668915, 0.032241>,  <4.626152, 1.669156, 0.198057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.799660, 1.668915, 0.032241>,  <5.088840, 1.668512, -0.244118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.799660, 1.668915, 0.032241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638349, -0.383513, -0.667404,
		0.264297, -0.923535, 0.277903,
		-0.722951, 0.001006, 0.690899,
		4.582775, 1.669217, 0.239511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.879185, 0.935885, -0.193068>,  <5.088840, 1.668512, -0.244118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.879185, 0.935885, -0.193068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.593307, 1.189560, -0.075073>,  <4.421781, 1.341765, -0.004277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.593307, 1.189560, -0.075073>,  <4.879185, 0.935885, -0.193068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.593307, 1.189560, -0.075073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631892, -0.404625, -0.661053,
		-0.299872, -0.658852, 0.689921,
		-0.714695, 0.634187, 0.294987,
		4.378899, 1.379816, 0.013423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.353523, 0.502767, -0.053435>,  <4.879185, 0.935885, -0.193068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.353523, 0.502767, -0.053435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.161606, 0.853434, -0.067599>,  <4.046455, 1.063834, -0.076098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.161606, 0.853434, -0.067599>,  <4.353523, 0.502767, -0.053435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.161606, 0.853434, -0.067599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777435, -0.443500, -0.445985,
		-0.406685, -0.186450, 0.894340,
		-0.479793, 0.876667, -0.035411,
		4.017668, 1.116434, -0.078222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.687620, 0.366527, 0.133432>,  <4.353523, 0.502767, -0.053435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.687620, 0.366527, 0.133432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.678719, 0.709305, -0.072539>,  <3.673378, 0.914972, -0.196121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.678719, 0.709305, -0.072539>,  <3.687620, 0.366527, 0.133432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.678719, 0.709305, -0.072539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779520, -0.337367, -0.527761,
		-0.625982, 0.389652, 0.675514,
		-0.022253, 0.856945, -0.514927,
		3.672043, 0.966388, -0.227017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.027300, 0.637039, 0.127161>,  <3.687620, 0.366527, 0.133432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.027300, 0.637039, 0.127161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.193840, 0.792545, -0.201598>,  <3.293764, 0.885849, -0.398853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.193840, 0.792545, -0.201598>,  <3.027300, 0.637039, 0.127161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193840, 0.792545, -0.201598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801825, -0.269170, -0.533502,
		-0.428637, 0.881141, 0.199653,
		0.416350, 0.388766, -0.821897,
		3.318745, 0.909175, -0.448167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
