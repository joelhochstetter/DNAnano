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
	<23.843376, 35.000572, 35.188141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232281, 34.968819, 35.100140>,  <24.465624, 34.949764, 35.047340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232281, 34.968819, 35.100140>,  <23.843376, 35.000572, 35.188141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232281, 34.968819, 35.100140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214887, 0.674571, 0.706242,
		0.092341, -0.733929, 0.672920,
		0.972264, -0.079387, -0.220002,
		24.523960, 34.945004, 35.034138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270414, 34.706810, 35.735561>,  <23.843376, 35.000572, 35.188141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270414, 34.706810, 35.735561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524965, 34.925030, 35.517422>,  <24.677696, 35.055962, 35.386539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524965, 34.925030, 35.517422>,  <24.270414, 34.706810, 35.735561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524965, 34.925030, 35.517422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276293, 0.498863, 0.821461,
		0.720201, -0.673432, 0.166732,
		0.636375, 0.545550, -0.545346,
		24.715878, 35.088696, 35.353817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839113, 34.794147, 36.246387>,  <24.270414, 34.706810, 35.735561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839113, 34.794147, 36.246387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929832, 35.052505, 35.954803>,  <24.984264, 35.207520, 35.779854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929832, 35.052505, 35.954803>,  <24.839113, 34.794147, 36.246387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929832, 35.052505, 35.954803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562629, 0.524058, 0.639384,
		0.794991, -0.555147, -0.244542,
		0.226798, 0.645891, -0.728963,
		24.997871, 35.246273, 35.736115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532871, 34.831707, 36.253277>,  <24.839113, 34.794147, 36.246387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532871, 34.831707, 36.253277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380495, 35.180244, 36.129574>,  <25.289068, 35.389366, 36.055351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380495, 35.180244, 36.129574>,  <25.532871, 34.831707, 36.253277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380495, 35.180244, 36.129574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579214, 0.485606, 0.654751,
		0.720691, 0.070298, -0.689683,
		-0.380942, 0.871347, -0.309254,
		25.266212, 35.441650, 36.036797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049372, 35.346424, 36.212582>,  <25.532871, 34.831707, 36.253277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049372, 35.346424, 36.212582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700930, 35.532276, 36.276199>,  <25.491863, 35.643787, 36.314369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700930, 35.532276, 36.276199>,  <26.049372, 35.346424, 36.212582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700930, 35.532276, 36.276199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394599, 0.469436, 0.789887,
		0.292344, 0.750833, -0.592271,
		-0.871107, 0.464628, 0.159041,
		25.439598, 35.671665, 36.323910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148951, 36.095036, 36.345676>,  <26.049372, 35.346424, 36.212582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148951, 36.095036, 36.345676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815985, 35.967972, 36.527302>,  <25.616205, 35.891731, 36.636276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815985, 35.967972, 36.527302>,  <26.148951, 36.095036, 36.345676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815985, 35.967972, 36.527302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354601, 0.324316, 0.876970,
		-0.425841, 0.891016, -0.157322,
		-0.832417, -0.317663, 0.454062,
		25.566259, 35.872673, 36.663521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944181, 36.658886, 36.757587>,  <26.148951, 36.095036, 36.345676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944181, 36.658886, 36.757587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773344, 36.321274, 36.887329>,  <25.670841, 36.118706, 36.965176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773344, 36.321274, 36.887329>,  <25.944181, 36.658886, 36.757587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773344, 36.321274, 36.887329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262535, 0.227513, 0.937717,
		-0.865256, 0.485646, 0.124418,
		-0.427092, -0.844029, 0.324356,
		25.645216, 36.068066, 36.984634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449762, 36.881641, 37.247742>,  <25.944181, 36.658886, 36.757587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449762, 36.881641, 37.247742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585661, 36.512482, 37.320213>,  <25.667200, 36.290985, 37.363697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585661, 36.512482, 37.320213>,  <25.449762, 36.881641, 37.247742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585661, 36.512482, 37.320213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257083, 0.276432, 0.926009,
		-0.904698, -0.268032, 0.331180,
		0.339749, -0.922900, 0.181181,
		25.687586, 36.235611, 37.374569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104418, 36.642979, 37.861897>,  <25.449762, 36.881641, 37.247742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104418, 36.642979, 37.861897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440189, 36.430225, 37.817245>,  <25.641653, 36.302574, 37.790455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440189, 36.430225, 37.817245>,  <25.104418, 36.642979, 37.861897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440189, 36.430225, 37.817245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340309, 0.354275, 0.871022,
		-0.423731, -0.769151, 0.478392,
		0.839429, -0.531880, -0.111632,
		25.692019, 36.270660, 37.783756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241062, 36.479637, 38.546322>,  <25.104418, 36.642979, 37.861897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241062, 36.479637, 38.546322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596901, 36.455952, 38.365166>,  <25.810404, 36.441738, 38.256474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596901, 36.455952, 38.365166>,  <25.241062, 36.479637, 38.546322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596901, 36.455952, 38.365166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406791, 0.553608, 0.726663,
		0.207693, -0.830669, 0.516577,
		0.889598, -0.059217, -0.452889,
		25.863781, 36.438187, 38.229298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716036, 36.221928, 39.017693>,  <25.241062, 36.479637, 38.546322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716036, 36.221928, 39.017693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949072, 36.411430, 38.753529>,  <26.088894, 36.525131, 38.595028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949072, 36.411430, 38.753529>,  <25.716036, 36.221928, 39.017693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949072, 36.411430, 38.753529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488823, 0.444929, 0.750393,
		0.649339, -0.759996, 0.027630,
		0.582589, 0.473754, -0.660414,
		26.123848, 36.553558, 38.555405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403635, 36.147568, 38.975529>,  <25.716036, 36.221928, 39.017693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403635, 36.147568, 38.975529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332268, 36.526417, 38.868851>,  <26.289448, 36.753727, 38.804844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332268, 36.526417, 38.868851>,  <26.403635, 36.147568, 38.975529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332268, 36.526417, 38.868851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570929, 0.320401, 0.755899,
		0.801378, -0.017396, -0.597906,
		-0.178420, 0.947122, -0.266694,
		26.278742, 36.810555, 38.788841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226843, 36.622807, 39.554268>,  <26.403635, 36.147568, 38.975529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226843, 36.622807, 39.554268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916502, 36.440144, 39.728401>,  <25.730297, 36.330547, 39.832882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916502, 36.440144, 39.728401>,  <26.226843, 36.622807, 39.554268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916502, 36.440144, 39.728401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329157, -0.295685, -0.896787,
		0.538243, -0.839069, 0.079097,
		-0.775854, -0.456654, 0.435336,
		25.683746, 36.303146, 39.859001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831045, 37.317528, 39.356945>,  <26.226843, 36.622807, 39.554268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831045, 37.317528, 39.356945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211866, 37.410114, 39.276920>,  <26.440359, 37.465664, 39.228905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211866, 37.410114, 39.276920>,  <25.831045, 37.317528, 39.356945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211866, 37.410114, 39.276920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125557, -0.300715, -0.945413,
		-0.278989, 0.925201, -0.257234,
		0.952051, 0.231462, -0.200062,
		26.497482, 37.479553, 39.216904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868063, 37.682266, 38.697296>,  <25.831045, 37.317528, 39.356945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868063, 37.682266, 38.697296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222015, 37.505287, 38.755577>,  <26.434387, 37.399101, 38.790546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222015, 37.505287, 38.755577>,  <25.868063, 37.682266, 38.697296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222015, 37.505287, 38.755577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060845, -0.419892, -0.905532,
		0.461826, 0.792423, -0.398475,
		0.884881, -0.442444, 0.145702,
		26.487480, 37.372555, 38.799286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289076, 37.704674, 37.997063>,  <25.868063, 37.682266, 38.697296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289076, 37.704674, 37.997063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388651, 37.409912, 38.248459>,  <26.448397, 37.233055, 38.399296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388651, 37.409912, 38.248459>,  <26.289076, 37.704674, 37.997063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388651, 37.409912, 38.248459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184552, -0.673120, -0.716136,
		0.950774, 0.062284, -0.303562,
		0.248938, -0.736906, 0.628490,
		26.463333, 37.188839, 38.437004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785191, 37.222446, 37.702667>,  <26.289076, 37.704674, 37.997063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785191, 37.222446, 37.702667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603628, 36.987259, 37.970474>,  <26.494692, 36.846146, 38.131161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603628, 36.987259, 37.970474>,  <26.785191, 37.222446, 37.702667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603628, 36.987259, 37.970474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169149, -0.680865, -0.712609,
		0.874849, -0.436704, 0.209593,
		-0.453904, -0.587972, 0.669522,
		26.467457, 36.810867, 38.171329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015537, 36.454395, 37.600227>,  <26.785191, 37.222446, 37.702667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015537, 36.454395, 37.600227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662739, 36.454884, 37.788731>,  <26.451059, 36.455177, 37.901833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662739, 36.454884, 37.788731>,  <27.015537, 36.454395, 37.600227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662739, 36.454884, 37.788731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357530, -0.653202, -0.667457,
		0.307008, -0.757183, 0.576559,
		-0.881997, 0.001223, 0.471254,
		26.398140, 36.455250, 37.930107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865032, 35.820976, 37.665848>,  <27.015537, 36.454395, 37.600227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865032, 35.820976, 37.665848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494778, 35.967731, 37.702915>,  <26.272625, 36.055786, 37.725155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494778, 35.967731, 37.702915>,  <26.865032, 35.820976, 37.665848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494778, 35.967731, 37.702915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298462, -0.557298, -0.774816,
		-0.232625, -0.744857, 0.625358,
		-0.925638, 0.366888, 0.092670,
		26.217087, 36.077797, 37.730717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509699, 35.254826, 37.478378>,  <26.865032, 35.820976, 37.665848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509699, 35.254826, 37.478378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246193, 35.551533, 37.428082>,  <26.088089, 35.729557, 37.397903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246193, 35.551533, 37.428082>,  <26.509699, 35.254826, 37.478378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246193, 35.551533, 37.428082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314672, -0.423468, -0.849504,
		-0.683380, -0.520057, 0.512379,
		-0.658766, 0.741765, -0.125743,
		26.048563, 35.774063, 37.390358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706661, 35.009167, 37.377434>,  <26.509699, 35.254826, 37.478378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706661, 35.009167, 37.377434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804415, 35.365982, 37.225357>,  <25.863066, 35.580070, 37.134113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804415, 35.365982, 37.225357>,  <25.706661, 35.009167, 37.377434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804415, 35.365982, 37.225357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413974, -0.258574, -0.872792,
		-0.876871, 0.370683, 0.306090,
		0.244382, 0.892039, -0.380189,
		25.877729, 35.633595, 37.111301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073469, 34.857067, 37.343723>,  <25.706661, 35.009167, 37.377434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073469, 34.857067, 37.343723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182684, 35.236984, 37.282612>,  <25.248213, 35.464935, 37.245945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182684, 35.236984, 37.282612>,  <25.073469, 34.857067, 37.343723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182684, 35.236984, 37.282612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445402, -0.015954, -0.895189,
		-0.852682, 0.312469, 0.418684,
		0.273039, 0.949794, -0.152778,
		25.264595, 35.521923, 37.236778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472977, 35.378883, 37.262478>,  <25.073469, 34.857067, 37.343723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472977, 35.378883, 37.262478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800894, 35.514400, 37.077801>,  <24.997644, 35.595711, 36.966995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800894, 35.514400, 37.077801>,  <24.472977, 35.378883, 37.262478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800894, 35.514400, 37.077801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500349, 0.031591, -0.865247,
		-0.278556, 0.940330, 0.195414,
		0.819791, 0.338795, -0.461693,
		25.046831, 35.616039, 36.939293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.279179, 35.872574, 36.758705>,  <24.472977, 35.378883, 37.262478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.279179, 35.872574, 36.758705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636658, 35.745350, 36.632122>,  <24.851145, 35.669014, 36.556171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636658, 35.745350, 36.632122>,  <24.279179, 35.872574, 36.758705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.636658, 35.745350, 36.632122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393511, -0.216831, -0.893383,
		0.215533, 0.922942, -0.318942,
		0.893697, -0.318061, -0.316453,
		24.904766, 35.649933, 36.537186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811455, 36.331898, 36.857582>,  <24.279179, 35.872574, 36.758705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811455, 36.331898, 36.857582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154064, 36.296520, 36.654190>,  <25.359629, 36.275295, 36.532154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154064, 36.296520, 36.654190>,  <24.811455, 36.331898, 36.857582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154064, 36.296520, 36.654190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505709, -0.340621, -0.792613,
		-0.103097, 0.936031, -0.336476,
		0.856522, -0.088443, -0.508476,
		25.411020, 36.269989, 36.501648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707346, 36.531307, 36.158783>,  <24.811455, 36.331898, 36.857582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707346, 36.531307, 36.158783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028091, 36.295307, 36.121014>,  <25.220539, 36.153709, 36.098351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028091, 36.295307, 36.121014>,  <24.707346, 36.531307, 36.158783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028091, 36.295307, 36.121014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387101, -0.392587, -0.834283,
		0.455154, 0.705535, -0.543190,
		0.801865, -0.589997, -0.094426,
		25.268650, 36.118309, 36.092686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.705973, 36.481464, 35.491131>,  <24.707346, 36.531307, 36.158783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.705973, 36.481464, 35.491131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913160, 36.173042, 35.639286>,  <25.037474, 35.987991, 35.728180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913160, 36.173042, 35.639286>,  <24.705973, 36.481464, 35.491131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913160, 36.173042, 35.639286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334897, -0.581226, -0.741633,
		0.787116, 0.260102, -0.559281,
		0.517969, -0.771053, 0.370385,
		25.068550, 35.941727, 35.750401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226570, 36.286167, 34.940132>,  <24.705973, 36.481464, 35.491131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226570, 36.286167, 34.940132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165293, 35.956547, 35.158295>,  <25.128527, 35.758774, 35.289192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165293, 35.956547, 35.158295>,  <25.226570, 36.286167, 34.940132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165293, 35.956547, 35.158295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191264, -0.516758, -0.834494,
		0.969510, -0.232156, -0.078448,
		-0.153194, -0.824054, 0.545405,
		25.119335, 35.709332, 35.321915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435356, 35.789368, 34.516663>,  <25.226570, 36.286167, 34.940132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.435356, 35.789368, 34.516663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212498, 35.579414, 34.774059>,  <25.078783, 35.453442, 34.928497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212498, 35.579414, 34.774059>,  <25.435356, 35.789368, 34.516663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212498, 35.579414, 34.774059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322385, -0.577411, -0.750110,
		0.765283, -0.625372, 0.152485,
		-0.557144, -0.524888, 0.643493,
		25.045355, 35.421947, 34.967106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070860, 35.948097, 34.363777>,  <25.435356, 35.789368, 34.516663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070860, 35.948097, 34.363777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341833, 36.073124, 34.097427>,  <26.504417, 36.148140, 33.937618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341833, 36.073124, 34.097427>,  <26.070860, 35.948097, 34.363777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341833, 36.073124, 34.097427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432669, 0.562753, 0.704348,
		0.594876, -0.765252, 0.245992,
		0.677436, 0.312566, -0.665869,
		26.545063, 36.166893, 33.897667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728590, 36.070469, 34.759190>,  <26.070860, 35.948097, 34.363777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728590, 36.070469, 34.759190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825119, 36.254917, 34.417633>,  <26.883036, 36.365585, 34.212700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825119, 36.254917, 34.417633>,  <26.728590, 36.070469, 34.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825119, 36.254917, 34.417633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377036, 0.766220, 0.520337,
		0.894208, -0.447516, 0.011045,
		0.241322, 0.461125, -0.853889,
		26.897516, 36.393253, 34.161465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336523, 36.444931, 34.918854>,  <26.728590, 36.070469, 34.759190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336523, 36.444931, 34.918854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167156, 36.636406, 34.611198>,  <27.065536, 36.751293, 34.426605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167156, 36.636406, 34.611198>,  <27.336523, 36.444931, 34.918854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167156, 36.636406, 34.611198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343049, 0.870495, 0.352924,
		0.838473, -0.114418, -0.532796,
		-0.423415, 0.478692, -0.769138,
		27.040133, 36.780014, 34.380459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825132, 36.916210, 34.717278>,  <27.336523, 36.444931, 34.918854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825132, 36.916210, 34.717278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471651, 37.041683, 34.578327>,  <27.259563, 37.116966, 34.494957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471651, 37.041683, 34.578327>,  <27.825132, 36.916210, 34.717278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471651, 37.041683, 34.578327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202632, 0.925428, 0.320192,
		0.421913, 0.212565, -0.881366,
		-0.883702, 0.313686, -0.347378,
		27.206541, 37.135788, 34.474113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972338, 37.537640, 34.462082>,  <27.825132, 36.916210, 34.717278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972338, 37.537640, 34.462082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573456, 37.555054, 34.486359>,  <27.334126, 37.565502, 34.500927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573456, 37.555054, 34.486359>,  <27.972338, 37.537640, 34.462082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573456, 37.555054, 34.486359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065253, 0.903145, 0.424349,
		-0.036343, 0.427124, -0.903463,
		-0.997207, 0.043532, 0.060694,
		27.274294, 37.568111, 34.504566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814623, 38.264027, 34.505421>,  <27.972338, 37.537640, 34.462082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814623, 38.264027, 34.505421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504810, 38.060459, 34.655678>,  <27.318924, 37.938320, 34.745831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504810, 38.060459, 34.655678>,  <27.814623, 38.264027, 34.505421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504810, 38.060459, 34.655678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172988, 0.741648, 0.648099,
		-0.608424, 0.436990, -0.662465,
		-0.774529, -0.508918, 0.375643,
		27.272451, 37.907784, 34.768372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389317, 38.759491, 34.345497>,  <27.814623, 38.264027, 34.505421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389317, 38.759491, 34.345497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112190, 38.478470, 34.410519>,  <26.945913, 38.309856, 34.449532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112190, 38.478470, 34.410519>,  <27.389317, 38.759491, 34.345497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112190, 38.478470, 34.410519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531349, 0.649762, 0.543579,
		-0.487516, 0.290225, -0.823466,
		-0.692817, -0.702552, 0.162558,
		26.904345, 38.267704, 34.459286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741308, 39.021130, 34.058697>,  <27.389317, 38.759491, 34.345497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741308, 39.021130, 34.058697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729527, 38.781002, 34.378384>,  <26.722458, 38.636925, 34.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729527, 38.781002, 34.378384>,  <26.741308, 39.021130, 34.058697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729527, 38.781002, 34.378384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377274, 0.747100, 0.547271,
		-0.925633, -0.285405, -0.248490,
		-0.029453, -0.600321, 0.799216,
		26.720690, 38.600906, 34.618149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987303, 38.964127, 34.374451>,  <26.741308, 39.021130, 34.058697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987303, 38.964127, 34.374451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253044, 38.892563, 34.664726>,  <26.412489, 38.849625, 34.838894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253044, 38.892563, 34.664726>,  <25.987303, 38.964127, 34.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253044, 38.892563, 34.664726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435598, 0.696314, 0.570439,
		-0.607365, -0.695082, 0.384667,
		0.664351, -0.178905, 0.725693,
		26.452349, 38.838890, 34.882435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613430, 39.031582, 34.938725>,  <25.987303, 38.964127, 34.374451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613430, 39.031582, 34.938725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002003, 39.094715, 35.009613>,  <26.235147, 39.132595, 35.052147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002003, 39.094715, 35.009613>,  <25.613430, 39.031582, 34.938725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002003, 39.094715, 35.009613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210831, 0.916804, 0.339148,
		-0.108944, -0.366822, 0.923890,
		0.971433, 0.157836, 0.177217,
		26.293432, 39.142067, 35.062778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414249, 39.675922, 35.263302>,  <25.613430, 39.031582, 34.938725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414249, 39.675922, 35.263302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554153, 39.729729, 35.634155>,  <25.638096, 39.762012, 35.856667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554153, 39.729729, 35.634155>,  <25.414249, 39.675922, 35.263302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554153, 39.729729, 35.634155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817931, -0.526379, -0.232194,
		0.456788, 0.839542, -0.294132,
		0.349762, 0.134516, 0.927131,
		25.659082, 39.770084, 35.912296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193258, 39.828892, 35.183750>,  <25.414249, 39.675922, 35.263302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193258, 39.828892, 35.183750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109337, 39.665810, 35.539223>,  <26.058985, 39.567959, 35.752506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109337, 39.665810, 35.539223>,  <26.193258, 39.828892, 35.183750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109337, 39.665810, 35.539223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706234, -0.691768, -0.150635,
		0.676178, 0.596016, 0.433069,
		-0.209802, -0.407704, 0.888684,
		26.046396, 39.543499, 35.805828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782591, 39.764389, 35.665386>,  <26.193258, 39.828892, 35.183750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782591, 39.764389, 35.665386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518499, 39.465874, 35.699200>,  <26.360044, 39.286762, 35.719490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518499, 39.465874, 35.699200>,  <26.782591, 39.764389, 35.665386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518499, 39.465874, 35.699200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633512, -0.613817, -0.471053,
		0.403433, -0.257447, 0.878045,
		-0.660230, -0.746290, 0.084538,
		26.320431, 39.241985, 35.724560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130167, 39.259487, 35.895496>,  <26.782591, 39.764389, 35.665386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130167, 39.259487, 35.895496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809490, 39.112404, 35.706997>,  <26.617085, 39.024155, 35.593895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809490, 39.112404, 35.706997>,  <27.130167, 39.259487, 35.895496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809490, 39.112404, 35.706997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568981, -0.711043, -0.413132,
		-0.183168, -0.599339, 0.779258,
		-0.801692, -0.367710, -0.471253,
		26.568983, 39.002090, 35.565620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149385, 38.548664, 35.940094>,  <27.130167, 39.259487, 35.895496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149385, 38.548664, 35.940094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948147, 38.642189, 35.607292>,  <26.827404, 38.698303, 35.407612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948147, 38.642189, 35.607292>,  <27.149385, 38.548664, 35.940094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948147, 38.642189, 35.607292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452224, -0.749165, -0.483989,
		-0.736468, -0.619744, 0.271169,
		-0.503099, 0.233813, -0.831999,
		26.797218, 38.712334, 35.357693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883329, 37.856586, 35.645744>,  <27.149385, 38.548664, 35.940094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883329, 37.856586, 35.645744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825790, 38.082272, 35.320541>,  <26.791267, 38.217682, 35.125420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825790, 38.082272, 35.320541>,  <26.883329, 37.856586, 35.645744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825790, 38.082272, 35.320541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308169, -0.755158, -0.578592,
		-0.940394, -0.333771, -0.065246,
		-0.143846, 0.564211, -0.813003,
		26.782637, 38.251534, 35.076641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505239, 37.396400, 35.209785>,  <26.883329, 37.856586, 35.645744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505239, 37.396400, 35.209785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648989, 37.677402, 34.964077>,  <26.735239, 37.846004, 34.816650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648989, 37.677402, 34.964077>,  <26.505239, 37.396400, 35.209785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648989, 37.677402, 34.964077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105254, -0.684565, -0.721314,
		-0.927239, 0.194567, -0.319957,
		0.359375, 0.702506, -0.614276,
		26.756802, 37.888153, 34.779793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036900, 37.470463, 34.660854>,  <26.505239, 37.396400, 35.209785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036900, 37.470463, 34.660854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420725, 37.545017, 34.576473>,  <26.651020, 37.589748, 34.525845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420725, 37.545017, 34.576473>,  <26.036900, 37.470463, 34.660854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420725, 37.545017, 34.576473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024697, -0.802251, -0.596476,
		-0.280410, 0.567146, -0.774413,
		0.959563, 0.186383, -0.210952,
		26.708593, 37.600933, 34.513187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093882, 37.576256, 33.902359>,  <26.036900, 37.470463, 34.660854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093882, 37.576256, 33.902359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437336, 37.449867, 34.063808>,  <26.643408, 37.374035, 34.160679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437336, 37.449867, 34.063808>,  <26.093882, 37.576256, 33.902359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437336, 37.449867, 34.063808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022664, -0.763242, -0.645715,
		0.512087, 0.563581, -0.648185,
		0.858635, -0.315972, 0.403619,
		26.694927, 37.355076, 34.184895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496796, 37.388035, 33.381180>,  <26.093882, 37.576256, 33.902359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496796, 37.388035, 33.381180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680103, 37.206738, 33.687008>,  <26.790089, 37.097961, 33.870502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680103, 37.206738, 33.687008>,  <26.496796, 37.388035, 33.381180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680103, 37.206738, 33.687008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006883, -0.858375, -0.512977,
		0.888786, 0.240345, -0.390249,
		0.458271, -0.453240, 0.764566,
		26.817585, 37.070766, 33.916378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880869, 37.065483, 33.033451>,  <26.496796, 37.388035, 33.381180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880869, 37.065483, 33.033451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881376, 36.895107, 33.395351>,  <26.881681, 36.792881, 33.612492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881376, 36.895107, 33.395351>,  <26.880869, 37.065483, 33.033451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881376, 36.895107, 33.395351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027252, -0.904431, -0.425748,
		0.999628, -0.024116, -0.012754,
		0.001268, -0.425937, 0.904752,
		26.881756, 36.767326, 33.666779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388718, 36.601391, 33.002048>,  <26.880869, 37.065483, 33.033451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388718, 36.601391, 33.002048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141514, 36.462418, 33.284142>,  <26.993193, 36.379032, 33.453396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141514, 36.462418, 33.284142>,  <27.388718, 36.601391, 33.002048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141514, 36.462418, 33.284142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018582, -0.890341, -0.454915,
		0.785953, -0.294246, 0.543781,
		-0.618007, -0.347437, 0.705234,
		26.956112, 36.358185, 33.495712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481531, 35.950317, 32.917324>,  <27.388718, 36.601391, 33.002048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481531, 35.950317, 32.917324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124510, 35.994839, 33.092117>,  <26.910297, 36.021553, 33.196995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124510, 35.994839, 33.092117>,  <27.481531, 35.950317, 32.917324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124510, 35.994839, 33.092117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308649, -0.857290, -0.412055,
		0.328760, -0.502657, 0.799533,
		-0.892554, 0.111308, 0.436987,
		26.856743, 36.028233, 33.223213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415306, 35.322124, 33.318180>,  <27.481531, 35.950317, 32.917324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415306, 35.322124, 33.318180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075602, 35.513977, 33.229897>,  <26.871778, 35.629089, 33.176926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075602, 35.513977, 33.229897>,  <27.415306, 35.322124, 33.318180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075602, 35.513977, 33.229897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374352, -0.841798, -0.388892,
		-0.372316, -0.247649, 0.894456,
		-0.849259, 0.479632, -0.220707,
		26.820824, 35.657867, 33.163685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616468, 35.802841, 33.914688>,  <27.415306, 35.322124, 33.318180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616468, 35.802841, 33.914688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466761, 35.464245, 34.066147>,  <27.376936, 35.261086, 34.157021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466761, 35.464245, 34.066147>,  <27.616468, 35.802841, 33.914688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466761, 35.464245, 34.066147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897331, -0.433601, -0.082384,
		0.233919, 0.308938, 0.921867,
		-0.374271, -0.846491, 0.378647,
		27.354479, 35.210297, 34.179741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940960, 35.457817, 34.563240>,  <27.616468, 35.802841, 33.914688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940960, 35.457817, 34.563240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765049, 35.176903, 34.339317>,  <27.659502, 35.008354, 34.204964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765049, 35.176903, 34.339317>,  <27.940960, 35.457817, 34.563240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765049, 35.176903, 34.339317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879434, -0.463184, -0.109805,
		-0.182181, -0.540606, 0.821313,
		-0.439780, -0.702286, -0.559810,
		27.633116, 34.966217, 34.171375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680967, 35.808083, 34.381001>,  <27.940960, 35.457817, 34.563240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680967, 35.808083, 34.381001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991983, 36.059414, 34.391037>,  <29.178593, 36.210213, 34.397057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991983, 36.059414, 34.391037>,  <28.680967, 35.808083, 34.381001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991983, 36.059414, 34.391037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308391, -0.346252, -0.886005,
		-0.548017, 0.696643, -0.462996,
		0.777543, 0.628330, 0.025087,
		29.225246, 36.247913, 34.398563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716818, 36.371254, 33.826771>,  <28.680967, 35.808083, 34.381001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716818, 36.371254, 33.826771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091450, 36.287132, 33.938904>,  <29.316229, 36.236660, 34.006184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091450, 36.287132, 33.938904>,  <28.716818, 36.371254, 33.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091450, 36.287132, 33.938904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210755, -0.301090, -0.930015,
		0.279994, 0.930116, -0.237672,
		0.936582, -0.210308, 0.280330,
		29.372425, 36.224041, 34.023003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054567, 36.819435, 33.433971>,  <28.716818, 36.371254, 33.826771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054567, 36.819435, 33.433971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308609, 36.515392, 33.488934>,  <29.461035, 36.332966, 33.521912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308609, 36.515392, 33.488934>,  <29.054567, 36.819435, 33.433971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308609, 36.515392, 33.488934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183461, -0.024359, -0.982725,
		0.750323, 0.649342, 0.123980,
		0.635105, -0.760106, 0.137406,
		29.499140, 36.287361, 33.530155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514677, 36.901005, 32.934593>,  <29.054567, 36.819435, 33.433971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514677, 36.901005, 32.934593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581322, 36.523006, 33.047180>,  <29.621309, 36.296207, 33.114735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581322, 36.523006, 33.047180>,  <29.514677, 36.901005, 32.934593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581322, 36.523006, 33.047180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266915, -0.231579, -0.935482,
		0.949209, 0.230992, 0.213649,
		0.166612, -0.944994, 0.281472,
		29.631306, 36.239510, 33.131622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185858, 36.598595, 32.660183>,  <29.514677, 36.901005, 32.934593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185858, 36.598595, 32.660183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917992, 36.306992, 32.716892>,  <29.757273, 36.132030, 32.750916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917992, 36.306992, 32.716892>,  <30.185858, 36.598595, 32.660183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917992, 36.306992, 32.716892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251263, -0.402037, -0.880473,
		0.698868, -0.553999, 0.452403,
		-0.669664, -0.729007, 0.141771,
		29.717093, 36.088291, 32.759422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653999, 37.174751, 32.765839>,  <30.185858, 36.598595, 32.660183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653999, 37.174751, 32.765839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280729, 37.287968, 32.677231>,  <30.056768, 37.355900, 32.624065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280729, 37.287968, 32.677231>,  <30.653999, 37.174751, 32.765839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280729, 37.287968, 32.677231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177995, 0.171525, 0.968967,
		0.312257, 0.943645, -0.109682,
		-0.933174, 0.283044, -0.221523,
		30.000776, 37.372879, 32.610775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724575, 37.185673, 33.522583>,  <30.653999, 37.174751, 32.765839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724575, 37.185673, 33.522583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346378, 37.248493, 33.408478>,  <30.119459, 37.286186, 33.340015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346378, 37.248493, 33.408478>,  <30.724575, 37.185673, 33.522583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346378, 37.248493, 33.408478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277187, 0.071624, 0.958143,
		0.170908, 0.984990, -0.024188,
		-0.945494, 0.157049, -0.285267,
		30.062731, 37.295609, 33.322899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360317, 37.134781, 34.146858>,  <30.724575, 37.185673, 33.522583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360317, 37.134781, 34.146858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035343, 37.170097, 33.916328>,  <29.840359, 37.191288, 33.778011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035343, 37.170097, 33.916328>,  <30.360317, 37.134781, 34.146858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035343, 37.170097, 33.916328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583050, -0.122167, 0.803198,
		0.000504, 0.988575, 0.150729,
		-0.812436, 0.088288, -0.576328,
		29.791613, 37.196583, 33.743431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915602, 37.672401, 34.228474>,  <30.360317, 37.134781, 34.146858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915602, 37.672401, 34.228474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662928, 37.400021, 34.080269>,  <29.511324, 37.236591, 33.991344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662928, 37.400021, 34.080269>,  <29.915602, 37.672401, 34.228474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662928, 37.400021, 34.080269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542126, 0.046388, 0.839016,
		-0.554142, 0.730857, -0.398465,
		-0.631685, -0.680952, -0.370511,
		29.473423, 37.195736, 33.969116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211687, 37.954281, 34.195572>,  <29.915602, 37.672401, 34.228474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211687, 37.954281, 34.195572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217016, 37.560566, 34.266006>,  <29.220213, 37.324337, 34.308266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217016, 37.560566, 34.266006>,  <29.211687, 37.954281, 34.195572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217016, 37.560566, 34.266006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625057, 0.129254, 0.769804,
		-0.780466, -0.120316, -0.613512,
		0.013321, -0.984285, 0.176082,
		29.221012, 37.265282, 34.318832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332439, 37.967617, 33.410469>,  <29.211687, 37.954281, 34.195572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332439, 37.967617, 33.410469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348808, 38.302505, 33.192337>,  <29.358629, 38.503437, 33.061459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348808, 38.302505, 33.192337>,  <29.332439, 37.967617, 33.410469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348808, 38.302505, 33.192337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651713, -0.436071, -0.620574,
		-0.757361, -0.330003, -0.563474,
		0.040923, 0.837222, -0.545330,
		29.361086, 38.553673, 33.028736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392855, 37.733433, 32.670628>,  <29.332439, 37.967617, 33.410469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392855, 37.733433, 32.670628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542311, 38.102112, 32.712330>,  <29.631985, 38.323318, 32.737350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542311, 38.102112, 32.712330>,  <29.392855, 37.733433, 32.670628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542311, 38.102112, 32.712330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676325, -0.193785, -0.710656,
		-0.634805, 0.336042, -0.695772,
		0.373640, 0.921696, 0.104258,
		29.654402, 38.378620, 32.743607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327816, 38.257530, 32.125546>,  <29.392855, 37.733433, 32.670628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327816, 38.257530, 32.125546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676836, 38.319477, 32.310879>,  <29.886248, 38.356644, 32.422077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676836, 38.319477, 32.310879>,  <29.327816, 38.257530, 32.125546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676836, 38.319477, 32.310879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471651, -0.019910, -0.881560,
		-0.127301, 0.987734, -0.090416,
		0.872548, 0.154869, 0.463332,
		29.938601, 38.365936, 32.449879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572823, 38.937820, 31.876656>,  <29.327816, 38.257530, 32.125546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572823, 38.937820, 31.876656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890791, 38.731426, 32.004318>,  <30.081572, 38.607590, 32.080914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890791, 38.731426, 32.004318>,  <29.572823, 38.937820, 31.876656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890791, 38.731426, 32.004318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495734, 0.249114, -0.831979,
		0.349783, 0.819574, 0.453818,
		0.794921, -0.515985, 0.319155,
		30.129267, 38.576630, 32.100063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206644, 39.323246, 31.749519>,  <29.572823, 38.937820, 31.876656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206644, 39.323246, 31.749519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346813, 38.950455, 31.786667>,  <30.430914, 38.726780, 31.808954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346813, 38.950455, 31.786667>,  <30.206644, 39.323246, 31.749519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346813, 38.950455, 31.786667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505489, 0.104722, -0.856454,
		0.788470, 0.347064, 0.507801,
		0.350423, -0.931976, 0.092867,
		30.451941, 38.670860, 31.814528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869518, 39.423878, 31.512197>,  <30.206644, 39.323246, 31.749519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869518, 39.423878, 31.512197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853468, 39.025715, 31.477438>,  <30.843838, 38.786816, 31.456581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853468, 39.025715, 31.477438>,  <30.869518, 39.423878, 31.512197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853468, 39.025715, 31.477438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728720, 0.030350, -0.684138,
		0.683635, -0.090779, 0.724157,
		-0.040127, -0.995409, -0.086901,
		30.841431, 38.727093, 31.451368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524998, 39.165352, 31.367828>,  <30.869518, 39.423878, 31.512197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524998, 39.165352, 31.367828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296085, 38.862007, 31.243004>,  <31.158737, 38.680000, 31.168110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296085, 38.862007, 31.243004>,  <31.524998, 39.165352, 31.367828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296085, 38.862007, 31.243004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635932, -0.170137, -0.752757,
		0.517770, -0.629237, 0.579633,
		-0.572280, -0.758363, -0.312060,
		31.124401, 38.634499, 31.149385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962790, 38.649200, 31.246790>,  <31.524998, 39.165352, 31.367828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962790, 38.649200, 31.246790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637602, 38.563053, 31.030384>,  <31.442490, 38.511364, 30.900541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637602, 38.563053, 31.030384>,  <31.962790, 38.649200, 31.246790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637602, 38.563053, 31.030384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572577, -0.126534, -0.810028,
		0.105999, -0.968300, 0.226184,
		-0.812970, -0.215369, -0.541014,
		31.393711, 38.498444, 30.868080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197083, 38.225037, 30.795580>,  <31.962790, 38.649200, 31.246790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197083, 38.225037, 30.795580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830685, 38.283001, 30.645937>,  <31.610846, 38.317780, 30.556150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830685, 38.283001, 30.645937>,  <32.197083, 38.225037, 30.795580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830685, 38.283001, 30.645937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390385, 0.106962, -0.914417,
		-0.092492, -0.983647, -0.154547,
		-0.915994, 0.144909, -0.374108,
		31.555887, 38.326473, 30.533705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028374, 37.748920, 30.302931>,  <32.197083, 38.225037, 30.795580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028374, 37.748920, 30.302931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797665, 38.059376, 30.200996>,  <31.659239, 38.245647, 30.139835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797665, 38.059376, 30.200996>,  <32.028374, 37.748920, 30.302931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797665, 38.059376, 30.200996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450527, 0.042002, -0.891774,
		-0.681435, -0.629165, -0.373897,
		-0.576777, 0.776136, -0.254834,
		31.624632, 38.292217, 30.124546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016903, 37.592155, 29.532541>,  <32.028374, 37.748920, 30.302931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016903, 37.592155, 29.532541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899946, 37.970615, 29.588106>,  <31.829771, 38.197693, 29.621445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899946, 37.970615, 29.588106>,  <32.016903, 37.592155, 29.532541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899946, 37.970615, 29.588106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579675, 0.290891, -0.761156,
		-0.760579, -0.142036, -0.633518,
		-0.292396, 0.946154, 0.138910,
		31.812227, 38.254463, 29.629780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922033, 37.860836, 28.835321>,  <32.016903, 37.592155, 29.532541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922033, 37.860836, 28.835321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958984, 38.186264, 29.064957>,  <31.981155, 38.381519, 29.202738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958984, 38.186264, 29.064957>,  <31.922033, 37.860836, 28.835321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958984, 38.186264, 29.064957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409469, 0.494508, -0.766679,
		-0.907635, 0.305895, -0.287448,
		0.092378, 0.813566, 0.574087,
		31.986698, 38.430332, 29.237183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769728, 38.357006, 28.317518>,  <31.922033, 37.860836, 28.835321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769728, 38.357006, 28.317518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931496, 38.569191, 28.615524>,  <32.028557, 38.696503, 28.794329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931496, 38.569191, 28.615524>,  <31.769728, 38.357006, 28.317518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931496, 38.569191, 28.615524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545268, 0.514143, -0.662072,
		-0.734252, 0.673990, -0.081316,
		0.404422, 0.530467, 0.745016,
		32.052822, 38.728333, 28.839029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888842, 39.144745, 27.990969>,  <31.769728, 38.357006, 28.317518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888842, 39.144745, 27.990969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129795, 39.087605, 28.305098>,  <32.274368, 39.053322, 28.493574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129795, 39.087605, 28.305098>,  <31.888842, 39.144745, 27.990969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129795, 39.087605, 28.305098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694137, 0.579498, -0.427032,
		-0.394092, 0.802357, 0.448235,
		0.602383, -0.142847, 0.785321,
		32.310509, 39.044750, 28.540693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030685, 39.831890, 28.249575>,  <31.888842, 39.144745, 27.990969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030685, 39.831890, 28.249575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322632, 39.602287, 28.398067>,  <32.497799, 39.464527, 28.487164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322632, 39.602287, 28.398067>,  <32.030685, 39.831890, 28.249575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322632, 39.602287, 28.398067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680451, 0.558067, -0.474918,
		0.065435, 0.599230, 0.797898,
		0.729866, -0.574007, 0.371230,
		32.541592, 39.430084, 28.509436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529068, 40.236210, 28.548052>,  <32.030685, 39.831890, 28.249575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529068, 40.236210, 28.548052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723511, 39.895195, 28.471243>,  <32.840176, 39.690586, 28.425158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723511, 39.895195, 28.471243>,  <32.529068, 40.236210, 28.548052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723511, 39.895195, 28.471243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765482, 0.521397, -0.377071,
		0.421589, 0.036306, 0.906060,
		0.486107, -0.852541, -0.192024,
		32.869343, 39.639431, 28.413635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089668, 40.277912, 28.985634>,  <32.529068, 40.236210, 28.548052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089668, 40.277912, 28.985634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161110, 40.055798, 28.660732>,  <33.203976, 39.922527, 28.465792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161110, 40.055798, 28.660732>,  <33.089668, 40.277912, 28.985634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161110, 40.055798, 28.660732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650457, 0.686037, -0.325974,
		0.738247, -0.470118, 0.483716,
		0.178600, -0.555286, -0.812256,
		33.214691, 39.889214, 28.417055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835808, 40.240974, 28.889345>,  <33.089668, 40.277912, 28.985634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835808, 40.240974, 28.889345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708778, 40.144894, 28.522423>,  <33.632561, 40.087246, 28.302269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708778, 40.144894, 28.522423>,  <33.835808, 40.240974, 28.889345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708778, 40.144894, 28.522423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618633, 0.680669, -0.392407,
		0.718638, -0.692095, -0.067566,
		-0.317573, -0.240200, -0.917306,
		33.613506, 40.072834, 28.247231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460621, 40.188625, 28.436649>,  <33.835808, 40.240974, 28.889345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460621, 40.188625, 28.436649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150326, 40.224842, 28.186838>,  <33.964149, 40.246574, 28.036951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150326, 40.224842, 28.186838>,  <34.460621, 40.188625, 28.436649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150326, 40.224842, 28.186838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508146, 0.676455, -0.533101,
		0.374196, -0.730897, -0.570760,
		-0.775735, 0.090546, -0.624529,
		33.917606, 40.252007, 27.999479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765450, 40.154579, 27.774935>,  <34.460621, 40.188625, 28.436649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765450, 40.154579, 27.774935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405270, 40.311466, 27.699726>,  <34.189163, 40.405598, 27.654600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405270, 40.311466, 27.699726>,  <34.765450, 40.154579, 27.774935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405270, 40.311466, 27.699726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402397, 0.587079, -0.702435,
		-0.165127, -0.708167, -0.686464,
		-0.900450, 0.392222, -0.188022,
		34.135136, 40.429134, 27.643320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707844, 40.257408, 27.090183>,  <34.765450, 40.154579, 27.774935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707844, 40.257408, 27.090183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437218, 40.507965, 27.245043>,  <34.274841, 40.658302, 27.337957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437218, 40.507965, 27.245043>,  <34.707844, 40.257408, 27.090183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437218, 40.507965, 27.245043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370547, 0.743932, -0.556111,
		-0.636358, -0.232791, -0.735430,
		-0.676567, 0.626397, 0.387148,
		34.234249, 40.695885, 27.361187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374401, 40.553082, 26.636484>,  <34.707844, 40.257408, 27.090183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374401, 40.553082, 26.636484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302631, 40.823254, 26.922588>,  <34.259571, 40.985359, 27.094252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302631, 40.823254, 26.922588>,  <34.374401, 40.553082, 26.636484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302631, 40.823254, 26.922588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133940, 0.737061, -0.662421,
		-0.974611, -0.023052, -0.222714,
		-0.179424, 0.675433, 0.715260,
		34.248806, 41.025883, 27.137167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036564, 41.032116, 26.273947>,  <34.374401, 40.553082, 26.636484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036564, 41.032116, 26.273947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118790, 41.227818, 26.612976>,  <34.168125, 41.345238, 26.816393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118790, 41.227818, 26.612976>,  <34.036564, 41.032116, 26.273947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118790, 41.227818, 26.612976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014419, 0.864459, -0.502496,
		-0.978538, 0.115515, 0.170646,
		0.205562, 0.489251, 0.847572,
		34.180458, 41.374592, 26.867249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625099, 41.667419, 26.241177>,  <34.036564, 41.032116, 26.273947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625099, 41.667419, 26.241177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936356, 41.722115, 26.486387>,  <34.123108, 41.754932, 26.633514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936356, 41.722115, 26.486387>,  <33.625099, 41.667419, 26.241177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936356, 41.722115, 26.486387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207091, 0.865579, -0.455946,
		-0.592969, 0.481742, 0.645223,
		0.778139, 0.136742, 0.613026,
		34.169796, 41.763138, 26.670296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554165, 42.312931, 26.551838>,  <33.625099, 41.667419, 26.241177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554165, 42.312931, 26.551838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944466, 42.232552, 26.586555>,  <34.178646, 42.184322, 26.607386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944466, 42.232552, 26.586555>,  <33.554165, 42.312931, 26.551838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944466, 42.232552, 26.586555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217738, 0.850425, -0.478923,
		0.022427, 0.486207, 0.873556,
		0.975749, -0.200948, 0.086793,
		34.237190, 42.172268, 26.612593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899002, 42.998913, 26.608877>,  <33.554165, 42.312931, 26.551838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899002, 42.998913, 26.608877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209106, 42.767479, 26.507523>,  <34.395168, 42.628616, 26.446711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209106, 42.767479, 26.507523>,  <33.899002, 42.998913, 26.608877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209106, 42.767479, 26.507523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365596, 0.738168, -0.566963,
		0.515079, 0.346909, 0.783803,
		0.775263, -0.578586, -0.253387,
		34.441685, 42.593903, 26.431507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416779, 43.469181, 26.807344>,  <33.899002, 42.998913, 26.608877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416779, 43.469181, 26.807344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568531, 43.189373, 26.565105>,  <34.659580, 43.021488, 26.419762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568531, 43.189373, 26.565105>,  <34.416779, 43.469181, 26.807344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568531, 43.189373, 26.565105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702556, 0.643703, -0.303418,
		0.602070, -0.310355, 0.735657,
		0.379377, -0.699519, -0.605595,
		34.682343, 42.979519, 26.383427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155373, 43.525444, 26.802034>,  <34.416779, 43.469181, 26.807344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155373, 43.525444, 26.802034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073875, 43.333702, 26.460579>,  <35.024975, 43.218655, 26.255705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073875, 43.333702, 26.460579>,  <35.155373, 43.525444, 26.802034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073875, 43.333702, 26.460579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654392, 0.581852, -0.482927,
		0.728188, -0.657010, 0.195138,
		-0.203747, -0.479359, -0.853641,
		35.012753, 43.189896, 26.204487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811283, 43.376381, 26.477219>,  <35.155373, 43.525444, 26.802034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811283, 43.376381, 26.477219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543934, 43.356663, 26.180344>,  <35.383522, 43.344830, 26.002218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543934, 43.356663, 26.180344>,  <35.811283, 43.376381, 26.477219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543934, 43.356663, 26.180344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669358, 0.395295, -0.629048,
		0.324394, -0.917230, -0.231208,
		-0.668377, -0.049298, -0.742187,
		35.343422, 43.341873, 25.957687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242321, 43.275120, 25.844080>,  <35.811283, 43.376381, 26.477219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242321, 43.275120, 25.844080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893848, 43.392986, 25.687002>,  <35.684765, 43.463707, 25.592754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893848, 43.392986, 25.687002>,  <36.242321, 43.275120, 25.844080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893848, 43.392986, 25.687002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490710, 0.497345, -0.715438,
		-0.015509, -0.815978, -0.577874,
		-0.871185, 0.294664, -0.392695,
		35.632492, 43.481384, 25.569193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318939, 43.117931, 25.161963>,  <36.242321, 43.275120, 25.844080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318939, 43.117931, 25.161963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040432, 43.404995, 25.167366>,  <35.873329, 43.577232, 25.170609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040432, 43.404995, 25.167366>,  <36.318939, 43.117931, 25.161963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040432, 43.404995, 25.167366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466995, 0.467203, -0.750757,
		-0.545098, -0.516417, -0.660440,
		-0.696264, 0.717659, 0.013508,
		35.831554, 43.620293, 25.171419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064190, 43.218319, 24.392942>,  <36.318939, 43.117931, 25.161963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064190, 43.218319, 24.392942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948757, 43.563900, 24.558016>,  <35.879498, 43.771248, 24.657061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948757, 43.563900, 24.558016>,  <36.064190, 43.218319, 24.392942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948757, 43.563900, 24.558016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392211, 0.499869, -0.772206,
		-0.873435, -0.060989, -0.483106,
		-0.288586, 0.863951, 0.412683,
		35.862183, 43.823086, 24.681820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756474, 43.588398, 23.997683>,  <36.064190, 43.218319, 24.392942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756474, 43.588398, 23.997683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843620, 43.893768, 24.240898>,  <35.895908, 44.076992, 24.386827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843620, 43.893768, 24.240898>,  <35.756474, 43.588398, 23.997683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843620, 43.893768, 24.240898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432440, 0.483001, -0.761384,
		-0.874946, 0.428821, -0.224907,
		0.217867, 0.763428, 0.608039,
		35.908981, 44.122795, 24.423309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696228, 44.192322, 23.615129>,  <35.756474, 43.588398, 23.997683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696228, 44.192322, 23.615129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948334, 44.313797, 23.900936>,  <36.099598, 44.386684, 24.072420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948334, 44.313797, 23.900936>,  <35.696228, 44.192322, 23.615129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948334, 44.313797, 23.900936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534046, 0.498416, -0.682917,
		-0.563522, 0.812006, 0.151951,
		0.630268, 0.303690, 0.714517,
		36.137413, 44.404903, 24.115292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695480, 44.894417, 23.529190>,  <35.696228, 44.192322, 23.615129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695480, 44.894417, 23.529190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018681, 44.816154, 23.751488>,  <36.212601, 44.769196, 23.884867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018681, 44.816154, 23.751488>,  <35.695480, 44.894417, 23.529190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018681, 44.816154, 23.751488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528691, 0.657081, -0.537336,
		-0.260035, 0.727985, 0.634365,
		0.808002, -0.195657, 0.555743,
		36.261082, 44.757458, 23.918211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963898, 45.551674, 23.784945>,  <35.695480, 44.894417, 23.529190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963898, 45.551674, 23.784945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239990, 45.262928, 23.764984>,  <36.405647, 45.089680, 23.753008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239990, 45.262928, 23.764984>,  <35.963898, 45.551674, 23.784945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239990, 45.262928, 23.764984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581139, 0.594121, -0.556146,
		0.431108, 0.354871, 0.829585,
		0.690234, -0.721863, -0.049901,
		36.447060, 45.046368, 23.750013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585098, 45.897881, 23.777264>,  <35.963898, 45.551674, 23.784945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585098, 45.897881, 23.777264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727303, 45.539928, 23.669334>,  <36.812626, 45.325157, 23.604576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727303, 45.539928, 23.669334>,  <36.585098, 45.897881, 23.777264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727303, 45.539928, 23.669334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682484, 0.445783, -0.579217,
		0.638611, 0.021769, 0.769222,
		0.355515, -0.894876, -0.269825,
		36.833958, 45.271465, 23.588387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287464, 45.841557, 23.967720>,  <36.585098, 45.897881, 23.777264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287464, 45.841557, 23.967720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237793, 45.586781, 23.663380>,  <37.207989, 45.433914, 23.480776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237793, 45.586781, 23.663380>,  <37.287464, 45.841557, 23.967720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237793, 45.586781, 23.663380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750033, 0.441766, -0.492233,
		0.649639, -0.631786, 0.422866,
		-0.124178, -0.636937, -0.760849,
		37.200539, 45.395699, 23.435125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896824, 45.532364, 23.911198>,  <37.287464, 45.841557, 23.967720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896824, 45.532364, 23.911198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715946, 45.489948, 23.556959>,  <37.607422, 45.464500, 23.344416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715946, 45.489948, 23.556959>,  <37.896824, 45.532364, 23.911198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715946, 45.489948, 23.556959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849135, 0.252658, -0.463825,
		0.272936, -0.961727, -0.024209,
		-0.452190, -0.106038, -0.885596,
		37.580288, 45.458138, 23.291281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382778, 45.248573, 23.540655>,  <37.896824, 45.532364, 23.911198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382778, 45.248573, 23.540655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142021, 45.400463, 23.259645>,  <37.997566, 45.491596, 23.091040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142021, 45.400463, 23.259645>,  <38.382778, 45.248573, 23.540655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142021, 45.400463, 23.259645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796656, 0.346513, -0.495246,
		0.055377, -0.857752, -0.511072,
		-0.601891, 0.379723, -0.702522,
		37.961452, 45.514381, 23.048889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683804, 45.134388, 22.950062>,  <38.382778, 45.248573, 23.540655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683804, 45.134388, 22.950062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422691, 45.424049, 22.861090>,  <38.266026, 45.597847, 22.807707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422691, 45.424049, 22.861090>,  <38.683804, 45.134388, 22.950062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422691, 45.424049, 22.861090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676518, 0.425135, -0.601318,
		-0.340885, -0.543007, -0.767425,
		-0.652779, 0.724157, -0.222433,
		38.226856, 45.641296, 22.794359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875679, 45.192703, 22.255266>,  <38.683804, 45.134388, 22.950062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875679, 45.192703, 22.255266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675117, 45.515621, 22.379759>,  <38.554779, 45.709373, 22.454454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675117, 45.515621, 22.379759>,  <38.875679, 45.192703, 22.255266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675117, 45.515621, 22.379759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496313, 0.563021, -0.660819,
		-0.708706, -0.176870, -0.682973,
		-0.501407, 0.807294, 0.311233,
		38.524696, 45.757809, 22.473129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847187, 45.570724, 21.623034>,  <38.875679, 45.192703, 22.255266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847187, 45.570724, 21.623034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759335, 45.825748, 21.918406>,  <38.706623, 45.978764, 22.095629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759335, 45.825748, 21.918406>,  <38.847187, 45.570724, 21.623034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759335, 45.825748, 21.918406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553581, 0.704700, -0.443787,
		-0.803313, 0.311312, -0.507714,
		-0.219630, 0.637561, 0.738430,
		38.693447, 46.017017, 22.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897873, 46.177536, 21.238836>,  <38.847187, 45.570724, 21.623034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897873, 46.177536, 21.238836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926750, 46.278355, 21.624844>,  <38.944077, 46.338844, 21.856449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926750, 46.278355, 21.624844>,  <38.897873, 46.177536, 21.238836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926750, 46.278355, 21.624844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806484, 0.554519, -0.205164,
		-0.586832, 0.793084, -0.163235,
		0.072196, 0.252043, 0.965019,
		38.948410, 46.353966, 21.914349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826118, 46.967583, 21.369007>,  <38.897873, 46.177536, 21.238836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826118, 46.967583, 21.369007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048252, 46.799297, 21.655951>,  <39.181534, 46.698326, 21.828117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048252, 46.799297, 21.655951>,  <38.826118, 46.967583, 21.369007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048252, 46.799297, 21.655951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748332, 0.629080, -0.210373,
		-0.362771, 0.653652, 0.664181,
		0.555334, -0.420710, 0.717361,
		39.214851, 46.673084, 21.871159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172256, 47.519917, 21.780376>,  <38.826118, 46.967583, 21.369007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172256, 47.519917, 21.780376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390614, 47.184860, 21.787895>,  <39.521629, 46.983826, 21.792406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390614, 47.184860, 21.787895>,  <39.172256, 47.519917, 21.780376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390614, 47.184860, 21.787895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827678, 0.535639, -0.167451,
		0.130195, 0.106970, 0.985701,
		0.545892, -0.837645, 0.018799,
		39.554382, 46.933567, 21.793535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765560, 47.596176, 22.147499>,  <39.172256, 47.519917, 21.780376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765560, 47.596176, 22.147499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884098, 47.300175, 21.905979>,  <39.955223, 47.122574, 21.761066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884098, 47.300175, 21.905979>,  <39.765560, 47.596176, 22.147499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884098, 47.300175, 21.905979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854112, 0.488248, -0.179180,
		0.427399, -0.462614, 0.776736,
		0.296349, -0.740001, -0.603801,
		39.973003, 47.078175, 21.724838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410316, 47.360924, 22.362707>,  <39.765560, 47.596176, 22.147499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410316, 47.360924, 22.362707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336315, 47.343067, 21.970018>,  <40.291912, 47.332352, 21.734406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336315, 47.343067, 21.970018>,  <40.410316, 47.360924, 22.362707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336315, 47.343067, 21.970018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809584, 0.559364, -0.178004,
		0.557088, -0.827718, -0.067338,
		-0.185004, -0.044648, -0.981723,
		40.280815, 47.329674, 21.675501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080967, 47.248676, 22.101639>,  <40.410316, 47.360924, 22.362707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080967, 47.248676, 22.101639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860577, 47.372890, 21.791801>,  <40.728344, 47.447418, 21.605900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860577, 47.372890, 21.791801>,  <41.080967, 47.248676, 22.101639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860577, 47.372890, 21.791801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815727, 0.396293, -0.421357,
		0.176120, -0.864013, -0.471660,
		-0.550974, 0.310537, -0.774594,
		40.695286, 47.466053, 21.559423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477093, 47.262398, 21.523907>,  <41.080967, 47.248676, 22.101639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477093, 47.262398, 21.523907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197910, 47.540867, 21.456732>,  <41.030403, 47.707951, 21.416428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197910, 47.540867, 21.456732>,  <41.477093, 47.262398, 21.523907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197910, 47.540867, 21.456732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699194, 0.611716, -0.370044,
		-0.154886, -0.375693, -0.913710,
		-0.697953, 0.696175, -0.167935,
		40.988525, 47.749718, 21.406351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889111, 47.661140, 21.845627>,  <41.477093, 47.262398, 21.523907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889111, 47.661140, 21.845627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203148, 47.642048, 22.092644>,  <42.391571, 47.630592, 22.240854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203148, 47.642048, 22.092644>,  <41.889111, 47.661140, 21.845627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203148, 47.642048, 22.092644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607794, -0.251344, 0.753268,
		0.119258, -0.966720, -0.226341,
		0.785088, -0.047735, 0.617541,
		42.438675, 47.627728, 22.277906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873817, 47.099766, 22.125488>,  <41.889111, 47.661140, 21.845627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873817, 47.099766, 22.125488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054077, 47.354530, 22.375694>,  <42.162231, 47.507389, 22.525818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054077, 47.354530, 22.375694>,  <41.873817, 47.099766, 22.125488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054077, 47.354530, 22.375694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687513, -0.199335, 0.698278,
		0.569425, -0.744724, 0.348053,
		0.450645, 0.636907, 0.625514,
		42.189270, 47.545601, 22.563349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926796, 46.781357, 22.786343>,  <41.873817, 47.099766, 22.125488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926796, 46.781357, 22.786343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956886, 47.174988, 22.850748>,  <41.974941, 47.411167, 22.889391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956886, 47.174988, 22.850748>,  <41.926796, 46.781357, 22.786343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956886, 47.174988, 22.850748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657953, -0.072348, 0.749575,
		0.749292, -0.162326, 0.642037,
		0.075225, 0.984081, 0.161013,
		41.979454, 47.470211, 22.899052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218674, 47.028355, 23.453012>,  <41.926796, 46.781357, 22.786343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218674, 47.028355, 23.453012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919769, 47.246597, 23.301270>,  <41.740425, 47.377544, 23.210224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919769, 47.246597, 23.301270>,  <42.218674, 47.028355, 23.453012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919769, 47.246597, 23.301270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594939, -0.294960, 0.747694,
		0.296051, 0.784419, 0.545014,
		-0.747263, 0.545606, -0.379358,
		41.695591, 47.410278, 23.187462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919579, 47.458149, 24.062166>,  <42.218674, 47.028355, 23.453012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919579, 47.458149, 24.062166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660023, 47.466557, 23.757929>,  <41.504288, 47.471600, 23.575386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660023, 47.466557, 23.757929>,  <41.919579, 47.458149, 24.062166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660023, 47.466557, 23.757929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759019, -0.087787, 0.645123,
		-0.053213, 0.995917, 0.072914,
		-0.648890, 0.021015, -0.760592,
		41.465355, 47.472862, 23.529751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402454, 47.815346, 24.283602>,  <41.919579, 47.458149, 24.062166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402454, 47.815346, 24.283602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241219, 47.589874, 23.995214>,  <41.144478, 47.454594, 23.822182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241219, 47.589874, 23.995214>,  <41.402454, 47.815346, 24.283602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241219, 47.589874, 23.995214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819723, -0.127902, 0.558297,
		-0.406911, 0.816034, -0.410502,
		-0.403085, -0.563675, -0.720967,
		41.120293, 47.420773, 23.778925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705536, 48.020645, 24.192154>,  <41.402454, 47.815346, 24.283602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705536, 48.020645, 24.192154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720150, 47.646160, 24.052341>,  <40.728920, 47.421471, 23.968454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720150, 47.646160, 24.052341>,  <40.705536, 48.020645, 24.192154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720150, 47.646160, 24.052341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837710, -0.219404, 0.500103,
		-0.544891, 0.274532, -0.792291,
		0.036537, -0.936212, -0.349530,
		40.731110, 47.365295, 23.947483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009342, 47.856686, 23.975769>,  <40.705536, 48.020645, 24.192154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009342, 47.856686, 23.975769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192200, 47.504490, 24.025993>,  <40.301914, 47.293175, 24.056128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192200, 47.504490, 24.025993>,  <40.009342, 47.856686, 23.975769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192200, 47.504490, 24.025993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749350, -0.305261, 0.587614,
		-0.479057, -0.362713, -0.799340,
		0.457142, -0.880486, 0.125561,
		40.329342, 47.240345, 24.063662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508091, 47.480156, 23.966173>,  <40.009342, 47.856686, 23.975769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508091, 47.480156, 23.966173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775570, 47.257156, 24.162960>,  <39.936058, 47.123356, 24.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775570, 47.257156, 24.162960>,  <39.508091, 47.480156, 23.966173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775570, 47.257156, 24.162960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736696, -0.407264, 0.539829,
		-0.100592, -0.723416, -0.683045,
		0.668701, -0.557499, 0.491970,
		39.976181, 47.089905, 24.310551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219891, 46.834133, 24.122046>,  <39.508091, 47.480156, 23.966173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219891, 46.834133, 24.122046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524807, 46.803444, 24.379116>,  <39.707756, 46.785030, 24.533358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524807, 46.803444, 24.379116>,  <39.219891, 46.834133, 24.122046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524807, 46.803444, 24.379116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587666, -0.498151, 0.637569,
		0.271235, -0.863689, -0.424820,
		0.762286, -0.076721, 0.642677,
		39.753494, 46.780426, 24.571918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992321, 46.180809, 24.428295>,  <39.219891, 46.834133, 24.122046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992321, 46.180809, 24.428295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261639, 46.344398, 24.674679>,  <39.423229, 46.442554, 24.822510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261639, 46.344398, 24.674679>,  <38.992321, 46.180809, 24.428295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261639, 46.344398, 24.674679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463602, -0.415455, 0.782605,
		0.575971, -0.812487, -0.090123,
		0.673299, 0.408977, 0.615960,
		39.463627, 46.467091, 24.859467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311626, 45.738842, 24.788076>,  <38.992321, 46.180809, 24.428295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311626, 45.738842, 24.788076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318817, 46.068714, 25.014204>,  <39.323132, 46.266636, 25.149881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318817, 46.068714, 25.014204>,  <39.311626, 45.738842, 24.788076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318817, 46.068714, 25.014204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512326, -0.477946, 0.713505,
		0.858603, -0.302452, 0.413913,
		0.017973, 0.824676, 0.565320,
		39.324207, 46.316116, 25.183800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305950, 45.299599, 25.313492>,  <39.311626, 45.738842, 24.788076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305950, 45.299599, 25.313492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251148, 45.668594, 25.457853>,  <39.218269, 45.889992, 25.544470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251148, 45.668594, 25.457853>,  <39.305950, 45.299599, 25.313492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251148, 45.668594, 25.457853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552099, -0.373612, 0.745386,
		0.822446, -0.097137, 0.560488,
		-0.137001, 0.922485, 0.360905,
		39.210049, 45.945339, 25.566124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450909, 45.287788, 26.102491>,  <39.305950, 45.299599, 25.313492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450909, 45.287788, 26.102491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221420, 45.604984, 26.020504>,  <39.083729, 45.795303, 25.971312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221420, 45.604984, 26.020504>,  <39.450909, 45.287788, 26.102491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221420, 45.604984, 26.020504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600441, -0.237005, 0.763741,
		0.557062, 0.561243, 0.612118,
		-0.573719, 0.792992, -0.204967,
		39.049305, 45.842880, 25.959015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424328, 45.758312, 26.771952>,  <39.450909, 45.287788, 26.102491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424328, 45.758312, 26.771952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099480, 45.828270, 26.549290>,  <38.904572, 45.870247, 26.415693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099480, 45.828270, 26.549290>,  <39.424328, 45.758312, 26.771952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099480, 45.828270, 26.549290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582993, -0.282360, 0.761835,
		-0.023933, 0.943230, 0.331276,
		-0.812125, 0.174898, -0.556654,
		38.855843, 45.880741, 26.382294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986927, 46.039661, 27.223604>,  <39.424328, 45.758312, 26.771952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986927, 46.039661, 27.223604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745018, 45.934719, 26.922827>,  <38.599873, 45.871754, 26.742361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745018, 45.934719, 26.922827>,  <38.986927, 46.039661, 27.223604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745018, 45.934719, 26.922827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707588, -0.256273, 0.658516,
		-0.365467, 0.930320, -0.030651,
		-0.604776, -0.262354, -0.751942,
		38.563587, 45.856014, 26.697245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285149, 46.234154, 27.381895>,  <38.986927, 46.039661, 27.223604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285149, 46.234154, 27.381895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238228, 45.954327, 27.099947>,  <38.210075, 45.786430, 26.930779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238228, 45.954327, 27.099947>,  <38.285149, 46.234154, 27.381895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238228, 45.954327, 27.099947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766465, -0.387554, 0.512186,
		-0.631485, 0.600338, -0.490736,
		-0.117298, -0.699569, -0.704872,
		38.203037, 45.744457, 26.888485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614773, 46.044979, 27.462603>,  <38.285149, 46.234154, 27.381895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614773, 46.044979, 27.462603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758034, 45.750526, 27.232876>,  <37.843990, 45.573856, 27.095039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758034, 45.750526, 27.232876>,  <37.614773, 46.044979, 27.462603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758034, 45.750526, 27.232876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679254, -0.627465, 0.380660,
		-0.640579, 0.253774, -0.724746,
		0.358151, -0.736129, -0.574318,
		37.865479, 45.529686, 27.060581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033871, 45.563194, 27.422588>,  <37.614773, 46.044979, 27.462603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033871, 45.563194, 27.422588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347263, 45.345039, 27.303446>,  <37.535297, 45.214146, 27.231960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347263, 45.345039, 27.303446>,  <37.033871, 45.563194, 27.422588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347263, 45.345039, 27.303446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415824, -0.816310, 0.400909,
		-0.461794, -0.190247, -0.866344,
		0.783477, -0.545384, -0.297857,
		37.582306, 45.181423, 27.214088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791573, 44.963505, 26.928663>,  <37.033871, 45.563194, 27.422588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791573, 44.963505, 26.928663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135212, 44.885502, 27.117947>,  <37.341396, 44.838699, 27.231518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135212, 44.885502, 27.117947>,  <36.791573, 44.963505, 26.928663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135212, 44.885502, 27.117947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428246, -0.780208, 0.455939,
		0.280290, -0.594345, -0.753785,
		0.859094, -0.195010, 0.473211,
		37.392941, 44.827000, 27.259911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806351, 44.307266, 27.017550>,  <36.791573, 44.963505, 26.928663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806351, 44.307266, 27.017550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085339, 44.381790, 27.294338>,  <37.252731, 44.426506, 27.460411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085339, 44.381790, 27.294338>,  <36.806351, 44.307266, 27.017550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085339, 44.381790, 27.294338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493704, -0.574968, 0.652433,
		0.519419, -0.796680, -0.309039,
		0.697468, 0.186312, 0.691973,
		37.294579, 44.437683, 27.501930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945507, 43.694927, 27.310299>,  <36.806351, 44.307266, 27.017550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945507, 43.694927, 27.310299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066967, 43.963703, 27.580498>,  <37.139843, 44.124969, 27.742617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066967, 43.963703, 27.580498>,  <36.945507, 43.694927, 27.310299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066967, 43.963703, 27.580498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568848, -0.440893, 0.694280,
		0.764334, -0.595075, 0.248353,
		0.303652, 0.671937, 0.675497,
		37.158062, 44.165283, 27.783146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134010, 43.359684, 27.902918>,  <36.945507, 43.694927, 27.310299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134010, 43.359684, 27.902918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056767, 43.732239, 28.026350>,  <37.010422, 43.955772, 28.100410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056767, 43.732239, 28.026350>,  <37.134010, 43.359684, 27.902918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056767, 43.732239, 28.026350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684403, -0.353221, 0.637830,
		0.703066, -0.088024, 0.705656,
		-0.193108, 0.931390, 0.308581,
		36.998833, 44.011654, 28.118925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135994, 43.323505, 28.577881>,  <37.134010, 43.359684, 27.902918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135994, 43.323505, 28.577881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951569, 43.676105, 28.537134>,  <36.840912, 43.887665, 28.512686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951569, 43.676105, 28.537134>,  <37.135994, 43.323505, 28.577881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951569, 43.676105, 28.537134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701090, -0.291499, 0.650770,
		0.543958, 0.371468, 0.752410,
		-0.461066, 0.881499, -0.101869,
		36.813248, 43.940556, 28.506573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973957, 43.546478, 29.267887>,  <37.135994, 43.323505, 28.577881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973957, 43.546478, 29.267887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729656, 43.767086, 29.040621>,  <36.583076, 43.899452, 28.904261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729656, 43.767086, 29.040621>,  <36.973957, 43.546478, 29.267887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729656, 43.767086, 29.040621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752947, -0.182437, 0.632288,
		0.245066, 0.813967, 0.526689,
		-0.610748, 0.551521, -0.568165,
		36.546432, 43.932541, 28.870171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574116, 44.101322, 29.753231>,  <36.973957, 43.546478, 29.267887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574116, 44.101322, 29.753231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362892, 44.007957, 29.426632>,  <36.236156, 43.951939, 29.230673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362892, 44.007957, 29.426632>,  <36.574116, 44.101322, 29.753231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362892, 44.007957, 29.426632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802198, -0.178354, 0.569797,
		-0.278621, 0.955882, -0.093058,
		-0.528061, -0.233408, -0.816500,
		36.204475, 43.937935, 29.181683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888969, 44.379402, 29.933054>,  <36.574116, 44.101322, 29.753231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888969, 44.379402, 29.933054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804001, 44.152138, 29.615044>,  <35.753021, 44.015778, 29.424236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804001, 44.152138, 29.615044>,  <35.888969, 44.379402, 29.933054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804001, 44.152138, 29.615044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774942, -0.397670, 0.491246,
		-0.595267, 0.720451, -0.355820,
		-0.212420, -0.568163, -0.795028,
		35.740276, 43.981689, 29.376535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169765, 44.422417, 29.892620>,  <35.888969, 44.379402, 29.933054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169765, 44.422417, 29.892620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281116, 44.098763, 29.685621>,  <35.347927, 43.904572, 29.561422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281116, 44.098763, 29.685621>,  <35.169765, 44.422417, 29.892620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281116, 44.098763, 29.685621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765449, -0.512355, 0.389333,
		-0.580166, 0.287737, -0.761981,
		0.278379, -0.809135, -0.517499,
		35.364632, 43.856022, 29.530371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538769, 44.043316, 29.803986>,  <35.169765, 44.422417, 29.892620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538769, 44.043316, 29.803986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842133, 43.789524, 29.744312>,  <35.024151, 43.637249, 29.708508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842133, 43.789524, 29.744312>,  <34.538769, 44.043316, 29.803986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842133, 43.789524, 29.744312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491010, -0.706691, 0.509409,
		-0.428635, -0.313089, -0.847494,
		0.758407, -0.634479, -0.149183,
		35.069656, 43.599182, 29.699558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224590, 43.506252, 29.463497>,  <34.538769, 44.043316, 29.803986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224590, 43.506252, 29.463497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536179, 43.300262, 29.606604>,  <34.723133, 43.176666, 29.692467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536179, 43.300262, 29.606604>,  <34.224590, 43.506252, 29.463497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536179, 43.300262, 29.606604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594813, -0.787448, 0.161629,
		0.198487, -0.338708, -0.919717,
		0.778974, -0.514978, 0.357766,
		34.769871, 43.145767, 29.713934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125393, 42.715462, 29.362242>,  <34.224590, 43.506252, 29.463497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125393, 42.715462, 29.362242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418148, 42.745571, 29.633144>,  <34.593800, 42.763638, 29.795685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418148, 42.745571, 29.633144>,  <34.125393, 42.715462, 29.362242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418148, 42.745571, 29.633144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486322, -0.638479, 0.596519,
		0.477319, -0.765949, -0.430685,
		0.731887, 0.075278, 0.677256,
		34.637714, 42.768154, 29.836321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373730, 42.044991, 29.521921>,  <34.125393, 42.715462, 29.362242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373730, 42.044991, 29.521921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479702, 42.264076, 29.839365>,  <34.543285, 42.395527, 30.029831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479702, 42.264076, 29.839365>,  <34.373730, 42.044991, 29.521921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479702, 42.264076, 29.839365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330987, -0.721359, 0.608348,
		0.905681, -0.423846, -0.009824,
		0.264932, 0.547718, 0.793609,
		34.559181, 42.428391, 30.077448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834805, 41.602627, 29.884691>,  <34.373730, 42.044991, 29.521921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834805, 41.602627, 29.884691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690350, 41.867275, 30.147549>,  <34.603676, 42.026062, 30.305264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690350, 41.867275, 30.147549>,  <34.834805, 41.602627, 29.884691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690350, 41.867275, 30.147549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388877, -0.747356, 0.538733,
		0.847558, -0.060992, 0.527187,
		-0.361138, 0.661618, 0.657146,
		34.582008, 42.065762, 30.344692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994274, 41.315403, 30.549101>,  <34.834805, 41.602627, 29.884691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994274, 41.315403, 30.549101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710815, 41.587921, 30.622478>,  <34.540741, 41.751431, 30.666506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710815, 41.587921, 30.622478>,  <34.994274, 41.315403, 30.549101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710815, 41.587921, 30.622478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485519, -0.659525, 0.573845,
		0.511945, 0.317589, 0.798154,
		-0.708649, 0.681296, 0.183445,
		34.498222, 41.792309, 30.677511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768093, 41.155712, 31.188112>,  <34.994274, 41.315403, 30.549101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768093, 41.155712, 31.188112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464451, 41.381878, 31.059076>,  <34.282265, 41.517578, 30.981655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464451, 41.381878, 31.059076>,  <34.768093, 41.155712, 31.188112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464451, 41.381878, 31.059076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635136, -0.534690, 0.557413,
		0.142683, 0.628024, 0.765001,
		-0.759107, 0.565414, -0.322590,
		34.236717, 41.551502, 30.962299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443283, 41.281464, 31.802189>,  <34.768093, 41.155712, 31.188112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443283, 41.281464, 31.802189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169701, 41.352047, 31.519045>,  <34.005550, 41.394398, 31.349159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169701, 41.352047, 31.519045>,  <34.443283, 41.281464, 31.802189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169701, 41.352047, 31.519045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651740, -0.583761, 0.484209,
		-0.327779, 0.792519, 0.514271,
		-0.683956, 0.176458, -0.707861,
		33.964516, 41.404984, 31.306686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794960, 41.717278, 32.039551>,  <34.443283, 41.281464, 31.802189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794960, 41.717278, 32.039551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675911, 41.489468, 31.733068>,  <33.604481, 41.352783, 31.549179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675911, 41.489468, 31.733068>,  <33.794960, 41.717278, 32.039551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675911, 41.489468, 31.733068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597495, -0.514837, 0.614770,
		-0.744595, 0.640770, -0.187061,
		-0.297620, -0.569523, -0.766202,
		33.586624, 41.318611, 31.503208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182777, 41.653194, 32.379616>,  <33.794960, 41.717278, 32.039551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182777, 41.653194, 32.379616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211842, 41.427471, 32.050671>,  <33.229279, 41.292038, 31.853304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211842, 41.427471, 32.050671>,  <33.182777, 41.653194, 32.379616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211842, 41.427471, 32.050671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675266, -0.634640, 0.375829,
		-0.733986, 0.528005, -0.427170,
		0.072660, -0.564307, -0.822361,
		33.233639, 41.258179, 31.803963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474873, 41.565548, 32.148090>,  <33.182777, 41.653194, 32.379616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474873, 41.565548, 32.148090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722713, 41.267944, 32.048046>,  <32.871418, 41.089382, 31.988020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722713, 41.267944, 32.048046>,  <32.474873, 41.565548, 32.148090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722713, 41.267944, 32.048046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632709, -0.661987, 0.401812,
		-0.464518, -0.090717, -0.880905,
		0.619599, -0.744005, -0.250107,
		32.908592, 41.044743, 31.973013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091751, 40.979706, 31.917868>,  <32.474873, 41.565548, 32.148090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091751, 40.979706, 31.917868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452435, 40.811832, 31.959400>,  <32.668846, 40.711109, 31.984320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452435, 40.811832, 31.959400>,  <32.091751, 40.979706, 31.917868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452435, 40.811832, 31.959400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426605, -0.824732, 0.371249,
		-0.070177, -0.379054, -0.922710,
		0.901711, -0.419686, 0.103829,
		32.722946, 40.685928, 31.990549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070110, 40.329765, 31.585615>,  <32.091751, 40.979706, 31.917868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070110, 40.329765, 31.585615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364319, 40.319611, 31.856424>,  <32.540844, 40.313519, 32.018909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364319, 40.319611, 31.856424>,  <32.070110, 40.329765, 31.585615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364319, 40.319611, 31.856424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364862, -0.856847, 0.364265,
		0.570859, -0.514946, -0.639493,
		0.735524, -0.025383, 0.677023,
		32.584976, 40.311996, 32.059532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461189, 39.721230, 31.409235>,  <32.070110, 40.329765, 31.585615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461189, 39.721230, 31.409235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516396, 39.829617, 31.790293>,  <32.549519, 39.894650, 32.018929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516396, 39.829617, 31.790293>,  <32.461189, 39.721230, 31.409235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516396, 39.829617, 31.790293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236804, -0.924923, 0.297391,
		0.961704, -0.266636, -0.063491,
		0.138020, 0.270967, 0.952642,
		32.557800, 39.910908, 32.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648682, 39.146130, 31.751448>,  <32.461189, 39.721230, 31.409235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648682, 39.146130, 31.751448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586758, 39.352089, 32.088711>,  <32.549603, 39.475666, 32.291069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586758, 39.352089, 32.088711>,  <32.648682, 39.146130, 31.751448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586758, 39.352089, 32.088711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137292, -0.856376, 0.497765,
		0.978358, -0.038699, 0.203269,
		-0.154812, 0.514900, 0.843156,
		32.540314, 39.506557, 32.341656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960876, 38.726768, 32.238361>,  <32.648682, 39.146130, 31.751448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960876, 38.726768, 32.238361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725670, 38.967716, 32.454285>,  <32.584545, 39.112286, 32.583839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725670, 38.967716, 32.454285>,  <32.960876, 38.726768, 32.238361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725670, 38.967716, 32.454285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213482, -0.759287, 0.614742,
		0.780169, 0.246240, 0.575068,
		-0.588015, 0.602369, 0.539805,
		32.549267, 39.148426, 32.616226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632320, 38.501003, 32.459301>,  <32.960876, 38.726768, 32.238361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632320, 38.501003, 32.459301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874184, 38.498901, 32.777885>,  <34.019302, 38.497639, 32.969036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874184, 38.498901, 32.777885>,  <33.632320, 38.501003, 32.459301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874184, 38.498901, 32.777885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716808, 0.439539, -0.541286,
		-0.347233, 0.898208, 0.269541,
		0.604661, -0.005257, 0.796465,
		34.055584, 38.497326, 33.016827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909199, 39.146507, 32.782700>,  <33.632320, 38.501003, 32.459301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909199, 39.146507, 32.782700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172768, 38.846519, 32.805920>,  <34.330910, 38.666527, 32.819851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172768, 38.846519, 32.805920>,  <33.909199, 39.146507, 32.782700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172768, 38.846519, 32.805920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682844, 0.564013, -0.464342,
		0.315502, 0.345603, 0.883752,
		0.658925, -0.749966, 0.058046,
		34.370445, 38.621529, 32.823334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464497, 39.382092, 33.149662>,  <33.909199, 39.146507, 32.782700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464497, 39.382092, 33.149662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571301, 39.087124, 32.901497>,  <34.635384, 38.910141, 32.752598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571301, 39.087124, 32.901497>,  <34.464497, 39.382092, 33.149662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571301, 39.087124, 32.901497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684939, 0.598091, -0.416109,
		0.677913, -0.313841, 0.664785,
		0.267010, -0.737422, -0.620415,
		34.651405, 38.865898, 32.715374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119804, 39.616905, 32.994354>,  <34.464497, 39.382092, 33.149662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119804, 39.616905, 32.994354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094925, 39.299686, 32.751965>,  <35.079998, 39.109356, 32.606533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094925, 39.299686, 32.751965>,  <35.119804, 39.616905, 32.994354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094925, 39.299686, 32.751965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772443, 0.346230, -0.532407,
		0.632031, -0.501194, 0.591051,
		-0.062200, -0.793051, -0.605972,
		35.076263, 39.061771, 32.570171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927643, 39.394417, 32.890293>,  <35.119804, 39.616905, 32.994354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927643, 39.394417, 32.890293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679924, 39.264950, 32.604156>,  <35.531292, 39.187271, 32.432476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679924, 39.264950, 32.604156>,  <35.927643, 39.394417, 32.890293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679924, 39.264950, 32.604156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694256, 0.199784, -0.691444,
		0.366712, -0.924838, 0.100983,
		-0.619298, -0.323669, -0.715338,
		35.494133, 39.167850, 32.389557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322926, 38.953785, 32.439083>,  <35.927643, 39.394417, 32.890293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322926, 38.953785, 32.439083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013908, 39.069656, 32.213070>,  <35.828499, 39.139179, 32.077461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013908, 39.069656, 32.213070>,  <36.322926, 38.953785, 32.439083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013908, 39.069656, 32.213070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634864, 0.336801, -0.695351,
		-0.011129, -0.895907, -0.444103,
		-0.772544, 0.289684, -0.565031,
		35.782146, 39.156563, 32.043560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535900, 38.719559, 31.742918>,  <36.322926, 38.953785, 32.439083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535900, 38.719559, 31.742918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260761, 39.008892, 31.718737>,  <36.095676, 39.182491, 31.704227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260761, 39.008892, 31.718737>,  <36.535900, 38.719559, 31.742918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260761, 39.008892, 31.718737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538054, 0.452208, -0.711341,
		-0.487199, -0.521822, -0.700242,
		-0.687849, 0.723332, -0.060453,
		36.054405, 39.225891, 31.700602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497860, 38.776386, 31.036867>,  <36.535900, 38.719559, 31.742918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497860, 38.776386, 31.036867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320263, 39.105007, 31.179935>,  <36.213707, 39.302177, 31.265776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320263, 39.105007, 31.179935>,  <36.497860, 38.776386, 31.036867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320263, 39.105007, 31.179935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497643, 0.558037, -0.664038,
		-0.745134, -0.116834, -0.656602,
		-0.443991, 0.821550, 0.357671,
		36.187065, 39.351471, 31.287237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292873, 39.082672, 30.479475>,  <36.497860, 38.776386, 31.036867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292873, 39.082672, 30.479475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324181, 39.367039, 30.759039>,  <36.342964, 39.537659, 30.926777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324181, 39.367039, 30.759039>,  <36.292873, 39.082672, 30.479475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324181, 39.367039, 30.759039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400345, 0.619636, -0.675111,
		-0.913016, 0.332646, -0.236112,
		0.078269, 0.710913, 0.698911,
		36.347660, 39.580311, 30.968712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078087, 39.673763, 30.173307>,  <36.292873, 39.082672, 30.479475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078087, 39.673763, 30.173307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262497, 39.811245, 30.500555>,  <36.373142, 39.893734, 30.696903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262497, 39.811245, 30.500555>,  <36.078087, 39.673763, 30.173307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262497, 39.811245, 30.500555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521121, 0.641361, -0.563106,
		-0.718253, 0.685947, 0.116573,
		0.461027, 0.343704, 0.818121,
		36.400806, 39.914356, 30.745991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172688, 40.445988, 30.120150>,  <36.078087, 39.673763, 30.173307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172688, 40.445988, 30.120150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446671, 40.331959, 30.388350>,  <36.611061, 40.263542, 30.549271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446671, 40.331959, 30.388350>,  <36.172688, 40.445988, 30.120150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446671, 40.331959, 30.388350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640437, 0.674365, -0.367523,
		-0.347391, 0.681150, 0.644480,
		0.684953, -0.285074, 0.670501,
		36.652157, 40.246437, 30.589500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384060, 41.166527, 30.470356>,  <36.172688, 40.445988, 30.120150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384060, 41.166527, 30.470356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677048, 40.914547, 30.573622>,  <36.852840, 40.763359, 30.635580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677048, 40.914547, 30.573622>,  <36.384060, 41.166527, 30.470356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677048, 40.914547, 30.573622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665847, 0.583853, -0.464504,
		0.141885, 0.512133, 0.847106,
		0.732473, -0.629949, 0.258162,
		36.896790, 40.725563, 30.651070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869949, 41.537243, 30.658205>,  <36.384060, 41.166527, 30.470356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869949, 41.537243, 30.658205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058678, 41.193954, 30.577374>,  <37.171917, 40.987980, 30.528873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058678, 41.193954, 30.577374>,  <36.869949, 41.537243, 30.658205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058678, 41.193954, 30.577374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830502, 0.509559, -0.224980,
		0.296055, -0.061677, 0.953177,
		0.471824, -0.858222, -0.202081,
		37.200226, 40.936489, 30.516748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476112, 41.670849, 30.891584>,  <36.869949, 41.537243, 30.658205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476112, 41.670849, 30.891584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536316, 41.358997, 30.648428>,  <37.572437, 41.171886, 30.502533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536316, 41.358997, 30.648428>,  <37.476112, 41.670849, 30.891584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536316, 41.358997, 30.648428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821623, 0.440609, -0.361662,
		0.549803, -0.445026, 0.706872,
		0.150505, -0.779625, -0.607892,
		37.581467, 41.125111, 30.466061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206047, 41.640011, 30.856537>,  <37.476112, 41.670849, 30.891584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206047, 41.640011, 30.856537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059250, 41.434963, 30.546045>,  <37.971172, 41.311935, 30.359751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059250, 41.434963, 30.546045>,  <38.206047, 41.640011, 30.856537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059250, 41.434963, 30.546045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757454, 0.319709, -0.569253,
		0.539980, -0.796871, 0.270956,
		-0.366994, -0.512622, -0.776230,
		37.949150, 41.281178, 30.313177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817284, 41.215542, 30.490976>,  <38.206047, 41.640011, 30.856537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817284, 41.215542, 30.490976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515472, 41.289455, 30.239090>,  <38.334385, 41.333805, 30.087959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515472, 41.289455, 30.239090>,  <38.817284, 41.215542, 30.490976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515472, 41.289455, 30.239090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635915, 0.442968, -0.631975,
		0.162164, -0.877288, -0.451739,
		-0.754530, 0.184784, -0.629714,
		38.289112, 41.344891, 30.050177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121460, 41.133369, 29.753714>,  <38.817284, 41.215542, 30.490976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121460, 41.133369, 29.753714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781315, 41.339691, 29.712105>,  <38.577229, 41.463486, 29.687140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781315, 41.339691, 29.712105>,  <39.121460, 41.133369, 29.753714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781315, 41.339691, 29.712105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432379, 0.572305, -0.696789,
		-0.299876, -0.637503, -0.709693,
		-0.850366, 0.515807, -0.104022,
		38.526203, 41.494434, 29.680899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992100, 41.343864, 29.116121>,  <39.121460, 41.133369, 29.753714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992100, 41.343864, 29.116121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740376, 41.621174, 29.256601>,  <38.589340, 41.787560, 29.340889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740376, 41.621174, 29.256601>,  <38.992100, 41.343864, 29.116121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740376, 41.621174, 29.256601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159715, 0.557629, -0.814580,
		-0.760569, -0.456528, -0.461646,
		-0.629306, 0.693276, 0.351201,
		38.551582, 41.829155, 29.361961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435333, 41.366119, 28.675255>,  <38.992100, 41.343864, 29.116121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435333, 41.366119, 28.675255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422821, 41.712662, 28.874632>,  <38.415314, 41.920586, 28.994259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422821, 41.712662, 28.874632>,  <38.435333, 41.366119, 28.675255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422821, 41.712662, 28.874632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054341, 0.499426, -0.864651,
		-0.998032, 0.000038, -0.062703,
		-0.031283, 0.866357, 0.498445,
		38.413437, 41.972569, 29.024166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059799, 41.872711, 28.153419>,  <38.435333, 41.366119, 28.675255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059799, 41.872711, 28.153419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244602, 42.079819, 28.441439>,  <38.355484, 42.204082, 28.614250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244602, 42.079819, 28.441439>,  <38.059799, 41.872711, 28.153419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244602, 42.079819, 28.441439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102599, 0.775239, -0.623281,
		-0.880922, 0.361836, 0.305043,
		0.462006, 0.517764, 0.720049,
		38.383205, 42.235149, 28.657454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944061, 42.634304, 27.978401>,  <38.059799, 41.872711, 28.153419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944061, 42.634304, 27.978401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263287, 42.633610, 28.219431>,  <38.454823, 42.633194, 28.364048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263287, 42.633610, 28.219431>,  <37.944061, 42.634304, 27.978401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263287, 42.633610, 28.219431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311584, 0.857119, -0.410198,
		-0.515766, 0.515115, 0.684574,
		0.798061, -0.001736, 0.602575,
		38.502705, 42.633091, 28.400204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160427, 43.354050, 28.187927>,  <37.944061, 42.634304, 27.978401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160427, 43.354050, 28.187927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485500, 43.129311, 28.249729>,  <38.680546, 42.994469, 28.286810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485500, 43.129311, 28.249729>,  <38.160427, 43.354050, 28.187927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485500, 43.129311, 28.249729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570839, 0.714410, -0.404674,
		0.116985, 0.417070, 0.901314,
		0.812685, -0.561846, 0.154504,
		38.729305, 42.960758, 28.296080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687721, 43.864746, 28.437176>,  <38.160427, 43.354050, 28.187927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687721, 43.864746, 28.437176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886620, 43.541481, 28.310925>,  <39.005959, 43.347523, 28.235174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886620, 43.541481, 28.310925>,  <38.687721, 43.864746, 28.437176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886620, 43.541481, 28.310925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588554, 0.581487, -0.561673,
		0.637457, 0.093526, 0.764789,
		0.497246, -0.808162, -0.315628,
		39.035793, 43.299034, 28.216236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350765, 44.153576, 28.409075>,  <38.687721, 43.864746, 28.437176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350765, 44.153576, 28.409075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382267, 43.811672, 28.203871>,  <39.401169, 43.606529, 28.080748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382267, 43.811672, 28.203871>,  <39.350765, 44.153576, 28.409075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382267, 43.811672, 28.203871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663765, 0.428909, -0.612742,
		0.743783, -0.292264, 0.601139,
		0.078751, -0.854762, -0.513010,
		39.405891, 43.555244, 28.049967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074570, 43.939331, 28.276564>,  <39.350765, 44.153576, 28.409075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074570, 43.939331, 28.276564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855782, 43.758545, 27.994698>,  <39.724510, 43.650074, 27.825577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855782, 43.758545, 27.994698>,  <40.074570, 43.939331, 28.276564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855782, 43.758545, 27.994698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655682, 0.292056, -0.696265,
		0.520488, -0.842872, 0.136598,
		-0.546968, -0.451962, -0.704667,
		39.691692, 43.622955, 27.783297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490417, 43.493191, 27.702211>,  <40.074570, 43.939331, 28.276564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490417, 43.493191, 27.702211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151546, 43.576809, 27.506826>,  <39.948223, 43.626980, 27.389595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151546, 43.576809, 27.506826>,  <40.490417, 43.493191, 27.702211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151546, 43.576809, 27.506826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512143, 0.076545, -0.855483,
		-0.141447, -0.974905, -0.171909,
		-0.847173, 0.209047, -0.488464,
		39.897396, 43.639523, 27.360287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484150, 43.035011, 27.060951>,  <40.490417, 43.493191, 27.702211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484150, 43.035011, 27.060951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227745, 43.333099, 26.987461>,  <40.073902, 43.511951, 26.943367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227745, 43.333099, 26.987461>,  <40.484150, 43.035011, 27.060951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227745, 43.333099, 26.987461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210106, -0.059861, -0.975844,
		-0.738216, -0.664127, -0.118204,
		-0.641009, 0.745219, -0.183728,
		40.035442, 43.556664, 26.932343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167011, 42.849560, 26.459789>,  <40.484150, 43.035011, 27.060951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167011, 42.849560, 26.459789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096840, 43.242851, 26.479752>,  <40.054737, 43.478825, 26.491730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096840, 43.242851, 26.479752>,  <40.167011, 42.849560, 26.459789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096840, 43.242851, 26.479752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247800, 0.093160, -0.964322,
		-0.952796, -0.156803, -0.259986,
		-0.175429, 0.983226, 0.049907,
		40.044212, 43.537819, 26.494724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600056, 43.004227, 25.949553>,  <40.167011, 42.849560, 26.459789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600056, 43.004227, 25.949553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775063, 43.354710, 26.030390>,  <39.880066, 43.564999, 26.078892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775063, 43.354710, 26.030390>,  <39.600056, 43.004227, 25.949553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775063, 43.354710, 26.030390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334785, 0.049862, -0.940974,
		-0.834564, 0.479351, -0.271525,
		0.437518, 0.876206, 0.202092,
		39.906319, 43.617573, 26.091017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424824, 43.362152, 25.353064>,  <39.600056, 43.004227, 25.949553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424824, 43.362152, 25.353064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699574, 43.590042, 25.533564>,  <39.864422, 43.726776, 25.641863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699574, 43.590042, 25.533564>,  <39.424824, 43.362152, 25.353064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699574, 43.590042, 25.533564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336386, 0.301168, -0.892268,
		-0.644246, 0.764667, 0.015217,
		0.686870, 0.569722, 0.451249,
		39.905636, 43.760960, 25.668938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386627, 44.013451, 25.020111>,  <39.424824, 43.362152, 25.353064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386627, 44.013451, 25.020111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752842, 43.973927, 25.176073>,  <39.972572, 43.950214, 25.269651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752842, 43.973927, 25.176073>,  <39.386627, 44.013451, 25.020111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752842, 43.973927, 25.176073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391746, 0.438932, -0.808625,
		-0.091245, 0.893071, 0.440566,
		0.915538, -0.098807, 0.389907,
		40.027504, 43.944283, 25.293045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695633, 44.624184, 24.941755>,  <39.386627, 44.013451, 25.020111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695633, 44.624184, 24.941755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999969, 44.368176, 24.984640>,  <40.182571, 44.214569, 25.010372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999969, 44.368176, 24.984640>,  <39.695633, 44.624184, 24.941755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999969, 44.368176, 24.984640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402716, 0.336117, -0.851379,
		0.508865, 0.690939, 0.513478,
		0.760839, -0.640022, 0.107214,
		40.228222, 44.176170, 25.016804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281372, 45.061493, 24.876329>,  <39.695633, 44.624184, 24.941755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281372, 45.061493, 24.876329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410332, 44.687851, 24.814995>,  <40.487705, 44.463665, 24.778194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410332, 44.687851, 24.814995>,  <40.281372, 45.061493, 24.876329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410332, 44.687851, 24.814995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383860, 0.277079, -0.880840,
		0.865282, 0.225119, 0.447894,
		0.322396, -0.934103, -0.153338,
		40.507050, 44.407619, 24.768993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970703, 45.077808, 24.624342>,  <40.281372, 45.061493, 24.876329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970703, 45.077808, 24.624342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836124, 44.734035, 24.470367>,  <40.755379, 44.527771, 24.377983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836124, 44.734035, 24.470367>,  <40.970703, 45.077808, 24.624342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836124, 44.734035, 24.470367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490986, 0.188716, -0.850482,
		0.803578, -0.475138, 0.358478,
		-0.336445, -0.859436, -0.384934,
		40.735191, 44.476204, 24.354887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376415, 45.023613, 24.023413>,  <40.970703, 45.077808, 24.624342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376415, 45.023613, 24.023413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137459, 44.707939, 23.966393>,  <40.994087, 44.518536, 23.932180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137459, 44.707939, 23.966393>,  <41.376415, 45.023613, 24.023413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137459, 44.707939, 23.966393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319894, -0.071501, -0.944752,
		0.735389, -0.609982, 0.295168,
		-0.597386, -0.789183, -0.142549,
		40.958244, 44.471184, 23.923628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667561, 44.541721, 23.491926>,  <41.376415, 45.023613, 24.023413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667561, 44.541721, 23.491926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276340, 44.459019, 23.481533>,  <41.041611, 44.409397, 23.475298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276340, 44.459019, 23.481533>,  <41.667561, 44.541721, 23.491926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276340, 44.459019, 23.481533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081318, -0.263893, -0.961118,
		0.191862, -0.942132, 0.274913,
		-0.978047, -0.206758, -0.025981,
		40.982925, 44.396992, 23.473738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655220, 43.907139, 23.129141>,  <41.667561, 44.541721, 23.491926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655220, 43.907139, 23.129141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313843, 44.115566, 23.124868>,  <41.109016, 44.240623, 23.122305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313843, 44.115566, 23.124868>,  <41.655220, 43.907139, 23.129141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313843, 44.115566, 23.124868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139740, -0.248528, -0.958492,
		-0.502096, -0.816530, 0.284919,
		-0.853447, 0.521070, -0.010683,
		41.057808, 44.271889, 23.121664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242268, 43.502300, 22.742702>,  <41.655220, 43.907139, 23.129141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242268, 43.502300, 22.742702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088371, 43.871502, 22.740362>,  <40.996033, 44.093021, 22.738958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088371, 43.871502, 22.740362>,  <41.242268, 43.502300, 22.742702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088371, 43.871502, 22.740362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039668, 0.010200, -0.999161,
		-0.922171, -0.384651, -0.040538,
		-0.384742, 0.923005, -0.005852,
		40.972950, 44.148403, 22.738607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841278, 43.614761, 22.121450>,  <41.242268, 43.502300, 22.742702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841278, 43.614761, 22.121450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801678, 43.310673, 21.864618>,  <40.777916, 43.128220, 21.710518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801678, 43.310673, 21.864618>,  <40.841278, 43.614761, 22.121450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801678, 43.310673, 21.864618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197351, -0.617434, 0.761464,
		-0.975321, 0.202101, -0.088903,
		-0.099001, -0.760217, -0.642081,
		40.771976, 43.082607, 21.671993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249290, 43.336964, 22.356741>,  <40.841278, 43.614761, 22.121450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249290, 43.336964, 22.356741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432575, 43.046535, 22.151657>,  <40.542545, 42.872280, 22.028606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432575, 43.046535, 22.151657>,  <40.249290, 43.336964, 22.356741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432575, 43.046535, 22.151657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155273, -0.633344, 0.758133,
		-0.875176, -0.267775, -0.402944,
		0.458212, -0.726066, -0.512709,
		40.570038, 42.828716, 21.997845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841782, 42.709824, 22.426338>,  <40.249290, 43.336964, 22.356741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841782, 42.709824, 22.426338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189285, 42.560890, 22.295721>,  <40.397785, 42.471531, 22.217350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189285, 42.560890, 22.295721>,  <39.841782, 42.709824, 22.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189285, 42.560890, 22.295721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108975, -0.786925, 0.607350,
		-0.483101, -0.492054, -0.724221,
		0.868757, -0.372333, -0.326542,
		40.449913, 42.449192, 22.197758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743729, 42.026314, 22.289450>,  <39.841782, 42.709824, 22.426338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743729, 42.026314, 22.289450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138058, 42.041298, 22.354870>,  <40.374657, 42.050289, 22.394123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138058, 42.041298, 22.354870>,  <39.743729, 42.026314, 22.289450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138058, 42.041298, 22.354870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090218, -0.703531, 0.704915,
		0.141467, -0.709677, -0.690178,
		0.985823, 0.037456, 0.163552,
		40.433804, 42.052536, 22.403936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964733, 41.327694, 22.357962>,  <39.743729, 42.026314, 22.289450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964733, 41.327694, 22.357962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266197, 41.533150, 22.521997>,  <40.447075, 41.656422, 22.620419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266197, 41.533150, 22.521997>,  <39.964733, 41.327694, 22.357962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266197, 41.533150, 22.521997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000366, -0.623605, 0.781739,
		0.657268, -0.589313, -0.469797,
		0.753657, 0.513640, 0.410092,
		40.492294, 41.687241, 22.645025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415466, 40.824043, 22.651594>,  <39.964733, 41.327694, 22.357962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415466, 40.824043, 22.651594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541256, 41.163891, 22.820950>,  <40.616730, 41.367798, 22.922562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541256, 41.163891, 22.820950>,  <40.415466, 40.824043, 22.651594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541256, 41.163891, 22.820950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136666, -0.481889, 0.865509,
		0.939378, -0.214315, -0.267655,
		0.314471, 0.849619, 0.423387,
		40.635597, 41.418777, 22.947966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973049, 40.682129, 23.163286>,  <40.415466, 40.824043, 22.651594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973049, 40.682129, 23.163286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842529, 41.046547, 23.264099>,  <40.764217, 41.265198, 23.324587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842529, 41.046547, 23.264099>,  <40.973049, 40.682129, 23.163286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842529, 41.046547, 23.264099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025918, -0.257902, 0.965823,
		0.944912, 0.321677, 0.060540,
		-0.326297, 0.911049, 0.252032,
		40.744640, 41.319862, 23.339708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435947, 40.915886, 23.722691>,  <40.973049, 40.682129, 23.163286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435947, 40.915886, 23.722691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088432, 41.113701, 23.732819>,  <40.879921, 41.232388, 23.738895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088432, 41.113701, 23.732819>,  <41.435947, 40.915886, 23.722691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088432, 41.113701, 23.732819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043784, -0.127652, 0.990852,
		0.493241, 0.859734, 0.132556,
		-0.868790, 0.494533, 0.025321,
		40.827797, 41.262062, 23.740416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519943, 41.277668, 24.330690>,  <41.435947, 40.915886, 23.722691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519943, 41.277668, 24.330690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131004, 41.250210, 24.241402>,  <40.897640, 41.233734, 24.187828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131004, 41.250210, 24.241402>,  <41.519943, 41.277668, 24.330690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131004, 41.250210, 24.241402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214531, -0.115176, 0.969902,
		-0.092287, 0.990971, 0.097265,
		-0.972347, -0.068643, -0.223224,
		40.839298, 41.229618, 24.174435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117474, 41.780582, 24.873373>,  <41.519943, 41.277668, 24.330690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117474, 41.780582, 24.873373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874886, 41.504242, 24.715935>,  <40.729332, 41.338436, 24.621471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874886, 41.504242, 24.715935>,  <41.117474, 41.780582, 24.873373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874886, 41.504242, 24.715935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388754, -0.174175, 0.904728,
		-0.693590, 0.701700, -0.162941,
		-0.606467, -0.690855, -0.393595,
		40.692947, 41.296986, 24.597857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539036, 41.719952, 25.346296>,  <41.117474, 41.780582, 24.873373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539036, 41.719952, 25.346296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492908, 41.393074, 25.120413>,  <40.465233, 41.196949, 24.984882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492908, 41.393074, 25.120413>,  <40.539036, 41.719952, 25.346296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492908, 41.393074, 25.120413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558029, -0.417018, 0.717426,
		-0.821769, 0.397860, -0.407925,
		-0.115323, -0.817192, -0.564710,
		40.458313, 41.147915, 24.951000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828457, 41.556557, 25.337294>,  <40.539036, 41.719952, 25.346296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828457, 41.556557, 25.337294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026882, 41.213802, 25.281208>,  <40.145939, 41.008148, 25.247557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026882, 41.213802, 25.281208>,  <39.828457, 41.556557, 25.337294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026882, 41.213802, 25.281208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548282, -0.434349, 0.714652,
		-0.673279, -0.277637, -0.685283,
		0.496066, -0.856889, -0.140215,
		40.175701, 40.956738, 25.239143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422085, 41.037048, 25.633474>,  <39.828457, 41.556557, 25.337294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422085, 41.037048, 25.633474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766235, 40.836914, 25.594673>,  <39.972725, 40.716835, 25.571392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766235, 40.836914, 25.594673>,  <39.422085, 41.037048, 25.633474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766235, 40.836914, 25.594673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240037, -0.565717, 0.788889,
		-0.449587, -0.655460, -0.606831,
		0.860380, -0.500336, -0.097004,
		40.024349, 40.686813, 25.565571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287899, 40.282856, 25.514736>,  <39.422085, 41.037048, 25.633474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287899, 40.282856, 25.514736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648487, 40.329277, 25.681530>,  <39.864841, 40.357128, 25.781607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648487, 40.329277, 25.681530>,  <39.287899, 40.282856, 25.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648487, 40.329277, 25.681530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218939, -0.708790, 0.670584,
		0.373375, -0.695808, -0.613549,
		0.901475, 0.116050, 0.416984,
		39.918930, 40.364094, 25.806625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316673, 39.679512, 25.813938>,  <39.287899, 40.282856, 25.514736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316673, 39.679512, 25.813938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647011, 39.852638, 25.958521>,  <39.845215, 39.956512, 26.045271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647011, 39.852638, 25.958521>,  <39.316673, 39.679512, 25.813938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647011, 39.852638, 25.958521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011054, -0.628451, 0.777770,
		0.563786, -0.646315, -0.514220,
		0.825847, 0.432812, 0.361457,
		39.894764, 39.982483, 26.066957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830631, 39.152618, 26.010935>,  <39.316673, 39.679512, 25.813938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830631, 39.152618, 26.010935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884914, 39.492561, 26.214632>,  <39.917484, 39.696526, 26.336851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884914, 39.492561, 26.214632>,  <39.830631, 39.152618, 26.010935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884914, 39.492561, 26.214632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059943, -0.506015, 0.860439,
		0.988934, -0.147296, -0.017729,
		0.135710, 0.849855, 0.509244,
		39.925629, 39.747517, 26.367405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287300, 38.980831, 26.493671>,  <39.830631, 39.152618, 26.010935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287300, 38.980831, 26.493671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111465, 39.302956, 26.652790>,  <40.005966, 39.496231, 26.748260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111465, 39.302956, 26.652790>,  <40.287300, 38.980831, 26.493671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111465, 39.302956, 26.652790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144534, -0.500529, 0.853569,
		0.886496, 0.317721, 0.336419,
		-0.439584, 0.805310, 0.397796,
		39.979591, 39.544548, 26.772129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416363, 38.966110, 27.255144>,  <40.287300, 38.980831, 26.493671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416363, 38.966110, 27.255144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091728, 39.187149, 27.179295>,  <39.896946, 39.319775, 27.133785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091728, 39.187149, 27.179295>,  <40.416363, 38.966110, 27.255144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091728, 39.187149, 27.179295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489094, -0.465118, 0.737870,
		0.319548, 0.691592, 0.647757,
		-0.811589, 0.552599, -0.189626,
		39.848251, 39.352928, 27.122406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137669, 39.172970, 27.914829>,  <40.416363, 38.966110, 27.255144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137669, 39.172970, 27.914829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825752, 39.223732, 27.669615>,  <39.638603, 39.254189, 27.522486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825752, 39.223732, 27.669615>,  <40.137669, 39.172970, 27.914829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825752, 39.223732, 27.669615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621555, -0.273895, 0.733928,
		-0.074765, 0.953349, 0.292463,
		-0.779794, 0.126910, -0.613037,
		39.591812, 39.261806, 27.485704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744308, 39.639130, 28.179054>,  <40.137669, 39.172970, 27.914829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744308, 39.639130, 28.179054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502834, 39.435169, 27.933922>,  <39.357948, 39.312794, 27.786842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502834, 39.435169, 27.933922>,  <39.744308, 39.639130, 28.179054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502834, 39.435169, 27.933922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688376, -0.054335, 0.723316,
		-0.402121, 0.858513, -0.318205,
		-0.603686, -0.509905, -0.612829,
		39.321728, 39.282196, 27.750072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041374, 39.926971, 28.283363>,  <39.744308, 39.639130, 28.179054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041374, 39.926971, 28.283363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987991, 39.569748, 28.111490>,  <38.955959, 39.355412, 28.008366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987991, 39.569748, 28.111490>,  <39.041374, 39.926971, 28.283363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987991, 39.569748, 28.111490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616873, -0.264478, 0.741296,
		-0.775665, 0.363995, -0.515608,
		-0.133461, -0.893062, -0.429685,
		38.947952, 39.301830, 27.982584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421329, 39.765305, 28.326525>,  <39.041374, 39.926971, 28.283363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421329, 39.765305, 28.326525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547836, 39.389912, 28.271074>,  <38.623741, 39.164677, 28.237804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547836, 39.389912, 28.271074>,  <38.421329, 39.765305, 28.326525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547836, 39.389912, 28.271074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551620, -0.300809, 0.777965,
		-0.771809, -0.169578, -0.612824,
		0.316269, -0.938487, -0.138624,
		38.642715, 39.108364, 28.229486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817001, 39.448299, 28.354387>,  <38.421329, 39.765305, 28.326525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817001, 39.448299, 28.354387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083889, 39.157539, 28.419413>,  <38.244022, 38.983082, 28.458427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083889, 39.157539, 28.419413>,  <37.817001, 39.448299, 28.354387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083889, 39.157539, 28.419413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543430, -0.325790, 0.773657,
		-0.509413, -0.604542, -0.612395,
		0.667220, -0.726904, 0.162565,
		38.284054, 38.939468, 28.468182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430088, 38.841759, 28.511940>,  <37.817001, 39.448299, 28.354387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430088, 38.841759, 28.511940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791542, 38.763081, 28.664124>,  <38.008415, 38.715874, 28.755434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791542, 38.763081, 28.664124>,  <37.430088, 38.841759, 28.511940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791542, 38.763081, 28.664124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424020, -0.536063, 0.729961,
		0.060372, -0.820943, -0.567809,
		0.903638, -0.196693, 0.380460,
		38.062634, 38.704071, 28.778261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324131, 38.180599, 28.836712>,  <37.430088, 38.841759, 28.511940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324131, 38.180599, 28.836712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652927, 38.337910, 29.001476>,  <37.850204, 38.432297, 29.100336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652927, 38.337910, 29.001476>,  <37.324131, 38.180599, 28.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652927, 38.337910, 29.001476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217854, -0.451135, 0.865458,
		0.526188, -0.801133, -0.285151,
		0.821989, 0.393273, 0.411912,
		37.899525, 38.455891, 29.125050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680664, 37.687019, 29.146338>,  <37.324131, 38.180599, 28.836712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680664, 37.687019, 29.146338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837669, 38.000851, 29.338327>,  <37.931873, 38.189148, 29.453522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837669, 38.000851, 29.338327>,  <37.680664, 37.687019, 29.146338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837669, 38.000851, 29.338327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078831, -0.491237, 0.867451,
		0.916361, -0.378325, -0.130970,
		0.392515, 0.784574, 0.479974,
		37.955425, 38.236221, 29.482319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076954, 37.390995, 29.676298>,  <37.680664, 37.687019, 29.146338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076954, 37.390995, 29.676298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016144, 37.774719, 29.771469>,  <37.979660, 38.004955, 29.828571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016144, 37.774719, 29.771469>,  <38.076954, 37.390995, 29.676298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016144, 37.774719, 29.771469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238402, -0.269208, 0.933109,
		0.959194, 0.085131, 0.269627,
		-0.152022, 0.959312, 0.237927,
		37.970539, 38.062511, 29.842848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376057, 37.440796, 30.358454>,  <38.076954, 37.390995, 29.676298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376057, 37.440796, 30.358454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107159, 37.736458, 30.341759>,  <37.945820, 37.913853, 30.331741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107159, 37.736458, 30.341759>,  <38.376057, 37.440796, 30.358454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107159, 37.736458, 30.341759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278473, -0.200224, 0.939342,
		0.685960, 0.643090, 0.340434,
		-0.672244, 0.739152, -0.041738,
		37.905487, 37.958202, 30.329237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542496, 37.761574, 30.942038>,  <38.376057, 37.440796, 30.358454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542496, 37.761574, 30.942038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159748, 37.837734, 30.854265>,  <37.930099, 37.883430, 30.801601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159748, 37.837734, 30.854265>,  <38.542496, 37.761574, 30.942038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159748, 37.837734, 30.854265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281295, -0.418401, 0.863605,
		0.072620, 0.888082, 0.453914,
		-0.956870, 0.190399, -0.219429,
		37.872688, 37.894855, 30.788437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177246, 37.900146, 31.601255>,  <38.542496, 37.761574, 30.942038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177246, 37.900146, 31.601255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901554, 37.811855, 31.325214>,  <37.736137, 37.758881, 31.159590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901554, 37.811855, 31.325214>,  <38.177246, 37.900146, 31.601255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901554, 37.811855, 31.325214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358699, -0.723604, 0.589688,
		-0.629521, 0.653970, 0.419555,
		-0.689230, -0.220727, -0.690103,
		37.694786, 37.745636, 31.118183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569420, 37.787876, 32.023495>,  <38.177246, 37.900146, 31.601255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569420, 37.787876, 32.023495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451443, 37.628132, 31.676273>,  <37.380657, 37.532284, 31.467939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451443, 37.628132, 31.676273>,  <37.569420, 37.787876, 32.023495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451443, 37.628132, 31.676273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413093, -0.765888, 0.492717,
		-0.861606, 0.503910, 0.060917,
		-0.294940, -0.399363, -0.868055,
		37.362961, 37.508324, 31.415857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890007, 37.666115, 32.047890>,  <37.569420, 37.787876, 32.023495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890007, 37.666115, 32.047890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038818, 37.412312, 31.776894>,  <37.128105, 37.260029, 31.614296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038818, 37.412312, 31.776894>,  <36.890007, 37.666115, 32.047890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038818, 37.412312, 31.776894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427696, -0.764958, 0.481575,
		-0.823816, 0.110601, -0.555963,
		0.372026, -0.634513, -0.677489,
		37.150425, 37.221958, 31.573647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241039, 37.329330, 31.829069>,  <36.890007, 37.666115, 32.047890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241039, 37.329330, 31.829069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562687, 37.106617, 31.745749>,  <36.755676, 36.972988, 31.695757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562687, 37.106617, 31.745749>,  <36.241039, 37.329330, 31.829069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562687, 37.106617, 31.745749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452868, -0.800730, 0.392100,
		-0.385109, -0.220961, -0.896029,
		0.804116, -0.556784, -0.208302,
		36.803921, 36.939583, 31.683258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980194, 36.717712, 31.633360>,  <36.241039, 37.329330, 31.829069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980194, 36.717712, 31.633360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364388, 36.626869, 31.697727>,  <36.594902, 36.572365, 31.736347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364388, 36.626869, 31.697727>,  <35.980194, 36.717712, 31.633360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364388, 36.626869, 31.697727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266656, -0.916553, 0.298038,
		0.079805, -0.329170, -0.940892,
		0.960482, -0.227109, 0.160921,
		36.652531, 36.558735, 31.746004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171513, 36.080803, 31.254595>,  <35.980194, 36.717712, 31.633360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171513, 36.080803, 31.254595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440632, 36.080845, 31.550524>,  <36.602104, 36.080872, 31.728081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440632, 36.080845, 31.550524>,  <36.171513, 36.080803, 31.254595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440632, 36.080845, 31.550524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310334, -0.907729, 0.282351,
		0.671588, -0.419558, -0.610688,
		0.672802, 0.000106, 0.739823,
		36.642471, 36.080875, 31.772470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561462, 35.421803, 31.225718>,  <36.171513, 36.080803, 31.254595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561462, 35.421803, 31.225718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606236, 35.541985, 31.604599>,  <36.633099, 35.614094, 31.831928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606236, 35.541985, 31.604599>,  <36.561462, 35.421803, 31.225718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606236, 35.541985, 31.604599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277181, -0.905922, 0.320118,
		0.954276, -0.298378, -0.018119,
		0.111931, 0.300459, 0.947204,
		36.639816, 35.632122, 31.888760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572559, 34.750515, 31.552536>,  <36.561462, 35.421803, 31.225718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572559, 34.750515, 31.552536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591839, 34.964844, 31.889719>,  <36.603409, 35.093441, 32.092030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591839, 34.964844, 31.889719>,  <36.572559, 34.750515, 31.552536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591839, 34.964844, 31.889719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427524, -0.751656, 0.502231,
		0.902718, -0.384592, 0.192845,
		0.048201, 0.535819, 0.842956,
		36.606300, 35.125591, 32.142605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943031, 34.347031, 32.180676>,  <36.572559, 34.750515, 31.552536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943031, 34.347031, 32.180676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681652, 34.621552, 32.308426>,  <36.524826, 34.786263, 32.385075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681652, 34.621552, 32.308426>,  <36.943031, 34.347031, 32.180676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681652, 34.621552, 32.308426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398183, -0.670461, 0.626045,
		0.643783, 0.281917, 0.711383,
		-0.653448, 0.686298, 0.319377,
		36.485619, 34.827442, 32.404240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008335, 34.259621, 32.864868>,  <36.943031, 34.347031, 32.180676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008335, 34.259621, 32.864868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653286, 34.428082, 32.790291>,  <36.440258, 34.529156, 32.745544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653286, 34.428082, 32.790291>,  <37.008335, 34.259621, 32.864868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653286, 34.428082, 32.790291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460328, -0.798028, 0.388909,
		0.015003, 0.431029, 0.902213,
		-0.887622, 0.421149, -0.186442,
		36.387001, 34.554424, 32.734360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635605, 34.296375, 33.499382>,  <37.008335, 34.259621, 32.864868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635605, 34.296375, 33.499382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357277, 34.292950, 33.212116>,  <36.190281, 34.290894, 33.039757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357277, 34.292950, 33.212116>,  <36.635605, 34.296375, 33.499382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357277, 34.292950, 33.212116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426894, -0.799190, 0.423151,
		-0.577573, 0.601018, 0.552437,
		-0.695824, -0.008568, -0.718161,
		36.148529, 34.290379, 32.996666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798237, 34.969437, 33.515514>,  <36.635605, 34.296375, 33.499382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798237, 34.969437, 33.515514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123585, 35.002945, 33.285240>,  <37.318794, 35.023052, 33.147076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123585, 35.002945, 33.285240>,  <36.798237, 34.969437, 33.515514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123585, 35.002945, 33.285240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514261, 0.359087, 0.778840,
		0.271967, -0.929537, 0.248989,
		0.813370, 0.083774, -0.575685,
		37.367596, 35.028076, 33.112534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877899, 35.585060, 33.887344>,  <36.798237, 34.969437, 33.515514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877899, 35.585060, 33.887344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147816, 35.320843, 34.019005>,  <37.309765, 35.162312, 34.098003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147816, 35.320843, 34.019005>,  <36.877899, 35.585060, 33.887344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147816, 35.320843, 34.019005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371644, 0.689464, 0.621707,
		-0.637604, -0.297193, 0.710730,
		0.674790, -0.660542, 0.329155,
		37.350254, 35.122681, 34.117752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793362, 35.488129, 34.635056>,  <36.877899, 35.585060, 33.887344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793362, 35.488129, 34.635056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165230, 35.380455, 34.534451>,  <37.388351, 35.315849, 34.474087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165230, 35.380455, 34.534451>,  <36.793362, 35.488129, 34.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165230, 35.380455, 34.534451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367357, 0.625994, 0.687881,
		-0.027721, -0.731896, 0.680853,
		0.929667, -0.269185, -0.251514,
		37.444130, 35.299698, 34.458996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922321, 36.214767, 34.835091>,  <36.793362, 35.488129, 34.635056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922321, 36.214767, 34.835091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569149, 36.301136, 34.668331>,  <36.357246, 36.352959, 34.568275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569149, 36.301136, 34.668331>,  <36.922321, 36.214767, 34.835091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569149, 36.301136, 34.668331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422056, -0.754001, 0.503340,
		-0.205655, 0.620370, 0.756867,
		-0.882935, 0.215925, -0.416895,
		36.304268, 36.365913, 34.543262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363155, 36.343204, 35.228058>,  <36.922321, 36.214767, 34.835091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363155, 36.343204, 35.228058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202709, 36.202938, 34.889557>,  <36.106441, 36.118778, 34.686459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202709, 36.202938, 34.889557>,  <36.363155, 36.343204, 35.228058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202709, 36.202938, 34.889557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414329, -0.754471, 0.509024,
		-0.816967, 0.554804, 0.157341,
		-0.401118, -0.350665, -0.846250,
		36.082375, 36.097740, 34.635681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834084, 36.769985, 35.429466>,  <36.363155, 36.343204, 35.228058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834084, 36.769985, 35.429466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884830, 37.164867, 35.468113>,  <35.915279, 37.401794, 35.491302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884830, 37.164867, 35.468113>,  <35.834084, 36.769985, 35.429466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884830, 37.164867, 35.468113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210610, -0.068377, 0.975176,
		0.969303, -0.144065, 0.199240,
		0.126866, 0.987203, 0.096620,
		35.922890, 37.461029, 35.497101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867779, 36.587254, 36.119751>,  <35.834084, 36.769985, 35.429466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867779, 36.587254, 36.119751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925575, 36.976444, 36.047703>,  <35.960251, 37.209957, 36.004475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925575, 36.976444, 36.047703>,  <35.867779, 36.587254, 36.119751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925575, 36.976444, 36.047703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013291, 0.180107, 0.983557,
		0.989417, -0.144507, 0.013091,
		0.144489, 0.972974, -0.180122,
		35.968922, 37.268337, 35.993668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557373, 36.938633, 36.141041>,  <35.867779, 36.587254, 36.119751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557373, 36.938633, 36.141041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217163, 37.119488, 36.248501>,  <36.013035, 37.228001, 36.312977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217163, 37.119488, 36.248501>,  <36.557373, 36.938633, 36.141041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217163, 37.119488, 36.248501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225798, -0.147406, 0.962957,
		0.474989, 0.879684, 0.023282,
		-0.850530, 0.452137, 0.268647,
		35.962006, 37.255131, 36.329094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552765, 37.546616, 36.708515>,  <36.557373, 36.938633, 36.141041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552765, 37.546616, 36.708515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229313, 37.312000, 36.726803>,  <36.035240, 37.171230, 36.737778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229313, 37.312000, 36.726803>,  <36.552765, 37.546616, 36.708515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229313, 37.312000, 36.726803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250787, -0.273357, 0.928645,
		-0.532188, 0.762397, 0.368141,
		-0.808630, -0.586538, 0.045722,
		35.986725, 37.136040, 36.740520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050488, 37.814075, 37.254032>,  <36.552765, 37.546616, 36.708515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050488, 37.814075, 37.254032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076832, 37.419388, 37.194649>,  <36.092636, 37.182575, 37.159019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076832, 37.419388, 37.194649>,  <36.050488, 37.814075, 37.254032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076832, 37.419388, 37.194649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398070, -0.110447, 0.910682,
		-0.914988, -0.119071, 0.385512,
		0.065858, -0.986724, -0.148456,
		36.096588, 37.123371, 37.150112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774128, 37.350258, 37.761654>,  <36.050488, 37.814075, 37.254032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774128, 37.350258, 37.761654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112080, 37.201138, 37.608189>,  <36.314850, 37.111668, 37.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112080, 37.201138, 37.608189>,  <35.774128, 37.350258, 37.761654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112080, 37.201138, 37.608189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325933, -0.209968, 0.921782,
		-0.424194, -0.903845, -0.055891,
		0.844883, -0.372797, -0.383660,
		36.365543, 37.089298, 37.493092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115376, 37.008541, 38.339127>,  <35.774128, 37.350258, 37.761654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115376, 37.008541, 38.339127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402313, 36.946781, 38.067368>,  <36.574474, 36.909725, 37.904312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402313, 36.946781, 38.067368>,  <36.115376, 37.008541, 38.339127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402313, 36.946781, 38.067368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523105, -0.524740, 0.671572,
		-0.460193, -0.837144, -0.295655,
		0.717345, -0.154395, -0.679396,
		36.617516, 36.900463, 37.863548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182152, 36.309608, 38.224922>,  <36.115376, 37.008541, 38.339127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182152, 36.309608, 38.224922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541225, 36.472565, 38.157749>,  <36.756668, 36.570339, 38.117447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541225, 36.472565, 38.157749>,  <36.182152, 36.309608, 38.224922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541225, 36.472565, 38.157749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395344, -0.576317, 0.715235,
		0.194599, -0.708443, -0.678409,
		0.897683, 0.407389, -0.167928,
		36.810532, 36.594780, 38.107372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743622, 35.764637, 38.045116>,  <36.182152, 36.309608, 38.224922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743622, 35.764637, 38.045116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892391, 36.091446, 38.221363>,  <36.981651, 36.287533, 38.327110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892391, 36.091446, 38.221363>,  <36.743622, 35.764637, 38.045116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892391, 36.091446, 38.221363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415920, -0.571027, 0.707771,
		0.829871, -0.079974, -0.552194,
		0.371921, 0.817027, 0.440616,
		37.003967, 36.336555, 38.353546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372967, 35.573006, 38.159164>,  <36.743622, 35.764637, 38.045116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372967, 35.573006, 38.159164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285774, 35.861668, 38.421978>,  <37.233459, 36.034866, 38.579666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285774, 35.861668, 38.421978>,  <37.372967, 35.573006, 38.159164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285774, 35.861668, 38.421978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438353, -0.529101, 0.726566,
		0.871969, 0.446393, -0.201005,
		-0.217982, 0.721655, 0.657038,
		37.220379, 36.078163, 38.619091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723721, 35.302887, 38.710430>,  <37.372967, 35.573006, 38.159164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723721, 35.302887, 38.710430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580521, 35.639286, 38.872692>,  <37.494602, 35.841125, 38.970051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580521, 35.639286, 38.872692>,  <37.723721, 35.302887, 38.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580521, 35.639286, 38.872692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310894, -0.302299, 0.901088,
		0.880443, 0.448706, -0.153238,
		-0.358000, 0.840998, 0.405657,
		37.473122, 35.891586, 38.994389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275234, 35.805649, 39.128662>,  <37.723721, 35.302887, 38.710430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275234, 35.805649, 39.128662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896111, 35.804066, 39.256184>,  <37.668636, 35.803116, 39.332695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896111, 35.804066, 39.256184>,  <38.275234, 35.805649, 39.128662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896111, 35.804066, 39.256184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300064, -0.349043, 0.887767,
		0.107758, 0.937098, 0.332016,
		-0.947813, -0.003962, 0.318801,
		37.611767, 35.802876, 39.351826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227497, 36.068222, 39.801559>,  <38.275234, 35.805649, 39.128662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227497, 36.068222, 39.801559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881069, 35.868298, 39.797287>,  <37.673214, 35.748341, 39.794724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881069, 35.868298, 39.797287>,  <38.227497, 36.068222, 39.801559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881069, 35.868298, 39.797287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188184, -0.345726, 0.919272,
		-0.463157, 0.794141, 0.393479,
		-0.866067, -0.499814, -0.010680,
		37.621250, 35.718353, 39.794083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849430, 36.244831, 40.469608>,  <38.227497, 36.068222, 39.801559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849430, 36.244831, 40.469608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709171, 35.895569, 40.334164>,  <37.625015, 35.686012, 40.252899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709171, 35.895569, 40.334164>,  <37.849430, 36.244831, 40.469608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709171, 35.895569, 40.334164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173271, -0.415808, 0.892794,
		-0.920340, 0.254381, 0.297092,
		-0.350643, -0.873152, -0.338608,
		37.603977, 35.633625, 40.232582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461460, 35.958241, 41.002735>,  <37.849430, 36.244831, 40.469608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461460, 35.958241, 41.002735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569260, 35.657024, 40.762634>,  <37.633942, 35.476295, 40.618572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569260, 35.657024, 40.762634>,  <37.461460, 35.958241, 41.002735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569260, 35.657024, 40.762634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182944, -0.571927, 0.799644,
		-0.945463, -0.325318, -0.016371,
		0.269502, -0.753039, -0.600251,
		37.650108, 35.431114, 40.582558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068657, 35.363308, 41.261059>,  <37.461460, 35.958241, 41.002735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068657, 35.363308, 41.261059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369205, 35.243004, 41.026115>,  <37.549534, 35.170822, 40.885147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369205, 35.243004, 41.026115>,  <37.068657, 35.363308, 41.261059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369205, 35.243004, 41.026115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300311, -0.636731, 0.710202,
		-0.587584, -0.710015, -0.388102,
		0.751371, -0.300752, -0.587358,
		37.594616, 35.152779, 40.849907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677570, 35.251942, 41.720993>,  <37.068657, 35.363308, 41.261059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677570, 35.251942, 41.720993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825474, 34.882526, 41.680264>,  <37.914215, 34.660877, 41.655827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825474, 34.882526, 41.680264>,  <37.677570, 35.251942, 41.720993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825474, 34.882526, 41.680264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029242, 0.097966, -0.994760,
		0.928669, 0.370794, 0.009217,
		0.369754, -0.923534, -0.101821,
		37.936401, 34.605465, 41.649715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310501, 35.139599, 41.475761>,  <37.677570, 35.251942, 41.720993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310501, 35.139599, 41.475761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069427, 34.833374, 41.385704>,  <37.924786, 34.649639, 41.331669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069427, 34.833374, 41.385704>,  <38.310501, 35.139599, 41.475761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069427, 34.833374, 41.385704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185972, 0.139625, -0.972584,
		0.776010, -0.628028, 0.058224,
		-0.602680, -0.765562, -0.225146,
		37.888622, 34.603706, 41.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694405, 34.609856, 40.958149>,  <38.310501, 35.139599, 41.475761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694405, 34.609856, 40.958149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294598, 34.616123, 40.968914>,  <38.054714, 34.619884, 40.975372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294598, 34.616123, 40.968914>,  <38.694405, 34.609856, 40.958149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294598, 34.616123, 40.968914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023817, 0.172321, -0.984753,
		-0.020067, -0.984916, -0.171864,
		-0.999515, 0.015667, 0.026916,
		37.994743, 34.620823, 40.976990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311069, 34.382462, 40.392998>,  <38.694405, 34.609856, 40.958149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311069, 34.382462, 40.392998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006409, 34.591347, 40.546452>,  <37.823612, 34.716679, 40.638523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006409, 34.591347, 40.546452>,  <38.311069, 34.382462, 40.392998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006409, 34.591347, 40.546452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295336, 0.247205, -0.922858,
		-0.576765, -0.816200, -0.034056,
		-0.761655, 0.522214, 0.383633,
		37.777912, 34.748013, 40.661541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793365, 34.185791, 39.971661>,  <38.311069, 34.382462, 40.392998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793365, 34.185791, 39.971661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713535, 34.533794, 40.151997>,  <37.665638, 34.742596, 40.260201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713535, 34.533794, 40.151997>,  <37.793365, 34.185791, 39.971661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713535, 34.533794, 40.151997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307688, 0.381186, -0.871794,
		-0.930322, -0.312705, 0.191616,
		-0.199573, 0.870007, 0.450842,
		37.653664, 34.794796, 40.287251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090504, 34.484295, 39.799232>,  <37.793365, 34.185791, 39.971661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090504, 34.484295, 39.799232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280079, 34.814529, 39.921730>,  <37.393826, 35.012672, 39.995228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280079, 34.814529, 39.921730>,  <37.090504, 34.484295, 39.799232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280079, 34.814529, 39.921730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337638, 0.491582, -0.802712,
		-0.813255, 0.277037, 0.511730,
		0.473938, 0.825589, 0.306243,
		37.422260, 35.062206, 40.013603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445816, 35.068459, 39.895885>,  <37.090504, 34.484295, 39.799232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445816, 35.068459, 39.895885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804981, 35.232979, 39.833179>,  <37.020481, 35.331692, 39.795555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804981, 35.232979, 39.833179>,  <36.445816, 35.068459, 39.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804981, 35.232979, 39.833179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389718, 0.577308, -0.717520,
		-0.204616, 0.705367, 0.678667,
		0.897916, 0.411305, -0.156767,
		37.074356, 35.356369, 39.786148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346516, 35.720490, 39.678238>,  <36.445816, 35.068459, 39.895885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346516, 35.720490, 39.678238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734089, 35.743027, 39.581905>,  <36.966633, 35.756550, 39.524105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734089, 35.743027, 39.581905>,  <36.346516, 35.720490, 39.678238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734089, 35.743027, 39.581905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216376, 0.664777, -0.715019,
		0.119809, 0.744913, 0.656315,
		0.968931, 0.056345, -0.240827,
		37.024769, 35.759930, 39.509659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427570, 36.463154, 39.597164>,  <36.346516, 35.720490, 39.678238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427570, 36.463154, 39.597164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743988, 36.299744, 39.415020>,  <36.933838, 36.201698, 39.305733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743988, 36.299744, 39.415020>,  <36.427570, 36.463154, 39.597164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743988, 36.299744, 39.415020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073331, 0.675666, -0.733551,
		0.607346, 0.613665, 0.504526,
		0.791046, -0.408522, -0.455364,
		36.981300, 36.177189, 39.278412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965397, 37.070618, 39.487160>,  <36.427570, 36.463154, 39.597164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965397, 37.070618, 39.487160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035446, 36.774918, 39.227058>,  <37.077477, 36.597496, 39.070995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035446, 36.774918, 39.227058>,  <36.965397, 37.070618, 39.487160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035446, 36.774918, 39.227058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092417, 0.645205, -0.758399,
		0.980199, 0.192912, 0.044674,
		0.175128, -0.739253, -0.650257,
		37.087986, 36.553143, 39.031982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325882, 37.419415, 39.023579>,  <36.965397, 37.070618, 39.487160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325882, 37.419415, 39.023579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210041, 37.090397, 38.827801>,  <37.140537, 36.892986, 38.710335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210041, 37.090397, 38.827801>,  <37.325882, 37.419415, 39.023579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210041, 37.090397, 38.827801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170841, 0.547565, -0.819138,
		0.941776, -0.153611, -0.299102,
		-0.289606, -0.822543, -0.489440,
		37.123158, 36.843636, 38.680969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286575, 37.387096, 38.241703>,  <37.325882, 37.419415, 39.023579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286575, 37.387096, 38.241703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963341, 37.153908, 38.275494>,  <36.769398, 37.013996, 38.295769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963341, 37.153908, 38.275494>,  <37.286575, 37.387096, 38.241703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963341, 37.153908, 38.275494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437136, 0.497355, -0.749367,
		0.394842, -0.642485, -0.656744,
		-0.808092, -0.582968, 0.084477,
		36.720913, 36.979015, 38.300835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246799, 36.992146, 37.632313>,  <37.286575, 37.387096, 38.241703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246799, 36.992146, 37.632313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886097, 37.069721, 37.786835>,  <36.669678, 37.116268, 37.879547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886097, 37.069721, 37.786835>,  <37.246799, 36.992146, 37.632313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886097, 37.069721, 37.786835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261365, 0.467177, -0.844650,
		-0.344281, -0.862632, -0.370590,
		-0.901753, 0.193938, 0.386302,
		36.615570, 37.127903, 37.902725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393551, 37.608730, 37.182255>,  <37.246799, 36.992146, 37.632313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393551, 37.608730, 37.182255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613495, 37.534687, 36.856461>,  <37.745461, 37.490261, 36.660984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613495, 37.534687, 36.856461>,  <37.393551, 37.608730, 37.182255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613495, 37.534687, 36.856461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737300, 0.565778, 0.369165,
		0.392486, -0.803512, 0.447576,
		0.549857, -0.185106, -0.814489,
		37.778454, 37.479156, 36.612114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982437, 37.206341, 37.309261>,  <37.393551, 37.608730, 37.182255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982437, 37.206341, 37.309261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019459, 37.460865, 37.002918>,  <38.041672, 37.613579, 36.819111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019459, 37.460865, 37.002918>,  <37.982437, 37.206341, 37.309261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019459, 37.460865, 37.002918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790834, 0.420361, 0.444835,
		0.604991, -0.646839, -0.464311,
		0.092558, 0.636315, -0.765857,
		38.047226, 37.651760, 36.773163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532806, 36.699760, 37.085388>,  <37.982437, 37.206341, 37.309261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532806, 36.699760, 37.085388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633152, 36.316814, 37.028080>,  <38.693359, 36.087048, 36.993694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633152, 36.316814, 37.028080>,  <38.532806, 36.699760, 37.085388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633152, 36.316814, 37.028080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966586, 0.239678, 0.090914,
		-0.052700, -0.161287, 0.985499,
		0.250866, -0.957361, -0.143267,
		38.708412, 36.029606, 36.985100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968163, 36.419518, 37.613144>,  <38.532806, 36.699760, 37.085388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968163, 36.419518, 37.613144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038708, 36.236057, 37.264767>,  <39.081036, 36.125980, 37.055740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038708, 36.236057, 37.264767>,  <38.968163, 36.419518, 37.613144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038708, 36.236057, 37.264767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977882, 0.182715, 0.101796,
		0.112446, -0.869631, 0.480726,
		0.176361, -0.458647, -0.870942,
		39.091618, 36.098465, 37.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597664, 36.030945, 37.620609>,  <38.968163, 36.419518, 37.613144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597664, 36.030945, 37.620609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579304, 36.118156, 37.230663>,  <39.568287, 36.170483, 36.996696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579304, 36.118156, 37.230663>,  <39.597664, 36.030945, 37.620609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579304, 36.118156, 37.230663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989828, 0.141476, -0.014963,
		0.134658, -0.965634, -0.222302,
		-0.045899, 0.218026, -0.974863,
		39.565533, 36.183563, 36.938206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215897, 35.749428, 37.304501>,  <39.597664, 36.030945, 37.620609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215897, 35.749428, 37.304501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102242, 36.070087, 37.094120>,  <40.034050, 36.262486, 36.967892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102242, 36.070087, 37.094120>,  <40.215897, 35.749428, 37.304501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102242, 36.070087, 37.094120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939385, 0.122969, -0.320054,
		-0.191897, -0.585007, -0.787999,
		-0.284133, 0.801652, -0.525949,
		40.017002, 36.310581, 36.936337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380135, 35.787651, 36.513149>,  <40.215897, 35.749428, 37.304501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380135, 35.787651, 36.513149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369614, 36.148117, 36.686218>,  <40.363300, 36.364399, 36.790058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369614, 36.148117, 36.686218>,  <40.380135, 35.787651, 36.513149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369614, 36.148117, 36.686218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959833, 0.143709, -0.240972,
		-0.279336, 0.408953, -0.868751,
		-0.026301, 0.901169, 0.432670,
		40.361725, 36.418468, 36.816021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772251, 36.228413, 36.066055>,  <40.380135, 35.787651, 36.513149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772251, 36.228413, 36.066055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760632, 36.396015, 36.429062>,  <40.753662, 36.496578, 36.646866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760632, 36.396015, 36.429062>,  <40.772251, 36.228413, 36.066055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760632, 36.396015, 36.429062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983233, 0.175491, -0.049555,
		-0.180026, 0.890862, -0.417080,
		-0.029047, 0.419008, 0.907518,
		40.751919, 36.521717, 36.701317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331577, 36.792641, 36.180553>,  <40.772251, 36.228413, 36.066055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331577, 36.792641, 36.180553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262489, 36.636494, 36.542278>,  <41.221039, 36.542805, 36.759315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262489, 36.636494, 36.542278>,  <41.331577, 36.792641, 36.180553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262489, 36.636494, 36.542278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979847, 0.025438, 0.198123,
		-0.100345, 0.920308, 0.378105,
		-0.172716, -0.390366, 0.904314,
		41.210674, 36.519382, 36.813572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729763, 37.070766, 36.647549>,  <41.331577, 36.792641, 36.180553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729763, 37.070766, 36.647549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625946, 36.719334, 36.807915>,  <41.563656, 36.508472, 36.904133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625946, 36.719334, 36.807915>,  <41.729763, 37.070766, 36.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625946, 36.719334, 36.807915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935172, -0.125044, 0.331385,
		-0.241018, 0.460930, 0.854081,
		-0.259543, -0.878583, 0.400911,
		41.548084, 36.455757, 36.928188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137074, 36.980606, 37.278507>,  <41.729763, 37.070766, 36.647549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137074, 36.980606, 37.278507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039467, 36.615376, 37.147823>,  <41.980904, 36.396236, 37.069412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039467, 36.615376, 37.147823>,  <42.137074, 36.980606, 37.278507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039467, 36.615376, 37.147823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950132, -0.292557, 0.107979,
		-0.194174, -0.284067, 0.938937,
		-0.244019, -0.913081, -0.326709,
		41.966263, 36.341450, 37.049812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429092, 36.537865, 37.721706>,  <42.137074, 36.980606, 37.278507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429092, 36.537865, 37.721706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393063, 36.347855, 37.371567>,  <42.371445, 36.233849, 37.161484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393063, 36.347855, 37.371567>,  <42.429092, 36.537865, 37.721706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393063, 36.347855, 37.371567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931702, -0.350727, 0.094452,
		-0.351876, -0.807058, 0.474173,
		-0.090077, -0.475024, -0.875351,
		42.366039, 36.205349, 37.108963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844917, 35.974464, 37.826523>,  <42.429092, 36.537865, 37.721706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844917, 35.974464, 37.826523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819447, 36.044067, 37.433449>,  <42.804165, 36.085831, 37.197605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819447, 36.044067, 37.433449>,  <42.844917, 35.974464, 37.826523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819447, 36.044067, 37.433449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954215, -0.277758, -0.111015,
		-0.292265, -0.944760, -0.148353,
		-0.063676, 0.174006, -0.982684,
		42.800343, 36.096268, 37.138645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973721, 35.242779, 37.323849>,  <42.844917, 35.974464, 37.826523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973721, 35.242779, 37.323849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122589, 35.597473, 37.214169>,  <43.211910, 35.810291, 37.148361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122589, 35.597473, 37.214169>,  <42.973721, 35.242779, 37.323849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122589, 35.597473, 37.214169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915111, -0.301182, 0.268070,
		0.155125, -0.350688, -0.923555,
		0.372167, 0.886740, -0.274197,
		43.234238, 35.863495, 37.131908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576443, 35.094620, 37.005142>,  <42.973721, 35.242779, 37.323849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576443, 35.094620, 37.005142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581116, 35.478676, 37.116856>,  <43.583920, 35.709110, 37.183884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581116, 35.478676, 37.116856>,  <43.576443, 35.094620, 37.005142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581116, 35.478676, 37.116856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913419, -0.123891, 0.387708,
		0.406853, 0.250570, -0.878456,
		0.011685, 0.960138, 0.279281,
		43.584621, 35.766716, 37.200642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252407, 35.303310, 36.814209>,  <43.576443, 35.094620, 37.005142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252407, 35.303310, 36.814209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066982, 35.471165, 37.126366>,  <43.955727, 35.571877, 37.313660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066982, 35.471165, 37.126366>,  <44.252407, 35.303310, 36.814209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066982, 35.471165, 37.126366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598243, -0.501467, 0.625009,
		0.653618, 0.756597, -0.018582,
		-0.463562, 0.419633, 0.780396,
		43.927914, 35.597054, 37.360485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671200, 35.727573, 37.375916>,  <44.252407, 35.303310, 36.814209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671200, 35.727573, 37.375916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352146, 35.517872, 37.495209>,  <44.160713, 35.392052, 37.566784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352146, 35.517872, 37.495209>,  <44.671200, 35.727573, 37.375916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352146, 35.517872, 37.495209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595848, -0.608232, 0.524422,
		-0.093538, 0.595996, 0.797521,
		-0.797631, -0.524255, 0.298230,
		44.112858, 35.360596, 37.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759991, 35.607643, 38.102997>,  <44.671200, 35.727573, 37.375916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759991, 35.607643, 38.102997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547783, 35.358036, 37.873508>,  <44.420460, 35.208271, 37.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547783, 35.358036, 37.873508>,  <44.759991, 35.607643, 38.102997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547783, 35.358036, 37.873508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592902, -0.756875, 0.274967,
		-0.605820, -0.194286, 0.771515,
		-0.530518, -0.624013, -0.573723,
		44.388626, 35.170834, 37.701393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411686, 34.961109, 38.485512>,  <44.759991, 35.607643, 38.102997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411686, 34.961109, 38.485512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480370, 34.869904, 38.102154>,  <44.521580, 34.815182, 37.872139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480370, 34.869904, 38.102154>,  <44.411686, 34.961109, 38.485512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480370, 34.869904, 38.102154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570535, -0.770080, 0.285424,
		-0.803123, -0.595809, -0.002141,
		0.171707, -0.228009, -0.958399,
		44.531883, 34.801502, 37.814632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384239, 34.182873, 38.308968>,  <44.411686, 34.961109, 38.485512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384239, 34.182873, 38.308968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615604, 34.378731, 38.047993>,  <44.754425, 34.496246, 37.891407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615604, 34.378731, 38.047993>,  <44.384239, 34.182873, 38.308968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615604, 34.378731, 38.047993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715802, -0.688249, 0.118067,
		-0.391230, -0.535310, -0.748587,
		0.578416, 0.489649, -0.652440,
		44.789131, 34.525627, 37.852261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512909, 33.709957, 37.782997>,  <44.384239, 34.182873, 38.308968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512909, 33.709957, 37.782997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802822, 33.985142, 37.768047>,  <44.976772, 34.150253, 37.759079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802822, 33.985142, 37.768047>,  <44.512909, 33.709957, 37.782997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802822, 33.985142, 37.768047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687386, -0.718371, 0.106977,
		0.046750, -0.103224, -0.993559,
		0.724787, 0.687959, -0.037371,
		45.020260, 34.191528, 37.756836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016537, 33.348682, 37.266773>,  <44.512909, 33.709957, 37.782997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016537, 33.348682, 37.266773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195267, 33.589130, 37.531803>,  <45.302505, 33.733398, 37.690819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195267, 33.589130, 37.531803>,  <45.016537, 33.348682, 37.266773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195267, 33.589130, 37.531803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690336, -0.702743, 0.172012,
		0.569018, 0.380538, -0.728979,
		0.446827, 0.601118, 0.662572,
		45.329315, 33.769466, 37.730576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747372, 33.598167, 37.022530>,  <45.016537, 33.348682, 37.266773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747372, 33.598167, 37.022530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712635, 33.552559, 37.418400>,  <45.691792, 33.525192, 37.655922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712635, 33.552559, 37.418400>,  <45.747372, 33.598167, 37.022530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712635, 33.552559, 37.418400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656040, -0.754156, -0.029322,
		0.749713, 0.646721, 0.140294,
		-0.086840, -0.114021, 0.989676,
		45.686584, 33.518353, 37.715302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342617, 34.050583, 37.381474>,  <45.747372, 33.598167, 37.022530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342617, 34.050583, 37.381474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362995, 33.657227, 37.311790>,  <46.375221, 33.421211, 37.269981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362995, 33.657227, 37.311790>,  <46.342617, 34.050583, 37.381474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362995, 33.657227, 37.311790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615579, 0.168278, -0.769899,
		0.786427, -0.068014, 0.613928,
		0.050947, -0.983390, -0.174206,
		46.378281, 33.362209, 37.259529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995350, 33.901470, 37.171558>,  <46.342617, 34.050583, 37.381474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995350, 33.901470, 37.171558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748814, 33.613945, 37.042912>,  <46.600891, 33.441429, 36.965725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748814, 33.613945, 37.042912>,  <46.995350, 33.901470, 37.171558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748814, 33.613945, 37.042912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433387, 0.031374, -0.900661,
		0.657498, -0.694495, 0.292188,
		-0.616338, -0.718813, -0.321613,
		46.563911, 33.398300, 36.946426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447849, 33.507919, 36.824825>,  <46.995350, 33.901470, 37.171558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447849, 33.507919, 36.824825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068268, 33.521828, 36.699425>,  <46.840519, 33.530174, 36.624184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068268, 33.521828, 36.699425>,  <47.447849, 33.507919, 36.824825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068268, 33.521828, 36.699425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311841, 0.252792, -0.915888,
		0.047401, -0.966895, -0.250731,
		-0.948951, 0.034774, -0.313500,
		46.783581, 33.532261, 36.605373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398315, 32.968086, 36.202667>,  <47.447849, 33.507919, 36.824825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398315, 32.968086, 36.202667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161507, 33.286903, 36.154949>,  <47.019421, 33.478195, 36.126316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161507, 33.286903, 36.154949>,  <47.398315, 32.968086, 36.202667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161507, 33.286903, 36.154949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538705, 0.281271, -0.794156,
		-0.599420, -0.534425, -0.595890,
		-0.592024, 0.797042, -0.119298,
		46.983898, 33.526016, 36.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.063866, 32.906387, 35.585686>,  <47.398315, 32.968086, 36.202667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.063866, 32.906387, 35.585686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074165, 33.296818, 35.672047>,  <47.080345, 33.531075, 35.723862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074165, 33.296818, 35.672047>,  <47.063866, 32.906387, 35.585686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074165, 33.296818, 35.672047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589343, 0.159627, -0.791956,
		-0.807472, 0.147633, -0.571133,
		0.025751, 0.976076, 0.215901,
		47.081890, 33.589642, 35.736816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819077, 33.204655, 34.992455>,  <47.063866, 32.906387, 35.585686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819077, 33.204655, 34.992455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089352, 33.436050, 35.175228>,  <47.251518, 33.574890, 35.284893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089352, 33.436050, 35.175228>,  <46.819077, 33.204655, 34.992455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089352, 33.436050, 35.175228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417652, 0.210364, -0.883920,
		-0.607464, 0.788095, -0.099469,
		0.675688, 0.578493, 0.456938,
		47.292057, 33.609600, 35.312309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857433, 33.945198, 34.872341>,  <46.819077, 33.204655, 34.992455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857433, 33.945198, 34.872341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225224, 33.805172, 34.943916>,  <47.445896, 33.721157, 34.986862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225224, 33.805172, 34.943916>,  <46.857433, 33.945198, 34.872341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225224, 33.805172, 34.943916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286463, 0.284837, -0.914771,
		0.269263, 0.892369, 0.362182,
		0.919476, -0.350066, 0.178935,
		47.501068, 33.700153, 34.997597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253902, 34.306137, 34.499577>,  <46.857433, 33.945198, 34.872341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253902, 34.306137, 34.499577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526966, 34.033936, 34.606075>,  <47.690804, 33.870613, 34.669975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526966, 34.033936, 34.606075>,  <47.253902, 34.306137, 34.499577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526966, 34.033936, 34.606075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561424, 0.255206, -0.787193,
		0.467743, 0.686862, 0.556272,
		0.682657, -0.680508, 0.266250,
		47.731762, 33.829784, 34.685951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000225, 34.527779, 34.613354>,  <47.253902, 34.306137, 34.499577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000225, 34.527779, 34.613354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716572, 34.762543, 34.769642>,  <47.546379, 34.903400, 34.863415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716572, 34.762543, 34.769642>,  <48.000225, 34.527779, 34.613354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.716572, 34.762543, 34.769642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433614, -0.073950, 0.898059,
		0.555970, 0.806271, -0.202051,
		-0.709137, 0.586906, 0.390724,
		47.503830, 34.938614, 34.886860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.313808, 35.066078, 35.003910>,  <48.000225, 34.527779, 34.613354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.313808, 35.066078, 35.003910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930939, 35.067440, 35.119701>,  <47.701218, 35.068256, 35.189178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930939, 35.067440, 35.119701>,  <48.313808, 35.066078, 35.003910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.930939, 35.067440, 35.119701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288616, 0.089402, 0.953262,
		-0.022635, 0.995990, -0.086556,
		-0.957177, 0.003405, 0.289482,
		47.643784, 35.068462, 35.206547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.540031, 39.048626, 23.525082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305782, 39.312950, 23.712856>,  <35.165234, 39.471546, 23.825521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305782, 39.312950, 23.712856>,  <35.540031, 39.048626, 23.525082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305782, 39.312950, 23.712856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250722, -0.698407, 0.670348,
		0.770830, 0.274876, 0.574686,
		-0.585627, 0.660811, 0.469436,
		35.130093, 39.511192, 23.853687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808109, 39.110050, 24.315523>,  <35.540031, 39.048626, 23.525082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808109, 39.110050, 24.315523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434814, 39.253696, 24.319736>,  <35.210838, 39.339886, 24.322264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434814, 39.253696, 24.319736>,  <35.808109, 39.110050, 24.315523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434814, 39.253696, 24.319736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225403, -0.608076, 0.761208,
		0.279768, 0.708010, 0.648423,
		-0.933233, 0.359118, 0.010532,
		35.154846, 39.361431, 24.322897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533787, 39.111122, 24.983088>,  <35.808109, 39.110050, 24.315523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533787, 39.111122, 24.983088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174694, 39.159855, 24.813745>,  <34.959236, 39.189095, 24.712139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174694, 39.159855, 24.813745>,  <35.533787, 39.111122, 24.983088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174694, 39.159855, 24.813745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430228, -0.449165, 0.783042,
		-0.094756, 0.885103, 0.455646,
		-0.897733, 0.121834, -0.423357,
		34.905373, 39.196404, 24.686739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043064, 39.508839, 25.442854>,  <35.533787, 39.111122, 24.983088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043064, 39.508839, 25.442854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815228, 39.287464, 25.199783>,  <34.678524, 39.154640, 25.053942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815228, 39.287464, 25.199783>,  <35.043064, 39.508839, 25.442854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815228, 39.287464, 25.199783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502724, -0.350327, 0.790278,
		-0.650253, 0.755632, -0.078681,
		-0.569595, -0.553436, -0.607676,
		34.644348, 39.121433, 25.017481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296989, 39.629520, 25.607378>,  <35.043064, 39.508839, 25.442854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296989, 39.629520, 25.607378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330608, 39.274368, 25.426445>,  <34.350780, 39.061275, 25.317884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330608, 39.274368, 25.426445>,  <34.296989, 39.629520, 25.607378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330608, 39.274368, 25.426445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452875, -0.438386, 0.776351,
		-0.887603, 0.139601, -0.438944,
		0.084048, -0.887879, -0.452335,
		34.355824, 39.008003, 25.290745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643745, 39.274120, 25.734661>,  <34.296989, 39.629520, 25.607378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643745, 39.274120, 25.734661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.887730, 38.973289, 25.634808>,  <34.034122, 38.792789, 25.574896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.887730, 38.973289, 25.634808>,  <33.643745, 39.274120, 25.734661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887730, 38.973289, 25.634808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433629, -0.580459, 0.689226,
		-0.663258, -0.312153, -0.680184,
		0.609963, -0.752082, -0.249635,
		34.070721, 38.747665, 25.559917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183208, 38.659142, 25.650909>,  <33.643745, 39.274120, 25.734661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183208, 38.659142, 25.650909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551334, 38.527504, 25.735493>,  <33.772209, 38.448521, 25.786243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551334, 38.527504, 25.735493>,  <33.183208, 38.659142, 25.650909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551334, 38.527504, 25.735493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379333, -0.618811, 0.687880,
		-0.095522, -0.713281, -0.694338,
		0.920316, -0.329093, 0.211461,
		33.827431, 38.428776, 25.798931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057255, 37.958569, 25.730665>,  <33.183208, 38.659142, 25.650909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057255, 37.958569, 25.730665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412304, 38.022511, 25.903442>,  <33.625332, 38.060875, 26.007109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412304, 38.022511, 25.903442>,  <33.057255, 37.958569, 25.730665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412304, 38.022511, 25.903442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265118, -0.589545, 0.762987,
		0.376617, -0.791759, -0.480912,
		0.887622, 0.159856, 0.431943,
		33.678589, 38.070469, 26.033026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185860, 37.258656, 25.961374>,  <33.057255, 37.958569, 25.730665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185860, 37.258656, 25.961374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450500, 37.466278, 26.177841>,  <33.609283, 37.590851, 26.307722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450500, 37.466278, 26.177841>,  <33.185860, 37.258656, 25.961374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450500, 37.466278, 26.177841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229968, -0.546471, 0.805285,
		0.713721, -0.657230, -0.242181,
		0.661602, 0.519054, 0.541170,
		33.648983, 37.621994, 26.340193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574867, 36.735088, 26.285337>,  <33.185860, 37.258656, 25.961374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574867, 36.735088, 26.285337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620697, 37.069477, 26.500008>,  <33.648193, 37.270111, 26.628811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620697, 37.069477, 26.500008>,  <33.574867, 36.735088, 26.285337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620697, 37.069477, 26.500008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100166, -0.527760, 0.843467,
		0.988352, -0.150397, 0.023268,
		0.114576, 0.835973, 0.536677,
		33.655071, 37.320271, 26.661011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143883, 36.640121, 26.685249>,  <33.574867, 36.735088, 26.285337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143883, 36.640121, 26.685249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.909836, 36.910458, 26.864529>,  <33.769409, 37.072659, 26.972095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.909836, 36.910458, 26.864529>,  <34.143883, 36.640121, 26.685249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909836, 36.910458, 26.864529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043434, -0.525770, 0.849517,
		0.809785, 0.516534, 0.278283,
		-0.585117, 0.675839, 0.448196,
		33.734303, 37.113209, 26.998987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295650, 36.694386, 27.371841>,  <34.143883, 36.640121, 26.685249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295650, 36.694386, 27.371841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.958721, 36.905094, 27.417437>,  <33.756561, 37.031521, 27.444794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.958721, 36.905094, 27.417437>,  <34.295650, 36.694386, 27.371841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958721, 36.905094, 27.417437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125585, -0.397502, 0.908967,
		0.524132, 0.751332, 0.400982,
		-0.842327, 0.526776, 0.113988,
		33.706024, 37.063126, 27.451633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193085, 36.802788, 28.116655>,  <34.295650, 36.694386, 27.371841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193085, 36.802788, 28.116655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831379, 36.908741, 27.982706>,  <33.614357, 36.972313, 27.902336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831379, 36.908741, 27.982706>,  <34.193085, 36.802788, 28.116655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831379, 36.908741, 27.982706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410459, -0.323275, 0.852653,
		0.117597, 0.908477, 0.401051,
		-0.904265, 0.264884, -0.334876,
		33.560101, 36.988205, 27.882244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929592, 37.100460, 28.654001>,  <34.193085, 36.802788, 28.116655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929592, 37.100460, 28.654001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.612221, 36.974941, 28.445383>,  <33.421799, 36.899632, 28.320211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.612221, 36.974941, 28.445383>,  <33.929592, 37.100460, 28.654001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612221, 36.974941, 28.445383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434827, -0.307369, 0.846434,
		-0.425915, 0.898363, 0.107427,
		-0.793424, -0.313797, -0.521545,
		33.374195, 36.880802, 28.288919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334606, 37.386967, 28.966890>,  <33.929592, 37.100460, 28.654001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334606, 37.386967, 28.966890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223320, 37.068249, 28.752333>,  <33.156548, 36.877018, 28.623598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.223320, 37.068249, 28.752333>,  <33.334606, 37.386967, 28.966890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223320, 37.068249, 28.752333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627302, -0.272170, 0.729668,
		-0.727384, 0.539487, -0.424107,
		-0.278217, -0.796792, -0.536394,
		33.139854, 36.829212, 28.591415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607426, 37.237942, 28.969011>,  <33.334606, 37.386967, 28.966890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607426, 37.237942, 28.969011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.731186, 36.866417, 28.887453>,  <32.805443, 36.643501, 28.838518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.731186, 36.866417, 28.887453>,  <32.607426, 37.237942, 28.969011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731186, 36.866417, 28.887453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643687, -0.362388, 0.674049,
		-0.699956, -0.077307, -0.709990,
		0.309401, -0.928816, -0.203895,
		32.824005, 36.587772, 28.826284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119690, 36.715778, 29.293322>,  <32.607426, 37.237942, 28.969011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119690, 36.715778, 29.293322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450089, 36.499058, 29.231110>,  <32.648327, 36.369026, 29.193783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450089, 36.499058, 29.231110>,  <32.119690, 36.715778, 29.293322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450089, 36.499058, 29.231110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219710, -0.563554, 0.796326,
		-0.519098, -0.623588, -0.584530,
		0.825993, -0.541798, -0.155531,
		32.697887, 36.336517, 29.184450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906103, 36.108334, 29.402418>,  <32.119690, 36.715778, 29.293322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906103, 36.108334, 29.402418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.301132, 36.059658, 29.442202>,  <32.538151, 36.030453, 29.466072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.301132, 36.059658, 29.442202>,  <31.906103, 36.108334, 29.402418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301132, 36.059658, 29.442202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156016, -0.682771, 0.713780,
		-0.018954, -0.720427, -0.693272,
		0.987573, -0.121690, 0.099457,
		32.597404, 36.023151, 29.472038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034252, 35.318291, 29.587606>,  <31.906103, 36.108334, 29.402418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034252, 35.318291, 29.587606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.373291, 35.498302, 29.700066>,  <32.576714, 35.606312, 29.767542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.373291, 35.498302, 29.700066>,  <32.034252, 35.318291, 29.587606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373291, 35.498302, 29.700066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125610, -0.684938, 0.717692,
		0.515554, -0.573001, -0.637082,
		0.847600, 0.450033, 0.281148,
		32.627571, 35.633312, 29.784410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467766, 34.798988, 29.760803>,  <32.034252, 35.318291, 29.587606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467766, 34.798988, 29.760803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.655468, 35.108349, 29.931282>,  <32.768089, 35.293964, 30.033569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.655468, 35.108349, 29.931282>,  <32.467766, 34.798988, 29.760803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655468, 35.108349, 29.931282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163136, -0.550253, 0.818906,
		0.867861, -0.314750, -0.384381,
		0.469258, 0.773404, 0.426196,
		32.796246, 35.340370, 30.059141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111656, 34.552475, 30.021669>,  <32.467766, 34.798988, 29.760803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111656, 34.552475, 30.021669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037628, 34.890148, 30.222908>,  <32.993214, 35.092751, 30.343651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037628, 34.890148, 30.222908>,  <33.111656, 34.552475, 30.021669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037628, 34.890148, 30.222908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182975, -0.473388, 0.861640,
		0.965542, 0.251515, -0.066856,
		-0.185067, 0.844182, 0.503097,
		32.982109, 35.143402, 30.373837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673191, 34.766796, 30.565100>,  <33.111656, 34.552475, 30.021669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673191, 34.766796, 30.565100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027866, 34.604103, 30.653055>,  <34.240673, 34.506489, 30.705828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027866, 34.604103, 30.653055>,  <33.673191, 34.766796, 30.565100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027866, 34.604103, 30.653055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455228, 0.684725, -0.569139,
		0.080922, 0.604750, 0.792294,
		0.886690, -0.406730, 0.219890,
		34.293873, 34.482082, 30.719023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141682, 35.390648, 30.506815>,  <33.673191, 34.766796, 30.565100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141682, 35.390648, 30.506815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397537, 35.083572, 30.491211>,  <34.551052, 34.899326, 30.481848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397537, 35.083572, 30.491211>,  <34.141682, 35.390648, 30.506815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397537, 35.083572, 30.491211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536106, 0.481905, -0.693078,
		0.550865, 0.422406, 0.719806,
		0.639639, -0.767685, -0.039010,
		34.589428, 34.853268, 30.479507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855843, 35.670090, 30.471596>,  <34.141682, 35.390648, 30.506815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855843, 35.670090, 30.471596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853268, 35.289345, 30.349016>,  <34.851723, 35.060898, 30.275469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853268, 35.289345, 30.349016>,  <34.855843, 35.670090, 30.471596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853268, 35.289345, 30.349016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651815, 0.228410, -0.723164,
		0.758350, -0.204408, 0.618969,
		-0.006441, -0.951865, -0.306451,
		34.851334, 35.003784, 30.257080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557465, 35.424324, 30.412621>,  <34.855843, 35.670090, 30.471596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557465, 35.424324, 30.412621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.325813, 35.205223, 30.171101>,  <35.186821, 35.073761, 30.026188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.325813, 35.205223, 30.171101>,  <35.557465, 35.424324, 30.412621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325813, 35.205223, 30.171101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658099, 0.123021, -0.742813,
		0.481157, -0.827547, 0.289229,
		-0.579132, -0.547751, -0.603800,
		35.152073, 35.040897, 29.989960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050545, 35.241108, 29.903105>,  <35.557465, 35.424324, 30.412621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050545, 35.241108, 29.903105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710358, 35.126350, 29.726742>,  <35.506245, 35.057495, 29.620924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710358, 35.126350, 29.726742>,  <36.050545, 35.241108, 29.903105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710358, 35.126350, 29.726742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480161, -0.081073, -0.873426,
		0.214838, -0.954524, 0.206706,
		-0.850465, -0.286897, -0.440908,
		35.455219, 35.040279, 29.594469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214653, 34.674084, 29.533907>,  <36.050545, 35.241108, 29.903105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214653, 34.674084, 29.533907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879650, 34.806572, 29.360071>,  <35.678646, 34.886063, 29.255770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879650, 34.806572, 29.360071>,  <36.214653, 34.674084, 29.533907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879650, 34.806572, 29.360071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412537, -0.138263, -0.900387,
		-0.358313, -0.933369, -0.020844,
		-0.837511, 0.331219, -0.434590,
		35.628395, 34.905937, 29.229694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129185, 34.263741, 28.977835>,  <36.214653, 34.674084, 29.533907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129185, 34.263741, 28.977835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903095, 34.585876, 28.906328>,  <35.767441, 34.779156, 28.863424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903095, 34.585876, 28.906328>,  <36.129185, 34.263741, 28.977835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903095, 34.585876, 28.906328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344275, 0.033353, -0.938276,
		-0.749667, -0.591877, -0.296109,
		-0.565221, 0.805338, -0.178765,
		35.733528, 34.827477, 28.852699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887234, 34.195084, 28.286011>,  <36.129185, 34.263741, 28.977835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887234, 34.195084, 28.286011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.812191, 34.581924, 28.354727>,  <35.767166, 34.814030, 28.395956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.812191, 34.581924, 28.354727>,  <35.887234, 34.195084, 28.286011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812191, 34.581924, 28.354727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197305, 0.208435, -0.957928,
		-0.962224, -0.145818, -0.229918,
		-0.187606, 0.967105, 0.171790,
		35.755909, 34.872055, 28.406263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523609, 34.437096, 27.671347>,  <35.887234, 34.195084, 28.286011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523609, 34.437096, 27.671347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693783, 34.747684, 27.857296>,  <35.795887, 34.934036, 27.968864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693783, 34.747684, 27.857296>,  <35.523609, 34.437096, 27.671347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693783, 34.747684, 27.857296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278840, 0.376220, -0.883576,
		-0.860963, 0.505525, -0.056455,
		0.425431, 0.776468, 0.464872,
		35.821411, 34.980625, 27.996758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286358, 35.041603, 27.334265>,  <35.523609, 34.437096, 27.671347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286358, 35.041603, 27.334265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619404, 35.180984, 27.506464>,  <35.819233, 35.264614, 27.609783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619404, 35.180984, 27.506464>,  <35.286358, 35.041603, 27.334265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619404, 35.180984, 27.506464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343531, 0.284786, -0.894921,
		-0.434437, 0.893017, 0.117414,
		0.832617, 0.348452, 0.430500,
		35.869190, 35.285519, 27.635614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412472, 35.581375, 27.062189>,  <35.286358, 35.041603, 27.334265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412472, 35.581375, 27.062189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782692, 35.521610, 27.201344>,  <36.004826, 35.485752, 27.284836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782692, 35.521610, 27.201344>,  <35.412472, 35.581375, 27.062189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782692, 35.521610, 27.201344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378409, 0.334846, -0.862952,
		0.012449, 0.930352, 0.366457,
		0.925555, -0.149413, 0.347885,
		36.060360, 35.476788, 27.305710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784035, 36.179241, 26.943924>,  <35.412472, 35.581375, 27.062189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784035, 36.179241, 26.943924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077648, 35.910229, 26.981678>,  <36.253815, 35.748821, 27.004332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077648, 35.910229, 26.981678>,  <35.784035, 36.179241, 26.943924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077648, 35.910229, 26.981678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431079, 0.354019, -0.829965,
		0.524759, 0.649906, 0.549772,
		0.734029, -0.672527, 0.094386,
		36.297855, 35.708469, 27.009995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346668, 36.566498, 26.944952>,  <35.784035, 36.179241, 26.943924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346668, 36.566498, 26.944952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493099, 36.217918, 26.814379>,  <36.580959, 36.008770, 26.736034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493099, 36.217918, 26.814379>,  <36.346668, 36.566498, 26.944952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493099, 36.217918, 26.814379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457263, 0.473965, -0.752508,
		0.810493, 0.126209, 0.571990,
		0.366076, -0.871452, -0.326434,
		36.602921, 35.956482, 26.716448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022839, 36.641624, 26.808891>,  <36.346668, 36.566498, 26.944952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022839, 36.641624, 26.808891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919441, 36.321014, 26.593208>,  <36.857403, 36.128647, 26.463799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919441, 36.321014, 26.593208>,  <37.022839, 36.641624, 26.808891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919441, 36.321014, 26.593208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595747, 0.307125, -0.742132,
		0.760440, -0.513063, 0.398117,
		-0.258489, -0.801524, -0.539205,
		36.841896, 36.080559, 26.431446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598537, 36.421711, 26.522127>,  <37.022839, 36.641624, 26.808891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598537, 36.421711, 26.522127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299717, 36.286350, 26.293249>,  <37.120426, 36.205135, 26.155922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299717, 36.286350, 26.293249>,  <37.598537, 36.421711, 26.522127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299717, 36.286350, 26.293249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432647, 0.406002, -0.804971,
		0.504715, -0.848909, -0.156895,
		-0.747047, -0.338401, -0.572193,
		37.075603, 36.184830, 26.121592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908886, 36.362427, 25.966705>,  <37.598537, 36.421711, 26.522127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908886, 36.362427, 25.966705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546658, 36.326214, 25.800936>,  <37.329319, 36.304485, 25.701475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546658, 36.326214, 25.800936>,  <37.908886, 36.362427, 25.966705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546658, 36.326214, 25.800936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290532, 0.579477, -0.761444,
		0.309083, -0.809944, -0.498455,
		-0.905571, -0.090533, -0.414421,
		37.274986, 36.299053, 25.676609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941444, 36.262932, 25.306852>,  <37.908886, 36.362427, 25.966705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941444, 36.262932, 25.306852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560268, 36.384201, 25.306969>,  <37.331562, 36.456963, 25.307039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560268, 36.384201, 25.306969>,  <37.941444, 36.262932, 25.306852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560268, 36.384201, 25.306969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198773, 0.625510, -0.754471,
		-0.228917, -0.718905, -0.656333,
		-0.952936, 0.303172, 0.000291,
		37.274387, 36.475151, 25.307056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721527, 36.166740, 24.616381>,  <37.941444, 36.262932, 25.306852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721527, 36.166740, 24.616381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448948, 36.424431, 24.755293>,  <37.285400, 36.579044, 24.838640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448948, 36.424431, 24.755293>,  <37.721527, 36.166740, 24.616381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448948, 36.424431, 24.755293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147428, 0.585616, -0.797069,
		-0.716865, -0.491962, -0.494043,
		-0.681447, 0.644227, 0.347278,
		37.244514, 36.617699, 24.859476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295795, 36.291477, 24.058329>,  <37.721527, 36.166740, 24.616381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295795, 36.291477, 24.058329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235954, 36.599197, 24.306778>,  <37.200050, 36.783829, 24.455847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235954, 36.599197, 24.306778>,  <37.295795, 36.291477, 24.058329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235954, 36.599197, 24.306778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010147, 0.626965, -0.778981,
		-0.988694, -0.122838, -0.085988,
		-0.149600, 0.769302, 0.621124,
		37.191074, 36.829987, 24.493114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.567635, 36.891552, 23.728764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802280, 37.091774, 23.983427>,  <36.943066, 37.211906, 24.136225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.802280, 37.091774, 23.983427>,  <36.567635, 36.891552, 23.728764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802280, 37.091774, 23.983427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093091, 0.739239, -0.666978,
		-0.804502, 0.450523, 0.387048,
		0.586610, 0.500554, 0.636658,
		36.978264, 37.241940, 24.174425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352180, 37.533577, 23.628830>,  <36.567635, 36.891552, 23.728764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352180, 37.533577, 23.628830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705208, 37.590103, 23.808210>,  <36.917023, 37.624020, 23.915838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705208, 37.590103, 23.808210>,  <36.352180, 37.533577, 23.628830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705208, 37.590103, 23.808210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089751, 0.885597, -0.455701,
		-0.461542, 0.442435, 0.768915,
		0.882567, 0.141314, 0.448449,
		36.969978, 37.632496, 23.942745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273296, 38.167294, 23.958866>,  <36.352180, 37.533577, 23.628830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273296, 38.167294, 23.958866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663467, 38.087101, 23.922319>,  <36.897572, 38.038986, 23.900393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663467, 38.087101, 23.922319>,  <36.273296, 38.167294, 23.958866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663467, 38.087101, 23.922319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148200, 0.903903, -0.401243,
		0.163027, 0.377843, 0.911404,
		0.975428, -0.200483, -0.091365,
		36.956097, 38.026955, 23.894911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565407, 38.809727, 24.086821>,  <36.273296, 38.167294, 23.958866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565407, 38.809727, 24.086821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883381, 38.623707, 23.930971>,  <37.074165, 38.512096, 23.837461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883381, 38.623707, 23.930971>,  <36.565407, 38.809727, 24.086821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883381, 38.623707, 23.930971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286009, 0.853627, -0.435339,
		0.535048, 0.234630, 0.811586,
		0.794935, -0.465049, -0.389625,
		37.121861, 38.484192, 23.814083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071728, 39.317181, 24.163738>,  <36.565407, 38.809727, 24.086821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071728, 39.317181, 24.163738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.153770, 39.062523, 23.866385>,  <37.202995, 38.909729, 23.687973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.153770, 39.062523, 23.866385>,  <37.071728, 39.317181, 24.163738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153770, 39.062523, 23.866385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117316, 0.770047, -0.627108,
		0.971683, 0.041413, 0.232629,
		0.205106, -0.636642, -0.743383,
		37.215302, 38.871529, 23.643370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469265, 39.717995, 23.735458>,  <37.071728, 39.317181, 24.163738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469265, 39.717995, 23.735458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346436, 39.408092, 23.514385>,  <37.272739, 39.222149, 23.381742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346436, 39.408092, 23.514385>,  <37.469265, 39.717995, 23.735458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346436, 39.408092, 23.514385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200502, 0.515037, -0.833388,
		0.930327, -0.366721, -0.002811,
		-0.307069, -0.774760, -0.552682,
		37.254314, 39.175663, 23.348581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030945, 39.446228, 23.256689>,  <37.469265, 39.717995, 23.735458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030945, 39.446228, 23.256689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684143, 39.322258, 23.100613>,  <37.476063, 39.247875, 23.006966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684143, 39.322258, 23.100613>,  <38.030945, 39.446228, 23.256689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684143, 39.322258, 23.100613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301276, 0.297684, -0.905879,
		0.396907, -0.902957, -0.164722,
		-0.867005, -0.309923, -0.390192,
		37.424042, 39.229282, 22.983555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199482, 39.150093, 22.575541>,  <38.030945, 39.446228, 23.256689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199482, 39.150093, 22.575541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808102, 39.224239, 22.539146>,  <37.573273, 39.268726, 22.517309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808102, 39.224239, 22.539146>,  <38.199482, 39.150093, 22.575541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808102, 39.224239, 22.539146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189478, 0.630801, -0.752455,
		-0.082088, -0.753478, -0.652329,
		-0.978448, 0.185370, -0.090986,
		37.514568, 39.279850, 22.511850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990551, 39.048405, 21.887547>,  <38.199482, 39.150093, 22.575541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990551, 39.048405, 21.887547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714058, 39.301941, 22.026367>,  <37.548161, 39.454063, 22.109659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714058, 39.301941, 22.026367>,  <37.990551, 39.048405, 21.887547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714058, 39.301941, 22.026367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151057, 0.596391, -0.788353,
		-0.706665, -0.492513, -0.507992,
		-0.691236, 0.633837, 0.347051,
		37.506687, 39.492092, 22.130482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594158, 39.168503, 21.312302>,  <37.990551, 39.048405, 21.887547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594158, 39.168503, 21.312302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534660, 39.467392, 21.571388>,  <37.498962, 39.646725, 21.726841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534660, 39.467392, 21.571388>,  <37.594158, 39.168503, 21.312302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534660, 39.467392, 21.571388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112128, 0.663524, -0.739705,
		-0.982498, -0.037401, -0.182480,
		-0.148745, 0.747219, 0.647717,
		37.490036, 39.691559, 21.765703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057053, 39.537258, 20.969826>,  <37.594158, 39.168503, 21.312302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057053, 39.537258, 20.969826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248138, 39.766499, 21.236162>,  <37.362789, 39.904041, 21.395964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248138, 39.766499, 21.236162>,  <37.057053, 39.537258, 20.969826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248138, 39.766499, 21.236162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059410, 0.735107, -0.675343,
		-0.876505, 0.362177, 0.317121,
		0.477712, 0.573102, 0.665842,
		37.391453, 39.938431, 21.435915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865311, 40.269676, 20.882881>,  <37.057053, 39.537258, 20.969826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865311, 40.269676, 20.882881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217609, 40.296734, 21.070374>,  <37.428989, 40.312969, 21.182869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217609, 40.296734, 21.070374>,  <36.865311, 40.269676, 20.882881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217609, 40.296734, 21.070374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270925, 0.739826, -0.615839,
		-0.388440, 0.669389, 0.633272,
		0.880747, 0.067647, 0.468732,
		37.481834, 40.317028, 21.210993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952457, 40.953098, 21.009296>,  <36.865311, 40.269676, 20.882881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952457, 40.953098, 21.009296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330345, 40.836960, 21.070232>,  <37.557079, 40.767277, 21.106794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330345, 40.836960, 21.070232>,  <36.952457, 40.953098, 21.009296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330345, 40.836960, 21.070232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326370, 0.788121, -0.521870,
		0.031458, 0.542740, 0.839312,
		0.944718, -0.290343, 0.152342,
		37.613762, 40.749855, 21.115934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343716, 41.597519, 21.182167>,  <36.952457, 40.953098, 21.009296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343716, 41.597519, 21.182167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635880, 41.337971, 21.096874>,  <37.811176, 41.182240, 21.045698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635880, 41.337971, 21.096874>,  <37.343716, 41.597519, 21.182167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635880, 41.337971, 21.096874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500028, 0.720669, -0.480216,
		0.465269, 0.244131, 0.850837,
		0.730408, -0.648872, -0.213233,
		37.855003, 41.143311, 21.032904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988327, 41.979389, 21.285429>,  <37.343716, 41.597519, 21.182167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988327, 41.979389, 21.285429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079300, 41.674919, 21.042482>,  <38.133884, 41.492237, 20.896715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079300, 41.674919, 21.042482>,  <37.988327, 41.979389, 21.285429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079300, 41.674919, 21.042482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624639, 0.592522, -0.508668,
		0.747061, -0.263697, 0.610216,
		0.227432, -0.761171, -0.607366,
		38.147530, 41.446568, 20.860273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635933, 42.106476, 21.154636>,  <37.988327, 41.979389, 21.285429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635933, 42.106476, 21.154636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533531, 41.841160, 20.873350>,  <38.472088, 41.681973, 20.704578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533531, 41.841160, 20.873350>,  <38.635933, 42.106476, 21.154636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533531, 41.841160, 20.873350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474052, 0.547839, -0.689310,
		0.842458, -0.509829, 0.174181,
		-0.256006, -0.663285, -0.703216,
		38.456730, 41.642174, 20.662386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244678, 42.024746, 20.807333>,  <38.635933, 42.106476, 21.154636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244678, 42.024746, 20.807333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955730, 41.913967, 20.553881>,  <38.782364, 41.847500, 20.401810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955730, 41.913967, 20.553881>,  <39.244678, 42.024746, 20.807333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955730, 41.913967, 20.553881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542430, 0.341386, -0.767610,
		0.428899, -0.898196, -0.096382,
		-0.722367, -0.276947, -0.633629,
		38.739021, 41.830883, 20.363792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659111, 41.749500, 20.286751>,  <39.244678, 42.024746, 20.807333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659111, 41.749500, 20.286751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.304176, 41.877396, 20.153841>,  <39.091217, 41.954132, 20.074095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.304176, 41.877396, 20.153841>,  <39.659111, 41.749500, 20.286751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304176, 41.877396, 20.153841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451710, 0.457786, -0.765761,
		-0.092736, -0.829577, -0.550639,
		-0.887332, 0.319742, -0.332275,
		39.037975, 41.973320, 20.054159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761559, 41.733696, 19.572351>,  <39.659111, 41.749500, 20.286751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761559, 41.733696, 19.572351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436359, 41.960880, 19.623678>,  <39.241241, 42.097191, 19.654474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436359, 41.960880, 19.623678>,  <39.761559, 41.733696, 19.572351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436359, 41.960880, 19.623678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303895, 0.601859, -0.738521,
		-0.496677, -0.561418, -0.661907,
		-0.812994, 0.567957, 0.128318,
		39.192463, 42.131268, 19.662174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562138, 41.925114, 18.851412>,  <39.761559, 41.733696, 19.572351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562138, 41.925114, 18.851412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.383293, 42.188560, 19.093508>,  <39.275986, 42.346626, 19.238766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.383293, 42.188560, 19.093508>,  <39.562138, 41.925114, 18.851412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383293, 42.188560, 19.093508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189227, 0.730973, -0.655645,
		-0.874233, -0.178620, -0.451455,
		-0.447113, 0.658614, 0.605241,
		39.249161, 42.386147, 19.275080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945915, 42.177582, 18.587109>,  <39.562138, 41.925114, 18.851412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945915, 42.177582, 18.587109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072441, 42.470581, 18.828238>,  <39.148357, 42.646381, 18.972916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072441, 42.470581, 18.828238>,  <38.945915, 42.177582, 18.587109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072441, 42.470581, 18.828238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142547, 0.664936, -0.733171,
		-0.937883, 0.145983, 0.314745,
		0.316316, 0.732495, 0.602823,
		39.167336, 42.690331, 19.009085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563492, 42.704136, 18.429726>,  <38.945915, 42.177582, 18.587109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563492, 42.704136, 18.429726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895096, 42.844158, 18.604174>,  <39.094059, 42.928169, 18.708843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.895096, 42.844158, 18.604174>,  <38.563492, 42.704136, 18.429726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895096, 42.844158, 18.604174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044974, 0.735602, -0.675919,
		-0.557419, 0.579959, 0.594079,
		0.829012, 0.350052, 0.436122,
		39.143799, 42.949173, 18.735010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515278, 43.408096, 18.410395>,  <38.563492, 42.704136, 18.429726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515278, 43.408096, 18.410395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907604, 43.351528, 18.464064>,  <39.142998, 43.317585, 18.496265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907604, 43.351528, 18.464064>,  <38.515278, 43.408096, 18.410395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907604, 43.351528, 18.464064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194782, 0.738999, -0.644934,
		-0.007943, 0.658695, 0.752368,
		0.980814, -0.141425, 0.134172,
		39.201847, 43.309101, 18.504316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790432, 44.085701, 18.423868>,  <38.515278, 43.408096, 18.410395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790432, 44.085701, 18.423868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085922, 43.852856, 18.287975>,  <39.263218, 43.713146, 18.206440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085922, 43.852856, 18.287975>,  <38.790432, 44.085701, 18.423868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085922, 43.852856, 18.287975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200602, 0.671105, -0.713706,
		0.643457, 0.459085, 0.612539,
		0.738730, -0.582116, -0.339734,
		39.307541, 43.678223, 18.186054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005280, 44.095844, 18.542667>,  <38.790432, 44.085701, 18.423868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005280, 44.095844, 18.542667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862595, 44.424576, 18.720366>,  <37.776985, 44.621815, 18.826984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862595, 44.424576, 18.720366>,  <38.005280, 44.095844, 18.542667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862595, 44.424576, 18.720366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273686, -0.546593, 0.791412,
		0.893228, 0.160719, 0.419897,
		-0.356708, 0.821830, 0.444245,
		37.755581, 44.671124, 18.853640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349453, 44.159527, 19.093081>,  <38.005280, 44.095844, 18.542667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349453, 44.159527, 19.093081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013325, 44.366703, 19.157072>,  <37.811649, 44.491009, 19.195467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013325, 44.366703, 19.157072>,  <38.349453, 44.159527, 19.093081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013325, 44.366703, 19.157072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143898, -0.497657, 0.855354,
		0.522640, 0.695752, 0.492723,
		-0.840322, 0.517944, 0.159979,
		37.761227, 44.522087, 19.205065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431042, 44.580227, 19.817221>,  <38.349453, 44.159527, 19.093081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431042, 44.580227, 19.817221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043442, 44.522804, 19.736792>,  <37.810883, 44.488350, 19.688534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043442, 44.522804, 19.736792>,  <38.431042, 44.580227, 19.817221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043442, 44.522804, 19.736792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139422, -0.354135, 0.924743,
		-0.203959, 0.924110, 0.323142,
		-0.969001, -0.143556, -0.201071,
		37.752743, 44.479736, 19.676470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058235, 44.962780, 20.410074>,  <38.431042, 44.580227, 19.817221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058235, 44.962780, 20.410074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793167, 44.709118, 20.250715>,  <37.634129, 44.556919, 20.155100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793167, 44.709118, 20.250715>,  <38.058235, 44.962780, 20.410074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793167, 44.709118, 20.250715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282157, -0.281363, 0.917182,
		-0.693730, 0.720196, 0.007518,
		-0.662666, -0.634155, -0.398398,
		37.594368, 44.518871, 20.131195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472698, 45.103943, 20.816654>,  <38.058235, 44.962780, 20.410074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472698, 45.103943, 20.816654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444149, 44.744659, 20.643160>,  <37.427021, 44.529091, 20.539062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444149, 44.744659, 20.643160>,  <37.472698, 45.103943, 20.816654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444149, 44.744659, 20.643160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278908, -0.399529, 0.873262,
		-0.957662, 0.183301, -0.222001,
		-0.071373, -0.898208, -0.433738,
		37.422737, 44.475197, 20.513039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838600, 44.879730, 21.108772>,  <37.472698, 45.103943, 20.816654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838600, 44.879730, 21.108772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012169, 44.546761, 20.970917>,  <37.116310, 44.346977, 20.888203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012169, 44.546761, 20.970917>,  <36.838600, 44.879730, 21.108772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012169, 44.546761, 20.970917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211790, -0.466055, 0.859033,
		-0.875702, -0.299765, -0.378532,
		0.433925, -0.832426, -0.344638,
		37.142345, 44.297031, 20.867525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463837, 44.400581, 21.356234>,  <36.838600, 44.879730, 21.108772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463837, 44.400581, 21.356234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764900, 44.183651, 21.206900>,  <36.945538, 44.053493, 21.117298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764900, 44.183651, 21.206900>,  <36.463837, 44.400581, 21.356234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764900, 44.183651, 21.206900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304838, -0.789632, 0.532499,
		-0.583588, -0.286985, -0.759648,
		0.752661, -0.542329, -0.373336,
		36.990700, 44.020950, 21.094898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240288, 43.860264, 20.945374>,  <36.463837, 44.400581, 21.356234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240288, 43.860264, 20.945374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585831, 43.741241, 21.107958>,  <36.793156, 43.669827, 21.205507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585831, 43.741241, 21.107958>,  <36.240288, 43.860264, 20.945374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585831, 43.741241, 21.107958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477594, -0.740356, 0.473051,
		0.160165, -0.602771, -0.781674,
		0.863859, -0.297557, 0.406459,
		36.844990, 43.651974, 21.229895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438835, 43.081646, 20.873514>,  <36.240288, 43.860264, 20.945374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438835, 43.081646, 20.873514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654671, 43.213871, 21.183243>,  <36.784172, 43.293205, 21.369080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654671, 43.213871, 21.183243>,  <36.438835, 43.081646, 20.873514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654671, 43.213871, 21.183243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269014, -0.803794, 0.530610,
		0.797793, -0.494615, -0.344794,
		0.539591, 0.330562, 0.774320,
		36.816547, 43.313038, 21.415539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751236, 42.461864, 21.047939>,  <36.438835, 43.081646, 20.873514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751236, 42.461864, 21.047939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784916, 42.708370, 21.361149>,  <36.805126, 42.856274, 21.549074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784916, 42.708370, 21.361149>,  <36.751236, 42.461864, 21.047939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784916, 42.708370, 21.361149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251804, -0.747149, 0.615113,
		0.964108, -0.248962, 0.092267,
		0.084202, 0.616268, 0.783022,
		36.810177, 42.893250, 21.596056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194332, 42.177486, 21.538877>,  <36.751236, 42.461864, 21.047939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194332, 42.177486, 21.538877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932228, 42.412636, 21.728634>,  <36.774967, 42.553726, 21.842487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932228, 42.412636, 21.728634>,  <37.194332, 42.177486, 21.538877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932228, 42.412636, 21.728634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329154, -0.787437, 0.521153,
		0.679923, 0.185342, 0.709474,
		-0.655258, 0.587870, 0.474391,
		36.735649, 42.588997, 21.870951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271709, 41.946224, 22.224747>,  <37.194332, 42.177486, 21.538877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271709, 41.946224, 22.224747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921757, 42.139462, 22.210911>,  <36.711784, 42.255405, 22.202610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921757, 42.139462, 22.210911>,  <37.271709, 41.946224, 22.224747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921757, 42.139462, 22.210911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371561, -0.623656, 0.687747,
		0.310677, 0.614551, 0.725126,
		-0.874884, 0.483096, -0.034587,
		36.659290, 42.284389, 22.200535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065865, 41.763008, 22.817263>,  <37.271709, 41.946224, 22.224747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065865, 41.763008, 22.817263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722317, 41.907085, 22.671602>,  <36.516190, 41.993530, 22.584206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722317, 41.907085, 22.671602>,  <37.065865, 41.763008, 22.817263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722317, 41.907085, 22.671602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511950, -0.581696, 0.632089,
		0.015849, 0.729309, 0.684001,
		-0.858869, 0.360192, -0.364150,
		36.464657, 42.015144, 22.562357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607010, 41.985199, 23.460032>,  <37.065865, 41.763008, 22.817263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607010, 41.985199, 23.460032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403008, 41.907486, 23.124853>,  <36.280605, 41.860859, 22.923746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403008, 41.907486, 23.124853>,  <36.607010, 41.985199, 23.460032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403008, 41.907486, 23.124853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608692, -0.606799, 0.511164,
		-0.607774, 0.770746, 0.191210,
		-0.510004, -0.194284, -0.837944,
		36.250008, 41.849201, 22.873470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944397, 41.951447, 23.761278>,  <36.607010, 41.985199, 23.460032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944397, 41.951447, 23.761278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974747, 41.769611, 23.406292>,  <35.992958, 41.660511, 23.193300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974747, 41.769611, 23.406292>,  <35.944397, 41.951447, 23.761278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974747, 41.769611, 23.406292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588288, -0.739030, 0.328258,
		-0.805084, 0.497177, -0.323503,
		0.075876, -0.454588, -0.887464,
		35.997509, 41.633236, 23.140053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136204, 41.773731, 23.595369>,  <35.944397, 41.951447, 23.761278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136204, 41.773731, 23.595369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380390, 41.556664, 23.364601>,  <35.526901, 41.426422, 23.226139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380390, 41.556664, 23.364601>,  <35.136204, 41.773731, 23.595369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380390, 41.556664, 23.364601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543019, -0.817022, 0.193919,
		-0.576591, 0.194899, -0.793446,
		0.610469, -0.542668, -0.576922,
		35.563530, 41.393864, 23.191525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701218, 41.406437, 23.233423>,  <35.136204, 41.773731, 23.595369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701218, 41.406437, 23.233423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042927, 41.198792, 23.222576>,  <35.247952, 41.074203, 23.216068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042927, 41.198792, 23.222576>,  <34.701218, 41.406437, 23.233423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042927, 41.198792, 23.222576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505052, -0.841224, 0.193043,
		-0.123024, -0.151216, -0.980815,
		0.854276, -0.519112, -0.027119,
		35.299210, 41.043056, 23.214441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631027, 40.777866, 22.818569>,  <34.701218, 41.406437, 23.233423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631027, 40.777866, 22.818569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963860, 40.697102, 23.025211>,  <35.163559, 40.648643, 23.149197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963860, 40.697102, 23.025211>,  <34.631027, 40.777866, 22.818569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963860, 40.697102, 23.025211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422342, -0.834397, 0.354132,
		0.359549, -0.512848, -0.779558,
		0.832077, -0.201912, 0.516604,
		35.213482, 40.636528, 23.180193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831005, 40.073658, 22.711252>,  <34.631027, 40.777866, 22.818569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831005, 40.073658, 22.711252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038719, 40.149315, 23.044615>,  <35.163345, 40.194710, 23.244633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038719, 40.149315, 23.044615>,  <34.831005, 40.073658, 22.711252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038719, 40.149315, 23.044615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392740, -0.813304, 0.429293,
		0.759014, -0.550237, -0.348049,
		0.519282, 0.189146, 0.833409,
		35.194504, 40.206059, 23.294638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154438, 39.509991, 22.829006>,  <34.831005, 40.073658, 22.711252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154438, 39.509991, 22.829006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133667, 39.690910, 23.185148>,  <35.121204, 39.799461, 23.398832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133667, 39.690910, 23.185148>,  <35.154438, 39.509991, 22.829006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133667, 39.690910, 23.185148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380310, -0.833332, 0.401151,
		0.923400, -0.317779, 0.215288,
		-0.051930, 0.452299, 0.890353,
		35.118088, 39.826599, 23.452253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.881062, 34.717480, 26.420053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.792988, 35.097942, 26.506601>,  <36.740143, 35.326221, 26.558531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.792988, 35.097942, 26.506601>,  <36.881062, 34.717480, 26.420053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792988, 35.097942, 26.506601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263967, -0.271640, 0.925491,
		0.939063, 0.146666, 0.310886,
		-0.220188, 0.951158, 0.216372,
		36.726933, 35.383289, 26.571512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281288, 34.894836, 27.070971>,  <36.881062, 34.717480, 26.420053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281288, 34.894836, 27.070971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963360, 35.137505, 27.065268>,  <36.772602, 35.283108, 27.061846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963360, 35.137505, 27.065268>,  <37.281288, 34.894836, 27.070971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963360, 35.137505, 27.065268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209256, -0.251950, 0.944846,
		0.569622, 0.753968, 0.327206,
		-0.794822, 0.606674, -0.014256,
		36.724915, 35.319508, 27.060991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212025, 35.088570, 27.783518>,  <37.281288, 34.894836, 27.070971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212025, 35.088570, 27.783518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866196, 35.218719, 27.630344>,  <36.658699, 35.296810, 27.538441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866196, 35.218719, 27.630344>,  <37.212025, 35.088570, 27.783518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866196, 35.218719, 27.630344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441410, -0.127594, 0.888187,
		0.240131, 0.936938, 0.253937,
		-0.864577, 0.325372, -0.382935,
		36.606823, 35.316330, 27.515465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026356, 35.596588, 28.158453>,  <37.212025, 35.088570, 27.783518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026356, 35.596588, 28.158453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664764, 35.511951, 28.009830>,  <36.447811, 35.461170, 27.920658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664764, 35.511951, 28.009830>,  <37.026356, 35.596588, 28.158453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664764, 35.511951, 28.009830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364181, -0.074316, 0.928358,
		-0.224050, 0.974528, -0.009879,
		-0.903977, -0.211596, -0.371555,
		36.393570, 35.448471, 27.898363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458580, 35.992859, 28.526901>,  <37.026356, 35.596588, 28.158453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458580, 35.992859, 28.526901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.259876, 35.689442, 28.358215>,  <36.140652, 35.507393, 28.257004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.259876, 35.689442, 28.358215>,  <36.458580, 35.992859, 28.526901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259876, 35.689442, 28.358215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511673, -0.136508, 0.848267,
		-0.701013, 0.637166, -0.320313,
		-0.496761, -0.758541, -0.421714,
		36.110847, 35.461880, 28.231701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797176, 36.158634, 28.588558>,  <36.458580, 35.992859, 28.526901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797176, 36.158634, 28.588558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.779289, 35.762970, 28.532614>,  <35.768559, 35.525570, 28.499046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.779289, 35.762970, 28.532614>,  <35.797176, 36.158634, 28.588558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779289, 35.762970, 28.532614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458384, -0.104080, 0.882639,
		-0.887629, 0.103579, -0.448761,
		-0.044716, -0.989161, -0.139863,
		35.765873, 35.466221, 28.490654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062298, 35.956692, 28.642056>,  <35.797176, 36.158634, 28.588558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062298, 35.956692, 28.642056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265266, 35.617176, 28.701490>,  <35.387047, 35.413467, 28.737150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265266, 35.617176, 28.701490>,  <35.062298, 35.956692, 28.642056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265266, 35.617176, 28.701490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580552, -0.209320, 0.786858,
		-0.636776, -0.485529, -0.598980,
		0.507421, -0.848792, 0.148585,
		35.417492, 35.362537, 28.746065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588818, 35.362556, 28.614799>,  <35.062298, 35.956692, 28.642056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588818, 35.362556, 28.614799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.899853, 35.240696, 28.834814>,  <35.086475, 35.167580, 28.966824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.899853, 35.240696, 28.834814>,  <34.588818, 35.362556, 28.614799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899853, 35.240696, 28.834814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627464, -0.432393, 0.647554,
		0.040551, -0.848659, -0.527384,
		0.777589, -0.304655, 0.550037,
		35.133129, 35.149300, 28.999825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303253, 34.862103, 28.970221>,  <34.588818, 35.362556, 28.614799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303253, 34.862103, 28.970221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659374, 34.882069, 29.151268>,  <34.873047, 34.894051, 29.259895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.659374, 34.882069, 29.151268>,  <34.303253, 34.862103, 28.970221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659374, 34.882069, 29.151268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391116, -0.425206, 0.816228,
		0.233200, -0.903719, -0.359040,
		0.890307, 0.049918, 0.452617,
		34.926468, 34.897045, 29.287054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629311, 34.152786, 29.248163>,  <34.303253, 34.862103, 28.970221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629311, 34.152786, 29.248163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.773712, 34.453381, 29.469049>,  <34.860352, 34.633739, 29.601582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.773712, 34.453381, 29.469049>,  <34.629311, 34.152786, 29.248163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773712, 34.453381, 29.469049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396309, -0.412393, 0.820287,
		0.844167, -0.514973, 0.148948,
		0.361000, 0.751489, 0.552216,
		34.882011, 34.678825, 29.634714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766743, 33.775558, 29.830898>,  <34.629311, 34.152786, 29.248163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766743, 33.775558, 29.830898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.792156, 34.156158, 29.951300>,  <34.807404, 34.384518, 30.023540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.792156, 34.156158, 29.951300>,  <34.766743, 33.775558, 29.830898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792156, 34.156158, 29.951300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142232, -0.289902, 0.946429,
		0.987792, -0.102943, 0.116915,
		0.063534, 0.951504, 0.301004,
		34.811218, 34.441608, 30.041601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281956, 33.779915, 30.336596>,  <34.766743, 33.775558, 29.830898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281956, 33.779915, 30.336596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.055035, 34.105095, 30.389164>,  <34.918880, 34.300205, 30.420704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.055035, 34.105095, 30.389164>,  <35.281956, 33.779915, 30.336596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055035, 34.105095, 30.389164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133283, -0.248123, 0.959516,
		0.812649, 0.526824, 0.249115,
		-0.567307, 0.812952, 0.131420,
		34.884842, 34.348980, 30.428591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418049, 33.936096, 30.934437>,  <35.281956, 33.779915, 30.336596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418049, 33.936096, 30.934437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.057850, 34.088337, 30.850296>,  <34.841732, 34.179680, 30.799812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.057850, 34.088337, 30.850296>,  <35.418049, 33.936096, 30.934437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057850, 34.088337, 30.850296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354391, -0.361960, 0.862202,
		0.252015, 0.850957, 0.460826,
		-0.900497, 0.380600, -0.210353,
		34.787701, 34.202518, 30.787189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235077, 34.416660, 31.487949>,  <35.418049, 33.936096, 30.934437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235077, 34.416660, 31.487949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.932014, 34.229855, 31.305586>,  <34.750175, 34.117771, 31.196167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.932014, 34.229855, 31.305586>,  <35.235077, 34.416660, 31.487949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932014, 34.229855, 31.305586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306464, -0.362169, 0.880292,
		-0.576221, 0.806681, 0.131280,
		-0.757660, -0.467010, -0.455908,
		34.704716, 34.089752, 31.168814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181587, 34.517891, 32.155640>,  <35.235077, 34.416660, 31.487949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181587, 34.517891, 32.155640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463516, 34.469429, 32.435223>,  <35.632675, 34.440353, 32.602974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463516, 34.469429, 32.435223>,  <35.181587, 34.517891, 32.155640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463516, 34.469429, 32.435223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408693, 0.874704, -0.260505,
		-0.579821, 0.469270, 0.666028,
		0.704825, -0.121155, 0.698959,
		35.674965, 34.433083, 32.644909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214161, 35.071896, 32.544270>,  <35.181587, 34.517891, 32.155640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214161, 35.071896, 32.544270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581867, 34.930027, 32.612564>,  <35.802490, 34.844906, 32.653542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581867, 34.930027, 32.612564>,  <35.214161, 35.071896, 32.544270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581867, 34.930027, 32.612564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392560, 0.858038, -0.331160,
		-0.029048, 0.371451, 0.927998,
		0.919268, -0.354675, 0.170741,
		35.857647, 34.823624, 32.663788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607437, 35.576675, 32.949020>,  <35.214161, 35.071896, 32.544270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607437, 35.576675, 32.949020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863388, 35.347565, 32.744087>,  <36.016956, 35.210098, 32.621128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863388, 35.347565, 32.744087>,  <35.607437, 35.576675, 32.949020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863388, 35.347565, 32.744087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572542, 0.800023, -0.179330,
		0.512597, -0.178586, 0.839852,
		0.639875, -0.572774, -0.512337,
		36.055351, 35.175732, 32.590385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343098, 35.796169, 33.188843>,  <35.607437, 35.576675, 32.949020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343098, 35.796169, 33.188843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.426838, 35.604069, 32.848129>,  <36.477081, 35.488808, 32.643703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.426838, 35.604069, 32.848129>,  <36.343098, 35.796169, 33.188843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426838, 35.604069, 32.848129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615894, 0.741346, -0.266610,
		0.759504, -0.468792, 0.450986,
		0.209352, -0.480251, -0.851781,
		36.489643, 35.459995, 32.592594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917789, 36.126610, 33.004887>,  <36.343098, 35.796169, 33.188843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917789, 36.126610, 33.004887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.827110, 35.937721, 32.664154>,  <36.772705, 35.824387, 32.459713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.827110, 35.937721, 32.664154>,  <36.917789, 36.126610, 33.004887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827110, 35.937721, 32.664154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561156, 0.651519, -0.510516,
		0.796061, -0.593741, 0.117293,
		-0.226696, -0.472222, -0.851831,
		36.759102, 35.796055, 32.408604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592175, 36.189331, 32.636757>,  <36.917789, 36.126610, 33.004887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592175, 36.189331, 32.636757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302025, 36.144722, 32.365055>,  <37.127934, 36.117958, 32.202034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302025, 36.144722, 32.365055>,  <37.592175, 36.189331, 32.636757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302025, 36.144722, 32.365055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239256, 0.884418, -0.400701,
		0.645435, -0.453175, -0.614854,
		-0.725376, -0.111519, -0.679259,
		37.084412, 36.111267, 32.161278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919964, 36.230942, 31.945324>,  <37.592175, 36.189331, 32.636757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919964, 36.230942, 31.945324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.537212, 36.332005, 31.887997>,  <37.307560, 36.392643, 31.853600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.537212, 36.332005, 31.887997>,  <37.919964, 36.230942, 31.945324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537212, 36.332005, 31.887997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274034, 0.621549, -0.733881,
		-0.096340, -0.741513, -0.663986,
		-0.956882, 0.252657, -0.143319,
		37.250149, 36.407803, 31.845001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855686, 36.280483, 31.298466>,  <37.919964, 36.230942, 31.945324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855686, 36.280483, 31.298466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518364, 36.473225, 31.393673>,  <37.315971, 36.588867, 31.450796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518364, 36.473225, 31.393673>,  <37.855686, 36.280483, 31.298466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518364, 36.473225, 31.393673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265262, 0.758362, -0.595418,
		-0.467405, -0.438985, -0.767349,
		-0.843308, 0.481850, 0.238016,
		37.265373, 36.617779, 31.465078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434082, 36.484745, 30.589857>,  <37.855686, 36.280483, 31.298466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434082, 36.484745, 30.589857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351997, 36.720917, 30.902082>,  <37.302746, 36.862621, 31.089418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351997, 36.720917, 30.902082>,  <37.434082, 36.484745, 30.589857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351997, 36.720917, 30.902082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161727, 0.807031, -0.567931,
		-0.965263, 0.009693, -0.261100,
		-0.205211, 0.590430, 0.780564,
		37.290436, 36.898045, 31.136251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116909, 37.038631, 30.291317>,  <37.434082, 36.484745, 30.589857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116909, 37.038631, 30.291317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.174530, 37.183445, 30.659704>,  <37.209103, 37.270332, 30.880735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.174530, 37.183445, 30.659704>,  <37.116909, 37.038631, 30.291317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174530, 37.183445, 30.659704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076839, 0.931956, -0.354335,
		-0.986582, -0.019723, 0.162071,
		0.144055, 0.362034, 0.920966,
		37.217747, 37.292057, 30.935995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598442, 37.550507, 30.413563>,  <37.116909, 37.038631, 30.291317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598442, 37.550507, 30.413563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.925274, 37.621792, 30.632879>,  <37.121372, 37.664562, 30.764469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.925274, 37.621792, 30.632879>,  <36.598442, 37.550507, 30.413563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925274, 37.621792, 30.632879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170876, 0.833434, -0.525538,
		-0.550619, 0.523096, 0.650530,
		0.817080, 0.178211, 0.548289,
		37.170399, 37.675255, 30.797365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638184, 38.286072, 30.435724>,  <36.598442, 37.550507, 30.413563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638184, 38.286072, 30.435724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.000423, 38.157246, 30.546114>,  <37.217770, 38.079952, 30.612347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.000423, 38.157246, 30.546114>,  <36.638184, 38.286072, 30.435724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000423, 38.157246, 30.546114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420323, 0.594529, -0.685466,
		0.056689, 0.736757, 0.673777,
		0.905602, -0.322063, 0.275972,
		37.272102, 38.060627, 30.628906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051189, 38.866383, 30.438139>,  <36.638184, 38.286072, 30.435724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051189, 38.866383, 30.438139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.318470, 38.570477, 30.406523>,  <37.478840, 38.392933, 30.387554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.318470, 38.570477, 30.406523>,  <37.051189, 38.866383, 30.438139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318470, 38.570477, 30.406523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354944, 0.410355, -0.840014,
		0.653850, 0.533245, 0.536777,
		0.668202, -0.739769, -0.079038,
		37.518932, 38.348545, 30.382811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777859, 39.180622, 30.390461>,  <37.051189, 38.866383, 30.438139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777859, 39.180622, 30.390461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830097, 38.838169, 30.190470>,  <37.861439, 38.632698, 30.070475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830097, 38.838169, 30.190470>,  <37.777859, 39.180622, 30.390461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830097, 38.838169, 30.190470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344090, 0.512090, -0.786998,
		0.929811, -0.069262, 0.361462,
		0.130592, -0.856135, -0.499979,
		37.869274, 38.581329, 30.040476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787796, 39.813164, 30.865927>,  <37.777859, 39.180622, 30.390461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787796, 39.813164, 30.865927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.517990, 40.097660, 30.786776>,  <37.356106, 40.268360, 30.739285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.517990, 40.097660, 30.786776>,  <37.787796, 39.813164, 30.865927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517990, 40.097660, 30.786776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643648, -0.435278, 0.629484,
		0.361585, 0.551963, 0.751394,
		-0.674517, 0.711246, -0.197879,
		37.315636, 40.311035, 30.727411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546528, 40.055809, 31.491352>,  <37.787796, 39.813164, 30.865927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546528, 40.055809, 31.491352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267593, 40.117310, 31.211327>,  <37.100235, 40.154209, 31.043312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267593, 40.117310, 31.211327>,  <37.546528, 40.055809, 31.491352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267593, 40.117310, 31.211327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683941, -0.434857, 0.585768,
		-0.214367, 0.887277, 0.408396,
		-0.697332, 0.153750, -0.700064,
		37.058395, 40.163433, 31.001307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993404, 40.371918, 31.793905>,  <37.546528, 40.055809, 31.491352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993404, 40.371918, 31.793905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809349, 40.221382, 31.472248>,  <36.698917, 40.131062, 31.279255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.809349, 40.221382, 31.472248>,  <36.993404, 40.371918, 31.793905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809349, 40.221382, 31.472248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700155, -0.403126, 0.589298,
		-0.545948, 0.834180, -0.078006,
		-0.460135, -0.376343, -0.804141,
		36.671310, 40.108479, 31.231007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288036, 40.288071, 32.041077>,  <36.993404, 40.371918, 31.793905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288036, 40.288071, 32.041077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.322727, 40.085022, 31.698196>,  <36.343544, 39.963192, 31.492468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.322727, 40.085022, 31.698196>,  <36.288036, 40.288071, 32.041077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322727, 40.085022, 31.698196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711392, -0.633921, 0.303422,
		-0.697423, 0.583492, -0.416098,
		0.086728, -0.507622, -0.857203,
		36.348747, 39.932735, 31.441036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736317, 40.503586, 31.697538>,  <36.288036, 40.288071, 32.041077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736317, 40.503586, 31.697538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856613, 40.145424, 31.566206>,  <35.928791, 39.930527, 31.487406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856613, 40.145424, 31.566206>,  <35.736317, 40.503586, 31.697538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856613, 40.145424, 31.566206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647218, -0.444473, 0.619316,
		-0.700475, 0.026252, -0.713194,
		0.300737, -0.895407, -0.328333,
		35.946835, 39.876801, 31.467707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179726, 40.113316, 31.517712>,  <35.736317, 40.503586, 31.697538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179726, 40.113316, 31.517712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.449352, 39.824356, 31.579395>,  <35.611130, 39.650982, 31.616405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.449352, 39.824356, 31.579395>,  <35.179726, 40.113316, 31.517712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449352, 39.824356, 31.579395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662503, -0.498907, 0.558732,
		-0.326688, -0.478788, -0.814885,
		0.674066, -0.722394, 0.154212,
		35.651573, 39.607639, 31.625658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841885, 39.496941, 31.300520>,  <35.179726, 40.113316, 31.517712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841885, 39.496941, 31.300520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.132526, 39.401108, 31.558092>,  <35.306911, 39.343609, 31.712635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.132526, 39.401108, 31.558092>,  <34.841885, 39.496941, 31.300520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132526, 39.401108, 31.558092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620916, -0.630204, 0.466161,
		0.294126, -0.738542, -0.606667,
		0.726604, -0.239579, 0.643932,
		35.350506, 39.329235, 31.751272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739090, 38.820999, 31.365530>,  <34.841885, 39.496941, 31.300520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739090, 38.820999, 31.365530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.961277, 38.914444, 31.684750>,  <35.094589, 38.970512, 31.876282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.961277, 38.914444, 31.684750>,  <34.739090, 38.820999, 31.365530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961277, 38.914444, 31.684750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524129, -0.646714, 0.554120,
		0.645561, -0.726075, -0.236783,
		0.555464, 0.233613, 0.798051,
		35.127914, 38.984528, 31.924164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846962, 38.105118, 31.697464>,  <34.739090, 38.820999, 31.365530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846962, 38.105118, 31.697464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.916557, 38.398399, 31.960415>,  <34.958317, 38.574368, 32.118187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.916557, 38.398399, 31.960415>,  <34.846962, 38.105118, 31.697464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916557, 38.398399, 31.960415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485172, -0.517090, 0.705143,
		0.856934, -0.441630, 0.265758,
		0.173991, 0.733199, 0.657378,
		34.968754, 38.618359, 32.157627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147793, 37.767315, 32.251057>,  <34.846962, 38.105118, 31.697464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147793, 37.767315, 32.251057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008617, 38.119015, 32.381199>,  <34.925114, 38.330036, 32.459286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008617, 38.119015, 32.381199>,  <35.147793, 37.767315, 32.251057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008617, 38.119015, 32.381199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439884, -0.459575, 0.771552,
		0.827914, 0.125331, 0.546672,
		-0.347936, 0.879251, 0.325358,
		34.904236, 38.382790, 32.478806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090729, 37.559334, 32.892876>,  <35.147793, 37.767315, 32.251057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090729, 37.559334, 32.892876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898361, 37.910038, 32.892128>,  <34.782940, 38.120461, 32.891678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898361, 37.910038, 32.892128>,  <35.090729, 37.559334, 32.892876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898361, 37.910038, 32.892128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711437, -0.388990, 0.585273,
		0.512418, 0.282800, 0.810834,
		-0.480922, 0.876762, -0.001869,
		34.754086, 38.173065, 32.891567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224094, 38.000923, 33.489025>,  <35.090729, 37.559334, 32.892876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224094, 38.000923, 33.489025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.880199, 37.997200, 33.284767>,  <34.673862, 37.994965, 33.162212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.880199, 37.997200, 33.284767>,  <35.224094, 38.000923, 33.489025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880199, 37.997200, 33.284767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411837, -0.578672, 0.703938,
		-0.302051, 0.815507, 0.493673,
		-0.859741, -0.009312, -0.510645,
		34.622276, 37.994408, 33.131573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.436977, 42.381310, 29.281488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155678, 42.470787, 29.011553>,  <38.986900, 42.524475, 28.849590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155678, 42.470787, 29.011553>,  <39.436977, 42.381310, 29.281488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155678, 42.470787, 29.011553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705133, -0.340615, 0.621907,
		-0.090745, 0.913204, 0.397269,
		-0.703244, 0.223693, -0.674840,
		38.944706, 42.537895, 28.809101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888248, 42.762474, 29.684870>,  <39.436977, 42.381310, 29.281488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888248, 42.762474, 29.684870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741020, 42.619335, 29.341599>,  <38.652683, 42.533451, 29.135635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741020, 42.619335, 29.341599>,  <38.888248, 42.762474, 29.684870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741020, 42.619335, 29.341599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744881, -0.438917, 0.502498,
		-0.556487, 0.824195, -0.105003,
		-0.368069, -0.357848, -0.858178,
		38.630600, 42.511982, 29.084145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240360, 43.078247, 29.656813>,  <38.888248, 42.762474, 29.684870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240360, 43.078247, 29.656813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303101, 42.732204, 29.466242>,  <38.340744, 42.524578, 29.351900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303101, 42.732204, 29.466242>,  <38.240360, 43.078247, 29.656813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303101, 42.732204, 29.466242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668506, -0.448088, 0.593563,
		-0.726979, 0.225394, -0.648613,
		0.156850, -0.865110, -0.476428,
		38.350155, 42.472672, 29.323313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735771, 42.619690, 29.921227>,  <38.240360, 43.078247, 29.656813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735771, 42.619690, 29.921227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976398, 42.373959, 29.716982>,  <38.120773, 42.226521, 29.594435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976398, 42.373959, 29.716982>,  <37.735771, 42.619690, 29.921227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976398, 42.373959, 29.716982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415313, -0.786546, 0.457013,
		-0.682372, -0.062861, -0.728297,
		0.601567, -0.614324, -0.510610,
		38.156868, 42.189663, 29.563799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452866, 42.193993, 29.418938>,  <37.735771, 42.619690, 29.921227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452866, 42.193993, 29.418938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763592, 41.977280, 29.547323>,  <37.950027, 41.847252, 29.624355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763592, 41.977280, 29.547323>,  <37.452866, 42.193993, 29.418938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763592, 41.977280, 29.547323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609349, -0.775319, 0.166053,
		0.158885, -0.324574, -0.932420,
		0.776820, -0.541786, 0.320965,
		37.996639, 41.814743, 29.643614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289684, 41.547474, 29.225798>,  <37.452866, 42.193993, 29.418938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289684, 41.547474, 29.225798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578541, 41.497421, 29.497931>,  <37.751854, 41.467388, 29.661211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578541, 41.497421, 29.497931>,  <37.289684, 41.547474, 29.225798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578541, 41.497421, 29.497931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503672, -0.769258, 0.393136,
		0.474159, -0.626565, -0.618538,
		0.722141, -0.125131, 0.680334,
		37.795181, 41.459881, 29.702030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432209, 40.837727, 29.198185>,  <37.289684, 41.547474, 29.225798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432209, 40.837727, 29.198185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581181, 40.967686, 29.545918>,  <37.670563, 41.045662, 29.754557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581181, 40.967686, 29.545918>,  <37.432209, 40.837727, 29.198185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581181, 40.967686, 29.545918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429601, -0.769960, 0.471809,
		0.822642, -0.549181, -0.147177,
		0.372429, 0.324902, 0.869330,
		37.692909, 41.065155, 29.806717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609661, 40.208431, 29.444710>,  <37.432209, 40.837727, 29.198185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609661, 40.208431, 29.444710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630989, 40.463001, 29.752506>,  <37.643787, 40.615746, 29.937183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630989, 40.463001, 29.752506>,  <37.609661, 40.208431, 29.444710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630989, 40.463001, 29.752506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435957, -0.678434, 0.591327,
		0.898386, -0.366996, 0.241281,
		0.053321, 0.636429, 0.769490,
		37.646984, 40.653931, 29.983353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914062, 39.847969, 30.115376>,  <37.609661, 40.208431, 29.444710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914062, 39.847969, 30.115376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695908, 40.169804, 30.209351>,  <37.565014, 40.362904, 30.265736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695908, 40.169804, 30.209351>,  <37.914062, 39.847969, 30.115376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695908, 40.169804, 30.209351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547767, -0.554290, 0.626669,
		0.634431, 0.213087, 0.743028,
		-0.545388, 0.804585, 0.234937,
		37.532291, 40.411179, 30.279831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406891, 39.286827, 30.071951>,  <37.914062, 39.847969, 30.115376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406891, 39.286827, 30.071951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285656, 38.952946, 29.888031>,  <38.212917, 38.752617, 29.777679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285656, 38.952946, 29.888031>,  <38.406891, 39.286827, 30.071951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285656, 38.952946, 29.888031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474867, 0.286037, -0.832276,
		0.826221, -0.470593, 0.309678,
		-0.303084, -0.834700, -0.459799,
		38.194729, 38.702538, 29.750092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982082, 38.884869, 29.736155>,  <38.406891, 39.286827, 30.071951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982082, 38.884869, 29.736155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653183, 38.771561, 29.538708>,  <38.455841, 38.703575, 29.420238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653183, 38.771561, 29.538708>,  <38.982082, 38.884869, 29.736155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653183, 38.771561, 29.538708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512534, 0.008478, -0.858625,
		0.247407, -0.959003, 0.138214,
		-0.822252, -0.283269, -0.493619,
		38.406506, 38.686581, 29.390621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293472, 38.523827, 29.173130>,  <38.982082, 38.884869, 29.736155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293472, 38.523827, 29.173130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908016, 38.552544, 29.070183>,  <38.676743, 38.569775, 29.008413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908016, 38.552544, 29.070183>,  <39.293472, 38.523827, 29.173130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908016, 38.552544, 29.070183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263250, 0.090213, -0.960500,
		-0.045737, -0.993332, -0.105832,
		-0.963643, 0.071791, -0.257369,
		38.618923, 38.574081, 28.992971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199951, 38.053135, 28.642403>,  <39.293472, 38.523827, 29.173130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199951, 38.053135, 28.642403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903011, 38.314545, 28.583321>,  <38.724846, 38.471390, 28.547871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903011, 38.314545, 28.583321>,  <39.199951, 38.053135, 28.642403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903011, 38.314545, 28.583321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349586, 0.189733, -0.917492,
		-0.571581, -0.732737, -0.369312,
		-0.742351, 0.653527, -0.147707,
		38.680305, 38.510601, 28.539009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941673, 37.898472, 27.965721>,  <39.199951, 38.053135, 28.642403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941673, 37.898472, 27.965721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843700, 38.280201, 28.034161>,  <38.784916, 38.509239, 28.075224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843700, 38.280201, 28.034161>,  <38.941673, 37.898472, 27.965721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843700, 38.280201, 28.034161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292641, 0.241009, -0.925352,
		-0.924322, -0.176575, -0.338305,
		-0.244928, 0.954325, 0.171097,
		38.770222, 38.566498, 28.085489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556923, 38.212521, 27.391512>,  <38.941673, 37.898472, 27.965721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556923, 38.212521, 27.391512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733295, 38.508564, 27.594614>,  <38.839119, 38.686192, 27.716475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733295, 38.508564, 27.594614>,  <38.556923, 38.212521, 27.391512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733295, 38.508564, 27.594614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370763, 0.365000, -0.853996,
		-0.817383, 0.564810, -0.113467,
		0.440930, 0.740111, 0.507756,
		38.865574, 38.730598, 27.746941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439194, 38.761005, 26.969667>,  <38.556923, 38.212521, 27.391512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439194, 38.761005, 26.969667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737694, 38.884739, 27.205439>,  <38.916794, 38.958981, 27.346901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737694, 38.884739, 27.205439>,  <38.439194, 38.761005, 26.969667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737694, 38.884739, 27.205439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414707, 0.476598, -0.775160,
		-0.520706, 0.822901, 0.227376,
		0.746246, 0.309336, 0.589430,
		38.961567, 38.977539, 27.382267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504341, 39.475555, 26.795652>,  <38.439194, 38.761005, 26.969667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504341, 39.475555, 26.795652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838417, 39.407593, 27.004875>,  <39.038864, 39.366817, 27.130409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838417, 39.407593, 27.004875>,  <38.504341, 39.475555, 26.795652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838417, 39.407593, 27.004875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467470, 0.720319, -0.512457,
		-0.289699, 0.672513, 0.681029,
		0.835193, -0.169902, 0.523055,
		39.088974, 39.356621, 27.161791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823608, 40.172890, 27.029106>,  <38.504341, 39.475555, 26.795652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823608, 40.172890, 27.029106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131256, 39.917606, 27.042627>,  <39.315845, 39.764435, 27.050741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131256, 39.917606, 27.042627>,  <38.823608, 40.172890, 27.029106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131256, 39.917606, 27.042627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579378, 0.673934, -0.458404,
		0.269777, 0.372152, 0.888101,
		0.769117, -0.638213, 0.033805,
		39.361992, 39.726143, 27.052769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356434, 40.607048, 27.269403>,  <38.823608, 40.172890, 27.029106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356434, 40.607048, 27.269403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509651, 40.280483, 27.096548>,  <39.601582, 40.084545, 26.992834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509651, 40.280483, 27.096548>,  <39.356434, 40.607048, 27.269403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509651, 40.280483, 27.096548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461531, 0.574391, -0.676065,
		0.800167, 0.059516, 0.596817,
		0.383043, -0.816414, -0.432140,
		39.624565, 40.035561, 26.966906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078907, 40.779964, 27.115971>,  <39.356434, 40.607048, 27.269403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078907, 40.779964, 27.115971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032196, 40.458393, 26.882710>,  <40.004169, 40.265450, 26.742754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032196, 40.458393, 26.882710>,  <40.078907, 40.779964, 27.115971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032196, 40.458393, 26.882710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577384, 0.422791, -0.698480,
		0.808078, -0.418271, 0.414801,
		-0.116780, -0.803926, -0.583151,
		39.997162, 40.217216, 26.707764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762306, 40.659496, 26.756300>,  <40.078907, 40.779964, 27.115971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762306, 40.659496, 26.756300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483101, 40.480156, 26.532959>,  <40.315578, 40.372551, 26.398954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483101, 40.480156, 26.532959>,  <40.762306, 40.659496, 26.756300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483101, 40.480156, 26.532959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328271, 0.492623, -0.805954,
		0.636412, -0.745855, -0.196674,
		-0.698011, -0.448356, -0.558353,
		40.273697, 40.345650, 26.365454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152958, 40.420757, 26.146358>,  <40.762306, 40.659496, 26.756300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152958, 40.420757, 26.146358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765125, 40.399117, 26.050879>,  <40.532425, 40.386131, 25.993589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765125, 40.399117, 26.050879>,  <41.152958, 40.420757, 26.146358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765125, 40.399117, 26.050879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199474, 0.390480, -0.898741,
		0.141828, -0.919021, -0.367812,
		-0.969585, -0.054098, -0.238702,
		40.474251, 40.382889, 25.979267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177422, 40.124573, 25.488663>,  <41.152958, 40.420757, 26.146358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177422, 40.124573, 25.488663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824963, 40.311539, 25.517244>,  <40.613487, 40.423717, 25.534393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824963, 40.311539, 25.517244>,  <41.177422, 40.124573, 25.488663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824963, 40.311539, 25.517244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100414, 0.332644, -0.937691,
		-0.462058, -0.819069, -0.340043,
		-0.881147, 0.467412, 0.071455,
		40.560619, 40.451763, 25.538681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.540127, 43.955715, 25.015093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869770, 43.821098, 25.197338>,  <35.067554, 43.740330, 25.306684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869770, 43.821098, 25.197338>,  <34.540127, 43.955715, 25.015093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869770, 43.821098, 25.197338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563400, -0.570112, 0.597956,
		0.058514, -0.749474, -0.659442,
		0.824109, -0.336542, 0.455613,
		35.117004, 43.720135, 25.334023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570774, 43.193336, 24.946167>,  <34.540127, 43.955715, 25.015093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570774, 43.193336, 24.946167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.813213, 43.245792, 25.259970>,  <34.958675, 43.277264, 25.448252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.813213, 43.245792, 25.259970>,  <34.570774, 43.193336, 24.946167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813213, 43.245792, 25.259970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405712, -0.797385, 0.446738,
		0.684137, -0.589050, -0.430088,
		0.606097, 0.131138, 0.784506,
		34.995041, 43.285133, 25.495321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869461, 42.524883, 25.075235>,  <34.570774, 43.193336, 24.946167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869461, 42.524883, 25.075235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.888809, 42.712341, 25.428061>,  <34.900417, 42.824814, 25.639755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.888809, 42.712341, 25.428061>,  <34.869461, 42.524883, 25.075235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888809, 42.712341, 25.428061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290246, -0.838395, 0.461357,
		0.955729, -0.278330, 0.095470,
		0.048368, 0.468642, 0.882063,
		34.903320, 42.852936, 25.692680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211697, 42.094078, 25.550129>,  <34.869461, 42.524883, 25.075235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211697, 42.094078, 25.550129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.034916, 42.352524, 25.799034>,  <34.928848, 42.507591, 25.948378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.034916, 42.352524, 25.799034>,  <35.211697, 42.094078, 25.550129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034916, 42.352524, 25.799034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211525, -0.749185, 0.627677,
		0.871744, 0.145778, 0.467773,
		-0.441950, 0.646119, 0.622262,
		34.902332, 42.546360, 25.985712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410980, 41.783348, 26.203899>,  <35.211697, 42.094078, 25.550129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410980, 41.783348, 26.203899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113022, 42.043846, 26.261877>,  <34.934246, 42.200146, 26.296663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113022, 42.043846, 26.261877>,  <35.410980, 41.783348, 26.203899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113022, 42.043846, 26.261877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367847, -0.582130, 0.725130,
		0.556614, 0.486829, 0.673185,
		-0.744895, 0.651247, 0.144943,
		34.889553, 42.239220, 26.305361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399128, 41.815136, 26.879992>,  <35.410980, 41.783348, 26.203899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399128, 41.815136, 26.879992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040737, 41.973282, 26.799078>,  <34.825703, 42.068169, 26.750530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040737, 41.973282, 26.799078>,  <35.399128, 41.815136, 26.879992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040737, 41.973282, 26.799078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377140, -0.436839, 0.816662,
		0.234514, 0.807997, 0.540504,
		-0.895973, 0.395364, -0.202283,
		34.771946, 42.091892, 26.738394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126820, 42.029404, 27.514328>,  <35.399128, 41.815136, 26.879992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126820, 42.029404, 27.514328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824375, 41.934734, 27.270266>,  <34.642910, 41.877934, 27.123829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824375, 41.934734, 27.270266>,  <35.126820, 42.029404, 27.514328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824375, 41.934734, 27.270266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446770, -0.494612, 0.745490,
		-0.478225, 0.836269, 0.268243,
		-0.756107, -0.236669, -0.610156,
		34.597542, 41.863735, 27.087219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469662, 42.056629, 27.955511>,  <35.126820, 42.029404, 27.514328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469662, 42.056629, 27.955511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.360798, 41.844746, 27.634178>,  <34.295479, 41.717617, 27.441380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.360798, 41.844746, 27.634178>,  <34.469662, 42.056629, 27.955511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360798, 41.844746, 27.634178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521819, -0.620183, 0.585729,
		-0.808475, 0.578607, -0.107619,
		-0.272164, -0.529705, -0.803330,
		34.279148, 41.685833, 27.393179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794266, 41.841011, 28.064560>,  <34.469662, 42.056629, 27.955511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794266, 41.841011, 28.064560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.942299, 41.585068, 27.795153>,  <34.031116, 41.431503, 27.633509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.942299, 41.585068, 27.795153>,  <33.794266, 41.841011, 28.064560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942299, 41.585068, 27.795153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499923, -0.748234, 0.436146,
		-0.783019, 0.175298, -0.596785,
		0.370079, -0.639857, -0.673517,
		34.053322, 41.393112, 27.593098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231236, 41.385593, 27.912317>,  <33.794266, 41.841011, 28.064560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231236, 41.385593, 27.912317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537224, 41.183079, 27.753075>,  <33.720818, 41.061569, 27.657530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537224, 41.183079, 27.753075>,  <33.231236, 41.385593, 27.912317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537224, 41.183079, 27.753075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463395, -0.861939, 0.205731,
		-0.447302, 0.027102, -0.893972,
		0.764974, -0.506287, -0.398106,
		33.766716, 41.031193, 27.633642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912071, 40.881248, 27.609562>,  <33.231236, 41.385593, 27.912317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912071, 40.881248, 27.609562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296753, 40.771606, 27.609173>,  <33.527561, 40.705822, 27.608940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296753, 40.771606, 27.609173>,  <32.912071, 40.881248, 27.609562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296753, 40.771606, 27.609173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269941, -0.947704, 0.170264,
		-0.047592, -0.163480, -0.985398,
		0.961700, -0.274103, -0.000973,
		33.585262, 40.689377, 27.608881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925686, 40.364632, 27.121290>,  <32.912071, 40.881248, 27.609562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925686, 40.364632, 27.121290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222706, 40.351429, 27.388880>,  <33.400917, 40.343506, 27.549435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222706, 40.351429, 27.388880>,  <32.925686, 40.364632, 27.121290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222706, 40.351429, 27.388880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320505, -0.894523, 0.311617,
		0.588127, -0.445802, -0.674809,
		0.742552, -0.033010, 0.668975,
		33.445473, 40.341526, 27.589573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160885, 39.742268, 27.041672>,  <32.925686, 40.364632, 27.121290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160885, 39.742268, 27.041672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.301094, 39.817265, 27.408710>,  <33.385220, 39.862263, 27.628933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.301094, 39.817265, 27.408710>,  <33.160885, 39.742268, 27.041672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301094, 39.817265, 27.408710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292842, -0.908689, 0.297535,
		0.889596, -0.373003, -0.263607,
		0.350518, 0.187490, 0.917597,
		33.406250, 39.873512, 27.683990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527477, 39.131393, 27.344950>,  <33.160885, 39.742268, 27.041672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527477, 39.131393, 27.344950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402229, 39.368744, 27.641562>,  <33.327080, 39.511154, 27.819529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402229, 39.368744, 27.641562>,  <33.527477, 39.131393, 27.344950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402229, 39.368744, 27.641562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543144, -0.752383, 0.372714,
		0.779072, -0.286053, 0.557872,
		-0.313117, 0.593375, 0.741528,
		33.308292, 39.546757, 27.864019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813694, 38.432858, 27.311049>,  <33.527477, 39.131393, 27.344950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813694, 38.432858, 27.311049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802643, 38.077324, 27.128094>,  <33.796013, 37.864002, 27.018320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802643, 38.077324, 27.128094>,  <33.813694, 38.432858, 27.311049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802643, 38.077324, 27.128094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444152, 0.398999, -0.802202,
		0.895525, -0.225315, 0.383754,
		-0.027631, -0.888838, -0.457388,
		33.794353, 37.810673, 26.990877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446453, 38.441601, 26.984030>,  <33.813694, 38.432858, 27.311049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446453, 38.441601, 26.984030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204506, 38.188747, 26.790310>,  <34.059338, 38.037037, 26.674078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204506, 38.188747, 26.790310>,  <34.446453, 38.441601, 26.984030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204506, 38.188747, 26.790310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449664, 0.230803, -0.862863,
		0.657221, -0.739688, 0.144642,
		-0.604866, -0.632132, -0.484300,
		34.023045, 37.999107, 26.645020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865704, 38.171150, 26.482111>,  <34.446453, 38.441601, 26.984030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865704, 38.171150, 26.482111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486195, 38.128807, 26.363035>,  <34.258488, 38.103401, 26.291590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486195, 38.128807, 26.363035>,  <34.865704, 38.171150, 26.482111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486195, 38.128807, 26.363035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252783, 0.310912, -0.916207,
		0.189539, -0.944525, -0.268228,
		-0.948776, -0.105854, -0.297690,
		34.201561, 38.097050, 26.273727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978638, 37.892349, 25.884844>,  <34.865704, 38.171150, 26.482111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978638, 37.892349, 25.884844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616978, 38.063046, 25.876738>,  <34.399982, 38.165462, 25.871874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616978, 38.063046, 25.876738>,  <34.978638, 37.892349, 25.884844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616978, 38.063046, 25.876738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284160, 0.565292, -0.774402,
		-0.319010, -0.705933, -0.632370,
		-0.904149, 0.426736, -0.020265,
		34.345734, 38.191067, 25.870659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943184, 37.872204, 25.267542>,  <34.978638, 37.892349, 25.884844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943184, 37.872204, 25.267542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651691, 38.131218, 25.356667>,  <34.476795, 38.286629, 25.410141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651691, 38.131218, 25.356667>,  <34.943184, 37.872204, 25.267542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651691, 38.131218, 25.356667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150073, 0.468472, -0.870639,
		-0.668153, -0.601023, -0.438568,
		-0.728731, 0.647538, 0.222813,
		34.433071, 38.325478, 25.423512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437424, 37.898151, 24.621849>,  <34.943184, 37.872204, 25.267542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437424, 37.898151, 24.621849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.382072, 38.240200, 24.821693>,  <34.348862, 38.445431, 24.941601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.382072, 38.240200, 24.821693>,  <34.437424, 37.898151, 24.621849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382072, 38.240200, 24.821693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197373, 0.518156, -0.832201,
		-0.970513, -0.016549, -0.240481,
		-0.138379, 0.855126, 0.499611,
		34.340557, 38.496738, 24.971577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964329, 38.383038, 24.217155>,  <34.437424, 37.898151, 24.621849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964329, 38.383038, 24.217155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.185284, 38.597515, 24.472456>,  <34.317856, 38.726200, 24.625637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.185284, 38.597515, 24.472456>,  <33.964329, 38.383038, 24.217155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185284, 38.597515, 24.472456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308546, 0.579772, -0.754098,
		-0.774385, 0.613482, 0.154816,
		0.552384, 0.536195, 0.638254,
		34.350998, 38.758373, 24.663933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803837, 39.149464, 24.008280>,  <33.964329, 38.383038, 24.217155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803837, 39.149464, 24.008280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.148235, 39.176044, 24.209982>,  <34.354874, 39.191994, 24.331003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.148235, 39.176044, 24.209982>,  <33.803837, 39.149464, 24.008280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148235, 39.176044, 24.209982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268542, 0.782581, -0.561651,
		-0.431945, 0.618992, 0.655952,
		0.860993, 0.066452, 0.504257,
		34.406532, 39.195980, 24.361259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943779, 39.883533, 24.127323>,  <33.803837, 39.149464, 24.008280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943779, 39.883533, 24.127323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300999, 39.718815, 24.199852>,  <34.515331, 39.619984, 24.243368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300999, 39.718815, 24.199852>,  <33.943779, 39.883533, 24.127323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300999, 39.718815, 24.199852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432002, 0.672037, -0.601448,
		0.125823, 0.615455, 0.778064,
		0.893053, -0.411801, 0.181320,
		34.568916, 39.595276, 24.254248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419830, 40.379349, 24.438457>,  <33.943779, 39.883533, 24.127323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419830, 40.379349, 24.438457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634220, 40.095894, 24.254910>,  <34.762856, 39.925819, 24.144781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634220, 40.095894, 24.254910>,  <34.419830, 40.379349, 24.438457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634220, 40.095894, 24.254910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540946, 0.705567, -0.457770,
		0.648156, -0.002870, 0.761502,
		0.535977, -0.708638, -0.458870,
		34.795013, 39.883301, 24.117249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124008, 40.529034, 24.586201>,  <34.419830, 40.379349, 24.438457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124008, 40.529034, 24.586201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089954, 40.319138, 24.247402>,  <35.069523, 40.193199, 24.044123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.089954, 40.319138, 24.247402>,  <35.124008, 40.529034, 24.586201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089954, 40.319138, 24.247402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748740, 0.527164, -0.401854,
		0.657373, -0.668393, 0.348010,
		-0.085138, -0.524737, -0.846996,
		35.064411, 40.161716, 23.993303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809155, 40.483986, 24.327868>,  <35.124008, 40.529034, 24.586201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809155, 40.483986, 24.327868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.571335, 40.411701, 24.014471>,  <35.428642, 40.368332, 23.826433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.571335, 40.411701, 24.014471>,  <35.809155, 40.483986, 24.327868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571335, 40.411701, 24.014471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496184, 0.684297, -0.534359,
		0.632703, -0.706457, -0.317184,
		-0.594550, -0.180709, -0.783489,
		35.392971, 40.357487, 23.779425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277695, 40.461761, 23.868305>,  <35.809155, 40.483986, 24.327868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277695, 40.461761, 23.868305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934349, 40.529427, 23.674564>,  <35.728340, 40.570026, 23.558321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934349, 40.529427, 23.674564>,  <36.277695, 40.461761, 23.868305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934349, 40.529427, 23.674564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484598, 0.577320, -0.657165,
		0.168455, -0.798802, -0.577528,
		-0.858363, 0.169166, -0.484350,
		35.676842, 40.580177, 23.529259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313225, 40.228443, 23.187487>,  <36.277695, 40.461761, 23.868305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313225, 40.228443, 23.187487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022549, 40.502777, 23.171730>,  <35.848145, 40.667377, 23.162277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022549, 40.502777, 23.171730>,  <36.313225, 40.228443, 23.187487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022549, 40.502777, 23.171730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397040, 0.372518, -0.838803,
		-0.560606, -0.625190, -0.543009,
		-0.726691, 0.685834, -0.039389,
		35.804543, 40.708527, 23.159914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224926, 39.651386, 22.554676>,  <36.313225, 40.228443, 23.187487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224926, 39.651386, 22.554676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605606, 39.529629, 22.538628>,  <36.834015, 39.456573, 22.528999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605606, 39.529629, 22.538628>,  <36.224926, 39.651386, 22.554676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605606, 39.529629, 22.538628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154091, -0.586574, 0.795101,
		-0.265557, -0.750517, -0.605148,
		0.951702, -0.304392, -0.040121,
		36.891117, 39.438313, 22.526592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272438, 38.891720, 22.527227>,  <36.224926, 39.651386, 22.554676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272438, 38.891720, 22.527227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625511, 39.016598, 22.667749>,  <36.837353, 39.091522, 22.752062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625511, 39.016598, 22.667749>,  <36.272438, 38.891720, 22.527227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625511, 39.016598, 22.667749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000574, -0.748207, 0.663465,
		0.469976, -0.585424, -0.660606,
		0.882679, 0.312192, 0.351304,
		36.890316, 39.110256, 22.773140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671356, 38.284264, 22.548574>,  <36.272438, 38.891720, 22.527227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671356, 38.284264, 22.548574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.880020, 38.540131, 22.774387>,  <37.005219, 38.693649, 22.909874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.880020, 38.540131, 22.774387>,  <36.671356, 38.284264, 22.548574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880020, 38.540131, 22.774387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014280, -0.655060, 0.755442,
		0.853033, -0.402147, -0.332586,
		0.521662, 0.639667, 0.564530,
		37.036518, 38.732029, 22.943747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385815, 38.031742, 22.677694>,  <36.671356, 38.284264, 22.548574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385815, 38.031742, 22.677694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354862, 38.295616, 22.976715>,  <37.336292, 38.453941, 23.156128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354862, 38.295616, 22.976715>,  <37.385815, 38.031742, 22.677694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354862, 38.295616, 22.976715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029974, -0.747922, 0.663110,
		0.996551, 0.073719, 0.038101,
		-0.077381, 0.659681, 0.747552,
		37.331650, 38.493519, 23.200981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068329, 37.959671, 23.102657>,  <37.385815, 38.031742, 22.677694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068329, 37.959671, 23.102657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763512, 38.098511, 23.321316>,  <37.580624, 38.181816, 23.452511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763512, 38.098511, 23.321316>,  <38.068329, 37.959671, 23.102657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763512, 38.098511, 23.321316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133698, -0.741667, 0.657309,
		0.633579, 0.573980, 0.518772,
		-0.762039, 0.347098, 0.546645,
		37.534901, 38.202641, 23.485310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268097, 37.878590, 23.725727>,  <38.068329, 37.959671, 23.102657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268097, 37.878590, 23.725727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873608, 37.915249, 23.780804>,  <37.636913, 37.937244, 23.813848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873608, 37.915249, 23.780804>,  <38.268097, 37.878590, 23.725727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873608, 37.915249, 23.780804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008661, -0.802695, 0.596327,
		0.165177, 0.589306, 0.790845,
		-0.986226, 0.091651, 0.137690,
		37.577740, 37.942745, 23.822111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114910, 37.793339, 24.473520>,  <38.268097, 37.878590, 23.725727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114910, 37.793339, 24.473520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760124, 37.747162, 24.294647>,  <37.547253, 37.719456, 24.187323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760124, 37.747162, 24.294647>,  <38.114910, 37.793339, 24.473520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760124, 37.747162, 24.294647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205719, -0.768139, 0.606335,
		-0.413497, 0.629790, 0.657560,
		-0.886961, -0.115445, -0.447183,
		37.494038, 37.712528, 24.160492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650852, 37.898876, 25.023548>,  <38.114910, 37.793339, 24.473520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650852, 37.898876, 25.023548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.448364, 37.683128, 24.754379>,  <37.326870, 37.553680, 24.592878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.448364, 37.683128, 24.754379>,  <37.650852, 37.898876, 25.023548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448364, 37.683128, 24.754379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371487, -0.567804, 0.734572,
		-0.778293, 0.621836, 0.087065,
		-0.506219, -0.539368, -0.672922,
		37.296497, 37.521317, 24.552502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955006, 37.791214, 25.300995>,  <37.650852, 37.898876, 25.023548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955006, 37.791214, 25.300995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024345, 37.503906, 25.031467>,  <37.065948, 37.331520, 24.869751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024345, 37.503906, 25.031467>,  <36.955006, 37.791214, 25.300995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024345, 37.503906, 25.031467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237577, -0.694470, 0.679167,
		-0.955775, 0.042349, -0.291034,
		0.173353, -0.718274, -0.673818,
		37.076351, 37.288425, 24.829323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372993, 37.475952, 25.185442>,  <36.955006, 37.791214, 25.300995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372993, 37.475952, 25.185442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660477, 37.206005, 25.118494>,  <36.832966, 37.044037, 25.078325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660477, 37.206005, 25.118494>,  <36.372993, 37.475952, 25.185442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660477, 37.206005, 25.118494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409353, -0.605252, 0.682715,
		-0.562043, -0.422159, -0.711259,
		0.718706, -0.674871, -0.167366,
		36.876087, 37.003544, 25.068283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099598, 36.860237, 25.518387>,  <36.372993, 37.475952, 25.185442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099598, 36.860237, 25.518387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471478, 36.745541, 25.425920>,  <36.694607, 36.676723, 25.370440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471478, 36.745541, 25.425920>,  <36.099598, 36.860237, 25.518387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471478, 36.745541, 25.425920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104598, -0.807335, 0.580750,
		-0.353153, -0.515744, -0.780571,
		0.929700, -0.286740, -0.231167,
		36.750389, 36.659519, 25.356571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946419, 36.298458, 25.272026>,  <36.099598, 36.860237, 25.518387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946419, 36.298458, 25.272026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.326241, 36.291634, 25.397284>,  <36.554134, 36.287540, 25.472439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.326241, 36.291634, 25.397284>,  <35.946419, 36.298458, 25.272026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326241, 36.291634, 25.397284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232422, -0.708660, 0.666170,
		0.210548, -0.705345, -0.676874,
		0.949552, -0.017059, 0.313145,
		36.611107, 36.286514, 25.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196957, 35.590790, 25.393957>,  <35.946419, 36.298458, 25.272026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196957, 35.590790, 25.393957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445843, 35.816826, 25.610668>,  <36.595173, 35.952446, 25.740694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445843, 35.816826, 25.610668>,  <36.196957, 35.590790, 25.393957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445843, 35.816826, 25.610668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110413, -0.621797, 0.775356,
		0.775021, -0.542258, -0.324498,
		0.622215, 0.565088, 0.541778,
		36.632507, 35.986351, 25.773201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612194, 35.087296, 25.680820>,  <36.196957, 35.590790, 25.393957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612194, 35.087296, 25.680820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662941, 35.403297, 25.920753>,  <36.693390, 35.592899, 26.064713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662941, 35.403297, 25.920753>,  <36.612194, 35.087296, 25.680820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662941, 35.403297, 25.920753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182753, -0.575748, 0.796941,
		0.974939, -0.210727, 0.071332,
		0.126868, 0.790005, 0.599830,
		36.701000, 35.640301, 26.100702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.784660, 39.919163, 24.840740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.607376, 40.255085, 24.966148>,  <40.501007, 40.456638, 25.041393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.607376, 40.255085, 24.966148>,  <40.784660, 39.919163, 24.840740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607376, 40.255085, 24.966148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012726, 0.355608, -0.934548,
		-0.896330, -0.410207, -0.168295,
		-0.443206, 0.839805, 0.313522,
		40.474415, 40.507027, 25.060205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278763, 40.023899, 24.346331>,  <40.784660, 39.919163, 24.840740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278763, 40.023899, 24.346331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.321346, 40.370007, 24.542282>,  <40.346897, 40.577671, 24.659853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.321346, 40.370007, 24.542282>,  <40.278763, 40.023899, 24.346331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321346, 40.370007, 24.542282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020555, 0.494487, -0.868942,
		-0.994105, 0.082435, 0.070427,
		0.106457, 0.865267, 0.489877,
		40.353283, 40.629585, 24.689245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715302, 40.477314, 24.081627>,  <40.278763, 40.023899, 24.346331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715302, 40.477314, 24.081627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011066, 40.702274, 24.229664>,  <40.188526, 40.837250, 24.318487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011066, 40.702274, 24.229664>,  <39.715302, 40.477314, 24.081627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011066, 40.702274, 24.229664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121888, 0.428802, -0.895138,
		-0.662127, 0.706986, 0.248511,
		0.739412, 0.562405, 0.370095,
		40.232891, 40.870995, 24.340693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565151, 41.192818, 23.962538>,  <39.715302, 40.477314, 24.081627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565151, 41.192818, 23.962538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960285, 41.203495, 24.023821>,  <40.197365, 41.209904, 24.060591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960285, 41.203495, 24.023821>,  <39.565151, 41.192818, 23.962538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960285, 41.203495, 24.023821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132192, 0.374765, -0.917647,
		-0.081915, 0.926735, 0.366676,
		0.987834, 0.026697, 0.153206,
		40.256634, 41.211506, 24.069782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704399, 41.879482, 23.790714>,  <39.565151, 41.192818, 23.962538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704399, 41.879482, 23.790714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036797, 41.658360, 23.765877>,  <40.236233, 41.525684, 23.750975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036797, 41.658360, 23.765877>,  <39.704399, 41.879482, 23.790714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036797, 41.658360, 23.765877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226192, 0.437758, -0.870176,
		0.508225, 0.709062, 0.488814,
		0.830990, -0.552811, -0.062095,
		40.286095, 41.492516, 23.747248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243176, 42.418667, 23.777445>,  <39.704399, 41.879482, 23.790714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243176, 42.418667, 23.777445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.408321, 42.085342, 23.630402>,  <40.507408, 41.885349, 23.542175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.408321, 42.085342, 23.630402>,  <40.243176, 42.418667, 23.777445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408321, 42.085342, 23.630402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463896, 0.539736, -0.702485,
		0.783798, 0.119503, 0.609409,
		0.412869, -0.833309, -0.367607,
		40.532181, 41.835350, 23.520119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837345, 42.609764, 23.445108>,  <40.243176, 42.418667, 23.777445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837345, 42.609764, 23.445108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.761250, 42.242996, 23.304787>,  <40.715591, 42.022934, 23.220592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.761250, 42.242996, 23.304787>,  <40.837345, 42.609764, 23.445108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761250, 42.242996, 23.304787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338412, 0.274185, -0.900167,
		0.921567, -0.289963, 0.258137,
		-0.190238, -0.916921, -0.350807,
		40.704178, 41.967918, 23.199545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442440, 42.369892, 23.093830>,  <40.837345, 42.609764, 23.445108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442440, 42.369892, 23.093830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.133095, 42.158802, 22.953304>,  <40.947487, 42.032150, 22.868988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.133095, 42.158802, 22.953304>,  <41.442440, 42.369892, 23.093830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133095, 42.158802, 22.953304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218203, 0.298723, -0.929060,
		0.595232, -0.795156, -0.115870,
		-0.773361, -0.527723, -0.351315,
		40.901085, 42.000484, 22.847910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711121, 42.109734, 22.531252>,  <41.442440, 42.369892, 23.093830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711121, 42.109734, 22.531252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312782, 42.087807, 22.502182>,  <41.073780, 42.074650, 22.484739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312782, 42.087807, 22.502182>,  <41.711121, 42.109734, 22.531252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312782, 42.087807, 22.502182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049999, 0.337768, -0.939901,
		0.076072, -0.939632, -0.333625,
		-0.995848, -0.054819, -0.072676,
		41.014027, 42.071362, 22.480379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492672, 41.780262, 21.897238>,  <41.711121, 42.109734, 22.531252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492672, 41.780262, 21.897238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.193829, 42.024448, 22.002432>,  <41.014523, 42.170959, 22.065548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.193829, 42.024448, 22.002432>,  <41.492672, 41.780262, 21.897238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193829, 42.024448, 22.002432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021921, 0.418060, -0.908155,
		-0.664341, -0.672725, -0.325718,
		-0.747108, 0.610464, 0.262988,
		40.969696, 42.207588, 22.081327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213013, 41.946583, 21.326542>,  <41.492672, 41.780262, 21.897238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213013, 41.946583, 21.326542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995682, 42.210537, 21.534136>,  <40.865284, 42.368908, 21.658691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995682, 42.210537, 21.534136>,  <41.213013, 41.946583, 21.326542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995682, 42.210537, 21.534136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075539, 0.577259, -0.813060,
		-0.836113, -0.480964, -0.263796,
		-0.543331, 0.659883, 0.518985,
		40.832684, 42.408501, 21.689831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677998, 42.131153, 20.831596>,  <41.213013, 41.946583, 21.326542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677998, 42.131153, 20.831596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.694168, 42.436409, 21.089584>,  <40.703873, 42.619560, 21.244377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.694168, 42.436409, 21.089584>,  <40.677998, 42.131153, 20.831596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694168, 42.436409, 21.089584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147706, 0.642972, -0.751512,
		-0.988204, -0.064882, 0.138716,
		0.040431, 0.763136, 0.644972,
		40.706299, 42.665348, 21.283075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083893, 42.522930, 20.722155>,  <40.677998, 42.131153, 20.831596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083893, 42.522930, 20.722155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.368961, 42.747032, 20.891016>,  <40.540001, 42.881493, 20.992332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.368961, 42.747032, 20.891016>,  <40.083893, 42.522930, 20.722155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368961, 42.747032, 20.891016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049610, 0.640538, -0.766322,
		-0.699740, 0.525194, 0.484288,
		0.712673, 0.560252, 0.422156,
		40.582764, 42.915108, 21.017662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081566, 43.110058, 20.269840>,  <40.083893, 42.522930, 20.722155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081566, 43.110058, 20.269840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.346100, 43.241497, 20.539555>,  <40.504822, 43.320362, 20.701384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.346100, 43.241497, 20.539555>,  <40.081566, 43.110058, 20.269840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346100, 43.241497, 20.539555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132780, 0.833454, -0.536398,
		-0.738246, 0.444270, 0.507560,
		0.661333, 0.328600, 0.674285,
		40.544498, 43.340076, 20.741840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927872, 43.430973, 19.560276>,  <40.081566, 43.110058, 20.269840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927872, 43.430973, 19.560276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635818, 43.325180, 19.308256>,  <39.460587, 43.261703, 19.157045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635818, 43.325180, 19.308256>,  <39.927872, 43.430973, 19.560276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635818, 43.325180, 19.308256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346311, -0.651633, 0.674865,
		-0.589050, 0.710931, 0.384183,
		-0.730129, -0.264483, -0.630048,
		39.416779, 43.245834, 19.119242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335682, 43.624149, 19.814339>,  <39.927872, 43.430973, 19.560276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335682, 43.624149, 19.814339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254517, 43.324455, 19.562159>,  <39.205818, 43.144638, 19.410851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254517, 43.324455, 19.562159>,  <39.335682, 43.624149, 19.814339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254517, 43.324455, 19.562159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137408, -0.615685, 0.775920,
		-0.969507, 0.244076, 0.021982,
		-0.202917, -0.749239, -0.630448,
		39.193642, 43.099682, 19.373024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722343, 43.352108, 20.005489>,  <39.335682, 43.624149, 19.814339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722343, 43.352108, 20.005489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892792, 43.062801, 19.788120>,  <38.995060, 42.889217, 19.657700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892792, 43.062801, 19.788120>,  <38.722343, 43.352108, 20.005489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892792, 43.062801, 19.788120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356275, -0.686311, 0.634071,
		-0.831557, -0.076585, -0.550134,
		0.426123, -0.723265, -0.543421,
		39.020630, 42.845821, 19.625093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212303, 42.944004, 19.909670>,  <38.722343, 43.352108, 20.005489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212303, 42.944004, 19.909670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518337, 42.701397, 19.823153>,  <38.701958, 42.555832, 19.771242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518337, 42.701397, 19.823153>,  <38.212303, 42.944004, 19.909670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518337, 42.701397, 19.823153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507955, -0.774905, 0.376170,
		-0.395759, -0.177935, -0.900952,
		0.765086, -0.606516, -0.216293,
		38.747864, 42.519444, 19.758265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896133, 42.343304, 19.561876>,  <38.212303, 42.944004, 19.909670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896133, 42.343304, 19.561876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.247208, 42.206448, 19.696108>,  <38.457851, 42.124336, 19.776648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.247208, 42.206448, 19.696108>,  <37.896133, 42.343304, 19.561876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247208, 42.206448, 19.696108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464915, -0.777784, 0.422973,
		0.116293, -0.527253, -0.841713,
		0.877684, -0.342136, 0.335579,
		38.510513, 42.103806, 19.796782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834759, 41.612595, 19.450388>,  <37.896133, 42.343304, 19.561876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834759, 41.612595, 19.450388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119576, 41.661022, 19.727036>,  <38.290466, 41.690079, 19.893024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119576, 41.661022, 19.727036>,  <37.834759, 41.612595, 19.450388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119576, 41.661022, 19.727036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492256, -0.616320, 0.614682,
		0.500680, -0.778133, -0.379247,
		0.712042, 0.121072, 0.691619,
		38.333187, 41.697342, 19.934521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807236, 40.994370, 19.736824>,  <37.834759, 41.612595, 19.450388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807236, 40.994370, 19.736824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031345, 41.184799, 20.007954>,  <38.165810, 41.299057, 20.170631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031345, 41.184799, 20.007954>,  <37.807236, 40.994370, 19.736824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031345, 41.184799, 20.007954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135971, -0.754360, 0.642226,
		0.817072, -0.451985, -0.357914,
		0.560272, 0.476079, 0.677823,
		38.199429, 41.327621, 20.211300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202297, 40.446022, 20.035755>,  <37.807236, 40.994370, 19.736824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202297, 40.446022, 20.035755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206394, 40.753052, 20.292109>,  <38.208851, 40.937267, 20.445921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206394, 40.753052, 20.292109>,  <38.202297, 40.446022, 20.035755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206394, 40.753052, 20.292109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138567, -0.633644, 0.761114,
		0.990300, -0.096599, 0.099871,
		0.010240, 0.767570, 0.640883,
		38.209465, 40.983322, 20.484373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732124, 40.268089, 20.546566>,  <38.202297, 40.446022, 20.035755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732124, 40.268089, 20.546566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473816, 40.534027, 20.696745>,  <38.318829, 40.693588, 20.786852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.473816, 40.534027, 20.696745>,  <38.732124, 40.268089, 20.546566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473816, 40.534027, 20.696745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171422, -0.605416, 0.777230,
		0.744037, 0.437555, 0.504930,
		-0.645774, 0.664844, 0.375445,
		38.280083, 40.733479, 20.809378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833412, 40.313232, 21.249388>,  <38.732124, 40.268089, 20.546566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833412, 40.313232, 21.249388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464264, 40.463413, 21.215097>,  <38.242775, 40.553524, 21.194523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464264, 40.463413, 21.215097>,  <38.833412, 40.313232, 21.249388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464264, 40.463413, 21.215097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280869, -0.503872, 0.816839,
		0.263491, 0.777913, 0.570461,
		-0.922868, 0.375454, -0.085726,
		38.187405, 40.576050, 21.189379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609917, 40.447689, 21.863459>,  <38.833412, 40.313232, 21.249388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609917, 40.447689, 21.863459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253475, 40.409164, 21.686071>,  <38.039612, 40.386051, 21.579639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253475, 40.409164, 21.686071>,  <38.609917, 40.447689, 21.863459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253475, 40.409164, 21.686071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378154, -0.382641, 0.842962,
		-0.250872, 0.918864, 0.304553,
		-0.891102, -0.096308, -0.443466,
		37.986145, 40.380272, 21.553032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108177, 40.713234, 22.338169>,  <38.609917, 40.447689, 21.863459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108177, 40.713234, 22.338169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889893, 40.491119, 22.087139>,  <37.758923, 40.357849, 21.936522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889893, 40.491119, 22.087139>,  <38.108177, 40.713234, 22.338169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889893, 40.491119, 22.087139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496169, -0.389408, 0.776001,
		-0.675287, 0.734859, -0.063011,
		-0.545714, -0.555288, -0.627576,
		37.726177, 40.324532, 21.898867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380451, 40.755779, 22.587307>,  <38.108177, 40.713234, 22.338169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380451, 40.755779, 22.587307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424091, 40.430500, 22.358641>,  <37.450275, 40.235332, 22.221441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424091, 40.430500, 22.358641>,  <37.380451, 40.755779, 22.587307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424091, 40.430500, 22.358641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592915, -0.514827, 0.619197,
		-0.797841, 0.271396, -0.538326,
		0.109097, -0.813202, -0.571665,
		37.456821, 40.186539, 22.187141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741409, 40.425201, 22.578144>,  <37.380451, 40.755779, 22.587307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741409, 40.425201, 22.578144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983154, 40.126808, 22.466249>,  <37.128201, 39.947773, 22.399113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983154, 40.126808, 22.466249>,  <36.741409, 40.425201, 22.578144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983154, 40.126808, 22.466249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485570, -0.623251, 0.613008,
		-0.631637, -0.234653, -0.738900,
		0.604365, -0.745986, -0.279728,
		37.164463, 39.903011, 22.382330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163834, 40.613182, 22.296236>,  <36.741409, 40.425201, 22.578144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163834, 40.613182, 22.296236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979664, 40.855068, 22.556181>,  <35.869160, 41.000202, 22.712149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979664, 40.855068, 22.556181>,  <36.163834, 40.613182, 22.296236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979664, 40.855068, 22.556181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353575, 0.796430, -0.490596,
		-0.814243, 0.003890, -0.580512,
		-0.460428, 0.604719, 0.649862,
		35.841534, 41.036484, 22.751141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764492, 41.121723, 21.954344>,  <36.163834, 40.613182, 22.296236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764492, 41.121723, 21.954344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837166, 41.276836, 22.315811>,  <35.880768, 41.369904, 22.532692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837166, 41.276836, 22.315811>,  <35.764492, 41.121723, 21.954344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837166, 41.276836, 22.315811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302507, 0.852357, -0.426587,
		-0.935671, 0.350869, 0.037549,
		0.181681, 0.387787, 0.903666,
		35.891670, 41.393173, 22.586910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428200, 41.816013, 21.844109>,  <35.764492, 41.121723, 21.954344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428200, 41.816013, 21.844109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696377, 41.809940, 22.140831>,  <35.857285, 41.806297, 22.318865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696377, 41.809940, 22.140831>,  <35.428200, 41.816013, 21.844109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696377, 41.809940, 22.140831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270227, 0.936120, -0.225070,
		-0.691001, 0.351353, 0.631719,
		0.670444, -0.015184, 0.741805,
		35.897511, 41.805386, 22.363373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418633, 42.444073, 21.979534>,  <35.428200, 41.816013, 21.844109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418633, 42.444073, 21.979534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.754101, 42.323441, 22.160940>,  <35.955383, 42.251060, 22.269783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.754101, 42.323441, 22.160940>,  <35.418633, 42.444073, 21.979534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754101, 42.323441, 22.160940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352123, 0.935502, -0.029083,
		-0.415493, 0.184084, 0.890774,
		0.838675, -0.301579, 0.453514,
		36.005703, 42.232967, 22.296995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604172, 42.983711, 22.527388>,  <35.418633, 42.444073, 21.979534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604172, 42.983711, 22.527388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909359, 42.774929, 22.374842>,  <36.092472, 42.649658, 22.283314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909359, 42.774929, 22.374842>,  <35.604172, 42.983711, 22.527388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909359, 42.774929, 22.374842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425275, 0.849594, -0.311980,
		0.486845, 0.075846, 0.870189,
		0.762970, -0.521956, -0.381365,
		36.138248, 42.618343, 22.260431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999660, 43.479336, 22.428110>,  <35.604172, 42.983711, 22.527388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999660, 43.479336, 22.428110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228210, 43.188957, 22.274994>,  <36.365341, 43.014729, 22.183125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228210, 43.188957, 22.274994>,  <35.999660, 43.479336, 22.428110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228210, 43.188957, 22.274994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670828, 0.681821, -0.291735,
		0.472780, -0.090097, 0.876563,
		0.571375, -0.725949, -0.382791,
		36.399624, 42.971172, 22.160156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743382, 43.694305, 22.580761>,  <35.999660, 43.479336, 22.428110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743382, 43.694305, 22.580761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765770, 43.424858, 22.285978>,  <36.779202, 43.263191, 22.109108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765770, 43.424858, 22.285978>,  <36.743382, 43.694305, 22.580761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765770, 43.424858, 22.285978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716747, 0.540965, -0.440034,
		0.695084, -0.503585, 0.513090,
		0.055969, -0.673616, -0.736959,
		36.782562, 43.222775, 22.064890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089310, 44.092422, 23.161331>,  <36.743382, 43.694305, 22.580761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089310, 44.092422, 23.161331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031563, 44.463196, 23.299864>,  <36.996914, 44.685661, 23.382984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031563, 44.463196, 23.299864>,  <37.089310, 44.092422, 23.161331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031563, 44.463196, 23.299864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425311, -0.374144, 0.824091,
		0.893459, -0.028330, 0.448250,
		-0.144364, 0.926938, 0.346332,
		36.988255, 44.741276, 23.403763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356277, 44.132324, 23.788054>,  <37.089310, 44.092422, 23.161331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356277, 44.132324, 23.788054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100021, 44.439461, 23.787325>,  <36.946266, 44.623741, 23.786888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100021, 44.439461, 23.787325>,  <37.356277, 44.132324, 23.788054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100021, 44.439461, 23.787325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410888, -0.340819, 0.845585,
		0.648651, 0.542466, 0.533838,
		-0.640643, 0.767837, -0.001821,
		36.907829, 44.669811, 23.786779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288708, 44.278297, 24.533138>,  <37.356277, 44.132324, 23.788054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288708, 44.278297, 24.533138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979683, 44.471180, 24.367912>,  <36.794266, 44.586910, 24.268778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979683, 44.471180, 24.367912>,  <37.288708, 44.278297, 24.533138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979683, 44.471180, 24.367912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573426, -0.250550, 0.780005,
		0.272630, 0.839465, 0.470075,
		-0.772564, 0.482206, -0.413064,
		36.747913, 44.615841, 24.243994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942421, 44.729118, 25.106022>,  <37.288708, 44.278297, 24.533138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942421, 44.729118, 25.106022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697189, 44.628754, 24.806376>,  <36.550049, 44.568535, 24.626589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697189, 44.628754, 24.806376>,  <36.942421, 44.729118, 25.106022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697189, 44.628754, 24.806376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697104, -0.274342, 0.662406,
		-0.371718, 0.928321, -0.006715,
		-0.613083, -0.250909, -0.749115,
		36.513264, 44.553482, 24.581640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304951, 44.933384, 25.353224>,  <36.942421, 44.729118, 25.106022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304951, 44.933384, 25.353224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.216793, 44.668373, 25.066870>,  <36.163898, 44.509369, 24.895058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.216793, 44.668373, 25.066870>,  <36.304951, 44.933384, 25.353224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216793, 44.668373, 25.066870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735112, -0.369583, 0.568347,
		-0.641122, 0.651515, -0.405576,
		-0.220392, -0.662523, -0.715884,
		36.150677, 44.469616, 24.852104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606422, 44.879551, 25.409466>,  <36.304951, 44.933384, 25.353224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606422, 44.879551, 25.409466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690865, 44.554844, 25.191671>,  <35.741531, 44.360020, 25.060995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690865, 44.554844, 25.191671>,  <35.606422, 44.879551, 25.409466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690865, 44.554844, 25.191671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715629, -0.507797, 0.479601,
		-0.665814, 0.288403, -0.688125,
		0.211109, -0.811767, -0.544488,
		35.754196, 44.311314, 25.028324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043900, 44.650219, 25.195978>,  <35.606422, 44.879551, 25.409466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043900, 44.650219, 25.195978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285503, 44.331444, 25.192623>,  <35.430466, 44.140179, 25.190611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285503, 44.331444, 25.192623>,  <35.043900, 44.650219, 25.195978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285503, 44.331444, 25.192623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615655, -0.473242, 0.630088,
		-0.506110, -0.375412, -0.776478,
		0.604005, -0.796936, -0.008388,
		35.466705, 44.092361, 25.190107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.365734, 45.277557, 22.641005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.482143, 44.895901, 22.669048>,  <40.551991, 44.666908, 22.685875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.482143, 44.895901, 22.669048>,  <40.365734, 45.277557, 22.641005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482143, 44.895901, 22.669048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306300, -0.023498, 0.951645,
		-0.906357, -0.298429, -0.299093,
		0.291026, -0.954142, 0.070111,
		40.569450, 44.609657, 22.690083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928288, 44.848392, 23.025663>,  <40.365734, 45.277557, 22.641005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928288, 44.848392, 23.025663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279812, 44.663551, 23.073238>,  <40.490726, 44.552647, 23.101784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279812, 44.663551, 23.073238>,  <39.928288, 44.848392, 23.025663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279812, 44.663551, 23.073238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172376, -0.075027, 0.982170,
		-0.444941, -0.883646, -0.145591,
		0.878814, -0.462104, 0.118937,
		40.543457, 44.524921, 23.108919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704983, 44.304489, 23.460855>,  <39.928288, 44.848392, 23.025663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704983, 44.304489, 23.460855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.104305, 44.327248, 23.456108>,  <40.343899, 44.340900, 23.453260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.104305, 44.327248, 23.456108>,  <39.704983, 44.304489, 23.460855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104305, 44.327248, 23.456108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023059, -0.200325, 0.979458,
		0.053350, -0.978076, -0.201298,
		0.998310, 0.056896, -0.011866,
		40.403797, 44.344315, 23.452549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065552, 43.662380, 23.576485>,  <39.704983, 44.304489, 23.460855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065552, 43.662380, 23.576485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317917, 43.945515, 23.703558>,  <40.469337, 44.115395, 23.779802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317917, 43.945515, 23.703558>,  <40.065552, 43.662380, 23.576485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317917, 43.945515, 23.703558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021749, -0.393167, 0.919210,
		0.775549, -0.586850, -0.232659,
		0.630912, 0.707832, 0.317684,
		40.507191, 44.157864, 23.798862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466442, 43.266167, 24.029509>,  <40.065552, 43.662380, 23.576485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466442, 43.266167, 24.029509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.542671, 43.646137, 24.128563>,  <40.588409, 43.874119, 24.187996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.542671, 43.646137, 24.128563>,  <40.466442, 43.266167, 24.029509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542671, 43.646137, 24.128563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080031, -0.236387, 0.968357,
		0.978405, -0.204364, 0.030973,
		0.190576, 0.949924, 0.247638,
		40.599842, 43.931114, 24.202854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932816, 43.202278, 24.596870>,  <40.466442, 43.266167, 24.029509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932816, 43.202278, 24.596870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784698, 43.572094, 24.632883>,  <40.695827, 43.793983, 24.654491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784698, 43.572094, 24.632883>,  <40.932816, 43.202278, 24.596870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784698, 43.572094, 24.632883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244384, -0.190468, 0.950788,
		0.896193, 0.330065, 0.296471,
		-0.370290, 0.924543, 0.090034,
		40.673611, 43.849457, 24.659893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289062, 43.522011, 25.210005>,  <40.932816, 43.202278, 24.596870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289062, 43.522011, 25.210005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943245, 43.707928, 25.133553>,  <40.735756, 43.819477, 25.087681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943245, 43.707928, 25.133553>,  <41.289062, 43.522011, 25.210005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943245, 43.707928, 25.133553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142162, 0.138605, 0.980091,
		0.482031, 0.874503, -0.053754,
		-0.864544, 0.464793, -0.191133,
		40.683884, 43.847366, 25.076212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215832, 43.916466, 25.812546>,  <41.289062, 43.522011, 25.210005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215832, 43.916466, 25.812546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856720, 43.912315, 25.636419>,  <40.641251, 43.909824, 25.530743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856720, 43.912315, 25.636419>,  <41.215832, 43.916466, 25.812546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856720, 43.912315, 25.636419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439851, 0.072767, 0.895118,
		0.022753, 0.997295, -0.069893,
		-0.897783, -0.010376, -0.440317,
		40.587387, 43.909203, 25.504324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951218, 44.419807, 26.161716>,  <41.215832, 43.916466, 25.812546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951218, 44.419807, 26.161716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.641438, 44.210953, 26.018835>,  <40.455570, 44.085640, 25.933105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.641438, 44.210953, 26.018835>,  <40.951218, 44.419807, 26.161716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641438, 44.210953, 26.018835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469444, 0.095813, 0.877748,
		-0.424081, 0.847462, -0.319317,
		-0.774453, -0.522138, -0.357204,
		40.409103, 44.054310, 25.911674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431049, 44.783268, 26.280331>,  <40.951218, 44.419807, 26.161716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431049, 44.783268, 26.280331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.280437, 44.414639, 26.242527>,  <40.190071, 44.193462, 26.219845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.280437, 44.414639, 26.242527>,  <40.431049, 44.783268, 26.280331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280437, 44.414639, 26.242527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364857, 0.053747, 0.929511,
		-0.851531, 0.384471, -0.356479,
		-0.376530, -0.921571, -0.094510,
		40.167477, 44.138168, 26.214174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686630, 44.759983, 26.509718>,  <40.431049, 44.783268, 26.280331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686630, 44.759983, 26.509718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830307, 44.387054, 26.526512>,  <39.916515, 44.163300, 26.536589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830307, 44.387054, 26.526512>,  <39.686630, 44.759983, 26.509718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830307, 44.387054, 26.526512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387912, -0.108230, 0.915320,
		-0.848824, -0.345066, -0.400533,
		0.359196, -0.932317, 0.041987,
		39.938065, 44.107361, 26.539108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125282, 44.310566, 26.503229>,  <39.686630, 44.759983, 26.509718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125282, 44.310566, 26.503229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.432373, 44.113644, 26.667290>,  <39.616627, 43.995491, 26.765726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.432373, 44.113644, 26.667290>,  <39.125282, 44.310566, 26.503229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432373, 44.113644, 26.667290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534871, -0.139891, 0.833272,
		-0.352848, -0.859107, -0.370719,
		0.767731, -0.492306, 0.410152,
		39.662693, 43.965954, 26.790335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412254, 44.532402, 26.449314>,  <39.125282, 44.310566, 26.503229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412254, 44.532402, 26.449314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208561, 44.837372, 26.609011>,  <38.086346, 45.020351, 26.704828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208561, 44.837372, 26.609011>,  <38.412254, 44.532402, 26.449314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208561, 44.837372, 26.609011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283480, 0.586603, -0.758641,
		-0.812599, -0.273151, -0.514851,
		-0.509237, 0.762421, 0.399240,
		38.055790, 45.066097, 26.728783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997295, 44.894207, 25.963001>,  <38.412254, 44.532402, 26.449314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997295, 44.894207, 25.963001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065498, 45.167004, 26.247486>,  <38.106419, 45.330681, 26.418177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065498, 45.167004, 26.247486>,  <37.997295, 44.894207, 25.963001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065498, 45.167004, 26.247486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479542, 0.573104, -0.664523,
		-0.860794, 0.454363, -0.229322,
		0.170508, 0.681987, 0.711211,
		38.116650, 45.371601, 26.460850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762737, 45.522320, 25.718872>,  <37.997295, 44.894207, 25.963001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762737, 45.522320, 25.718872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019020, 45.607479, 26.013945>,  <38.172791, 45.658573, 26.190989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019020, 45.607479, 26.013945>,  <37.762737, 45.522320, 25.718872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019020, 45.607479, 26.013945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476229, 0.643443, -0.599321,
		-0.602249, 0.735293, 0.310870,
		0.640704, 0.212895, 0.737681,
		38.211231, 45.671349, 26.235249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903809, 46.114502, 25.533943>,  <37.762737, 45.522320, 25.718872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903809, 46.114502, 25.533943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.202084, 46.045574, 25.791393>,  <38.381050, 46.004215, 25.945864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.202084, 46.045574, 25.791393>,  <37.903809, 46.114502, 25.533943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202084, 46.045574, 25.791393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605646, 0.577969, -0.546942,
		-0.277744, 0.797657, 0.535352,
		0.745689, -0.172324, 0.643625,
		38.425789, 45.993877, 25.984480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226433, 46.797146, 25.651276>,  <37.903809, 46.114502, 25.533943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226433, 46.797146, 25.651276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487404, 46.511814, 25.753649>,  <38.643986, 46.340614, 25.815073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487404, 46.511814, 25.753649>,  <38.226433, 46.797146, 25.651276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487404, 46.511814, 25.753649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721128, 0.480478, -0.499115,
		0.233064, 0.510195, 0.827878,
		0.652423, -0.713332, 0.255933,
		38.683132, 46.297813, 25.830429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851826, 47.175537, 25.870045>,  <38.226433, 46.797146, 25.651276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851826, 47.175537, 25.870045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975056, 46.801456, 25.800205>,  <39.048992, 46.577007, 25.758303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975056, 46.801456, 25.800205>,  <38.851826, 47.175537, 25.870045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975056, 46.801456, 25.800205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840214, 0.353541, -0.411156,
		0.446243, -0.020034, 0.894688,
		0.308072, -0.935204, -0.174598,
		39.067478, 46.520897, 25.747826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475414, 47.205711, 26.085266>,  <38.851826, 47.175537, 25.870045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475414, 47.205711, 26.085266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.443260, 46.928047, 25.799139>,  <39.423965, 46.761448, 25.627462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.443260, 46.928047, 25.799139>,  <39.475414, 47.205711, 26.085266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443260, 46.928047, 25.799139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744141, 0.435668, -0.506406,
		0.663168, -0.573008, 0.481529,
		-0.080388, -0.694158, -0.715320,
		39.419144, 46.719799, 25.584543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172981, 47.047276, 25.845837>,  <39.475414, 47.205711, 26.085266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172981, 47.047276, 25.845837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.968597, 46.886658, 25.541815>,  <39.845966, 46.790287, 25.359402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.968597, 46.886658, 25.541815>,  <40.172981, 47.047276, 25.845837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968597, 46.886658, 25.541815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797065, 0.109768, -0.593833,
		0.321882, -0.909236, 0.263972,
		-0.510959, -0.401547, -0.760053,
		39.815311, 46.766193, 25.313799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663563, 46.705433, 25.456053>,  <40.172981, 47.047276, 25.845837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663563, 46.705433, 25.456053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364658, 46.730213, 25.191399>,  <40.185314, 46.745079, 25.032606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364658, 46.730213, 25.191399>,  <40.663563, 46.705433, 25.456053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364658, 46.730213, 25.191399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664486, 0.081306, -0.742865,
		0.007775, -0.994762, -0.101922,
		-0.747261, 0.061950, -0.661637,
		40.140480, 46.748798, 24.992907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828308, 46.298473, 24.896339>,  <40.663563, 46.705433, 25.456053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828308, 46.298473, 24.896339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564857, 46.558163, 24.744167>,  <40.406788, 46.713978, 24.652864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564857, 46.558163, 24.744167>,  <40.828308, 46.298473, 24.896339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564857, 46.558163, 24.744167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596363, 0.142050, -0.790046,
		-0.458876, -0.747216, -0.480730,
		-0.658622, 0.649223, -0.380429,
		40.367271, 46.752930, 24.630039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830635, 46.003094, 24.148933>,  <40.828308, 46.298473, 24.896339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830635, 46.003094, 24.148933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.683784, 46.375099, 24.155676>,  <40.595673, 46.598305, 24.159721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.683784, 46.375099, 24.155676>,  <40.830635, 46.003094, 24.148933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683784, 46.375099, 24.155676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617502, 0.257231, -0.743319,
		-0.695636, -0.262485, -0.668724,
		-0.367127, 0.930018, 0.016855,
		40.573647, 46.654106, 24.160732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940632, 46.176655, 23.509584>,  <40.830635, 46.003094, 24.148933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940632, 46.176655, 23.509584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874451, 46.536106, 23.672106>,  <40.834740, 46.751778, 23.769619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874451, 46.536106, 23.672106>,  <40.940632, 46.176655, 23.509584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874451, 46.536106, 23.672106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661407, 0.406707, -0.630182,
		-0.731549, 0.164464, -0.661655,
		-0.165457, 0.898632, 0.406305,
		40.824814, 46.805695, 23.793997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666981, 46.476643, 22.988970>,  <40.940632, 46.176655, 23.509584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666981, 46.476643, 22.988970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823265, 46.749680, 23.236006>,  <40.917034, 46.913502, 23.384228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823265, 46.749680, 23.236006>,  <40.666981, 46.476643, 22.988970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823265, 46.749680, 23.236006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545550, 0.368689, -0.752625,
		-0.741432, 0.630985, -0.228336,
		0.390710, 0.682588, 0.617592,
		40.940479, 46.954456, 23.421284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871918, 46.322124, 22.889936>,  <40.666981, 46.476643, 22.988970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871918, 46.322124, 22.889936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649639, 46.478127, 22.596245>,  <39.516273, 46.571728, 22.420029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649639, 46.478127, 22.596245>,  <39.871918, 46.322124, 22.889936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649639, 46.478127, 22.596245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758037, -0.600378, 0.254805,
		-0.341440, 0.698169, 0.629269,
		-0.555696, 0.390008, -0.734231,
		39.482929, 46.595131, 22.375975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186947, 46.465782, 23.179646>,  <39.871918, 46.322124, 22.889936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186947, 46.465782, 23.179646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102997, 46.448254, 22.788946>,  <39.052628, 46.437737, 22.554527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102997, 46.448254, 22.788946>,  <39.186947, 46.465782, 23.179646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102997, 46.448254, 22.788946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890608, -0.403654, 0.209474,
		-0.403447, 0.913861, 0.045688,
		-0.209873, -0.043821, -0.976746,
		39.040035, 46.435108, 22.495922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643944, 46.908676, 23.078211>,  <39.186947, 46.465782, 23.179646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643944, 46.908676, 23.078211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648716, 46.632404, 22.788986>,  <38.651581, 46.466640, 22.615452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648716, 46.632404, 22.788986>,  <38.643944, 46.908676, 23.078211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648716, 46.632404, 22.788986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934065, -0.265799, 0.238481,
		-0.356904, 0.672543, -0.648310,
		0.011931, -0.690679, -0.723064,
		38.652294, 46.425201, 22.572067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909283, 46.933640, 22.799343>,  <38.643944, 46.908676, 23.078211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909283, 46.933640, 22.799343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090248, 46.584297, 22.727142>,  <38.198826, 46.374691, 22.683823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090248, 46.584297, 22.727142>,  <37.909283, 46.933640, 22.799343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090248, 46.584297, 22.727142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828656, -0.486480, 0.276885,
		-0.329628, 0.024307, -0.943798,
		0.452409, -0.873354, -0.180500,
		38.225971, 46.322292, 22.672993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388477, 46.580933, 22.500065>,  <37.909283, 46.933640, 22.799343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388477, 46.580933, 22.500065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660770, 46.297508, 22.574400>,  <37.824146, 46.127453, 22.619001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660770, 46.297508, 22.574400>,  <37.388477, 46.580933, 22.500065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660770, 46.297508, 22.574400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719189, -0.598282, 0.353307,
		-0.139157, -0.374161, -0.916863,
		0.680737, -0.708563, 0.185838,
		37.864990, 46.084938, 22.630152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103889, 45.938602, 22.208344>,  <37.388477, 46.580933, 22.500065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103889, 45.938602, 22.208344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380260, 45.805038, 22.464821>,  <37.546082, 45.724899, 22.618708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380260, 45.805038, 22.464821>,  <37.103889, 45.938602, 22.208344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380260, 45.805038, 22.464821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684330, -0.588027, 0.431180,
		0.233061, -0.736699, -0.634789,
		0.690923, -0.333914, 0.641191,
		37.587536, 45.704865, 22.657179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935890, 45.219246, 22.210423>,  <37.103889, 45.938602, 22.208344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935890, 45.219246, 22.210423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153576, 45.284607, 22.539574>,  <37.284187, 45.323826, 22.737064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153576, 45.284607, 22.539574>,  <36.935890, 45.219246, 22.210423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153576, 45.284607, 22.539574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552688, -0.668087, 0.498193,
		0.631161, -0.725919, -0.273271,
		0.544217, 0.163406, 0.822877,
		37.316841, 45.333630, 22.786436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127502, 44.512424, 22.497250>,  <36.935890, 45.219246, 22.210423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127502, 44.512424, 22.497250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143429, 44.776871, 22.796938>,  <37.152985, 44.935539, 22.976751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143429, 44.776871, 22.796938>,  <37.127502, 44.512424, 22.497250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143429, 44.776871, 22.796938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598121, -0.584874, 0.547881,
		0.800416, -0.469939, 0.372144,
		0.039813, 0.661120, 0.749223,
		37.155373, 44.975208, 23.021706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467663, 43.877583, 22.368252>,  <37.127502, 44.512424, 22.497250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467663, 43.877583, 22.368252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296566, 43.668625, 22.073189>,  <37.193909, 43.543251, 21.896151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296566, 43.668625, 22.073189>,  <37.467663, 43.877583, 22.368252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296566, 43.668625, 22.073189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536190, 0.510353, -0.672339,
		0.727695, -0.683111, 0.061806,
		-0.427739, -0.522398, -0.737658,
		37.168243, 43.511906, 21.851891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978329, 43.584755, 21.854746>,  <37.467663, 43.877583, 22.368252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978329, 43.584755, 21.854746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.629440, 43.623070, 21.662886>,  <37.420109, 43.646057, 21.547770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.629440, 43.623070, 21.662886>,  <37.978329, 43.584755, 21.854746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629440, 43.623070, 21.662886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454627, 0.520487, -0.722777,
		0.180421, -0.848480, -0.497523,
		-0.872217, 0.095784, -0.479649,
		37.367775, 43.651806, 21.518991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100731, 43.591114, 21.152088>,  <37.978329, 43.584755, 21.854746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100731, 43.591114, 21.152088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.711212, 43.675884, 21.119078>,  <37.477501, 43.726746, 21.099272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.711212, 43.675884, 21.119078>,  <38.100731, 43.591114, 21.152088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711212, 43.675884, 21.119078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168091, 0.426243, -0.888855,
		-0.153192, -0.879435, -0.450696,
		-0.973795, 0.211924, -0.082528,
		37.419075, 43.739460, 21.094318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822365, 43.248669, 20.601261>,  <38.100731, 43.591114, 21.152088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822365, 43.248669, 20.601261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575237, 43.556236, 20.667057>,  <37.426960, 43.740776, 20.706535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575237, 43.556236, 20.667057>,  <37.822365, 43.248669, 20.601261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575237, 43.556236, 20.667057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125673, 0.303062, -0.944648,
		-0.776211, -0.562951, -0.283871,
		-0.617821, 0.768921, 0.164492,
		37.389893, 43.786911, 20.716404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227695, 43.268219, 20.065269>,  <37.822365, 43.248669, 20.601261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227695, 43.268219, 20.065269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301254, 43.633057, 20.211840>,  <37.345390, 43.851959, 20.299782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301254, 43.633057, 20.211840>,  <37.227695, 43.268219, 20.065269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301254, 43.633057, 20.211840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044254, 0.364725, -0.930063,
		-0.981949, 0.187252, 0.026708,
		0.183897, 0.912092, 0.366428,
		37.356422, 43.906685, 20.321768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699505, 43.671192, 19.708942>,  <37.227695, 43.268219, 20.065269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699505, 43.671192, 19.708942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983944, 43.924858, 19.830387>,  <37.154606, 44.077057, 19.903254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983944, 43.924858, 19.830387>,  <36.699505, 43.671192, 19.708942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983944, 43.924858, 19.830387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038753, 0.466518, -0.883662,
		-0.702027, 0.616602, 0.356314,
		0.711095, 0.634163, 0.303614,
		37.197273, 44.115108, 19.921471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500900, 44.357151, 19.634710>,  <36.699505, 43.671192, 19.708942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500900, 44.357151, 19.634710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899940, 44.381504, 19.621531>,  <37.139366, 44.396114, 19.613623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899940, 44.381504, 19.621531>,  <36.500900, 44.357151, 19.634710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899940, 44.381504, 19.621531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061791, 0.568524, -0.820343,
		-0.031209, 0.820411, 0.570922,
		0.997601, 0.060880, -0.032951,
		37.199223, 44.399769, 19.611645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582756, 45.048893, 19.365490>,  <36.500900, 44.357151, 19.634710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582756, 45.048893, 19.365490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.933037, 44.866505, 19.301950>,  <37.143208, 44.757072, 19.263826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.933037, 44.866505, 19.301950>,  <36.582756, 45.048893, 19.365490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933037, 44.866505, 19.301950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056922, 0.424184, -0.903785,
		0.479477, 0.782408, 0.397415,
		0.875706, -0.455966, -0.158850,
		37.195747, 44.729713, 19.254295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221836, 44.705322, 18.863319>,  <36.582756, 45.048893, 19.365490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221836, 44.705322, 18.863319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.212246, 44.338291, 19.022057>,  <36.206490, 44.118073, 19.117298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.212246, 44.338291, 19.022057>,  <36.221836, 44.705322, 18.863319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212246, 44.338291, 19.022057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563957, -0.340180, -0.752483,
		0.825456, 0.205759, 0.525629,
		-0.023978, -0.917573, 0.396843,
		36.205051, 44.063019, 19.141109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.616463, 35.697369, 31.551262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815758, 35.548176, 31.238176>,  <32.935333, 35.458660, 31.050325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815758, 35.548176, 31.238176>,  <32.616463, 35.697369, 31.551262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815758, 35.548176, 31.238176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631936, 0.461875, -0.622357,
		0.593645, 0.804708, -0.005578,
		0.498239, -0.372984, -0.782714,
		32.965229, 35.436279, 31.003363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675251, 36.196342, 31.023418>,  <32.616463, 35.697369, 31.551262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675251, 36.196342, 31.023418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802689, 35.885838, 30.805828>,  <32.879150, 35.699535, 30.675274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802689, 35.885838, 30.805828>,  <32.675251, 36.196342, 31.023418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802689, 35.885838, 30.805828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115466, 0.601388, -0.790569,
		0.940832, 0.189061, 0.281232,
		0.318596, -0.776266, -0.543975,
		32.898266, 35.652958, 30.642635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322987, 36.373024, 30.697855>,  <32.675251, 36.196342, 31.023418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322987, 36.373024, 30.697855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173565, 36.068192, 30.486311>,  <33.083912, 35.885292, 30.359385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173565, 36.068192, 30.486311>,  <33.322987, 36.373024, 30.697855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173565, 36.068192, 30.486311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080137, 0.541489, -0.836880,
		0.924142, -0.354998, -0.141203,
		-0.373550, -0.762080, -0.528861,
		33.061501, 35.839569, 30.327652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705715, 36.253536, 30.107239>,  <33.322987, 36.373024, 30.697855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705715, 36.253536, 30.107239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374424, 36.050213, 30.012875>,  <33.175648, 35.928219, 29.956255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374424, 36.050213, 30.012875>,  <33.705715, 36.253536, 30.107239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374424, 36.050213, 30.012875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007293, 0.411168, -0.911530,
		0.560340, -0.756678, -0.336835,
		-0.828231, -0.508310, -0.235912,
		33.125954, 35.897720, 29.942101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858459, 35.953011, 29.432823>,  <33.705715, 36.253536, 30.107239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858459, 35.953011, 29.432823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460381, 35.971199, 29.467491>,  <33.221535, 35.982113, 29.488293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460381, 35.971199, 29.467491>,  <33.858459, 35.953011, 29.432823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460381, 35.971199, 29.467491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057304, 0.447202, -0.892596,
		-0.079344, -0.893277, -0.442449,
		-0.995199, 0.045468, 0.086671,
		33.161819, 35.984840, 29.493492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676945, 35.622169, 28.765699>,  <33.858459, 35.953011, 29.432823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676945, 35.622169, 28.765699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370037, 35.838978, 28.902822>,  <33.185894, 35.969063, 28.985096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370037, 35.838978, 28.902822>,  <33.676945, 35.622169, 28.765699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370037, 35.838978, 28.902822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202062, 0.302992, -0.931325,
		-0.608668, -0.783841, -0.122953,
		-0.767264, 0.542023, 0.342806,
		33.139858, 36.001583, 29.005665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091484, 35.462803, 28.302444>,  <33.676945, 35.622169, 28.765699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091484, 35.462803, 28.302444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057613, 35.814739, 28.489510>,  <33.037289, 36.025902, 28.601749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057613, 35.814739, 28.489510>,  <33.091484, 35.462803, 28.302444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057613, 35.814739, 28.489510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099817, 0.459499, -0.882552,
		-0.991396, -0.121415, 0.048912,
		-0.084680, 0.879840, 0.467664,
		33.032207, 36.078690, 28.629808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898666, 35.858688, 27.789165>,  <33.091484, 35.462803, 28.302444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898666, 35.858688, 27.789165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942490, 36.165165, 28.042446>,  <32.968784, 36.349052, 28.194414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942490, 36.165165, 28.042446>,  <32.898666, 35.858688, 27.789165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942490, 36.165165, 28.042446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171708, 0.612869, -0.771303,
		-0.979037, 0.193228, -0.064416,
		0.109559, 0.766195, 0.633200,
		32.975357, 36.395023, 28.232407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420860, 36.309669, 27.614252>,  <32.898666, 35.858688, 27.789165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420860, 36.309669, 27.614252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705933, 36.503956, 27.816702>,  <32.876976, 36.620529, 27.938171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705933, 36.503956, 27.816702>,  <32.420860, 36.309669, 27.614252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705933, 36.503956, 27.816702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209840, 0.540853, -0.814522,
		-0.669366, 0.686701, 0.283534,
		0.712683, 0.485716, 0.506126,
		32.919739, 36.649670, 27.968540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409733, 37.018978, 27.323120>,  <32.420860, 36.309669, 27.614252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409733, 37.018978, 27.323120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756927, 37.036240, 27.521002>,  <32.965244, 37.046597, 27.639730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756927, 37.036240, 27.521002>,  <32.409733, 37.018978, 27.323120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756927, 37.036240, 27.521002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441592, 0.388592, -0.808699,
		-0.227137, 0.920399, 0.318237,
		0.867990, 0.043155, 0.494704,
		33.017323, 37.049187, 27.669413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634979, 37.706013, 27.293650>,  <32.409733, 37.018978, 27.323120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634979, 37.706013, 27.293650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982430, 37.523949, 27.371946>,  <33.190899, 37.414711, 27.418924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982430, 37.523949, 27.371946>,  <32.634979, 37.706013, 27.293650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982430, 37.523949, 27.371946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461742, 0.600387, -0.652939,
		0.179674, 0.657541, 0.731681,
		0.868626, -0.455164, 0.195741,
		33.243019, 37.387398, 27.430668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169285, 38.158051, 27.546183>,  <32.634979, 37.706013, 27.293650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169285, 38.158051, 27.546183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369434, 37.852905, 27.382399>,  <33.489525, 37.669819, 27.284128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369434, 37.852905, 27.382399>,  <33.169285, 38.158051, 27.546183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369434, 37.852905, 27.382399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259621, 0.583363, -0.769600,
		0.825967, 0.278785, 0.489957,
		0.500375, -0.762868, -0.409460,
		33.519547, 37.624046, 27.259560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465179, 38.543404, 28.127552>,  <33.169285, 38.158051, 27.546183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465179, 38.543404, 28.127552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294376, 38.896194, 28.207335>,  <33.191895, 39.107868, 28.255203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294376, 38.896194, 28.207335>,  <33.465179, 38.543404, 28.127552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294376, 38.896194, 28.207335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565374, -0.432548, 0.702321,
		0.705706, 0.187126, 0.683347,
		-0.427003, 0.881979, 0.199456,
		33.166275, 39.160789, 28.267172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448044, 38.598263, 28.858204>,  <33.465179, 38.543404, 28.127552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448044, 38.598263, 28.858204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163189, 38.841797, 28.718391>,  <32.992275, 38.987919, 28.634504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163189, 38.841797, 28.718391>,  <33.448044, 38.598263, 28.858204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163189, 38.841797, 28.718391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634422, -0.344929, 0.691760,
		0.300608, 0.714379, 0.631900,
		-0.712140, 0.608840, -0.349530,
		32.949547, 39.024448, 28.613533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173954, 38.790741, 29.481379>,  <33.448044, 38.598263, 28.858204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173954, 38.790741, 29.481379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915634, 38.888721, 29.192122>,  <32.760643, 38.947510, 29.018566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915634, 38.888721, 29.192122>,  <33.173954, 38.790741, 29.481379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915634, 38.888721, 29.192122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761255, -0.279224, 0.585257,
		-0.058561, 0.928458, 0.366793,
		-0.645803, 0.244950, -0.723145,
		32.721893, 38.962208, 28.975178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751312, 39.385235, 29.714190>,  <33.173954, 38.790741, 29.481379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751312, 39.385235, 29.714190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526356, 39.191746, 29.445940>,  <32.391380, 39.075653, 29.284990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526356, 39.191746, 29.445940>,  <32.751312, 39.385235, 29.714190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526356, 39.191746, 29.445940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711404, -0.130326, 0.690594,
		-0.421453, 0.865466, -0.270826,
		-0.562390, -0.483719, -0.670622,
		32.357639, 39.046631, 29.244753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065819, 39.596725, 29.830847>,  <32.751312, 39.385235, 29.714190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065819, 39.596725, 29.830847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042263, 39.243755, 29.644146>,  <32.028130, 39.031975, 29.532125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042263, 39.243755, 29.644146>,  <32.065819, 39.596725, 29.830847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042263, 39.243755, 29.644146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686765, -0.303521, 0.660476,
		-0.724489, 0.359449, -0.588143,
		-0.058894, -0.882424, -0.466755,
		32.024593, 38.979027, 29.504120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328947, 39.513535, 29.768082>,  <32.065819, 39.596725, 29.830847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328947, 39.513535, 29.768082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.502993, 39.155617, 29.728052>,  <31.607420, 38.940865, 29.704035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.502993, 39.155617, 29.728052>,  <31.328947, 39.513535, 29.768082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502993, 39.155617, 29.728052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633094, -0.383082, 0.672636,
		-0.640209, -0.229317, -0.733175,
		0.435114, -0.894797, -0.100073,
		31.633526, 38.887177, 29.698030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733997, 39.139755, 29.706520>,  <31.328947, 39.513535, 29.768082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733997, 39.139755, 29.706520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020205, 38.892876, 29.837420>,  <31.191929, 38.744747, 29.915958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020205, 38.892876, 29.837420>,  <30.733997, 39.139755, 29.706520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020205, 38.892876, 29.837420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610897, -0.325576, 0.721668,
		-0.338884, -0.716272, -0.610009,
		0.715516, -0.617215, 0.327236,
		31.234861, 38.707714, 29.935595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396372, 38.618534, 30.006384>,  <30.733997, 39.139755, 29.706520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396372, 38.618534, 30.006384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756653, 38.531487, 30.156784>,  <30.972822, 38.479259, 30.247025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756653, 38.531487, 30.156784>,  <30.396372, 38.618534, 30.006384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756653, 38.531487, 30.156784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427904, -0.294888, 0.854365,
		-0.075046, -0.930422, -0.358725,
		0.900703, -0.217617, 0.376002,
		31.026863, 38.466202, 30.269585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411631, 37.929947, 30.258698>,  <30.396372, 38.618534, 30.006384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411631, 37.929947, 30.258698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700449, 38.114071, 30.465296>,  <30.873739, 38.224545, 30.589254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700449, 38.114071, 30.465296>,  <30.411631, 37.929947, 30.258698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700449, 38.114071, 30.465296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458667, -0.240418, 0.855467,
		0.517954, -0.854584, 0.037536,
		0.722044, 0.460309, 0.516495,
		30.917063, 38.252163, 30.620245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351583, 37.633568, 30.823700>,  <30.411631, 37.929947, 30.258698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351583, 37.633568, 30.823700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.610077, 37.912056, 30.948700>,  <30.765173, 38.079151, 31.023701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.610077, 37.912056, 30.948700>,  <30.351583, 37.633568, 30.823700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610077, 37.912056, 30.948700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240331, -0.202989, 0.949229,
		0.724310, -0.688527, 0.036145,
		0.646233, 0.696223, 0.312501,
		30.803947, 38.120922, 31.042450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660997, 37.415447, 31.466175>,  <30.351583, 37.633568, 30.823700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660997, 37.415447, 31.466175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.706556, 37.812836, 31.463579>,  <30.733892, 38.051270, 31.462021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.706556, 37.812836, 31.463579>,  <30.660997, 37.415447, 31.466175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706556, 37.812836, 31.463579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372620, 0.048772, 0.926702,
		0.920968, -0.103131, 0.375742,
		0.113897, 0.993472, -0.006489,
		30.740726, 38.110878, 31.461632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029688, 37.531033, 32.004803>,  <30.660997, 37.415447, 31.466175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029688, 37.531033, 32.004803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855343, 37.887257, 31.952759>,  <30.750736, 38.100990, 31.921534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855343, 37.887257, 31.952759>,  <31.029688, 37.531033, 32.004803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855343, 37.887257, 31.952759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243834, 0.022308, 0.969560,
		0.866353, 0.454321, 0.207425,
		-0.435865, 0.890558, -0.130106,
		30.724583, 38.154423, 31.913727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205902, 37.925026, 32.540638>,  <31.029688, 37.531033, 32.004803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205902, 37.925026, 32.540638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888826, 38.143421, 32.432163>,  <30.698582, 38.274460, 32.367077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888826, 38.143421, 32.432163>,  <31.205902, 37.925026, 32.540638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888826, 38.143421, 32.432163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227662, 0.147531, 0.962499,
		0.565522, 0.824700, 0.007354,
		-0.792688, 0.545989, -0.271185,
		30.651020, 38.307217, 32.350807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075369, 38.464485, 33.068268>,  <31.205902, 37.925026, 32.540638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075369, 38.464485, 33.068268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720526, 38.433960, 32.886185>,  <30.507620, 38.415646, 32.776936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720526, 38.433960, 32.886185>,  <31.075369, 38.464485, 33.068268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720526, 38.433960, 32.886185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456729, 0.002842, 0.889602,
		-0.066596, 0.997080, -0.037377,
		-0.887110, -0.076314, -0.455206,
		30.454393, 38.411064, 32.749622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606155, 38.999699, 33.293922>,  <31.075369, 38.464485, 33.068268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606155, 38.999699, 33.293922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368898, 38.707390, 33.158779>,  <30.226543, 38.532005, 33.077694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368898, 38.707390, 33.158779>,  <30.606155, 38.999699, 33.293922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368898, 38.707390, 33.158779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419933, -0.077221, 0.904264,
		-0.686905, 0.678235, -0.261074,
		-0.593143, -0.730777, -0.337856,
		30.190956, 38.488155, 33.057423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242828, 39.233696, 33.101830>,  <30.606155, 38.999699, 33.293922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242828, 39.233696, 33.101830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.631214, 39.147106, 33.061111>,  <31.864246, 39.095150, 33.036682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.631214, 39.147106, 33.061111>,  <31.242828, 39.233696, 33.101830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631214, 39.147106, 33.061111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146672, 0.874902, -0.461557,
		0.188973, 0.433226, 0.881251,
		0.970967, -0.216476, -0.101791,
		31.922504, 39.082165, 33.030575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596224, 39.828411, 33.222485>,  <31.242828, 39.233696, 33.101830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596224, 39.828411, 33.222485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901413, 39.646671, 33.038551>,  <32.084526, 39.537628, 32.928192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901413, 39.646671, 33.038551>,  <31.596224, 39.828411, 33.222485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901413, 39.646671, 33.038551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252883, 0.864430, -0.434524,
		0.594914, 0.215247, 0.774433,
		0.762973, -0.454345, -0.459829,
		32.130306, 39.510368, 32.900604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220604, 40.242565, 33.364471>,  <31.596224, 39.828411, 33.222485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220604, 40.242565, 33.364471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291435, 40.018185, 33.040997>,  <32.333935, 39.883556, 32.846912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291435, 40.018185, 33.040997>,  <32.220604, 40.242565, 33.364471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291435, 40.018185, 33.040997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379458, 0.797059, -0.469797,
		0.908105, -0.223672, 0.353999,
		0.177078, -0.560952, -0.808688,
		32.344559, 39.849899, 32.798389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996262, 40.136784, 33.301918>,  <32.220604, 40.242565, 33.364471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996262, 40.136784, 33.301918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870155, 40.071537, 32.927967>,  <32.794491, 40.032387, 32.703594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870155, 40.071537, 32.927967>,  <32.996262, 40.136784, 33.301918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870155, 40.071537, 32.927967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441369, 0.846887, -0.296607,
		0.840120, -0.506137, -0.194999,
		-0.315266, -0.163119, -0.934880,
		32.775578, 40.022602, 32.647503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566872, 40.240227, 32.856991>,  <32.996262, 40.136784, 33.301918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566872, 40.240227, 32.856991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254208, 40.277500, 32.610306>,  <33.066608, 40.299866, 32.462296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254208, 40.277500, 32.610306>,  <33.566872, 40.240227, 32.856991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254208, 40.277500, 32.610306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525339, 0.631353, -0.570450,
		0.336202, -0.769877, -0.542456,
		-0.781657, 0.093187, -0.616708,
		33.019711, 40.305458, 32.425293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852383, 40.208561, 32.220432>,  <33.566872, 40.240227, 32.856991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852383, 40.208561, 32.220432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484386, 40.345158, 32.143482>,  <33.263588, 40.427116, 32.097313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484386, 40.345158, 32.143482>,  <33.852383, 40.208561, 32.220432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484386, 40.345158, 32.143482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357432, 0.529577, -0.769279,
		-0.160827, -0.776487, -0.609264,
		-0.919987, 0.341492, -0.192371,
		33.208389, 40.447605, 32.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710636, 40.144093, 31.459600>,  <33.852383, 40.208561, 32.220432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710636, 40.144093, 31.459600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455509, 40.417263, 31.602036>,  <33.302433, 40.581165, 31.687496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455509, 40.417263, 31.602036>,  <33.710636, 40.144093, 31.459600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455509, 40.417263, 31.602036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197985, 0.592184, -0.781102,
		-0.744307, -0.427699, -0.512914,
		-0.637816, 0.682929, 0.356089,
		33.264164, 40.622143, 31.708862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311047, 40.341293, 30.869381>,  <33.710636, 40.144093, 31.459600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311047, 40.341293, 30.869381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257061, 40.633072, 31.137619>,  <33.224670, 40.808140, 31.298563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257061, 40.633072, 31.137619>,  <33.311047, 40.341293, 30.869381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257061, 40.633072, 31.137619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133495, 0.684004, -0.717159,
		-0.981817, -0.007266, -0.189689,
		-0.134959, 0.729442, 0.670597,
		33.216572, 40.851906, 31.338799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025604, 40.795269, 30.471672>,  <33.311047, 40.341293, 30.869381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025604, 40.795269, 30.471672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207516, 40.949177, 30.792953>,  <33.316662, 41.041523, 30.985722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207516, 40.949177, 30.792953>,  <33.025604, 40.795269, 30.471672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207516, 40.949177, 30.792953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458289, 0.672189, -0.581492,
		-0.763643, 0.632547, 0.129359,
		0.454775, 0.384768, 0.803202,
		33.343948, 41.064606, 31.033915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055992, 41.574306, 30.388752>,  <33.025604, 40.795269, 30.471672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055992, 41.574306, 30.388752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337021, 41.533916, 30.670517>,  <33.505638, 41.509682, 30.839577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337021, 41.533916, 30.670517>,  <33.055992, 41.574306, 30.388752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337021, 41.533916, 30.670517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496582, 0.778589, -0.383674,
		-0.509707, 0.619357, 0.597156,
		0.702570, -0.100976, 0.704414,
		33.547791, 41.503624, 30.881842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185749, 42.184914, 30.571531>,  <33.055992, 41.574306, 30.388752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185749, 42.184914, 30.571531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517845, 41.996784, 30.691196>,  <33.717102, 41.883907, 30.762995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517845, 41.996784, 30.691196>,  <33.185749, 42.184914, 30.571531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517845, 41.996784, 30.691196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549122, 0.782313, -0.294026,
		-0.095751, 0.408388, 0.907772,
		0.830239, -0.470324, 0.299162,
		33.766918, 41.855686, 30.780945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582260, 42.714672, 30.972891>,  <33.185749, 42.184914, 30.571531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582260, 42.714672, 30.972891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836143, 42.420700, 30.877367>,  <33.988472, 42.244316, 30.820053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836143, 42.420700, 30.877367>,  <33.582260, 42.714672, 30.972891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836143, 42.420700, 30.877367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665918, 0.676969, -0.313474,
		0.392048, 0.039935, 0.919077,
		0.634706, -0.734927, -0.238811,
		34.026554, 42.200222, 30.805723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175369, 42.971775, 31.173622>,  <33.582260, 42.714672, 30.972891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175369, 42.971775, 31.173622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293610, 42.681419, 30.925203>,  <34.364552, 42.507206, 30.776152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293610, 42.681419, 30.925203>,  <34.175369, 42.971775, 31.173622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293610, 42.681419, 30.925203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683434, 0.614919, -0.393436,
		0.667487, -0.308147, 0.677869,
		0.295598, -0.725893, -0.621048,
		34.382290, 42.463650, 30.738890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834023, 43.069828, 31.152784>,  <34.175369, 42.971775, 31.173622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834023, 43.069828, 31.152784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761169, 42.871639, 30.813059>,  <34.717457, 42.752728, 30.609224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761169, 42.871639, 30.813059>,  <34.834023, 43.069828, 31.152784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761169, 42.871639, 30.813059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680266, 0.560185, -0.472685,
		0.709975, -0.663851, 0.235025,
		-0.182135, -0.495474, -0.849313,
		34.706528, 42.722996, 30.558266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465168, 42.798019, 30.858112>,  <34.834023, 43.069828, 31.152784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465168, 42.798019, 30.858112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227760, 42.794022, 30.536209>,  <35.085316, 42.791622, 30.343067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227760, 42.794022, 30.536209>,  <35.465168, 42.798019, 30.858112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227760, 42.794022, 30.536209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599158, 0.662130, -0.450103,
		0.537352, -0.749322, -0.387000,
		-0.593517, -0.009990, -0.804759,
		35.049706, 42.791023, 30.294781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878326, 42.786156, 30.266718>,  <35.465168, 42.798019, 30.858112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878326, 42.786156, 30.266718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529274, 42.908352, 30.114304>,  <35.319843, 42.981670, 30.022854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529274, 42.908352, 30.114304>,  <35.878326, 42.786156, 30.266718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529274, 42.908352, 30.114304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481983, 0.664565, -0.571004,
		0.078786, -0.681929, -0.727163,
		-0.872631, 0.305493, -0.381037,
		35.267483, 43.000000, 29.999992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884739, 42.658680, 29.643497>,  <35.878326, 42.786156, 30.266718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884739, 42.658680, 29.643497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618946, 42.957600, 29.643246>,  <35.459469, 43.136951, 29.643095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618946, 42.957600, 29.643246>,  <35.884739, 42.658680, 29.643497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618946, 42.957600, 29.643246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559433, 0.496874, -0.663439,
		-0.495476, -0.441198, -0.748230,
		-0.664484, 0.747302, -0.000632,
		35.419601, 43.181789, 29.643057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748703, 42.748455, 28.961222>,  <35.884739, 42.658680, 29.643497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748703, 42.748455, 28.961222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633640, 43.099648, 29.114273>,  <35.564602, 43.310364, 29.206104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633640, 43.099648, 29.114273>,  <35.748703, 42.748455, 28.961222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633640, 43.099648, 29.114273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489747, 0.478179, -0.729035,
		-0.823044, -0.022320, -0.567539,
		-0.287657, 0.877979, 0.382631,
		35.547344, 43.363041, 29.229063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601322, 43.060577, 28.374025>,  <35.748703, 42.748455, 28.961222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601322, 43.060577, 28.374025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633274, 43.332817, 28.665340>,  <35.652447, 43.496162, 28.840130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633274, 43.332817, 28.665340>,  <35.601322, 43.060577, 28.374025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633274, 43.332817, 28.665340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535827, 0.586767, -0.607119,
		-0.840541, 0.438733, -0.317812,
		0.079881, 0.680601, 0.728287,
		35.657238, 43.536999, 28.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438915, 43.761421, 28.153572>,  <35.601322, 43.060577, 28.374025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438915, 43.761421, 28.153572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678345, 43.828197, 28.466963>,  <35.822002, 43.868263, 28.654997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678345, 43.828197, 28.466963>,  <35.438915, 43.761421, 28.153572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678345, 43.828197, 28.466963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595480, 0.561477, -0.574585,
		-0.535827, 0.810478, 0.236676,
		0.598576, 0.166942, 0.783477,
		35.857918, 43.878281, 28.702005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675556, 44.432972, 28.102755>,  <35.438915, 43.761421, 28.153572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675556, 44.432972, 28.102755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953938, 44.288589, 28.351065>,  <36.120968, 44.201962, 28.500051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953938, 44.288589, 28.351065>,  <35.675556, 44.432972, 28.102755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953938, 44.288589, 28.351065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712737, 0.241880, -0.658407,
		0.087500, 0.900671, 0.425601,
		0.695952, -0.360952, 0.620777,
		36.162724, 44.180305, 28.537298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119766, 44.943203, 28.194506>,  <35.675556, 44.432972, 28.102755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119766, 44.943203, 28.194506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335880, 44.627789, 28.312017>,  <36.465549, 44.438541, 28.382524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335880, 44.627789, 28.312017>,  <36.119766, 44.943203, 28.194506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335880, 44.627789, 28.312017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829144, 0.439291, -0.345750,
		0.143581, 0.430390, 0.891151,
		0.540282, -0.788535, 0.293781,
		36.497967, 44.391228, 28.400152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697243, 45.192242, 28.601057>,  <36.119766, 44.943203, 28.194506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697243, 45.192242, 28.601057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783512, 44.833454, 28.446690>,  <36.835274, 44.618183, 28.354069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783512, 44.833454, 28.446690>,  <36.697243, 45.192242, 28.601057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783512, 44.833454, 28.446690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770645, 0.399065, -0.496843,
		0.599659, -0.190252, 0.777311,
		0.215673, -0.896968, -0.385919,
		36.848213, 44.564365, 28.330914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425365, 45.132153, 28.654608>,  <36.697243, 45.192242, 28.601057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425365, 45.132153, 28.654608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345539, 44.832798, 28.401598>,  <37.297642, 44.653183, 28.249792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345539, 44.832798, 28.401598>,  <37.425365, 45.132153, 28.654608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345539, 44.832798, 28.401598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710634, 0.333902, -0.619281,
		0.674664, -0.573082, 0.465194,
		-0.199570, -0.748389, -0.632523,
		37.285667, 44.608280, 28.211842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039253, 45.011887, 28.392614>,  <37.425365, 45.132153, 28.654608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039253, 45.011887, 28.392614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812042, 44.827450, 28.119926>,  <37.675716, 44.716789, 27.956314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812042, 44.827450, 28.119926>,  <38.039253, 45.011887, 28.392614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812042, 44.827450, 28.119926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563435, 0.385915, -0.730486,
		0.599906, -0.799041, 0.040584,
		-0.568026, -0.461089, -0.681720,
		37.641636, 44.689121, 27.915411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556984, 44.576229, 27.871607>,  <38.039253, 45.011887, 28.392614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556984, 44.576229, 27.871607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.209953, 44.656105, 27.689423>,  <38.001736, 44.704029, 27.580112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.209953, 44.656105, 27.689423>,  <38.556984, 44.576229, 27.871607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209953, 44.656105, 27.689423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496780, 0.390273, -0.775175,
		0.022961, -0.898784, -0.437790,
		-0.867573, 0.199686, -0.455459,
		37.949680, 44.716011, 27.552786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484707, 44.297535, 27.118948>,  <38.556984, 44.576229, 27.871607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484707, 44.297535, 27.118948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233139, 44.604156, 27.170872>,  <38.082199, 44.788132, 27.202026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233139, 44.604156, 27.170872>,  <38.484707, 44.297535, 27.118948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233139, 44.604156, 27.170872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328783, 0.413528, -0.849056,
		-0.704530, -0.491308, -0.512107,
		-0.628918, 0.766558, 0.129809,
		38.044464, 44.834126, 27.209814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759357, 43.737900, 26.778820>,  <38.484707, 44.297535, 27.118948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759357, 43.737900, 26.778820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122494, 43.719994, 26.945585>,  <39.340378, 43.709251, 27.045645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122494, 43.719994, 26.945585>,  <38.759357, 43.737900, 26.778820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122494, 43.719994, 26.945585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383310, -0.491658, 0.781886,
		0.169980, -0.869637, -0.463507,
		0.907844, -0.044762, 0.416913,
		39.394848, 43.706566, 27.070660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912968, 43.019226, 26.891567>,  <38.759357, 43.737900, 26.778820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912968, 43.019226, 26.891567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141037, 43.222141, 27.150043>,  <39.277878, 43.343891, 27.305130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141037, 43.222141, 27.150043>,  <38.912968, 43.019226, 26.891567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141037, 43.222141, 27.150043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363284, -0.549798, 0.752161,
		0.736836, -0.663613, -0.129191,
		0.570173, 0.507287, 0.646191,
		39.312088, 43.374329, 27.343901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263344, 42.520576, 27.363447>,  <38.912968, 43.019226, 26.891567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263344, 42.520576, 27.363447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.352974, 42.843357, 27.582033>,  <39.406750, 43.037025, 27.713184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.352974, 42.843357, 27.582033>,  <39.263344, 42.520576, 27.363447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352974, 42.843357, 27.582033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223805, -0.503129, 0.834729,
		0.948527, -0.309340, 0.067863,
		0.224071, 0.806950, 0.546464,
		39.420197, 43.085442, 27.745972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722260, 42.243523, 27.862135>,  <39.263344, 42.520576, 27.363447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722260, 42.243523, 27.862135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524899, 42.571712, 27.977629>,  <39.406483, 42.768627, 28.046925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524899, 42.571712, 27.977629>,  <39.722260, 42.243523, 27.862135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524899, 42.571712, 27.977629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428108, -0.518039, 0.740512,
		0.757150, 0.241762, 0.606856,
		-0.493403, 0.820479, 0.288733,
		39.376877, 42.817856, 28.064249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724873, 42.241516, 28.569687>,  <39.722260, 42.243523, 27.862135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724873, 42.241516, 28.569687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.404392, 42.460617, 28.473320>,  <39.212105, 42.592079, 28.415499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.404392, 42.460617, 28.473320>,  <39.724873, 42.241516, 28.569687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404392, 42.460617, 28.473320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489843, -0.369112, 0.789817,
		0.343699, 0.750815, 0.564046,
		-0.801202, 0.547753, -0.240918,
		39.164032, 42.624943, 28.401045>
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
