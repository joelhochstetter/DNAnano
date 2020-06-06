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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<46.659462, 41.412846, 43.870808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846497, 41.583054, 44.180725>,  <46.958717, 41.685177, 44.366676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846497, 41.583054, 44.180725>,  <46.659462, 41.412846, 43.870808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846497, 41.583054, 44.180725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590509, -0.501873, 0.631999,
		0.657772, -0.753034, 0.016603,
		0.467584, 0.425516, 0.774792,
		46.986771, 41.710709, 44.413162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783180, 40.887035, 44.220417>,  <46.659462, 41.412846, 43.870808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783180, 40.887035, 44.220417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802826, 41.189934, 44.480927>,  <46.814613, 41.371674, 44.637234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802826, 41.189934, 44.480927>,  <46.783180, 40.887035, 44.220417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802826, 41.189934, 44.480927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556249, -0.520840, 0.647543,
		0.829562, -0.394078, 0.395637,
		0.049118, 0.757251, 0.651275,
		46.817562, 41.417110, 44.676308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.076248, 40.508286, 44.868217>,  <46.783180, 40.887035, 44.220417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.076248, 40.508286, 44.868217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902313, 40.850510, 44.980598>,  <46.797951, 41.055843, 45.048027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902313, 40.850510, 44.980598>,  <47.076248, 40.508286, 44.868217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.902313, 40.850510, 44.980598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452371, -0.477305, 0.753353,
		0.778638, 0.200492, 0.594581,
		-0.434837, 0.855560, 0.280951,
		46.771862, 41.107178, 45.064884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.076599, 40.389164, 45.545918>,  <47.076248, 40.508286, 44.868217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.076599, 40.389164, 45.545918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808868, 40.679314, 45.481628>,  <46.648232, 40.853405, 45.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808868, 40.679314, 45.481628>,  <47.076599, 40.389164, 45.545918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808868, 40.679314, 45.481628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575544, -0.369418, 0.729575,
		0.469844, 0.580826, 0.664747,
		-0.669325, 0.725377, -0.160722,
		46.608070, 40.896927, 45.433411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004478, 40.605003, 46.129692>,  <47.076599, 40.389164, 45.545918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004478, 40.605003, 46.129692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670006, 40.725105, 45.946106>,  <46.469322, 40.797169, 45.835953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670006, 40.725105, 45.946106>,  <47.004478, 40.605003, 46.129692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670006, 40.725105, 45.946106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539339, -0.298183, 0.787528,
		0.099605, 0.906053, 0.411275,
		-0.836177, 0.300258, -0.458969,
		46.419151, 40.815182, 45.808414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636593, 40.849377, 46.681850>,  <47.004478, 40.605003, 46.129692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636593, 40.849377, 46.681850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363937, 40.861458, 46.389427>,  <46.200344, 40.868706, 46.213974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363937, 40.861458, 46.389427>,  <46.636593, 40.849377, 46.681850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363937, 40.861458, 46.389427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727817, -0.130579, 0.673224,
		-0.075127, 0.990978, 0.110990,
		-0.681643, 0.030203, -0.731061,
		46.159443, 40.870518, 46.170109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072369, 41.381702, 46.841599>,  <46.636593, 40.849377, 46.681850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072369, 41.381702, 46.841599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897293, 41.107506, 46.608864>,  <45.792248, 40.942989, 46.469223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897293, 41.107506, 46.608864>,  <46.072369, 41.381702, 46.841599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897293, 41.107506, 46.608864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776022, -0.038823, 0.629509,
		-0.454109, 0.727049, -0.514961,
		-0.437692, -0.685487, -0.581836,
		45.765984, 40.901859, 46.434315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339565, 41.498028, 46.773067>,  <46.072369, 41.381702, 46.841599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339565, 41.498028, 46.773067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355675, 41.114006, 46.662300>,  <45.365341, 40.883595, 46.595840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355675, 41.114006, 46.662300>,  <45.339565, 41.498028, 46.773067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355675, 41.114006, 46.662300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705833, -0.223493, 0.672198,
		-0.707232, 0.168386, -0.686636,
		0.040270, -0.960050, -0.276914,
		45.367756, 40.825993, 46.579227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706711, 41.374710, 46.726421>,  <45.339565, 41.498028, 46.773067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706711, 41.374710, 46.726421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880455, 41.015762, 46.757545>,  <44.984703, 40.800392, 46.776218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880455, 41.015762, 46.757545>,  <44.706711, 41.374710, 46.726421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880455, 41.015762, 46.757545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758756, -0.317975, 0.568490,
		-0.485405, -0.305969, -0.819002,
		0.434363, -0.897371, 0.077810,
		45.010765, 40.746552, 46.780888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098194, 40.806332, 46.666908>,  <44.706711, 41.374710, 46.726421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098194, 40.806332, 46.666908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400135, 40.588562, 46.813229>,  <44.581299, 40.457901, 46.901020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400135, 40.588562, 46.813229>,  <44.098194, 40.806332, 46.666908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400135, 40.588562, 46.813229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629183, -0.443482, 0.638320,
		-0.185289, -0.711991, -0.677302,
		0.754849, -0.544420, 0.365800,
		44.626591, 40.425236, 46.922970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856449, 40.066456, 46.726017>,  <44.098194, 40.806332, 46.666908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856449, 40.066456, 46.726017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160439, 40.095490, 46.984371>,  <44.342831, 40.112907, 47.139385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160439, 40.095490, 46.984371>,  <43.856449, 40.066456, 46.726017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160439, 40.095490, 46.984371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548729, -0.460934, 0.697450,
		0.348333, -0.884462, -0.310471,
		0.759974, 0.072580, 0.645888,
		44.388432, 40.117264, 47.178139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839420, 39.484478, 47.028015>,  <43.856449, 40.066456, 46.726017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839420, 39.484478, 47.028015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038048, 39.704041, 47.296974>,  <44.157227, 39.835777, 47.458347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038048, 39.704041, 47.296974>,  <43.839420, 39.484478, 47.028015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038048, 39.704041, 47.296974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569623, -0.378429, 0.729604,
		0.654940, -0.745312, 0.124754,
		0.496572, 0.548909, 0.672395,
		44.187019, 39.868713, 47.498692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971672, 39.036114, 47.498325>,  <43.839420, 39.484478, 47.028015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971672, 39.036114, 47.498325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023952, 39.381958, 47.692387>,  <44.055321, 39.589462, 47.808823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023952, 39.381958, 47.692387>,  <43.971672, 39.036114, 47.498325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023952, 39.381958, 47.692387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471069, -0.376422, 0.797747,
		0.872360, -0.332804, 0.358092,
		0.130700, 0.864609, 0.485149,
		44.063164, 39.641342, 47.837933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184082, 38.804760, 48.213875>,  <43.971672, 39.036114, 47.498325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184082, 38.804760, 48.213875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097397, 39.193069, 48.255119>,  <44.045387, 39.426056, 48.279865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097397, 39.193069, 48.255119>,  <44.184082, 38.804760, 48.213875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097397, 39.193069, 48.255119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303000, -0.167286, 0.938193,
		0.928024, 0.172074, 0.330397,
		-0.216710, 0.970776, 0.103107,
		44.032383, 39.484303, 48.286053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537769, 39.176380, 48.918266>,  <44.184082, 38.804760, 48.213875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537769, 39.176380, 48.918266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204636, 39.371040, 48.812771>,  <44.004757, 39.487839, 48.749474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204636, 39.371040, 48.812771>,  <44.537769, 39.176380, 48.918266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204636, 39.371040, 48.812771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246408, 0.100709, 0.963920,
		0.495655, 0.867771, 0.036041,
		-0.832832, 0.486652, -0.263742,
		43.954784, 39.517036, 48.733646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399094, 39.431339, 49.497475>,  <44.537769, 39.176380, 48.918266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399094, 39.431339, 49.497475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053963, 39.480103, 49.301247>,  <43.846882, 39.509361, 49.183510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053963, 39.480103, 49.301247>,  <44.399094, 39.431339, 49.497475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053963, 39.480103, 49.301247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485770, 0.068472, 0.871401,
		0.139825, 0.990176, 0.000142,
		-0.862831, 0.121912, -0.490572,
		43.795113, 39.516678, 49.154076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966698, 39.910587, 49.949978>,  <44.399094, 39.431339, 49.497475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966698, 39.910587, 49.949978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722839, 39.708153, 49.705940>,  <43.576523, 39.586693, 49.559517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722839, 39.708153, 49.705940>,  <43.966698, 39.910587, 49.949978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722839, 39.708153, 49.705940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547961, -0.287078, 0.785700,
		-0.572773, 0.813306, -0.102297,
		-0.609648, -0.506082, -0.610090,
		43.539944, 39.556328, 49.522915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254192, 40.157425, 50.040440>,  <43.966698, 39.910587, 49.949978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254192, 40.157425, 50.040440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225006, 39.784096, 49.899822>,  <43.207493, 39.560097, 49.815453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225006, 39.784096, 49.899822>,  <43.254192, 40.157425, 50.040440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225006, 39.784096, 49.899822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598225, -0.241073, 0.764206,
		-0.797999, 0.266061, -0.540748,
		-0.072966, -0.933325, -0.351540,
		43.203117, 39.504097, 49.794361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572254, 40.030472, 50.129555>,  <43.254192, 40.157425, 50.040440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572254, 40.030472, 50.129555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707970, 39.657608, 50.079025>,  <42.789398, 39.433891, 50.048710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707970, 39.657608, 50.079025>,  <42.572254, 40.030472, 50.129555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707970, 39.657608, 50.079025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630290, -0.324964, 0.705076,
		-0.698295, -0.159607, -0.697789,
		0.339291, -0.932161, -0.126322,
		42.809757, 39.377960, 50.041130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952007, 39.675369, 50.086910>,  <42.572254, 40.030472, 50.129555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952007, 39.675369, 50.086910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251324, 39.427216, 50.180874>,  <42.430912, 39.278324, 50.237251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251324, 39.427216, 50.180874>,  <41.952007, 39.675369, 50.086910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251324, 39.427216, 50.180874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515165, -0.320363, 0.794967,
		-0.417933, -0.715881, -0.559327,
		0.748289, -0.620389, 0.234906,
		42.475811, 39.241100, 50.251347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660034, 39.016029, 50.241379>,  <41.952007, 39.675369, 50.086910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660034, 39.016029, 50.241379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009960, 39.004570, 50.434822>,  <42.219917, 38.997696, 50.550888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009960, 39.004570, 50.434822>,  <41.660034, 39.016029, 50.241379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009960, 39.004570, 50.434822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484390, -0.068409, 0.872173,
		0.008103, -0.997246, -0.073719,
		0.874814, -0.028642, 0.483610,
		42.272404, 38.995975, 50.579906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642666, 38.400394, 50.641533>,  <41.660034, 39.016029, 50.241379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642666, 38.400394, 50.641533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920403, 38.613510, 50.835041>,  <42.087044, 38.741379, 50.951145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920403, 38.613510, 50.835041>,  <41.642666, 38.400394, 50.641533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920403, 38.613510, 50.835041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522436, -0.089145, 0.848006,
		0.494932, -0.841541, 0.216450,
		0.694337, 0.532787, 0.483772,
		42.128704, 38.773346, 50.980171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785507, 38.079845, 51.303009>,  <41.642666, 38.400394, 50.641533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785507, 38.079845, 51.303009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929977, 38.448067, 51.362518>,  <42.016659, 38.668999, 51.398224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929977, 38.448067, 51.362518>,  <41.785507, 38.079845, 51.303009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929977, 38.448067, 51.362518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344200, -0.016667, 0.938748,
		0.866649, -0.390258, 0.310835,
		0.361173, 0.920555, 0.148771,
		42.038330, 38.724232, 51.407150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203465, 37.994610, 51.947372>,  <41.785507, 38.079845, 51.303009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203465, 37.994610, 51.947372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144562, 38.388847, 51.914093>,  <42.109219, 38.625389, 51.894127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144562, 38.388847, 51.914093>,  <42.203465, 37.994610, 51.947372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144562, 38.388847, 51.914093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237516, 0.046418, 0.970274,
		0.960157, 0.162639, 0.227259,
		-0.147256, 0.985593, -0.083198,
		42.100384, 38.684525, 51.889133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572498, 38.328789, 52.586380>,  <42.203465, 37.994610, 51.947372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572498, 38.328789, 52.586380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299416, 38.573265, 52.426205>,  <42.135567, 38.719952, 52.330097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299416, 38.573265, 52.426205>,  <42.572498, 38.328789, 52.586380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299416, 38.573265, 52.426205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271719, 0.296374, 0.915604,
		0.678292, 0.733897, -0.036264,
		-0.682707, 0.611193, -0.400442,
		42.094604, 38.756622, 52.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702728, 39.133038, 52.816906>,  <42.572498, 38.328789, 52.586380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702728, 39.133038, 52.816906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318470, 39.070290, 52.725208>,  <42.087914, 39.032642, 52.670189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318470, 39.070290, 52.725208>,  <42.702728, 39.133038, 52.816906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318470, 39.070290, 52.725208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242382, 0.070221, 0.967636,
		-0.135691, 0.985120, -0.105479,
		-0.960645, -0.156866, -0.229247,
		42.030277, 39.023232, 52.656433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342457, 39.680695, 53.149277>,  <42.702728, 39.133038, 52.816906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342457, 39.680695, 53.149277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057388, 39.410072, 53.075119>,  <41.886345, 39.247700, 53.030624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057388, 39.410072, 53.075119>,  <42.342457, 39.680695, 53.149277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057388, 39.410072, 53.075119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281663, 0.033939, 0.958913,
		-0.642464, 0.735611, -0.214747,
		-0.712675, -0.676553, -0.185390,
		41.843586, 39.207108, 53.019501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736038, 39.949032, 53.319824>,  <42.342457, 39.680695, 53.149277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736038, 39.949032, 53.319824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653206, 39.557724, 53.323933>,  <41.603508, 39.322941, 53.326397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653206, 39.557724, 53.323933>,  <41.736038, 39.949032, 53.319824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653206, 39.557724, 53.323933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444575, 0.103446, 0.889748,
		-0.871477, 0.179682, -0.456337,
		-0.207078, -0.978270, 0.010269,
		41.591084, 39.264244, 53.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968517, 39.832188, 53.468910>,  <41.736038, 39.949032, 53.319824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968517, 39.832188, 53.468910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139481, 39.487442, 53.578098>,  <41.242058, 39.280594, 53.643612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139481, 39.487442, 53.578098>,  <40.968517, 39.832188, 53.468910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139481, 39.487442, 53.578098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546562, -0.005822, 0.837398,
		-0.720132, -0.507110, -0.473549,
		0.427410, -0.861861, 0.272975,
		41.267704, 39.228882, 53.659992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489864, 39.459896, 53.752609>,  <40.968517, 39.832188, 53.468910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489864, 39.459896, 53.752609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828194, 39.308357, 53.902843>,  <41.031189, 39.217434, 53.992985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828194, 39.308357, 53.902843>,  <40.489864, 39.459896, 53.752609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828194, 39.308357, 53.902843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425353, -0.054014, 0.903414,
		-0.321970, -0.923881, -0.206830,
		0.845819, -0.378848, 0.375585,
		41.081940, 39.194702, 54.015518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238049, 38.894657, 54.278332>,  <40.489864, 39.459896, 53.752609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238049, 38.894657, 54.278332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624126, 38.953819, 54.364609>,  <40.855774, 38.989315, 54.416374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624126, 38.953819, 54.364609>,  <40.238049, 38.894657, 54.278332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624126, 38.953819, 54.364609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199272, -0.118217, 0.972787,
		0.169379, -0.981911, -0.084629,
		0.965195, 0.147905, 0.215691,
		40.913685, 38.998192, 54.429317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409645, 38.372265, 54.760529>,  <40.238049, 38.894657, 54.278332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409645, 38.372265, 54.760529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706024, 38.637917, 54.800396>,  <40.883850, 38.797306, 54.824318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706024, 38.637917, 54.800396>,  <40.409645, 38.372265, 54.760529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706024, 38.637917, 54.800396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035246, -0.109758, 0.993333,
		0.670640, -0.739519, -0.057917,
		0.740946, 0.664127, 0.099672,
		40.928307, 38.837154, 54.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773739, 38.122952, 55.241886>,  <40.409645, 38.372265, 54.760529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773739, 38.122952, 55.241886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875404, 38.509789, 55.246567>,  <40.936405, 38.741890, 55.249374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875404, 38.509789, 55.246567>,  <40.773739, 38.122952, 55.241886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875404, 38.509789, 55.246567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103273, 0.015112, 0.994538,
		0.961631, -0.253987, 0.103716,
		0.254167, 0.967090, 0.011698,
		40.951656, 38.799915, 55.250076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227871, 38.221790, 55.804768>,  <40.773739, 38.122952, 55.241886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227871, 38.221790, 55.804768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112427, 38.600708, 55.749142>,  <41.043159, 38.828056, 55.715767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112427, 38.600708, 55.749142>,  <41.227871, 38.221790, 55.804768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112427, 38.600708, 55.749142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064026, 0.164015, 0.984378,
		0.955302, 0.275202, -0.107989,
		-0.288615, 0.947293, -0.139064,
		41.025841, 38.884895, 55.707424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742729, 38.651669, 56.271019>,  <41.227871, 38.221790, 55.804768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742729, 38.651669, 56.271019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428802, 38.875481, 56.164444>,  <41.240448, 39.009769, 56.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428802, 38.875481, 56.164444>,  <41.742729, 38.651669, 56.271019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428802, 38.875481, 56.164444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032552, 0.392110, 0.919342,
		0.618873, 0.730188, -0.289520,
		-0.784816, 0.559532, -0.266435,
		41.193359, 39.043339, 56.084515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934155, 39.371044, 56.451012>,  <41.742729, 38.651669, 56.271019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934155, 39.371044, 56.451012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535179, 39.361717, 56.423943>,  <41.295795, 39.356121, 56.407700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535179, 39.361717, 56.423943>,  <41.934155, 39.371044, 56.451012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535179, 39.361717, 56.423943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071419, 0.387761, 0.918989,
		0.004809, 0.921465, -0.388431,
		-0.997435, -0.023322, -0.067675,
		41.235950, 39.354721, 56.403641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636211, 39.937290, 56.717102>,  <41.934155, 39.371044, 56.451012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636211, 39.937290, 56.717102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326462, 39.687065, 56.755074>,  <41.140614, 39.536930, 56.777855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326462, 39.687065, 56.755074>,  <41.636211, 39.937290, 56.717102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326462, 39.687065, 56.755074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153810, 0.331646, 0.930781,
		-0.613748, 0.706172, -0.353036,
		-0.774375, -0.625565, 0.094930,
		41.094151, 39.499397, 56.783554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391300, 40.228199, 57.254898>,  <41.636211, 39.937290, 56.717102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391300, 40.228199, 57.254898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179108, 39.889313, 57.243446>,  <41.051792, 39.685982, 57.236576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179108, 39.889313, 57.243446>,  <41.391300, 40.228199, 57.254898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179108, 39.889313, 57.243446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196656, 0.090141, 0.976320,
		-0.824569, 0.523551, -0.214428,
		-0.530482, -0.847212, -0.028632,
		41.019962, 39.635151, 57.234856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797421, 40.379990, 57.571259>,  <41.391300, 40.228199, 57.254898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797421, 40.379990, 57.571259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860779, 39.986443, 57.604507>,  <40.898792, 39.750313, 57.624458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860779, 39.986443, 57.604507>,  <40.797421, 40.379990, 57.571259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860779, 39.986443, 57.604507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050352, 0.076026, 0.995834,
		-0.986091, -0.161922, -0.037498,
		0.158397, -0.983871, 0.083121,
		40.908298, 39.691280, 57.629444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258480, 40.060558, 58.018150>,  <40.797421, 40.379990, 57.571259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258480, 40.060558, 58.018150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573627, 39.814484, 58.029507>,  <40.762718, 39.666840, 58.036320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573627, 39.814484, 58.029507>,  <40.258480, 40.060558, 58.018150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573627, 39.814484, 58.029507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033229, 0.003571, 0.999441,
		-0.614941, -0.788376, -0.017628,
		0.787872, -0.615183, 0.028393,
		40.809990, 39.629929, 58.038025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032948, 39.440662, 58.397503>,  <40.258480, 40.060558, 58.018150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032948, 39.440662, 58.397503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431381, 39.460991, 58.426456>,  <40.670441, 39.473186, 58.443829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431381, 39.460991, 58.426456>,  <40.032948, 39.440662, 58.397503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431381, 39.460991, 58.426456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067050, -0.099797, 0.992746,
		0.057676, -0.993709, -0.095998,
		0.996081, 0.050821, 0.072384,
		40.730206, 39.476238, 58.448170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117069, 39.111492, 59.040958>,  <40.032948, 39.440662, 58.397503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117069, 39.111492, 59.040958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485107, 39.255455, 58.979122>,  <40.705929, 39.341831, 58.942020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485107, 39.255455, 58.979122>,  <40.117069, 39.111492, 59.040958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485107, 39.255455, 58.979122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230980, -0.179790, 0.956203,
		0.316347, -0.915503, -0.248554,
		0.920093, 0.359903, -0.154587,
		40.761135, 39.363426, 58.932747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521244, 38.612000, 59.470169>,  <40.117069, 39.111492, 59.040958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521244, 38.612000, 59.470169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691845, 38.965004, 59.390900>,  <40.794205, 39.176807, 59.343338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691845, 38.965004, 59.390900>,  <40.521244, 38.612000, 59.470169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691845, 38.965004, 59.390900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411716, 0.005664, 0.911294,
		0.805349, -0.470259, -0.360928,
		0.426500, 0.882510, -0.198175,
		40.819794, 39.229755, 59.331448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136528, 38.373886, 59.665806>,  <40.521244, 38.612000, 59.470169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136528, 38.373886, 59.665806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085106, 38.765648, 59.728085>,  <41.054253, 39.000706, 59.765453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085106, 38.765648, 59.728085>,  <41.136528, 38.373886, 59.665806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085106, 38.765648, 59.728085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295138, -0.112104, 0.948855,
		0.946767, 0.167933, -0.274647,
		-0.128555, 0.979404, 0.155700,
		41.046539, 39.059467, 59.774796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777836, 38.881538, 59.797375>,  <41.136528, 38.373886, 59.665806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777836, 38.881538, 59.797375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437325, 38.982246, 59.981522>,  <41.233017, 39.042671, 60.092010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437325, 38.982246, 59.981522>,  <41.777836, 38.881538, 59.797375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437325, 38.982246, 59.981522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423456, -0.188463, 0.886096,
		0.309856, 0.949259, 0.053821,
		-0.851278, 0.251771, 0.460366,
		41.181942, 39.057777, 60.119633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894089, 39.472404, 60.320763>,  <41.777836, 38.881538, 59.797375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894089, 39.472404, 60.320763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598480, 39.207542, 60.370403>,  <41.421116, 39.048626, 60.400188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598480, 39.207542, 60.370403>,  <41.894089, 39.472404, 60.320763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598480, 39.207542, 60.370403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514145, -0.435322, 0.739019,
		-0.435322, 0.609954, 0.662155,
		-0.739019, -0.662155, 0.124099,
		41.376774, 39.008896, 60.407635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532753, 39.558060, 60.880592>,  <41.894089, 39.472404, 60.320763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532753, 39.558060, 60.880592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536777, 39.172997, 60.772373>,  <41.539192, 38.941959, 60.707443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536777, 39.172997, 60.772373>,  <41.532753, 39.558060, 60.880592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536777, 39.172997, 60.772373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634178, -0.203041, 0.746051,
		-0.773122, -0.179082, 0.608451,
		0.010064, -0.962655, -0.270546,
		41.539795, 38.884201, 60.691208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871922, 39.331604, 61.349987>,  <41.532753, 39.558060, 60.880592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871922, 39.331604, 61.349987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996742, 39.675575, 61.511559>,  <41.071632, 39.881958, 61.608501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996742, 39.675575, 61.511559>,  <40.871922, 39.331604, 61.349987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996742, 39.675575, 61.511559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377703, 0.277827, -0.883262,
		-0.871760, 0.428185, -0.238101,
		0.312049, 0.859924, 0.403926,
		41.090359, 39.933552, 61.632736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436180, 39.888992, 61.252228>,  <40.871922, 39.331604, 61.349987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436180, 39.888992, 61.252228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817612, 40.003487, 61.289646>,  <41.046471, 40.072182, 61.312096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817612, 40.003487, 61.289646>,  <40.436180, 39.888992, 61.252228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817612, 40.003487, 61.289646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009320, 0.338540, -0.940906,
		-0.300988, 0.896359, 0.325493,
		0.953582, 0.286235, 0.093543,
		41.103687, 40.089355, 61.317707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492455, 40.631420, 61.072922>,  <40.436180, 39.888992, 61.252228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492455, 40.631420, 61.072922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830711, 40.425026, 61.018295>,  <41.033665, 40.301189, 60.985519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830711, 40.425026, 61.018295>,  <40.492455, 40.631420, 61.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830711, 40.425026, 61.018295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068194, 0.358206, -0.931149,
		0.529375, 0.778107, 0.338101,
		0.845643, -0.515983, -0.136563,
		41.084404, 40.270229, 60.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048573, 41.028801, 60.990700>,  <40.492455, 40.631420, 61.072922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048573, 41.028801, 60.990700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066422, 40.685104, 60.786850>,  <41.077129, 40.478886, 60.664539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066422, 40.685104, 60.786850>,  <41.048573, 41.028801, 60.990700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066422, 40.685104, 60.786850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126020, 0.510896, -0.850355,
		0.991024, -0.026279, 0.131078,
		0.044620, -0.859241, -0.509622,
		41.079807, 40.427334, 60.633965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583580, 41.007660, 60.606392>,  <41.048573, 41.028801, 60.990700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583580, 41.007660, 60.606392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342381, 40.744041, 60.426594>,  <41.197662, 40.585869, 60.318714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342381, 40.744041, 60.426594>,  <41.583580, 41.007660, 60.606392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342381, 40.744041, 60.426594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299560, 0.335163, -0.893269,
		0.739365, -0.673289, -0.004676,
		-0.602995, -0.659050, -0.449499,
		41.161480, 40.546326, 60.291744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005039, 41.512474, 60.373474>,  <41.583580, 41.007660, 60.606392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005039, 41.512474, 60.373474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873314, 41.192223, 60.173256>,  <41.794277, 41.000072, 60.053123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873314, 41.192223, 60.173256>,  <42.005039, 41.512474, 60.373474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873314, 41.192223, 60.173256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629307, 0.209108, -0.748496,
		0.703934, -0.561491, 0.434977,
		-0.329316, -0.800626, -0.500549,
		41.774521, 40.952034, 60.023090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639725, 41.118820, 60.135025>,  <42.005039, 41.512474, 60.373474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639725, 41.118820, 60.135025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322159, 41.010628, 59.917202>,  <42.131618, 40.945713, 59.786507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322159, 41.010628, 59.917202>,  <42.639725, 41.118820, 60.135025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322159, 41.010628, 59.917202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570123, -0.019849, -0.821320,
		0.211340, -0.962521, 0.169964,
		-0.793912, -0.270478, -0.544560,
		42.083984, 40.929485, 59.753834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879162, 40.524734, 59.725239>,  <42.639725, 41.118820, 60.135025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879162, 40.524734, 59.725239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552010, 40.672234, 59.548561>,  <42.355717, 40.760731, 59.442554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552010, 40.672234, 59.548561>,  <42.879162, 40.524734, 59.725239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552010, 40.672234, 59.548561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435794, -0.104260, -0.893987,
		-0.375704, -0.923665, -0.075424,
		-0.817881, 0.368744, -0.441699,
		42.306644, 40.782856, 59.416050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773457, 40.096252, 59.143791>,  <42.879162, 40.524734, 59.725239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773457, 40.096252, 59.143791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591835, 40.442596, 59.059780>,  <42.482861, 40.650402, 59.009373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591835, 40.442596, 59.059780>,  <42.773457, 40.096252, 59.143791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591835, 40.442596, 59.059780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531011, 0.073698, -0.844154,
		-0.715444, -0.494822, -0.493246,
		-0.454057, 0.865864, -0.210029,
		42.455616, 40.702354, 58.996773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874523, 40.132603, 58.517078>,  <42.773457, 40.096252, 59.143791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874523, 40.132603, 58.517078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746681, 40.507629, 58.571945>,  <42.669975, 40.732647, 58.604866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746681, 40.507629, 58.571945>,  <42.874523, 40.132603, 58.517078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746681, 40.507629, 58.571945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560834, 0.303854, -0.770154,
		-0.763751, -0.169223, -0.622935,
		-0.319609, 0.937569, 0.137163,
		42.650799, 40.788898, 58.613094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665718, 40.320862, 57.881798>,  <42.874523, 40.132603, 58.517078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665718, 40.320862, 57.881798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746262, 40.656654, 58.083683>,  <42.794586, 40.858128, 58.204815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746262, 40.656654, 58.083683>,  <42.665718, 40.320862, 57.881798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746262, 40.656654, 58.083683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446130, 0.380119, -0.810233,
		-0.872022, 0.388314, -0.297975,
		0.201359, 0.839477, 0.504711,
		42.806671, 40.908497, 58.235096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398003, 40.944790, 57.519199>,  <42.665718, 40.320862, 57.881798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398003, 40.944790, 57.519199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693924, 41.087151, 57.747589>,  <42.871479, 41.172569, 57.884624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693924, 41.087151, 57.747589>,  <42.398003, 40.944790, 57.519199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693924, 41.087151, 57.747589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499000, 0.279009, -0.820459,
		-0.451314, 0.891900, 0.028816,
		0.739808, 0.355906, 0.570978,
		42.915867, 41.193924, 57.918884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565151, 41.559826, 57.194313>,  <42.398003, 40.944790, 57.519199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565151, 41.559826, 57.194313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873520, 41.534843, 57.447853>,  <43.058540, 41.519852, 57.599979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873520, 41.534843, 57.447853>,  <42.565151, 41.559826, 57.194313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873520, 41.534843, 57.447853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613530, 0.340066, -0.712696,
		-0.171037, 0.938325, 0.300487,
		0.770926, -0.062461, 0.633855,
		43.104797, 41.516106, 57.638008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959274, 42.206219, 57.069195>,  <42.565151, 41.559826, 57.194313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959274, 42.206219, 57.069195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198601, 41.919426, 57.212280>,  <43.342197, 41.747353, 57.298130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198601, 41.919426, 57.212280>,  <42.959274, 42.206219, 57.069195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198601, 41.919426, 57.212280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625771, 0.139300, -0.767467,
		0.500428, 0.683034, 0.532011,
		0.598316, -0.716979, 0.357713,
		43.378094, 41.704330, 57.319595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606491, 42.488018, 57.348328>,  <42.959274, 42.206219, 57.069195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606491, 42.488018, 57.348328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665939, 42.110100, 57.231522>,  <43.701607, 41.883347, 57.161438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665939, 42.110100, 57.231522>,  <43.606491, 42.488018, 57.348328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665939, 42.110100, 57.231522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682399, 0.311697, -0.661193,
		0.715713, -0.101004, 0.691052,
		0.148616, -0.944798, -0.292011,
		43.710526, 41.826660, 57.143917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070995, 42.553680, 56.795807>,  <43.606491, 42.488018, 57.348328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070995, 42.553680, 56.795807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004601, 42.164009, 56.734589>,  <43.964764, 41.930206, 56.697857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004601, 42.164009, 56.734589>,  <44.070995, 42.553680, 56.795807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004601, 42.164009, 56.734589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612769, 0.019704, -0.790016,
		0.772632, -0.224918, 0.593676,
		-0.165992, -0.974178, -0.153047,
		43.954803, 41.871758, 56.688675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708385, 42.297657, 56.529846>,  <44.070995, 42.553680, 56.795807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708385, 42.297657, 56.529846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439018, 42.020599, 56.426498>,  <44.277397, 41.854366, 56.364491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439018, 42.020599, 56.426498>,  <44.708385, 42.297657, 56.529846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439018, 42.020599, 56.426498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458227, -0.116828, -0.881124,
		0.580120, -0.711756, 0.396062,
		-0.673416, -0.692643, -0.258371,
		44.236992, 41.812805, 56.348988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097065, 41.663887, 56.313038>,  <44.708385, 42.297657, 56.529846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097065, 41.663887, 56.313038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744301, 41.654480, 56.124706>,  <44.532642, 41.648834, 56.011707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744301, 41.654480, 56.124706>,  <45.097065, 41.663887, 56.313038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744301, 41.654480, 56.124706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469116, 0.054831, -0.881433,
		0.046524, -0.998219, -0.037335,
		-0.881910, -0.023493, -0.470831,
		44.479729, 41.647423, 55.983456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190346, 41.206142, 55.805340>,  <45.097065, 41.663887, 56.313038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190346, 41.206142, 55.805340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856476, 41.397682, 55.696518>,  <44.656151, 41.512604, 55.631226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856476, 41.397682, 55.696518>,  <45.190346, 41.206142, 55.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856476, 41.397682, 55.696518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323842, 0.027174, -0.945721,
		-0.445462, -0.877478, -0.177752,
		-0.834679, 0.478847, -0.272059,
		44.606071, 41.541336, 55.614899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994102, 40.835606, 55.242207>,  <45.190346, 41.206142, 55.805340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994102, 40.835606, 55.242207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800045, 41.183960, 55.210724>,  <44.683613, 41.392975, 55.191833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800045, 41.183960, 55.210724>,  <44.994102, 40.835606, 55.242207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800045, 41.183960, 55.210724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319741, 0.092897, -0.942940,
		-0.813883, -0.482623, -0.323526,
		-0.485139, 0.870888, -0.078707,
		44.654503, 41.445225, 55.187111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501884, 40.818665, 54.648777>,  <44.994102, 40.835606, 55.242207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501884, 40.818665, 54.648777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577873, 41.204880, 54.719929>,  <44.623466, 41.436611, 54.762619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577873, 41.204880, 54.719929>,  <44.501884, 40.818665, 54.648777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577873, 41.204880, 54.719929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355652, 0.101195, -0.929124,
		-0.915108, 0.239767, -0.324173,
		0.189969, 0.965542, 0.177878,
		44.634865, 41.494541, 54.773293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323948, 41.112045, 54.048828>,  <44.501884, 40.818665, 54.648777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323948, 41.112045, 54.048828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567345, 41.371490, 54.231709>,  <44.713383, 41.527157, 54.341434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567345, 41.371490, 54.231709>,  <44.323948, 41.112045, 54.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567345, 41.371490, 54.231709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380404, 0.267213, -0.885376,
		-0.696437, 0.712668, -0.084137,
		0.608496, 0.648615, 0.457199,
		44.749893, 41.566074, 54.368870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146851, 41.761227, 53.724438>,  <44.323948, 41.112045, 54.048828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146851, 41.761227, 53.724438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521393, 41.776947, 53.863979>,  <44.746117, 41.786381, 53.947704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521393, 41.776947, 53.863979>,  <44.146851, 41.761227, 53.724438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521393, 41.776947, 53.863979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332425, 0.220215, -0.917060,
		-0.112867, 0.974659, 0.193133,
		0.936352, 0.039303, 0.348856,
		44.802299, 41.788738, 53.968636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543556, 42.406437, 53.401058>,  <44.146851, 41.761227, 53.724438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543556, 42.406437, 53.401058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839005, 42.185524, 53.555679>,  <45.016273, 42.052979, 53.648453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839005, 42.185524, 53.555679>,  <44.543556, 42.406437, 53.401058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839005, 42.185524, 53.555679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575452, 0.217883, -0.788278,
		0.351127, 0.804682, 0.478744,
		0.738624, -0.552280, 0.386551,
		45.060593, 42.019840, 53.671646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236282, 42.885101, 53.260284>,  <44.543556, 42.406437, 53.401058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236282, 42.885101, 53.260284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302979, 42.495674, 53.322731>,  <45.342995, 42.262020, 53.360199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302979, 42.495674, 53.322731>,  <45.236282, 42.885101, 53.260284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302979, 42.495674, 53.322731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605268, -0.023927, -0.795662,
		0.778363, 0.227160, 0.585277,
		0.166738, -0.973563, 0.156117,
		45.353001, 42.203606, 53.369568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988892, 42.817982, 53.142384>,  <45.236282, 42.885101, 53.260284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988892, 42.817982, 53.142384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853271, 42.441841, 53.131172>,  <45.771900, 42.216156, 53.124443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853271, 42.441841, 53.131172>,  <45.988892, 42.817982, 53.142384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853271, 42.441841, 53.131172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499676, -0.154753, -0.852277,
		0.797102, -0.302970, 0.522339,
		-0.339048, -0.940352, -0.028033,
		45.751556, 42.159737, 53.122761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583736, 42.384960, 53.036461>,  <45.988892, 42.817982, 53.142384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583736, 42.384960, 53.036461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274292, 42.156013, 52.927711>,  <46.088623, 42.018646, 52.862461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274292, 42.156013, 52.927711>,  <46.583736, 42.384960, 53.036461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.274292, 42.156013, 52.927711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460319, -0.212780, -0.861877,
		0.435463, -0.791908, 0.428082,
		-0.773614, -0.572369, -0.271872,
		46.042206, 41.984303, 52.846149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930305, 41.787216, 52.798679>,  <46.583736, 42.384960, 53.036461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930305, 41.787216, 52.798679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559227, 41.741386, 52.656548>,  <46.336582, 41.713890, 52.571266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559227, 41.741386, 52.656548>,  <46.930305, 41.787216, 52.798679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559227, 41.741386, 52.656548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371080, -0.178285, -0.911325,
		0.041062, -0.977286, 0.207909,
		-0.927693, -0.114571, -0.355331,
		46.280918, 41.707016, 52.549950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.925743, 41.144463, 52.452385>,  <46.930305, 41.787216, 52.798679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.925743, 41.144463, 52.452385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628815, 41.359497, 52.292408>,  <46.450657, 41.488518, 52.196423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628815, 41.359497, 52.292408>,  <46.925743, 41.144463, 52.452385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628815, 41.359497, 52.292408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317006, -0.244092, -0.916475,
		-0.590312, -0.807104, 0.010775,
		-0.742320, 0.537590, -0.399947,
		46.406120, 41.520775, 52.172424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538002, 40.664665, 51.884247>,  <46.925743, 41.144463, 52.452385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538002, 40.664665, 51.884247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429558, 41.041000, 51.802925>,  <46.364491, 41.266800, 51.754131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429558, 41.041000, 51.802925>,  <46.538002, 40.664665, 51.884247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429558, 41.041000, 51.802925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185126, -0.156301, -0.970205,
		-0.944578, -0.300667, -0.131799,
		-0.271109, 0.940834, -0.203300,
		46.348225, 41.323250, 51.741936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136002, 40.605358, 51.274681>,  <46.538002, 40.664665, 51.884247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136002, 40.605358, 51.274681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253624, 40.987404, 51.289055>,  <46.324196, 41.216633, 51.297680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253624, 40.987404, 51.289055>,  <46.136002, 40.605358, 51.274681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253624, 40.987404, 51.289055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337615, -0.068625, -0.938779,
		-0.894176, 0.288181, -0.342640,
		0.294052, 0.955114, 0.035932,
		46.341839, 41.273937, 51.299835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899059, 40.918056, 50.655285>,  <46.136002, 40.605358, 51.274681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899059, 40.918056, 50.655285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197784, 41.151062, 50.783634>,  <46.377018, 41.290863, 50.860641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197784, 41.151062, 50.783634>,  <45.899059, 40.918056, 50.655285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197784, 41.151062, 50.783634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375459, 0.028934, -0.926387,
		-0.548914, 0.812308, -0.197101,
		0.746809, 0.582511, 0.320870,
		46.421825, 41.325817, 50.879894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876526, 41.448341, 50.157879>,  <45.899059, 40.918056, 50.655285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876526, 41.448341, 50.157879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237244, 41.449348, 50.330742>,  <46.453674, 41.449951, 50.434460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237244, 41.449348, 50.330742>,  <45.876526, 41.448341, 50.157879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237244, 41.449348, 50.330742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431715, 0.040207, -0.901113,
		-0.019644, 0.999188, 0.035172,
		0.901796, 0.002517, 0.432155,
		46.507782, 41.450104, 50.460388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230530, 41.978992, 49.790897>,  <45.876526, 41.448341, 50.157879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230530, 41.978992, 49.790897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511330, 41.750298, 49.960751>,  <46.679810, 41.613083, 50.062664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511330, 41.750298, 49.960751>,  <46.230530, 41.978992, 49.790897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.511330, 41.750298, 49.960751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553988, 0.063693, -0.830085,
		0.447540, 0.817964, 0.361446,
		0.702001, -0.571733, 0.424637,
		46.721931, 41.578777, 50.088142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815285, 42.381508, 49.805820>,  <46.230530, 41.978992, 49.790897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815285, 42.381508, 49.805820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903168, 41.991348, 49.812946>,  <46.955898, 41.757252, 49.817223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903168, 41.991348, 49.812946>,  <46.815285, 42.381508, 49.805820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.903168, 41.991348, 49.812946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515514, 0.100575, -0.850958,
		0.828235, 0.196150, 0.524931,
		0.219710, -0.975402, 0.017818,
		46.969082, 41.698727, 49.818291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554646, 42.321331, 49.700169>,  <46.815285, 42.381508, 49.805820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554646, 42.321331, 49.700169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419067, 41.955498, 49.611938>,  <47.337719, 41.735996, 49.559002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419067, 41.955498, 49.611938>,  <47.554646, 42.321331, 49.700169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.419067, 41.955498, 49.611938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604432, -0.032026, -0.796013,
		0.720957, -0.403126, 0.563659,
		-0.338945, -0.914584, -0.220573,
		47.317383, 41.681122, 49.545765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.095482, 42.119041, 49.423687>,  <47.554646, 42.321331, 49.700169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.095482, 42.119041, 49.423687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827003, 41.846474, 49.306953>,  <47.665916, 41.682934, 49.236912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827003, 41.846474, 49.306953>,  <48.095482, 42.119041, 49.423687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827003, 41.846474, 49.306953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478864, -0.098052, -0.872396,
		0.565852, -0.725297, 0.392118,
		-0.671194, -0.681418, -0.291835,
		47.625645, 41.642048, 49.219402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.506489, 41.617638, 49.071339>,  <48.095482, 42.119041, 49.423687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.506489, 41.617638, 49.071339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.136131, 41.585823, 48.923615>,  <47.913918, 41.566734, 48.834980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.136131, 41.585823, 48.923615>,  <48.506489, 41.617638, 49.071339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.136131, 41.585823, 48.923615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376868, -0.126515, -0.917586,
		0.026256, -0.988771, 0.147114,
		-0.925895, -0.079535, -0.369314,
		47.858364, 41.561962, 48.812820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.540722, 41.073437, 48.637253>,  <48.506489, 41.617638, 49.071339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.540722, 41.073437, 48.637253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.219490, 41.274414, 48.509125>,  <48.026749, 41.395000, 48.432247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.219490, 41.274414, 48.509125>,  <48.540722, 41.073437, 48.637253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.219490, 41.274414, 48.509125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365121, -0.009883, -0.930908,
		-0.470897, -0.864552, -0.175517,
		-0.803083, 0.502446, -0.320319,
		47.978565, 41.425148, 48.413029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.381695, 40.866062, 47.852528>,  <48.540722, 41.073437, 48.637253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.381695, 40.866062, 47.852528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.186081, 41.210129, 47.910435>,  <48.068710, 41.416569, 47.945179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.186081, 41.210129, 47.910435>,  <48.381695, 40.866062, 47.852528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.186081, 41.210129, 47.910435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009959, 0.171458, -0.985141,
		-0.872206, -0.480329, -0.092416,
		-0.489037, 0.860166, 0.144763,
		48.039371, 41.468178, 47.953865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.888897, 40.993279, 47.138477>,  <48.381695, 40.866062, 47.852528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.888897, 40.993279, 47.138477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.905594, 41.333145, 47.348740>,  <47.915611, 41.537067, 47.474899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.905594, 41.333145, 47.348740>,  <47.888897, 40.993279, 47.138477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.905594, 41.333145, 47.348740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112253, 0.518799, -0.847494,
		-0.992802, 0.094384, -0.073723,
		0.041742, 0.849670, 0.525660,
		47.918118, 41.588047, 47.506439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418953, 41.434872, 46.767536>,  <47.888897, 40.993279, 47.138477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418953, 41.434872, 46.767536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673836, 41.655609, 46.982735>,  <47.826763, 41.788052, 47.111855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673836, 41.655609, 46.982735>,  <47.418953, 41.434872, 46.767536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673836, 41.655609, 46.982735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292321, 0.472853, -0.831239,
		-0.713106, 0.686937, 0.139989,
		0.637203, 0.551839, 0.538001,
		47.864998, 41.821159, 47.144135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256817, 42.049290, 46.699814>,  <47.418953, 41.434872, 46.767536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256817, 42.049290, 46.699814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645203, 42.036896, 46.794693>,  <47.878235, 42.029461, 46.851620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645203, 42.036896, 46.794693>,  <47.256817, 42.049290, 46.699814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645203, 42.036896, 46.794693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236131, 0.282790, -0.929662,
		-0.038273, 0.958681, 0.281896,
		0.970967, -0.030984, 0.237198,
		47.936493, 42.027599, 46.865852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.460228, 42.451725, 46.174103>,  <47.256817, 42.049290, 46.699814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.460228, 42.451725, 46.174103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799767, 42.307968, 46.329170>,  <48.003490, 42.221714, 46.422211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799767, 42.307968, 46.329170>,  <47.460228, 42.451725, 46.174103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.799767, 42.307968, 46.329170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469443, 0.175293, -0.865387,
		0.243059, 0.916574, 0.317512,
		0.848850, -0.359394, 0.387673,
		48.054420, 42.200150, 46.445473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.901657, 42.889530, 45.942417>,  <47.460228, 42.451725, 46.174103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.901657, 42.889530, 45.942417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.114922, 42.564041, 46.035019>,  <48.242882, 42.368748, 46.090580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.114922, 42.564041, 46.035019>,  <47.901657, 42.889530, 45.942417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.114922, 42.564041, 46.035019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562003, 0.136118, -0.815858,
		0.632367, 0.565095, 0.529886,
		0.533164, -0.813720, 0.231509,
		48.274872, 42.319923, 46.104473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347225, 43.431316, 46.232643>,  <47.901657, 42.889530, 45.942417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347225, 43.431316, 46.232643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.439674, 43.819183, 46.200806>,  <47.495144, 44.051903, 46.181705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.439674, 43.819183, 46.200806>,  <47.347225, 43.431316, 46.232643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.439674, 43.819183, 46.200806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175740, 0.122068, 0.976839,
		0.956921, -0.211783, 0.198622,
		0.231123, 0.969664, -0.079591,
		47.509010, 44.110081, 46.176929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.767750, 43.613796, 46.838261>,  <47.347225, 43.431316, 46.232643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.767750, 43.613796, 46.838261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598068, 43.948387, 46.699497>,  <47.496258, 44.149143, 46.616238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598068, 43.948387, 46.699497>,  <47.767750, 43.613796, 46.838261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.598068, 43.948387, 46.699497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250317, 0.259846, 0.932642,
		0.870281, 0.482472, 0.099157,
		-0.424208, 0.836481, -0.346910,
		47.470806, 44.199333, 46.595425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.984127, 44.268021, 47.166538>,  <47.767750, 43.613796, 46.838261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.984127, 44.268021, 47.166538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624016, 44.353020, 47.014568>,  <47.407948, 44.404018, 46.923386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624016, 44.353020, 47.014568>,  <47.984127, 44.268021, 47.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624016, 44.353020, 47.014568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308943, 0.302962, 0.901537,
		0.306676, 0.929010, -0.207101,
		-0.900280, 0.212497, -0.379922,
		47.353931, 44.416767, 46.900593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.802578, 44.971584, 47.409069>,  <47.984127, 44.268021, 47.166538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.802578, 44.971584, 47.409069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.457993, 44.802109, 47.297085>,  <47.251244, 44.700424, 47.229897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.457993, 44.802109, 47.297085>,  <47.802578, 44.971584, 47.409069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.457993, 44.802109, 47.297085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402843, 0.234484, 0.884723,
		-0.309201, 0.874932, -0.372678,
		-0.861459, -0.423688, -0.279958,
		47.199554, 44.675003, 47.213097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215698, 45.519119, 47.363659>,  <47.802578, 44.971584, 47.409069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215698, 45.519119, 47.363659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006966, 45.180962, 47.409264>,  <46.881725, 44.978065, 47.436626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006966, 45.180962, 47.409264>,  <47.215698, 45.519119, 47.363659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006966, 45.180962, 47.409264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325700, 0.320981, 0.889321,
		-0.788425, 0.426939, -0.442843,
		-0.521829, -0.845396, 0.114015,
		46.850418, 44.927341, 47.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547745, 45.652359, 47.663422>,  <47.215698, 45.519119, 47.363659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547745, 45.652359, 47.663422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574615, 45.258629, 47.728649>,  <46.590736, 45.022392, 47.767788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574615, 45.258629, 47.728649>,  <46.547745, 45.652359, 47.663422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574615, 45.258629, 47.728649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440794, 0.117348, 0.889905,
		-0.895091, -0.131660, -0.426001,
		0.067175, -0.984325, 0.163072,
		46.594769, 44.963333, 47.777573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928017, 45.581882, 47.983570>,  <46.547745, 45.652359, 47.663422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928017, 45.581882, 47.983570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121529, 45.241104, 48.063713>,  <46.237637, 45.036636, 48.111797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121529, 45.241104, 48.063713>,  <45.928017, 45.581882, 47.983570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121529, 45.241104, 48.063713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509586, -0.088087, 0.855899,
		-0.711531, -0.516167, -0.476755,
		0.483782, -0.851946, 0.200355,
		46.266663, 44.985519, 48.123821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390194, 45.116730, 48.242043>,  <45.928017, 45.581882, 47.983570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390194, 45.116730, 48.242043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745033, 44.985703, 48.372124>,  <45.957935, 44.907085, 48.450172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745033, 44.985703, 48.372124>,  <45.390194, 45.116730, 48.242043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745033, 44.985703, 48.372124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423265, -0.296219, 0.856213,
		-0.184135, -0.897193, -0.401422,
		0.887097, -0.327567, 0.325206,
		46.011162, 44.887432, 48.469685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299709, 44.369610, 48.510094>,  <45.390194, 45.116730, 48.242043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299709, 44.369610, 48.510094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607903, 44.532608, 48.706177>,  <45.792820, 44.630405, 48.823826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607903, 44.532608, 48.706177>,  <45.299709, 44.369610, 48.510094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607903, 44.532608, 48.706177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429973, -0.235511, 0.871583,
		0.470615, -0.882317, -0.006246,
		0.770484, 0.407494, 0.490208,
		45.839046, 44.654858, 48.853241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535892, 43.816563, 49.031178>,  <45.299709, 44.369610, 48.510094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535892, 43.816563, 49.031178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716331, 44.152870, 49.150921>,  <45.824596, 44.354656, 49.222767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716331, 44.152870, 49.150921>,  <45.535892, 43.816563, 49.031178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716331, 44.152870, 49.150921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305843, -0.169482, 0.936876,
		0.838434, -0.514179, 0.180691,
		0.451098, 0.840771, 0.299358,
		45.851662, 44.405102, 49.240726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.002014, 43.608246, 49.558151>,  <45.535892, 43.816563, 49.031178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.002014, 43.608246, 49.558151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942726, 43.999039, 49.619518>,  <45.907154, 44.233513, 49.656338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942726, 43.999039, 49.619518>,  <46.002014, 43.608246, 49.558151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942726, 43.999039, 49.619518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325295, -0.194664, 0.925359,
		0.933924, 0.087251, 0.346660,
		-0.148221, 0.976982, 0.153419,
		45.898258, 44.292133, 49.665543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359337, 43.860146, 50.139938>,  <46.002014, 43.608246, 49.558151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359337, 43.860146, 50.139938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093613, 44.156975, 50.104107>,  <45.934177, 44.335072, 50.082607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093613, 44.156975, 50.104107>,  <46.359337, 43.860146, 50.139938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093613, 44.156975, 50.104107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192016, -0.053606, 0.979927,
		0.722373, 0.668175, 0.178100,
		-0.664310, 0.742070, -0.089577,
		45.894321, 44.379597, 50.077232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561722, 44.364868, 50.631348>,  <46.359337, 43.860146, 50.139938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561722, 44.364868, 50.631348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172104, 44.392624, 50.545170>,  <45.938332, 44.409279, 50.493462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172104, 44.392624, 50.545170>,  <46.561722, 44.364868, 50.631348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172104, 44.392624, 50.545170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218488, -0.039627, 0.975034,
		0.059123, 0.996802, 0.053760,
		-0.974047, 0.069393, -0.215447,
		45.879890, 44.413441, 50.480537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350773, 44.827835, 51.034832>,  <46.561722, 44.364868, 50.631348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350773, 44.827835, 51.034832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009125, 44.655235, 50.918705>,  <45.804134, 44.551678, 50.849030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009125, 44.655235, 50.918705>,  <46.350773, 44.827835, 51.034832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009125, 44.655235, 50.918705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362955, 0.094757, 0.926976,
		-0.372476, 0.897125, -0.237548,
		-0.854122, -0.431496, -0.290321,
		45.752888, 44.525787, 50.831608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850536, 45.218678, 51.356895>,  <46.350773, 44.827835, 51.034832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850536, 45.218678, 51.356895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681259, 44.863068, 51.286991>,  <45.579693, 44.649704, 51.245049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681259, 44.863068, 51.286991>,  <45.850536, 45.218678, 51.356895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681259, 44.863068, 51.286991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400041, 0.010274, 0.916440,
		-0.812940, 0.457748, -0.359993,
		-0.423197, -0.889023, -0.174765,
		45.554298, 44.596359, 51.234562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249454, 45.276340, 51.553680>,  <45.850536, 45.218678, 51.356895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249454, 45.276340, 51.553680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294662, 44.879601, 51.577240>,  <45.321785, 44.641556, 51.591377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294662, 44.879601, 51.577240>,  <45.249454, 45.276340, 51.553680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294662, 44.879601, 51.577240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471984, -0.001428, 0.881606,
		-0.874333, -0.127435, -0.468297,
		0.113016, -0.991846, 0.058898,
		45.328568, 44.582047, 51.594910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518353, 44.991531, 51.651306>,  <45.249454, 45.276340, 51.553680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518353, 44.991531, 51.651306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778488, 44.714897, 51.777020>,  <44.934570, 44.548916, 51.852448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778488, 44.714897, 51.777020>,  <44.518353, 44.991531, 51.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778488, 44.714897, 51.777020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586834, -0.194659, 0.785960,
		-0.482378, -0.695572, -0.532438,
		0.650336, -0.691583, 0.314286,
		44.973591, 44.507423, 51.871307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026649, 44.324139, 51.744438>,  <44.518353, 44.991531, 51.651306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026649, 44.324139, 51.744438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352840, 44.279671, 51.971642>,  <44.548557, 44.252991, 52.107964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352840, 44.279671, 51.971642>,  <44.026649, 44.324139, 51.744438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352840, 44.279671, 51.971642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575342, -0.048830, 0.816454,
		-0.063066, -0.992596, -0.103806,
		0.815478, -0.111214, 0.568003,
		44.597485, 44.246319, 52.142044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852661, 43.698864, 52.185432>,  <44.026649, 44.324139, 51.744438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852661, 43.698864, 52.185432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161476, 43.882767, 52.360970>,  <44.346767, 43.993107, 52.466293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161476, 43.882767, 52.360970>,  <43.852661, 43.698864, 52.185432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161476, 43.882767, 52.360970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389194, -0.203897, 0.898306,
		0.502477, -0.864323, 0.021517,
		0.772039, 0.459752, 0.438843,
		44.393089, 44.020691, 52.492622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263809, 43.175011, 52.641880>,  <43.852661, 43.698864, 52.185432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263809, 43.175011, 52.641880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310886, 43.554420, 52.759487>,  <44.339130, 43.782066, 52.830051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310886, 43.554420, 52.759487>,  <44.263809, 43.175011, 52.641880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310886, 43.554420, 52.759487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433348, -0.217346, 0.874626,
		0.893509, -0.230348, 0.385462,
		0.117690, 0.948525, 0.294021,
		44.346195, 43.838978, 52.847694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302521, 43.091709, 53.386955>,  <44.263809, 43.175011, 52.641880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302521, 43.091709, 53.386955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286629, 43.491150, 53.373039>,  <44.277092, 43.730816, 53.364689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286629, 43.491150, 53.373039>,  <44.302521, 43.091709, 53.386955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286629, 43.491150, 53.373039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407343, 0.015609, 0.913142,
		0.912411, 0.050455, 0.406154,
		-0.039733, 0.998604, -0.034795,
		44.274708, 43.790730, 53.362602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637218, 43.414925, 53.954319>,  <44.302521, 43.091709, 53.386955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637218, 43.414925, 53.954319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366814, 43.676392, 53.818245>,  <44.204571, 43.833271, 53.736599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366814, 43.676392, 53.818245>,  <44.637218, 43.414925, 53.954319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366814, 43.676392, 53.818245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363613, 0.105633, 0.925542,
		0.640929, 0.749376, 0.166271,
		-0.676015, 0.653665, -0.340186,
		44.164009, 43.872490, 53.716190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627155, 43.958675, 54.430679>,  <44.637218, 43.414925, 53.954319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627155, 43.958675, 54.430679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282913, 44.042053, 54.244820>,  <44.076366, 44.092079, 54.133305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282913, 44.042053, 54.244820>,  <44.627155, 43.958675, 54.430679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282913, 44.042053, 54.244820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483455, -0.047618, 0.874073,
		0.160073, 0.976874, 0.141755,
		-0.860609, 0.208448, -0.464652,
		44.024731, 44.104588, 54.105423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232067, 44.326641, 54.819599>,  <44.627155, 43.958675, 54.430679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232067, 44.326641, 54.819599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933304, 44.186737, 54.593399>,  <43.754044, 44.102795, 54.457680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933304, 44.186737, 54.593399>,  <44.232067, 44.326641, 54.819599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933304, 44.186737, 54.593399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555843, -0.138309, 0.819700,
		-0.364911, 0.926574, -0.091106,
		-0.746912, -0.349758, -0.565501,
		43.709229, 44.081810, 54.423748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567917, 44.669289, 55.070835>,  <44.232067, 44.326641, 54.819599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567917, 44.669289, 55.070835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461639, 44.339493, 54.870987>,  <43.397873, 44.141613, 54.751080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461639, 44.339493, 54.870987>,  <43.567917, 44.669289, 55.070835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461639, 44.339493, 54.870987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647098, -0.231628, 0.726369,
		-0.714612, 0.516293, -0.471986,
		-0.265694, -0.824493, -0.499617,
		43.381931, 44.092144, 54.721104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781059, 44.618385, 55.086975>,  <43.567917, 44.669289, 55.070835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781059, 44.618385, 55.086975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875843, 44.246185, 54.975254>,  <42.932713, 44.022865, 54.908222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875843, 44.246185, 54.975254>,  <42.781059, 44.618385, 55.086975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875843, 44.246185, 54.975254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687567, -0.363735, 0.628449,
		-0.686368, 0.043124, -0.725975,
		0.236962, -0.930504, -0.279307,
		42.946930, 43.967033, 54.891460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199852, 44.269199, 54.756718>,  <42.781059, 44.618385, 55.086975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199852, 44.269199, 54.756718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441666, 44.006683, 54.937305>,  <42.586754, 43.849174, 55.045658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441666, 44.006683, 54.937305>,  <42.199852, 44.269199, 54.756718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441666, 44.006683, 54.937305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763710, -0.316382, 0.562716,
		-0.226471, -0.684969, -0.692480,
		0.604531, -0.656293, 0.451466,
		42.623024, 43.809795, 55.072746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707893, 43.811977, 55.001671>,  <42.199852, 44.269199, 54.756718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707893, 43.811977, 55.001671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030159, 43.705017, 55.213104>,  <42.223518, 43.640842, 55.339966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030159, 43.705017, 55.213104>,  <41.707893, 43.811977, 55.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030159, 43.705017, 55.213104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592315, -0.376267, 0.712451,
		0.008381, -0.887085, -0.461529,
		0.805663, -0.267399, 0.528587,
		42.271858, 43.624798, 55.371681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706882, 43.161076, 55.173401>,  <41.707893, 43.811977, 55.001671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706882, 43.161076, 55.173401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944916, 43.301903, 55.462379>,  <42.087734, 43.386398, 55.635765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944916, 43.301903, 55.462379>,  <41.706882, 43.161076, 55.173401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944916, 43.301903, 55.462379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525032, -0.510277, 0.681145,
		0.608454, -0.784645, -0.118812,
		0.595084, 0.352066, 0.722444,
		42.123440, 43.407524, 55.679111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769897, 42.545570, 55.688530>,  <41.706882, 43.161076, 55.173401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769897, 42.545570, 55.688530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899166, 42.867386, 55.887836>,  <41.976727, 43.060474, 56.007420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899166, 42.867386, 55.887836>,  <41.769897, 42.545570, 55.688530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899166, 42.867386, 55.887836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614804, -0.221777, 0.756856,
		0.719426, -0.550934, 0.422963,
		0.323174, 0.804541, 0.498269,
		41.996117, 43.108749, 56.037315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802879, 42.304832, 56.328419>,  <41.769897, 42.545570, 55.688530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802879, 42.304832, 56.328419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784683, 42.701042, 56.380241>,  <41.773766, 42.938770, 56.411335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784683, 42.701042, 56.380241>,  <41.802879, 42.304832, 56.328419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784683, 42.701042, 56.380241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493186, -0.135057, 0.859376,
		0.868733, -0.024803, 0.494658,
		-0.045492, 0.990527, 0.129561,
		41.771034, 42.998199, 56.419109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083805, 42.357216, 56.985638>,  <41.802879, 42.304832, 56.328419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083805, 42.357216, 56.985638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878204, 42.694702, 56.923752>,  <41.754845, 42.897194, 56.886620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878204, 42.694702, 56.923752>,  <42.083805, 42.357216, 56.985638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878204, 42.694702, 56.923752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427225, -0.095400, 0.899098,
		0.743826, 0.528239, 0.409494,
		-0.514005, 0.843719, -0.154716,
		41.724003, 42.947819, 56.877338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022583, 42.565929, 57.647720>,  <42.083805, 42.357216, 56.985638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022583, 42.565929, 57.647720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773460, 42.806976, 57.448135>,  <41.623985, 42.951603, 57.328384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773460, 42.806976, 57.448135>,  <42.022583, 42.565929, 57.647720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773460, 42.806976, 57.448135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469313, 0.222514, 0.854537,
		0.625982, 0.766383, 0.144230,
		-0.622810, 0.602614, -0.498964,
		41.586617, 42.987762, 57.298447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970501, 43.169373, 58.104050>,  <42.022583, 42.565929, 57.647720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970501, 43.169373, 58.104050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651863, 43.213257, 57.866257>,  <41.460682, 43.239586, 57.723583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651863, 43.213257, 57.866257>,  <41.970501, 43.169373, 58.104050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651863, 43.213257, 57.866257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540826, 0.310027, 0.781915,
		0.270089, 0.944377, -0.187631,
		-0.796592, 0.109711, -0.594478,
		41.412884, 43.246170, 57.687912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645241, 43.853626, 58.247543>,  <41.970501, 43.169373, 58.104050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645241, 43.853626, 58.247543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350239, 43.640457, 58.081612>,  <41.173237, 43.512558, 57.982052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350239, 43.640457, 58.081612>,  <41.645241, 43.853626, 58.247543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350239, 43.640457, 58.081612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618371, 0.285943, 0.732021,
		-0.271491, 0.796387, -0.540426,
		-0.737503, -0.532921, -0.414831,
		41.128986, 43.480579, 57.957161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066929, 44.247307, 58.325600>,  <41.645241, 43.853626, 58.247543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066929, 44.247307, 58.325600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923660, 43.875374, 58.291821>,  <40.837700, 43.652214, 58.271553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923660, 43.875374, 58.291821>,  <41.066929, 44.247307, 58.325600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923660, 43.875374, 58.291821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666930, 0.191503, 0.720091,
		-0.653389, 0.314239, -0.688721,
		-0.358173, -0.929828, -0.084449,
		40.816208, 43.596424, 58.266487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510979, 44.356468, 58.593479>,  <41.066929, 44.247307, 58.325600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510979, 44.356468, 58.593479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502304, 43.956940, 58.576141>,  <40.497101, 43.717220, 58.565739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502304, 43.956940, 58.576141>,  <40.510979, 44.356468, 58.593479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502304, 43.956940, 58.576141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791977, -0.009299, 0.610480,
		-0.610165, 0.047568, -0.790845,
		-0.021685, -0.998825, -0.043346,
		40.495800, 43.657291, 58.563137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950912, 44.152351, 58.356403>,  <40.510979, 44.356468, 58.593479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950912, 44.152351, 58.356403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070625, 43.822853, 58.549019>,  <40.142452, 43.625156, 58.664589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070625, 43.822853, 58.549019>,  <39.950912, 44.152351, 58.356403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070625, 43.822853, 58.549019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830193, 0.023957, 0.556961,
		-0.470329, -0.566456, -0.676696,
		0.299283, -0.823744, 0.481536,
		40.160412, 43.575729, 58.693481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266247, 44.237015, 58.694580>,  <39.950912, 44.152351, 58.356403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266247, 44.237015, 58.694580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003746, 44.469780, 58.502453>,  <38.846245, 44.609440, 58.387177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003746, 44.469780, 58.502453>,  <39.266247, 44.237015, 58.694580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003746, 44.469780, 58.502453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670974, 0.158883, -0.724258,
		-0.345140, -0.797581, -0.494715,
		-0.656256, 0.581912, -0.480319,
		38.806870, 44.644352, 58.358356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295174, 44.028103, 57.956692>,  <39.266247, 44.237015, 58.694580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295174, 44.028103, 57.956692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117306, 44.385994, 57.939995>,  <39.010586, 44.600727, 57.929977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117306, 44.385994, 57.939995>,  <39.295174, 44.028103, 57.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117306, 44.385994, 57.939995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598106, 0.261917, -0.757409,
		-0.666740, -0.361758, -0.651605,
		-0.444665, 0.894724, -0.041739,
		38.983906, 44.654411, 57.927475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006302, 44.069298, 57.380550>,  <39.295174, 44.028103, 57.956692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006302, 44.069298, 57.380550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016983, 44.459572, 57.467567>,  <39.023392, 44.693737, 57.519779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016983, 44.459572, 57.467567>,  <39.006302, 44.069298, 57.380550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016983, 44.459572, 57.467567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514430, 0.173179, -0.839864,
		-0.857117, 0.134337, -0.497297,
		0.026704, 0.975686, 0.217542,
		39.024994, 44.752277, 57.532829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657585, 44.337170, 56.878407>,  <39.006302, 44.069298, 57.380550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657585, 44.337170, 56.878407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879162, 44.637199, 57.022926>,  <39.012108, 44.817215, 57.109638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879162, 44.637199, 57.022926>,  <38.657585, 44.337170, 56.878407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879162, 44.637199, 57.022926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291749, 0.231566, -0.928041,
		-0.779761, 0.619493, -0.090558,
		0.553945, 0.750071, 0.361302,
		39.045345, 44.862221, 57.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445923, 44.993103, 56.522385>,  <38.657585, 44.337170, 56.878407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445923, 44.993103, 56.522385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808525, 45.064316, 56.675514>,  <39.026085, 45.107044, 56.767391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808525, 45.064316, 56.675514>,  <38.445923, 44.993103, 56.522385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808525, 45.064316, 56.675514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316676, 0.312963, -0.895416,
		-0.279218, 0.932931, 0.227326,
		0.906506, 0.178027, 0.382822,
		39.080479, 45.117725, 56.790359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639439, 45.636814, 56.165871>,  <38.445923, 44.993103, 56.522385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639439, 45.636814, 56.165871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980846, 45.475609, 56.297981>,  <39.185692, 45.378887, 56.377247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980846, 45.475609, 56.297981>,  <38.639439, 45.636814, 56.165871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980846, 45.475609, 56.297981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446993, 0.240588, -0.861577,
		0.267767, 0.883005, 0.385491,
		0.853521, -0.403014, 0.330276,
		39.236904, 45.354706, 56.397064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279510, 46.148655, 55.877544>,  <38.639439, 45.636814, 56.165871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279510, 46.148655, 55.877544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400478, 45.777657, 55.965446>,  <39.473061, 45.555058, 56.018188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400478, 45.777657, 55.965446>,  <39.279510, 46.148655, 55.877544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400478, 45.777657, 55.965446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489992, -0.046477, -0.870487,
		0.817589, 0.370928, 0.440411,
		0.302419, -0.927498, 0.219751,
		39.491203, 45.499409, 56.031372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888020, 46.194599, 55.727566>,  <39.279510, 46.148655, 55.877544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888020, 46.194599, 55.727566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835136, 45.798393, 55.742550>,  <39.803406, 45.560669, 55.751541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835136, 45.798393, 55.742550>,  <39.888020, 46.194599, 55.727566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835136, 45.798393, 55.742550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652662, -0.115437, -0.748803,
		0.746024, -0.074551, 0.661733,
		-0.132212, -0.990513, 0.037463,
		39.795471, 45.501240, 55.753788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517254, 45.935207, 55.783169>,  <39.888020, 46.194599, 55.727566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517254, 45.935207, 55.783169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282192, 45.643120, 55.643780>,  <40.141155, 45.467865, 55.560146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282192, 45.643120, 55.643780>,  <40.517254, 45.935207, 55.783169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282192, 45.643120, 55.643780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566601, -0.063941, -0.821508,
		0.577601, -0.680212, 0.451319,
		-0.587657, -0.730221, -0.348477,
		40.105896, 45.424053, 55.539238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957722, 45.418545, 55.585278>,  <40.517254, 45.935207, 55.783169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957722, 45.418545, 55.585278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614029, 45.361099, 55.388870>,  <40.407814, 45.326633, 55.271027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614029, 45.361099, 55.388870>,  <40.957722, 45.418545, 55.585278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614029, 45.361099, 55.388870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510945, -0.192701, -0.837736,
		0.025689, -0.970691, 0.238952,
		-0.859229, -0.143612, -0.491020,
		40.356258, 45.318016, 55.241566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053768, 44.806702, 55.208549>,  <40.957722, 45.418545, 55.585278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053768, 44.806702, 55.208549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739067, 44.989532, 55.042610>,  <40.550247, 45.099232, 54.943047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739067, 44.989532, 55.042610>,  <41.053768, 44.806702, 55.208549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739067, 44.989532, 55.042610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440025, -0.056023, -0.896236,
		-0.432890, -0.887661, -0.157049,
		-0.786755, 0.457078, -0.414845,
		40.503040, 45.126656, 54.918156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877312, 44.409157, 54.609585>,  <41.053768, 44.806702, 55.208549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877312, 44.409157, 54.609585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720573, 44.769913, 54.536873>,  <40.626530, 44.986366, 54.493248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720573, 44.769913, 54.536873>,  <40.877312, 44.409157, 54.609585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720573, 44.769913, 54.536873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374246, -0.024238, -0.927013,
		-0.840472, -0.431279, -0.328032,
		-0.391850, 0.901893, -0.181776,
		40.603020, 45.040482, 54.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661915, 44.346577, 53.895370>,  <40.877312, 44.409157, 54.609585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661915, 44.346577, 53.895370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703762, 44.728188, 54.007721>,  <40.728870, 44.957153, 54.075130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703762, 44.728188, 54.007721>,  <40.661915, 44.346577, 53.895370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703762, 44.728188, 54.007721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308379, 0.237384, -0.921168,
		-0.945494, 0.182985, -0.269367,
		0.104617, 0.954026, 0.280874,
		40.735146, 45.014397, 54.091984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427811, 44.725105, 53.340633>,  <40.661915, 44.346577, 53.895370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427811, 44.725105, 53.340633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634605, 45.015022, 53.522797>,  <40.758682, 45.188972, 53.632095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634605, 45.015022, 53.522797>,  <40.427811, 44.725105, 53.340633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634605, 45.015022, 53.522797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402401, 0.263783, -0.876637,
		-0.755512, 0.636465, -0.155287,
		0.516987, 0.724797, 0.455405,
		40.789700, 45.232460, 53.659420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382771, 45.339966, 52.908459>,  <40.427811, 44.725105, 53.340633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382771, 45.339966, 52.908459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713646, 45.398842, 53.125381>,  <40.912170, 45.434166, 53.255535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713646, 45.398842, 53.125381>,  <40.382771, 45.339966, 52.908459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713646, 45.398842, 53.125381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469649, 0.348788, -0.811034,
		-0.308524, 0.925571, 0.219387,
		0.827190, 0.147189, 0.542303,
		40.961803, 45.442997, 53.288071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628578, 45.970501, 52.795334>,  <40.382771, 45.339966, 52.908459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628578, 45.970501, 52.795334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933842, 45.742683, 52.917458>,  <41.117001, 45.605991, 52.990730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933842, 45.742683, 52.917458>,  <40.628578, 45.970501, 52.795334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933842, 45.742683, 52.917458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564759, 0.358211, -0.743460,
		0.314069, 0.739801, 0.595026,
		0.763156, -0.569544, 0.305307,
		41.162788, 45.571819, 53.009048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290638, 46.397213, 52.667881>,  <40.628578, 45.970501, 52.795334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290638, 46.397213, 52.667881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429813, 46.031898, 52.752590>,  <41.513321, 45.812710, 52.803413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429813, 46.031898, 52.752590>,  <41.290638, 46.397213, 52.667881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429813, 46.031898, 52.752590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708028, 0.107919, -0.697889,
		0.614518, 0.392764, 0.684181,
		0.347942, -0.913285, 0.211770,
		41.534195, 45.757912, 52.816120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940983, 46.515362, 52.530476>,  <41.290638, 46.397213, 52.667881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940983, 46.515362, 52.530476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922050, 46.116119, 52.546146>,  <41.910690, 45.876572, 52.555550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922050, 46.116119, 52.546146>,  <41.940983, 46.515362, 52.530476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922050, 46.116119, 52.546146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649562, -0.060556, -0.757894,
		0.758834, -0.010425, 0.651201,
		-0.047334, -0.998110, 0.039180,
		41.907848, 45.816685, 52.557899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642029, 46.278591, 52.444736>,  <41.940983, 46.515362, 52.530476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642029, 46.278591, 52.444736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429684, 45.960770, 52.326847>,  <42.302277, 45.770077, 52.256111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429684, 45.960770, 52.326847>,  <42.642029, 46.278591, 52.444736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429684, 45.960770, 52.326847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646217, -0.154542, -0.747343,
		0.548259, -0.587193, 0.595497,
		-0.530864, -0.794557, -0.294725,
		42.270424, 45.722401, 52.238430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109478, 45.864967, 52.231392>,  <42.642029, 46.278591, 52.444736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109478, 45.864967, 52.231392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774666, 45.741997, 52.050339>,  <42.573780, 45.668213, 51.941708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774666, 45.741997, 52.050339>,  <43.109478, 45.864967, 52.231392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774666, 45.741997, 52.050339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504975, -0.115513, -0.855370,
		0.210681, -0.944534, 0.251932,
		-0.837027, -0.307429, -0.452630,
		42.523560, 45.649769, 51.914551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311993, 45.262226, 51.913780>,  <43.109478, 45.864967, 52.231392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311993, 45.262226, 51.913780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979126, 45.335678, 51.704487>,  <42.779404, 45.379749, 51.578911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979126, 45.335678, 51.704487>,  <43.311993, 45.262226, 51.913780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979126, 45.335678, 51.704487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500480, -0.157586, -0.851285,
		-0.238777, -0.970281, 0.039234,
		-0.832169, 0.183631, -0.523234,
		42.729477, 45.390766, 51.547516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314167, 44.698765, 51.325172>,  <43.311993, 45.262226, 51.913780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314167, 44.698765, 51.325172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077335, 44.998482, 51.206516>,  <42.935238, 45.178314, 51.135323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077335, 44.998482, 51.206516>,  <43.314167, 44.698765, 51.325172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077335, 44.998482, 51.206516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278737, -0.154973, -0.947782,
		-0.756142, -0.643846, -0.117101,
		-0.592077, 0.749297, -0.296645,
		42.899712, 45.223270, 51.117523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933266, 44.444485, 50.764320>,  <43.314167, 44.698765, 51.325172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933266, 44.444485, 50.764320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917107, 44.843773, 50.746784>,  <42.907410, 45.083347, 50.736263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917107, 44.843773, 50.746784>,  <42.933266, 44.444485, 50.764320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917107, 44.843773, 50.746784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298975, -0.029789, -0.953796,
		-0.953405, -0.051642, -0.297239,
		-0.040401, 0.998221, -0.043841,
		42.904987, 45.143238, 50.733631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909004, 44.508572, 50.129787>,  <42.933266, 44.444485, 50.764320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909004, 44.508572, 50.129787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016663, 44.881233, 50.227425>,  <43.081257, 45.104832, 50.286007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016663, 44.881233, 50.227425>,  <42.909004, 44.508572, 50.129787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016663, 44.881233, 50.227425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387668, 0.127209, -0.912979,
		-0.881631, 0.340354, -0.326935,
		0.269147, 0.931653, 0.244096,
		43.097408, 45.160728, 50.300652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887047, 44.739697, 49.479168>,  <42.909004, 44.508572, 50.129787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887047, 44.739697, 49.479168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065506, 45.025848, 49.694275>,  <43.172581, 45.197540, 49.823338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065506, 45.025848, 49.694275>,  <42.887047, 44.739697, 49.479168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065506, 45.025848, 49.694275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437726, 0.349680, -0.828323,
		-0.780608, 0.604948, -0.157130,
		0.446148, 0.715375, 0.537764,
		43.199348, 45.240459, 49.855606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676224, 45.525051, 49.277897>,  <42.887047, 44.739697, 49.479168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676224, 45.525051, 49.277897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047508, 45.493904, 49.423420>,  <43.270279, 45.475216, 49.510735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047508, 45.493904, 49.423420>,  <42.676224, 45.525051, 49.277897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047508, 45.493904, 49.423420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362065, 0.414022, -0.835161,
		-0.085595, 0.906930, 0.412493,
		0.928215, -0.077864, 0.363806,
		43.325974, 45.470547, 49.532562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983929, 46.088642, 49.066608>,  <42.676224, 45.525051, 49.277897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983929, 46.088642, 49.066608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292778, 45.845551, 49.140896>,  <43.478088, 45.699696, 49.185467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292778, 45.845551, 49.140896>,  <42.983929, 46.088642, 49.066608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292778, 45.845551, 49.140896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471030, 0.351161, -0.809208,
		0.426562, 0.712287, 0.557398,
		0.772124, -0.607729, 0.185716,
		43.524414, 45.663231, 49.196609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631718, 46.515430, 49.135990>,  <42.983929, 46.088642, 49.066608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631718, 46.515430, 49.135990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743431, 46.138130, 49.064121>,  <43.810459, 45.911751, 49.021000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743431, 46.138130, 49.064121>,  <43.631718, 46.515430, 49.135990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743431, 46.138130, 49.064121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372916, 0.278983, -0.884931,
		0.884836, 0.180143, 0.429668,
		0.279284, -0.943248, -0.179676,
		43.827217, 45.855156, 49.010220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300053, 46.580250, 48.880272>,  <43.631718, 46.515430, 49.135990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300053, 46.580250, 48.880272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197464, 46.208076, 48.775566>,  <44.135910, 45.984772, 48.712742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197464, 46.208076, 48.775566>,  <44.300053, 46.580250, 48.880272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197464, 46.208076, 48.775566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425445, 0.134502, -0.894933,
		0.867881, -0.340894, 0.361351,
		-0.256475, -0.930430, -0.261764,
		44.120522, 45.928947, 48.697037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931000, 46.391640, 48.544277>,  <44.300053, 46.580250, 48.880272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931000, 46.391640, 48.544277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630417, 46.148071, 48.442669>,  <44.450066, 46.001930, 48.381706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630417, 46.148071, 48.442669>,  <44.931000, 46.391640, 48.544277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630417, 46.148071, 48.442669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223623, 0.127151, -0.966346,
		0.620731, -0.782971, 0.040621,
		-0.751456, -0.608925, -0.254017,
		44.404980, 45.965393, 48.366463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164612, 45.868721, 48.080433>,  <44.931000, 46.391640, 48.544277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164612, 45.868721, 48.080433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786819, 45.805901, 47.964989>,  <44.560146, 45.768208, 47.895721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786819, 45.805901, 47.964989>,  <45.164612, 45.868721, 48.080433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786819, 45.805901, 47.964989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301534, -0.065348, -0.951213,
		0.130534, -0.985425, 0.109077,
		-0.944478, -0.157056, -0.288609,
		44.503475, 45.758785, 47.878407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176846, 45.362888, 47.515945>,  <45.164612, 45.868721, 48.080433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176846, 45.362888, 47.515945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824673, 45.547241, 47.471355>,  <44.613369, 45.657852, 47.444603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824673, 45.547241, 47.471355>,  <45.176846, 45.362888, 47.515945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824673, 45.547241, 47.471355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180397, 0.108157, -0.977629,
		-0.438517, -0.880845, -0.178367,
		-0.880432, 0.460884, -0.111473,
		44.560543, 45.685505, 47.437912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808895, 45.092644, 46.963371>,  <45.176846, 45.362888, 47.515945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808895, 45.092644, 46.963371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634232, 45.450989, 46.996269>,  <44.529434, 45.665997, 47.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634232, 45.450989, 46.996269>,  <44.808895, 45.092644, 46.963371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634232, 45.450989, 46.996269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008485, 0.087319, -0.996144,
		-0.899586, -0.435675, -0.030527,
		-0.436661, 0.895859, 0.082247,
		44.503235, 45.719746, 47.020943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264393, 45.101868, 46.373119>,  <44.808895, 45.092644, 46.963371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264393, 45.101868, 46.373119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288635, 45.492844, 46.454044>,  <44.303181, 45.727428, 46.502602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288635, 45.492844, 46.454044>,  <44.264393, 45.101868, 46.373119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288635, 45.492844, 46.454044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005666, 0.203021, -0.979158,
		-0.998146, 0.058200, 0.017843,
		0.060609, 0.977443, 0.202315,
		44.306816, 45.786076, 46.514740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713039, 45.427464, 46.017673>,  <44.264393, 45.101868, 46.373119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713039, 45.427464, 46.017673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967083, 45.729759, 46.081543>,  <44.119511, 45.911137, 46.119865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967083, 45.729759, 46.081543>,  <43.713039, 45.427464, 46.017673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967083, 45.729759, 46.081543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114862, 0.296825, -0.947999,
		-0.763833, 0.583744, 0.275322,
		0.635111, 0.755736, 0.159675,
		44.157616, 45.956482, 46.129444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451824, 46.041222, 45.743847>,  <43.713039, 45.427464, 46.017673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451824, 46.041222, 45.743847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838200, 46.141838, 45.768131>,  <44.070026, 46.202209, 45.782700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838200, 46.141838, 45.768131>,  <43.451824, 46.041222, 45.743847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838200, 46.141838, 45.768131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040353, 0.378162, -0.924859,
		-0.255598, 0.890909, 0.375433,
		0.965941, 0.251542, 0.060706,
		44.127983, 46.217300, 45.786343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405121, 46.625092, 45.569164>,  <43.451824, 46.041222, 45.743847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405121, 46.625092, 45.569164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778217, 46.522842, 45.467453>,  <44.002075, 46.461491, 45.406425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778217, 46.522842, 45.467453>,  <43.405121, 46.625092, 45.569164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778217, 46.522842, 45.467453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123337, 0.436480, -0.891220,
		0.338806, 0.862636, 0.375592,
		0.932737, -0.255626, -0.254277,
		44.058037, 46.446156, 45.391171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767479, 47.261299, 45.334854>,  <43.405121, 46.625092, 45.569164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767479, 47.261299, 45.334854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004478, 46.973640, 45.189651>,  <44.146679, 46.801044, 45.102531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004478, 46.973640, 45.189651>,  <43.767479, 47.261299, 45.334854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004478, 46.973640, 45.189651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085796, 0.391722, -0.916075,
		0.800991, 0.573916, 0.170394,
		0.592497, -0.719149, -0.363005,
		44.182228, 46.757896, 45.080750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266552, 47.631428, 45.004784>,  <43.767479, 47.261299, 45.334854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266552, 47.631428, 45.004784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268822, 47.257515, 44.862709>,  <44.270184, 47.033169, 44.777466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268822, 47.257515, 44.862709>,  <44.266552, 47.631428, 45.004784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268822, 47.257515, 44.862709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068773, 0.353986, -0.932719,
		0.997616, 0.029718, -0.062280,
		0.005673, -0.934778, -0.355186,
		44.270523, 46.977081, 44.756153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973259, 47.343132, 45.276871>,  <44.266552, 47.631428, 45.004784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973259, 47.343132, 45.276871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124481, 47.454315, 44.923645>,  <45.215214, 47.521027, 44.711708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124481, 47.454315, 44.923645>,  <44.973259, 47.343132, 45.276871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124481, 47.454315, 44.923645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914516, -0.260486, 0.309527,
		-0.143991, -0.924599, -0.352679,
		0.378056, 0.277962, -0.883069,
		45.237900, 47.537704, 44.658726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.815594, 42.074680, 51.117290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919052, 41.689392, 51.146431>,  <39.981129, 41.458218, 51.163914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919052, 41.689392, 51.146431>,  <39.815594, 42.074680, 51.117290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919052, 41.689392, 51.146431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618509, 0.107210, -0.778430,
		0.741989, 0.246399, 0.623490,
		0.258648, -0.963220, 0.072851,
		39.996647, 41.400425, 51.168285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534653, 42.063396, 51.024296>,  <39.815594, 42.074680, 51.117290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534653, 42.063396, 51.024296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.444252, 41.682007, 50.944481>,  <40.390011, 41.453175, 50.896591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.444252, 41.682007, 50.944481>,  <40.534653, 42.063396, 51.024296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444252, 41.682007, 50.944481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657055, 0.002016, -0.753840,
		0.719167, -0.301478, 0.626027,
		-0.226004, -0.953471, -0.199537,
		40.376450, 41.395966, 50.884621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122326, 41.679554, 51.041286>,  <40.534653, 42.063396, 51.024296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122326, 41.679554, 51.041286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870464, 41.468719, 50.812996>,  <40.719349, 41.342220, 50.676022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870464, 41.468719, 50.812996>,  <41.122326, 41.679554, 51.041286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870464, 41.468719, 50.812996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688451, -0.038176, -0.724278,
		0.359966, -0.848956, 0.386907,
		-0.629651, -0.527082, -0.570723,
		40.681568, 41.310596, 50.641781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596485, 41.322453, 50.606464>,  <41.122326, 41.679554, 51.041286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596485, 41.322453, 50.606464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.244865, 41.248665, 50.430622>,  <41.033894, 41.204391, 50.325119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.244865, 41.248665, 50.430622>,  <41.596485, 41.322453, 50.606464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244865, 41.248665, 50.430622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472802, -0.219090, -0.853498,
		0.061135, -0.958107, 0.279809,
		-0.879045, -0.184472, -0.439601,
		40.981152, 41.193325, 50.298740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647701, 40.601749, 50.253456>,  <41.596485, 41.322453, 50.606464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647701, 40.601749, 50.253456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351109, 40.802330, 50.075130>,  <41.173153, 40.922680, 49.968136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351109, 40.802330, 50.075130>,  <41.647701, 40.601749, 50.253456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351109, 40.802330, 50.075130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380787, -0.232575, -0.894936,
		-0.552454, -0.833338, -0.018497,
		-0.741482, 0.501455, -0.445811,
		41.128662, 40.952766, 49.941387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372604, 40.200867, 49.710766>,  <41.647701, 40.601749, 50.253456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372604, 40.200867, 49.710766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.302933, 40.585121, 49.624195>,  <41.261127, 40.815674, 49.572250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.302933, 40.585121, 49.624195>,  <41.372604, 40.200867, 49.710766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302933, 40.585121, 49.624195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396699, -0.132709, -0.908305,
		-0.901271, -0.244069, -0.357967,
		-0.174183, 0.960634, -0.216429,
		41.250679, 40.873310, 49.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176594, 40.147617, 49.006134>,  <41.372604, 40.200867, 49.710766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176594, 40.147617, 49.006134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248634, 40.539307, 49.043423>,  <41.291859, 40.774319, 49.065796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248634, 40.539307, 49.043423>,  <41.176594, 40.147617, 49.006134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248634, 40.539307, 49.043423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277935, 0.040252, -0.959756,
		-0.943565, 0.198764, -0.264910,
		0.180102, 0.979220, 0.093224,
		41.302666, 40.833073, 49.071388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143742, 40.423405, 48.335239>,  <41.176594, 40.147617, 49.006134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143742, 40.423405, 48.335239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.299759, 40.750725, 48.504124>,  <41.393368, 40.947117, 48.605453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.299759, 40.750725, 48.504124>,  <41.143742, 40.423405, 48.335239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299759, 40.750725, 48.504124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241579, 0.351523, -0.904473,
		-0.888543, 0.454777, -0.060576,
		0.390040, 0.818297, 0.422208,
		41.416771, 40.996212, 48.630787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029202, 40.941994, 47.893276>,  <41.143742, 40.423405, 48.335239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029202, 40.941994, 47.893276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.336887, 41.071472, 48.113651>,  <41.521500, 41.149158, 48.245876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.336887, 41.071472, 48.113651>,  <41.029202, 40.941994, 47.893276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336887, 41.071472, 48.113651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417575, 0.397991, -0.816844,
		-0.483677, 0.858385, 0.170973,
		0.769212, 0.323694, 0.550940,
		41.567650, 41.168579, 48.278934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142712, 41.528938, 47.555473>,  <41.029202, 40.941994, 47.893276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142712, 41.528938, 47.555473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.488663, 41.476311, 47.749245>,  <41.696236, 41.444736, 47.865509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.488663, 41.476311, 47.749245>,  <41.142712, 41.528938, 47.555473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488663, 41.476311, 47.749245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498779, 0.334022, -0.799781,
		-0.056585, 0.933338, 0.354512,
		0.864880, -0.131567, 0.484430,
		41.748127, 41.436840, 47.894573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535473, 42.170765, 47.671078>,  <41.142712, 41.528938, 47.555473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535473, 42.170765, 47.671078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810158, 41.879997, 47.672653>,  <41.974968, 41.705536, 47.673599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810158, 41.879997, 47.672653>,  <41.535473, 42.170765, 47.671078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810158, 41.879997, 47.672653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462365, 0.432598, -0.774001,
		0.560933, 0.533336, 0.633172,
		0.686712, -0.726919, 0.003938,
		42.016171, 41.661922, 47.673836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123455, 42.505322, 47.397018>,  <41.535473, 42.170765, 47.671078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123455, 42.505322, 47.397018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.265320, 42.131950, 47.375404>,  <42.350437, 41.907928, 47.362434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.265320, 42.131950, 47.375404>,  <42.123455, 42.505322, 47.397018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265320, 42.131950, 47.375404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507374, 0.240680, -0.827433,
		0.785358, 0.266043, 0.558959,
		0.354662, -0.933432, -0.054037,
		42.371719, 41.851921, 47.359192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702377, 42.630844, 47.159336>,  <42.123455, 42.505322, 47.397018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702377, 42.630844, 47.159336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.682419, 42.236916, 47.092842>,  <42.670444, 42.000557, 47.052944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.682419, 42.236916, 47.092842>,  <42.702377, 42.630844, 47.159336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682419, 42.236916, 47.092842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604659, 0.102687, -0.789837,
		0.794920, -0.139926, 0.590359,
		-0.049896, -0.984823, -0.166236,
		42.667450, 41.941467, 47.042973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452911, 42.349892, 47.068394>,  <42.702377, 42.630844, 47.159336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452911, 42.349892, 47.068394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.176472, 42.123970, 46.888004>,  <43.010609, 41.988419, 46.779770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.176472, 42.123970, 46.888004>,  <43.452911, 42.349892, 47.068394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176472, 42.123970, 46.888004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550793, -0.007553, -0.834607,
		0.467983, -0.825191, 0.316310,
		-0.691100, -0.564803, -0.450975,
		42.969143, 41.954529, 46.752712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858768, 41.888065, 46.793331>,  <43.452911, 42.349892, 47.068394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858768, 41.888065, 46.793331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.513821, 41.890686, 46.590839>,  <43.306850, 41.892258, 46.469345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.513821, 41.890686, 46.590839>,  <43.858768, 41.888065, 46.793331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513821, 41.890686, 46.590839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505925, 0.048175, -0.861231,
		0.018740, -0.998817, -0.044863,
		-0.862373, 0.006558, -0.506229,
		43.255108, 41.892651, 46.438969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947929, 41.422501, 46.311359>,  <43.858768, 41.888065, 46.793331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947929, 41.422501, 46.311359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.649826, 41.642174, 46.160099>,  <43.470966, 41.773975, 46.069344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.649826, 41.642174, 46.160099>,  <43.947929, 41.422501, 46.311359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649826, 41.642174, 46.160099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463161, 0.018393, -0.886083,
		-0.479664, -0.835502, -0.268066,
		-0.745255, 0.549180, -0.378150,
		43.426250, 41.806927, 46.046654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731068, 41.066807, 45.685627>,  <43.947929, 41.422501, 46.311359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731068, 41.066807, 45.685627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.581909, 41.435555, 45.643478>,  <43.492413, 41.656803, 45.618187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.581909, 41.435555, 45.643478>,  <43.731068, 41.066807, 45.685627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581909, 41.435555, 45.643478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416217, 0.064691, -0.906961,
		-0.829283, -0.382061, -0.407821,
		-0.372897, 0.921870, -0.105374,
		43.470039, 41.712116, 45.611866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275734, 41.097050, 45.125698>,  <43.731068, 41.066807, 45.685627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275734, 41.097050, 45.125698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.391296, 41.477745, 45.167122>,  <43.460636, 41.706161, 45.191978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.391296, 41.477745, 45.167122>,  <43.275734, 41.097050, 45.125698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391296, 41.477745, 45.167122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215986, 0.040588, -0.975553,
		-0.932674, 0.304216, -0.193836,
		0.288911, 0.951738, 0.103561,
		43.477970, 41.763268, 45.198189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217106, 41.295223, 44.437798>,  <43.275734, 41.097050, 45.125698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217106, 41.295223, 44.437798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.408791, 41.612396, 44.588326>,  <43.523800, 41.802700, 44.678642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.408791, 41.612396, 44.588326>,  <43.217106, 41.295223, 44.437798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408791, 41.612396, 44.588326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333860, 0.231851, -0.913664,
		-0.811723, 0.563477, -0.153622,
		0.479211, 0.792931, 0.376322,
		43.552555, 41.850277, 44.701221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916561, 41.985233, 44.024166>,  <43.217106, 41.295223, 44.437798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916561, 41.985233, 44.024166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.283173, 42.040199, 44.174416>,  <43.503139, 42.073177, 44.264565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.283173, 42.040199, 44.174416>,  <42.916561, 41.985233, 44.024166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283173, 42.040199, 44.174416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335724, 0.246177, -0.909223,
		-0.217411, 0.959434, 0.179495,
		0.916527, 0.137414, 0.375626,
		43.558132, 42.081425, 44.287102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284016, 42.579361, 43.723106>,  <42.916561, 41.985233, 44.024166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284016, 42.579361, 43.723106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.595978, 42.388947, 43.885651>,  <43.783157, 42.274696, 43.983177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.595978, 42.388947, 43.885651>,  <43.284016, 42.579361, 43.723106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595978, 42.388947, 43.885651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483860, 0.046732, -0.873897,
		0.397016, 0.878184, 0.266781,
		0.779909, -0.476035, 0.406365,
		43.829952, 42.246136, 44.007561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761246, 42.897194, 43.490108>,  <43.284016, 42.579361, 43.723106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761246, 42.897194, 43.490108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.955875, 42.571442, 43.616619>,  <44.072651, 42.375992, 43.692528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.955875, 42.571442, 43.616619>,  <43.761246, 42.897194, 43.490108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955875, 42.571442, 43.616619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541681, -0.002814, -0.840580,
		0.685441, 0.580325, 0.439765,
		0.486572, -0.814380, 0.316280,
		44.101849, 42.327129, 43.711502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462334, 43.372818, 43.884438>,  <43.761246, 42.897194, 43.490108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462334, 43.372818, 43.884438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.291790, 43.727226, 43.811569>,  <43.189465, 43.939869, 43.767849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.291790, 43.727226, 43.811569>,  <43.462334, 43.372818, 43.884438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291790, 43.727226, 43.811569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455819, -0.036492, 0.889324,
		0.781310, 0.462212, 0.419423,
		-0.426362, 0.886019, -0.182173,
		43.163883, 43.993031, 43.756916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575539, 43.708588, 44.450985>,  <43.462334, 43.372818, 43.884438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575539, 43.708588, 44.450985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.270012, 43.902199, 44.280197>,  <43.086697, 44.018364, 44.177723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.270012, 43.902199, 44.280197>,  <43.575539, 43.708588, 44.450985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270012, 43.902199, 44.280197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437452, 0.098186, 0.893866,
		0.474577, 0.869528, 0.136742,
		-0.763815, 0.484026, -0.426973,
		43.040867, 44.047405, 44.152103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402828, 44.230133, 44.935295>,  <43.575539, 43.708588, 44.450985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402828, 44.230133, 44.935295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.080326, 44.192055, 44.701752>,  <42.886826, 44.169209, 44.561626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.080326, 44.192055, 44.701752>,  <43.402828, 44.230133, 44.935295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080326, 44.192055, 44.701752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588858, 0.034834, 0.807486,
		-0.056532, 0.994849, -0.084143,
		-0.806257, -0.095197, -0.583855,
		42.838448, 44.163494, 44.526596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059231, 44.900654, 44.946239>,  <43.402828, 44.230133, 44.935295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059231, 44.900654, 44.946239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.814438, 44.610710, 44.819721>,  <42.667561, 44.436745, 44.743809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.814438, 44.610710, 44.819721>,  <43.059231, 44.900654, 44.946239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814438, 44.610710, 44.819721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608687, 0.176351, 0.773564,
		-0.504948, 0.665938, -0.549139,
		-0.611987, -0.724863, -0.316300,
		42.630840, 44.393250, 44.724831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391811, 45.238003, 44.925121>,  <43.059231, 44.900654, 44.946239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391811, 45.238003, 44.925121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.322479, 44.844162, 44.916042>,  <42.280880, 44.607857, 44.910595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.322479, 44.844162, 44.916042>,  <42.391811, 45.238003, 44.925121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322479, 44.844162, 44.916042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602373, 0.087754, 0.793376,
		-0.779167, 0.151193, -0.608308,
		-0.173334, -0.984601, -0.022699,
		42.270477, 44.548782, 44.909233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651913, 45.131187, 44.838428>,  <42.391811, 45.238003, 44.925121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651913, 45.131187, 44.838428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.801651, 44.801605, 45.008591>,  <41.891495, 44.603855, 45.110687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.801651, 44.801605, 45.008591>,  <41.651913, 45.131187, 44.838428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801651, 44.801605, 45.008591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726539, 0.024444, 0.686690,
		-0.576198, -0.566131, -0.589484,
		0.374347, -0.823953, 0.425401,
		41.913956, 44.554420, 45.136211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126328, 44.852947, 45.185116>,  <41.651913, 45.131187, 44.838428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126328, 44.852947, 45.185116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.423550, 44.658379, 45.368969>,  <41.601883, 44.541637, 45.479279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.423550, 44.658379, 45.368969>,  <41.126328, 44.852947, 45.185116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423550, 44.658379, 45.368969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491169, 0.070111, 0.868238,
		-0.454558, -0.870905, -0.186821,
		0.743055, -0.486425, 0.459631,
		41.646465, 44.512451, 45.506859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799999, 44.389400, 45.614555>,  <41.126328, 44.852947, 45.185116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799999, 44.389400, 45.614555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.169594, 44.443649, 45.757584>,  <41.391350, 44.476200, 45.843399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.169594, 44.443649, 45.757584>,  <40.799999, 44.389400, 45.614555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169594, 44.443649, 45.757584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356952, -0.029704, 0.933650,
		0.137249, -0.990315, 0.020967,
		0.923985, 0.135627, 0.357571,
		41.446789, 44.484337, 45.864857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844296, 43.942661, 46.256981>,  <40.799999, 44.389400, 45.614555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844296, 43.942661, 46.256981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.150238, 44.192711, 46.319210>,  <41.333805, 44.342743, 46.356548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.150238, 44.192711, 46.319210>,  <40.844296, 43.942661, 46.256981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150238, 44.192711, 46.319210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140762, -0.073482, 0.987313,
		0.628629, -0.777055, 0.031790,
		0.764861, 0.625128, 0.155573,
		41.379696, 44.380249, 46.365883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317921, 43.612732, 46.812817>,  <40.844296, 43.942661, 46.256981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317921, 43.612732, 46.812817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386814, 44.005402, 46.780178>,  <41.428150, 44.241001, 46.760597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386814, 44.005402, 46.780178>,  <41.317921, 43.612732, 46.812817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386814, 44.005402, 46.780178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064881, 0.093957, 0.993460,
		0.982917, -0.165814, 0.079874,
		0.172235, 0.981671, -0.081593,
		41.438484, 44.299904, 46.755699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855095, 43.659855, 47.314144>,  <41.317921, 43.612732, 46.812817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855095, 43.659855, 47.314144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.699772, 44.024979, 47.263561>,  <41.606579, 44.244053, 47.233212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.699772, 44.024979, 47.263561>,  <41.855095, 43.659855, 47.314144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699772, 44.024979, 47.263561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316558, -0.003250, 0.948568,
		0.865452, 0.408370, 0.290220,
		-0.388310, 0.912811, -0.126460,
		41.583279, 44.298820, 47.225624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230274, 44.038494, 47.721046>,  <41.855095, 43.659855, 47.314144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230274, 44.038494, 47.721046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.877480, 44.217216, 47.661106>,  <41.665802, 44.324451, 47.625141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.877480, 44.217216, 47.661106>,  <42.230274, 44.038494, 47.721046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877480, 44.217216, 47.661106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231575, -0.133968, 0.963548,
		0.410444, 0.884543, 0.221627,
		-0.881991, 0.446806, -0.149852,
		41.612881, 44.351257, 47.616150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178272, 44.445641, 48.319134>,  <42.230274, 44.038494, 47.721046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178272, 44.445641, 48.319134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.805420, 44.412987, 48.178013>,  <41.581711, 44.393394, 48.093338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.805420, 44.412987, 48.178013>,  <42.178272, 44.445641, 48.319134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805420, 44.412987, 48.178013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351653, -0.028573, 0.935694,
		-0.086462, 0.996253, -0.002072,
		-0.932129, -0.081630, -0.352806,
		41.525780, 44.388496, 48.072170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833645, 44.804649, 48.785755>,  <42.178272, 44.445641, 48.319134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833645, 44.804649, 48.785755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.544479, 44.607048, 48.592529>,  <41.370979, 44.488487, 48.476593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.544479, 44.607048, 48.592529>,  <41.833645, 44.804649, 48.785755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544479, 44.607048, 48.592529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586206, 0.068444, 0.807266,
		-0.365730, 0.866761, -0.339068,
		-0.722914, -0.494005, -0.483068,
		41.327606, 44.458847, 48.447609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243099, 45.084557, 49.036404>,  <41.833645, 44.804649, 48.785755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243099, 45.084557, 49.036404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.113281, 44.736603, 48.887825>,  <41.035389, 44.527832, 48.798679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.113281, 44.736603, 48.887825>,  <41.243099, 45.084557, 49.036404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113281, 44.736603, 48.887825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555983, -0.142255, 0.818930,
		-0.765213, 0.472301, -0.437471,
		-0.324549, -0.869882, -0.371447,
		41.015915, 44.475639, 48.776390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510899, 45.209595, 49.053974>,  <41.243099, 45.084557, 49.036404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510899, 45.209595, 49.053974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.591339, 44.818214, 49.035286>,  <40.639603, 44.583385, 49.024075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.591339, 44.818214, 49.035286>,  <40.510899, 45.209595, 49.053974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591339, 44.818214, 49.035286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516004, -0.146351, 0.843991,
		-0.832645, -0.145624, -0.534319,
		0.201104, -0.978455, -0.046716,
		40.651669, 44.524677, 49.021271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901825, 44.846203, 49.083794>,  <40.510899, 45.209595, 49.053974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901825, 44.846203, 49.083794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.172119, 44.574318, 49.197903>,  <40.334293, 44.411186, 49.266369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.172119, 44.574318, 49.197903>,  <39.901825, 44.846203, 49.083794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172119, 44.574318, 49.197903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554563, -0.213791, 0.804210,
		-0.485641, -0.701632, -0.521407,
		0.675732, -0.679710, 0.285274,
		40.374840, 44.370403, 49.283485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515995, 44.421555, 49.316429>,  <39.901825, 44.846203, 49.083794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515995, 44.421555, 49.316429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.862656, 44.286377, 49.463242>,  <40.070652, 44.205269, 49.551331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.862656, 44.286377, 49.463242>,  <39.515995, 44.421555, 49.316429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862656, 44.286377, 49.463242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413527, -0.074980, 0.907399,
		-0.279131, -0.938174, -0.204731,
		0.866650, -0.337945, 0.367032,
		40.122650, 44.184994, 49.573353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.710148, 43.093948, 49.531906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936260, 43.370522, 49.711853>,  <40.071926, 43.536465, 49.819820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936260, 43.370522, 49.711853>,  <39.710148, 43.093948, 49.531906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936260, 43.370522, 49.711853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297663, -0.337641, 0.892970,
		0.769324, -0.638684, 0.014953,
		0.565277, 0.691434, 0.449868,
		40.105843, 43.577953, 49.846813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920185, 42.750183, 50.094265>,  <39.710148, 43.093948, 49.531906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920185, 42.750183, 50.094265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.978004, 43.139587, 50.165127>,  <40.012695, 43.373230, 50.207645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.978004, 43.139587, 50.165127>,  <39.920185, 42.750183, 50.094265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978004, 43.139587, 50.165127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187178, -0.148906, 0.970975,
		0.971633, -0.173508, 0.160696,
		0.144544, 0.973510, 0.177159,
		40.021366, 43.431641, 50.218273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328228, 42.725773, 50.712433>,  <39.920185, 42.750183, 50.094265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328228, 42.725773, 50.712433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142914, 43.078804, 50.680389>,  <40.031723, 43.290623, 50.661163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142914, 43.078804, 50.680389>,  <40.328228, 42.725773, 50.712433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142914, 43.078804, 50.680389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148672, 0.011705, 0.988817,
		0.873647, 0.470018, 0.125792,
		-0.463290, 0.882579, -0.080105,
		40.003925, 43.343578, 50.656357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551521, 42.974190, 51.322666>,  <40.328228, 42.725773, 50.712433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551521, 42.974190, 51.322666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227448, 43.180916, 51.212029>,  <40.033005, 43.304951, 51.145645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227448, 43.180916, 51.212029>,  <40.551521, 42.974190, 51.322666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227448, 43.180916, 51.212029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262124, 0.102627, 0.959562,
		0.524302, 0.849923, 0.052323,
		-0.810184, 0.516815, -0.276593,
		39.984394, 43.335960, 51.129051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456860, 43.568748, 51.826183>,  <40.551521, 42.974190, 51.322666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456860, 43.568748, 51.826183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096970, 43.525940, 51.656933>,  <39.881035, 43.500256, 51.555382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096970, 43.525940, 51.656933>,  <40.456860, 43.568748, 51.826183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096970, 43.525940, 51.656933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428873, 0.036930, 0.902610,
		-0.080969, 0.993571, -0.079124,
		-0.899729, -0.107018, -0.423126,
		39.827049, 43.493835, 51.529995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021725, 43.901764, 52.265198>,  <40.456860, 43.568748, 51.826183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021725, 43.901764, 52.265198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771942, 43.675980, 52.049255>,  <39.622074, 43.540508, 51.919689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771942, 43.675980, 52.049255>,  <40.021725, 43.901764, 52.265198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771942, 43.675980, 52.049255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651790, -0.004261, 0.758388,
		-0.430381, 0.825448, -0.365250,
		-0.624453, -0.564462, -0.539852,
		39.584606, 43.506641, 51.887299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432655, 44.161980, 52.349564>,  <40.021725, 43.901764, 52.265198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432655, 44.161980, 52.349564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.355347, 43.784996, 52.240448>,  <39.308964, 43.558804, 52.174980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.355347, 43.784996, 52.240448>,  <39.432655, 44.161980, 52.349564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355347, 43.784996, 52.240448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634715, -0.091918, 0.767260,
		-0.748187, 0.321429, -0.580430,
		-0.193267, -0.942462, -0.272788,
		39.297367, 43.502258, 52.158611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699516, 44.118786, 52.363026>,  <39.432655, 44.161980, 52.349564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699516, 44.118786, 52.363026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813820, 43.736031, 52.383820>,  <38.882404, 43.506378, 52.396297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813820, 43.736031, 52.383820>,  <38.699516, 44.118786, 52.363026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813820, 43.736031, 52.383820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607917, -0.139075, 0.781726,
		-0.740795, -0.254992, -0.621451,
		0.285762, -0.956889, 0.051988,
		38.899548, 43.448963, 52.399414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103024, 43.749973, 52.467869>,  <38.699516, 44.118786, 52.363026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103024, 43.749973, 52.467869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389519, 43.504364, 52.600517>,  <38.561417, 43.356998, 52.680107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389519, 43.504364, 52.600517>,  <38.103024, 43.749973, 52.467869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389519, 43.504364, 52.600517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509122, -0.134766, 0.850078,
		-0.477276, -0.777698, -0.409137,
		0.716242, -0.614022, 0.331622,
		38.604393, 43.320156, 52.700005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780197, 43.055466, 52.753666>,  <38.103024, 43.749973, 52.467869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780197, 43.055466, 52.753666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134327, 43.104240, 52.933147>,  <38.346806, 43.133503, 53.040836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134327, 43.104240, 52.933147>,  <37.780197, 43.055466, 52.753666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134327, 43.104240, 52.933147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433823, -0.130654, 0.891474,
		0.167325, -0.983901, -0.062774,
		0.885325, 0.121934, 0.448701,
		38.399925, 43.140820, 53.067757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843193, 42.513954, 53.292980>,  <37.780197, 43.055466, 52.753666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843193, 42.513954, 53.292980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.121082, 42.763779, 53.435684>,  <38.287815, 42.913673, 53.521305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.121082, 42.763779, 53.435684>,  <37.843193, 42.513954, 53.292980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121082, 42.763779, 53.435684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325369, -0.169469, 0.930277,
		0.641474, -0.762368, 0.085478,
		0.694727, 0.624560, 0.356760,
		38.329502, 42.951145, 53.542713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154816, 42.166317, 53.924984>,  <37.843193, 42.513954, 53.292980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154816, 42.166317, 53.924984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227760, 42.558891, 53.948738>,  <38.271526, 42.794437, 53.962990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.227760, 42.558891, 53.948738>,  <38.154816, 42.166317, 53.924984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227760, 42.558891, 53.948738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159883, -0.029998, 0.986680,
		0.970145, -0.189428, 0.151445,
		0.182362, 0.981436, 0.059388,
		38.282471, 42.853321, 53.966553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590523, 42.177338, 54.434910>,  <38.154816, 42.166317, 53.924984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590523, 42.177338, 54.434910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425064, 42.538574, 54.388744>,  <38.325787, 42.755318, 54.361046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425064, 42.538574, 54.388744>,  <38.590523, 42.177338, 54.434910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425064, 42.538574, 54.388744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140243, 0.062046, 0.988171,
		0.899569, 0.424944, 0.100987,
		-0.413651, 0.903091, -0.115409,
		38.300968, 42.809502, 54.354122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890049, 42.647739, 54.975189>,  <38.590523, 42.177338, 54.434910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890049, 42.647739, 54.975189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.579300, 42.864288, 54.846577>,  <38.392849, 42.994217, 54.769409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.579300, 42.864288, 54.846577>,  <38.890049, 42.647739, 54.975189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579300, 42.864288, 54.846577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229757, 0.231712, 0.945263,
		0.586244, 0.808222, -0.055626,
		-0.776872, 0.541375, -0.321534,
		38.346237, 43.026699, 54.750118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879551, 43.238972, 55.350739>,  <38.890049, 42.647739, 54.975189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879551, 43.238972, 55.350739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.502022, 43.176888, 55.234047>,  <38.275505, 43.139637, 55.164032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.502022, 43.176888, 55.234047>,  <38.879551, 43.238972, 55.350739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502022, 43.176888, 55.234047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326923, 0.309999, 0.892761,
		-0.048132, 0.937982, -0.343326,
		-0.943825, -0.155211, -0.291727,
		38.218876, 43.130325, 55.146530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468838, 43.804832, 55.577652>,  <38.879551, 43.238972, 55.350739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468838, 43.804832, 55.577652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215511, 43.501152, 55.517632>,  <38.063515, 43.318943, 55.481621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215511, 43.501152, 55.517632>,  <38.468838, 43.804832, 55.577652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215511, 43.501152, 55.517632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475355, 0.228626, 0.849569,
		-0.610692, 0.609374, -0.505686,
		-0.633318, -0.759206, -0.150049,
		38.025517, 43.273392, 55.472618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966297, 43.984291, 56.044769>,  <38.468838, 43.804832, 55.577652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966297, 43.984291, 56.044769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824448, 43.615631, 55.981766>,  <37.739338, 43.394436, 55.943966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824448, 43.615631, 55.981766>,  <37.966297, 43.984291, 56.044769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824448, 43.615631, 55.981766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504483, 0.046774, 0.862154,
		-0.787234, 0.385201, -0.481543,
		-0.354626, -0.921647, -0.157505,
		37.718060, 43.339138, 55.934513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297718, 43.940849, 56.199970>,  <37.966297, 43.984291, 56.044769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297718, 43.940849, 56.199970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420364, 43.564774, 56.259354>,  <37.493950, 43.339130, 56.294983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420364, 43.564774, 56.259354>,  <37.297718, 43.940849, 56.199970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420364, 43.564774, 56.259354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389552, 0.018358, 0.920822,
		-0.868469, -0.340168, -0.360622,
		0.306613, -0.940185, 0.148456,
		37.512348, 43.282719, 56.303890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725391, 43.558422, 56.480736>,  <37.297718, 43.940849, 56.199970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725391, 43.558422, 56.480736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039566, 43.330582, 56.577595>,  <37.228073, 43.193878, 56.635712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039566, 43.330582, 56.577595>,  <36.725391, 43.558422, 56.480736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039566, 43.330582, 56.577595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427634, -0.216580, 0.877623,
		-0.447456, -0.792869, -0.413693,
		0.785438, -0.569607, 0.242148,
		37.275196, 43.159698, 56.650238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435280, 43.147217, 57.008556>,  <36.725391, 43.558422, 56.480736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435280, 43.147217, 57.008556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819679, 43.040421, 57.037392>,  <37.050320, 42.976341, 57.054691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819679, 43.040421, 57.037392>,  <36.435280, 43.147217, 57.008556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819679, 43.040421, 57.037392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142393, -0.254242, 0.956601,
		-0.237064, -0.929561, -0.282343,
		0.961002, -0.266979, 0.072091,
		37.107979, 42.960323, 57.059017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427219, 42.534672, 57.296844>,  <36.435280, 43.147217, 57.008556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427219, 42.534672, 57.296844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784798, 42.694267, 57.378502>,  <36.999344, 42.790024, 57.427498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784798, 42.694267, 57.378502>,  <36.427219, 42.534672, 57.296844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784798, 42.694267, 57.378502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109503, -0.247251, 0.962744,
		0.434598, -0.882992, -0.177338,
		0.893943, 0.398988, 0.204145,
		37.052982, 42.813965, 57.439747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681908, 42.044559, 57.684776>,  <36.427219, 42.534672, 57.296844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681908, 42.044559, 57.684776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943272, 42.343384, 57.733688>,  <37.100090, 42.522678, 57.763035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943272, 42.343384, 57.733688>,  <36.681908, 42.044559, 57.684776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943272, 42.343384, 57.733688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007619, -0.155040, 0.987879,
		0.756964, -0.646424, -0.095613,
		0.653412, 0.747060, 0.122285,
		37.139294, 42.567501, 57.770374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033108, 41.841305, 58.228352>,  <36.681908, 42.044559, 57.684776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033108, 41.841305, 58.228352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111069, 42.232567, 58.199425>,  <37.157845, 42.467323, 58.182068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111069, 42.232567, 58.199425>,  <37.033108, 41.841305, 58.228352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111069, 42.232567, 58.199425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074415, 0.088270, 0.993313,
		0.977995, -0.188221, 0.089993,
		0.194907, 0.978152, -0.072321,
		37.169540, 42.526012, 58.177727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667454, 41.517693, 58.530659>,  <37.033108, 41.841305, 58.228352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667454, 41.517693, 58.530659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897144, 41.349747, 58.811790>,  <38.034958, 41.248978, 58.980469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897144, 41.349747, 58.811790>,  <37.667454, 41.517693, 58.530659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897144, 41.349747, 58.811790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356470, -0.644602, -0.676326,
		0.737014, 0.638905, -0.220479,
		0.574230, -0.419867, 0.702831,
		38.069412, 41.223785, 59.022640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395149, 41.611938, 58.385139>,  <37.667454, 41.517693, 58.530659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395149, 41.611938, 58.385139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341064, 41.280548, 58.602524>,  <38.308613, 41.081715, 58.732952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341064, 41.280548, 58.602524>,  <38.395149, 41.611938, 58.385139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341064, 41.280548, 58.602524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272048, -0.558459, -0.783654,
		0.952736, 0.041886, 0.300897,
		-0.135214, -0.828474, 0.543459,
		38.300499, 41.032005, 58.765560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929245, 41.174679, 58.268299>,  <38.395149, 41.611938, 58.385139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929245, 41.174679, 58.268299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624325, 40.946777, 58.391121>,  <38.441372, 40.810036, 58.464813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624325, 40.946777, 58.391121>,  <38.929245, 41.174679, 58.268299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624325, 40.946777, 58.391121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170238, -0.634219, -0.754178,
		0.624437, -0.522635, 0.580457,
		-0.762297, -0.569753, 0.307058,
		38.395638, 40.775852, 58.483238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252827, 40.537319, 58.182686>,  <38.929245, 41.174679, 58.268299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252827, 40.537319, 58.182686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858131, 40.472404, 58.181080>,  <38.621315, 40.433456, 58.180115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858131, 40.472404, 58.181080>,  <39.252827, 40.537319, 58.182686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858131, 40.472404, 58.181080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085088, -0.495991, -0.864149,
		0.138246, -0.853028, 0.503220,
		-0.986736, -0.162284, -0.004014,
		38.562111, 40.423721, 58.179874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161758, 39.889816, 57.931931>,  <39.252827, 40.537319, 58.182686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161758, 39.889816, 57.931931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803535, 40.062630, 57.889374>,  <38.588600, 40.166317, 57.863838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803535, 40.062630, 57.889374>,  <39.161758, 39.889816, 57.931931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803535, 40.062630, 57.889374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046872, -0.329391, -0.943029,
		-0.442466, -0.839552, 0.315240,
		-0.895560, 0.432035, -0.106393,
		38.534866, 40.192238, 57.857456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820698, 39.417061, 57.551109>,  <39.161758, 39.889816, 57.931931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820698, 39.417061, 57.551109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590256, 39.740326, 57.502151>,  <38.451992, 39.934284, 57.472775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590256, 39.740326, 57.502151>,  <38.820698, 39.417061, 57.551109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590256, 39.740326, 57.502151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079129, -0.204186, -0.975729,
		-0.813539, -0.552434, 0.181581,
		-0.576102, 0.808161, -0.122399,
		38.417423, 39.982773, 57.465431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222805, 39.318199, 57.094444>,  <38.820698, 39.417061, 57.551109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222805, 39.318199, 57.094444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306328, 39.708115, 57.063004>,  <38.356441, 39.942066, 57.044140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306328, 39.708115, 57.063004>,  <38.222805, 39.318199, 57.094444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306328, 39.708115, 57.063004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020755, -0.075941, -0.996896,
		-0.977736, 0.209794, 0.004375,
		0.208810, 0.974792, -0.078605,
		38.368973, 40.000553, 57.039421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728245, 39.712311, 56.542587>,  <38.222805, 39.318199, 57.094444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728245, 39.712311, 56.542587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072945, 39.911827, 56.579674>,  <38.279762, 40.031536, 56.601925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072945, 39.911827, 56.579674>,  <37.728245, 39.712311, 56.542587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072945, 39.911827, 56.579674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047580, 0.102482, -0.993596,
		-0.505102, 0.860640, 0.064581,
		0.861747, 0.498794, 0.092713,
		38.331470, 40.061466, 56.607487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576004, 40.259575, 56.111641>,  <37.728245, 39.712311, 56.542587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576004, 40.259575, 56.111641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971458, 40.251587, 56.171253>,  <38.208729, 40.246792, 56.207020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971458, 40.251587, 56.171253>,  <37.576004, 40.259575, 56.111641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971458, 40.251587, 56.171253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150360, 0.130927, -0.979924,
		0.000060, 0.991191, 0.132442,
		0.988631, -0.019973, 0.149027,
		38.268047, 40.245594, 56.215961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893902, 40.621593, 55.571556>,  <37.576004, 40.259575, 56.111641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893902, 40.621593, 55.571556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230644, 40.456764, 55.710968>,  <38.432690, 40.357868, 55.794617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230644, 40.456764, 55.710968>,  <37.893902, 40.621593, 55.571556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230644, 40.456764, 55.710968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470445, 0.243808, -0.848080,
		0.264494, 0.877927, 0.399109,
		0.841858, -0.412071, 0.348531,
		38.483200, 40.333141, 55.815529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398811, 41.157307, 55.558765>,  <37.893902, 40.621593, 55.571556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398811, 41.157307, 55.558765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.585567, 40.804329, 55.535751>,  <38.697620, 40.592545, 55.521942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.585567, 40.804329, 55.535751>,  <38.398811, 41.157307, 55.558765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585567, 40.804329, 55.535751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500839, 0.317485, -0.805210,
		0.728817, 0.347130, 0.590192,
		0.466889, -0.882442, -0.057532,
		38.725636, 40.539597, 55.518490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088131, 41.365925, 55.418388>,  <38.398811, 41.157307, 55.558765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088131, 41.365925, 55.418388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058006, 40.979935, 55.317871>,  <39.039932, 40.748341, 55.257561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058006, 40.979935, 55.317871>,  <39.088131, 41.365925, 55.418388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058006, 40.979935, 55.317871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428405, 0.196259, -0.882016,
		0.900443, -0.174082, 0.398620,
		-0.075311, -0.964976, -0.251298,
		39.035412, 40.690441, 55.242481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694580, 41.120655, 55.259079>,  <39.088131, 41.365925, 55.418388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694580, 41.120655, 55.259079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444763, 40.888840, 55.049667>,  <39.294872, 40.749752, 54.924023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444763, 40.888840, 55.049667>,  <39.694580, 41.120655, 55.259079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444763, 40.888840, 55.049667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461009, 0.267523, -0.846110,
		0.630408, -0.769784, 0.100092,
		-0.624545, -0.579538, -0.523526,
		39.257401, 40.714977, 54.892609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075531, 40.891933, 54.714420>,  <39.694580, 41.120655, 55.259079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075531, 40.891933, 54.714420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717934, 40.760536, 54.592525>,  <39.503376, 40.681698, 54.519390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717934, 40.760536, 54.592525>,  <40.075531, 40.891933, 54.714420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717934, 40.760536, 54.592525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332479, -0.030395, -0.942621,
		0.300381, -0.944017, 0.136390,
		-0.893996, -0.328492, -0.304736,
		39.449734, 40.661987, 54.501106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202667, 40.535034, 54.018299>,  <40.075531, 40.891933, 54.714420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202667, 40.535034, 54.018299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.812016, 40.618729, 53.998653>,  <39.577625, 40.668945, 53.986866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.812016, 40.618729, 53.998653>,  <40.202667, 40.535034, 54.018299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812016, 40.618729, 53.998653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074299, 0.114261, -0.990668,
		-0.201668, -0.971168, -0.127137,
		-0.976632, 0.209232, -0.049115,
		39.519028, 40.681499, 53.983917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862530, 39.995323, 53.492867>,  <40.202667, 40.535034, 54.018299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862530, 39.995323, 53.492867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637821, 40.326118, 53.501900>,  <39.502995, 40.524593, 53.507320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637821, 40.326118, 53.501900>,  <39.862530, 39.995323, 53.492867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637821, 40.326118, 53.501900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228082, 0.181065, -0.956658,
		-0.795231, -0.532271, -0.290337,
		-0.561771, 0.826985, 0.022587,
		39.469292, 40.574215, 53.508675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447659, 39.981327, 52.899929>,  <39.862530, 39.995323, 53.492867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447659, 39.981327, 52.899929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.413128, 40.368263, 52.995262>,  <39.392410, 40.600426, 53.052464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.413128, 40.368263, 52.995262>,  <39.447659, 39.981327, 52.899929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413128, 40.368263, 52.995262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100681, 0.229532, -0.968080,
		-0.991166, -0.107569, 0.077578,
		-0.086329, 0.967339, 0.238334,
		39.387230, 40.658466, 53.066761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932087, 40.136044, 52.506004>,  <39.447659, 39.981327, 52.899929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932087, 40.136044, 52.506004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129471, 40.470993, 52.600067>,  <39.247902, 40.671963, 52.656506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129471, 40.470993, 52.600067>,  <38.932087, 40.136044, 52.506004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129471, 40.470993, 52.600067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091932, 0.218635, -0.971466,
		-0.864897, 0.500996, 0.030906,
		0.493458, 0.837378, 0.235155,
		39.277508, 40.722206, 52.670612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829414, 40.552292, 51.953289>,  <38.932087, 40.136044, 52.506004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829414, 40.552292, 51.953289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151703, 40.719086, 52.121544>,  <39.345078, 40.819164, 52.222496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151703, 40.719086, 52.121544>,  <38.829414, 40.552292, 51.953289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151703, 40.719086, 52.121544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429199, 0.078361, -0.899804,
		-0.408170, 0.905527, -0.115834,
		0.805720, 0.416989, 0.420636,
		39.393417, 40.844181, 52.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781616, 41.196823, 51.632317>,  <38.829414, 40.552292, 51.953289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781616, 41.196823, 51.632317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149216, 41.114922, 51.767082>,  <39.369778, 41.065781, 51.847942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149216, 41.114922, 51.767082>,  <38.781616, 41.196823, 51.632317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149216, 41.114922, 51.767082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386812, 0.303024, -0.870950,
		0.076233, 0.930728, 0.357679,
		0.919002, -0.204750, 0.336916,
		39.424915, 41.053497, 51.868156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215801, 41.788174, 51.496815>,  <38.781616, 41.196823, 51.632317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215801, 41.788174, 51.496815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479462, 41.490555, 51.540482>,  <39.637657, 41.311985, 51.566681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479462, 41.490555, 51.540482>,  <39.215801, 41.788174, 51.496815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479462, 41.490555, 51.540482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436665, 0.260502, -0.861082,
		0.612247, 0.615250, 0.496608,
		0.659149, -0.744047, 0.109167,
		39.677208, 41.267342, 51.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.558369, 45.070175, 47.395664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880901, 44.845833, 47.470798>,  <41.074421, 44.711227, 47.515881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880901, 44.845833, 47.470798>,  <40.558369, 45.070175, 47.395664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880901, 44.845833, 47.470798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383211, 0.253465, -0.888203,
		0.450540, 0.788163, 0.419300,
		0.806327, -0.560851, 0.187837,
		41.122799, 44.677578, 47.527149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943813, 45.370911, 46.967567>,  <40.558369, 45.070175, 47.395664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943813, 45.370911, 46.967567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184383, 45.064835, 47.059460>,  <41.328724, 44.881191, 47.114594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184383, 45.064835, 47.059460>,  <40.943813, 45.370911, 46.967567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184383, 45.064835, 47.059460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413181, 0.051797, -0.909175,
		0.683790, 0.641720, 0.347313,
		0.601425, -0.765188, 0.229728,
		41.364811, 44.835278, 47.128380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671623, 45.524117, 46.900082>,  <40.943813, 45.370911, 46.967567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671623, 45.524117, 46.900082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604538, 45.133003, 46.849789>,  <41.564289, 44.898335, 46.819614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604538, 45.133003, 46.849789>,  <41.671623, 45.524117, 46.900082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604538, 45.133003, 46.849789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450492, 0.037429, -0.891996,
		0.876887, -0.206235, 0.434208,
		-0.167709, -0.977786, -0.125728,
		41.554226, 44.839668, 46.812069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290600, 45.316921, 46.617367>,  <41.671623, 45.524117, 46.900082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290600, 45.316921, 46.617367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.027145, 45.029518, 46.527973>,  <41.869072, 44.857079, 46.474339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.027145, 45.029518, 46.527973>,  <42.290600, 45.316921, 46.617367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027145, 45.029518, 46.527973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423098, -0.108026, -0.899621,
		0.622239, -0.687083, 0.375148,
		-0.658640, -0.718504, -0.223485,
		41.829552, 44.813969, 46.460926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633484, 44.674816, 46.434093>,  <42.290600, 45.316921, 46.617367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633484, 44.674816, 46.434093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285019, 44.611206, 46.248283>,  <42.075939, 44.573040, 46.136799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285019, 44.611206, 46.248283>,  <42.633484, 44.674816, 46.434093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285019, 44.611206, 46.248283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490341, -0.330292, -0.806519,
		-0.025173, -0.930387, 0.365714,
		-0.871167, -0.159022, -0.464521,
		42.023670, 44.563499, 46.108929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678867, 43.970955, 46.110924>,  <42.633484, 44.674816, 46.434093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678867, 43.970955, 46.110924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368675, 44.140533, 45.923775>,  <42.182560, 44.242279, 45.811485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368675, 44.140533, 45.923775>,  <42.678867, 43.970955, 46.110924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368675, 44.140533, 45.923775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308997, -0.391388, -0.866797,
		-0.550596, -0.816752, 0.172514,
		-0.775477, 0.423948, -0.467870,
		42.136032, 44.267719, 45.783413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331757, 43.446453, 45.712524>,  <42.678867, 43.970955, 46.110924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331757, 43.446453, 45.712524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.217846, 43.787766, 45.537796>,  <42.149502, 43.992554, 45.432961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.217846, 43.787766, 45.537796>,  <42.331757, 43.446453, 45.712524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217846, 43.787766, 45.537796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372230, -0.321496, -0.870681,
		-0.883374, -0.410542, -0.226065,
		-0.284772, 0.853285, -0.436817,
		42.132416, 44.043751, 45.406750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098042, 43.238098, 45.033924>,  <42.331757, 43.446453, 45.712524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098042, 43.238098, 45.033924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128365, 43.635239, 44.997063>,  <42.146557, 43.873524, 44.974945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128365, 43.635239, 44.997063>,  <42.098042, 43.238098, 45.033924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128365, 43.635239, 44.997063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332995, -0.112321, -0.936215,
		-0.939877, 0.040287, -0.339130,
		0.075809, 0.992855, -0.092153,
		42.151108, 43.933094, 44.969418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773026, 43.433998, 44.330853>,  <42.098042, 43.238098, 45.033924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773026, 43.433998, 44.330853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990894, 43.749466, 44.444931>,  <42.121616, 43.938747, 44.513378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990894, 43.749466, 44.444931>,  <41.773026, 43.433998, 44.330853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990894, 43.749466, 44.444931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397027, 0.057056, -0.916032,
		-0.738720, 0.612162, -0.282047,
		0.544668, 0.788671, 0.285194,
		42.154293, 43.986069, 44.530491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706497, 43.998158, 43.834133>,  <41.773026, 43.433998, 44.330853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706497, 43.998158, 43.834133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059761, 44.038216, 44.017437>,  <42.271721, 44.062252, 44.127419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059761, 44.038216, 44.017437>,  <41.706497, 43.998158, 43.834133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059761, 44.038216, 44.017437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451379, 0.084340, -0.888338,
		-0.127612, 0.991392, 0.029283,
		0.883160, 0.100145, 0.458256,
		42.324711, 44.068260, 44.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041721, 44.559998, 43.501625>,  <41.706497, 43.998158, 43.834133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041721, 44.559998, 43.501625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.338329, 44.374222, 43.695297>,  <42.516296, 44.262756, 43.811501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.338329, 44.374222, 43.695297>,  <42.041721, 44.559998, 43.501625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338329, 44.374222, 43.695297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609998, 0.166207, -0.774776,
		0.279365, 0.869866, 0.406556,
		0.741524, -0.464444, 0.484185,
		42.560787, 44.234890, 43.840553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596317, 45.076523, 43.601414>,  <42.041721, 44.559998, 43.501625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596317, 45.076523, 43.601414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735992, 44.701714, 43.598484>,  <42.819798, 44.476826, 43.596725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735992, 44.701714, 43.598484>,  <42.596317, 45.076523, 43.601414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735992, 44.701714, 43.598484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521602, 0.200855, -0.829210,
		0.778460, 0.285730, 0.558890,
		0.349186, -0.937025, -0.007320,
		42.840748, 44.420605, 43.596287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282475, 45.172352, 43.672867>,  <42.596317, 45.076523, 43.601414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282475, 45.172352, 43.672867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212242, 44.807220, 43.525402>,  <43.170101, 44.588142, 43.436924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212242, 44.807220, 43.525402>,  <43.282475, 45.172352, 43.672867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212242, 44.807220, 43.525402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668877, 0.164156, -0.725022,
		0.722339, -0.373896, 0.581746,
		-0.175585, -0.912828, -0.368667,
		43.159565, 44.533371, 43.414803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151619, 45.930687, 43.776138>,  <43.282475, 45.172352, 43.672867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151619, 45.930687, 43.776138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106022, 45.954643, 44.172810>,  <43.078663, 45.969017, 44.410812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106022, 45.954643, 44.172810>,  <43.151619, 45.930687, 43.776138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106022, 45.954643, 44.172810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067288, -0.995424, 0.067853,
		0.991201, 0.074462, 0.109438,
		-0.113989, 0.059892, 0.991675,
		43.071827, 45.972610, 44.470314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659378, 45.888332, 44.174408>,  <43.151619, 45.930687, 43.776138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659378, 45.888332, 44.174408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883415, 46.218513, 44.202477>,  <44.017838, 46.416622, 44.219318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883415, 46.218513, 44.202477>,  <43.659378, 45.888332, 44.174408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883415, 46.218513, 44.202477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232334, -0.237821, 0.943113,
		0.795183, -0.511929, -0.324982,
		0.560094, 0.825451, 0.070173,
		44.051445, 46.466148, 44.223530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356037, 45.718731, 44.364437>,  <43.659378, 45.888332, 44.174408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356037, 45.718731, 44.364437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333862, 46.108528, 44.451424>,  <44.320557, 46.342407, 44.503616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333862, 46.108528, 44.451424>,  <44.356037, 45.718731, 44.364437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333862, 46.108528, 44.451424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425762, -0.173937, 0.887959,
		0.903135, 0.141815, -0.405260,
		-0.055436, 0.974492, 0.217469,
		44.317230, 46.400875, 44.516663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033222, 45.902805, 44.651966>,  <44.356037, 45.718731, 44.364437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033222, 45.902805, 44.651966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756016, 46.154823, 44.792122>,  <44.589691, 46.306034, 44.876217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756016, 46.154823, 44.792122>,  <45.033222, 45.902805, 44.651966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756016, 46.154823, 44.792122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305804, -0.183229, 0.934297,
		0.652847, 0.754636, -0.065688,
		-0.693019, 0.630041, 0.350391,
		44.548111, 46.343834, 44.897240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339066, 46.216633, 45.242481>,  <45.033222, 45.902805, 44.651966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339066, 46.216633, 45.242481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948914, 46.284424, 45.298923>,  <44.714821, 46.325100, 45.332787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948914, 46.284424, 45.298923>,  <45.339066, 46.216633, 45.242481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948914, 46.284424, 45.298923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130202, -0.073853, 0.988733,
		0.177989, 0.982763, 0.049968,
		-0.975381, 0.169477, 0.141102,
		44.656300, 46.335266, 45.341255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315372, 46.725262, 45.808491>,  <45.339066, 46.216633, 45.242481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315372, 46.725262, 45.808491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947151, 46.569046, 45.805214>,  <44.726219, 46.475319, 45.803246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947151, 46.569046, 45.805214>,  <45.315372, 46.725262, 45.808491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947151, 46.569046, 45.805214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047706, -0.133226, 0.989937,
		-0.387697, 0.910897, 0.141272,
		-0.920552, -0.390535, -0.008196,
		44.670986, 46.451885, 45.802753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996979, 46.931488, 46.384483>,  <45.315372, 46.725262, 45.808491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996979, 46.931488, 46.384483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.744072, 46.632423, 46.303253>,  <44.592327, 46.452984, 46.254517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.744072, 46.632423, 46.303253>,  <44.996979, 46.931488, 46.384483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744072, 46.632423, 46.303253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095446, -0.184949, 0.978102,
		-0.768850, 0.637803, 0.045575,
		-0.632265, -0.747664, -0.203074,
		44.554394, 46.408123, 46.242332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421417, 47.043419, 46.780991>,  <44.996979, 46.931488, 46.384483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421417, 47.043419, 46.780991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386086, 46.650490, 46.714962>,  <44.364887, 46.414734, 46.675346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386086, 46.650490, 46.714962>,  <44.421417, 47.043419, 46.780991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386086, 46.650490, 46.714962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168180, -0.148633, 0.974486,
		-0.981791, 0.113833, -0.152079,
		-0.088325, -0.982319, -0.165071,
		44.359589, 46.355793, 46.665440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870289, 46.796139, 47.202213>,  <44.421417, 47.043419, 46.780991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870289, 46.796139, 47.202213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065884, 46.456970, 47.120319>,  <44.183243, 46.253468, 47.071182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065884, 46.456970, 47.120319>,  <43.870289, 46.796139, 47.202213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065884, 46.456970, 47.120319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373885, -0.415793, 0.829051,
		-0.788098, -0.328851, -0.520345,
		0.488990, -0.847923, -0.204733,
		44.212582, 46.202595, 47.058899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463078, 46.297089, 47.269913>,  <43.870289, 46.796139, 47.202213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463078, 46.297089, 47.269913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817177, 46.119713, 47.326046>,  <44.029636, 46.013287, 47.359726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817177, 46.119713, 47.326046>,  <43.463078, 46.297089, 47.269913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817177, 46.119713, 47.326046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366527, -0.479345, 0.797425,
		-0.286338, -0.757358, -0.586872,
		0.885250, -0.443438, 0.140337,
		44.082752, 45.986683, 47.368149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337231, 45.524349, 47.420441>,  <43.463078, 46.297089, 47.269913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337231, 45.524349, 47.420441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683197, 45.640594, 47.584129>,  <43.890778, 45.710342, 47.682343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683197, 45.640594, 47.584129>,  <43.337231, 45.524349, 47.420441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683197, 45.640594, 47.584129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327787, -0.290387, 0.899017,
		0.380096, -0.911713, -0.155902,
		0.864918, 0.290610, 0.409223,
		43.942673, 45.727779, 47.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458347, 45.129517, 47.999260>,  <43.337231, 45.524349, 47.420441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458347, 45.129517, 47.999260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.741539, 45.392517, 48.102383>,  <43.911453, 45.550316, 48.164257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.741539, 45.392517, 48.102383>,  <43.458347, 45.129517, 47.999260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741539, 45.392517, 48.102383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061640, -0.306126, 0.949993,
		0.703540, -0.688465, -0.176203,
		0.707977, 0.657497, 0.257809,
		43.953934, 45.589767, 48.179726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796513, 44.738850, 48.440994>,  <43.458347, 45.129517, 47.999260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796513, 44.738850, 48.440994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.896942, 45.119347, 48.512650>,  <43.957199, 45.347645, 48.555645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.896942, 45.119347, 48.512650>,  <43.796513, 44.738850, 48.440994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896942, 45.119347, 48.512650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124606, -0.151767, 0.980531,
		0.959913, -0.268511, 0.080425,
		0.251078, 0.951246, 0.179141,
		43.972267, 45.404720, 48.566391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353321, 44.647999, 48.956200>,  <43.796513, 44.738850, 48.440994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353321, 44.647999, 48.956200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200817, 45.017776, 48.953369>,  <44.109314, 45.239643, 48.951672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200817, 45.017776, 48.953369>,  <44.353321, 44.647999, 48.956200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200817, 45.017776, 48.953369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077803, -0.024459, 0.996669,
		0.921189, 0.380537, 0.081249,
		-0.381257, 0.924442, -0.007075,
		44.086441, 45.295109, 48.951248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458340, 44.823483, 49.590427>,  <44.353321, 44.647999, 48.956200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458340, 44.823483, 49.590427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205597, 45.100052, 49.450317>,  <44.053951, 45.265995, 49.366253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205597, 45.100052, 49.450317>,  <44.458340, 44.823483, 49.590427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205597, 45.100052, 49.450317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449833, 0.040894, 0.892176,
		0.631198, 0.721288, 0.285188,
		-0.631854, 0.691427, -0.350271,
		44.016041, 45.307480, 49.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958260, 45.201443, 49.842587>,  <44.458340, 44.823483, 49.590427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958260, 45.201443, 49.842587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274288, 44.979065, 49.945900>,  <45.463905, 44.845638, 50.007889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274288, 44.979065, 49.945900>,  <44.958260, 45.201443, 49.842587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274288, 44.979065, 49.945900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444097, 0.228635, -0.866316,
		0.422573, 0.799155, 0.427532,
		0.790069, -0.555948, 0.258287,
		45.511311, 44.812279, 50.023388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671577, 45.584274, 49.909569>,  <44.958260, 45.201443, 49.842587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671577, 45.584274, 49.909569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749100, 45.198502, 49.837669>,  <45.795612, 44.967037, 49.794529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.749100, 45.198502, 49.837669>,  <45.671577, 45.584274, 49.909569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749100, 45.198502, 49.837669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591730, 0.261053, -0.762697,
		0.782494, 0.041452, 0.621277,
		0.193801, -0.964434, -0.179744,
		45.807240, 44.909172, 49.783745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385525, 45.443436, 49.792244>,  <45.671577, 45.584274, 49.909569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385525, 45.443436, 49.792244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.228745, 45.128098, 49.602558>,  <46.134674, 44.938896, 49.488747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.228745, 45.128098, 49.602558>,  <46.385525, 45.443436, 49.792244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228745, 45.128098, 49.602558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587027, 0.182577, -0.788710,
		0.708359, -0.587516, 0.391220,
		-0.391952, -0.788347, -0.474218,
		46.111160, 44.891594, 49.460293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.885941, 45.117729, 49.361904>,  <46.385525, 45.443436, 49.792244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.885941, 45.117729, 49.361904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.551758, 44.960045, 49.208748>,  <46.351246, 44.865437, 49.116852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.551758, 44.960045, 49.208748>,  <46.885941, 45.117729, 49.361904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551758, 44.960045, 49.208748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496243, -0.241807, -0.833830,
		0.236116, -0.886639, 0.397643,
		-0.835459, -0.394208, -0.382894,
		46.301121, 44.841782, 49.093880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.052219, 44.453266, 49.072910>,  <46.885941, 45.117729, 49.361904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.052219, 44.453266, 49.072910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.724052, 44.574890, 48.879227>,  <46.527153, 44.647865, 48.763016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.724052, 44.574890, 48.879227>,  <47.052219, 44.453266, 49.072910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.724052, 44.574890, 48.879227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403941, -0.291128, -0.867223,
		-0.404655, -0.907079, 0.116024,
		-0.820418, 0.304059, -0.484213,
		46.477928, 44.666107, 48.733963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.120422, 43.995213, 48.484360>,  <47.052219, 44.453266, 49.072910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.120422, 43.995213, 48.484360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.830345, 44.251091, 48.382473>,  <46.656300, 44.404617, 48.321342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.830345, 44.251091, 48.382473>,  <47.120422, 43.995213, 48.484360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830345, 44.251091, 48.382473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317249, -0.017892, -0.948174,
		-0.611105, -0.768416, -0.189969,
		-0.725193, 0.639700, -0.254713,
		46.612789, 44.443001, 48.306061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613327, 43.690685, 47.976341>,  <47.120422, 43.995213, 48.484360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613327, 43.690685, 47.976341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.605019, 44.085648, 47.913597>,  <46.600033, 44.322624, 47.875950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.605019, 44.085648, 47.913597>,  <46.613327, 43.690685, 47.976341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605019, 44.085648, 47.913597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235256, -0.147663, -0.960651,
		-0.971712, -0.056852, -0.229226,
		-0.020767, 0.987402, -0.156861,
		46.598789, 44.381866, 47.866539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150711, 43.815910, 47.307911>,  <46.613327, 43.690685, 47.976341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150711, 43.815910, 47.307911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.384590, 44.134369, 47.370235>,  <46.524918, 44.325443, 47.407631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.384590, 44.134369, 47.370235>,  <46.150711, 43.815910, 47.307911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384590, 44.134369, 47.370235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406938, -0.121681, -0.905315,
		-0.701802, 0.592745, -0.395129,
		0.584701, 0.796145, 0.155815,
		46.560001, 44.373211, 47.416981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093021, 44.247837, 46.670708>,  <46.150711, 43.815910, 47.307911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093021, 44.247837, 46.670708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427406, 44.373169, 46.850925>,  <46.628036, 44.448368, 46.959057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427406, 44.373169, 46.850925>,  <46.093021, 44.247837, 46.670708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427406, 44.373169, 46.850925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462477, 0.039738, -0.885740,
		-0.295429, 0.948814, -0.111686,
		0.835964, 0.313326, 0.450545,
		46.678196, 44.467167, 46.986088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279442, 44.840912, 46.285446>,  <46.093021, 44.247837, 46.670708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279442, 44.840912, 46.285446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609482, 44.709038, 46.468971>,  <46.807507, 44.629913, 46.579086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609482, 44.709038, 46.468971>,  <46.279442, 44.840912, 46.285446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609482, 44.709038, 46.468971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521043, 0.130052, -0.843564,
		0.218445, 0.935089, 0.279089,
		0.825104, -0.329689, 0.458812,
		46.857014, 44.610130, 46.606613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874794, 45.246761, 46.140755>,  <46.279442, 44.840912, 46.285446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874794, 45.246761, 46.140755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.058495, 44.918877, 46.277668>,  <47.168713, 44.722145, 46.359818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.058495, 44.918877, 46.277668>,  <46.874794, 45.246761, 46.140755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058495, 44.918877, 46.277668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472048, -0.101215, -0.875743,
		0.752503, 0.563761, 0.340461,
		0.459250, -0.819713, 0.342287,
		47.196270, 44.672962, 46.380356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.579838, 45.360466, 45.961403>,  <46.874794, 45.246761, 46.140755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.579838, 45.360466, 45.961403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.517960, 44.968178, 46.009148>,  <47.480831, 44.732803, 46.037796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.517960, 44.968178, 46.009148>,  <47.579838, 45.360466, 45.961403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.517960, 44.968178, 46.009148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658539, -0.192426, -0.727529,
		0.736475, -0.033941, 0.675613,
		-0.154699, -0.980724, 0.119365,
		47.471550, 44.673962, 46.044956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.994675, 45.085148, 53.298103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079529, 44.694496, 53.311943>,  <44.130440, 44.460106, 53.320248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079529, 44.694496, 53.311943>,  <43.994675, 45.085148, 53.298103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079529, 44.694496, 53.311943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762685, 0.143322, -0.630690,
		0.610991, 0.160177, 0.775263,
		0.212135, -0.976628, 0.034596,
		44.143169, 44.401508, 53.322323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726147, 44.991611, 53.377998>,  <43.994675, 45.085148, 53.298103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726147, 44.991611, 53.377998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588242, 44.654457, 53.212746>,  <44.505501, 44.452164, 53.113594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588242, 44.654457, 53.212746>,  <44.726147, 44.991611, 53.377998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588242, 44.654457, 53.212746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648577, 0.104268, -0.753973,
		0.678593, -0.527886, 0.510732,
		-0.344759, -0.842890, -0.413131,
		44.484814, 44.401588, 53.088806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358059, 44.714237, 52.965336>,  <44.726147, 44.991611, 53.377998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358059, 44.714237, 52.965336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074661, 44.464851, 52.833073>,  <44.904625, 44.315220, 52.753716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074661, 44.464851, 52.833073>,  <45.358059, 44.714237, 52.965336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074661, 44.464851, 52.833073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575802, -0.239786, -0.781636,
		0.408035, -0.744175, 0.528878,
		-0.708491, -0.623464, -0.330657,
		44.862114, 44.277813, 52.733875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702530, 44.136280, 52.779667>,  <45.358059, 44.714237, 52.965336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702530, 44.136280, 52.779667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361992, 44.169243, 52.572433>,  <45.157669, 44.189022, 52.448093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361992, 44.169243, 52.572433>,  <45.702530, 44.136280, 52.779667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361992, 44.169243, 52.572433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495302, -0.199155, -0.845585,
		-0.172857, -0.976498, 0.128737,
		-0.851350, 0.082402, -0.518087,
		45.106586, 44.193966, 52.417007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738934, 43.570202, 52.296764>,  <45.702530, 44.136280, 52.779667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738934, 43.570202, 52.296764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503105, 43.865318, 52.165276>,  <45.361607, 44.042389, 52.086380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503105, 43.865318, 52.165276>,  <45.738934, 43.570202, 52.296764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503105, 43.865318, 52.165276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345154, -0.137824, -0.928371,
		-0.730254, -0.660805, -0.173396,
		-0.589574, 0.737795, -0.328726,
		45.326233, 44.086658, 52.066658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375950, 43.328163, 51.618603>,  <45.738934, 43.570202, 52.296764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375950, 43.328163, 51.618603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373749, 43.727798, 51.601707>,  <45.372429, 43.967579, 51.591572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373749, 43.727798, 51.601707>,  <45.375950, 43.328163, 51.618603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373749, 43.727798, 51.601707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196462, -0.040333, -0.979682,
		-0.980496, -0.013685, -0.196062,
		-0.005499, 0.999093, -0.042235,
		45.372101, 44.027527, 51.589039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049961, 43.441830, 51.016251>,  <45.375950, 43.328163, 51.618603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049961, 43.441830, 51.016251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200912, 43.804817, 51.090096>,  <45.291481, 44.022610, 51.134403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200912, 43.804817, 51.090096>,  <45.049961, 43.441830, 51.016251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200912, 43.804817, 51.090096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072198, 0.227573, -0.971081,
		-0.923241, 0.353134, 0.151399,
		0.377376, 0.907473, 0.184609,
		45.314125, 44.077061, 51.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602722, 43.979408, 50.737091>,  <45.049961, 43.441830, 51.016251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602722, 43.979408, 50.737091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970802, 44.135231, 50.752419>,  <45.191650, 44.228725, 50.761616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970802, 44.135231, 50.752419>,  <44.602722, 43.979408, 50.737091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970802, 44.135231, 50.752419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120138, 0.374237, -0.919518,
		-0.372549, 0.841540, 0.391175,
		0.920203, 0.389561, 0.038321,
		45.246864, 44.252098, 50.763916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576038, 44.660114, 50.314255>,  <44.602722, 43.979408, 50.737091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576038, 44.660114, 50.314255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965076, 44.576561, 50.355099>,  <45.198498, 44.526428, 50.379604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965076, 44.576561, 50.355099>,  <44.576038, 44.660114, 50.314255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965076, 44.576561, 50.355099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177900, 0.385795, -0.905270,
		0.149705, 0.898626, 0.412383,
		0.972594, -0.208887, 0.102110,
		45.256855, 44.513893, 50.385731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401642, 45.371937, 50.262810>,  <44.576038, 44.660114, 50.314255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401642, 45.371937, 50.262810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088272, 45.404427, 50.016350>,  <43.900249, 45.423920, 49.868473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088272, 45.404427, 50.016350>,  <44.401642, 45.371937, 50.262810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088272, 45.404427, 50.016350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580170, 0.259860, 0.771929,
		0.222815, 0.962224, -0.156456,
		-0.783426, 0.081227, -0.616154,
		43.853245, 45.428795, 49.831505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055321, 46.054729, 50.424946>,  <44.401642, 45.371937, 50.262810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055321, 46.054729, 50.424946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789036, 45.800461, 50.268616>,  <43.629265, 45.647900, 50.174816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789036, 45.800461, 50.268616>,  <44.055321, 46.054729, 50.424946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789036, 45.800461, 50.268616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579451, 0.110360, 0.807501,
		-0.470177, 0.764027, -0.441811,
		-0.665711, -0.635675, -0.390827,
		43.589321, 45.609756, 50.151367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506927, 46.303692, 50.713543>,  <44.055321, 46.054729, 50.424946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506927, 46.303692, 50.713543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388359, 45.943993, 50.584862>,  <43.317219, 45.728172, 50.507652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388359, 45.943993, 50.584862>,  <43.506927, 46.303692, 50.713543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388359, 45.943993, 50.584862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629184, -0.069546, 0.774139,
		-0.718515, 0.431877, -0.545177,
		-0.296418, -0.899247, -0.321700,
		43.299435, 45.674217, 50.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850529, 46.396324, 50.905041>,  <43.506927, 46.303692, 50.713543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850529, 46.396324, 50.905041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881111, 46.005234, 50.826862>,  <42.899460, 45.770576, 50.779957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881111, 46.005234, 50.826862>,  <42.850529, 46.396324, 50.905041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881111, 46.005234, 50.826862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752849, -0.185125, 0.631622,
		-0.653738, 0.098850, -0.750237,
		0.076452, -0.977731, -0.195443,
		42.904045, 45.711914, 50.768230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095451, 46.167847, 50.702419>,  <42.850529, 46.396324, 50.905041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095451, 46.167847, 50.702419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339661, 45.881073, 50.837040>,  <42.486187, 45.709007, 50.917812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339661, 45.881073, 50.837040>,  <42.095451, 46.167847, 50.702419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339661, 45.881073, 50.837040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607663, -0.151492, 0.779612,
		-0.507949, -0.680478, -0.528146,
		0.610519, -0.716938, 0.336551,
		42.522816, 45.665993, 50.938004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672367, 45.665581, 50.843571>,  <42.095451, 46.167847, 50.702419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672367, 45.665581, 50.843571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996624, 45.578354, 51.060940>,  <42.191177, 45.526016, 51.191360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996624, 45.578354, 51.060940>,  <41.672367, 45.665581, 50.843571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996624, 45.578354, 51.060940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579669, -0.167718, 0.797405,
		-0.082750, -0.961413, -0.262368,
		0.810640, -0.218072, 0.543423,
		42.239815, 45.512932, 51.223969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547001, 45.094727, 51.223713>,  <41.672367, 45.665581, 50.843571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547001, 45.094727, 51.223713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835678, 45.232346, 51.463978>,  <42.008884, 45.314919, 51.608135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835678, 45.232346, 51.463978>,  <41.547001, 45.094727, 51.223713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835678, 45.232346, 51.463978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548847, -0.244363, 0.799408,
		0.421813, -0.906597, 0.012475,
		0.721693, 0.344047, 0.600659,
		42.052185, 45.335560, 51.644176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533607, 44.684753, 51.862938>,  <41.547001, 45.094727, 51.223713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533607, 44.684753, 51.862938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756859, 44.998642, 51.970787>,  <41.890808, 45.186977, 52.035496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756859, 44.998642, 51.970787>,  <41.533607, 44.684753, 51.862938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756859, 44.998642, 51.970787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365885, -0.058889, 0.928795,
		0.744728, -0.617039, 0.254252,
		0.558129, 0.784726, 0.269622,
		41.924297, 45.234058, 52.051674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888569, 44.530029, 52.453506>,  <41.533607, 44.684753, 51.862938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888569, 44.530029, 52.453506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871563, 44.927681, 52.493294>,  <41.861359, 45.166271, 52.517166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871563, 44.927681, 52.493294>,  <41.888569, 44.530029, 52.453506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871563, 44.927681, 52.493294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418671, -0.108122, 0.901678,
		0.907142, -0.003311, 0.420811,
		-0.042513, 0.994132, 0.099468,
		41.858810, 45.225922, 52.523132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954891, 44.597008, 53.182865>,  <41.888569, 44.530029, 52.453506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954891, 44.597008, 53.182865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815483, 44.952209, 53.062878>,  <41.731838, 45.165333, 52.990887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815483, 44.952209, 53.062878>,  <41.954891, 44.597008, 53.182865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815483, 44.952209, 53.062878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397757, 0.149669, 0.905201,
		0.848720, 0.434792, 0.301048,
		-0.348517, 0.888006, -0.299968,
		41.710930, 45.218613, 52.972889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237579, 45.056805, 53.587864>,  <41.954891, 44.597008, 53.182865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237579, 45.056805, 53.587864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892097, 45.206444, 53.452766>,  <41.684811, 45.296227, 53.371708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892097, 45.206444, 53.452766>,  <42.237579, 45.056805, 53.587864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892097, 45.206444, 53.452766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358546, 0.014884, 0.933393,
		0.354210, 0.927269, 0.121278,
		-0.863701, 0.374101, -0.337741,
		41.632988, 45.318676, 53.351444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940865, 45.416798, 54.139782>,  <42.237579, 45.056805, 53.587864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940865, 45.416798, 54.139782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654903, 45.461937, 53.863762>,  <41.483326, 45.489021, 53.698151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654903, 45.461937, 53.863762>,  <41.940865, 45.416798, 54.139782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654903, 45.461937, 53.863762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664329, 0.198230, 0.720675,
		0.218119, 0.973637, -0.066745,
		-0.714907, 0.112853, -0.690053,
		41.440430, 45.495792, 53.656746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595764, 46.063519, 54.186394>,  <41.940865, 45.416798, 54.139782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595764, 46.063519, 54.186394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348206, 45.778336, 54.054535>,  <41.199669, 45.607227, 53.975418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348206, 45.778336, 54.054535>,  <41.595764, 46.063519, 54.186394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348206, 45.778336, 54.054535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587589, 0.141725, 0.796651,
		-0.521256, 0.686740, -0.506636,
		-0.618895, -0.712953, -0.329645,
		41.162537, 45.564449, 53.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998928, 46.223125, 54.488846>,  <41.595764, 46.063519, 54.186394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998928, 46.223125, 54.488846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867126, 45.883797, 54.323059>,  <40.788044, 45.680199, 54.223587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867126, 45.883797, 54.323059>,  <40.998928, 46.223125, 54.488846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867126, 45.883797, 54.323059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704269, -0.071536, 0.706320,
		-0.628834, 0.524629, -0.573875,
		-0.329503, -0.848320, -0.414464,
		40.768276, 45.629299, 54.198719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.343212, 38.022224, 53.165077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.419575, 38.409744, 53.228294>,  <41.465393, 38.642258, 53.266224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.419575, 38.409744, 53.228294>,  <41.343212, 38.022224, 53.165077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419575, 38.409744, 53.228294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023831, 0.156383, -0.987409,
		-0.981320, 0.192266, 0.006767,
		0.190903, 0.968802, 0.158043,
		41.476845, 38.700386, 53.275707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966496, 38.281471, 52.696201>,  <41.343212, 38.022224, 53.165077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966496, 38.281471, 52.696201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233974, 38.561493, 52.796413>,  <41.394463, 38.729507, 52.856541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233974, 38.561493, 52.796413>,  <40.966496, 38.281471, 52.696201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233974, 38.561493, 52.796413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230558, 0.125112, -0.964982,
		-0.706888, 0.703040, -0.077742,
		0.668695, 0.700058, 0.250531,
		41.434582, 38.771511, 52.871574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772976, 38.901730, 52.304729>,  <40.966496, 38.281471, 52.696201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772976, 38.901730, 52.304729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.153053, 38.953102, 52.418316>,  <41.381100, 38.983925, 52.486469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.153053, 38.953102, 52.418316>,  <40.772976, 38.901730, 52.304729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153053, 38.953102, 52.418316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258338, 0.185107, -0.948154,
		-0.174338, 0.974290, 0.142709,
		0.950194, 0.128432, 0.283967,
		41.438110, 38.991631, 52.503506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156185, 39.577568, 52.026031>,  <40.772976, 38.901730, 52.304729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156185, 39.577568, 52.026031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.438736, 39.302681, 52.093880>,  <41.608265, 39.137749, 52.134590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.438736, 39.302681, 52.093880>,  <41.156185, 39.577568, 52.026031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438736, 39.302681, 52.093880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331830, 0.109821, -0.936925,
		0.625239, 0.718107, 0.305612,
		0.706375, -0.687213, 0.169625,
		41.650650, 39.096516, 52.144768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731419, 39.931667, 51.817287>,  <41.156185, 39.577568, 52.026031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731419, 39.931667, 51.817287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.834274, 39.545387, 51.831703>,  <41.895988, 39.313618, 51.840351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.834274, 39.545387, 51.831703>,  <41.731419, 39.931667, 51.817287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834274, 39.545387, 51.831703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578837, 0.124052, -0.805952,
		0.773839, 0.228102, 0.590883,
		0.257140, -0.965702, 0.036038,
		41.911415, 39.255676, 51.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475960, 39.926655, 51.666840>,  <41.731419, 39.931667, 51.817287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475960, 39.926655, 51.666840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.348392, 39.553223, 51.601456>,  <42.271851, 39.329163, 51.562225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.348392, 39.553223, 51.601456>,  <42.475960, 39.926655, 51.666840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348392, 39.553223, 51.601456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514339, -0.025612, -0.857204,
		0.796081, -0.357456, 0.488345,
		-0.318920, -0.933579, -0.163464,
		42.252716, 39.273148, 51.552418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110138, 39.517017, 51.499554>,  <42.475960, 39.926655, 51.666840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110138, 39.517017, 51.499554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.799011, 39.313713, 51.351677>,  <42.612335, 39.191730, 51.262951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.799011, 39.313713, 51.351677>,  <43.110138, 39.517017, 51.499554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799011, 39.313713, 51.351677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510937, -0.168825, -0.842877,
		0.365987, -0.844494, 0.391003,
		-0.777816, -0.508260, -0.369696,
		42.565666, 39.161236, 51.240768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458508, 38.972473, 51.129135>,  <43.110138, 39.517017, 51.499554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458508, 38.972473, 51.129135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.097633, 38.971443, 50.956600>,  <42.881107, 38.970825, 50.853081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.097633, 38.971443, 50.956600>,  <43.458508, 38.972473, 51.129135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097633, 38.971443, 50.956600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427100, 0.134610, -0.894129,
		0.060357, -0.990895, -0.120347,
		-0.902188, -0.002566, -0.431336,
		42.826977, 38.970673, 50.827198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543259, 38.561420, 50.566566>,  <43.458508, 38.972473, 51.129135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543259, 38.561420, 50.566566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.220135, 38.783867, 50.488411>,  <43.026260, 38.917336, 50.441517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.220135, 38.783867, 50.488411>,  <43.543259, 38.561420, 50.566566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220135, 38.783867, 50.488411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332542, 0.156275, -0.930051,
		-0.486684, -0.816278, -0.311173,
		-0.807809, 0.556119, -0.195390,
		42.977791, 38.950703, 50.429794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464329, 38.300247, 49.879715>,  <43.543259, 38.561420, 50.566566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464329, 38.300247, 49.879715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.248386, 38.633102, 49.930458>,  <43.118820, 38.832817, 49.960903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.248386, 38.633102, 49.930458>,  <43.464329, 38.300247, 49.879715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248386, 38.633102, 49.930458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220415, 0.285194, -0.932781,
		-0.812384, -0.475610, -0.337381,
		-0.539860, 0.832141, 0.126855,
		43.086430, 38.882744, 49.968513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006222, 38.368191, 49.236805>,  <43.464329, 38.300247, 49.879715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006222, 38.368191, 49.236805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.085060, 38.715370, 49.419151>,  <43.132362, 38.923679, 49.528561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.085060, 38.715370, 49.419151>,  <43.006222, 38.368191, 49.236805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085060, 38.715370, 49.419151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294585, 0.391068, -0.871943,
		-0.935079, 0.306148, -0.178607,
		0.197096, 0.867951, 0.455866,
		43.144188, 38.975754, 49.555912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843933, 38.851868, 48.735989>,  <43.006222, 38.368191, 49.236805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843933, 38.851868, 48.735989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.055901, 39.064758, 49.000084>,  <43.183083, 39.192493, 49.158543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.055901, 39.064758, 49.000084>,  <42.843933, 38.851868, 48.735989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055901, 39.064758, 49.000084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315016, 0.599299, -0.735938,
		-0.787366, 0.597978, 0.149923,
		0.529923, 0.532225, 0.660241,
		43.214878, 39.224426, 49.198154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561611, 39.601444, 48.661045>,  <42.843933, 38.851868, 48.735989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561611, 39.601444, 48.661045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.934673, 39.557617, 48.798538>,  <43.158508, 39.531319, 48.881035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.934673, 39.557617, 48.798538>,  <42.561611, 39.601444, 48.661045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934673, 39.557617, 48.798538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354723, 0.452272, -0.818304,
		-0.065798, 0.885124, 0.460680,
		0.932653, -0.109571, 0.343733,
		43.214470, 39.524746, 48.901657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907589, 40.204056, 48.490368>,  <42.561611, 39.601444, 48.661045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907589, 40.204056, 48.490368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.241840, 39.997208, 48.564457>,  <43.442390, 39.873096, 48.608910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.241840, 39.997208, 48.564457>,  <42.907589, 40.204056, 48.490368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241840, 39.997208, 48.564457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441713, 0.432177, -0.786202,
		0.326516, 0.738787, 0.589560,
		0.835630, -0.517123, 0.185219,
		43.492531, 39.842072, 48.620022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768822, 40.998074, 48.539413>,  <42.907589, 40.204056, 48.490368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768822, 40.998074, 48.539413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.467415, 41.166756, 48.337669>,  <42.286572, 41.267963, 48.216625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.467415, 41.166756, 48.337669>,  <42.768822, 40.998074, 48.539413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467415, 41.166756, 48.337669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537125, 0.047472, 0.842166,
		0.379088, 0.905490, 0.190737,
		-0.753518, 0.421704, -0.504357,
		42.241360, 41.293266, 48.186363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574322, 41.703018, 48.943501>,  <42.768822, 40.998074, 48.539413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574322, 41.703018, 48.943501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.280815, 41.528183, 48.735451>,  <42.104710, 41.423283, 48.610619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.280815, 41.528183, 48.735451>,  <42.574322, 41.703018, 48.943501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280815, 41.528183, 48.735451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568548, -0.024062, 0.822298,
		-0.371933, 0.899096, -0.230851,
		-0.733770, -0.437089, -0.520129,
		42.060684, 41.397057, 48.579411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938782, 42.055412, 49.072044>,  <42.574322, 41.703018, 48.943501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938782, 42.055412, 49.072044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778419, 41.707069, 48.958282>,  <41.682201, 41.498066, 48.890026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778419, 41.707069, 48.958282>,  <41.938782, 42.055412, 49.072044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778419, 41.707069, 48.958282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596647, 0.012627, 0.802404,
		-0.695186, 0.491378, -0.524656,
		-0.400909, -0.870855, -0.284401,
		41.658146, 41.445812, 48.872963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386677, 42.056503, 49.455326>,  <41.938782, 42.055412, 49.072044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386677, 42.056503, 49.455326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.356392, 41.689362, 49.299477>,  <41.338223, 41.469074, 49.205967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.356392, 41.689362, 49.299477>,  <41.386677, 42.056503, 49.455326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356392, 41.689362, 49.299477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530752, -0.293695, 0.795013,
		-0.844139, 0.266985, -0.464918,
		-0.075713, -0.917857, -0.389622,
		41.333679, 41.414005, 49.182590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644058, 42.016773, 49.389297>,  <41.386677, 42.056503, 49.455326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644058, 42.016773, 49.389297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.827972, 41.662468, 49.414669>,  <40.938320, 41.449886, 49.429890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.827972, 41.662468, 49.414669>,  <40.644058, 42.016773, 49.389297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827972, 41.662468, 49.414669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640512, -0.281315, 0.714567,
		-0.615093, -0.369174, -0.696686,
		0.459788, -0.885761, 0.063426,
		40.965908, 41.396740, 49.433697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148903, 41.527195, 49.306049>,  <40.644058, 42.016773, 49.389297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148903, 41.527195, 49.306049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.446205, 41.353722, 49.509808>,  <40.624588, 41.249638, 49.632065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.446205, 41.353722, 49.509808>,  <40.148903, 41.527195, 49.306049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446205, 41.353722, 49.509808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644629, -0.260599, 0.718709,
		-0.178940, -0.862560, -0.473255,
		0.743259, -0.433680, 0.509399,
		40.669182, 41.223618, 49.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860043, 40.921143, 49.653748>,  <40.148903, 41.527195, 49.306049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860043, 40.921143, 49.653748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.199455, 41.005013, 49.848080>,  <40.403103, 41.055336, 49.964680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.199455, 41.005013, 49.848080>,  <39.860043, 40.921143, 49.653748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199455, 41.005013, 49.848080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432105, -0.255382, 0.864908,
		0.305427, -0.943830, -0.126095,
		0.848528, 0.209680, 0.485834,
		40.454014, 41.067917, 49.993832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972542, 40.403389, 50.037285>,  <39.860043, 40.921143, 49.653748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972542, 40.403389, 50.037285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.197083, 40.685577, 50.210350>,  <40.331806, 40.854889, 50.314190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.197083, 40.685577, 50.210350>,  <39.972542, 40.403389, 50.037285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197083, 40.685577, 50.210350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428387, -0.199616, 0.881271,
		0.708077, -0.680049, 0.190160,
		0.561348, 0.705469, 0.432668,
		40.365486, 40.897217, 50.340149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203846, 40.133526, 50.639500>,  <39.972542, 40.403389, 50.037285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203846, 40.133526, 50.639500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.228088, 40.527283, 50.705582>,  <40.242634, 40.763538, 50.745232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.228088, 40.527283, 50.705582>,  <40.203846, 40.133526, 50.639500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228088, 40.527283, 50.705582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467637, -0.118219, 0.875979,
		0.881841, -0.130341, 0.453176,
		0.060602, 0.984396, 0.165203,
		40.246269, 40.822601, 50.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311989, 40.114498, 51.316002>,  <40.203846, 40.133526, 50.639500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311989, 40.114498, 51.316002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235397, 40.506012, 51.286819>,  <40.189442, 40.740921, 51.269310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235397, 40.506012, 51.286819>,  <40.311989, 40.114498, 51.316002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235397, 40.506012, 51.286819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301122, 0.012163, 0.953508,
		0.934164, 0.204541, 0.292405,
		-0.191476, 0.978782, -0.072954,
		40.177956, 40.799648, 51.264935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610077, 40.399853, 51.866150>,  <40.311989, 40.114498, 51.316002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610077, 40.399853, 51.866150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337410, 40.680946, 51.784660>,  <40.173809, 40.849602, 51.735767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337410, 40.680946, 51.784660>,  <40.610077, 40.399853, 51.866150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337410, 40.680946, 51.784660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203575, 0.085276, 0.975338,
		0.702774, 0.706326, 0.084929,
		-0.681664, 0.702732, -0.203720,
		40.132912, 40.891766, 51.723545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667706, 40.873573, 52.374233>,  <40.610077, 40.399853, 51.866150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667706, 40.873573, 52.374233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310745, 40.965591, 52.218948>,  <40.096569, 41.020802, 52.125778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310745, 40.965591, 52.218948>,  <40.667706, 40.873573, 52.374233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310745, 40.965591, 52.218948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369435, 0.121549, 0.921273,
		0.259119, 0.965560, -0.023484,
		-0.892398, 0.230043, -0.388208,
		40.043026, 41.034603, 52.102486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419518, 41.356380, 52.862030>,  <40.667706, 40.873573, 52.374233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419518, 41.356380, 52.862030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.101700, 41.211182, 52.667328>,  <39.911007, 41.124062, 52.550507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.101700, 41.211182, 52.667328>,  <40.419518, 41.356380, 52.862030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101700, 41.211182, 52.667328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554669, 0.107725, 0.825068,
		-0.247060, 0.925543, -0.286934,
		-0.794546, -0.362995, -0.486755,
		39.863335, 41.102283, 52.521301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880550, 41.848873, 53.035126>,  <40.419518, 41.356380, 52.862030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880550, 41.848873, 53.035126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700047, 41.514290, 52.910736>,  <39.591743, 41.313541, 52.836102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700047, 41.514290, 52.910736>,  <39.880550, 41.848873, 53.035126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700047, 41.514290, 52.910736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482968, -0.064114, 0.873288,
		-0.750403, 0.544273, -0.375048,
		-0.451261, -0.836454, -0.310978,
		39.564667, 41.263355, 52.817444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427475, 42.259525, 52.495037>,  <39.880550, 41.848873, 53.035126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427475, 42.259525, 52.495037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253006, 42.617393, 52.456432>,  <39.148327, 42.832115, 52.433270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253006, 42.617393, 52.456432>,  <39.427475, 42.259525, 52.495037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253006, 42.617393, 52.456432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276202, 0.031033, -0.960599,
		-0.856428, -0.445640, -0.260646,
		-0.436169, 0.894674, -0.096509,
		39.122154, 42.885796, 52.427479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928051, 42.298100, 51.899929>,  <39.427475, 42.259525, 52.495037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928051, 42.298100, 51.899929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068390, 42.667015, 51.964779>,  <39.152592, 42.888367, 52.003689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068390, 42.667015, 51.964779>,  <38.928051, 42.298100, 51.899929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068390, 42.667015, 51.964779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236144, 0.080396, -0.968387,
		-0.906170, 0.378037, -0.189587,
		0.350844, 0.922293, 0.162123,
		39.173645, 42.943703, 52.013416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679012, 42.700649, 51.307922>,  <38.928051, 42.298100, 51.899929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679012, 42.700649, 51.307922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946407, 42.953026, 51.465424>,  <39.106846, 43.104450, 51.559925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946407, 42.953026, 51.465424>,  <38.679012, 42.700649, 51.307922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946407, 42.953026, 51.465424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265968, 0.291614, -0.918816,
		-0.694540, 0.718942, 0.027131,
		0.668487, 0.630938, 0.393753,
		39.146954, 43.142307, 51.583549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663651, 43.319302, 50.867813>,  <38.679012, 42.700649, 51.307922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663651, 43.319302, 50.867813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010704, 43.360939, 51.062286>,  <39.218937, 43.385921, 51.178970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010704, 43.360939, 51.062286>,  <38.663651, 43.319302, 50.867813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010704, 43.360939, 51.062286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437504, 0.304724, -0.846010,
		-0.236214, 0.946736, 0.218849,
		0.867637, 0.104092, 0.486181,
		39.270996, 43.392166, 51.208141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970192, 43.956875, 50.626911>,  <38.663651, 43.319302, 50.867813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970192, 43.956875, 50.626911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283409, 43.781563, 50.803436>,  <39.471340, 43.676376, 50.909351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283409, 43.781563, 50.803436>,  <38.970192, 43.956875, 50.626911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283409, 43.781563, 50.803436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564584, 0.203202, -0.799971,
		0.260938, 0.875567, 0.406563,
		0.783043, -0.438282, 0.441308,
		39.518322, 43.650078, 50.935829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479271, 44.512215, 50.588783>,  <38.970192, 43.956875, 50.626911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479271, 44.512215, 50.588783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.657166, 44.154831, 50.613869>,  <39.763901, 43.940399, 50.628922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.657166, 44.154831, 50.613869>,  <39.479271, 44.512215, 50.588783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657166, 44.154831, 50.613869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552595, 0.218606, -0.804270,
		0.704875, 0.392344, 0.590946,
		0.444735, -0.893464, 0.062717,
		39.790585, 43.886791, 50.632683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174889, 44.661316, 50.526203>,  <39.479271, 44.512215, 50.588783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174889, 44.661316, 50.526203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.128197, 44.276115, 50.429035>,  <40.100182, 44.044994, 50.370735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.128197, 44.276115, 50.429035>,  <40.174889, 44.661316, 50.526203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128197, 44.276115, 50.429035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424107, 0.172836, -0.888966,
		0.898057, -0.206795, 0.388238,
		-0.116732, -0.962997, -0.242920,
		40.093178, 43.987217, 50.356159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869942, 44.471832, 50.391853>,  <40.174889, 44.661316, 50.526203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869942, 44.471832, 50.391853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.635284, 44.189087, 50.233772>,  <40.494488, 44.019440, 50.138924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.635284, 44.189087, 50.233772>,  <40.869942, 44.471832, 50.391853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635284, 44.189087, 50.233772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327103, 0.239603, -0.914109,
		0.740845, -0.665530, 0.090656,
		-0.586645, -0.706866, -0.395205,
		40.459290, 43.977028, 50.115211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315331, 43.980141, 50.022499>,  <40.869942, 44.471832, 50.391853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315331, 43.980141, 50.022499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.941231, 43.981483, 49.880909>,  <40.716770, 43.982288, 49.795956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.941231, 43.981483, 49.880909>,  <41.315331, 43.980141, 50.022499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941231, 43.981483, 49.880909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353468, 0.063190, -0.933310,
		0.019226, -0.997996, -0.060288,
		-0.935249, 0.003366, -0.353975,
		40.660656, 43.982491, 49.774715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087208, 43.388020, 49.655064>,  <41.315331, 43.980141, 50.022499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087208, 43.388020, 49.655064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872356, 43.700035, 49.526672>,  <40.743446, 43.887245, 49.449638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872356, 43.700035, 49.526672>,  <41.087208, 43.388020, 49.655064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872356, 43.700035, 49.526672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331948, -0.154353, -0.930583,
		-0.775440, -0.606389, -0.176027,
		-0.537125, 0.780043, -0.320981,
		40.711220, 43.934048, 49.430378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878777, 43.213367, 49.023933>,  <41.087208, 43.388020, 49.655064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878777, 43.213367, 49.023933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.816307, 43.608444, 49.020592>,  <40.778824, 43.845490, 49.018585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.816307, 43.608444, 49.020592>,  <40.878777, 43.213367, 49.023933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816307, 43.608444, 49.020592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273675, 0.035145, -0.961180,
		-0.949058, -0.152398, -0.275796,
		-0.156175, 0.987694, -0.008353,
		40.769455, 43.904751, 49.018085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529537, 43.383900, 48.392517>,  <40.878777, 43.213367, 49.023933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529537, 43.383900, 48.392517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.709911, 43.722740, 48.505001>,  <40.818134, 43.926044, 48.572491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.709911, 43.722740, 48.505001>,  <40.529537, 43.383900, 48.392517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709911, 43.722740, 48.505001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334623, 0.131635, -0.933113,
		-0.827459, 0.514870, -0.224102,
		0.450932, 0.847102, 0.281209,
		40.845192, 43.976871, 48.589363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477257, 43.721180, 47.834229>,  <40.529537, 43.383900, 48.392517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477257, 43.721180, 47.834229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.730804, 43.950493, 48.041904>,  <40.882935, 44.088081, 48.166512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.730804, 43.950493, 48.041904>,  <40.477257, 43.721180, 47.834229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730804, 43.950493, 48.041904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475716, 0.240306, -0.846136,
		-0.609836, 0.783329, -0.120394,
		0.633872, 0.573278, 0.519190,
		40.920967, 44.122475, 48.197662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290928, 44.379429, 47.728153>,  <40.477257, 43.721180, 47.834229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290928, 44.379429, 47.728153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.680984, 44.386848, 47.816479>,  <40.915016, 44.391300, 47.869476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.680984, 44.386848, 47.816479>,  <40.290928, 44.379429, 47.728153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680984, 44.386848, 47.816479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200252, 0.352903, -0.913980,
		-0.094884, 0.935476, 0.340414,
		0.975139, 0.018554, 0.220816,
		40.973526, 44.392414, 47.882725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.184322, 46.237366, 54.305035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.287048, 45.851967, 54.335297>,  <40.348682, 45.620728, 54.353455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.287048, 45.851967, 54.335297>,  <40.184322, 46.237366, 54.305035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287048, 45.851967, 54.335297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662752, -0.118595, 0.739389,
		-0.703426, -0.240022, -0.669015,
		0.256811, -0.963496, 0.075652,
		40.364090, 45.562920, 54.357994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556992, 45.821529, 54.383739>,  <40.184322, 46.237366, 54.305035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556992, 45.821529, 54.383739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.849720, 45.598885, 54.541027>,  <40.025356, 45.465298, 54.635399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.849720, 45.598885, 54.541027>,  <39.556992, 45.821529, 54.383739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849720, 45.598885, 54.541027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582001, -0.210266, 0.785534,
		-0.354561, -0.803721, -0.477828,
		0.731821, -0.556616, 0.393214,
		40.069267, 45.431900, 54.658993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257603, 45.129566, 54.556244>,  <39.556992, 45.821529, 54.383739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257603, 45.129566, 54.556244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589878, 45.175156, 54.774223>,  <39.789242, 45.202507, 54.905010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589878, 45.175156, 54.774223>,  <39.257603, 45.129566, 54.556244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589878, 45.175156, 54.774223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537984, -0.087593, 0.838392,
		0.143287, -0.989615, -0.011447,
		0.830687, 0.113972, 0.544948,
		39.839085, 45.209347, 54.937706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342705, 44.506050, 55.023727>,  <39.257603, 45.129566, 54.556244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342705, 44.506050, 55.023727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548065, 44.806854, 55.189083>,  <39.671284, 44.987339, 55.288296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548065, 44.806854, 55.189083>,  <39.342705, 44.506050, 55.023727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548065, 44.806854, 55.189083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305918, -0.289692, 0.906914,
		0.801767, -0.592078, 0.081325,
		0.513405, 0.752013, 0.413392,
		39.702087, 45.032459, 55.313099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709301, 44.247921, 55.699112>,  <39.342705, 44.506050, 55.023727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709301, 44.247921, 55.699112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710785, 44.647903, 55.702736>,  <39.711678, 44.887894, 55.704910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710785, 44.647903, 55.702736>,  <39.709301, 44.247921, 55.699112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710785, 44.647903, 55.702736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037687, -0.008916, 0.999250,
		0.999283, -0.004051, 0.037652,
		0.003712, 0.999952, 0.009062,
		39.711899, 44.947887, 55.705456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108269, 44.406757, 56.273903>,  <39.709301, 44.247921, 55.699112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108269, 44.406757, 56.273903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899529, 44.743042, 56.216110>,  <39.774284, 44.944813, 56.181435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899529, 44.743042, 56.216110>,  <40.108269, 44.406757, 56.273903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899529, 44.743042, 56.216110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091733, 0.113080, 0.989342,
		0.848092, 0.529539, 0.018111,
		-0.521847, 0.840715, -0.144478,
		39.742973, 44.995255, 56.172768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272148, 44.726192, 56.854317>,  <40.108269, 44.406757, 56.273903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272148, 44.726192, 56.854317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.977829, 44.957787, 56.713814>,  <39.801239, 45.096745, 56.629513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.977829, 44.957787, 56.713814>,  <40.272148, 44.726192, 56.854317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977829, 44.957787, 56.713814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248212, 0.252013, 0.935350,
		0.630077, 0.775411, -0.041718,
		-0.735794, 0.578988, -0.351254,
		39.757092, 45.131485, 56.608437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250664, 45.378094, 57.288124>,  <40.272148, 44.726192, 56.854317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250664, 45.378094, 57.288124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.889938, 45.308846, 57.129745>,  <39.673504, 45.267296, 57.034718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.889938, 45.308846, 57.129745>,  <40.250664, 45.378094, 57.288124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889938, 45.308846, 57.129745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407565, 0.036182, 0.912459,
		-0.143635, 0.984237, -0.103185,
		-0.901809, -0.173116, -0.395944,
		39.619396, 45.256912, 57.010963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741249, 45.834835, 57.609207>,  <40.250664, 45.378094, 57.288124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741249, 45.834835, 57.609207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517971, 45.540138, 57.456562>,  <39.384003, 45.363319, 57.364975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517971, 45.540138, 57.456562>,  <39.741249, 45.834835, 57.609207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517971, 45.540138, 57.456562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496162, -0.072239, 0.865219,
		-0.665009, 0.672307, -0.325218,
		-0.558200, -0.736740, -0.381613,
		39.350510, 45.319115, 57.342079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079967, 46.002121, 57.871559>,  <39.741249, 45.834835, 57.609207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079967, 46.002121, 57.871559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077003, 45.617607, 57.761375>,  <39.075226, 45.386898, 57.695263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077003, 45.617607, 57.761375>,  <39.079967, 46.002121, 57.871559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077003, 45.617607, 57.761375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692303, -0.193846, 0.695083,
		-0.721569, 0.195855, -0.664062,
		-0.007409, -0.961283, -0.275464,
		39.074780, 45.329224, 57.678738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446548, 45.801502, 58.020855>,  <39.079967, 46.002121, 57.871559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446548, 45.801502, 58.020855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625687, 45.446190, 57.980080>,  <38.733170, 45.233002, 57.955616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625687, 45.446190, 57.980080>,  <38.446548, 45.801502, 58.020855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625687, 45.446190, 57.980080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703244, -0.420358, 0.573365,
		-0.552159, -0.185093, -0.812933,
		0.447849, -0.888279, -0.101939,
		38.760040, 45.179707, 57.949497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887741, 45.355255, 57.715340>,  <38.446548, 45.801502, 58.020855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887741, 45.355255, 57.715340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.170185, 45.165054, 57.925217>,  <38.339653, 45.050934, 58.051144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.170185, 45.165054, 57.925217>,  <37.887741, 45.355255, 57.715340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170185, 45.165054, 57.925217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676680, -0.234856, 0.697816,
		-0.208589, -0.847784, -0.487600,
		0.706113, -0.475505, 0.524690,
		38.382019, 45.022404, 58.082623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709656, 44.692150, 57.932102>,  <37.887741, 45.355255, 57.715340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709656, 44.692150, 57.932102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960197, 44.835854, 58.208832>,  <38.110523, 44.922077, 58.374870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960197, 44.835854, 58.208832>,  <37.709656, 44.692150, 57.932102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960197, 44.835854, 58.208832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679567, -0.183174, 0.710377,
		0.381934, -0.915084, 0.129410,
		0.626350, 0.359260, 0.691822,
		38.148102, 44.943630, 58.416378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712093, 44.261654, 58.603592>,  <37.709656, 44.692150, 57.932102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712093, 44.261654, 58.603592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821171, 44.639450, 58.676884>,  <37.886616, 44.866127, 58.720860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821171, 44.639450, 58.676884>,  <37.712093, 44.261654, 58.603592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821171, 44.639450, 58.676884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871938, 0.162118, 0.461999,
		0.406650, -0.285745, 0.867747,
		0.272691, 0.944493, 0.183227,
		37.902977, 44.922798, 58.731853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746433, 43.717503, 58.055462>,  <37.712093, 44.261654, 58.603592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746433, 43.717503, 58.055462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580418, 43.361275, 57.981026>,  <37.480808, 43.147537, 57.936363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580418, 43.361275, 57.981026>,  <37.746433, 43.717503, 58.055462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580418, 43.361275, 57.981026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308344, 0.054741, -0.949699,
		0.855958, -0.451544, 0.251882,
		-0.415042, -0.890568, -0.186087,
		37.455906, 43.094105, 57.925201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257530, 43.369965, 57.625122>,  <37.746433, 43.717503, 58.055462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257530, 43.369965, 57.625122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908546, 43.178314, 57.586670>,  <37.699154, 43.063324, 57.563599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908546, 43.178314, 57.586670>,  <38.257530, 43.369965, 57.625122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908546, 43.178314, 57.586670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119227, -0.017928, -0.992705,
		0.473910, -0.877561, 0.072767,
		-0.872464, -0.479129, -0.096133,
		37.646809, 43.034576, 57.557831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357262, 42.740520, 57.332134>,  <38.257530, 43.369965, 57.625122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357262, 42.740520, 57.332134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.975971, 42.833176, 57.254459>,  <37.747196, 42.888767, 57.207855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.975971, 42.833176, 57.254459>,  <38.357262, 42.740520, 57.332134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975971, 42.833176, 57.254459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176483, -0.095051, -0.979704,
		-0.245394, -0.968148, 0.049724,
		-0.953224, 0.231638, -0.194187,
		37.690002, 42.902668, 57.196205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124416, 42.225323, 56.876633>,  <38.357262, 42.740520, 57.332134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124416, 42.225323, 56.876633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894043, 42.543770, 56.802349>,  <37.755817, 42.734840, 56.757778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894043, 42.543770, 56.802349>,  <38.124416, 42.225323, 56.876633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894043, 42.543770, 56.802349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171472, -0.104473, -0.979634,
		-0.799308, -0.596053, -0.076342,
		-0.575938, 0.796120, -0.185713,
		37.721260, 42.782604, 56.746635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698219, 41.990849, 56.315685>,  <38.124416, 42.225323, 56.876633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698219, 41.990849, 56.315685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672073, 42.389992, 56.314095>,  <37.656387, 42.629478, 56.313141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672073, 42.389992, 56.314095>,  <37.698219, 41.990849, 56.315685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672073, 42.389992, 56.314095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067218, 0.000429, -0.997738,
		-0.995595, -0.065483, -0.067101,
		-0.065364, 0.997854, -0.003975,
		37.652466, 42.689346, 56.312901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259918, 42.113583, 55.760689>,  <37.698219, 41.990849, 56.315685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259918, 42.113583, 55.760689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385269, 42.490814, 55.805237>,  <37.460480, 42.717152, 55.831966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385269, 42.490814, 55.805237>,  <37.259918, 42.113583, 55.760689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385269, 42.490814, 55.805237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216484, 0.043242, -0.975328,
		-0.924624, 0.329756, -0.190610,
		0.313378, 0.943076, 0.111369,
		37.479282, 42.773735, 55.838646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070946, 42.468670, 55.094696>,  <37.259918, 42.113583, 55.760689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070946, 42.468670, 55.094696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362617, 42.699928, 55.241142>,  <37.537621, 42.838684, 55.329010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362617, 42.699928, 55.241142>,  <37.070946, 42.468670, 55.094696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362617, 42.699928, 55.241142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302691, 0.207331, -0.930265,
		-0.613736, 0.789152, -0.023818,
		0.729182, 0.578146, 0.366115,
		37.581371, 42.873371, 55.350975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018585, 42.981079, 54.679897>,  <37.070946, 42.468670, 55.094696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018585, 42.981079, 54.679897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383579, 43.024376, 54.837708>,  <37.602577, 43.050354, 54.932396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383579, 43.024376, 54.837708>,  <37.018585, 42.981079, 54.679897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383579, 43.024376, 54.837708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376863, 0.152856, -0.913570,
		-0.159196, 0.982302, 0.098685,
		0.912486, 0.108246, 0.394528,
		37.657326, 43.056850, 54.956066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317410, 43.449078, 54.158028>,  <37.018585, 42.981079, 54.679897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317410, 43.449078, 54.158028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648930, 43.354134, 54.360710>,  <37.847843, 43.297169, 54.482319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648930, 43.354134, 54.360710>,  <37.317410, 43.449078, 54.158028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648930, 43.354134, 54.360710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537502, 0.086052, -0.838860,
		0.155505, 0.967604, 0.198899,
		0.828800, -0.237355, 0.506708,
		37.897572, 43.282928, 54.512722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860550, 43.959332, 54.040512>,  <37.317410, 43.449078, 54.158028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860550, 43.959332, 54.040512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.014923, 43.606735, 54.149345>,  <38.107548, 43.395176, 54.214645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.014923, 43.606735, 54.149345>,  <37.860550, 43.959332, 54.040512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014923, 43.606735, 54.149345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417289, -0.096229, -0.903665,
		0.822757, 0.462286, 0.330700,
		0.385929, -0.881494, 0.272080,
		38.130703, 43.342285, 54.230968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616291, 44.058723, 54.071598>,  <37.860550, 43.959332, 54.040512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616291, 44.058723, 54.071598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.504417, 43.676605, 54.033249>,  <38.437294, 43.447334, 54.010239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.504417, 43.676605, 54.033249>,  <38.616291, 44.058723, 54.071598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504417, 43.676605, 54.033249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527347, -0.069404, -0.846811,
		0.802298, -0.287399, 0.523182,
		-0.279683, -0.955293, -0.095876,
		38.420513, 43.390018, 54.004486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227097, 43.778503, 53.851124>,  <38.616291, 44.058723, 54.071598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227097, 43.778503, 53.851124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938042, 43.514465, 53.769081>,  <38.764610, 43.356041, 53.719856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938042, 43.514465, 53.769081>,  <39.227097, 43.778503, 53.851124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938042, 43.514465, 53.769081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419013, -0.182324, -0.889487,
		0.549750, -0.728719, 0.408343,
		-0.722636, -0.660097, -0.205110,
		38.721252, 43.316437, 53.707546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582493, 43.187351, 53.589855>,  <39.227097, 43.778503, 53.851124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582493, 43.187351, 53.589855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.218536, 43.179321, 53.424110>,  <39.000164, 43.174503, 53.324665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.218536, 43.179321, 53.424110>,  <39.582493, 43.187351, 53.589855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218536, 43.179321, 53.424110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411614, -0.168134, -0.895715,
		-0.051686, -0.985560, 0.161248,
		-0.909891, -0.020076, -0.414360,
		38.945568, 43.173298, 53.299801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625305, 42.598999, 53.113979>,  <39.582493, 43.187351, 53.589855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625305, 42.598999, 53.113979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301552, 42.800911, 52.993919>,  <39.107300, 42.922058, 52.921883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301552, 42.800911, 52.993919>,  <39.625305, 42.598999, 53.113979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301552, 42.800911, 52.993919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330179, -0.031539, -0.943391,
		-0.485671, -0.862672, -0.141140,
		-0.809386, 0.504779, -0.300154,
		39.058735, 42.952343, 52.903873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195869, 41.895260, 53.241131>,  <39.625305, 42.598999, 53.113979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195869, 41.895260, 53.241131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247871, 41.504166, 53.175243>,  <39.279072, 41.269508, 53.135712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247871, 41.504166, 53.175243>,  <39.195869, 41.895260, 53.241131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247871, 41.504166, 53.175243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321266, -0.198709, 0.925907,
		-0.938023, -0.067455, -0.339946,
		0.130008, -0.977734, -0.164723,
		39.286873, 41.210846, 53.125828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658352, 41.566208, 53.529400>,  <39.195869, 41.895260, 53.241131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658352, 41.566208, 53.529400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929138, 41.271805, 53.531094>,  <39.091610, 41.095165, 53.532108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929138, 41.271805, 53.531094>,  <38.658352, 41.566208, 53.529400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929138, 41.271805, 53.531094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316944, -0.286320, 0.904194,
		-0.664279, -0.613449, -0.427100,
		0.676964, -0.736004, 0.004232,
		39.132229, 41.051003, 53.532364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331455, 41.025051, 53.811569>,  <38.658352, 41.566208, 53.529400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331455, 41.025051, 53.811569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711040, 40.926430, 53.890240>,  <38.938793, 40.867256, 53.937443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711040, 40.926430, 53.890240>,  <38.331455, 41.025051, 53.811569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711040, 40.926430, 53.890240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286147, -0.410824, 0.865646,
		-0.132626, -0.877745, -0.460407,
		0.948963, -0.246551, 0.196678,
		38.995728, 40.852463, 53.949242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306664, 40.352886, 54.025036>,  <38.331455, 41.025051, 53.811569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306664, 40.352886, 54.025036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.654488, 40.471924, 54.182671>,  <38.863182, 40.543346, 54.277252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.654488, 40.471924, 54.182671>,  <38.306664, 40.352886, 54.025036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654488, 40.471924, 54.182671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277597, -0.365443, 0.888477,
		0.408421, -0.881981, -0.235163,
		0.869558, 0.297592, 0.394090,
		38.915356, 40.561203, 54.300900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452160, 39.812466, 54.437958>,  <38.306664, 40.352886, 54.025036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452160, 39.812466, 54.437958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.701183, 40.097267, 54.567860>,  <38.850597, 40.268150, 54.645802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.701183, 40.097267, 54.567860>,  <38.452160, 39.812466, 54.437958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701183, 40.097267, 54.567860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061663, -0.458324, 0.886643,
		0.780137, -0.531965, -0.329240,
		0.622562, 0.712006, 0.324753,
		38.887951, 40.310867, 54.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796349, 39.423470, 54.952400>,  <38.452160, 39.812466, 54.437958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796349, 39.423470, 54.952400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.897255, 39.803062, 55.028080>,  <38.957798, 40.030819, 55.073486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.897255, 39.803062, 55.028080>,  <38.796349, 39.423470, 54.952400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897255, 39.803062, 55.028080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036089, -0.204612, 0.978178,
		0.966984, -0.239936, -0.085865,
		0.252269, 0.948981, 0.189197,
		38.972935, 40.087757, 55.084839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325340, 39.379547, 55.513710>,  <38.796349, 39.423470, 54.952400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325340, 39.379547, 55.513710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162506, 39.744705, 55.525761>,  <39.064804, 39.963799, 55.532990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162506, 39.744705, 55.525761>,  <39.325340, 39.379547, 55.513710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162506, 39.744705, 55.525761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002005, -0.032091, 0.999483,
		0.913387, 0.406937, 0.011233,
		-0.407087, 0.912892, 0.030128,
		39.040379, 40.018574, 55.534798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066639, 39.631939, 55.754784>,  <39.325340, 39.379547, 55.513710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066639, 39.631939, 55.754784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419914, 39.473244, 55.854843>,  <40.631882, 39.378029, 55.914879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419914, 39.473244, 55.854843>,  <40.066639, 39.631939, 55.754784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419914, 39.473244, 55.854843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230929, -0.096379, -0.968185,
		0.408221, 0.912860, 0.006496,
		0.883191, -0.396734, 0.250150,
		40.684872, 39.354225, 55.929890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558514, 40.030704, 55.380657>,  <40.066639, 39.631939, 55.754784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558514, 40.030704, 55.380657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.724319, 39.681793, 55.484436>,  <40.823803, 39.472446, 55.546703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.724319, 39.681793, 55.484436>,  <40.558514, 40.030704, 55.380657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724319, 39.681793, 55.484436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403156, -0.079578, -0.911664,
		0.815869, 0.482496, 0.318677,
		0.414515, -0.872276, 0.259447,
		40.848675, 39.420109, 55.562271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338539, 40.036526, 55.379223>,  <40.558514, 40.030704, 55.380657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338539, 40.036526, 55.379223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213852, 39.663361, 55.307110>,  <41.139038, 39.439461, 55.263844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213852, 39.663361, 55.307110>,  <41.338539, 40.036526, 55.379223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213852, 39.663361, 55.307110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593688, -0.043095, -0.803540,
		0.741865, -0.357510, 0.567294,
		-0.311721, -0.932914, -0.180279,
		41.120335, 39.383488, 55.253025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813293, 39.798363, 54.943733>,  <41.338539, 40.036526, 55.379223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813293, 39.798363, 54.943733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530102, 39.519073, 54.901299>,  <41.360188, 39.351501, 54.875839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530102, 39.519073, 54.901299>,  <41.813293, 39.798363, 54.943733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530102, 39.519073, 54.901299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350865, -0.217383, -0.910845,
		0.612910, -0.682080, 0.398884,
		-0.707980, -0.698220, -0.106082,
		41.317707, 39.309608, 54.869473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102688, 39.259403, 54.801132>,  <41.813293, 39.798363, 54.943733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102688, 39.259403, 54.801132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.737808, 39.149338, 54.679688>,  <41.518883, 39.083298, 54.606819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.737808, 39.149338, 54.679688>,  <42.102688, 39.259403, 54.801132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737808, 39.149338, 54.679688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362851, -0.198221, -0.910520,
		0.190357, -0.940742, 0.280660,
		-0.912197, -0.275162, -0.303616,
		41.464149, 39.066788, 54.588604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170040, 38.646545, 54.364395>,  <42.102688, 39.259403, 54.801132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170040, 38.646545, 54.364395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826225, 38.818680, 54.254120>,  <41.619938, 38.921963, 54.187954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826225, 38.818680, 54.254120>,  <42.170040, 38.646545, 54.364395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826225, 38.818680, 54.254120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242519, -0.131383, -0.961209,
		-0.449867, -0.893054, 0.008563,
		-0.859537, 0.430340, -0.275687,
		41.568363, 38.947781, 54.171413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834030, 38.107944, 53.925365>,  <42.170040, 38.646545, 54.364395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834030, 38.107944, 53.925365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691513, 38.474815, 53.853992>,  <41.606003, 38.694939, 53.811169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691513, 38.474815, 53.853992>,  <41.834030, 38.107944, 53.925365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691513, 38.474815, 53.853992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273669, -0.080158, -0.958478,
		-0.893397, -0.390334, -0.222443,
		-0.356296, 0.917177, -0.178435,
		41.584625, 38.749969, 53.800461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.631622, 42.523396, 59.309795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.477932, 42.837151, 59.115021>,  <40.385719, 43.025402, 58.998158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.477932, 42.837151, 59.115021>,  <40.631622, 42.523396, 59.309795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477932, 42.837151, 59.115021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762440, -0.027838, -0.646460,
		-0.520631, -0.619644, -0.587354,
		-0.384225, 0.784389, -0.486934,
		40.362663, 43.072468, 58.968941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783756, 42.340340, 58.699043>,  <40.631622, 42.523396, 59.309795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783756, 42.340340, 58.699043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679955, 42.721916, 58.638832>,  <40.617676, 42.950863, 58.602703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679955, 42.721916, 58.638832>,  <40.783756, 42.340340, 58.699043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679955, 42.721916, 58.638832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414664, -0.030710, -0.909456,
		-0.872189, -0.298424, -0.387595,
		-0.259501, 0.953939, -0.150530,
		40.602104, 43.008099, 58.593674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459896, 42.332611, 58.082417>,  <40.783756, 42.340340, 58.699043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459896, 42.332611, 58.082417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585751, 42.707237, 58.144196>,  <40.661263, 42.932011, 58.181263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585751, 42.707237, 58.144196>,  <40.459896, 42.332611, 58.082417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585751, 42.707237, 58.144196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307630, 0.053322, -0.950011,
		-0.897980, 0.346420, -0.271338,
		0.314635, 0.936563, 0.154451,
		40.680141, 42.988205, 58.190533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246071, 42.666779, 57.474842>,  <40.459896, 42.332611, 58.082417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246071, 42.666779, 57.474842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517113, 42.915260, 57.632301>,  <40.679737, 43.064350, 57.726776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517113, 42.915260, 57.632301>,  <40.246071, 42.666779, 57.474842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517113, 42.915260, 57.632301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360693, 0.185752, -0.914001,
		-0.640899, 0.761319, -0.098196,
		0.677606, 0.621200, 0.393651,
		40.720394, 43.101620, 57.750397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296955, 43.171356, 57.029449>,  <40.246071, 42.666779, 57.474842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296955, 43.171356, 57.029449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649094, 43.195267, 57.217667>,  <40.860378, 43.209614, 57.330597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649094, 43.195267, 57.217667>,  <40.296955, 43.171356, 57.029449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649094, 43.195267, 57.217667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473519, -0.168549, -0.864506,
		0.027636, 0.983879, -0.176685,
		0.880350, 0.059772, 0.470543,
		40.913200, 43.213200, 57.358829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680611, 43.645603, 56.686020>,  <40.296955, 43.171356, 57.029449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680611, 43.645603, 56.686020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.974739, 43.461441, 56.884949>,  <41.151215, 43.350945, 57.004307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.974739, 43.461441, 56.884949>,  <40.680611, 43.645603, 56.686020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974739, 43.461441, 56.884949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635483, 0.213390, -0.742042,
		0.235516, 0.861679, 0.449489,
		0.735319, -0.460406, 0.497326,
		41.195335, 43.323318, 57.034145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179733, 44.108387, 56.586445>,  <40.680611, 43.645603, 56.686020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179733, 44.108387, 56.586445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340233, 43.752380, 56.673042>,  <41.436531, 43.538776, 56.724998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340233, 43.752380, 56.673042>,  <41.179733, 44.108387, 56.586445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340233, 43.752380, 56.673042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666983, 0.121906, -0.735032,
		0.627801, 0.439325, 0.642542,
		0.401248, -0.890018, 0.216489,
		41.460606, 43.485374, 56.737988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792206, 44.277390, 56.565338>,  <41.179733, 44.108387, 56.586445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792206, 44.277390, 56.565338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.780922, 43.880981, 56.513046>,  <41.774151, 43.643139, 56.481670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.780922, 43.880981, 56.513046>,  <41.792206, 44.277390, 56.565338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780922, 43.880981, 56.513046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765421, 0.062700, -0.640468,
		0.642911, -0.118130, 0.756776,
		-0.028208, -0.991017, -0.130730,
		41.772461, 43.583675, 56.473827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447830, 44.143101, 56.736618>,  <41.792206, 44.277390, 56.565338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447830, 44.143101, 56.736618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.305836, 43.837761, 56.520737>,  <42.220638, 43.654556, 56.391209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.305836, 43.837761, 56.520737>,  <42.447830, 44.143101, 56.736618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305836, 43.837761, 56.520737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652756, 0.210891, -0.727623,
		0.669250, -0.610591, 0.423418,
		-0.354985, -0.763350, -0.539706,
		42.199341, 43.608757, 56.358826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995186, 43.911003, 56.434719>,  <42.447830, 44.143101, 56.736618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995186, 43.911003, 56.434719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.713047, 43.736000, 56.211624>,  <42.543762, 43.630997, 56.077766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.713047, 43.736000, 56.211624>,  <42.995186, 43.911003, 56.434719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713047, 43.736000, 56.211624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632665, -0.033670, -0.773693,
		0.319719, -0.898583, 0.300547,
		-0.705347, -0.437510, -0.557737,
		42.501442, 43.604748, 56.044304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310375, 43.311028, 56.131779>,  <42.995186, 43.911003, 56.434719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310375, 43.311028, 56.131779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.013443, 43.414726, 55.884640>,  <42.835285, 43.476944, 55.736355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.013443, 43.414726, 55.884640>,  <43.310375, 43.311028, 56.131779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013443, 43.414726, 55.884640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651246, 0.062309, -0.756304,
		-0.157573, -0.963799, -0.215088,
		-0.742327, 0.259248, -0.617852,
		42.790745, 43.492500, 55.699284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443722, 42.946617, 55.475788>,  <43.310375, 43.311028, 56.131779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443722, 42.946617, 55.475788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.185314, 43.227295, 55.355598>,  <43.030270, 43.395702, 55.283485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.185314, 43.227295, 55.355598>,  <43.443722, 42.946617, 55.475788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185314, 43.227295, 55.355598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539405, 0.141138, -0.830134,
		-0.540091, -0.698361, -0.469674,
		-0.646022, 0.701692, -0.300472,
		42.991508, 43.437801, 55.265457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483341, 42.136307, 55.399902>,  <43.443722, 42.946617, 55.475788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483341, 42.136307, 55.399902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.831341, 41.946320, 55.452824>,  <44.040142, 41.832329, 55.484577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.831341, 41.946320, 55.452824>,  <43.483341, 42.136307, 55.399902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831341, 41.946320, 55.452824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347438, -0.400181, 0.848023,
		-0.349831, -0.783751, -0.513178,
		0.870003, -0.474963, 0.132309,
		44.092342, 41.803829, 55.492516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319035, 41.509224, 55.489437>,  <43.483341, 42.136307, 55.399902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319035, 41.509224, 55.489437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.672321, 41.605362, 55.650517>,  <43.884293, 41.663044, 55.747162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.672321, 41.605362, 55.650517>,  <43.319035, 41.509224, 55.489437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672321, 41.605362, 55.650517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352348, -0.226581, 0.908026,
		0.309484, -0.943872, -0.115434,
		0.883216, 0.240347, 0.402695,
		43.937286, 41.677467, 55.771324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386402, 40.877823, 55.960838>,  <43.319035, 41.509224, 55.489437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386402, 40.877823, 55.960838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639893, 41.163879, 56.078800>,  <43.791988, 41.335514, 56.149578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639893, 41.163879, 56.078800>,  <43.386402, 40.877823, 55.960838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639893, 41.163879, 56.078800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186467, -0.228767, 0.955456,
		0.750747, -0.660488, -0.011626,
		0.633726, 0.715137, 0.294905,
		43.830009, 41.378422, 56.167271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729618, 40.618320, 56.529484>,  <43.386402, 40.877823, 55.960838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729618, 40.618320, 56.529484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.814774, 41.002739, 56.599983>,  <43.865868, 41.233391, 56.642284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.814774, 41.002739, 56.599983>,  <43.729618, 40.618320, 56.529484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814774, 41.002739, 56.599983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127109, -0.151611, 0.980233,
		0.968772, -0.231088, 0.089881,
		0.212893, 0.961047, 0.176250,
		43.878643, 41.291054, 56.652859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134464, 40.686306, 57.069126>,  <43.729618, 40.618320, 56.529484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134464, 40.686306, 57.069126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.959053, 41.045494, 57.054428>,  <43.853806, 41.261005, 57.045609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.959053, 41.045494, 57.054428>,  <44.134464, 40.686306, 57.069126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959053, 41.045494, 57.054428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224120, -0.069674, 0.972068,
		0.870324, 0.434513, 0.231806,
		-0.438527, 0.897966, -0.036745,
		43.827496, 41.314884, 57.043404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177227, 40.806446, 57.784321>,  <44.134464, 40.686306, 57.069126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177227, 40.806446, 57.784321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.938431, 41.092659, 57.639210>,  <43.795151, 41.264385, 57.552143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.938431, 41.092659, 57.639210>,  <44.177227, 40.806446, 57.784321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938431, 41.092659, 57.639210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549944, -0.035770, 0.834435,
		0.584089, 0.697662, 0.414857,
		-0.596994, 0.715533, -0.362782,
		43.759335, 41.307320, 57.530376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169281, 41.272900, 58.370358>,  <44.177227, 40.806446, 57.784321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169281, 41.272900, 58.370358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.849159, 41.315636, 58.134357>,  <43.657085, 41.341278, 57.992756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.849159, 41.315636, 58.134357>,  <44.169281, 41.272900, 58.370358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849159, 41.315636, 58.134357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596779, -0.237265, 0.766525,
		-0.058091, 0.965552, 0.253643,
		-0.800300, 0.106841, -0.590004,
		43.609070, 41.347687, 57.957355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766289, 41.841511, 58.694134>,  <44.169281, 41.272900, 58.370358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766289, 41.841511, 58.694134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.520302, 41.632950, 58.457504>,  <43.372711, 41.507812, 58.315529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.520302, 41.632950, 58.457504>,  <43.766289, 41.841511, 58.694134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520302, 41.632950, 58.457504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481966, -0.345231, 0.805310,
		-0.624120, 0.780355, -0.038994,
		-0.614965, -0.521404, -0.591570,
		43.335812, 41.476528, 58.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019276, 41.972218, 58.954056>,  <43.766289, 41.841511, 58.694134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019276, 41.972218, 58.954056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.962322, 41.656769, 58.714790>,  <42.928150, 41.467499, 58.571232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.962322, 41.656769, 58.714790>,  <43.019276, 41.972218, 58.954056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962322, 41.656769, 58.714790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698893, -0.347831, 0.624950,
		-0.700910, 0.507035, -0.501639,
		-0.142385, -0.788625, -0.598161,
		42.919605, 41.420181, 58.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342751, 42.043850, 58.673908>,  <43.019276, 41.972218, 58.954056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342751, 42.043850, 58.673908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.443161, 41.656693, 58.679127>,  <42.503407, 41.424397, 58.682259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.443161, 41.656693, 58.679127>,  <42.342751, 42.043850, 58.673908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443161, 41.656693, 58.679127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783096, -0.195140, 0.590492,
		-0.568988, -0.158443, -0.806938,
		0.251026, -0.967893, 0.013044,
		42.518467, 41.366325, 58.683041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765156, 41.754570, 58.816917>,  <42.342751, 42.043850, 58.673908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765156, 41.754570, 58.816917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.999466, 41.434120, 58.866028>,  <42.140053, 41.241852, 58.895493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.999466, 41.434120, 58.866028>,  <41.765156, 41.754570, 58.816917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999466, 41.434120, 58.866028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687605, -0.411047, 0.598531,
		-0.429028, -0.435028, -0.791635,
		0.585777, -0.801119, 0.122777,
		42.175198, 41.193783, 58.902859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217987, 41.247517, 58.889046>,  <41.765156, 41.754570, 58.816917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217987, 41.247517, 58.889046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.560310, 41.110268, 59.043892>,  <41.765705, 41.027916, 59.136799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.560310, 41.110268, 59.043892>,  <41.217987, 41.247517, 58.889046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560310, 41.110268, 59.043892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513406, -0.471848, 0.716781,
		-0.063288, -0.812173, -0.579974,
		0.855809, -0.343126, 0.387112,
		41.817055, 41.007328, 59.160027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018345, 40.539120, 59.108631>,  <41.217987, 41.247517, 58.889046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018345, 40.539120, 59.108631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.356102, 40.633781, 59.300880>,  <41.558754, 40.690578, 59.416229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.356102, 40.633781, 59.300880>,  <41.018345, 40.539120, 59.108631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356102, 40.633781, 59.300880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377965, -0.372644, 0.847513,
		0.379671, -0.897291, -0.225210,
		0.844389, 0.236654, 0.480627,
		41.609417, 40.704777, 59.445068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395805, 39.891911, 59.332054>,  <41.018345, 40.539120, 59.108631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395805, 39.891911, 59.332054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457848, 40.214935, 59.559662>,  <41.495071, 40.408749, 59.696228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457848, 40.214935, 59.559662>,  <41.395805, 39.891911, 59.332054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457848, 40.214935, 59.559662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416901, -0.468681, 0.778801,
		0.895620, -0.358022, 0.263979,
		0.155106, 0.807563, 0.569020,
		41.504379, 40.457203, 59.730370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837852, 40.012383, 58.791679>,  <41.395805, 39.891911, 59.332054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837852, 40.012383, 58.791679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.502907, 39.797455, 58.831890>,  <41.301941, 39.668499, 58.856018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.502907, 39.797455, 58.831890>,  <41.837852, 40.012383, 58.791679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502907, 39.797455, 58.831890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035492, -0.130076, -0.990869,
		0.545493, -0.833285, 0.089850,
		-0.837364, -0.537323, 0.100530,
		41.251698, 39.636257, 58.862049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989555, 39.495483, 58.369415>,  <41.837852, 40.012383, 58.791679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989555, 39.495483, 58.369415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.591244, 39.473129, 58.398514>,  <41.352257, 39.459717, 58.415974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.591244, 39.473129, 58.398514>,  <41.989555, 39.495483, 58.369415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591244, 39.473129, 58.398514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065177, -0.127020, -0.989756,
		0.064552, -0.990325, 0.122842,
		-0.995784, -0.055884, 0.072746,
		41.292507, 39.456364, 58.420338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855576, 38.835354, 58.080482>,  <41.989555, 39.495483, 58.369415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855576, 38.835354, 58.080482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.524490, 39.059746, 58.074776>,  <41.325840, 39.194382, 58.071350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.524490, 39.059746, 58.074776>,  <41.855576, 38.835354, 58.080482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524490, 39.059746, 58.074776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180841, -0.290729, -0.939560,
		-0.531221, -0.775101, 0.342086,
		-0.827708, 0.560977, -0.014272,
		41.276176, 39.228039, 58.070496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323868, 38.475918, 57.731163>,  <41.855576, 38.835354, 58.080482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323868, 38.475918, 57.731163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.185501, 38.850029, 57.701244>,  <41.102482, 39.074497, 57.683292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.185501, 38.850029, 57.701244>,  <41.323868, 38.475918, 57.731163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185501, 38.850029, 57.701244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299162, -0.185505, -0.935997,
		-0.889292, -0.301403, 0.343970,
		-0.345921, 0.935277, -0.074800,
		41.081726, 39.130611, 57.678806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581432, 38.390190, 57.362968>,  <41.323868, 38.475918, 57.731163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581432, 38.390190, 57.362968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.680580, 38.774399, 57.312450>,  <40.740070, 39.004925, 57.282139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.680580, 38.774399, 57.312450>,  <40.581432, 38.390190, 57.362968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680580, 38.774399, 57.312450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405170, -0.015631, -0.914108,
		-0.879998, 0.277752, 0.385302,
		0.247872, 0.960526, -0.126292,
		40.754940, 39.062557, 57.274563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162243, 38.657398, 56.919163>,  <40.581432, 38.390190, 57.362968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162243, 38.657398, 56.919163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456985, 38.926918, 56.897137>,  <40.633831, 39.088631, 56.883923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456985, 38.926918, 56.897137>,  <40.162243, 38.657398, 56.919163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456985, 38.926918, 56.897137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191243, 0.129633, -0.972945,
		-0.648434, 0.727452, 0.224381,
		0.736858, 0.673802, -0.055062,
		40.678043, 39.129059, 56.880619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928726, 39.080097, 56.382679>,  <40.162243, 38.657398, 56.919163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928726, 39.080097, 56.382679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.318939, 39.167358, 56.393612>,  <40.553066, 39.219715, 56.400169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.318939, 39.167358, 56.393612>,  <39.928726, 39.080097, 56.382679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318939, 39.167358, 56.393612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008699, 0.085906, -0.996265,
		-0.219683, 0.972127, 0.081906,
		0.975533, 0.218150, 0.027329,
		40.611599, 39.232803, 56.401810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573200, 39.829773, 56.268818>,  <39.928726, 39.080097, 56.382679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573200, 39.829773, 56.268818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228012, 39.974136, 56.127380>,  <39.020897, 40.060753, 56.042519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228012, 39.974136, 56.127380>,  <39.573200, 39.829773, 56.268818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228012, 39.974136, 56.127380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296247, 0.205474, 0.932747,
		0.409288, 0.909685, -0.070401,
		-0.862972, 0.360906, -0.353590,
		38.969120, 40.082409, 56.021305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506767, 40.390442, 56.555264>,  <39.573200, 39.829773, 56.268818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506767, 40.390442, 56.555264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123241, 40.357437, 56.446556>,  <38.893124, 40.337635, 56.381332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123241, 40.357437, 56.446556>,  <39.506767, 40.390442, 56.555264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123241, 40.357437, 56.446556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283472, 0.337463, 0.897643,
		0.017644, 0.937715, -0.346956,
		-0.958818, -0.082514, -0.271771,
		38.835594, 40.332684, 56.365025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125980, 41.039898, 56.729332>,  <39.506767, 40.390442, 56.555264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125980, 41.039898, 56.729332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.841473, 40.760979, 56.693825>,  <38.670769, 40.593628, 56.672520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.841473, 40.760979, 56.693825>,  <39.125980, 41.039898, 56.729332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841473, 40.760979, 56.693825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315184, 0.203501, 0.926955,
		-0.628299, 0.687289, -0.364520,
		-0.711266, -0.697296, -0.088764,
		38.628094, 40.551788, 56.667194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415558, 41.255798, 57.013435>,  <39.125980, 41.039898, 56.729332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415558, 41.255798, 57.013435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.386742, 40.856934, 57.022133>,  <38.369453, 40.617615, 57.027351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.386742, 40.856934, 57.022133>,  <38.415558, 41.255798, 57.013435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386742, 40.856934, 57.022133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210512, 0.036506, 0.976909,
		-0.974933, 0.065800, -0.212545,
		-0.072040, -0.997165, 0.021740,
		38.365131, 40.557785, 57.028656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692749, 41.065540, 57.232983>,  <38.415558, 41.255798, 57.013435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692749, 41.065540, 57.232983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.930878, 40.752182, 57.304405>,  <38.073753, 40.564167, 57.347260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.930878, 40.752182, 57.304405>,  <37.692749, 41.065540, 57.232983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930878, 40.752182, 57.304405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287807, -0.000432, 0.957688,
		-0.750175, -0.621519, -0.225724,
		0.595319, -0.783399, 0.178553,
		38.109474, 40.517162, 57.357971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328575, 40.607319, 57.698215>,  <37.692749, 41.065540, 57.232983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328575, 40.607319, 57.698215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.706676, 40.485275, 57.744511>,  <37.933537, 40.412048, 57.772289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.706676, 40.485275, 57.744511>,  <37.328575, 40.607319, 57.698215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706676, 40.485275, 57.744511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125290, -0.011829, 0.992050,
		-0.301316, -0.952244, -0.049409,
		0.945257, -0.305110, 0.115743,
		37.990253, 40.393742, 57.779232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266006, 40.302509, 58.347534>,  <37.328575, 40.607319, 57.698215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266006, 40.302509, 58.347534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658104, 40.362297, 58.295723>,  <37.893364, 40.398170, 58.264637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658104, 40.362297, 58.295723>,  <37.266006, 40.302509, 58.347534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658104, 40.362297, 58.295723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093851, 0.224938, 0.969843,
		0.174094, -0.962841, 0.206467,
		0.980247, 0.149467, -0.129524,
		37.952179, 40.407139, 58.256866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448219, 39.988491, 58.945847>,  <37.266006, 40.302509, 58.347534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448219, 39.988491, 58.945847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735779, 40.225052, 58.799732>,  <37.908314, 40.366989, 58.712063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735779, 40.225052, 58.799732>,  <37.448219, 39.988491, 58.945847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735779, 40.225052, 58.799732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016668, 0.510686, 0.859605,
		0.694917, -0.624056, 0.357273,
		0.718897, 0.591399, -0.365287,
		37.951447, 40.402473, 58.690147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961063, 39.935413, 59.424034>,  <37.448219, 39.988491, 58.945847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961063, 39.935413, 59.424034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.033039, 40.269417, 59.216042>,  <38.076225, 40.469818, 59.091248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.033039, 40.269417, 59.216042>,  <37.961063, 39.935413, 59.424034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033039, 40.269417, 59.216042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134836, 0.502678, 0.853894,
		0.974393, -0.223760, -0.022139,
		0.179939, 0.835013, -0.519977,
		38.087021, 40.519920, 59.060047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.734886, 41.226246, 43.941635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.544380, 41.572769, 43.881378>,  <44.430077, 41.780682, 43.845222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.544380, 41.572769, 43.881378>,  <44.734886, 41.226246, 43.941635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544380, 41.572769, 43.881378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499518, -0.125563, 0.857155,
		0.723642, 0.483478, 0.492535,
		-0.476260, 0.866304, -0.150643,
		44.401501, 41.832661, 43.836185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903461, 41.734661, 44.522408>,  <44.734886, 41.226246, 43.941635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903461, 41.734661, 44.522408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.558823, 41.871948, 44.372822>,  <44.352039, 41.954323, 44.283070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.558823, 41.871948, 44.372822>,  <44.903461, 41.734661, 44.522408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558823, 41.871948, 44.372822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361845, 0.101362, 0.926711,
		0.355973, 0.933769, 0.036860,
		-0.861598, 0.343222, -0.373962,
		44.300343, 41.974915, 44.260632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672523, 42.240856, 44.949650>,  <44.903461, 41.734661, 44.522408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672523, 42.240856, 44.949650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.329285, 42.151939, 44.764503>,  <44.123341, 42.098587, 44.653416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.329285, 42.151939, 44.764503>,  <44.672523, 42.240856, 44.949650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329285, 42.151939, 44.764503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511205, 0.285055, 0.810811,
		-0.048295, 0.932378, -0.358244,
		-0.858101, -0.222294, -0.462869,
		44.071854, 42.085251, 44.625641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233643, 42.776707, 45.250954>,  <44.672523, 42.240856, 44.949650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233643, 42.776707, 45.250954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.012527, 42.491707, 45.078091>,  <43.879856, 42.320705, 44.974373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.012527, 42.491707, 45.078091>,  <44.233643, 42.776707, 45.250954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012527, 42.491707, 45.078091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565796, -0.059832, 0.822372,
		-0.611798, 0.699115, -0.370056,
		-0.552791, -0.712501, -0.432161,
		43.846691, 42.277958, 44.948441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599987, 43.037106, 45.322212>,  <44.233643, 42.776707, 45.250954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599987, 43.037106, 45.322212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.549370, 42.642540, 45.280312>,  <43.519001, 42.405800, 45.255173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.549370, 42.642540, 45.280312>,  <43.599987, 43.037106, 45.322212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549370, 42.642540, 45.280312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735053, 0.022335, 0.677641,
		-0.666097, 0.162743, -0.727894,
		-0.126539, -0.986415, -0.104747,
		43.511410, 42.346615, 45.248886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919434, 42.917793, 45.397720>,  <43.599987, 43.037106, 45.322212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919434, 42.917793, 45.397720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.100052, 42.570061, 45.478092>,  <43.208424, 42.361420, 45.526314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.100052, 42.570061, 45.478092>,  <42.919434, 42.917793, 45.397720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100052, 42.570061, 45.478092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620302, -0.143986, 0.771034,
		-0.641352, -0.472793, -0.604264,
		0.451544, -0.869330, 0.200928,
		43.235516, 42.309261, 45.538372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405697, 42.526649, 45.665756>,  <42.919434, 42.917793, 45.397720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405697, 42.526649, 45.665756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.701904, 42.278091, 45.768124>,  <42.879631, 42.128956, 45.829544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.701904, 42.278091, 45.768124>,  <42.405697, 42.526649, 45.665756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701904, 42.278091, 45.768124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507799, -0.267949, 0.818745,
		-0.440191, -0.736255, -0.513966,
		0.740522, -0.621395, 0.255920,
		42.924061, 42.091675, 45.844898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213669, 41.746433, 45.696613>,  <42.405697, 42.526649, 45.665756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213669, 41.746433, 45.696613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.527981, 41.817390, 45.933624>,  <42.716568, 41.859966, 46.075829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.527981, 41.817390, 45.933624>,  <42.213669, 41.746433, 45.696613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527981, 41.817390, 45.933624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519377, -0.330950, 0.787857,
		0.335855, -0.926825, -0.167920,
		0.785779, 0.177392, 0.592523,
		42.763714, 41.870609, 46.111382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173283, 41.140697, 46.109570>,  <42.213669, 41.746433, 45.696613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173283, 41.140697, 46.109570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.418438, 41.392174, 46.301033>,  <42.565533, 41.543060, 46.415913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.418438, 41.392174, 46.301033>,  <42.173283, 41.140697, 46.109570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418438, 41.392174, 46.301033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381077, -0.295495, 0.876050,
		0.692205, -0.719328, 0.058473,
		0.612889, 0.628689, 0.478662,
		42.602306, 41.580780, 46.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468967, 40.717785, 46.681122>,  <42.173283, 41.140697, 46.109570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468967, 40.717785, 46.681122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.544456, 41.097786, 46.780621>,  <42.589748, 41.325787, 46.840321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.544456, 41.097786, 46.780621>,  <42.468967, 40.717785, 46.681122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544456, 41.097786, 46.780621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276003, -0.191773, 0.941831,
		0.942447, -0.246399, 0.226013,
		0.188723, 0.950005, 0.248743,
		42.601074, 41.382786, 46.855244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957844, 40.719940, 47.222256>,  <42.468967, 40.717785, 46.681122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957844, 40.719940, 47.222256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.727215, 41.046120, 47.242676>,  <42.588837, 41.241829, 47.254929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.727215, 41.046120, 47.242676>,  <42.957844, 40.719940, 47.222256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727215, 41.046120, 47.242676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207046, -0.206268, 0.956340,
		0.790377, 0.540829, 0.287764,
		-0.576573, 0.815449, 0.051053,
		42.554241, 41.290756, 47.257992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933979, 40.726887, 47.911327>,  <42.957844, 40.719940, 47.222256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933979, 40.726887, 47.911327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.671841, 41.019127, 47.834652>,  <42.514557, 41.194473, 47.788647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.671841, 41.019127, 47.834652>,  <42.933979, 40.726887, 47.911327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671841, 41.019127, 47.834652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437002, -0.159747, 0.885161,
		0.616079, 0.663853, 0.423964,
		-0.655344, 0.730603, -0.191688,
		42.475239, 41.238308, 47.777145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430981, 40.685898, 48.443970>,  <42.933979, 40.726887, 47.911327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430981, 40.685898, 48.443970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.621292, 40.335838, 48.408752>,  <43.735481, 40.125805, 48.387623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.621292, 40.335838, 48.408752>,  <43.430981, 40.685898, 48.443970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621292, 40.335838, 48.408752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702883, 0.438474, -0.560085,
		0.528760, 0.204596, 0.823743,
		0.475782, -0.875146, -0.088040,
		43.764027, 40.073296, 48.382339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252899, 40.728039, 48.583755>,  <43.430981, 40.685898, 48.443970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252899, 40.728039, 48.583755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.192993, 40.408554, 48.350643>,  <44.157051, 40.216866, 48.210773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.192993, 40.408554, 48.350643>,  <44.252899, 40.728039, 48.583755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192993, 40.408554, 48.350643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705806, 0.326411, -0.628724,
		0.692394, -0.505492, 0.514848,
		-0.149763, -0.798708, -0.582784,
		44.148064, 40.168941, 48.175808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879421, 40.626026, 48.278450>,  <44.252899, 40.728039, 48.583755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879421, 40.626026, 48.278450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.668491, 40.371964, 48.052704>,  <44.541935, 40.219524, 47.917255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.668491, 40.371964, 48.052704>,  <44.879421, 40.626026, 48.278450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668491, 40.371964, 48.052704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569910, 0.228236, -0.789374,
		0.630184, -0.737892, 0.241628,
		-0.527324, -0.635157, -0.564362,
		44.510296, 40.181416, 47.883396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428619, 40.285660, 47.945717>,  <44.879421, 40.626026, 48.278450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428619, 40.285660, 47.945717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.098442, 40.221977, 47.729088>,  <44.900337, 40.183769, 47.599110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.098442, 40.221977, 47.729088>,  <45.428619, 40.285660, 47.945717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098442, 40.221977, 47.729088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533951, 0.091075, -0.840596,
		0.183152, -0.983035, 0.009832,
		-0.825440, -0.159207, -0.541573,
		44.850811, 40.174217, 47.566616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579842, 39.762344, 47.517193>,  <45.428619, 40.285660, 47.945717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579842, 39.762344, 47.517193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.297386, 39.979851, 47.335785>,  <45.127911, 40.110355, 47.226940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.297386, 39.979851, 47.335785>,  <45.579842, 39.762344, 47.517193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297386, 39.979851, 47.335785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596653, 0.112060, -0.794637,
		-0.381274, -0.831722, -0.403569,
		-0.706141, 0.543766, -0.453524,
		45.085545, 40.142979, 47.199726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673981, 39.652695, 46.769459>,  <45.579842, 39.762344, 47.517193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673981, 39.652695, 46.769459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.442932, 39.979164, 46.763569>,  <45.304302, 40.175045, 46.760033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.442932, 39.979164, 46.763569>,  <45.673981, 39.652695, 46.769459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442932, 39.979164, 46.763569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413982, 0.277337, -0.867008,
		-0.703546, -0.506896, -0.498077,
		-0.577618, 0.816175, -0.014727,
		45.269646, 40.224018, 46.759151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402580, 39.638165, 46.114498>,  <45.673981, 39.652695, 46.769459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402580, 39.638165, 46.114498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.399712, 40.001953, 46.280777>,  <45.397991, 40.220226, 46.380543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.399712, 40.001953, 46.280777>,  <45.402580, 39.638165, 46.114498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399712, 40.001953, 46.280777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435152, 0.377123, -0.817570,
		-0.900328, 0.175028, -0.398465,
		-0.007173, 0.909474, 0.415698,
		45.397560, 40.274796, 46.405487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216209, 39.992004, 45.644455>,  <45.402580, 39.638165, 46.114498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216209, 39.992004, 45.644455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.400330, 40.256783, 45.881084>,  <45.510799, 40.415649, 46.023060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.400330, 40.256783, 45.881084>,  <45.216209, 39.992004, 45.644455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400330, 40.256783, 45.881084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400750, 0.439670, -0.803797,
		-0.792166, 0.607056, -0.062896,
		0.460296, 0.661946, 0.591569,
		45.538418, 40.455368, 46.058556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252941, 40.561531, 45.199440>,  <45.216209, 39.992004, 45.644455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252941, 40.561531, 45.199440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.496048, 40.669159, 45.498295>,  <45.641914, 40.733734, 45.677608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.496048, 40.669159, 45.498295>,  <45.252941, 40.561531, 45.199440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496048, 40.669159, 45.498295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498941, 0.602568, -0.622873,
		-0.617796, 0.751343, 0.231975,
		0.607772, 0.269066, 0.747139,
		45.678379, 40.749878, 45.722435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348942, 41.244225, 45.180470>,  <45.252941, 40.561531, 45.199440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348942, 41.244225, 45.180470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.664169, 41.099640, 45.379787>,  <45.853306, 41.012890, 45.499378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.664169, 41.099640, 45.379787>,  <45.348942, 41.244225, 45.180470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664169, 41.099640, 45.379787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615414, 0.482135, -0.623548,
		-0.014859, 0.798055, 0.602401,
		0.788064, -0.361460, 0.498298,
		45.900589, 40.991203, 45.529278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725750, 41.812202, 45.401295>,  <45.348942, 41.244225, 45.180470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725750, 41.812202, 45.401295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.017403, 41.538513, 45.407082>,  <46.192394, 41.374298, 45.410553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.017403, 41.538513, 45.407082>,  <45.725750, 41.812202, 45.401295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017403, 41.538513, 45.407082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626151, 0.658417, -0.417640,
		0.276232, 0.313573, 0.908497,
		0.729131, -0.684222, 0.014468,
		46.236141, 41.333248, 45.411423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293056, 42.211086, 45.596462>,  <45.725750, 41.812202, 45.401295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293056, 42.211086, 45.596462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.449615, 41.883926, 45.427773>,  <46.543552, 41.687630, 45.326561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.449615, 41.883926, 45.427773>,  <46.293056, 42.211086, 45.596462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449615, 41.883926, 45.427773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687071, 0.564605, -0.457335,
		0.612159, -0.110752, 0.782940,
		0.391401, -0.817897, -0.421722,
		46.567036, 41.638557, 45.301254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953651, 42.379139, 45.544529>,  <46.293056, 42.211086, 45.596462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953651, 42.379139, 45.544529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.943954, 42.063080, 45.299553>,  <46.938137, 41.873444, 45.152569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.943954, 42.063080, 45.299553>,  <46.953651, 42.379139, 45.544529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943954, 42.063080, 45.299553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710910, 0.417088, -0.566256,
		0.702865, -0.449114, 0.551613,
		-0.024242, -0.790149, -0.612436,
		46.936684, 41.826035, 45.115822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.597073, 42.032528, 45.536213>,  <46.953651, 42.379139, 45.544529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.597073, 42.032528, 45.536213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.416466, 41.959023, 45.186958>,  <47.308102, 41.914921, 44.977406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.416466, 41.959023, 45.186958>,  <47.597073, 42.032528, 45.536213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.416466, 41.959023, 45.186958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763071, 0.427645, -0.484606,
		0.462445, -0.885071, -0.052864,
		-0.451518, -0.183764, -0.873134,
		47.281010, 41.903893, 44.925018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.053368, 41.760300, 45.236736>,  <47.597073, 42.032528, 45.536213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.053368, 41.760300, 45.236736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.807259, 41.919258, 44.964409>,  <47.659592, 42.014633, 44.801014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.807259, 41.919258, 44.964409>,  <48.053368, 41.760300, 45.236736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.807259, 41.919258, 44.964409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786390, 0.369711, -0.494879,
		0.055043, -0.839875, -0.539982,
		-0.615273, 0.397397, -0.680819,
		47.622677, 42.038479, 44.760162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.714336, 41.351158, 45.690571>,  <48.053368, 41.760300, 45.236736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.714336, 41.351158, 45.690571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.757774, 41.738869, 45.778858>,  <48.783836, 41.971493, 45.831833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.757774, 41.738869, 45.778858>,  <48.714336, 41.351158, 45.690571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.757774, 41.738869, 45.778858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470634, -0.145449, 0.870257,
		0.875620, -0.198382, 0.440379,
		0.108591, 0.969273, 0.220723,
		48.790352, 42.029652, 45.845074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.996635, 41.295994, 46.325726>,  <48.714336, 41.351158, 45.690571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.996635, 41.295994, 46.325726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.813110, 41.648552, 46.280769>,  <48.702995, 41.860088, 46.253796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.813110, 41.648552, 46.280769>,  <48.996635, 41.295994, 46.325726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.813110, 41.648552, 46.280769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245758, -0.004327, 0.969321,
		0.853869, 0.472359, 0.218595,
		-0.458813, 0.881396, -0.112391,
		48.675465, 41.912971, 46.247051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.173725, 41.604233, 46.901566>,  <48.996635, 41.295994, 46.325726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.173725, 41.604233, 46.901566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.868141, 41.824463, 46.766968>,  <48.684792, 41.956600, 46.686211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.868141, 41.824463, 46.766968>,  <49.173725, 41.604233, 46.901566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.868141, 41.824463, 46.766968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364485, 0.062111, 0.929136,
		0.532462, 0.832470, 0.153227,
		-0.763960, 0.550578, -0.336494,
		48.638954, 41.989635, 46.666019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.083694, 42.318317, 47.197117>,  <49.173725, 41.604233, 46.901566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.083694, 42.318317, 47.197117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.716179, 42.217545, 47.075554>,  <48.495670, 42.157082, 47.002617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.716179, 42.217545, 47.075554>,  <49.083694, 42.318317, 47.197117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.716179, 42.217545, 47.075554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347423, 0.150534, 0.925547,
		-0.187429, 0.955965, -0.225837,
		-0.918786, -0.251935, -0.303910,
		48.440544, 42.141964, 46.984383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.633728, 42.644413, 47.752472>,  <49.083694, 42.318317, 47.197117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.633728, 42.644413, 47.752472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.390068, 42.382851, 47.572987>,  <48.243874, 42.225914, 47.465294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.390068, 42.382851, 47.572987>,  <48.633728, 42.644413, 47.752472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.390068, 42.382851, 47.572987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429477, -0.203654, 0.879815,
		-0.666697, 0.728653, -0.156780,
		-0.609151, -0.653904, -0.448716,
		48.207321, 42.186680, 47.438374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.042919, 42.703552, 48.162510>,  <48.633728, 42.644413, 47.752472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.042919, 42.703552, 48.162510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.023193, 42.364548, 47.951115>,  <48.011356, 42.161144, 47.824280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.023193, 42.364548, 47.951115>,  <48.042919, 42.703552, 48.162510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.023193, 42.364548, 47.951115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284126, -0.495365, 0.820906,
		-0.957518, 0.190639, -0.216370,
		-0.049314, -0.847508, -0.528486,
		48.008400, 42.110294, 47.792568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338890, 42.563442, 48.077309>,  <48.042919, 42.703552, 48.162510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338890, 42.563442, 48.077309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.552704, 42.226334, 48.051998>,  <47.680992, 42.024067, 48.036812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.552704, 42.226334, 48.051998>,  <47.338890, 42.563442, 48.077309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552704, 42.226334, 48.051998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426780, -0.333796, 0.840499,
		-0.729472, -0.422272, -0.538105,
		0.534537, -0.842773, -0.063278,
		47.713066, 41.973503, 48.033016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862415, 42.061707, 48.214176>,  <47.338890, 42.563442, 48.077309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862415, 42.061707, 48.214176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.200447, 41.857780, 48.278587>,  <47.403267, 41.735424, 48.317234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.200447, 41.857780, 48.278587>,  <46.862415, 42.061707, 48.214176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200447, 41.857780, 48.278587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403527, -0.410648, 0.817639,
		-0.350714, -0.755952, -0.552753,
		0.845083, -0.509808, 0.161027,
		47.453972, 41.704838, 48.326893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701385, 41.291950, 48.363983>,  <46.862415, 42.061707, 48.214176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701385, 41.291950, 48.363983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.061798, 41.381538, 48.512566>,  <47.278046, 41.435291, 48.601715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.061798, 41.381538, 48.512566>,  <46.701385, 41.291950, 48.363983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.061798, 41.381538, 48.512566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342419, -0.158384, 0.926101,
		0.266250, -0.961640, -0.066018,
		0.901033, 0.223969, 0.371454,
		47.332108, 41.448730, 48.624001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757450, 40.739780, 48.838810>,  <46.701385, 41.291950, 48.363983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757450, 40.739780, 48.838810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.028809, 41.017365, 48.935303>,  <47.191624, 41.183914, 48.993198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.028809, 41.017365, 48.935303>,  <46.757450, 40.739780, 48.838810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028809, 41.017365, 48.935303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231944, -0.109258, 0.966574,
		0.697119, -0.711677, 0.086839,
		0.678400, 0.693959, 0.241235,
		47.232330, 41.225552, 49.007671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074814, 40.453403, 49.327934>,  <46.757450, 40.739780, 48.838810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074814, 40.453403, 49.327934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.135994, 40.842072, 49.400005>,  <47.172703, 41.075272, 49.443249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.135994, 40.842072, 49.400005>,  <47.074814, 40.453403, 49.327934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135994, 40.842072, 49.400005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387274, -0.108806, 0.915522,
		0.909190, -0.209803, 0.359661,
		0.152946, 0.971671, 0.180177,
		47.181877, 41.133572, 49.454060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306572, 40.419674, 50.006687>,  <47.074814, 40.453403, 49.327934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306572, 40.419674, 50.006687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.219353, 40.806129, 49.951508>,  <47.167023, 41.038002, 49.918400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.219353, 40.806129, 49.951508>,  <47.306572, 40.419674, 50.006687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219353, 40.806129, 49.951508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256667, 0.079603, 0.963216,
		0.941583, 0.245430, 0.230620,
		-0.218044, 0.966141, -0.137947,
		47.153938, 41.095970, 49.910122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.578259, 40.749817, 50.572891>,  <47.306572, 40.419674, 50.006687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.578259, 40.749817, 50.572891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.305351, 41.003601, 50.427582>,  <47.141605, 41.155872, 50.340397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.305351, 41.003601, 50.427582>,  <47.578259, 40.749817, 50.572891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305351, 41.003601, 50.427582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372735, 0.125601, 0.919398,
		0.628950, 0.762682, 0.150792,
		-0.682269, 0.634461, -0.363275,
		47.100670, 41.193939, 50.318600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721317, 41.399929, 50.928089>,  <47.578259, 40.749817, 50.572891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721317, 41.399929, 50.928089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.343987, 41.389359, 50.795761>,  <47.117588, 41.383015, 50.716366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.343987, 41.389359, 50.795761>,  <47.721317, 41.399929, 50.928089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343987, 41.389359, 50.795761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325664, 0.265624, 0.907407,
		0.063895, 0.963715, -0.259175,
		-0.943324, -0.026425, -0.330819,
		47.060989, 41.381432, 50.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.384853, 42.024143, 51.318161>,  <47.721317, 41.399929, 50.928089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.384853, 42.024143, 51.318161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.063919, 41.836105, 51.171043>,  <46.871361, 41.723282, 51.082775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.063919, 41.836105, 51.171043>,  <47.384853, 42.024143, 51.318161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.063919, 41.836105, 51.171043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459559, 0.093335, 0.883229,
		-0.380877, 0.877665, -0.290924,
		-0.802333, -0.470098, -0.367790,
		46.823219, 41.695076, 51.060707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.833199, 42.455933, 51.497757>,  <47.384853, 42.024143, 51.318161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.833199, 42.455933, 51.497757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.690826, 42.085266, 51.449409>,  <46.605404, 41.862865, 51.420399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.690826, 42.085266, 51.449409>,  <46.833199, 42.455933, 51.497757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.690826, 42.085266, 51.449409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595117, 0.125034, 0.793853,
		-0.720521, 0.354487, -0.595977,
		-0.355928, -0.926663, -0.120872,
		46.584049, 41.807266, 51.413147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125908, 42.565018, 51.567245>,  <46.833199, 42.455933, 51.497757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125908, 42.565018, 51.567245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.171013, 42.168869, 51.599373>,  <46.198074, 41.931179, 51.618649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.171013, 42.168869, 51.599373>,  <46.125908, 42.565018, 51.567245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171013, 42.168869, 51.599373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563029, 0.002916, 0.826432,
		-0.818708, -0.138407, -0.557279,
		0.112758, -0.990371, 0.080315,
		46.204842, 41.871758, 51.623466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401844, 42.184837, 51.688114>,  <46.125908, 42.565018, 51.567245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401844, 42.184837, 51.688114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.708389, 41.976639, 51.838726>,  <45.892315, 41.851719, 51.929092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.708389, 41.976639, 51.838726>,  <45.401844, 42.184837, 51.688114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708389, 41.976639, 51.838726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485898, -0.086241, 0.869751,
		-0.420229, -0.849498, -0.319000,
		0.766362, -0.520496, 0.376528,
		45.938297, 41.820492, 51.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046005, 41.702675, 52.031548>,  <45.401844, 42.184837, 51.688114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046005, 41.702675, 52.031548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.413040, 41.704933, 52.190548>,  <45.633263, 41.706287, 52.285946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.413040, 41.704933, 52.190548>,  <45.046005, 41.702675, 52.031548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413040, 41.704933, 52.190548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396305, -0.065699, 0.915765,
		0.031290, -0.997823, -0.058045,
		0.917586, 0.005651, 0.397498,
		45.688316, 41.706627, 52.309795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023087, 41.232018, 52.556919>,  <45.046005, 41.702675, 52.031548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023087, 41.232018, 52.556919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.337555, 41.464905, 52.639820>,  <45.526237, 41.604637, 52.689560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.337555, 41.464905, 52.639820>,  <45.023087, 41.232018, 52.556919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337555, 41.464905, 52.639820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235082, -0.028406, 0.971561,
		0.571546, -0.812537, 0.114536,
		0.786175, 0.582217, 0.207248,
		45.573406, 41.639568, 52.701996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274231, 40.924290, 53.092968>,  <45.023087, 41.232018, 52.556919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274231, 40.924290, 53.092968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.426949, 41.293243, 53.116447>,  <45.518578, 41.514614, 53.130535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.426949, 41.293243, 53.116447>,  <45.274231, 40.924290, 53.092968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426949, 41.293243, 53.116447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204155, 0.022220, 0.978686,
		0.901418, -0.385640, 0.196792,
		0.381794, 0.922382, 0.058701,
		45.541485, 41.569958, 53.134056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698425, 40.951061, 53.683273>,  <45.274231, 40.924290, 53.092968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698425, 40.951061, 53.683273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.600555, 41.325729, 53.583046>,  <45.541836, 41.550529, 53.522911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.600555, 41.325729, 53.583046>,  <45.698425, 40.951061, 53.683273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600555, 41.325729, 53.583046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149284, 0.218946, 0.964249,
		0.958045, 0.273330, 0.086260,
		-0.244672, 0.936671, -0.250564,
		45.527153, 41.606731, 53.507877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049622, 41.329571, 54.118534>,  <45.698425, 40.951061, 53.683273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049622, 41.329571, 54.118534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.733070, 41.537567, 53.989956>,  <45.543140, 41.662365, 53.912807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.733070, 41.537567, 53.989956>,  <46.049622, 41.329571, 54.118534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733070, 41.537567, 53.989956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281314, 0.157073, 0.946673,
		0.542754, 0.839604, 0.021977,
		-0.791379, 0.519993, -0.321445,
		45.495655, 41.693565, 53.893524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962433, 42.112591, 54.433235>,  <46.049622, 41.329571, 54.118534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962433, 42.112591, 54.433235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.596703, 41.996269, 54.320488>,  <45.377266, 41.926476, 54.252838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.596703, 41.996269, 54.320488>,  <45.962433, 42.112591, 54.433235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596703, 41.996269, 54.320488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333030, 0.143832, 0.931882,
		-0.230449, 0.945911, -0.228353,
		-0.914322, -0.290800, -0.281871,
		45.322407, 41.909031, 54.235928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513828, 42.534088, 54.800770>,  <45.962433, 42.112591, 54.433235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513828, 42.534088, 54.800770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.251465, 42.257271, 54.680202>,  <45.094048, 42.091179, 54.607861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.251465, 42.257271, 54.680202>,  <45.513828, 42.534088, 54.800770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251465, 42.257271, 54.680202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415002, -0.002937, 0.909816,
		-0.630519, 0.721848, -0.285273,
		-0.655911, -0.692045, -0.301420,
		45.054691, 42.049656, 54.589775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813015, 42.749481, 55.023098>,  <45.513828, 42.534088, 54.800770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813015, 42.749481, 55.023098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.766762, 42.359314, 54.948071>,  <44.739010, 42.125214, 54.903053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.766762, 42.359314, 54.948071>,  <44.813015, 42.749481, 55.023098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766762, 42.359314, 54.948071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620932, -0.076405, 0.780132,
		-0.775289, 0.206675, -0.596836,
		-0.115632, -0.975422, -0.187567,
		44.732071, 42.066689, 54.891800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087269, 42.652302, 55.140369>,  <44.813015, 42.749481, 55.023098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087269, 42.652302, 55.140369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.243809, 42.285027, 55.164963>,  <44.337734, 42.064663, 55.179718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.243809, 42.285027, 55.164963>,  <44.087269, 42.652302, 55.140369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243809, 42.285027, 55.164963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514902, -0.163109, 0.841588,
		-0.762707, -0.361011, -0.536609,
		0.391348, -0.918187, 0.061481,
		44.361214, 42.009571, 55.183407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331352, 42.790260, 54.752144>,  <44.087269, 42.652302, 55.140369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331352, 42.790260, 54.752144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.220551, 43.170250, 54.809864>,  <43.154068, 43.398243, 54.844498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.220551, 43.170250, 54.809864>,  <43.331352, 42.790260, 54.752144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220551, 43.170250, 54.809864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368354, 0.243694, -0.897178,
		-0.887458, -0.195372, -0.417430,
		-0.277008, 0.949970, 0.144302,
		43.137447, 43.455242, 54.853153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116211, 42.992435, 54.107548>,  <43.331352, 42.790260, 54.752144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116211, 42.992435, 54.107548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.198082, 43.336456, 54.294491>,  <43.247204, 43.542870, 54.406658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.198082, 43.336456, 54.294491>,  <43.116211, 42.992435, 54.107548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198082, 43.336456, 54.294491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307527, 0.396789, -0.864862,
		-0.929266, 0.320741, -0.183276,
		0.204675, 0.860049, 0.467359,
		43.259483, 43.594471, 54.434700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902691, 43.457672, 53.640709>,  <43.116211, 42.992435, 54.107548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902691, 43.457672, 53.640709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.147766, 43.661674, 53.882210>,  <43.294811, 43.784077, 54.027111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.147766, 43.661674, 53.882210>,  <42.902691, 43.457672, 53.640709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147766, 43.661674, 53.882210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427449, 0.428712, -0.795923,
		-0.664757, 0.745723, 0.044666,
		0.612687, 0.510003, 0.603748,
		43.331573, 43.814674, 54.063335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899143, 44.107861, 53.437675>,  <42.902691, 43.457672, 53.640709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899143, 44.107861, 53.437675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.247879, 44.077744, 53.631264>,  <43.457119, 44.059673, 53.747417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.247879, 44.077744, 53.631264>,  <42.899143, 44.107861, 53.437675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247879, 44.077744, 53.631264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437171, 0.565180, -0.699609,
		-0.220859, 0.821525, 0.525660,
		0.871839, -0.075288, 0.483972,
		43.509430, 44.055157, 53.776455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242496, 44.742039, 53.370964>,  <42.899143, 44.107861, 53.437675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242496, 44.742039, 53.370964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.522400, 44.469177, 53.455826>,  <43.690342, 44.305462, 53.506741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.522400, 44.469177, 53.455826>,  <43.242496, 44.742039, 53.370964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522400, 44.469177, 53.455826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525725, 0.290665, -0.799454,
		0.483684, 0.670958, 0.562019,
		0.699759, -0.682151, 0.212150,
		43.732327, 44.264530, 53.519470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
