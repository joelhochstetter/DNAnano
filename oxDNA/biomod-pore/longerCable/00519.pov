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
	<23.916813, 35.337681, 34.847229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296181, 35.262680, 34.949478>,  <24.523802, 35.217678, 35.010826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296181, 35.262680, 34.949478>,  <23.916813, 35.337681, 34.847229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296181, 35.262680, 34.949478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092713, 0.607031, 0.789251,
		-0.303156, -0.772241, 0.558337,
		0.948420, -0.187501, 0.255622,
		24.580708, 35.206429, 35.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962418, 35.334206, 35.588280>,  <23.916813, 35.337681, 34.847229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962418, 35.334206, 35.588280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331409, 35.401524, 35.449306>,  <24.552805, 35.441914, 35.365921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331409, 35.401524, 35.449306>,  <23.962418, 35.334206, 35.588280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331409, 35.401524, 35.449306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124370, 0.722431, 0.680166,
		0.365465, -0.670649, 0.645496,
		0.922479, 0.168297, -0.347432,
		24.608152, 35.452011, 35.345078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522408, 35.271996, 36.122772>,  <23.962418, 35.334206, 35.588280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522408, 35.271996, 36.122772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633114, 35.526814, 35.835003>,  <24.699537, 35.679707, 35.662342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633114, 35.526814, 35.835003>,  <24.522408, 35.271996, 36.122772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633114, 35.526814, 35.835003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417717, 0.594474, 0.687105,
		0.865397, -0.490683, -0.101576,
		0.276766, 0.637049, -0.719423,
		24.716145, 35.717930, 35.619175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135427, 35.538876, 36.379215>,  <24.522408, 35.271996, 36.122772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135427, 35.538876, 36.379215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020447, 35.802567, 36.101280>,  <24.951458, 35.960781, 35.934521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020447, 35.802567, 36.101280>,  <25.135427, 35.538876, 36.379215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020447, 35.802567, 36.101280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224530, 0.751616, 0.620210,
		0.931105, 0.022271, -0.364070,
		-0.287454, 0.659225, -0.694833,
		24.934210, 36.000336, 35.892830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669092, 35.942829, 36.287945>,  <25.135427, 35.538876, 36.379215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669092, 35.942829, 36.287945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360437, 36.158474, 36.152931>,  <25.175243, 36.287861, 36.071922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360437, 36.158474, 36.152931>,  <25.669092, 35.942829, 36.287945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360437, 36.158474, 36.152931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276071, 0.761944, 0.585854,
		0.573026, 0.358884, -0.736779,
		-0.771638, 0.539114, -0.337537,
		25.128946, 36.320210, 36.051670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904362, 36.609081, 36.295288>,  <25.669092, 35.942829, 36.287945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904362, 36.609081, 36.295288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507736, 36.642765, 36.255878>,  <25.269760, 36.662975, 36.232235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507736, 36.642765, 36.255878>,  <25.904362, 36.609081, 36.295288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507736, 36.642765, 36.255878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025620, 0.872524, 0.487900,
		0.127047, 0.481260, -0.867322,
		-0.991566, 0.084207, -0.098522,
		25.210266, 36.668026, 36.226322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805176, 37.263802, 36.027859>,  <25.904362, 36.609081, 36.295288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805176, 37.263802, 36.027859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477118, 37.153816, 36.228561>,  <25.280283, 37.087826, 36.348984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477118, 37.153816, 36.228561>,  <25.805176, 37.263802, 36.027859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477118, 37.153816, 36.228561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024113, 0.892789, 0.449830,
		-0.571648, 0.356827, -0.738846,
		-0.820145, -0.274960, 0.501757,
		25.231073, 37.071327, 36.379089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221128, 37.741547, 35.985416>,  <25.805176, 37.263802, 36.027859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221128, 37.741547, 35.985416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239096, 37.545883, 36.333832>,  <25.249876, 37.428486, 36.542881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239096, 37.545883, 36.333832>,  <25.221128, 37.741547, 35.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239096, 37.545883, 36.333832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239658, 0.851731, 0.465960,
		-0.969818, 0.187821, 0.155488,
		0.044916, -0.489160, 0.871037,
		25.252571, 37.399136, 36.595142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923807, 38.194046, 36.392292>,  <25.221128, 37.741547, 35.985416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923807, 38.194046, 36.392292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124786, 37.948593, 36.635933>,  <25.245375, 37.801323, 36.782116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124786, 37.948593, 36.635933>,  <24.923807, 38.194046, 36.392292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124786, 37.948593, 36.635933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272273, 0.780938, 0.562142,
		-0.820618, -0.116604, 0.559455,
		0.502447, -0.613628, 0.609104,
		25.275520, 37.764503, 36.818665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.637220, 38.318333, 37.088585>,  <24.923807, 38.194046, 36.392292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.637220, 38.318333, 37.088585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009249, 38.174572, 37.119049>,  <25.232466, 38.088314, 37.137329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009249, 38.174572, 37.119049>,  <24.637220, 38.318333, 37.088585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009249, 38.174572, 37.119049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261469, 0.793184, 0.549994,
		-0.258078, -0.491619, 0.831689,
		0.930070, -0.359402, 0.076161,
		25.288269, 38.066750, 37.141899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.771881, 38.227943, 37.870499>,  <24.637220, 38.318333, 37.088585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.771881, 38.227943, 37.870499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109480, 38.283524, 37.663284>,  <25.312040, 38.316872, 37.538956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109480, 38.283524, 37.663284>,  <24.771881, 38.227943, 37.870499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109480, 38.283524, 37.663284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192306, 0.823241, 0.534128,
		0.500684, -0.550424, 0.668093,
		0.843999, 0.138951, -0.518034,
		25.362679, 38.325211, 37.507874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472631, 38.180485, 38.246895>,  <24.771881, 38.227943, 37.870499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472631, 38.180485, 38.246895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479179, 38.442280, 37.944534>,  <25.483109, 38.599358, 37.763119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479179, 38.442280, 37.944534>,  <25.472631, 38.180485, 38.246895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479179, 38.442280, 37.944534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000755, 0.755992, 0.654581,
		0.999866, -0.011286, 0.011882,
		0.016370, 0.654484, -0.755898,
		25.484091, 38.638626, 37.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045235, 38.550999, 38.439594>,  <25.472631, 38.180485, 38.246895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045235, 38.550999, 38.439594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767353, 38.758369, 38.240147>,  <25.600624, 38.882793, 38.120480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767353, 38.758369, 38.240147>,  <26.045235, 38.550999, 38.439594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767353, 38.758369, 38.240147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219882, 0.813078, 0.539033,
		0.684864, 0.264832, -0.678841,
		-0.694704, 0.518429, -0.498616,
		25.558943, 38.913898, 38.090561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320290, 39.244869, 38.198978>,  <26.045235, 38.550999, 38.439594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320290, 39.244869, 38.198978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925623, 39.281242, 38.252964>,  <25.688822, 39.303066, 38.285355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925623, 39.281242, 38.252964>,  <26.320290, 39.244869, 38.198978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925623, 39.281242, 38.252964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149559, 0.833619, 0.531706,
		-0.064161, 0.544803, -0.836106,
		-0.986669, 0.090933, 0.134966,
		25.629622, 39.308521, 38.293453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333300, 39.414989, 37.410618>,  <26.320290, 39.244869, 38.198978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333300, 39.414989, 37.410618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077143, 39.679882, 37.566227>,  <25.923449, 39.838818, 37.659592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077143, 39.679882, 37.566227>,  <26.333300, 39.414989, 37.410618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077143, 39.679882, 37.566227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440097, -0.731508, 0.520778,
		0.629451, 0.162295, 0.759902,
		-0.640395, 0.662235, 0.389023,
		25.885025, 39.878551, 37.682934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508230, 38.902199, 36.943413>,  <26.333300, 39.414989, 37.410618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508230, 38.902199, 36.943413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269745, 38.746460, 37.224251>,  <26.126654, 38.653015, 37.392754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269745, 38.746460, 37.224251>,  <26.508230, 38.902199, 36.943413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269745, 38.746460, 37.224251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101904, -0.830755, -0.547231,
		0.796332, -0.397813, 0.455631,
		-0.596214, -0.389346, 0.702096,
		26.090881, 38.629658, 37.434879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604319, 38.198891, 37.007790>,  <26.508230, 38.902199, 36.943413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604319, 38.198891, 37.007790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233616, 38.223553, 37.156017>,  <26.011194, 38.238350, 37.244953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233616, 38.223553, 37.156017>,  <26.604319, 38.198891, 37.007790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233616, 38.223553, 37.156017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251817, -0.833956, -0.491025,
		0.278766, -0.548376, 0.788399,
		-0.926757, 0.061651, 0.370569,
		25.955589, 38.242046, 37.267189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450207, 37.537861, 37.424519>,  <26.604319, 38.198891, 37.007790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450207, 37.537861, 37.424519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092587, 37.692905, 37.334694>,  <25.878014, 37.785934, 37.280800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092587, 37.692905, 37.334694>,  <26.450207, 37.537861, 37.424519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092587, 37.692905, 37.334694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303128, -0.892572, -0.333810,
		-0.329823, -0.230374, 0.915502,
		-0.894052, 0.387613, -0.224558,
		25.824371, 37.809189, 37.267326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952677, 37.020821, 37.707306>,  <26.450207, 37.537861, 37.424519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952677, 37.020821, 37.707306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761738, 37.238823, 37.431595>,  <25.647175, 37.369625, 37.266167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761738, 37.238823, 37.431595>,  <25.952677, 37.020821, 37.707306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761738, 37.238823, 37.431595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492166, -0.815658, -0.304096,
		-0.727950, 0.194079, 0.657588,
		-0.477348, 0.545009, -0.689278,
		25.618534, 37.402325, 37.224812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316660, 36.824936, 37.753162>,  <25.952677, 37.020821, 37.707306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316660, 36.824936, 37.753162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321815, 36.986565, 37.387310>,  <25.324909, 37.083542, 37.167797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321815, 36.986565, 37.387310>,  <25.316660, 36.824936, 37.753162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321815, 36.986565, 37.387310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655263, -0.687517, -0.312969,
		-0.755290, 0.603361, 0.255914,
		0.012888, 0.404074, -0.914635,
		25.325682, 37.107788, 37.112919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696926, 36.482887, 37.435085>,  <25.316660, 36.824936, 37.753162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696926, 36.482887, 37.435085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729155, 36.793316, 37.184895>,  <24.748491, 36.979572, 37.034779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729155, 36.793316, 37.184895>,  <24.696926, 36.482887, 37.435085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729155, 36.793316, 37.184895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178868, -0.606073, -0.775036,
		-0.980568, 0.174324, 0.089982,
		0.080571, 0.776071, -0.625478,
		24.753326, 37.026138, 36.997250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.124025, 36.518723, 36.924320>,  <24.696926, 36.482887, 37.435085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.124025, 36.518723, 36.924320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437683, 36.711876, 36.768402>,  <24.625877, 36.827770, 36.674850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437683, 36.711876, 36.768402>,  <24.124025, 36.518723, 36.924320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437683, 36.711876, 36.768402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064173, -0.561650, -0.824883,
		-0.617251, 0.671841, -0.409427,
		0.784145, 0.482886, -0.389793,
		24.672926, 36.856743, 36.651463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.930405, 36.800842, 36.343842>,  <24.124025, 36.518723, 36.924320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.930405, 36.800842, 36.343842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326958, 36.767010, 36.303825>,  <24.564890, 36.746708, 36.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326958, 36.767010, 36.303825>,  <23.930405, 36.800842, 36.343842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326958, 36.767010, 36.303825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122395, -0.325701, -0.937517,
		0.046715, 0.941682, -0.333246,
		0.991382, -0.084583, -0.100042,
		24.624372, 36.741634, 36.273811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.536573, 36.385983, 35.845932>,  <23.930405, 36.800842, 36.343842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.536573, 36.385983, 35.845932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872766, 36.293056, 36.041737>,  <24.074482, 36.237301, 36.159222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872766, 36.293056, 36.041737>,  <23.536573, 36.385983, 35.845932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.872766, 36.293056, 36.041737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201074, 0.972641, 0.116356,
		-0.503152, 0.000634, 0.864198,
		0.840481, -0.232312, 0.489514,
		24.124910, 36.223362, 36.188591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.037857, 36.928082, 35.524170>,  <23.536573, 36.385983, 35.845932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.037857, 36.928082, 35.524170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350647, 36.746319, 35.694832>,  <24.538321, 36.637260, 35.797230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350647, 36.746319, 35.694832>,  <24.037857, 36.928082, 35.524170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350647, 36.746319, 35.694832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086176, -0.599100, -0.796023,
		0.617326, 0.659236, -0.429321,
		0.781973, -0.454409, 0.426650,
		24.585239, 36.609997, 35.822826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679968, 36.997105, 35.077713>,  <24.037857, 36.928082, 35.524170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.679968, 36.997105, 35.077713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715864, 36.670090, 35.305248>,  <24.737402, 36.473881, 35.441769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715864, 36.670090, 35.305248>,  <24.679968, 36.997105, 35.077713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715864, 36.670090, 35.305248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097170, -0.561229, -0.821936,
		0.991214, 0.129035, 0.029076,
		0.089740, -0.817540, 0.568837,
		24.742786, 36.424828, 35.475899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051968, 36.542038, 34.618771>,  <24.679968, 36.997105, 35.077713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051968, 36.542038, 34.618771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937876, 36.300972, 34.916882>,  <24.869421, 36.156330, 35.095749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937876, 36.300972, 34.916882>,  <25.051968, 36.542038, 34.618771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937876, 36.300972, 34.916882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146610, -0.740991, -0.655315,
		0.947180, -0.296180, 0.122995,
		-0.285230, -0.602669, 0.745275,
		24.852306, 36.120171, 35.140465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233068, 35.818996, 34.489655>,  <25.051968, 36.542038, 34.618771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233068, 35.818996, 34.489655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914431, 35.816078, 34.731445>,  <24.723248, 35.814327, 34.876518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914431, 35.816078, 34.731445>,  <25.233068, 35.818996, 34.489655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914431, 35.816078, 34.731445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446809, -0.666425, -0.596858,
		0.407188, -0.745536, 0.527611,
		-0.796593, -0.007292, 0.604473,
		24.675453, 35.813892, 34.912788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878443, 35.889771, 34.061756>,  <25.233068, 35.818996, 34.489655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878443, 35.889771, 34.061756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976822, 35.502060, 34.060162>,  <26.035849, 35.269432, 34.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976822, 35.502060, 34.060162>,  <25.878443, 35.889771, 34.061756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976822, 35.502060, 34.060162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944389, -0.238703, -0.226166,
		0.218265, 0.059391, -0.974081,
		0.245948, -0.969274, -0.003988,
		26.050606, 35.211277, 34.058964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951466, 36.110325, 33.342480>,  <25.878443, 35.889771, 34.061756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951466, 36.110325, 33.342480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658352, 36.378963, 33.386276>,  <25.482485, 36.540146, 33.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658352, 36.378963, 33.386276>,  <25.951466, 36.110325, 33.342480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658352, 36.378963, 33.386276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565385, 0.690456, -0.451231,
		-0.378642, -0.268752, -0.885665,
		-0.732782, 0.671597, 0.109487,
		25.438517, 36.580444, 33.419121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738253, 36.468933, 32.717354>,  <25.951466, 36.110325, 33.342480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738253, 36.468933, 32.717354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705042, 36.749359, 33.000656>,  <25.685116, 36.917614, 33.170635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705042, 36.749359, 33.000656>,  <25.738253, 36.468933, 32.717354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705042, 36.749359, 33.000656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788063, 0.481201, -0.383930,
		-0.609969, 0.526270, -0.592434,
		-0.083029, 0.701060, 0.708252,
		25.680134, 36.959679, 33.213131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612709, 37.173450, 32.404816>,  <25.738253, 36.468933, 32.717354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612709, 37.173450, 32.404816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782312, 37.182087, 32.766975>,  <25.884073, 37.187271, 32.984272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782312, 37.182087, 32.766975>,  <25.612709, 37.173450, 32.404816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782312, 37.182087, 32.766975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737183, 0.572507, -0.358882,
		-0.526098, 0.819616, 0.226829,
		0.424007, 0.021593, 0.905402,
		25.909513, 37.188564, 33.038597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616262, 37.824451, 32.608086>,  <25.612709, 37.173450, 32.404816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616262, 37.824451, 32.608086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912668, 37.628647, 32.791943>,  <26.090511, 37.511166, 32.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912668, 37.628647, 32.791943>,  <25.616262, 37.824451, 32.608086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912668, 37.628647, 32.791943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670344, 0.579201, -0.463860,
		-0.039161, 0.651847, 0.757339,
		0.741017, -0.489512, 0.459643,
		26.134974, 37.481792, 32.929836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041136, 38.344666, 32.825420>,  <25.616262, 37.824451, 32.608086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041136, 38.344666, 32.825420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275208, 38.020542, 32.813011>,  <26.415651, 37.826069, 32.805565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275208, 38.020542, 32.813011>,  <26.041136, 38.344666, 32.825420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275208, 38.020542, 32.813011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659855, 0.498064, -0.562604,
		0.471335, 0.308754, 0.826144,
		0.585179, -0.810311, -0.031022,
		26.450762, 37.777451, 32.803703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358549, 38.117077, 33.570007>,  <26.041136, 38.344666, 32.825420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358549, 38.117077, 33.570007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650888, 37.874981, 33.443802>,  <26.826292, 37.729721, 33.368080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650888, 37.874981, 33.443802>,  <26.358549, 38.117077, 33.570007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650888, 37.874981, 33.443802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410612, 0.759129, -0.505094,
		0.545216, 0.239594, 0.803327,
		0.730847, -0.605242, -0.315509,
		26.870142, 37.693409, 33.349148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003931, 38.458042, 33.521446>,  <26.358549, 38.117077, 33.570007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003931, 38.458042, 33.521446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097986, 38.141449, 33.295784>,  <27.154419, 37.951492, 33.160385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097986, 38.141449, 33.295784>,  <27.003931, 38.458042, 33.521446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097986, 38.141449, 33.295784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521824, 0.592484, -0.613728,
		0.820005, -0.150078, 0.552329,
		0.235139, -0.791479, -0.564155,
		27.168528, 37.904007, 33.126537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783813, 38.328938, 33.534225>,  <27.003931, 38.458042, 33.521446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783813, 38.328938, 33.534225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573450, 38.220787, 33.211658>,  <27.447231, 38.155895, 33.018116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573450, 38.220787, 33.211658>,  <27.783813, 38.328938, 33.534225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573450, 38.220787, 33.211658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517664, 0.650546, -0.555711,
		0.674867, -0.709708, -0.202161,
		-0.525908, -0.270379, -0.806422,
		27.415676, 38.139675, 32.969730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239319, 38.280972, 33.135586>,  <27.783813, 38.328938, 33.534225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239319, 38.280972, 33.135586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904875, 38.314934, 32.918804>,  <27.704208, 38.335312, 32.788734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904875, 38.314934, 32.918804>,  <28.239319, 38.280972, 33.135586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904875, 38.314934, 32.918804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434966, 0.704593, -0.560673,
		0.334251, -0.704515, -0.626047,
		-0.836110, 0.084904, -0.541951,
		27.654041, 38.340405, 32.756218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458534, 38.212688, 32.411591>,  <28.239319, 38.280972, 33.135586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458534, 38.212688, 32.411591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124640, 38.426170, 32.465813>,  <27.924303, 38.554260, 32.498348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124640, 38.426170, 32.465813>,  <28.458534, 38.212688, 32.411591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124640, 38.426170, 32.465813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338398, 0.691401, -0.638319,
		-0.434400, -0.486955, -0.757741,
		-0.834736, 0.533703, 0.135560,
		27.874218, 38.586281, 32.506481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560558, 38.719009, 31.830343>,  <28.458534, 38.212688, 32.411591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560558, 38.719009, 31.830343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234034, 38.839725, 32.027344>,  <28.038118, 38.912155, 32.145542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234034, 38.839725, 32.027344>,  <28.560558, 38.719009, 31.830343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234034, 38.839725, 32.027344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161453, 0.699443, -0.696213,
		-0.554588, -0.647842, -0.522238,
		-0.816312, 0.301794, 0.492499,
		27.989140, 38.930264, 32.175095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044043, 38.912205, 31.336155>,  <28.560558, 38.719009, 31.830343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044043, 38.912205, 31.336155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912720, 39.075706, 31.676775>,  <27.833925, 39.173805, 31.881147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912720, 39.075706, 31.676775>,  <28.044043, 38.912205, 31.336155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912720, 39.075706, 31.676775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039973, 0.894700, -0.444875,
		-0.943725, -0.180095, -0.277398,
		-0.328307, 0.408751, 0.851550,
		27.814228, 39.198330, 31.932240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376402, 39.366631, 31.249964>,  <28.044043, 38.912205, 31.336155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376402, 39.366631, 31.249964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630806, 39.496986, 31.529760>,  <27.783447, 39.575199, 31.697638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630806, 39.496986, 31.529760>,  <27.376402, 39.366631, 31.249964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630806, 39.496986, 31.529760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188915, 0.944622, -0.268331,
		-0.748201, 0.038516, 0.662353,
		0.636008, 0.325894, 0.699491,
		27.821608, 39.594753, 31.739607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950438, 39.093994, 31.886631>,  <27.376402, 39.366631, 31.249964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950438, 39.093994, 31.886631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215235, 38.899956, 32.115173>,  <27.374113, 38.783531, 32.252300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215235, 38.899956, 32.115173>,  <26.950438, 39.093994, 31.886631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215235, 38.899956, 32.115173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681324, -0.707159, 0.189009,
		0.312352, -0.514401, -0.798641,
		0.661993, -0.485096, 0.571356,
		27.413832, 38.754425, 32.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736471, 38.381634, 31.877239>,  <26.950438, 39.093994, 31.886631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736471, 38.381634, 31.877239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029835, 38.354973, 32.147842>,  <27.205853, 38.338974, 32.310204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029835, 38.354973, 32.147842>,  <26.736471, 38.381634, 31.877239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029835, 38.354973, 32.147842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380672, -0.864778, 0.327487,
		0.563203, -0.497711, -0.659611,
		0.733411, -0.066654, 0.676510,
		27.249859, 38.334976, 32.350796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924936, 37.704521, 31.820396>,  <26.736471, 38.381634, 31.877239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924936, 37.704521, 31.820396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053114, 37.832211, 32.177139>,  <27.130020, 37.908825, 32.391186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053114, 37.832211, 32.177139>,  <26.924936, 37.704521, 31.820396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053114, 37.832211, 32.177139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392134, -0.812343, 0.431660,
		0.862291, -0.488050, -0.135131,
		0.320444, 0.319227, 0.891857,
		27.149246, 37.927979, 32.444698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994606, 37.086578, 32.121017>,  <26.924936, 37.704521, 31.820396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994606, 37.086578, 32.121017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031668, 37.358791, 32.411755>,  <27.053904, 37.522118, 32.586197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031668, 37.358791, 32.411755>,  <26.994606, 37.086578, 32.121017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031668, 37.358791, 32.411755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426823, -0.632363, 0.646482,
		0.899577, -0.370130, 0.231876,
		0.092652, 0.680530, 0.726839,
		27.059464, 37.562950, 32.629807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262001, 36.732243, 32.818024>,  <26.994606, 37.086578, 32.121017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262001, 36.732243, 32.818024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034113, 37.056808, 32.870209>,  <26.897381, 37.251549, 32.901520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034113, 37.056808, 32.870209>,  <27.262001, 36.732243, 32.818024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034113, 37.056808, 32.870209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615140, -0.526296, 0.587040,
		0.544999, 0.254192, 0.798976,
		-0.569719, 0.811418, 0.130467,
		26.863197, 37.300232, 32.909348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019527, 36.797962, 33.587135>,  <27.262001, 36.732243, 32.818024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019527, 36.797962, 33.587135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752991, 37.005913, 33.373325>,  <26.593069, 37.130684, 33.245041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752991, 37.005913, 33.373325>,  <27.019527, 36.797962, 33.587135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752991, 37.005913, 33.373325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731757, -0.318204, 0.602725,
		0.143257, 0.792762, 0.592458,
		-0.666340, 0.519880, -0.534524,
		26.553089, 37.161877, 33.212967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653618, 37.126873, 34.088459>,  <27.019527, 36.797962, 33.587135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653618, 37.126873, 34.088459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415220, 37.140572, 33.767555>,  <26.272181, 37.148792, 33.575012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415220, 37.140572, 33.767555>,  <26.653618, 37.126873, 34.088459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415220, 37.140572, 33.767555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785285, -0.233493, 0.573418,
		-0.167683, 0.971755, 0.166056,
		-0.595995, 0.034248, -0.802257,
		26.236422, 37.150845, 33.526878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819719, 37.699211, 34.504044>,  <26.653618, 37.126873, 34.088459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819719, 37.699211, 34.504044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013590, 37.379498, 34.361927>,  <27.129911, 37.187668, 34.276657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013590, 37.379498, 34.361927>,  <26.819719, 37.699211, 34.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013590, 37.379498, 34.361927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235328, -0.272059, 0.933062,
		-0.842444, -0.535841, 0.056234,
		0.484674, -0.799286, -0.355293,
		27.158993, 37.139713, 34.255341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648153, 37.043465, 34.879265>,  <26.819719, 37.699211, 34.504044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648153, 37.043465, 34.879265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016975, 37.003624, 34.729656>,  <27.238270, 36.979721, 34.639893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016975, 37.003624, 34.729656>,  <26.648153, 37.043465, 34.879265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016975, 37.003624, 34.729656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325545, -0.323119, 0.888603,
		-0.209355, -0.941103, -0.265510,
		0.922058, -0.099598, -0.374018,
		27.293592, 36.973743, 34.617451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869089, 36.437389, 35.316032>,  <26.648153, 37.043465, 34.879265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869089, 36.437389, 35.316032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165472, 36.631813, 35.130676>,  <27.343302, 36.748466, 35.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165472, 36.631813, 35.130676>,  <26.869089, 36.437389, 35.316032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165472, 36.631813, 35.130676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575119, -0.103021, 0.811557,
		0.346724, -0.867834, -0.355874,
		0.740960, 0.486057, -0.463388,
		27.387760, 36.777630, 34.991661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918724, 35.687031, 35.495895>,  <26.869089, 36.437389, 35.316032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918724, 35.687031, 35.495895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198021, 35.972668, 35.516033>,  <27.365599, 36.144051, 35.528114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198021, 35.972668, 35.516033>,  <26.918724, 35.687031, 35.495895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198021, 35.972668, 35.516033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712189, -0.685829, -0.149750,
		-0.072407, 0.140417, -0.987441,
		0.698243, 0.714088, 0.050344,
		27.407494, 36.186893, 35.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280312, 35.647110, 34.820847>,  <26.918724, 35.687031, 35.495895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280312, 35.647110, 34.820847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516308, 35.798641, 35.106056>,  <27.657906, 35.889561, 35.277184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516308, 35.798641, 35.106056>,  <27.280312, 35.647110, 34.820847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516308, 35.798641, 35.106056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712553, -0.659599, -0.239159,
		0.379710, 0.649168, -0.659090,
		0.589990, 0.378826, 0.713024,
		27.693304, 35.912289, 35.319962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948753, 35.788387, 34.620453>,  <27.280312, 35.647110, 34.820847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948753, 35.788387, 34.620453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994949, 35.704002, 35.008713>,  <28.022667, 35.653370, 35.241669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994949, 35.704002, 35.008713>,  <27.948753, 35.788387, 34.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994949, 35.704002, 35.008713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769202, -0.599287, -0.221774,
		0.628482, 0.772237, 0.093063,
		0.115490, -0.210965, 0.970647,
		28.029596, 35.640713, 35.299908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603504, 35.567883, 34.618275>,  <27.948753, 35.788387, 34.620453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603504, 35.567883, 34.618275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464184, 35.365147, 34.933693>,  <28.380590, 35.243507, 35.122944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464184, 35.365147, 34.933693>,  <28.603504, 35.567883, 34.618275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464184, 35.365147, 34.933693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349836, -0.850724, -0.392280,
		0.869655, 0.139229, 0.473619,
		-0.348302, -0.506838, 0.788544,
		28.359694, 35.213097, 35.170258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028864, 35.288879, 35.159351>,  <28.603504, 35.567883, 34.618275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028864, 35.288879, 35.159351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714220, 35.042114, 35.149029>,  <28.525434, 34.894054, 35.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714220, 35.042114, 35.149029>,  <29.028864, 35.288879, 35.159351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714220, 35.042114, 35.149029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592505, -0.742408, -0.312677,
		0.173736, -0.261244, 0.949509,
		-0.786608, -0.616912, -0.025806,
		28.478237, 34.857040, 35.141289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234457, 34.753910, 35.357677>,  <29.028864, 35.288879, 35.159351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234457, 34.753910, 35.357677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909044, 34.624771, 35.164211>,  <28.713797, 34.547287, 35.048130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909044, 34.624771, 35.164211>,  <29.234457, 34.753910, 35.357677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909044, 34.624771, 35.164211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535031, -0.741413, -0.405029,
		-0.227833, -0.588281, 0.775898,
		-0.813532, -0.322850, -0.483667,
		28.664984, 34.527916, 35.019112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096125, 34.061695, 35.347027>,  <29.234457, 34.753910, 35.357677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096125, 34.061695, 35.347027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932632, 34.150532, 34.992939>,  <28.834538, 34.203835, 34.780487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932632, 34.150532, 34.992939>,  <29.096125, 34.061695, 35.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932632, 34.150532, 34.992939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601767, -0.663645, -0.444355,
		-0.686161, -0.714317, 0.137602,
		-0.408729, 0.222095, -0.885220,
		28.810015, 34.217159, 34.727371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018543, 33.441803, 35.035259>,  <29.096125, 34.061695, 35.347027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018543, 33.441803, 35.035259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024036, 33.714939, 34.743084>,  <29.027332, 33.878822, 34.567780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024036, 33.714939, 34.743084>,  <29.018543, 33.441803, 35.035259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024036, 33.714939, 34.743084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612244, -0.583299, -0.533779,
		-0.790550, -0.439876, -0.426075,
		0.013733, 0.682841, -0.730438,
		29.028156, 33.919792, 34.523952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847713, 33.163185, 34.437313>,  <29.018543, 33.441803, 35.035259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847713, 33.163185, 34.437313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086523, 33.466732, 34.333248>,  <29.229809, 33.648861, 34.270809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086523, 33.466732, 34.333248>,  <28.847713, 33.163185, 34.437313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086523, 33.466732, 34.333248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578856, -0.632037, -0.515224,
		-0.555416, 0.157007, -0.816616,
		0.597026, 0.758866, -0.260159,
		29.265631, 33.694393, 34.255199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817383, 33.118916, 33.758316>,  <28.847713, 33.163185, 34.437313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817383, 33.118916, 33.758316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146481, 33.257347, 33.938679>,  <29.343939, 33.340408, 34.046898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146481, 33.257347, 33.938679>,  <28.817383, 33.118916, 33.758316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146481, 33.257347, 33.938679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567246, -0.550687, -0.612353,
		0.036385, 0.759586, -0.649388,
		0.822744, 0.346082, 0.450909,
		29.393303, 33.361172, 34.073952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218060, 33.293694, 33.246151>,  <28.817383, 33.118916, 33.758316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218060, 33.293694, 33.246151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409174, 33.197208, 33.584038>,  <29.523842, 33.139317, 33.786770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409174, 33.197208, 33.584038>,  <29.218060, 33.293694, 33.246151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409174, 33.197208, 33.584038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579045, -0.636638, -0.509311,
		0.660628, 0.732468, -0.164504,
		0.477784, -0.241210, 0.844713,
		29.552509, 33.124844, 33.837452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983040, 33.423771, 33.224548>,  <29.218060, 33.293694, 33.246151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983040, 33.423771, 33.224548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866634, 33.127552, 33.466839>,  <29.796791, 32.949821, 33.612213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866634, 33.127552, 33.466839>,  <29.983040, 33.423771, 33.224548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866634, 33.127552, 33.466839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757654, -0.564985, -0.326729,
		0.584184, 0.363850, 0.725494,
		-0.291013, -0.740544, 0.605728,
		29.779331, 32.905388, 33.648556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594381, 33.177792, 33.627605>,  <29.983040, 33.423771, 33.224548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594381, 33.177792, 33.627605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350039, 32.861286, 33.638645>,  <30.203434, 32.671383, 33.645271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350039, 32.861286, 33.638645>,  <30.594381, 33.177792, 33.627605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350039, 32.861286, 33.638645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733086, -0.578427, -0.357781,
		0.299064, -0.198317, 0.933398,
		-0.610856, -0.791260, 0.027603,
		30.166782, 32.623909, 33.646927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884420, 32.645302, 33.939884>,  <30.594381, 33.177792, 33.627605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884420, 32.645302, 33.939884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632725, 32.469006, 33.683819>,  <30.481707, 32.363228, 33.530182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632725, 32.469006, 33.683819>,  <30.884420, 32.645302, 33.939884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632725, 32.469006, 33.683819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745687, -0.574553, -0.337400,
		-0.219103, -0.689666, 0.690184,
		-0.629241, -0.440736, -0.640161,
		30.443953, 32.336784, 33.491772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950691, 31.844685, 34.025677>,  <30.884420, 32.645302, 33.939884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950691, 31.844685, 34.025677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788782, 31.946701, 33.674423>,  <30.691637, 32.007912, 33.463673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788782, 31.946701, 33.674423>,  <30.950691, 31.844685, 34.025677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788782, 31.946701, 33.674423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655559, -0.588558, -0.473120,
		-0.637496, -0.767172, 0.071036,
		-0.404773, 0.255044, -0.878129,
		30.667351, 32.023212, 33.410984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976583, 31.246052, 33.734730>,  <30.950691, 31.844685, 34.025677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976583, 31.246052, 33.734730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968332, 31.511030, 33.435200>,  <30.963381, 31.670017, 33.255482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968332, 31.511030, 33.435200>,  <30.976583, 31.246052, 33.734730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968332, 31.511030, 33.435200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581468, -0.601333, -0.547989,
		-0.813307, -0.446722, -0.372788,
		-0.020629, 0.662448, -0.748824,
		30.962143, 31.709764, 33.210552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819643, 30.875914, 33.120552>,  <30.976583, 31.246052, 33.734730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819643, 30.875914, 33.120552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013525, 31.209978, 33.016579>,  <31.129854, 31.410418, 32.954193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013525, 31.209978, 33.016579>,  <30.819643, 30.875914, 33.120552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013525, 31.209978, 33.016579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472112, -0.499973, -0.726042,
		-0.736323, 0.229198, -0.636629,
		0.484705, 0.835162, -0.259934,
		31.158936, 31.460527, 32.938599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588385, 31.054356, 32.401886>,  <30.819643, 30.875914, 33.120552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588385, 31.054356, 32.401886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941299, 31.233309, 32.460426>,  <31.153048, 31.340681, 32.495552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941299, 31.233309, 32.460426>,  <30.588385, 31.054356, 32.401886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941299, 31.233309, 32.460426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398461, -0.544310, -0.738211,
		-0.250603, 0.709629, -0.658502,
		0.882285, 0.447385, 0.146353,
		31.205984, 31.367525, 32.504333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778530, 31.209957, 31.775656>,  <30.588385, 31.054356, 32.401886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778530, 31.209957, 31.775656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114269, 31.220360, 31.992846>,  <31.315712, 31.226601, 32.123158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114269, 31.220360, 31.992846>,  <30.778530, 31.209957, 31.775656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114269, 31.220360, 31.992846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486232, -0.482526, -0.728523,
		0.243052, 0.875495, -0.417653,
		0.839347, 0.026007, 0.542973,
		31.366074, 31.228163, 32.155739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341299, 31.490900, 31.323238>,  <30.778530, 31.209957, 31.775656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341299, 31.490900, 31.323238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498209, 31.271214, 31.618395>,  <31.592356, 31.139402, 31.795488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498209, 31.271214, 31.618395>,  <31.341299, 31.490900, 31.323238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498209, 31.271214, 31.618395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638492, -0.414879, -0.648231,
		0.662154, 0.725422, 0.187923,
		0.392275, -0.549216, 0.737890,
		31.615892, 31.106449, 31.839762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989109, 31.421686, 31.184362>,  <31.341299, 31.490900, 31.323238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989109, 31.421686, 31.184362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969238, 31.122307, 31.448895>,  <31.957315, 30.942678, 31.607613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969238, 31.122307, 31.448895>,  <31.989109, 31.421686, 31.184362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969238, 31.122307, 31.448895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695603, -0.501078, -0.514837,
		0.716707, 0.434447, 0.545515,
		-0.049676, -0.748449, 0.661329,
		31.954336, 30.897772, 31.647293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641224, 31.208601, 31.215191>,  <31.989109, 31.421686, 31.184362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641224, 31.208601, 31.215191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460712, 30.888586, 31.373327>,  <32.352406, 30.696577, 31.468208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460712, 30.888586, 31.373327>,  <32.641224, 31.208601, 31.215191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460712, 30.888586, 31.373327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722717, -0.587529, -0.363991,
		0.523480, 0.121459, 0.843337,
		-0.451275, -0.800036, 0.395340,
		32.325329, 30.648575, 31.491930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233414, 30.831163, 31.601736>,  <32.641224, 31.208601, 31.215191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233414, 30.831163, 31.601736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925827, 30.585823, 31.529638>,  <32.741276, 30.438618, 31.486380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925827, 30.585823, 31.529638>,  <33.233414, 30.831163, 31.601736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925827, 30.585823, 31.529638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626254, -0.666087, -0.405134,
		0.128433, -0.424412, 0.896314,
		-0.768967, -0.613353, -0.180242,
		32.695137, 30.401817, 31.475565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491760, 30.229282, 31.777855>,  <33.233414, 30.831163, 31.601736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491760, 30.229282, 31.777855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181316, 30.137424, 31.542938>,  <32.995049, 30.082310, 31.401989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181316, 30.137424, 31.542938>,  <33.491760, 30.229282, 31.777855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181316, 30.137424, 31.542938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561798, -0.674810, -0.478555,
		-0.286412, -0.701352, 0.652743,
		-0.776113, -0.229646, -0.587292,
		32.948483, 30.068531, 31.366751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525639, 29.555437, 31.615171>,  <33.491760, 30.229282, 31.777855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525639, 29.555437, 31.615171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300579, 29.710215, 31.322952>,  <33.165543, 29.803082, 31.147621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300579, 29.710215, 31.322952>,  <33.525639, 29.555437, 31.615171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300579, 29.710215, 31.322952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601745, -0.414246, -0.682864,
		-0.566856, -0.823817, 0.000235,
		-0.562652, 0.386944, -0.730546,
		33.131783, 29.826298, 31.103788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403049, 28.967295, 31.152624>,  <33.525639, 29.555437, 31.615171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403049, 28.967295, 31.152624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367405, 29.301083, 30.935104>,  <33.346020, 29.501356, 30.804592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367405, 29.301083, 30.935104>,  <33.403049, 28.967295, 31.152624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367405, 29.301083, 30.935104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441031, -0.456475, -0.772736,
		-0.893057, -0.308689, -0.327353,
		-0.089107, 0.834471, -0.543800,
		33.340672, 29.551424, 30.771965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321964, 28.725048, 30.519232>,  <33.403049, 28.967295, 31.152624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321964, 28.725048, 30.519232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460064, 29.099148, 30.487961>,  <33.542923, 29.323606, 30.469198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460064, 29.099148, 30.487961>,  <33.321964, 28.725048, 30.519232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460064, 29.099148, 30.487961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765206, -0.328748, -0.553520,
		-0.543379, 0.131284, -0.829159,
		0.345253, 0.935248, -0.078176,
		33.563641, 29.379723, 30.464508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441845, 28.640804, 29.823837>,  <33.321964, 28.725048, 30.519232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441845, 28.640804, 29.823837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600445, 28.996719, 29.914228>,  <33.695606, 29.210268, 29.968462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600445, 28.996719, 29.914228>,  <33.441845, 28.640804, 29.823837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600445, 28.996719, 29.914228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714139, -0.144269, -0.684976,
		-0.576882, 0.432971, -0.692635,
		0.396501, 0.889788, 0.225975,
		33.719395, 29.263657, 29.982021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536007, 28.978441, 29.253847>,  <33.441845, 28.640804, 29.823837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536007, 28.978441, 29.253847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795200, 29.188375, 29.474632>,  <33.950718, 29.314337, 29.607103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795200, 29.188375, 29.474632>,  <33.536007, 28.978441, 29.253847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795200, 29.188375, 29.474632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564512, 0.155564, -0.810633,
		-0.511317, 0.836866, -0.195474,
		0.647983, 0.524838, 0.551963,
		33.989594, 29.345827, 29.640221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700130, 29.599958, 28.914351>,  <33.536007, 28.978441, 29.253847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700130, 29.599958, 28.914351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010506, 29.551586, 29.161993>,  <34.196732, 29.522562, 29.310579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010506, 29.551586, 29.161993>,  <33.700130, 29.599958, 28.914351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010506, 29.551586, 29.161993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623701, 0.293997, -0.724267,
		-0.094429, 0.948125, 0.303549,
		0.775938, -0.120932, 0.619108,
		34.243286, 29.515306, 29.347725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159298, 30.177383, 28.697428>,  <33.700130, 29.599958, 28.914351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159298, 30.177383, 28.697428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352112, 29.893539, 28.902987>,  <34.467800, 29.723232, 29.026321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352112, 29.893539, 28.902987>,  <34.159298, 30.177383, 28.697428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352112, 29.893539, 28.902987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765729, 0.056162, -0.640706,
		0.425790, 0.702352, 0.570442,
		0.482039, -0.709611, 0.513898,
		34.496723, 29.680656, 29.057156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813732, 30.452579, 28.678045>,  <34.159298, 30.177383, 28.697428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813732, 30.452579, 28.678045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849514, 30.057938, 28.732616>,  <34.870983, 29.821154, 28.765358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849514, 30.057938, 28.732616>,  <34.813732, 30.452579, 28.678045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849514, 30.057938, 28.732616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610918, -0.053833, -0.789861,
		0.786624, 0.153999, 0.597919,
		0.089450, -0.986603, 0.136427,
		34.876350, 29.761957, 28.773544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562813, 30.332762, 28.565283>,  <34.813732, 30.452579, 28.678045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562813, 30.332762, 28.565283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388100, 29.980398, 28.492371>,  <35.283272, 29.768980, 28.448624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388100, 29.980398, 28.492371>,  <35.562813, 30.332762, 28.565283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388100, 29.980398, 28.492371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559240, -0.107187, -0.822047,
		0.704610, -0.460990, 0.539456,
		-0.436778, -0.880908, -0.182279,
		35.257065, 29.716125, 28.437687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105389, 29.975889, 28.567993>,  <35.562813, 30.332762, 28.565283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105389, 29.975889, 28.567993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814087, 29.788511, 28.367912>,  <35.639305, 29.676085, 28.247864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814087, 29.788511, 28.367912>,  <36.105389, 29.975889, 28.567993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814087, 29.788511, 28.367912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510368, 0.116373, -0.852046,
		0.457346, -0.875795, 0.154330,
		-0.728258, -0.468445, -0.500200,
		35.595608, 29.647978, 28.217852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413181, 29.505581, 28.056629>,  <36.105389, 29.975889, 28.567993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413181, 29.505581, 28.056629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034134, 29.531521, 27.931532>,  <35.806705, 29.547085, 27.856474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034134, 29.531521, 27.931532>,  <36.413181, 29.505581, 28.056629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034134, 29.531521, 27.931532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309137, -0.059946, -0.949126,
		-0.080315, -0.996092, 0.036753,
		-0.947620, 0.064868, -0.312744,
		35.749847, 29.550976, 27.837709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293774, 28.970490, 27.562038>,  <36.413181, 29.505581, 28.056629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293774, 28.970490, 27.562038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022167, 29.251678, 27.477402>,  <35.859203, 29.420391, 27.426620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022167, 29.251678, 27.477402>,  <36.293774, 28.970490, 27.562038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022167, 29.251678, 27.477402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204297, -0.095898, -0.974201,
		-0.705127, -0.704722, -0.078499,
		-0.679013, 0.702972, -0.211592,
		35.818462, 29.462570, 27.413923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951416, 28.666330, 26.930962>,  <36.293774, 28.970490, 27.562038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951416, 28.666330, 26.930962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860069, 29.054665, 26.960148>,  <35.805260, 29.287666, 26.977659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860069, 29.054665, 26.960148>,  <35.951416, 28.666330, 26.930962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860069, 29.054665, 26.960148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264053, 0.133899, -0.955169,
		-0.937082, -0.198865, -0.286931,
		-0.228370, 0.970837, 0.072963,
		35.791557, 29.345915, 26.982037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562572, 28.806168, 26.303717>,  <35.951416, 28.666330, 26.930962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562572, 28.806168, 26.303717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727203, 29.144499, 26.439468>,  <35.825981, 29.347498, 26.520920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727203, 29.144499, 26.439468>,  <35.562572, 28.806168, 26.303717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727203, 29.144499, 26.439468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324087, 0.212209, -0.921919,
		-0.851804, 0.489431, -0.186781,
		0.411579, 0.845828, 0.339379,
		35.850677, 29.398247, 26.541283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423698, 29.233978, 25.759132>,  <35.562572, 28.806168, 26.303717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423698, 29.233978, 25.759132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713287, 29.390781, 25.986179>,  <35.887043, 29.484863, 26.122408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713287, 29.390781, 25.986179>,  <35.423698, 29.233978, 25.759132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713287, 29.390781, 25.986179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453820, 0.349045, -0.819888,
		-0.519527, 0.851174, 0.074798,
		0.723975, 0.392009, 0.567618,
		35.930481, 29.508385, 26.156466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446201, 29.873175, 25.518076>,  <35.423698, 29.233978, 25.759132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446201, 29.873175, 25.518076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792835, 29.799238, 25.703487>,  <36.000816, 29.754877, 25.814735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792835, 29.799238, 25.703487>,  <35.446201, 29.873175, 25.518076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792835, 29.799238, 25.703487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498856, 0.296739, -0.814302,
		0.012967, 0.936899, 0.349358,
		0.866588, -0.184839, 0.463530,
		36.052811, 29.743786, 25.842546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899586, 30.350506, 25.223509>,  <35.446201, 29.873175, 25.518076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899586, 30.350506, 25.223509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161652, 30.109999, 25.406479>,  <36.318890, 29.965694, 25.516260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161652, 30.109999, 25.406479>,  <35.899586, 30.350506, 25.223509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161652, 30.109999, 25.406479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678021, 0.200891, -0.707057,
		0.333239, 0.773382, 0.539289,
		0.655163, -0.601268, 0.457425,
		36.358200, 29.929619, 25.543707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536816, 30.697502, 25.312326>,  <35.899586, 30.350506, 25.223509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536816, 30.697502, 25.312326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637218, 30.310349, 25.317844>,  <36.697460, 30.078056, 25.321156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637218, 30.310349, 25.317844>,  <36.536816, 30.697502, 25.312326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637218, 30.310349, 25.317844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580529, 0.139118, -0.802267,
		0.774584, 0.209387, 0.596806,
		0.251011, -0.967886, 0.013797,
		36.712521, 30.019983, 25.321983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117817, 30.711309, 25.035107>,  <36.536816, 30.697502, 25.312326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117817, 30.711309, 25.035107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052883, 30.316673, 25.028276>,  <37.013924, 30.079891, 25.024179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052883, 30.316673, 25.028276>,  <37.117817, 30.711309, 25.035107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052883, 30.316673, 25.028276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592620, -0.083646, -0.801127,
		0.788954, -0.140168, 0.598251,
		-0.162334, -0.986588, -0.017074,
		37.004185, 30.020697, 25.023155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769569, 30.375990, 25.168310>,  <37.117817, 30.711309, 25.035107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769569, 30.375990, 25.168310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510624, 30.141104, 24.973951>,  <37.355255, 30.000172, 24.857336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510624, 30.141104, 24.973951>,  <37.769569, 30.375990, 25.168310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510624, 30.141104, 24.973951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594314, 0.010228, -0.804168,
		0.477190, -0.809365, 0.342370,
		-0.647364, -0.587217, -0.485898,
		37.316414, 29.964939, 24.828182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157074, 29.782928, 24.878408>,  <37.769569, 30.375990, 25.168310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157074, 29.782928, 24.878408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827122, 29.836803, 24.658796>,  <37.629150, 29.869129, 24.527029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827122, 29.836803, 24.658796>,  <38.157074, 29.782928, 24.878408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827122, 29.836803, 24.658796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539528, -0.102395, -0.835718,
		-0.168780, -0.985583, 0.011794,
		-0.824877, 0.134689, -0.549032,
		37.579659, 29.877209, 24.494087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326366, 29.418827, 24.356861>,  <38.157074, 29.782928, 24.878408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326366, 29.418827, 24.356861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012859, 29.632757, 24.230579>,  <37.824753, 29.761114, 24.154810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012859, 29.632757, 24.230579>,  <38.326366, 29.418827, 24.356861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012859, 29.632757, 24.230579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490419, 0.221093, -0.842975,
		-0.381043, -0.815525, -0.435573,
		-0.783770, 0.534823, -0.315703,
		37.777729, 29.793203, 24.135868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250755, 29.116735, 23.677561>,  <38.326366, 29.418827, 24.356861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250755, 29.116735, 23.677561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059467, 29.467937, 23.685677>,  <37.944695, 29.678659, 23.690546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059467, 29.467937, 23.685677>,  <38.250755, 29.116735, 23.677561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059467, 29.467937, 23.685677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453130, 0.266459, -0.850690,
		-0.752318, -0.397621, -0.525277,
		-0.478217, 0.878007, 0.020288,
		37.916000, 29.731340, 23.691763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877304, 29.125950, 23.101255>,  <38.250755, 29.116735, 23.677561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877304, 29.125950, 23.101255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954094, 29.507864, 23.192059>,  <38.000168, 29.737013, 23.246540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954094, 29.507864, 23.192059>,  <37.877304, 29.125950, 23.101255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954094, 29.507864, 23.192059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312885, 0.159694, -0.936269,
		-0.930188, 0.250763, -0.268082,
		0.191971, 0.954785, 0.227006,
		38.011684, 29.794300, 23.260160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644447, 29.539919, 22.483431>,  <37.877304, 29.125950, 23.101255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644447, 29.539919, 22.483431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862442, 29.808229, 22.684647>,  <37.993237, 29.969215, 22.805376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862442, 29.808229, 22.684647>,  <37.644447, 29.539919, 22.483431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862442, 29.808229, 22.684647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350623, 0.362662, -0.863446,
		-0.761614, 0.646942, -0.037545,
		0.544984, 0.670777, 0.503042,
		38.025936, 30.009462, 22.835560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593937, 30.148056, 22.067402>,  <37.644447, 29.539919, 22.483431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593937, 30.148056, 22.067402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923050, 30.180946, 22.292355>,  <38.120518, 30.200682, 22.427326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923050, 30.180946, 22.292355>,  <37.593937, 30.148056, 22.067402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923050, 30.180946, 22.292355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495817, 0.379878, -0.780934,
		-0.277851, 0.921375, 0.271786,
		0.822779, 0.082227, 0.562382,
		38.169884, 30.205614, 22.461069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844379, 30.781931, 21.815855>,  <37.593937, 30.148056, 22.067402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844379, 30.781931, 21.815855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156254, 30.620575, 22.007427>,  <38.343376, 30.523762, 22.122370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156254, 30.620575, 22.007427>,  <37.844379, 30.781931, 21.815855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156254, 30.620575, 22.007427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625675, 0.471285, -0.621628,
		0.025047, 0.784326, 0.619843,
		0.779682, -0.403390, 0.478929,
		38.390160, 30.499557, 22.151106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337383, 31.360510, 21.919453>,  <37.844379, 30.781931, 21.815855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337383, 31.360510, 21.919453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557144, 31.027506, 21.947968>,  <38.689003, 30.827703, 21.965076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557144, 31.027506, 21.947968>,  <38.337383, 31.360510, 21.919453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557144, 31.027506, 21.947968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673142, 0.390455, -0.628033,
		0.495009, 0.393030, 0.774915,
		0.549405, -0.832510, 0.071286,
		38.721966, 30.777754, 21.969353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933865, 31.628387, 21.886124>,  <38.337383, 31.360510, 21.919453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933865, 31.628387, 21.886124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994072, 31.236439, 21.833668>,  <39.030197, 31.001270, 21.802195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994072, 31.236439, 21.833668>,  <38.933865, 31.628387, 21.886124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994072, 31.236439, 21.833668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619091, 0.196846, -0.760249,
		0.770760, 0.033242, 0.636258,
		0.150517, -0.979871, -0.131142,
		39.039227, 30.942478, 21.794325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589561, 31.523739, 21.785494>,  <38.933865, 31.628387, 21.886124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589561, 31.523739, 21.785494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 31.179354, 21.634073>,  <39.372105, 30.972723, 21.543221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 31.179354, 21.634073>,  <39.589561, 31.523739, 21.785494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453651, 31.179354, 21.634073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644754, 0.079806, -0.760213,
		0.684725, -0.502370, 0.527993,
		-0.339771, -0.860962, -0.378550,
		39.351719, 30.921064, 21.520508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171066, 31.166788, 21.504154>,  <39.589561, 31.523739, 21.785494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171066, 31.166788, 21.504154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856304, 30.995634, 21.326302>,  <39.667446, 30.892942, 21.219589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856304, 30.995634, 21.326302>,  <40.171066, 31.166788, 21.504154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856304, 30.995634, 21.326302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497809, -0.014387, -0.867168,
		0.364650, -0.903719, 0.224325,
		-0.786904, -0.427884, -0.444633,
		39.620232, 30.867270, 21.192911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476418, 30.681221, 21.186123>,  <40.171066, 31.166788, 21.504154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476418, 30.681221, 21.186123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117371, 30.742842, 21.020929>,  <39.901943, 30.779814, 20.921814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117371, 30.742842, 21.020929>,  <40.476418, 30.681221, 21.186123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117371, 30.742842, 21.020929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420563, 0.018820, -0.907068,
		-0.131966, -0.987883, -0.081683,
		-0.897614, 0.154055, -0.412983,
		39.848087, 30.789059, 20.897034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431389, 30.199511, 20.663141>,  <40.476418, 30.681221, 21.186123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431389, 30.199511, 20.663141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171684, 30.494602, 20.589155>,  <40.015862, 30.671658, 20.544764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171684, 30.494602, 20.589155>,  <40.431389, 30.199511, 20.663141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171684, 30.494602, 20.589155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392890, 0.117092, -0.912100,
		-0.651226, -0.664863, -0.365870,
		-0.649263, 0.737730, -0.184965,
		39.976906, 30.715921, 20.533667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078449, 30.009274, 20.052637>,  <40.431389, 30.199511, 20.663141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078449, 30.009274, 20.052637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000355, 30.400356, 20.083559>,  <39.953499, 30.635006, 20.102112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000355, 30.400356, 20.083559>,  <40.078449, 30.009274, 20.052637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000355, 30.400356, 20.083559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396916, 0.150845, -0.905375,
		-0.896850, -0.146080, -0.417517,
		-0.195237, 0.977705, 0.077304,
		39.941784, 30.693668, 20.106750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785259, 30.179050, 19.437660>,  <40.078449, 30.009274, 20.052637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785259, 30.179050, 19.437660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903004, 30.540451, 19.562263>,  <39.973652, 30.757292, 19.637026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903004, 30.540451, 19.562263>,  <39.785259, 30.179050, 19.437660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903004, 30.540451, 19.562263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480435, 0.141875, -0.865479,
		-0.826156, 0.404424, -0.392311,
		0.294362, 0.903500, 0.311510,
		39.991314, 30.811501, 19.655716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539055, 30.644293, 18.973728>,  <39.785259, 30.179050, 19.437660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539055, 30.644293, 18.973728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882523, 30.758619, 19.143904>,  <40.088604, 30.827215, 19.246010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882523, 30.758619, 19.143904>,  <39.539055, 30.644293, 18.973728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882523, 30.758619, 19.143904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380206, 0.201439, -0.902699,
		-0.343708, 0.936872, 0.064299,
		0.858666, 0.285818, 0.425441,
		40.140121, 30.844364, 19.271536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785080, 31.215046, 18.617014>,  <39.539055, 30.644293, 18.973728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785080, 31.215046, 18.617014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110085, 31.049789, 18.781517>,  <40.305088, 30.950636, 18.880219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110085, 31.049789, 18.781517>,  <39.785080, 31.215046, 18.617014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110085, 31.049789, 18.781517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492429, 0.108871, -0.863516,
		0.311979, 0.904136, 0.291902,
		0.812516, -0.413140, 0.411257,
		40.353840, 30.925848, 18.904894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243324, 31.686001, 18.457436>,  <39.785080, 31.215046, 18.617014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243324, 31.686001, 18.457436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403801, 31.324551, 18.517448>,  <40.500088, 31.107681, 18.553455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403801, 31.324551, 18.517448>,  <40.243324, 31.686001, 18.457436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403801, 31.324551, 18.517448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388853, 0.019711, -0.921089,
		0.829361, 0.427874, 0.359284,
		0.401192, -0.903624, 0.150032,
		40.524158, 31.053463, 18.562458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821659, 31.621962, 18.132635>,  <40.243324, 31.686001, 18.457436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821659, 31.621962, 18.132635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731319, 31.232367, 18.140047>,  <40.677116, 30.998610, 18.144493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731319, 31.232367, 18.140047>,  <40.821659, 31.621962, 18.132635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731319, 31.232367, 18.140047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293505, -0.086171, -0.952066,
		0.928895, -0.209588, 0.305332,
		-0.225853, -0.973985, 0.018529,
		40.663563, 30.940170, 18.145605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873455, 32.286205, 18.270912>,  <40.821659, 31.621962, 18.132635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873455, 32.286205, 18.270912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001862, 32.628654, 18.432899>,  <41.078907, 32.834126, 18.530092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001862, 32.628654, 18.432899>,  <40.873455, 32.286205, 18.270912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001862, 32.628654, 18.432899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859723, 0.084061, 0.503796,
		0.397269, -0.509891, 0.763013,
		0.321020, 0.856122, 0.404971,
		41.098167, 32.885490, 18.554390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694832, 32.260056, 19.042477>,  <40.873455, 32.286205, 18.270912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694832, 32.260056, 19.042477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639179, 32.641914, 18.937180>,  <40.605785, 32.871029, 18.874002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639179, 32.641914, 18.937180>,  <40.694832, 32.260056, 19.042477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639179, 32.641914, 18.937180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942283, -0.045879, 0.331660,
		0.304540, 0.294192, 0.905928,
		-0.139135, 0.954644, -0.263241,
		40.597439, 32.928307, 18.858208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336926, 32.632759, 19.514139>,  <40.694832, 32.260056, 19.042477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336926, 32.632759, 19.514139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248325, 32.816223, 19.169914>,  <40.195164, 32.926300, 18.963379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248325, 32.816223, 19.169914>,  <40.336926, 32.632759, 19.514139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248325, 32.816223, 19.169914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861822, 0.320852, 0.392831,
		0.456290, 0.828665, 0.324214,
		-0.221500, 0.458660, -0.860563,
		40.181877, 32.953819, 18.911745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179371, 33.393799, 19.612320>,  <40.336926, 32.632759, 19.514139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179371, 33.393799, 19.612320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978447, 33.220367, 19.313070>,  <39.857891, 33.116310, 19.133520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978447, 33.220367, 19.313070>,  <40.179371, 33.393799, 19.612320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978447, 33.220367, 19.313070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863194, 0.200650, 0.463287,
		-0.050760, 0.878493, -0.475052,
		-0.502313, -0.433579, -0.748125,
		39.827751, 33.090294, 19.088633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744450, 33.876152, 19.322048>,  <40.179371, 33.393799, 19.612320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744450, 33.876152, 19.322048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612175, 33.499199, 19.342287>,  <39.532810, 33.273026, 19.354429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612175, 33.499199, 19.342287>,  <39.744450, 33.876152, 19.322048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612175, 33.499199, 19.342287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576728, 0.244230, 0.779575,
		-0.747015, 0.228614, -0.624262,
		-0.330686, -0.942384, 0.050596,
		39.512970, 33.216484, 19.357466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916718, 33.779121, 19.312536>,  <39.744450, 33.876152, 19.322048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916718, 33.779121, 19.312536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093044, 33.474609, 19.502748>,  <39.198841, 33.291901, 19.616877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093044, 33.474609, 19.502748>,  <38.916718, 33.779121, 19.312536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093044, 33.474609, 19.502748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580569, 0.162219, 0.797888,
		-0.684559, -0.627800, -0.370468,
		0.440817, -0.761283, 0.475530,
		39.225288, 33.246223, 19.645407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349777, 33.341656, 19.697556>,  <38.916718, 33.779121, 19.312536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349777, 33.341656, 19.697556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708763, 33.351879, 19.873692>,  <38.924156, 33.358013, 19.979372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708763, 33.351879, 19.873692>,  <38.349777, 33.341656, 19.697556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708763, 33.351879, 19.873692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440985, 0.031371, 0.896966,
		0.009110, -0.999181, 0.039425,
		0.897468, 0.025557, 0.440338,
		38.978004, 33.359547, 20.005793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320728, 32.732525, 20.139721>,  <38.349777, 33.341656, 19.697556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320728, 32.732525, 20.139721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601921, 32.973518, 20.290892>,  <38.770638, 33.118114, 20.381594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601921, 32.973518, 20.290892>,  <38.320728, 32.732525, 20.139721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601921, 32.973518, 20.290892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406765, -0.095305, 0.908548,
		0.583407, -0.792417, 0.178073,
		0.702978, 0.602488, 0.377929,
		38.812813, 33.154266, 20.404270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513401, 32.427406, 20.812069>,  <38.320728, 32.732525, 20.139721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513401, 32.427406, 20.812069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634403, 32.808552, 20.821367>,  <38.707005, 33.037239, 20.826946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634403, 32.808552, 20.821367>,  <38.513401, 32.427406, 20.812069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634403, 32.808552, 20.821367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329540, 0.081672, 0.940603,
		0.894369, -0.292195, 0.338713,
		0.302503, 0.952865, 0.023245,
		38.725155, 33.094410, 20.828341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935307, 32.509991, 21.438553>,  <38.513401, 32.427406, 20.812069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935307, 32.509991, 21.438553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853699, 32.889095, 21.340467>,  <38.804733, 33.116558, 21.281616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853699, 32.889095, 21.340467>,  <38.935307, 32.509991, 21.438553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853699, 32.889095, 21.340467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293490, 0.179747, 0.938911,
		0.933939, 0.263521, 0.241486,
		-0.204017, 0.947759, -0.245214,
		38.792492, 33.173424, 21.266903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278526, 32.906509, 21.955235>,  <38.935307, 32.509991, 21.438553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278526, 32.906509, 21.955235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975971, 33.103573, 21.783112>,  <38.794437, 33.221809, 21.679838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975971, 33.103573, 21.783112>,  <39.278526, 32.906509, 21.955235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975971, 33.103573, 21.783112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359015, 0.237231, 0.902679,
		0.546793, 0.837264, -0.002567,
		-0.756389, 0.492657, -0.430307,
		38.749054, 33.251369, 21.654020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324425, 33.539089, 22.383600>,  <39.278526, 32.906509, 21.955235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324425, 33.539089, 22.383600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966400, 33.508972, 22.207787>,  <38.751583, 33.490902, 22.102299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966400, 33.508972, 22.207787>,  <39.324425, 33.539089, 22.383600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966400, 33.508972, 22.207787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439698, 0.313296, 0.841731,
		0.074326, 0.946666, -0.313527,
		-0.895065, -0.075294, -0.439534,
		38.697880, 33.486385, 22.075926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897892, 34.124424, 22.591099>,  <39.324425, 33.539089, 22.383600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897892, 34.124424, 22.591099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633446, 33.845486, 22.480371>,  <38.474777, 33.678123, 22.413935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633446, 33.845486, 22.480371>,  <38.897892, 34.124424, 22.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633446, 33.845486, 22.480371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596925, 0.265357, 0.757143,
		-0.454538, 0.665800, -0.591698,
		-0.661117, -0.697350, -0.276818,
		38.435112, 33.636280, 22.397326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303043, 34.464272, 22.706955>,  <38.897892, 34.124424, 22.591099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303043, 34.464272, 22.706955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202717, 34.077320, 22.692741>,  <38.142521, 33.845150, 22.684214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202717, 34.077320, 22.692741>,  <38.303043, 34.464272, 22.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202717, 34.077320, 22.692741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582158, 0.121407, 0.803961,
		-0.773423, 0.222335, -0.593620,
		-0.250818, -0.967382, -0.035535,
		38.127472, 33.787106, 22.682081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549171, 34.363480, 22.675402>,  <38.303043, 34.464272, 22.706955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549171, 34.363480, 22.675402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678555, 34.016720, 22.827122>,  <37.756184, 33.808666, 22.918154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678555, 34.016720, 22.827122>,  <37.549171, 34.363480, 22.675402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678555, 34.016720, 22.827122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706376, 0.045504, 0.706373,
		-0.629611, -0.496409, -0.597636,
		0.323455, -0.866895, 0.379301,
		37.775593, 33.756653, 22.940912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997639, 34.028854, 22.869534>,  <37.549171, 34.363480, 22.675402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997639, 34.028854, 22.869534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269066, 33.817696, 23.073835>,  <37.431923, 33.691002, 23.196417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269066, 33.817696, 23.073835>,  <36.997639, 34.028854, 22.869534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269066, 33.817696, 23.073835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668394, -0.155398, 0.727393,
		-0.304620, -0.834970, -0.458292,
		0.678569, -0.527898, 0.510751,
		37.472637, 33.659328, 23.227062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633087, 33.527973, 23.302855>,  <36.997639, 34.028854, 22.869534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633087, 33.527973, 23.302855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994560, 33.506523, 23.472788>,  <37.211445, 33.493652, 23.574747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994560, 33.506523, 23.472788>,  <36.633087, 33.527973, 23.302855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994560, 33.506523, 23.472788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428184, -0.104003, 0.897687,
		-0.003947, -0.993131, -0.116943,
		0.903683, -0.053616, 0.424832,
		37.265667, 33.490437, 23.600237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750092, 32.862728, 23.590002>,  <36.633087, 33.527973, 23.302855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750092, 32.862728, 23.590002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957985, 33.139542, 23.790388>,  <37.082722, 33.305630, 23.910620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957985, 33.139542, 23.790388>,  <36.750092, 32.862728, 23.590002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957985, 33.139542, 23.790388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480563, -0.248004, 0.841162,
		0.706356, -0.677923, 0.203673,
		0.519731, 0.692037, 0.500964,
		37.113903, 33.347153, 23.940678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911121, 32.549591, 24.268974>,  <36.750092, 32.862728, 23.590002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911121, 32.549591, 24.268974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969582, 32.943810, 24.303247>,  <37.004658, 33.180340, 24.323811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969582, 32.943810, 24.303247>,  <36.911121, 32.549591, 24.268974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969582, 32.943810, 24.303247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446519, -0.011570, 0.894699,
		0.882758, -0.169017, 0.438374,
		0.146148, 0.985545, 0.085683,
		37.013428, 33.239471, 24.328953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220280, 32.609039, 24.886858>,  <36.911121, 32.549591, 24.268974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220280, 32.609039, 24.886858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071274, 32.970997, 24.804499>,  <36.981869, 33.188171, 24.755083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071274, 32.970997, 24.804499>,  <37.220280, 32.609039, 24.886858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071274, 32.970997, 24.804499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362556, 0.062333, 0.929875,
		0.854276, 0.421041, 0.304856,
		-0.372513, 0.904897, -0.205901,
		36.959518, 33.242466, 24.742729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390713, 33.074184, 25.390629>,  <37.220280, 32.609039, 24.886858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390713, 33.074184, 25.390629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064106, 33.232323, 25.222342>,  <36.868141, 33.327206, 25.121368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064106, 33.232323, 25.222342>,  <37.390713, 33.074184, 25.390629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064106, 33.232323, 25.222342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458932, -0.002350, 0.888468,
		0.350263, 0.918530, 0.183356,
		-0.816515, 0.395346, -0.420720,
		36.819153, 33.350925, 25.096125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161537, 33.468704, 25.910191>,  <37.390713, 33.074184, 25.390629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161537, 33.468704, 25.910191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843067, 33.480202, 25.668438>,  <36.651985, 33.487099, 25.523386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843067, 33.480202, 25.668438>,  <37.161537, 33.468704, 25.910191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843067, 33.480202, 25.668438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598914, 0.104645, 0.793947,
		0.086067, 0.994094, -0.066101,
		-0.796175, 0.028743, -0.604383,
		36.604214, 33.488823, 25.487123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691452, 33.880482, 26.309204>,  <37.161537, 33.468704, 25.910191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691452, 33.880482, 26.309204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455387, 33.692467, 26.046673>,  <36.313747, 33.579659, 25.889154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455387, 33.692467, 26.046673>,  <36.691452, 33.880482, 26.309204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455387, 33.692467, 26.046673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781001, 0.126678, 0.611548,
		-0.204308, 0.873509, -0.441861,
		-0.590166, -0.470037, -0.656330,
		36.278336, 33.551456, 25.849773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040382, 34.308353, 26.193932>,  <36.691452, 33.880482, 26.309204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040382, 34.308353, 26.193932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944824, 33.941307, 26.066862>,  <35.887489, 33.721081, 25.990622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944824, 33.941307, 26.066862>,  <36.040382, 34.308353, 26.193932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944824, 33.941307, 26.066862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716074, -0.054485, 0.695894,
		-0.655869, 0.393725, -0.644062,
		-0.238900, -0.917612, -0.317672,
		35.873154, 33.666023, 25.971561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346367, 34.373417, 26.113350>,  <36.040382, 34.308353, 26.193932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346367, 34.373417, 26.113350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443626, 33.986252, 26.138721>,  <35.501984, 33.753952, 26.153944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443626, 33.986252, 26.138721>,  <35.346367, 34.373417, 26.113350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443626, 33.986252, 26.138721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858009, -0.184116, 0.479503,
		-0.452438, -0.171013, -0.875245,
		0.243148, -0.967913, 0.063430,
		35.516571, 33.695877, 26.157751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637642, 34.026581, 25.939623>,  <35.346367, 34.373417, 26.113350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637642, 34.026581, 25.939623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875622, 33.760880, 26.120642>,  <35.018410, 33.601460, 26.229254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875622, 33.760880, 26.120642>,  <34.637642, 34.026581, 25.939623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875622, 33.760880, 26.120642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696838, -0.145686, 0.702277,
		-0.400559, -0.733175, -0.549552,
		0.594953, -0.664252, 0.452548,
		35.054108, 33.561604, 26.256407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344666, 33.390617, 25.914600>,  <34.637642, 34.026581, 25.939623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344666, 33.390617, 25.914600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586426, 33.400139, 26.233131>,  <34.731480, 33.405853, 26.424250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586426, 33.400139, 26.233131>,  <34.344666, 33.390617, 25.914600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586426, 33.400139, 26.233131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787844, -0.130627, 0.601863,
		0.118350, -0.991146, -0.060195,
		0.604397, 0.023806, 0.796328,
		34.767746, 33.407280, 26.472029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145336, 32.733677, 26.354801>,  <34.344666, 33.390617, 25.914600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145336, 32.733677, 26.354801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360199, 32.959370, 26.605595>,  <34.489117, 33.094784, 26.756071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360199, 32.959370, 26.605595>,  <34.145336, 32.733677, 26.354801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360199, 32.959370, 26.605595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678304, -0.152880, 0.718701,
		0.501368, -0.811338, 0.300601,
		0.537154, 0.564233, 0.626983,
		34.521343, 33.128639, 26.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169701, 32.320980, 26.925753>,  <34.145336, 32.733677, 26.354801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169701, 32.320980, 26.925753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259315, 32.691132, 27.048054>,  <34.313084, 32.913223, 27.121433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259315, 32.691132, 27.048054>,  <34.169701, 32.320980, 26.925753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259315, 32.691132, 27.048054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567999, -0.130953, 0.812545,
		0.791948, -0.355710, 0.496274,
		0.224042, 0.925377, 0.305750,
		34.326527, 32.968746, 27.139778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414227, 32.218307, 27.579172>,  <34.169701, 32.320980, 26.925753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414227, 32.218307, 27.579172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320324, 32.607128, 27.580345>,  <34.263981, 32.840420, 27.581049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320324, 32.607128, 27.580345>,  <34.414227, 32.218307, 27.579172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320324, 32.607128, 27.580345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451563, -0.111728, 0.885216,
		0.860801, 0.206488, 0.465170,
		-0.234759, 0.972049, 0.002933,
		34.249897, 32.898743, 27.581224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488075, 32.447735, 28.249550>,  <34.414227, 32.218307, 27.579172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488075, 32.447735, 28.249550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263000, 32.745564, 28.105888>,  <34.127956, 32.924263, 28.019691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263000, 32.745564, 28.105888>,  <34.488075, 32.447735, 28.249550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263000, 32.745564, 28.105888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521473, 0.017409, 0.853090,
		0.641441, 0.667314, 0.378479,
		-0.562690, 0.744573, -0.359153,
		34.094193, 32.968937, 27.998142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402653, 33.034985, 28.824371>,  <34.488075, 32.447735, 28.249550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402653, 33.034985, 28.824371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084755, 33.075226, 28.584949>,  <33.894016, 33.099369, 28.441296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084755, 33.075226, 28.584949>,  <34.402653, 33.034985, 28.824371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084755, 33.075226, 28.584949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605981, -0.075820, 0.791858,
		0.034282, 0.992033, 0.121222,
		-0.794740, 0.100604, -0.598554,
		33.846333, 33.105408, 28.405384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913906, 33.480648, 29.167032>,  <34.402653, 33.034985, 28.824371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913906, 33.480648, 29.167032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695469, 33.302830, 28.883017>,  <33.564407, 33.196136, 28.712606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695469, 33.302830, 28.883017>,  <33.913906, 33.480648, 29.167032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695469, 33.302830, 28.883017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766380, -0.077166, 0.637735,
		-0.338296, 0.892424, -0.298554,
		-0.546093, -0.444549, -0.710041,
		33.531643, 33.169464, 28.670004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284904, 33.855801, 29.078264>,  <33.913906, 33.480648, 29.167032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284904, 33.855801, 29.078264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165977, 33.504757, 28.927851>,  <33.094620, 33.294132, 28.837603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165977, 33.504757, 28.927851>,  <33.284904, 33.855801, 29.078264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165977, 33.504757, 28.927851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696363, -0.070126, 0.714256,
		-0.653208, 0.474218, -0.590285,
		-0.297319, -0.877610, -0.376034,
		33.076782, 33.241474, 28.815041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593807, 33.917583, 28.927532>,  <33.284904, 33.855801, 29.078264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593807, 33.917583, 28.927532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656853, 33.525635, 28.976524>,  <32.694679, 33.290466, 29.005920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656853, 33.525635, 28.976524>,  <32.593807, 33.917583, 28.927532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656853, 33.525635, 28.976524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777615, -0.046708, 0.627004,
		-0.608665, -0.194068, -0.769327,
		0.157615, -0.979875, 0.122481,
		32.704136, 33.231670, 29.013269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921156, 33.704002, 28.753851>,  <32.593807, 33.917583, 28.927532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921156, 33.704002, 28.753851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113350, 33.421814, 28.962252>,  <32.228664, 33.252499, 29.087292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113350, 33.421814, 28.962252>,  <31.921156, 33.704002, 28.753851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113350, 33.421814, 28.962252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734071, 0.001543, 0.679071,
		-0.479870, -0.708735, -0.517126,
		0.480484, -0.705473, 0.521003,
		32.257496, 33.210171, 29.118553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426735, 33.187271, 28.861248>,  <31.921156, 33.704002, 28.753851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426735, 33.187271, 28.861248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725540, 33.085705, 29.107012>,  <31.904823, 33.024765, 29.254471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725540, 33.085705, 29.107012>,  <31.426735, 33.187271, 28.861248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725540, 33.085705, 29.107012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664461, -0.315056, 0.677666,
		0.021503, -0.914476, -0.404068,
		0.747013, -0.253915, 0.614408,
		31.949644, 33.009529, 29.291334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255238, 32.533203, 29.125252>,  <31.426735, 33.187271, 28.861248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255238, 32.533203, 29.125252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507727, 32.737881, 29.358395>,  <31.659220, 32.860687, 29.498281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507727, 32.737881, 29.358395>,  <31.255238, 32.533203, 29.125252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507727, 32.737881, 29.358395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604473, -0.146305, 0.783075,
		0.485972, -0.846618, 0.216956,
		0.631223, 0.511696, 0.582858,
		31.697094, 32.891388, 29.533253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353127, 32.058178, 29.702387>,  <31.255238, 32.533203, 29.125252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353127, 32.058178, 29.702387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423122, 32.438171, 29.805853>,  <31.465120, 32.666168, 29.867933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423122, 32.438171, 29.805853>,  <31.353127, 32.058178, 29.702387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423122, 32.438171, 29.805853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618508, -0.098342, 0.779600,
		0.766047, -0.296407, 0.570365,
		0.174988, 0.949985, 0.258664,
		31.475618, 32.723167, 29.883451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327902, 32.014946, 30.364120>,  <31.353127, 32.058178, 29.702387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327902, 32.014946, 30.364120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296072, 32.406822, 30.290493>,  <31.276974, 32.641949, 30.246317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296072, 32.406822, 30.290493>,  <31.327902, 32.014946, 30.364120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296072, 32.406822, 30.290493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718984, 0.071494, 0.691340,
		0.690456, 0.187353, 0.698691,
		-0.079573, 0.979688, -0.184067,
		31.272200, 32.700729, 30.235273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491867, 32.381584, 31.007294>,  <31.327902, 32.014946, 30.364120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491867, 32.381584, 31.007294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270123, 32.630581, 30.786320>,  <31.137075, 32.779980, 30.653734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270123, 32.630581, 30.786320>,  <31.491867, 32.381584, 31.007294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270123, 32.630581, 30.786320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673104, 0.055065, 0.737495,
		0.489507, 0.780684, 0.388478,
		-0.554359, 0.622495, -0.552436,
		31.103815, 32.817329, 30.620588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369904, 32.872948, 31.427599>,  <31.491867, 32.381584, 31.007294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369904, 32.872948, 31.427599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082912, 32.916584, 31.152405>,  <30.910717, 32.942764, 30.987289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082912, 32.916584, 31.152405>,  <31.369904, 32.872948, 31.427599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082912, 32.916584, 31.152405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684522, 0.072553, 0.725373,
		0.129046, 0.991381, 0.022618,
		-0.717480, 0.109089, -0.687984,
		30.867668, 32.949310, 30.946009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082474, 33.491787, 31.573410>,  <31.369904, 32.872948, 31.427599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082474, 33.491787, 31.573410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788637, 33.334324, 31.352356>,  <30.612335, 33.239845, 31.219725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788637, 33.334324, 31.352356>,  <31.082474, 33.491787, 31.573410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788637, 33.334324, 31.352356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628701, 0.088617, 0.772581,
		-0.255162, 0.914974, -0.312593,
		-0.734593, -0.393661, -0.552634,
		30.568260, 33.216225, 31.186565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477642, 33.893032, 31.755068>,  <31.082474, 33.491787, 31.573410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477642, 33.893032, 31.755068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337955, 33.556965, 31.589096>,  <30.254143, 33.355324, 31.489513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337955, 33.556965, 31.589096>,  <30.477642, 33.893032, 31.755068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337955, 33.556965, 31.589096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725230, -0.038068, 0.687454,
		-0.593372, 0.540989, -0.596021,
		-0.349216, -0.840168, -0.414930,
		30.233191, 33.304916, 31.464617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150831, 34.080227, 32.001026>,  <30.477642, 33.893032, 31.755068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150831, 34.080227, 32.001026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436329, 34.007179, 32.271496>,  <31.607628, 33.963348, 32.433777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436329, 34.007179, 32.271496>,  <31.150831, 34.080227, 32.001026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436329, 34.007179, 32.271496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653616, 0.520600, -0.549329,
		-0.251698, 0.834041, 0.490941,
		0.713746, -0.182622, 0.676177,
		31.650454, 33.952393, 32.474350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514214, 34.689640, 32.151646>,  <31.150831, 34.080227, 32.001026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514214, 34.689640, 32.151646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774942, 34.408161, 32.264736>,  <31.931379, 34.239273, 32.332592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774942, 34.408161, 32.264736>,  <31.514214, 34.689640, 32.151646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774942, 34.408161, 32.264736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700077, 0.414993, -0.581097,
		0.291588, 0.576703, 0.763145,
		0.651820, -0.703701, 0.282729,
		31.970488, 34.197052, 32.349556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024990, 35.032677, 32.462864>,  <31.514214, 34.689640, 32.151646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024990, 35.032677, 32.462864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193020, 34.690716, 32.341095>,  <32.293839, 34.485538, 32.268032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193020, 34.690716, 32.341095>,  <32.024990, 35.032677, 32.462864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193020, 34.690716, 32.341095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673557, 0.518532, -0.526731,
		0.608159, 0.016219, 0.793650,
		0.420076, -0.854904, -0.304425,
		32.319042, 34.434246, 32.249767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716541, 35.127720, 32.495281>,  <32.024990, 35.032677, 32.462864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716541, 35.127720, 32.495281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703007, 34.807858, 32.255478>,  <32.694885, 34.615940, 32.111595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703007, 34.807858, 32.255478>,  <32.716541, 35.127720, 32.495281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703007, 34.807858, 32.255478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733657, 0.387462, -0.558231,
		0.678677, -0.458722, 0.573560,
		-0.033840, -0.799655, -0.599506,
		32.692856, 34.567963, 32.075626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466591, 34.886185, 32.446903>,  <32.716541, 35.127720, 32.495281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466591, 34.886185, 32.446903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262413, 34.736855, 32.137047>,  <33.139904, 34.647259, 31.951132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262413, 34.736855, 32.137047>,  <33.466591, 34.886185, 32.446903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262413, 34.736855, 32.137047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795082, 0.138243, -0.590537,
		0.327550, -0.917343, 0.226256,
		-0.510446, -0.373323, -0.774645,
		33.109280, 34.624859, 31.904654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932152, 34.485039, 32.164703>,  <33.466591, 34.886185, 32.446903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932152, 34.485039, 32.164703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664085, 34.547264, 31.874413>,  <33.503246, 34.584599, 31.700237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664085, 34.547264, 31.874413>,  <33.932152, 34.485039, 32.164703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664085, 34.547264, 31.874413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742207, 0.136928, -0.656033,
		-0.002684, -0.978289, -0.207226,
		-0.670165, 0.155566, -0.725726,
		33.463036, 34.593933, 31.656694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249142, 34.121834, 31.658051>,  <33.932152, 34.485039, 32.164703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249142, 34.121834, 31.658051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981335, 34.366459, 31.489416>,  <33.820652, 34.513233, 31.388235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981335, 34.366459, 31.489416>,  <34.249142, 34.121834, 31.658051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981335, 34.366459, 31.489416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678551, 0.272657, -0.682076,
		-0.302183, -0.742731, -0.597525,
		-0.669518, 0.611563, -0.421588,
		33.780479, 34.549927, 31.362940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123848, 33.846867, 31.082945>,  <34.249142, 34.121834, 31.658051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123848, 33.846867, 31.082945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028679, 34.229298, 31.014460>,  <33.971577, 34.458755, 30.973368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028679, 34.229298, 31.014460>,  <34.123848, 33.846867, 31.082945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028679, 34.229298, 31.014460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618208, 0.013103, -0.785906,
		-0.749141, -0.292829, -0.594171,
		-0.237922, 0.956075, -0.171213,
		33.957302, 34.516121, 30.963095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089230, 33.847488, 30.342230>,  <34.123848, 33.846867, 31.082945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089230, 33.847488, 30.342230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122719, 34.228775, 30.458410>,  <34.142811, 34.457546, 30.528118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122719, 34.228775, 30.458410>,  <34.089230, 33.847488, 30.342230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122719, 34.228775, 30.458410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639199, 0.172235, -0.749507,
		-0.764471, 0.248406, -0.594877,
		0.083724, 0.953221, 0.290449,
		34.147835, 34.514740, 30.545546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157715, 34.192364, 29.727354>,  <34.089230, 33.847488, 30.342230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157715, 34.192364, 29.727354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302231, 34.440502, 30.005817>,  <34.388943, 34.589386, 30.172895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302231, 34.440502, 30.005817>,  <34.157715, 34.192364, 29.727354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302231, 34.440502, 30.005817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748187, 0.252703, -0.613480,
		-0.556492, 0.742503, -0.372835,
		0.361294, 0.620347, 0.696158,
		34.410618, 34.626606, 30.214664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298061, 34.848118, 29.294149>,  <34.157715, 34.192364, 29.727354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298061, 34.848118, 29.294149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488522, 34.877609, 29.644655>,  <34.602798, 34.895306, 29.854959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488522, 34.877609, 29.644655>,  <34.298061, 34.848118, 29.294149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488522, 34.877609, 29.644655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772461, 0.441111, -0.456864,
		-0.420216, 0.894418, 0.153081,
		0.476153, 0.073733, 0.876266,
		34.631367, 34.899731, 29.907536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522701, 35.525444, 29.409933>,  <34.298061, 34.848118, 29.294149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522701, 35.525444, 29.409933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772869, 35.334854, 29.657101>,  <34.922970, 35.220501, 29.805401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772869, 35.334854, 29.657101>,  <34.522701, 35.525444, 29.409933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772869, 35.334854, 29.657101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774367, 0.281634, -0.566602,
		0.095942, 0.832861, 0.545104,
		0.625420, -0.476471, 0.617920,
		34.960495, 35.191914, 29.842476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950249, 35.989170, 29.544287>,  <34.522701, 35.525444, 29.409933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950249, 35.989170, 29.544287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171703, 35.671146, 29.643373>,  <35.304577, 35.480331, 29.702826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171703, 35.671146, 29.643373>,  <34.950249, 35.989170, 29.544287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171703, 35.671146, 29.643373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734748, 0.326351, -0.594677,
		0.391962, 0.511244, 0.764850,
		0.553634, -0.795063, 0.247718,
		35.337795, 35.432629, 29.717690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613014, 36.201214, 29.685560>,  <34.950249, 35.989170, 29.544287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613014, 36.201214, 29.685560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659492, 35.813892, 29.597113>,  <35.687378, 35.581501, 29.544044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659492, 35.813892, 29.597113>,  <35.613014, 36.201214, 29.685560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659492, 35.813892, 29.597113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737109, 0.233282, -0.634232,
		0.665710, -0.089294, 0.740849,
		0.116193, -0.968301, -0.221117,
		35.694351, 35.523403, 29.530777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318237, 36.145714, 29.587517>,  <35.613014, 36.201214, 29.685560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318237, 36.145714, 29.587517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174011, 35.816830, 29.411354>,  <36.087475, 35.619499, 29.305656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174011, 35.816830, 29.411354>,  <36.318237, 36.145714, 29.587517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174011, 35.816830, 29.411354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650031, 0.117111, -0.750829,
		0.668916, -0.557005, 0.492236,
		-0.360570, -0.822211, -0.440408,
		36.065842, 35.570168, 29.279232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946217, 35.940144, 29.264019>,  <36.318237, 36.145714, 29.587517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946217, 35.940144, 29.264019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634159, 35.754501, 29.096218>,  <36.446926, 35.643116, 28.995539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634159, 35.754501, 29.096218>,  <36.946217, 35.940144, 29.264019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634159, 35.754501, 29.096218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478683, -0.011108, -0.877917,
		0.402787, -0.885710, 0.230825,
		-0.780144, -0.464106, -0.419500,
		36.400116, 35.615269, 28.970367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279034, 35.483273, 28.809330>,  <36.946217, 35.940144, 29.264019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279034, 35.483273, 28.809330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898876, 35.529869, 28.693966>,  <36.670780, 35.557827, 28.624748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898876, 35.529869, 28.693966>,  <37.279034, 35.483273, 28.809330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898876, 35.529869, 28.693966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272477, -0.135409, -0.952586,
		-0.150036, -0.983916, 0.096946,
		-0.950392, 0.116507, -0.288410,
		36.613758, 35.564819, 28.607443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141624, 34.884167, 28.280756>,  <37.279034, 35.483273, 28.809330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141624, 34.884167, 28.280756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892323, 35.190945, 28.219637>,  <36.742741, 35.375011, 28.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892323, 35.190945, 28.219637>,  <37.141624, 34.884167, 28.280756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892323, 35.190945, 28.219637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291103, 0.046181, -0.955576,
		-0.725821, -0.640045, -0.252044,
		-0.623251, 0.766949, -0.152800,
		36.705349, 35.421028, 28.173798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793465, 34.805901, 27.717705>,  <37.141624, 34.884167, 28.280756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793465, 34.805901, 27.717705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751793, 35.202793, 27.744915>,  <36.726791, 35.440929, 27.761242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751793, 35.202793, 27.744915>,  <36.793465, 34.805901, 27.717705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751793, 35.202793, 27.744915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063683, 0.074915, -0.995154,
		-0.992518, -0.099340, -0.070993,
		-0.104177, 0.992229, 0.068028,
		36.720539, 35.500462, 27.765324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281361, 34.983967, 27.215963>,  <36.793465, 34.805901, 27.717705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281361, 34.983967, 27.215963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490284, 35.312859, 27.306412>,  <36.615639, 35.510193, 27.360680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490284, 35.312859, 27.306412>,  <36.281361, 34.983967, 27.215963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490284, 35.312859, 27.306412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122378, 0.190146, -0.974099,
		-0.843928, 0.536455, -0.001308,
		0.522311, 0.822229, 0.226120,
		36.646976, 35.559528, 27.374249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970024, 35.571678, 26.846045>,  <36.281361, 34.983967, 27.215963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970024, 35.571678, 26.846045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356129, 35.620586, 26.938414>,  <36.587791, 35.649933, 26.993835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356129, 35.620586, 26.938414>,  <35.970024, 35.571678, 26.846045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356129, 35.620586, 26.938414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210750, 0.158144, -0.964663,
		-0.154468, 0.979817, 0.126882,
		0.965259, 0.122269, 0.230925,
		36.645706, 35.657269, 27.007690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207962, 35.891590, 26.131845>,  <35.970024, 35.571678, 26.846045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207962, 35.891590, 26.131845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551327, 35.815540, 26.322418>,  <36.757343, 35.769909, 26.436762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551327, 35.815540, 26.322418>,  <36.207962, 35.891590, 26.131845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551327, 35.815540, 26.322418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491484, 0.038852, -0.870020,
		0.146903, 0.980991, 0.126795,
		0.858407, -0.190126, 0.476433,
		36.808849, 35.758503, 26.465347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684048, 36.239548, 25.750298>,  <36.207962, 35.891590, 26.131845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684048, 36.239548, 25.750298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911324, 35.999256, 25.975256>,  <37.047691, 35.855083, 26.110231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911324, 35.999256, 25.975256>,  <36.684048, 36.239548, 25.750298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911324, 35.999256, 25.975256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657435, -0.079650, -0.749289,
		0.494911, 0.795479, 0.349681,
		0.568192, -0.600724, 0.562395,
		37.081779, 35.819038, 26.143974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372707, 36.262333, 25.506041>,  <36.684048, 36.239548, 25.750298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372707, 36.262333, 25.506041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435558, 35.936371, 25.729197>,  <37.473270, 35.740795, 25.863091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435558, 35.936371, 25.729197>,  <37.372707, 36.262333, 25.506041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435558, 35.936371, 25.729197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853493, -0.172154, -0.491846,
		0.496851, 0.553436, 0.668466,
		0.157127, -0.814906, 0.557889,
		37.482697, 35.691898, 25.896563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047405, 36.376034, 25.855328>,  <37.372707, 36.262333, 25.506041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047405, 36.376034, 25.855328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975552, 35.984085, 25.820511>,  <37.932442, 35.748917, 25.799622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975552, 35.984085, 25.820511>,  <38.047405, 36.376034, 25.855328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975552, 35.984085, 25.820511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848222, -0.109465, -0.518205,
		0.498249, -0.166916, 0.850816,
		-0.179631, -0.979876, -0.087041,
		37.921661, 35.690121, 25.794399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652580, 36.096592, 25.932894>,  <38.047405, 36.376034, 25.855328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652580, 36.096592, 25.932894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467911, 35.789078, 25.755884>,  <38.357109, 35.604568, 25.649677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467911, 35.789078, 25.755884>,  <38.652580, 36.096592, 25.932894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467911, 35.789078, 25.755884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832505, -0.203280, -0.515376,
		0.306256, -0.606340, 0.733865,
		-0.461673, -0.768784, -0.442526,
		38.329411, 35.558441, 25.623127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058208, 35.494934, 26.057085>,  <38.652580, 36.096592, 25.932894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058208, 35.494934, 26.057085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837250, 35.451363, 25.726511>,  <38.704674, 35.425220, 25.528168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837250, 35.451363, 25.726511>,  <39.058208, 35.494934, 26.057085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837250, 35.451363, 25.726511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818329, -0.259652, -0.512756,
		-0.158729, -0.959539, 0.232574,
		-0.552397, -0.108932, -0.826433,
		38.671532, 35.418682, 25.478580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409859, 35.001766, 25.746401>,  <39.058208, 35.494934, 26.057085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409859, 35.001766, 25.746401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172733, 35.116909, 25.445545>,  <39.030457, 35.185993, 25.265032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172733, 35.116909, 25.445545>,  <39.409859, 35.001766, 25.746401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172733, 35.116909, 25.445545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786240, 0.004682, -0.617903,
		-0.174344, -0.957663, -0.229098,
		-0.592816, 0.287854, -0.752137,
		38.994888, 35.203266, 25.219904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695648, 34.634403, 25.219837>,  <39.409859, 35.001766, 25.746401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695648, 34.634403, 25.219837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458023, 34.895729, 25.032106>,  <39.315449, 35.052525, 24.919468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458023, 34.895729, 25.032106>,  <39.695648, 34.634403, 25.219837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458023, 34.895729, 25.032106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710155, 0.151881, -0.687468,
		-0.377852, -0.741693, -0.554182,
		-0.594060, 0.653317, -0.469329,
		39.279804, 35.091724, 24.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578953, 34.423840, 24.477989>,  <39.695648, 34.634403, 25.219837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578953, 34.423840, 24.477989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524445, 34.819641, 24.497190>,  <39.491741, 35.057121, 24.508711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524445, 34.819641, 24.497190>,  <39.578953, 34.423840, 24.477989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524445, 34.819641, 24.497190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679331, 0.128603, -0.722475,
		-0.721068, -0.065842, -0.689728,
		-0.136270, 0.989508, 0.048003,
		39.483562, 35.116493, 24.511591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606316, 34.616734, 23.813543>,  <39.578953, 34.423840, 24.477989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606316, 34.616734, 23.813543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672626, 34.947090, 24.029106>,  <39.712414, 35.145306, 24.158443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672626, 34.947090, 24.029106>,  <39.606316, 34.616734, 23.813543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672626, 34.947090, 24.029106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724161, 0.268994, -0.635007,
		-0.669410, 0.495525, -0.553485,
		0.165778, 0.825892, 0.538907,
		39.722359, 35.194859, 24.190779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842056, 35.185333, 23.300768>,  <39.606316, 34.616734, 23.813543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842056, 35.185333, 23.300768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963512, 35.354946, 23.642057>,  <40.036388, 35.456715, 23.846832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963512, 35.354946, 23.642057>,  <39.842056, 35.185333, 23.300768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963512, 35.354946, 23.642057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779739, 0.404037, -0.478290,
		-0.547547, 0.810523, -0.207954,
		0.303644, 0.424036, 0.853225,
		40.054607, 35.482159, 23.898026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203770, 35.861111, 23.166784>,  <39.842056, 35.185333, 23.300768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203770, 35.861111, 23.166784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345840, 35.730740, 23.517241>,  <40.431084, 35.652515, 23.727514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345840, 35.730740, 23.517241>,  <40.203770, 35.861111, 23.166784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345840, 35.730740, 23.517241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925319, 0.255719, -0.279985,
		-0.132790, 0.910153, 0.392414,
		0.355177, -0.325929, 0.876139,
		40.452393, 35.632961, 23.780083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654305, 36.378300, 23.396820>,  <40.203770, 35.861111, 23.166784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654305, 36.378300, 23.396820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772789, 36.087673, 23.644810>,  <40.843880, 35.913300, 23.793604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772789, 36.087673, 23.644810>,  <40.654305, 36.378300, 23.396820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772789, 36.087673, 23.644810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955122, 0.226472, -0.190925,
		-0.001688, 0.648706, 0.761038,
		0.296207, -0.726562, 0.619975,
		40.861652, 35.869705, 23.830803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200951, 36.650833, 23.714130>,  <40.654305, 36.378300, 23.396820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200951, 36.650833, 23.714130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269325, 36.258976, 23.756224>,  <41.310352, 36.023861, 23.781479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269325, 36.258976, 23.756224>,  <41.200951, 36.650833, 23.714130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269325, 36.258976, 23.756224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961432, 0.142490, -0.235254,
		0.215471, 0.141389, 0.966220,
		0.170940, -0.979646, 0.105233,
		41.320606, 35.965084, 23.787794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817146, 36.580479, 23.992662>,  <41.200951, 36.650833, 23.714130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817146, 36.580479, 23.992662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776443, 36.208771, 23.850620>,  <41.752022, 35.985744, 23.765394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776443, 36.208771, 23.850620>,  <41.817146, 36.580479, 23.992662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776443, 36.208771, 23.850620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906405, 0.060496, -0.418055,
		0.409969, -0.364412, 0.836139,
		-0.101762, -0.929271, -0.355106,
		41.745914, 35.929989, 23.744089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421494, 36.296608, 24.210741>,  <41.817146, 36.580479, 23.992662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421494, 36.296608, 24.210741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273472, 36.083641, 23.906218>,  <42.184658, 35.955860, 23.723503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273472, 36.083641, 23.906218>,  <42.421494, 36.296608, 24.210741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273472, 36.083641, 23.906218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918388, -0.086079, -0.386205,
		0.140090, -0.842094, 0.520820,
		-0.370052, -0.532418, -0.761310,
		42.162457, 35.923916, 23.677824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884731, 35.660164, 24.161665>,  <42.421494, 36.296608, 24.210741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884731, 35.660164, 24.161665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731800, 35.731480, 23.799000>,  <42.640041, 35.774269, 23.581402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731800, 35.731480, 23.799000>,  <42.884731, 35.660164, 24.161665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731800, 35.731480, 23.799000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922519, 0.017649, -0.385548,
		-0.052739, -0.983819, -0.171226,
		-0.382332, 0.178293, -0.906661,
		42.617100, 35.784969, 23.527002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377396, 35.047878, 24.327637>,  <42.884731, 35.660164, 24.161665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377396, 35.047878, 24.327637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772114, 35.039635, 24.391890>,  <43.008945, 35.034687, 24.430441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772114, 35.039635, 24.391890>,  <42.377396, 35.047878, 24.327637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772114, 35.039635, 24.391890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127700, -0.709038, 0.693511,
		0.099603, -0.704869, -0.702310,
		0.986799, -0.020609, 0.160635,
		43.068153, 35.033451, 24.440081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409966, 34.397640, 24.365963>,  <42.377396, 35.047878, 24.327637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409966, 34.397640, 24.365963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734985, 34.561188, 24.532135>,  <42.930000, 34.659317, 24.631838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734985, 34.561188, 24.532135>,  <42.409966, 34.397640, 24.365963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734985, 34.561188, 24.532135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079774, -0.628003, 0.774112,
		0.577401, -0.662148, -0.477669,
		0.812554, 0.408867, 0.415431,
		42.978752, 34.683849, 24.656765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732376, 33.827145, 24.668201>,  <42.409966, 34.397640, 24.365963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732376, 33.827145, 24.668201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851997, 34.169117, 24.837751>,  <42.923771, 34.374298, 24.939482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851997, 34.169117, 24.837751>,  <42.732376, 33.827145, 24.668201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851997, 34.169117, 24.837751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091406, -0.416495, 0.904531,
		0.949850, -0.309244, -0.046407,
		0.299049, 0.854927, 0.423874,
		42.941711, 34.425594, 24.964914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136749, 33.599152, 25.198944>,  <42.732376, 33.827145, 24.668201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136749, 33.599152, 25.198944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054153, 33.975670, 25.305775>,  <43.004597, 34.201580, 25.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054153, 33.975670, 25.305775>,  <43.136749, 33.599152, 25.198944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054153, 33.975670, 25.305775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222193, -0.310937, 0.924093,
		0.952886, 0.131477, 0.273355,
		-0.206494, 0.941293, 0.267074,
		42.992207, 34.258057, 25.385897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478554, 33.731686, 25.879465>,  <43.136749, 33.599152, 25.198944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478554, 33.731686, 25.879465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181026, 33.996288, 25.841217>,  <43.002510, 34.155048, 25.818268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181026, 33.996288, 25.841217>,  <43.478554, 33.731686, 25.879465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181026, 33.996288, 25.841217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290092, -0.190629, 0.937820,
		0.602143, 0.725310, 0.333691,
		-0.743822, 0.661503, -0.095621,
		42.957878, 34.194740, 25.812531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539597, 34.180134, 26.440258>,  <43.478554, 33.731686, 25.879465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539597, 34.180134, 26.440258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159035, 34.218014, 26.323046>,  <42.930698, 34.240742, 26.252718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159035, 34.218014, 26.323046>,  <43.539597, 34.180134, 26.440258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159035, 34.218014, 26.323046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305010, -0.158596, 0.939050,
		0.042453, 0.982792, 0.179773,
		-0.951402, 0.094698, -0.293029,
		42.873615, 34.246422, 26.235138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355587, 34.570732, 26.991610>,  <43.539597, 34.180134, 26.440258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355587, 34.570732, 26.991610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023090, 34.438446, 26.812876>,  <42.823593, 34.359074, 26.705635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023090, 34.438446, 26.812876>,  <43.355587, 34.570732, 26.991610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023090, 34.438446, 26.812876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408852, -0.180916, 0.894489,
		-0.376661, 0.926227, 0.015171,
		-0.831244, -0.330716, -0.446833,
		42.773716, 34.339230, 26.678825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745480, 34.847298, 27.302828>,  <43.355587, 34.570732, 26.991610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745480, 34.847298, 27.302828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580837, 34.531178, 27.121273>,  <42.482052, 34.341507, 27.012341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580837, 34.531178, 27.121273>,  <42.745480, 34.847298, 27.302828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580837, 34.531178, 27.121273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654585, -0.090162, 0.750593,
		-0.634115, 0.606054, -0.480205,
		-0.411604, -0.790297, -0.453887,
		42.457355, 34.294090, 26.985107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123173, 34.908974, 27.433498>,  <42.745480, 34.847298, 27.302828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123173, 34.908974, 27.433498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128681, 34.516998, 27.353964>,  <42.131985, 34.281815, 27.306242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128681, 34.516998, 27.353964>,  <42.123173, 34.908974, 27.433498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128681, 34.516998, 27.353964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721343, -0.147444, 0.676701,
		-0.692441, 0.134114, -0.708900,
		0.013768, -0.979936, -0.198839,
		42.132812, 34.223019, 27.294312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572079, 34.780827, 27.109785>,  <42.123173, 34.908974, 27.433498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572079, 34.780827, 27.109785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691372, 34.427029, 27.253302>,  <41.762947, 34.214752, 27.339413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691372, 34.427029, 27.253302>,  <41.572079, 34.780827, 27.109785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691372, 34.427029, 27.253302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909558, -0.149369, 0.387805,
		-0.289418, -0.441999, -0.849043,
		0.298230, -0.884492, 0.358793,
		41.780842, 34.161682, 27.360939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987324, 34.342052, 26.940250>,  <41.572079, 34.780827, 27.109785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987324, 34.342052, 26.940250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191032, 34.154430, 27.228868>,  <41.313255, 34.041855, 27.402040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191032, 34.154430, 27.228868>,  <40.987324, 34.342052, 26.940250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191032, 34.154430, 27.228868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854208, -0.173440, 0.490151,
		-0.104764, -0.865970, -0.489000,
		0.509268, -0.469058, 0.721548,
		41.343811, 34.013714, 27.445333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551121, 33.706318, 27.076416>,  <40.987324, 34.342052, 26.940250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551121, 33.706318, 27.076416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813423, 33.732841, 27.377239>,  <40.970802, 33.748756, 27.557734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813423, 33.732841, 27.377239>,  <40.551121, 33.706318, 27.076416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813423, 33.732841, 27.377239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678602, -0.384808, 0.625637,
		0.330886, -0.920611, -0.207339,
		0.655754, 0.066313, 0.752056,
		41.010151, 33.752735, 27.602856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469540, 33.135666, 27.477377>,  <40.551121, 33.706318, 27.076416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469540, 33.135666, 27.477377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668064, 33.397129, 27.705902>,  <40.787178, 33.554008, 27.843018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668064, 33.397129, 27.705902>,  <40.469540, 33.135666, 27.477377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668064, 33.397129, 27.705902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511811, -0.311247, 0.800734,
		0.701229, -0.689819, 0.180076,
		0.496313, 0.653663, 0.571313,
		40.816959, 33.593227, 27.877296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701435, 32.766914, 28.131809>,  <40.469540, 33.135666, 27.477377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701435, 32.766914, 28.131809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658989, 33.162453, 28.173597>,  <40.633522, 33.399776, 28.198671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658989, 33.162453, 28.173597>,  <40.701435, 32.766914, 28.131809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658989, 33.162453, 28.173597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763211, -0.148347, 0.628890,
		0.637376, -0.012997, 0.770443,
		-0.106120, 0.988850, 0.104472,
		40.627151, 33.459106, 28.204939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612244, 32.902401, 28.859133>,  <40.701435, 32.766914, 28.131809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612244, 32.902401, 28.859133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485016, 33.238007, 28.682550>,  <40.408680, 33.439369, 28.576601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485016, 33.238007, 28.682550>,  <40.612244, 32.902401, 28.859133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485016, 33.238007, 28.682550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682813, 0.120305, 0.720619,
		0.657721, 0.530640, 0.534626,
		-0.318071, 0.839016, -0.441455,
		40.389595, 33.489712, 28.550114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195442, 33.148521, 29.352341>,  <40.612244, 32.902401, 28.859133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195442, 33.148521, 29.352341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114307, 33.399639, 29.051744>,  <40.065628, 33.550308, 28.871387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114307, 33.399639, 29.051744>,  <40.195442, 33.148521, 29.352341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114307, 33.399639, 29.051744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830420, 0.296398, 0.471753,
		0.518902, 0.719741, 0.461209,
		-0.202838, 0.627791, -0.751489,
		40.053455, 33.587975, 28.826298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122948, 33.826714, 29.708988>,  <40.195442, 33.148521, 29.352341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122948, 33.826714, 29.708988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908150, 33.843746, 29.371983>,  <39.779270, 33.853966, 29.169779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908150, 33.843746, 29.371983>,  <40.122948, 33.826714, 29.708988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908150, 33.843746, 29.371983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827807, 0.165671, 0.535993,
		0.162402, 0.985261, -0.053716,
		-0.536992, 0.042580, -0.842512,
		39.747051, 33.856522, 29.119228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781841, 34.557747, 29.642765>,  <40.122948, 33.826714, 29.708988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781841, 34.557747, 29.642765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581436, 34.296288, 29.415880>,  <39.461193, 34.139412, 29.279751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581436, 34.296288, 29.415880>,  <39.781841, 34.557747, 29.642765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581436, 34.296288, 29.415880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832279, 0.184218, 0.522854,
		-0.237274, 0.734033, -0.636315,
		-0.501013, -0.653651, -0.567210,
		39.431133, 34.100193, 29.245718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132904, 34.881855, 29.519918>,  <39.781841, 34.557747, 29.642765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132904, 34.881855, 29.519918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107727, 34.485374, 29.473339>,  <39.092621, 34.247486, 29.445391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107727, 34.485374, 29.473339>,  <39.132904, 34.881855, 29.519918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107727, 34.485374, 29.473339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821339, -0.014842, 0.570247,
		-0.566957, 0.131534, -0.813178,
		-0.062938, -0.991200, -0.116449,
		39.088844, 34.188015, 29.438404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412338, 34.788189, 29.258156>,  <39.132904, 34.881855, 29.519918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412338, 34.788189, 29.258156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544685, 34.442413, 29.409563>,  <38.624096, 34.234947, 29.500408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544685, 34.442413, 29.409563>,  <38.412338, 34.788189, 29.258156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544685, 34.442413, 29.409563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871759, -0.126406, 0.473347,
		-0.361331, -0.486594, -0.795403,
		0.330872, -0.864435, 0.378518,
		38.643948, 34.183083, 29.523119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791534, 34.283428, 29.226088>,  <38.412338, 34.788189, 29.258156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791534, 34.283428, 29.226088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051353, 34.141407, 29.495018>,  <38.207245, 34.056194, 29.656376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051353, 34.141407, 29.495018>,  <37.791534, 34.283428, 29.226088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051353, 34.141407, 29.495018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692677, 0.088266, 0.715826,
		-0.313503, -0.930668, -0.188607,
		0.649549, -0.355058, 0.672324,
		38.246220, 34.034889, 29.696714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380310, 33.798309, 29.604876>,  <37.791534, 34.283428, 29.226088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380310, 33.798309, 29.604876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698116, 33.857780, 29.840382>,  <37.888798, 33.893463, 29.981686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698116, 33.857780, 29.840382>,  <37.380310, 33.798309, 29.604876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698116, 33.857780, 29.840382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577866, -0.112836, 0.808294,
		0.186609, -0.982427, -0.003734,
		0.794512, 0.148677, 0.588767,
		37.936470, 33.902382, 30.017012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268074, 33.309547, 30.085413>,  <37.380310, 33.798309, 29.604876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268074, 33.309547, 30.085413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538155, 33.555920, 30.247766>,  <37.700203, 33.703743, 30.345179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538155, 33.555920, 30.247766>,  <37.268074, 33.309547, 30.085413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538155, 33.555920, 30.247766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429813, -0.118668, 0.895086,
		0.599474, -0.778814, 0.184609,
		0.675198, 0.615928, 0.405883,
		37.740715, 33.740700, 30.369532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490578, 32.950916, 30.764854>,  <37.268074, 33.309547, 30.085413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490578, 32.950916, 30.764854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536263, 33.348297, 30.766411>,  <37.563675, 33.586723, 30.767345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536263, 33.348297, 30.766411>,  <37.490578, 32.950916, 30.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536263, 33.348297, 30.766411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479887, 0.051741, 0.875803,
		0.869864, -0.101898, 0.482653,
		0.114216, 0.993448, 0.003892,
		37.570526, 33.646332, 30.767578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626881, 33.128933, 31.486853>,  <37.490578, 32.950916, 30.764854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626881, 33.128933, 31.486853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487221, 33.456467, 31.304598>,  <37.403423, 33.652988, 31.195246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487221, 33.456467, 31.304598>,  <37.626881, 33.128933, 31.486853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487221, 33.456467, 31.304598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587999, 0.187149, 0.786913,
		0.729623, 0.542666, 0.416130,
		-0.349153, 0.818834, -0.455635,
		37.382477, 33.702118, 31.167908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466167, 33.478046, 32.039188>,  <37.626881, 33.128933, 31.486853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466167, 33.478046, 32.039188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323059, 33.708813, 31.745476>,  <37.237194, 33.847275, 31.569248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323059, 33.708813, 31.745476>,  <37.466167, 33.478046, 32.039188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323059, 33.708813, 31.745476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690796, 0.365583, 0.623818,
		0.628333, 0.730420, 0.267739,
		-0.357769, 0.576918, -0.734280,
		37.215729, 33.881889, 31.525192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320076, 34.143459, 32.344067>,  <37.466167, 33.478046, 32.039188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320076, 34.143459, 32.344067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075527, 34.122742, 32.028206>,  <36.928799, 34.110310, 31.838690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075527, 34.122742, 32.028206>,  <37.320076, 34.143459, 32.344067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075527, 34.122742, 32.028206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741845, 0.384897, 0.549108,
		0.275492, 0.921505, -0.273740,
		-0.611367, -0.051798, -0.789650,
		36.892117, 34.107201, 31.791311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005997, 34.874111, 32.297726>,  <37.320076, 34.143459, 32.344067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005997, 34.874111, 32.297726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795738, 34.585835, 32.116928>,  <36.669582, 34.412868, 32.008450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795738, 34.585835, 32.116928>,  <37.005997, 34.874111, 32.297726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795738, 34.585835, 32.116928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764350, 0.166861, 0.622837,
		-0.373455, 0.672872, -0.638572,
		-0.525643, -0.720694, -0.451995,
		36.638046, 34.369625, 31.981329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439651, 35.157429, 32.173603>,  <37.005997, 34.874111, 32.297726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439651, 35.157429, 32.173603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334988, 34.772060, 32.150452>,  <36.272190, 34.540840, 32.136562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334988, 34.772060, 32.150452>,  <36.439651, 35.157429, 32.173603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334988, 34.772060, 32.150452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680851, 0.141745, 0.718576,
		-0.684090, 0.227424, -0.693036,
		-0.261655, -0.963425, -0.057876,
		36.256493, 34.483032, 32.133087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754768, 35.137295, 32.169418>,  <36.439651, 35.157429, 32.173603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754768, 35.137295, 32.169418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854404, 34.765545, 32.278393>,  <35.914185, 34.542496, 32.343777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854404, 34.765545, 32.278393>,  <35.754768, 35.137295, 32.169418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854404, 34.765545, 32.278393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695224, 0.024258, 0.718384,
		-0.674255, -0.368346, -0.640079,
		0.249087, -0.929372, 0.272439,
		35.929131, 34.486732, 32.360123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124214, 34.874401, 32.353153>,  <35.754768, 35.137295, 32.169418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124214, 34.874401, 32.353153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384926, 34.620029, 32.518456>,  <35.541351, 34.467407, 32.617638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384926, 34.620029, 32.518456>,  <35.124214, 34.874401, 32.353153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384926, 34.620029, 32.518456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575742, -0.060202, 0.815412,
		-0.493667, -0.769394, -0.405371,
		0.651777, -0.635931, 0.413253,
		35.580460, 34.429249, 32.642433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781052, 34.305748, 32.665703>,  <35.124214, 34.874401, 32.353153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781052, 34.305748, 32.665703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120808, 34.312759, 32.876690>,  <35.324661, 34.316967, 33.003281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120808, 34.312759, 32.876690>,  <34.781052, 34.305748, 32.665703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120808, 34.312759, 32.876690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525356, -0.067169, 0.848227,
		0.050295, -0.997588, -0.047845,
		0.849395, 0.017526, 0.527467,
		35.375626, 34.318016, 33.034931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780106, 33.718571, 33.134491>,  <34.781052, 34.305748, 32.665703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780106, 33.718571, 33.134491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049946, 33.969795, 33.289646>,  <35.211849, 34.120529, 33.382740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049946, 33.969795, 33.289646>,  <34.780106, 33.718571, 33.134491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049946, 33.969795, 33.289646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392034, -0.140422, 0.909170,
		0.625482, -0.765390, 0.151494,
		0.674597, 0.628061, 0.387890,
		35.252323, 34.158215, 33.406013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148441, 33.275524, 33.571934>,  <34.780106, 33.718571, 33.134491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148441, 33.275524, 33.571934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189217, 33.659100, 33.677799>,  <35.213684, 33.889244, 33.741318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189217, 33.659100, 33.677799>,  <35.148441, 33.275524, 33.571934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189217, 33.659100, 33.677799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382202, -0.207874, 0.900395,
		0.918439, -0.192942, 0.345317,
		0.101942, 0.958938, 0.264663,
		35.219799, 33.946781, 33.757198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415554, 33.243458, 34.152596>,  <35.148441, 33.275524, 33.571934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415554, 33.243458, 34.152596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290813, 33.623413, 34.161243>,  <35.215969, 33.851387, 34.166431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290813, 33.623413, 34.161243>,  <35.415554, 33.243458, 34.152596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290813, 33.623413, 34.161243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241696, -0.101314, 0.965048,
		0.918876, 0.295724, 0.261178,
		-0.311849, 0.949886, 0.021619,
		35.197258, 33.908379, 34.167728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830753, 33.614674, 34.718201>,  <35.415554, 33.243458, 34.152596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830753, 33.614674, 34.718201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471050, 33.781651, 34.665924>,  <35.255230, 33.881836, 34.634560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471050, 33.781651, 34.665924>,  <35.830753, 33.614674, 34.718201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471050, 33.781651, 34.665924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240144, -0.221424, 0.945147,
		0.365609, 0.881313, 0.299363,
		-0.899256, 0.417444, -0.130687,
		35.201275, 33.906883, 34.626717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803581, 33.961277, 35.263290>,  <35.830753, 33.614674, 34.718201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803581, 33.961277, 35.263290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424809, 33.952328, 35.135029>,  <35.197544, 33.946960, 35.058071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424809, 33.952328, 35.135029>,  <35.803581, 33.961277, 35.263290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424809, 33.952328, 35.135029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317202, -0.096306, 0.943455,
		-0.051986, 0.995100, 0.084100,
		-0.946932, -0.022370, -0.320655,
		35.140728, 33.945618, 35.038834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480461, 34.426994, 35.722805>,  <35.803581, 33.961277, 35.263290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480461, 34.426994, 35.722805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170334, 34.234215, 35.559536>,  <34.984257, 34.118546, 35.461575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170334, 34.234215, 35.559536>,  <35.480461, 34.426994, 35.722805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170334, 34.234215, 35.559536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406326, -0.114133, 0.906572,
		-0.483506, 0.868735, -0.107338,
		-0.775320, -0.481948, -0.408174,
		34.937737, 34.089630, 35.437084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951984, 34.733898, 36.103977>,  <35.480461, 34.426994, 35.722805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951984, 34.733898, 36.103977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801998, 34.406609, 35.929661>,  <34.712006, 34.210236, 35.825073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801998, 34.406609, 35.929661>,  <34.951984, 34.733898, 36.103977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801998, 34.406609, 35.929661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428689, -0.263764, 0.864092,
		-0.821965, 0.510822, -0.251861,
		-0.374965, -0.818223, -0.435789,
		34.689510, 34.161140, 35.798923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312946, 34.648510, 36.345112>,  <34.951984, 34.733898, 36.103977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312946, 34.648510, 36.345112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430443, 34.285465, 36.225140>,  <34.500942, 34.067638, 36.153156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430443, 34.285465, 36.225140>,  <34.312946, 34.648510, 36.345112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430443, 34.285465, 36.225140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249954, -0.375785, 0.892361,
		-0.922626, -0.187156, -0.337245,
		0.293742, -0.907611, -0.299929,
		34.518566, 34.013184, 36.135162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789585, 34.230171, 36.528969>,  <34.312946, 34.648510, 36.345112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789585, 34.230171, 36.528969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129292, 34.021133, 36.498917>,  <34.333115, 33.895710, 36.480885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129292, 34.021133, 36.498917>,  <33.789585, 34.230171, 36.528969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129292, 34.021133, 36.498917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006217, -0.132398, 0.991177,
		-0.527934, -0.842237, -0.109191,
		0.849263, -0.522597, -0.075134,
		34.384071, 33.864353, 36.476376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684891, 33.563622, 36.942429>,  <33.789585, 34.230171, 36.528969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684891, 33.563622, 36.942429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077599, 33.638664, 36.930214>,  <34.313225, 33.683689, 36.922886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077599, 33.638664, 36.930214>,  <33.684891, 33.563622, 36.942429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077599, 33.638664, 36.930214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049160, -0.095422, 0.994222,
		0.183611, -0.977598, -0.102905,
		0.981769, 0.187609, -0.030539,
		34.372128, 33.694946, 36.921051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002602, 33.180687, 37.432316>,  <33.684891, 33.563622, 36.942429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002602, 33.180687, 37.432316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217079, 33.514622, 37.382454>,  <34.345764, 33.714985, 37.352539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217079, 33.514622, 37.382454>,  <34.002602, 33.180687, 37.432316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217079, 33.514622, 37.382454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125851, 0.225090, 0.966176,
		0.834661, -0.502369, 0.225757,
		0.536193, 0.834841, -0.124650,
		34.377937, 33.765076, 37.345058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500648, 33.336189, 38.037975>,  <34.002602, 33.180687, 37.432316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500648, 33.336189, 38.037975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422070, 33.683662, 37.856071>,  <34.374924, 33.892147, 37.746929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422070, 33.683662, 37.856071>,  <34.500648, 33.336189, 38.037975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422070, 33.683662, 37.856071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266521, 0.399023, 0.877352,
		0.943598, 0.293552, 0.153137,
		-0.196444, 0.868682, -0.454755,
		34.363136, 33.944267, 37.719646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937748, 33.088867, 38.646275>,  <34.500648, 33.336189, 38.037975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937748, 33.088867, 38.646275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742805, 33.101536, 38.995327>,  <34.625839, 33.109138, 39.204758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742805, 33.101536, 38.995327>,  <34.937748, 33.088867, 38.646275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742805, 33.101536, 38.995327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487451, -0.839006, -0.241785,
		0.724483, -0.543199, 0.424334,
		-0.487356, 0.031673, 0.872628,
		34.596600, 33.111038, 39.257114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108509, 33.921764, 38.657299>,  <34.937748, 33.088867, 38.646275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108509, 33.921764, 38.657299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303982, 33.575405, 38.614559>,  <35.421265, 33.367588, 38.588917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303982, 33.575405, 38.614559>,  <35.108509, 33.921764, 38.657299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303982, 33.575405, 38.614559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870920, -0.491424, -0.000715,
		-0.051890, 0.093408, -0.994275,
		0.488677, -0.865897, -0.106851,
		35.450584, 33.315636, 38.582504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757141, 33.614185, 38.880035>,  <35.108509, 33.921764, 38.657299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757141, 33.614185, 38.880035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577118, 33.486225, 39.213528>,  <35.469105, 33.409447, 39.413624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577118, 33.486225, 39.213528>,  <35.757141, 33.614185, 38.880035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577118, 33.486225, 39.213528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736032, 0.661568, -0.143471,
		-0.505675, -0.678225, -0.533201,
		-0.450055, -0.319903, 0.833735,
		35.442101, 33.390255, 39.463650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689049, 32.794361, 39.015759>,  <35.757141, 33.614185, 38.880035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689049, 32.794361, 39.015759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834263, 32.586716, 38.706249>,  <35.921391, 32.462128, 38.520542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834263, 32.586716, 38.706249>,  <35.689049, 32.794361, 39.015759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834263, 32.586716, 38.706249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696859, -0.400005, 0.595302,
		-0.618541, -0.755329, 0.216531,
		0.363036, -0.519110, -0.773777,
		35.943172, 32.430981, 38.474117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961243, 32.093502, 39.300488>,  <35.689049, 32.794361, 39.015759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961243, 32.093502, 39.300488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144844, 32.169666, 38.953369>,  <36.255005, 32.215363, 38.745098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144844, 32.169666, 38.953369>,  <35.961243, 32.093502, 39.300488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144844, 32.169666, 38.953369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865922, -0.314379, 0.389030,
		-0.198741, -0.930005, -0.309178,
		0.459000, 0.190408, -0.867792,
		36.282543, 32.226788, 38.693031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434284, 31.470892, 39.054123>,  <35.961243, 32.093502, 39.300488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434284, 31.470892, 39.054123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543148, 31.845823, 38.967083>,  <36.608467, 32.070782, 38.914860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543148, 31.845823, 38.967083>,  <36.434284, 31.470892, 39.054123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543148, 31.845823, 38.967083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866299, -0.140234, 0.479438,
		0.418876, -0.318985, -0.850171,
		0.272157, 0.937327, -0.217596,
		36.624794, 32.127022, 38.901806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230038, 31.384451, 39.122116>,  <36.434284, 31.470892, 39.054123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230038, 31.384451, 39.122116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219849, 31.774855, 39.035625>,  <37.213734, 32.009098, 38.983730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219849, 31.774855, 39.035625>,  <37.230038, 31.384451, 39.122116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219849, 31.774855, 39.035625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795512, 0.150779, 0.586878,
		0.605402, -0.157063, -0.780269,
		-0.025471, 0.976011, -0.216227,
		37.212208, 32.067657, 38.970757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833813, 31.639952, 38.785603>,  <37.230038, 31.384451, 39.122116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833813, 31.639952, 38.785603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658089, 31.926350, 39.002621>,  <37.552654, 32.098190, 39.132832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658089, 31.926350, 39.002621>,  <37.833813, 31.639952, 38.785603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658089, 31.926350, 39.002621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817364, 0.067996, 0.572095,
		0.372726, 0.694786, -0.615100,
		-0.439308, 0.715995, 0.542549,
		37.526295, 32.141148, 39.165386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333694, 32.220131, 38.974590>,  <37.833813, 31.639952, 38.785603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333694, 32.220131, 38.974590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059498, 32.256596, 39.263531>,  <37.894981, 32.278473, 39.436893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059498, 32.256596, 39.263531>,  <38.333694, 32.220131, 38.974590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059498, 32.256596, 39.263531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723361, 0.198064, 0.661452,
		-0.082772, 0.975941, -0.201715,
		-0.685490, 0.091163, 0.722352,
		37.853851, 32.283943, 39.480236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686951, 32.610409, 39.391285>,  <38.333694, 32.220131, 38.974590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686951, 32.610409, 39.391285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377441, 32.488926, 39.613647>,  <38.191734, 32.416035, 39.747066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377441, 32.488926, 39.613647>,  <38.686951, 32.610409, 39.391285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377441, 32.488926, 39.613647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517338, 0.203453, 0.831245,
		-0.365560, 0.930788, -0.000305,
		-0.773775, -0.303712, 0.555906,
		38.145309, 32.397812, 39.780418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611412, 33.166405, 39.885078>,  <38.686951, 32.610409, 39.391285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611412, 33.166405, 39.885078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435989, 32.838089, 40.031487>,  <38.330738, 32.641098, 40.119331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435989, 32.838089, 40.031487>,  <38.611412, 33.166405, 39.885078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435989, 32.838089, 40.031487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457046, 0.146980, 0.877215,
		-0.773809, 0.551994, 0.310681,
		-0.438553, -0.820792, 0.366022,
		38.304424, 32.591850, 40.141293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569988, 33.297226, 40.577347>,  <38.611412, 33.166405, 39.885078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569988, 33.297226, 40.577347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479431, 32.907764, 40.588253>,  <38.425098, 32.674088, 40.594795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479431, 32.907764, 40.588253>,  <38.569988, 33.297226, 40.577347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479431, 32.907764, 40.588253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333934, -0.051289, 0.941200,
		-0.915006, 0.222184, 0.336748,
		-0.226391, -0.973655, 0.027265,
		38.411514, 32.615669, 40.596432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186085, 33.157135, 41.238964>,  <38.569988, 33.297226, 40.577347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186085, 33.157135, 41.238964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346127, 32.811832, 41.115868>,  <38.442150, 32.604649, 41.042011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346127, 32.811832, 41.115868>,  <38.186085, 33.157135, 41.238964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346127, 32.811832, 41.115868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332549, -0.176151, 0.926489,
		-0.854008, -0.473029, 0.216597,
		0.400102, -0.863258, -0.307740,
		38.466156, 32.552856, 41.023544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008625, 32.689003, 41.761642>,  <38.186085, 33.157135, 41.238964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008625, 32.689003, 41.761642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334335, 32.530296, 41.592159>,  <38.529762, 32.435074, 41.490471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334335, 32.530296, 41.592159>,  <38.008625, 32.689003, 41.761642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334335, 32.530296, 41.592159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257117, -0.407890, 0.876080,
		-0.520425, -0.822315, -0.230121,
		0.814278, -0.396766, -0.423707,
		38.578621, 32.411266, 41.465046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019749, 31.961351, 42.007202>,  <38.008625, 32.689003, 41.761642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019749, 31.961351, 42.007202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387630, 32.066936, 41.890949>,  <38.608360, 32.130287, 41.821198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387630, 32.066936, 41.890949>,  <38.019749, 31.961351, 42.007202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387630, 32.066936, 41.890949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375426, -0.374639, 0.847762,
		0.114893, -0.888803, -0.443655,
		0.919703, 0.263961, -0.290637,
		38.663540, 32.146126, 41.803757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295086, 31.532988, 42.445007>,  <38.019749, 31.961351, 42.007202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295086, 31.532988, 42.445007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551983, 31.807314, 42.308083>,  <38.706120, 31.971910, 42.225925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551983, 31.807314, 42.308083>,  <38.295086, 31.532988, 42.445007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551983, 31.807314, 42.308083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475097, -0.005716, 0.879915,
		0.601505, -0.727750, -0.329502,
		0.642242, 0.685818, -0.342314,
		38.744656, 32.013058, 42.205387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049545, 31.389082, 42.289188>,  <38.295086, 31.532988, 42.445007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049545, 31.389082, 42.289188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977715, 31.760649, 42.418720>,  <38.934616, 31.983589, 42.496441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977715, 31.760649, 42.418720>,  <39.049545, 31.389082, 42.289188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977715, 31.760649, 42.418720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594013, -0.160003, 0.788383,
		0.784156, 0.333935, -0.523056,
		-0.179578, 0.928917, 0.323829,
		38.923840, 32.039322, 42.515869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741566, 31.041660, 42.877056>,  <39.049545, 31.389082, 42.289188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741566, 31.041660, 42.877056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034382, 31.201424, 43.097813>,  <39.210072, 31.297281, 43.230267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034382, 31.201424, 43.097813>,  <38.741566, 31.041660, 42.877056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034382, 31.201424, 43.097813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099192, 0.738987, -0.666377,
		-0.673999, 0.542560, 0.501352,
		0.732043, 0.399407, 0.551894,
		39.253994, 31.321245, 43.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708675, 31.760094, 43.086243>,  <38.741566, 31.041660, 42.877056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708675, 31.760094, 43.086243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076820, 31.622667, 43.011513>,  <39.297707, 31.540211, 42.966675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076820, 31.622667, 43.011513>,  <38.708675, 31.760094, 43.086243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076820, 31.622667, 43.011513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134810, 0.727152, -0.673109,
		0.367107, 0.594316, 0.715556,
		0.920358, -0.343567, -0.186823,
		39.352928, 31.519598, 42.955467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302296, 32.246399, 43.230373>,  <38.708675, 31.760094, 43.086243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302296, 32.246399, 43.230373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336632, 31.982922, 42.931374>,  <39.357235, 31.824835, 42.751972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336632, 31.982922, 42.931374>,  <39.302296, 32.246399, 43.230373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336632, 31.982922, 42.931374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000922, 0.750322, -0.661072,
		0.996308, 0.056058, 0.065017,
		0.085842, -0.658691, -0.747501,
		39.362385, 31.785315, 42.707123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561554, 32.716656, 42.666298>,  <39.302296, 32.246399, 43.230373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561554, 32.716656, 42.666298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434513, 32.375278, 42.500999>,  <39.358288, 32.170452, 42.401821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434513, 32.375278, 42.500999>,  <39.561554, 32.716656, 42.666298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434513, 32.375278, 42.500999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074280, 0.456864, -0.886430,
		0.945311, -0.250832, -0.208493,
		-0.317598, -0.853439, -0.413247,
		39.339233, 32.119247, 42.377026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780540, 32.828014, 41.985096>,  <39.561554, 32.716656, 42.666298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780540, 32.828014, 41.985096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540340, 32.509624, 41.954582>,  <39.396221, 32.318592, 41.936272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540340, 32.509624, 41.954582>,  <39.780540, 32.828014, 41.985096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540340, 32.509624, 41.954582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174257, 0.223381, -0.959028,
		0.780403, -0.562607, -0.272845,
		-0.600504, -0.795974, -0.076289,
		39.360188, 32.270832, 41.931694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860897, 32.431236, 41.278023>,  <39.780540, 32.828014, 41.985096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860897, 32.431236, 41.278023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507889, 32.333775, 41.438911>,  <39.296082, 32.275299, 41.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507889, 32.333775, 41.438911>,  <39.860897, 32.431236, 41.278023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507889, 32.333775, 41.438911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467850, 0.368226, -0.803447,
		0.047653, -0.897241, -0.438961,
		-0.882522, -0.243655, 0.402227,
		39.243134, 32.260677, 41.559578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657993, 31.966484, 40.862328>,  <39.860897, 32.431236, 41.278023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657993, 31.966484, 40.862328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332306, 32.099922, 41.052387>,  <39.136894, 32.179985, 41.166424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332306, 32.099922, 41.052387>,  <39.657993, 31.966484, 40.862328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332306, 32.099922, 41.052387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466003, 0.112591, -0.877590,
		-0.346258, -0.935969, 0.063784,
		-0.814215, 0.333596, 0.475150,
		39.088039, 32.200001, 41.194931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158161, 31.577343, 40.623867>,  <39.657993, 31.966484, 40.862328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158161, 31.577343, 40.623867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938915, 31.891596, 40.738655>,  <38.807365, 32.080147, 40.807526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938915, 31.891596, 40.738655>,  <39.158161, 31.577343, 40.623867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938915, 31.891596, 40.738655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614695, -0.145706, -0.775190,
		-0.567202, -0.601292, 0.562788,
		-0.548117, 0.785632, 0.286967,
		38.774479, 32.127285, 40.824745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489571, 31.377125, 40.461361>,  <39.158161, 31.577343, 40.623867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489571, 31.377125, 40.461361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427105, 31.764656, 40.538284>,  <38.389626, 31.997175, 40.584438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427105, 31.764656, 40.538284>,  <38.489571, 31.377125, 40.461361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427105, 31.764656, 40.538284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754864, 0.008499, -0.655826,
		-0.637018, -0.247583, 0.730007,
		-0.156167, 0.968830, 0.192305,
		38.380257, 32.055305, 40.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749100, 31.544014, 40.702797>,  <38.489571, 31.377125, 40.461361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749100, 31.544014, 40.702797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905926, 31.864683, 40.522305>,  <38.000023, 32.057083, 40.414009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905926, 31.864683, 40.522305>,  <37.749100, 31.544014, 40.702797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905926, 31.864683, 40.522305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764960, 0.011646, -0.643972,
		-0.510999, 0.597651, 0.617813,
		0.392066, 0.801672, -0.451228,
		38.023544, 32.105186, 40.386936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190674, 32.035736, 40.587383>,  <37.749100, 31.544014, 40.702797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190674, 32.035736, 40.587383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491207, 32.151817, 40.350307>,  <37.671528, 32.221466, 40.208061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491207, 32.151817, 40.350307>,  <37.190674, 32.035736, 40.587383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491207, 32.151817, 40.350307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653043, 0.197570, -0.731095,
		-0.095067, 0.936349, 0.337955,
		0.751330, 0.290202, -0.592694,
		37.716606, 32.238876, 40.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334682, 32.815445, 40.424114>,  <37.190674, 32.035736, 40.587383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334682, 32.815445, 40.424114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423794, 32.574867, 40.117226>,  <37.477261, 32.430519, 39.933090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423794, 32.574867, 40.117226>,  <37.334682, 32.815445, 40.424114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423794, 32.574867, 40.117226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785021, 0.355956, -0.506988,
		0.578023, 0.715235, -0.392846,
		0.222779, -0.601443, -0.767226,
		37.490627, 32.394436, 39.887058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924210, 33.040543, 39.891338>,  <37.334682, 32.815445, 40.424114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924210, 33.040543, 39.891338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076160, 32.721966, 39.703140>,  <37.167332, 32.530819, 39.590221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076160, 32.721966, 39.703140>,  <36.924210, 33.040543, 39.891338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076160, 32.721966, 39.703140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677618, 0.106644, -0.727640,
		0.629702, 0.595232, -0.499174,
		0.379881, -0.796446, -0.470494,
		37.190125, 32.483032, 39.561993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984970, 33.299004, 39.262573>,  <36.924210, 33.040543, 39.891338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984970, 33.299004, 39.262573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009155, 32.903942, 39.204762>,  <37.023666, 32.666904, 39.170074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009155, 32.903942, 39.204762>,  <36.984970, 33.299004, 39.262573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009155, 32.903942, 39.204762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504284, 0.094733, -0.858326,
		0.861419, 0.124780, -0.492329,
		0.060462, -0.987652, -0.144530,
		37.027294, 32.607647, 39.161404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079704, 33.276848, 38.584980>,  <36.984970, 33.299004, 39.262573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079704, 33.276848, 38.584980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950584, 32.912640, 38.688328>,  <36.873112, 32.694115, 38.750336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950584, 32.912640, 38.688328>,  <37.079704, 33.276848, 38.584980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950584, 32.912640, 38.688328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529286, -0.052647, -0.846808,
		0.784637, -0.410104, -0.464930,
		-0.322802, -0.910518, 0.258371,
		36.853745, 32.639484, 38.765839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085625, 33.168877, 37.912724>,  <37.079704, 33.276848, 38.584980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085625, 33.168877, 37.912724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031246, 33.171593, 37.516445>,  <36.998619, 33.173222, 37.278679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031246, 33.171593, 37.516445>,  <37.085625, 33.168877, 37.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031246, 33.171593, 37.516445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693332, 0.714945, -0.090244,
		0.707678, -0.699148, -0.101901,
		-0.135947, 0.006788, -0.990693,
		36.990463, 33.173630, 37.219238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608215, 32.870491, 37.466885>,  <37.085625, 33.168877, 37.912724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608215, 32.870491, 37.466885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437119, 33.175777, 37.273167>,  <37.334461, 33.358948, 37.156937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437119, 33.175777, 37.273167>,  <37.608215, 32.870491, 37.466885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437119, 33.175777, 37.273167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894459, 0.434632, -0.105063,
		0.130303, -0.478119, -0.868575,
		-0.427743, 0.763215, -0.484292,
		37.308796, 33.404743, 37.127880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906456, 32.922539, 36.884811>,  <37.608215, 32.870491, 37.466885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906456, 32.922539, 36.884811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751171, 33.278934, 36.978992>,  <37.658001, 33.492771, 37.035503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751171, 33.278934, 36.978992>,  <37.906456, 32.922539, 36.884811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751171, 33.278934, 36.978992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856784, 0.443042, -0.263886,
		-0.339436, 0.099293, -0.935374,
		-0.388208, 0.890985, 0.235457,
		37.634708, 33.546230, 37.049629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882034, 33.418644, 36.336647>,  <37.906456, 32.922539, 36.884811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882034, 33.418644, 36.336647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937141, 33.630154, 36.671650>,  <37.970207, 33.757061, 36.872650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937141, 33.630154, 36.671650>,  <37.882034, 33.418644, 36.336647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937141, 33.630154, 36.671650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684704, 0.560140, -0.466286,
		-0.715682, 0.637684, -0.284885,
		0.137767, 0.528775, 0.837507,
		37.978470, 33.788788, 36.922901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714500, 34.229473, 36.179958>,  <37.882034, 33.418644, 36.336647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714500, 34.229473, 36.179958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003319, 34.096977, 36.422916>,  <38.176609, 34.017479, 36.568691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003319, 34.096977, 36.422916>,  <37.714500, 34.229473, 36.179958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003319, 34.096977, 36.422916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667671, 0.563658, -0.486318,
		-0.181273, 0.756684, 0.628148,
		0.722049, -0.331240, 0.607392,
		38.219933, 33.997604, 36.605133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046761, 34.801495, 36.467720>,  <37.714500, 34.229473, 36.179958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046761, 34.801495, 36.467720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312149, 34.502243, 36.472038>,  <38.471382, 34.322693, 36.474628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312149, 34.502243, 36.472038>,  <38.046761, 34.801495, 36.467720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312149, 34.502243, 36.472038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675873, 0.593082, -0.437548,
		0.320939, 0.297595, 0.899130,
		0.663471, -0.748125, 0.010793,
		38.511189, 34.277805, 36.475277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722454, 35.122585, 36.594345>,  <38.046761, 34.801495, 36.467720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722454, 35.122585, 36.594345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778667, 34.754993, 36.446983>,  <38.812397, 34.534439, 36.358566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778667, 34.754993, 36.446983>,  <38.722454, 35.122585, 36.594345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778667, 34.754993, 36.446983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731519, 0.347124, -0.586843,
		0.667180, -0.187021, 0.721037,
		0.140537, -0.918982, -0.368403,
		38.820827, 34.479298, 36.336464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408363, 34.877007, 36.544495>,  <38.722454, 35.122585, 36.594345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408363, 34.877007, 36.544495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253193, 34.621861, 36.278370>,  <39.160091, 34.468773, 36.118694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253193, 34.621861, 36.278370>,  <39.408363, 34.877007, 36.544495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253193, 34.621861, 36.278370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747240, 0.204922, -0.632170,
		0.539576, -0.742385, 0.397143,
		-0.387930, -0.637865, -0.665311,
		39.136814, 34.430500, 36.078777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864922, 34.771591, 37.142265>,  <39.408363, 34.877007, 36.544495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864922, 34.771591, 37.142265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217175, 34.928963, 37.036667>,  <40.428528, 35.023388, 36.973309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217175, 34.928963, 37.036667>,  <39.864922, 34.771591, 37.142265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217175, 34.928963, 37.036667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473665, -0.717924, 0.510124,
		0.011172, -0.574278, -0.818584,
		0.880634, 0.393434, -0.263995,
		40.481365, 35.046993, 36.957470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346371, 34.428535, 36.625935>,  <39.864922, 34.771591, 37.142265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346371, 34.428535, 36.625935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578278, 34.635742, 36.877499>,  <40.717422, 34.760067, 37.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578278, 34.635742, 36.877499>,  <40.346371, 34.428535, 36.625935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578278, 34.635742, 36.877499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341371, -0.855297, 0.389786,
		0.739824, -0.011291, -0.672706,
		0.579765, 0.518015, 0.628914,
		40.752209, 34.791145, 37.066174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013664, 34.250992, 36.552082>,  <40.346371, 34.428535, 36.625935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013664, 34.250992, 36.552082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963551, 34.385746, 36.925350>,  <40.933483, 34.466599, 37.149311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963551, 34.385746, 36.925350>,  <41.013664, 34.250992, 36.552082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963551, 34.385746, 36.925350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012209, -0.941038, 0.338082,
		0.992045, 0.030964, 0.122014,
		-0.125288, 0.336882, 0.933174,
		40.925964, 34.486809, 37.205303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493149, 34.310760, 37.157394>,  <41.013664, 34.250992, 36.552082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493149, 34.310760, 37.157394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269520, 34.005085, 37.028736>,  <41.135342, 33.821682, 36.951542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269520, 34.005085, 37.028736>,  <41.493149, 34.310760, 37.157394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269520, 34.005085, 37.028736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532582, 0.033670, 0.845708,
		-0.635449, 0.644115, -0.425816,
		-0.559071, -0.764187, -0.321649,
		41.101799, 33.775829, 36.932240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677681, 34.827869, 37.767456>,  <41.493149, 34.310760, 37.157394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677681, 34.827869, 37.767456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801533, 34.786854, 38.145580>,  <41.875843, 34.762245, 38.372456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801533, 34.786854, 38.145580>,  <41.677681, 34.827869, 37.767456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801533, 34.786854, 38.145580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926282, -0.192042, -0.324224,
		0.214785, 0.976015, 0.035517,
		0.309627, -0.102537, 0.945313,
		41.894421, 34.756092, 38.429173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329025, 35.242722, 37.778774>,  <41.677681, 34.827869, 37.767456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329025, 35.242722, 37.778774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292393, 34.959522, 38.058876>,  <42.270412, 34.789604, 38.226936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292393, 34.959522, 38.058876>,  <42.329025, 35.242722, 37.778774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292393, 34.959522, 38.058876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959971, -0.249699, -0.126912,
		0.264705, 0.660600, 0.702523,
		-0.091581, -0.707996, 0.700254,
		42.264919, 34.747124, 38.268951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844200, 35.329983, 38.437271>,  <42.329025, 35.242722, 37.778774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844200, 35.329983, 38.437271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744175, 34.957283, 38.331955>,  <42.684162, 34.733665, 38.268764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744175, 34.957283, 38.331955>,  <42.844200, 35.329983, 38.437271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744175, 34.957283, 38.331955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956518, -0.195556, -0.216405,
		0.150147, -0.305955, 0.940132,
		-0.250059, -0.931745, -0.263289,
		42.669159, 34.677761, 38.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197979, 34.774490, 38.756660>,  <42.844200, 35.329983, 38.437271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197979, 34.774490, 38.756660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121300, 34.683544, 38.374760>,  <43.075291, 34.628979, 38.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121300, 34.683544, 38.374760>,  <43.197979, 34.774490, 38.756660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121300, 34.683544, 38.374760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979513, -0.105464, -0.171556,
		-0.061687, -0.968082, 0.242923,
		-0.191700, -0.227363, -0.954755,
		43.063789, 34.615334, 38.088333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408794, 34.170155, 38.516987>,  <43.197979, 34.774490, 38.756660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408794, 34.170155, 38.516987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431786, 34.390087, 38.183666>,  <43.445580, 34.522045, 37.983673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431786, 34.390087, 38.183666>,  <43.408794, 34.170155, 38.516987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431786, 34.390087, 38.183666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988344, -0.149201, -0.030270,
		-0.140973, -0.821845, -0.551994,
		0.057481, 0.549827, -0.833298,
		43.449028, 34.555035, 37.933678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904205, 33.851658, 37.950634>,  <43.408794, 34.170155, 38.516987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904205, 33.851658, 37.950634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848351, 34.244953, 37.903755>,  <43.814838, 34.480930, 37.875626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848351, 34.244953, 37.903755>,  <43.904205, 33.851658, 37.950634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848351, 34.244953, 37.903755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957708, 0.104036, -0.268277,
		-0.251588, -0.149707, -0.956186,
		-0.139641, 0.983242, -0.117201,
		43.806458, 34.539925, 37.868595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486240, 33.803078, 37.553307>,  <43.904205, 33.851658, 37.950634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486240, 33.803078, 37.553307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508068, 33.599594, 37.896992>,  <44.521164, 33.477505, 38.103203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508068, 33.599594, 37.896992>,  <44.486240, 33.803078, 37.553307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508068, 33.599594, 37.896992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808109, -0.527930, -0.261246,
		0.586499, -0.680078, -0.439900,
		0.054569, -0.508708, 0.859208,
		44.524437, 33.446983, 38.154755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574558, 33.211956, 37.436260>,  <44.486240, 33.803078, 37.553307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574558, 33.211956, 37.436260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405304, 33.169140, 37.796150>,  <44.303749, 33.143452, 38.012085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405304, 33.169140, 37.796150>,  <44.574558, 33.211956, 37.436260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405304, 33.169140, 37.796150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789585, -0.443498, -0.424105,
		0.444421, -0.889860, 0.103143,
		-0.423138, -0.107041, 0.899720,
		44.278362, 33.137028, 38.066067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276344, 33.187336, 37.727840>,  <44.574558, 33.211956, 37.436260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276344, 33.187336, 37.727840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485413, 32.849258, 37.772503>,  <45.610855, 32.646412, 37.799301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485413, 32.849258, 37.772503>,  <45.276344, 33.187336, 37.727840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485413, 32.849258, 37.772503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810135, 0.451611, -0.373802,
		0.265506, 0.285836, 0.920763,
		0.522673, -0.845189, 0.111661,
		45.642216, 32.595703, 37.806000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791203, 33.215725, 38.405235>,  <45.276344, 33.187336, 37.727840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791203, 33.215725, 38.405235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897266, 32.987335, 38.094448>,  <45.960907, 32.850300, 37.907974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897266, 32.987335, 38.094448>,  <45.791203, 33.215725, 38.405235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897266, 32.987335, 38.094448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665103, 0.691725, -0.281345,
		0.698088, -0.442161, 0.563175,
		0.265162, -0.570973, -0.776968,
		45.976814, 32.816044, 37.861359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528927, 33.065514, 38.380531>,  <45.791203, 33.215725, 38.405235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528927, 33.065514, 38.380531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355606, 33.076237, 38.020191>,  <46.251614, 33.082672, 37.803986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355606, 33.076237, 38.020191>,  <46.528927, 33.065514, 38.380531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355606, 33.076237, 38.020191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620433, 0.733869, -0.276584,
		0.653691, -0.678762, -0.334620,
		-0.433302, 0.026809, -0.900850,
		46.225616, 33.084278, 37.749935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073971, 33.025414, 37.901844>,  <46.528927, 33.065514, 38.380531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073971, 33.025414, 37.901844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758099, 33.224556, 37.758434>,  <46.568573, 33.344040, 37.672390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758099, 33.224556, 37.758434>,  <47.073971, 33.025414, 37.901844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758099, 33.224556, 37.758434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603473, 0.735622, -0.307702,
		0.110545, -0.459346, -0.881352,
		-0.789684, 0.497857, -0.358522,
		46.521194, 33.373913, 37.650879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078442, 33.024166, 37.142944>,  <47.073971, 33.025414, 37.901844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078442, 33.024166, 37.142944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916325, 33.340008, 37.327236>,  <46.819054, 33.529510, 37.437813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916325, 33.340008, 37.327236>,  <47.078442, 33.024166, 37.142944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916325, 33.340008, 37.327236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541081, 0.613409, -0.575292,
		-0.736866, 0.016133, -0.675846,
		-0.405289, 0.789601, 0.460729,
		46.794739, 33.576889, 37.465454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771496, 33.510708, 36.611908>,  <47.078442, 33.024166, 37.142944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771496, 33.510708, 36.611908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919277, 33.674404, 36.945618>,  <47.007946, 33.772621, 37.145844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919277, 33.674404, 36.945618>,  <46.771496, 33.510708, 36.611908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919277, 33.674404, 36.945618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573707, 0.605806, -0.551234,
		-0.731001, 0.682288, -0.010968,
		0.369456, 0.409245, 0.834279,
		47.030113, 33.797176, 37.195900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227856, 33.825916, 37.068855>,  <46.771496, 33.510708, 36.611908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227856, 33.825916, 37.068855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899948, 34.008156, 36.930054>,  <45.703205, 34.117500, 36.846771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899948, 34.008156, 36.930054>,  <46.227856, 33.825916, 37.068855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899948, 34.008156, 36.930054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484251, 0.874916, 0.004718,
		0.305749, -0.164169, -0.937852,
		-0.819767, 0.455598, -0.347004,
		45.654018, 34.144836, 36.825951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459114, 34.154358, 36.474464>,  <46.227856, 33.825916, 37.068855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459114, 34.154358, 36.474464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139664, 34.348030, 36.617447>,  <45.947994, 34.464233, 36.703236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139664, 34.348030, 36.617447>,  <46.459114, 34.154358, 36.474464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139664, 34.348030, 36.617447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467652, 0.873102, -0.137819,
		-0.378822, 0.057098, -0.923707,
		-0.798621, 0.484182, 0.357452,
		45.900078, 34.493286, 36.724682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858131, 34.454865, 35.954666>,  <46.459114, 34.154358, 36.474464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.858131, 34.454865, 35.954666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931778, 34.341663, 35.578152>,  <46.975967, 34.273743, 35.352245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931778, 34.341663, 35.578152>,  <46.858131, 34.454865, 35.954666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931778, 34.341663, 35.578152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326894, 0.920770, -0.212892,
		0.926953, -0.268503, 0.262039,
		0.184116, -0.283000, -0.941282,
		46.987011, 34.256763, 35.295769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565960, 34.524204, 35.668087>,  <46.858131, 34.454865, 35.954666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565960, 34.524204, 35.668087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331993, 34.545033, 35.344318>,  <47.191612, 34.557529, 35.150059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331993, 34.545033, 35.344318>,  <47.565960, 34.524204, 35.668087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331993, 34.545033, 35.344318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440746, 0.858150, -0.263290,
		0.680895, -0.510752, -0.524894,
		-0.584914, 0.052072, -0.809422,
		47.156521, 34.560654, 35.101490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911549, 34.622005, 35.008392>,  <47.565960, 34.524204, 35.668087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911549, 34.622005, 35.008392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548222, 34.786980, 34.980515>,  <47.330227, 34.885963, 34.963787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548222, 34.786980, 34.980515>,  <47.911549, 34.622005, 35.008392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548222, 34.786980, 34.980515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415463, 0.870277, -0.264592,
		-0.048471, -0.269290, -0.961838,
		-0.908318, 0.412433, -0.069697,
		47.275726, 34.910709, 34.959606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.063118, 29.537632, 28.425230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763416, 29.396765, 28.200874>,  <38.583595, 29.312244, 28.066261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763416, 29.396765, 28.200874>,  <39.063118, 29.537632, 28.425230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763416, 29.396765, 28.200874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635658, 0.144682, 0.758292,
		-0.185894, 0.924687, -0.332260,
		-0.749255, -0.352166, -0.560889,
		38.538639, 29.291115, 28.032608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533066, 29.906919, 28.621206>,  <39.063118, 29.537632, 28.425230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533066, 29.906919, 28.621206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311199, 29.629314, 28.437601>,  <38.178082, 29.462751, 28.327438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311199, 29.629314, 28.437601>,  <38.533066, 29.906919, 28.621206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311199, 29.629314, 28.437601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635494, -0.002766, 0.772101,
		-0.537117, 0.719957, -0.439506,
		-0.554664, -0.694012, -0.459014,
		38.144798, 29.421110, 28.299896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825157, 30.149506, 28.554802>,  <38.533066, 29.906919, 28.621206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825157, 30.149506, 28.554802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821270, 29.749577, 28.548399>,  <37.818939, 29.509619, 28.544558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821270, 29.749577, 28.548399>,  <37.825157, 30.149506, 28.554802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821270, 29.749577, 28.548399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493824, -0.009121, 0.869514,
		-0.869508, 0.016353, -0.493648,
		-0.009717, -0.999825, -0.016006,
		37.818356, 29.449629, 28.543596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113159, 29.937656, 28.659578>,  <37.825157, 30.149506, 28.554802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113159, 29.937656, 28.659578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355431, 29.636314, 28.762032>,  <37.500793, 29.455509, 28.823503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355431, 29.636314, 28.762032>,  <37.113159, 29.937656, 28.659578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355431, 29.636314, 28.762032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415696, -0.025107, 0.909157,
		-0.678487, -0.657135, -0.328374,
		0.605683, -0.753355, 0.256134,
		37.537136, 29.410309, 28.838871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611019, 29.430376, 28.768316>,  <37.113159, 29.937656, 28.659578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611019, 29.430376, 28.768316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948463, 29.329346, 28.957855>,  <37.150928, 29.268728, 29.071579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948463, 29.329346, 28.957855>,  <36.611019, 29.430376, 28.768316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948463, 29.329346, 28.957855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503373, -0.064803, 0.861636,
		-0.186923, -0.965404, -0.181810,
		0.843608, -0.252578, 0.473845,
		37.201546, 29.253574, 29.100010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504902, 28.832424, 29.106855>,  <36.611019, 29.430376, 28.768316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504902, 28.832424, 29.106855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809666, 28.981464, 29.318766>,  <36.992523, 29.070889, 29.445911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809666, 28.981464, 29.318766>,  <36.504902, 28.832424, 29.106855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809666, 28.981464, 29.318766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452755, -0.278507, 0.847022,
		0.463147, -0.885213, -0.043501,
		0.761911, 0.372601, 0.529775,
		37.038239, 29.093245, 29.477697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738663, 28.305584, 29.660532>,  <36.504902, 28.832424, 29.106855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738663, 28.305584, 29.660532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892998, 28.654034, 29.782034>,  <36.985600, 28.863104, 29.854935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892998, 28.654034, 29.782034>,  <36.738663, 28.305584, 29.660532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892998, 28.654034, 29.782034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434076, -0.119109, 0.892968,
		0.814068, -0.476395, 0.332178,
		0.385839, 0.871126, 0.303755,
		37.008751, 28.915371, 29.873159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765079, 28.233980, 30.339008>,  <36.738663, 28.305584, 29.660532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765079, 28.233980, 30.339008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814964, 28.630791, 30.346319>,  <36.844894, 28.868877, 30.350706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814964, 28.630791, 30.346319>,  <36.765079, 28.233980, 30.339008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814964, 28.630791, 30.346319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632259, 0.065261, 0.772004,
		0.764654, -0.107836, 0.635355,
		0.124714, 0.992025, 0.018278,
		36.852379, 28.928398, 30.351803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978962, 28.438936, 31.012398>,  <36.765079, 28.233980, 30.339008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978962, 28.438936, 31.012398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856113, 28.783466, 30.850513>,  <36.782402, 28.990185, 30.753384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856113, 28.783466, 30.850513>,  <36.978962, 28.438936, 31.012398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856113, 28.783466, 30.850513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518446, 0.205187, 0.830128,
		0.798053, 0.464773, 0.383533,
		-0.307125, 0.861327, -0.404710,
		36.763977, 29.041864, 30.729101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989330, 28.903601, 31.600151>,  <36.978962, 28.438936, 31.012398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989330, 28.903601, 31.600151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779720, 29.102917, 31.323860>,  <36.653954, 29.222507, 31.158085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779720, 29.102917, 31.323860>,  <36.989330, 28.903601, 31.600151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779720, 29.102917, 31.323860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456667, 0.520180, 0.721712,
		0.718925, 0.693627, -0.045034,
		-0.524025, 0.498291, -0.690727,
		36.622513, 29.252403, 31.116642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065693, 29.581966, 31.803303>,  <36.989330, 28.903601, 31.600151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065693, 29.581966, 31.803303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734398, 29.558128, 31.580425>,  <36.535622, 29.543825, 31.446699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734398, 29.558128, 31.580425>,  <37.065693, 29.581966, 31.803303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734398, 29.558128, 31.580425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472973, 0.607588, 0.638070,
		0.300519, 0.792014, -0.531416,
		-0.828242, -0.059593, -0.557193,
		36.485924, 29.540251, 31.413267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859474, 30.190054, 31.754660>,  <37.065693, 29.581966, 31.803303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859474, 30.190054, 31.754660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514999, 30.015018, 31.651215>,  <36.308315, 29.909998, 31.589148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514999, 30.015018, 31.651215>,  <36.859474, 30.190054, 31.754660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514999, 30.015018, 31.651215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493073, 0.595599, 0.634145,
		-0.123465, 0.673630, -0.728683,
		-0.861182, -0.437589, -0.258613,
		36.256645, 29.883741, 31.573631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364864, 30.741631, 31.646601>,  <36.859474, 30.190054, 31.754660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364864, 30.741631, 31.646601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143562, 30.415359, 31.714218>,  <36.010780, 30.219597, 31.754789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143562, 30.415359, 31.714218>,  <36.364864, 30.741631, 31.646601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143562, 30.415359, 31.714218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473291, 0.474798, 0.741999,
		-0.685493, 0.330510, -0.648739,
		-0.553258, -0.815678, 0.169044,
		35.977585, 30.170656, 31.764931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727100, 31.020609, 31.708879>,  <36.364864, 30.741631, 31.646601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727100, 31.020609, 31.708879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707191, 30.662056, 31.885071>,  <35.695248, 30.446924, 31.990786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707191, 30.662056, 31.885071>,  <35.727100, 31.020609, 31.708879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707191, 30.662056, 31.885071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612152, 0.375854, 0.695703,
		-0.789172, -0.235012, -0.567431,
		-0.049773, -0.896383, 0.440477,
		35.692261, 30.393141, 32.017212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013416, 30.911337, 31.889420>,  <35.727100, 31.020609, 31.708879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013416, 30.911337, 31.889420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213779, 30.656231, 32.123463>,  <35.333996, 30.503168, 32.263889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213779, 30.656231, 32.123463>,  <35.013416, 30.911337, 31.889420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213779, 30.656231, 32.123463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471579, 0.365761, 0.802392,
		-0.725747, -0.677846, -0.117544,
		0.500905, -0.637764, 0.585108,
		35.364052, 30.464901, 32.298996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472763, 30.569672, 32.240574>,  <35.013416, 30.911337, 31.889420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472763, 30.569672, 32.240574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816650, 30.511169, 32.436325>,  <35.022984, 30.476068, 32.553776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816650, 30.511169, 32.436325>,  <34.472763, 30.569672, 32.240574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816650, 30.511169, 32.436325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391324, 0.427151, 0.815112,
		-0.328254, -0.892273, 0.309996,
		0.859718, -0.146255, 0.489382,
		35.074566, 30.467293, 32.583141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319836, 30.225800, 32.834026>,  <34.472763, 30.569672, 32.240574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319836, 30.225800, 32.834026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666115, 30.411453, 32.909016>,  <34.873882, 30.522846, 32.954010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666115, 30.411453, 32.909016>,  <34.319836, 30.225800, 32.834026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666115, 30.411453, 32.909016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345519, 0.283064, 0.894702,
		0.362196, -0.839317, 0.405416,
		0.865697, 0.464136, 0.187475,
		34.925823, 30.550694, 32.965260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475933, 29.992834, 33.504604>,  <34.319836, 30.225800, 32.834026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475933, 29.992834, 33.504604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685627, 30.328468, 33.446487>,  <34.811443, 30.529850, 33.411617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685627, 30.328468, 33.446487>,  <34.475933, 29.992834, 33.504604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685627, 30.328468, 33.446487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333982, 0.359535, 0.871316,
		0.783347, -0.408250, 0.468721,
		0.524236, 0.839087, -0.145293,
		34.842899, 30.580194, 33.402901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736023, 30.064047, 34.135822>,  <34.475933, 29.992834, 33.504604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736023, 30.064047, 34.135822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753796, 30.425823, 33.966110>,  <34.764458, 30.642889, 33.864285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753796, 30.425823, 33.966110>,  <34.736023, 30.064047, 34.135822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753796, 30.425823, 33.966110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275246, 0.419342, 0.865096,
		0.960347, 0.078346, 0.267575,
		0.044429, 0.904441, -0.424278,
		34.767124, 30.697155, 33.838825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165997, 30.495928, 34.551609>,  <34.736023, 30.064047, 34.135822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165997, 30.495928, 34.551609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950932, 30.755978, 34.336853>,  <34.821892, 30.912008, 34.208000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950932, 30.755978, 34.336853>,  <35.165997, 30.495928, 34.551609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950932, 30.755978, 34.336853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032442, 0.652243, 0.757316,
		0.842534, 0.389764, -0.371779,
		-0.537665, 0.650125, -0.536892,
		34.789631, 30.951015, 34.175785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301296, 31.193516, 34.817005>,  <35.165997, 30.495928, 34.551609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301296, 31.193516, 34.817005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946739, 31.204197, 34.632137>,  <34.734005, 31.210606, 34.521217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946739, 31.204197, 34.632137>,  <35.301296, 31.193516, 34.817005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946739, 31.204197, 34.632137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308993, 0.709287, 0.633589,
		0.344729, 0.704414, -0.620454,
		-0.886389, 0.026701, -0.462171,
		34.680824, 31.212208, 34.493484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669674, 31.161268, 35.254349>,  <35.301296, 31.193516, 34.817005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669674, 31.161268, 35.254349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743103, 31.332075, 35.608517>,  <34.787159, 31.434559, 35.821018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743103, 31.332075, 35.608517>,  <34.669674, 31.161268, 35.254349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743103, 31.332075, 35.608517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723435, 0.551145, -0.415791,
		-0.665541, 0.716866, -0.207744,
		0.183569, 0.427015, 0.885415,
		34.798172, 31.460180, 35.874142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750660, 31.804409, 35.117695>,  <34.669674, 31.161268, 35.254349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750660, 31.804409, 35.117695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943813, 31.806217, 35.467964>,  <35.059704, 31.807302, 35.678127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943813, 31.806217, 35.467964>,  <34.750660, 31.804409, 35.117695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943813, 31.806217, 35.467964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777706, 0.457409, -0.431220,
		-0.402491, 0.889245, 0.217358,
		0.482882, 0.004522, 0.875674,
		35.088676, 31.807573, 35.730667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133404, 32.403831, 35.190510>,  <34.750660, 31.804409, 35.117695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133404, 32.403831, 35.190510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320274, 32.144009, 35.430450>,  <35.432396, 31.988115, 35.574413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320274, 32.144009, 35.430450>,  <35.133404, 32.403831, 35.190510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320274, 32.144009, 35.430450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827437, 0.082107, -0.555523,
		0.311592, 0.755867, 0.575826,
		0.467181, -0.649556, 0.599848,
		35.460430, 31.949142, 35.610405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837883, 32.675426, 35.288570>,  <35.133404, 32.403831, 35.190510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837883, 32.675426, 35.288570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876526, 32.299938, 35.420914>,  <35.899712, 32.074646, 35.500320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876526, 32.299938, 35.420914>,  <35.837883, 32.675426, 35.288570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876526, 32.299938, 35.420914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947943, -0.014564, -0.318108,
		0.303433, 0.344370, 0.888447,
		0.096608, -0.938721, 0.330862,
		35.905510, 32.018322, 35.520172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465393, 32.639126, 35.421207>,  <35.837883, 32.675426, 35.288570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465393, 32.639126, 35.421207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350231, 32.260017, 35.366314>,  <36.281136, 32.032551, 35.333378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350231, 32.260017, 35.366314>,  <36.465393, 32.639126, 35.421207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350231, 32.260017, 35.366314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909713, -0.225893, -0.348417,
		0.299221, -0.225156, 0.927239,
		-0.287904, -0.947775, -0.137235,
		36.263859, 31.975685, 35.325142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973148, 32.161556, 35.606598>,  <36.465393, 32.639126, 35.421207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973148, 32.161556, 35.606598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748989, 31.924276, 35.375401>,  <36.614494, 31.781910, 35.236683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748989, 31.924276, 35.375401>,  <36.973148, 32.161556, 35.606598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748989, 31.924276, 35.375401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828208, -0.396766, -0.395789,
		0.005453, -0.700496, 0.713635,
		-0.560395, -0.593196, -0.577993,
		36.580872, 31.746317, 35.202003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492889, 31.698603, 35.460884>,  <36.973148, 32.161556, 35.606598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492889, 31.698603, 35.460884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206249, 31.578468, 35.209084>,  <37.034264, 31.506388, 35.058002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206249, 31.578468, 35.209084>,  <37.492889, 31.698603, 35.460884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206249, 31.578468, 35.209084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697479, -0.310616, -0.645787,
		-0.001580, -0.901840, 0.432068,
		-0.716604, -0.300338, -0.629505,
		36.991268, 31.488367, 35.020233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808414, 31.078035, 35.156460>,  <37.492889, 31.698603, 35.460884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808414, 31.078035, 35.156460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530323, 31.185575, 34.889816>,  <37.363468, 31.250099, 34.729828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530323, 31.185575, 34.889816>,  <37.808414, 31.078035, 35.156460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530323, 31.185575, 34.889816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614707, -0.258285, -0.745268,
		-0.372542, -0.927905, 0.014303,
		-0.695232, 0.268851, -0.666612,
		37.321754, 31.266232, 34.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571117, 30.500509, 34.650200>,  <37.808414, 31.078035, 35.156460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571117, 30.500509, 34.650200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503883, 30.854103, 34.475697>,  <37.463543, 31.066259, 34.370995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503883, 30.854103, 34.475697>,  <37.571117, 30.500509, 34.650200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503883, 30.854103, 34.475697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415743, -0.337702, -0.844462,
		-0.893815, -0.323314, -0.310747,
		-0.168087, 0.883983, -0.436258,
		37.453457, 31.119297, 34.344818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331676, 30.304487, 34.005039>,  <37.571117, 30.500509, 34.650200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331676, 30.304487, 34.005039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456383, 30.684174, 33.988121>,  <37.531204, 30.911985, 33.977970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456383, 30.684174, 33.988121>,  <37.331676, 30.304487, 34.005039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456383, 30.684174, 33.988121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606840, -0.233171, -0.759853,
		-0.731129, 0.211225, -0.648717,
		0.311762, 0.949218, -0.042298,
		37.549911, 30.968939, 33.975433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217678, 30.454960, 33.245701>,  <37.331676, 30.304487, 34.005039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217678, 30.454960, 33.245701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459530, 30.744593, 33.378445>,  <37.604641, 30.918373, 33.458092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459530, 30.744593, 33.378445>,  <37.217678, 30.454960, 33.245701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459530, 30.744593, 33.378445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478431, 0.002956, -0.878120,
		-0.636811, 0.689708, -0.344635,
		0.604628, 0.724081, 0.331860,
		37.640919, 30.961817, 33.478004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208309, 30.986586, 32.765392>,  <37.217678, 30.454960, 33.245701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208309, 30.986586, 32.765392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551189, 31.006823, 32.970390>,  <37.756916, 31.018965, 33.093391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551189, 31.006823, 32.970390>,  <37.208309, 30.986586, 32.765392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551189, 31.006823, 32.970390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499862, 0.157689, -0.851629,
		-0.123903, 0.986192, 0.109880,
		0.857197, 0.050595, 0.512498,
		37.808350, 31.022001, 33.124138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510895, 31.589157, 32.485863>,  <37.208309, 30.986586, 32.765392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510895, 31.589157, 32.485863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815487, 31.381733, 32.641418>,  <37.998241, 31.257278, 32.734753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815487, 31.381733, 32.641418>,  <37.510895, 31.589157, 32.485863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815487, 31.381733, 32.641418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541798, 0.179877, -0.821035,
		0.355803, 0.835906, 0.417929,
		0.761485, -0.518560, 0.388891,
		38.043934, 31.226166, 32.758087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246498, 31.873652, 32.253315>,  <37.510895, 31.589157, 32.485863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246498, 31.873652, 32.253315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282806, 31.487408, 32.350769>,  <38.304592, 31.255661, 32.409241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282806, 31.487408, 32.350769>,  <38.246498, 31.873652, 32.253315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282806, 31.487408, 32.350769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565035, -0.151520, -0.811035,
		0.820058, 0.211287, 0.531848,
		0.090775, -0.965608, 0.243640,
		38.310040, 31.197725, 32.423862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002552, 31.679918, 32.271023>,  <38.246498, 31.873652, 32.253315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002552, 31.679918, 32.271023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814922, 31.331999, 32.209808>,  <38.702343, 31.123247, 32.173080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814922, 31.331999, 32.209808>,  <39.002552, 31.679918, 32.271023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814922, 31.331999, 32.209808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615427, -0.197653, -0.763009,
		0.633416, -0.452092, 0.628011,
		-0.469078, -0.869797, -0.153033,
		38.674198, 31.071060, 32.163898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521210, 31.209787, 32.189400>,  <39.002552, 31.679918, 32.271023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521210, 31.209787, 32.189400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208843, 31.023741, 32.022625>,  <39.021423, 30.912113, 31.922560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208843, 31.023741, 32.022625>,  <39.521210, 31.209787, 32.189400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208843, 31.023741, 32.022625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557965, -0.219372, -0.800344,
		0.280790, -0.857638, 0.430830,
		-0.780917, -0.465117, -0.416935,
		38.974567, 30.884205, 31.897545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749207, 30.651922, 31.897461>,  <39.521210, 31.209787, 32.189400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749207, 30.651922, 31.897461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.396568, 30.660404, 31.708849>,  <39.184986, 30.665493, 31.595682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.396568, 30.660404, 31.708849>,  <39.749207, 30.651922, 31.897461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396568, 30.660404, 31.708849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441194, -0.317989, -0.839184,
		-0.167738, -0.947857, 0.270981,
		-0.881596, 0.021208, -0.471528,
		39.132088, 30.666767, 31.567390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010269, 30.419182, 31.264246>,  <39.749207, 30.651922, 31.897461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010269, 30.419182, 31.264246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649284, 30.570728, 31.182255>,  <39.432693, 30.661657, 31.133060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649284, 30.570728, 31.182255>,  <40.010269, 30.419182, 31.264246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649284, 30.570728, 31.182255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090163, -0.299175, -0.949929,
		-0.421225, -0.875758, 0.235835,
		-0.902463, 0.378870, -0.204981,
		39.378544, 30.684389, 31.120760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737324, 29.925314, 30.880592>,  <40.010269, 30.419182, 31.264246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737324, 29.925314, 30.880592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596817, 30.294140, 30.815586>,  <39.512512, 30.515434, 30.776583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596817, 30.294140, 30.815586>,  <39.737324, 29.925314, 30.880592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596817, 30.294140, 30.815586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254442, -0.073033, -0.964327,
		-0.901039, -0.380088, -0.208957,
		-0.351268, 0.922063, -0.162516,
		39.491436, 30.570759, 30.766830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.146030, 29.788742, 30.455618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.189449, 30.179668, 30.382872>,  <39.215500, 30.414225, 30.339224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.189449, 30.179668, 30.382872>,  <39.146030, 29.788742, 30.455618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189449, 30.179668, 30.382872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324575, -0.207765, -0.922759,
		-0.939611, 0.041132, -0.339764,
		0.108546, 0.977314, -0.181868,
		39.222012, 30.472862, 30.328312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735649, 29.950226, 29.816257>,  <39.146030, 29.788742, 30.455618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735649, 29.950226, 29.816257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032635, 30.212173, 29.872675>,  <39.210827, 30.369343, 29.906525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032635, 30.212173, 29.872675>,  <38.735649, 29.950226, 29.816257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032635, 30.212173, 29.872675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337636, -0.183981, -0.923121,
		-0.578576, 0.733005, -0.357707,
		0.742463, 0.654870, 0.141042,
		39.255375, 30.408634, 29.914988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694477, 30.400032, 29.251562>,  <38.735649, 29.950226, 29.816257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694477, 30.400032, 29.251562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063221, 30.415607, 29.405788>,  <39.284466, 30.424953, 29.498323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063221, 30.415607, 29.405788>,  <38.694477, 30.400032, 29.251562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063221, 30.415607, 29.405788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385772, 0.002348, -0.922591,
		-0.036830, 0.999239, -0.012857,
		0.921859, 0.038939, 0.385565,
		39.339779, 30.427290, 29.521458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038776, 30.964626, 28.886923>,  <38.694477, 30.400032, 29.251562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038776, 30.964626, 28.886923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344402, 30.751589, 29.032551>,  <39.527779, 30.623766, 29.119926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344402, 30.751589, 29.032551>,  <39.038776, 30.964626, 28.886923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344402, 30.751589, 29.032551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508319, 0.149510, -0.848091,
		0.397255, 0.833062, 0.384963,
		0.764068, -0.532592, 0.364068,
		39.573624, 30.591810, 29.141771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609322, 31.214285, 28.551136>,  <39.038776, 30.964626, 28.886923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609322, 31.214285, 28.551136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772427, 30.884249, 28.707571>,  <39.870289, 30.686226, 28.801432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772427, 30.884249, 28.707571>,  <39.609322, 31.214285, 28.551136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772427, 30.884249, 28.707571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647505, -0.040696, -0.760974,
		0.643789, 0.563531, 0.517657,
		0.407766, -0.825092, 0.391089,
		39.894756, 30.636721, 28.824898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315670, 31.377428, 28.566372>,  <39.609322, 31.214285, 28.551136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315670, 31.377428, 28.566372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271614, 30.980114, 28.552216>,  <40.245182, 30.741726, 28.543722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271614, 30.980114, 28.552216>,  <40.315670, 31.377428, 28.566372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271614, 30.980114, 28.552216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713097, -0.054165, -0.698970,
		0.692360, -0.102221, 0.714275,
		-0.110138, -0.993286, -0.035392,
		40.238571, 30.682129, 28.541597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019817, 31.271173, 28.504816>,  <40.315670, 31.377428, 28.566372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019817, 31.271173, 28.504816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.808624, 30.950090, 28.393900>,  <40.681908, 30.757441, 28.327351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.808624, 30.950090, 28.393900>,  <41.019817, 31.271173, 28.504816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808624, 30.950090, 28.393900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608759, -0.130062, -0.782622,
		0.592153, -0.582015, 0.557327,
		-0.527984, -0.802710, -0.277290,
		40.650230, 30.709278, 28.310713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559799, 30.804079, 28.379612>,  <41.019817, 31.271173, 28.504816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559799, 30.804079, 28.379612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228981, 30.692465, 28.184418>,  <41.030491, 30.625496, 28.067301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228981, 30.692465, 28.184418>,  <41.559799, 30.804079, 28.379612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228981, 30.692465, 28.184418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512237, -0.016552, -0.858685,
		0.231526, -0.960138, 0.156622,
		-0.827048, -0.279036, -0.487986,
		40.980865, 30.608755, 28.038021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759663, 30.376858, 27.902958>,  <41.559799, 30.804079, 28.379612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759663, 30.376858, 27.902958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.402706, 30.477697, 27.753246>,  <41.188534, 30.538200, 27.663420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.402706, 30.477697, 27.753246>,  <41.759663, 30.376858, 27.902958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402706, 30.477697, 27.753246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415119, 0.133356, -0.899940,
		-0.176960, -0.958469, -0.223656,
		-0.892391, 0.252097, -0.374280,
		41.134991, 30.553326, 27.640963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723148, 30.055923, 27.247019>,  <41.759663, 30.376858, 27.902958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723148, 30.055923, 27.247019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.458965, 30.355635, 27.266529>,  <41.300457, 30.535461, 27.278234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.458965, 30.355635, 27.266529>,  <41.723148, 30.055923, 27.247019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458965, 30.355635, 27.266529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356699, 0.370248, -0.857719,
		-0.660731, -0.549086, -0.511799,
		-0.660455, 0.749280, 0.048776,
		41.260830, 30.580420, 27.281162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386963, 30.063000, 26.576080>,  <41.723148, 30.055923, 27.247019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386963, 30.063000, 26.576080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.322208, 30.427820, 26.726788>,  <41.283356, 30.646713, 26.817211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.322208, 30.427820, 26.726788>,  <41.386963, 30.063000, 26.576080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322208, 30.427820, 26.726788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343554, 0.410010, -0.844904,
		-0.925075, -0.007340, -0.379715,
		-0.161888, 0.912052, 0.376768,
		41.273643, 30.701435, 26.839817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105698, 30.387672, 26.035181>,  <41.386963, 30.063000, 26.576080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105698, 30.387672, 26.035181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247700, 30.687330, 26.258879>,  <41.332901, 30.867125, 26.393097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247700, 30.687330, 26.258879>,  <41.105698, 30.387672, 26.035181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247700, 30.687330, 26.258879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255364, 0.497749, -0.828876,
		-0.899310, 0.437068, -0.014600,
		0.355008, 0.749145, 0.559242,
		41.354202, 30.912073, 26.426651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017609, 31.059011, 25.610559>,  <41.105698, 30.387672, 26.035181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017609, 31.059011, 25.610559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300560, 31.142591, 25.880657>,  <41.470329, 31.192739, 26.042717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300560, 31.142591, 25.880657>,  <41.017609, 31.059011, 25.610559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300560, 31.142591, 25.880657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568209, 0.400114, -0.719060,
		-0.420421, 0.892328, 0.164306,
		0.707379, 0.208948, 0.675245,
		41.512775, 31.205276, 26.083231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140701, 31.803778, 25.669409>,  <41.017609, 31.059011, 25.610559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140701, 31.803778, 25.669409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.472633, 31.607496, 25.775686>,  <41.671791, 31.489727, 25.839453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.472633, 31.607496, 25.775686>,  <41.140701, 31.803778, 25.669409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472633, 31.607496, 25.775686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493664, 0.423593, -0.759516,
		0.260154, 0.761431, 0.593753,
		0.829829, -0.490706, 0.265692,
		41.721581, 31.460285, 25.855394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547421, 31.905590, 25.058327>,  <41.140701, 31.803778, 25.669409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547421, 31.905590, 25.058327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.820564, 31.703785, 25.269670>,  <41.984451, 31.582701, 25.396477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.820564, 31.703785, 25.269670>,  <41.547421, 31.905590, 25.058327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820564, 31.703785, 25.269670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677681, 0.167338, -0.716063,
		0.272849, 0.847032, 0.456169,
		0.682863, -0.504514, 0.528359,
		42.025425, 31.552431, 25.428179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144661, 32.416367, 25.169928>,  <41.547421, 31.905590, 25.058327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144661, 32.416367, 25.169928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.301338, 32.051060, 25.214682>,  <42.395344, 31.831875, 25.241535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.301338, 32.051060, 25.214682>,  <42.144661, 32.416367, 25.169928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301338, 32.051060, 25.214682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659132, 0.193674, -0.726660,
		0.641965, 0.358378, 0.677824,
		0.391696, -0.913266, 0.111887,
		42.418846, 31.777081, 25.248247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889534, 32.516613, 25.198996>,  <42.144661, 32.416367, 25.169928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889534, 32.516613, 25.198996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.858475, 32.128479, 25.107422>,  <42.839840, 31.895597, 25.052477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.858475, 32.128479, 25.107422>,  <42.889534, 32.516613, 25.198996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858475, 32.128479, 25.107422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766875, 0.088603, -0.635651,
		0.637082, -0.224924, 0.737249,
		-0.077651, -0.970339, -0.228937,
		42.835178, 31.837378, 25.038740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610332, 32.175533, 25.115726>,  <42.889534, 32.516613, 25.198996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610332, 32.175533, 25.115726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.344505, 31.965092, 24.903477>,  <43.185009, 31.838825, 24.776127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.344505, 31.965092, 24.903477>,  <43.610332, 32.175533, 25.115726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344505, 31.965092, 24.903477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649077, -0.054623, -0.758759,
		0.370204, -0.848662, 0.377785,
		-0.664566, -0.526107, -0.530626,
		43.145134, 31.807261, 24.744289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038937, 31.726486, 24.798664>,  <43.610332, 32.175533, 25.115726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038937, 31.726486, 24.798664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.698566, 31.748508, 24.589705>,  <43.494347, 31.761721, 24.464329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.698566, 31.748508, 24.589705>,  <44.038937, 31.726486, 24.798664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698566, 31.748508, 24.589705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525123, 0.063914, -0.848623,
		-0.013334, -0.996435, -0.083297,
		-0.850922, 0.055057, -0.522399,
		43.443291, 31.765024, 24.432985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008186, 31.136700, 24.283695>,  <44.038937, 31.726486, 24.798664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008186, 31.136700, 24.283695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.765461, 31.422979, 24.145388>,  <43.619827, 31.594748, 24.062405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.765461, 31.422979, 24.145388>,  <44.008186, 31.136700, 24.283695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765461, 31.422979, 24.145388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510676, 0.017700, -0.859591,
		-0.609087, -0.698187, -0.376230,
		-0.606814, 0.715697, -0.345767,
		43.583416, 31.637688, 24.041658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947266, 31.061584, 23.553383>,  <44.008186, 31.136700, 24.283695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947266, 31.061584, 23.553383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.805050, 31.434774, 23.575836>,  <43.719719, 31.658688, 23.589308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.805050, 31.434774, 23.575836>,  <43.947266, 31.061584, 23.553383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805050, 31.434774, 23.575836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416090, 0.211771, -0.884320,
		-0.836935, -0.291054, -0.463494,
		-0.355539, 0.932974, 0.056134,
		43.698387, 31.714666, 23.592676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819309, 31.230480, 22.809921>,  <43.947266, 31.061584, 23.553383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819309, 31.230480, 22.809921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793793, 31.592707, 22.977671>,  <43.778481, 31.810043, 23.078321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793793, 31.592707, 22.977671>,  <43.819309, 31.230480, 22.809921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793793, 31.592707, 22.977671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446161, 0.401777, -0.799698,
		-0.892676, 0.136093, -0.429660,
		-0.063794, 0.905568, 0.419376,
		43.774654, 31.864378, 23.103483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100632, 31.087406, 22.692150>,  <43.819309, 31.230480, 22.809921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100632, 31.087406, 22.692150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.352375, 30.961964, 22.407742>,  <43.503422, 30.886698, 22.237097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.352375, 30.961964, 22.407742>,  <43.100632, 31.087406, 22.692150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352375, 30.961964, 22.407742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123406, -0.943677, 0.306992,
		-0.767251, -0.105465, -0.632616,
		0.629362, -0.313608, -0.711022,
		43.541183, 30.867882, 22.194435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789711, 30.555574, 22.286852>,  <43.100632, 31.087406, 22.692150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789711, 30.555574, 22.286852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.186451, 30.504622, 22.287676>,  <43.424496, 30.474051, 22.288170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.186451, 30.504622, 22.287676>,  <42.789711, 30.555574, 22.286852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186451, 30.504622, 22.287676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123039, -0.953606, 0.274766,
		-0.033035, -0.272780, -0.961509,
		0.991852, -0.127380, 0.002060,
		43.484005, 30.466408, 22.288294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846989, 30.132784, 21.778885>,  <42.789711, 30.555574, 22.286852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846989, 30.132784, 21.778885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616356, 29.908951, 21.540752>,  <42.477978, 29.774651, 21.397873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616356, 29.908951, 21.540752>,  <42.846989, 30.132784, 21.778885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616356, 29.908951, 21.540752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747912, 0.068157, 0.660289,
		-0.328912, 0.825966, -0.457818,
		-0.576579, -0.559585, -0.595333,
		42.443382, 29.741076, 21.362152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230480, 30.497831, 21.685116>,  <42.846989, 30.132784, 21.778885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230480, 30.497831, 21.685116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139832, 30.113403, 21.621885>,  <42.085442, 29.882748, 21.583946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139832, 30.113403, 21.621885>,  <42.230480, 30.497831, 21.685116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139832, 30.113403, 21.621885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530963, -0.014158, 0.847277,
		-0.816529, 0.275948, -0.507083,
		-0.226625, -0.961068, -0.158078,
		42.071842, 29.825083, 21.574461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536270, 30.529789, 21.570801>,  <42.230480, 30.497831, 21.685116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536270, 30.529789, 21.570801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.670330, 30.167274, 21.673813>,  <41.750767, 29.949766, 21.735620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.670330, 30.167274, 21.673813>,  <41.536270, 30.529789, 21.570801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670330, 30.167274, 21.673813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648168, -0.023410, 0.761137,
		-0.683779, -0.422016, -0.595272,
		0.335147, -0.906286, 0.257530,
		41.770874, 29.895390, 21.751072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938995, 30.232998, 21.692448>,  <41.536270, 30.529789, 21.570801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938995, 30.232998, 21.692448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232510, 30.032082, 21.875425>,  <41.408619, 29.911531, 21.985212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232510, 30.032082, 21.875425>,  <40.938995, 30.232998, 21.692448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232510, 30.032082, 21.875425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658541, -0.360394, 0.660636,
		-0.166971, -0.786015, -0.595232,
		0.733788, -0.502291, 0.457448,
		41.452644, 29.881393, 22.012659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700409, 29.565912, 21.757635>,  <40.938995, 30.232998, 21.692448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700409, 29.565912, 21.757635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980999, 29.602236, 22.040390>,  <41.149353, 29.624029, 22.210043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980999, 29.602236, 22.040390>,  <40.700409, 29.565912, 21.757635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980999, 29.602236, 22.040390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689966, -0.161955, 0.705491,
		0.178548, -0.982611, -0.050953,
		0.701475, 0.090808, 0.706885,
		41.191441, 29.629478, 22.252455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545624, 29.109291, 22.249571>,  <40.700409, 29.565912, 21.757635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545624, 29.109291, 22.249571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799076, 29.344358, 22.450829>,  <40.951149, 29.485399, 22.571583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799076, 29.344358, 22.450829>,  <40.545624, 29.109291, 22.249571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799076, 29.344358, 22.450829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516118, -0.163375, 0.840791,
		0.576308, -0.792436, 0.199786,
		0.633633, 0.587668, 0.503145,
		40.989166, 29.520658, 22.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684223, 28.732094, 22.859066>,  <40.545624, 29.109291, 22.249571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684223, 28.732094, 22.859066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805027, 29.105787, 22.934958>,  <40.877510, 29.330004, 22.980494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805027, 29.105787, 22.934958>,  <40.684223, 28.732094, 22.859066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805027, 29.105787, 22.934958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332609, -0.083253, 0.939383,
		0.893398, -0.346810, 0.285591,
		0.302011, 0.934233, 0.189730,
		40.895630, 29.386057, 22.991877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851582, 28.679146, 23.525198>,  <40.684223, 28.732094, 22.859066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851582, 28.679146, 23.525198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837608, 29.075727, 23.474920>,  <40.829224, 29.313677, 23.444754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837608, 29.075727, 23.474920>,  <40.851582, 28.679146, 23.525198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837608, 29.075727, 23.474920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395431, 0.101793, 0.912838,
		0.917831, 0.081590, 0.388495,
		-0.034933, 0.991454, -0.125692,
		40.827129, 29.373163, 23.437212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066174, 28.909803, 24.140297>,  <40.851582, 28.679146, 23.525198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066174, 28.909803, 24.140297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.842472, 29.188801, 23.961081>,  <40.708252, 29.356199, 23.853552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.842472, 29.188801, 23.961081>,  <41.066174, 28.909803, 24.140297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842472, 29.188801, 23.961081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490291, 0.157515, 0.857207,
		0.668468, 0.699067, 0.253883,
		-0.559255, 0.697492, -0.448039,
		40.674694, 29.398048, 23.826668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134960, 29.540295, 24.578535>,  <41.066174, 28.909803, 24.140297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134960, 29.540295, 24.578535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794704, 29.558645, 24.369038>,  <40.590549, 29.569656, 24.243340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794704, 29.558645, 24.369038>,  <41.134960, 29.540295, 24.578535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794704, 29.558645, 24.369038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507700, 0.187116, 0.840969,
		0.136582, 0.981266, -0.135876,
		-0.850639, 0.045877, -0.523745,
		40.539513, 29.572409, 24.211914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735321, 30.144901, 24.847614>,  <41.134960, 29.540295, 24.578535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735321, 30.144901, 24.847614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447426, 29.944326, 24.655560>,  <40.274689, 29.823980, 24.540327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447426, 29.944326, 24.655560>,  <40.735321, 30.144901, 24.847614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447426, 29.944326, 24.655560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604346, 0.112175, 0.788786,
		-0.341669, 0.857890, -0.383780,
		-0.719742, -0.501439, -0.480135,
		40.231503, 29.793894, 24.511518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131149, 30.558458, 24.913857>,  <40.735321, 30.144901, 24.847614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131149, 30.558458, 24.913857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999504, 30.195066, 24.810820>,  <39.920517, 29.977032, 24.748999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999504, 30.195066, 24.810820>,  <40.131149, 30.558458, 24.913857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999504, 30.195066, 24.810820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607449, -0.005169, 0.794342,
		-0.722973, 0.417902, -0.550153,
		-0.329113, -0.908478, -0.257591,
		39.900772, 29.922523, 24.733541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343937, 30.600418, 24.966307>,  <40.131149, 30.558458, 24.913857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343937, 30.600418, 24.966307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472046, 30.223400, 25.004333>,  <39.548912, 29.997189, 25.027149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472046, 30.223400, 25.004333>,  <39.343937, 30.600418, 24.966307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472046, 30.223400, 25.004333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606783, -0.127040, 0.784650,
		-0.727490, -0.308984, -0.612607,
		0.320270, -0.942544, 0.095066,
		39.568127, 29.940638, 25.032854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859661, 30.382084, 25.444649>,  <39.343937, 30.600418, 24.966307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859661, 30.382084, 25.444649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103218, 30.066051, 25.416294>,  <39.249352, 29.876432, 25.399281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103218, 30.066051, 25.416294>,  <38.859661, 30.382084, 25.444649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103218, 30.066051, 25.416294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172279, -0.218942, 0.960409,
		-0.774320, -0.572572, -0.269425,
		0.608891, -0.790080, -0.070889,
		39.285885, 29.829027, 25.395027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492641, 29.718323, 25.665625>,  <38.859661, 30.382084, 25.444649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492641, 29.718323, 25.665625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882732, 29.669071, 25.739128>,  <39.116787, 29.639521, 25.783230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882732, 29.669071, 25.739128>,  <38.492641, 29.718323, 25.665625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882732, 29.669071, 25.739128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219052, -0.422210, 0.879633,
		-0.030721, -0.898097, -0.438723,
		0.975229, -0.123127, 0.183759,
		39.175301, 29.632133, 25.794256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650375, 28.986715, 25.887056>,  <38.492641, 29.718323, 25.665625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650375, 28.986715, 25.887056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937065, 29.222832, 26.035580>,  <39.109077, 29.364502, 26.124693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937065, 29.222832, 26.035580>,  <38.650375, 28.986715, 25.887056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937065, 29.222832, 26.035580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105814, -0.434228, 0.894567,
		0.689285, -0.680444, -0.248760,
		0.716721, 0.590289, 0.371307,
		39.152081, 29.399920, 26.146973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038296, 28.546755, 26.285242>,  <38.650375, 28.986715, 25.887056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038296, 28.546755, 26.285242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118359, 28.918501, 26.409323>,  <39.166397, 29.141548, 26.483770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118359, 28.918501, 26.409323>,  <39.038296, 28.546755, 26.285242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118359, 28.918501, 26.409323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285975, -0.247404, 0.925748,
		0.937100, -0.274000, 0.216257,
		0.200153, 0.929363, 0.310199,
		39.178406, 29.197309, 26.502382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360424, 28.415260, 26.861692>,  <39.038296, 28.546755, 26.285242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360424, 28.415260, 26.861692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224579, 28.790285, 26.891726>,  <39.143070, 29.015301, 26.909746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224579, 28.790285, 26.891726>,  <39.360424, 28.415260, 26.861692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224579, 28.790285, 26.891726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358545, -0.202849, 0.911207,
		0.869544, 0.282538, 0.405049,
		-0.339615, 0.937563, 0.075083,
		39.122696, 29.071554, 26.914251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428558, 28.534540, 27.550558>,  <39.360424, 28.415260, 26.861692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428558, 28.534540, 27.550558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210396, 28.843843, 27.421190>,  <39.079498, 29.029427, 27.343571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210396, 28.843843, 27.421190>,  <39.428558, 28.534540, 27.550558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210396, 28.843843, 27.421190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569649, -0.058921, 0.819773,
		0.614842, 0.631346, 0.472622,
		-0.545408, 0.773260, -0.323419,
		39.046772, 29.075821, 27.324165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418007, 29.002865, 28.077991>,  <39.428558, 28.534540, 27.550558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418007, 29.002865, 28.077991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082291, 29.095963, 27.881456>,  <38.880859, 29.151821, 27.763535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082291, 29.095963, 27.881456>,  <39.418007, 29.002865, 28.077991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082291, 29.095963, 27.881456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482350, 0.098201, 0.870457,
		0.250844, 0.967567, 0.029845,
		-0.839295, 0.232744, -0.491339,
		38.830502, 29.165787, 27.734055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.956863, 30.614386, 33.425240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688988, 30.835150, 33.226479>,  <38.528263, 30.967607, 33.107220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688988, 30.835150, 33.226479>,  <38.956863, 30.614386, 33.425240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688988, 30.835150, 33.226479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513637, 0.139041, 0.846667,
		0.536373, 0.822231, 0.190366,
		-0.669687, 0.551908, -0.496906,
		38.488083, 31.000723, 33.077408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857693, 31.227695, 33.859291>,  <38.956863, 30.614386, 33.425240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857693, 31.227695, 33.859291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544975, 31.160400, 33.619125>,  <38.357346, 31.120024, 33.475025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544975, 31.160400, 33.619125>,  <38.857693, 31.227695, 33.859291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544975, 31.160400, 33.619125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623423, 0.229792, 0.747355,
		0.012239, 0.958588, -0.284531,
		-0.781789, -0.168237, -0.600418,
		38.310440, 31.109930, 33.438999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461674, 31.831102, 33.928963>,  <38.857693, 31.227695, 33.859291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461674, 31.831102, 33.928963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.206028, 31.562500, 33.778969>,  <38.052639, 31.401339, 33.688972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.206028, 31.562500, 33.778969>,  <38.461674, 31.831102, 33.928963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206028, 31.562500, 33.778969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690590, 0.286422, 0.664114,
		-0.338552, 0.683406, -0.646791,
		-0.639115, -0.671505, -0.374985,
		38.014294, 31.361048, 33.666473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882740, 32.215202, 33.829075>,  <38.461674, 31.831102, 33.928963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882740, 32.215202, 33.829075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.747688, 31.839548, 33.854443>,  <37.666656, 31.614155, 33.869663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.747688, 31.839548, 33.854443>,  <37.882740, 32.215202, 33.829075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747688, 31.839548, 33.854443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658768, 0.283886, 0.696730,
		-0.672332, 0.193457, -0.714524,
		-0.337631, -0.939140, 0.063422,
		37.646400, 31.557806, 33.873470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100609, 32.162590, 33.615685>,  <37.882740, 32.215202, 33.829075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100609, 32.162590, 33.615685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241158, 31.876266, 33.857067>,  <37.325485, 31.704473, 34.001896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241158, 31.876266, 33.857067>,  <37.100609, 32.162590, 33.615685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241158, 31.876266, 33.857067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756362, 0.162838, 0.633561,
		-0.551772, -0.679048, -0.484191,
		0.351373, -0.715806, 0.603456,
		37.346569, 31.661524, 34.038105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494881, 31.916239, 33.926895>,  <37.100609, 32.162590, 33.615685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494881, 31.916239, 33.926895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752438, 31.711195, 34.154099>,  <36.906971, 31.588169, 34.290421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752438, 31.711195, 34.154099>,  <36.494881, 31.916239, 33.926895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752438, 31.711195, 34.154099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743217, -0.242696, 0.623480,
		-0.181745, -0.823610, -0.537248,
		0.643893, -0.512606, 0.568012,
		36.945606, 31.557413, 34.324501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161545, 31.310930, 34.014484>,  <36.494881, 31.916239, 33.926895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161545, 31.310930, 34.014484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414917, 31.367390, 34.318810>,  <36.566940, 31.401264, 34.501404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414917, 31.367390, 34.318810>,  <36.161545, 31.310930, 34.014484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414917, 31.367390, 34.318810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747934, -0.140391, 0.648757,
		0.198381, -0.979984, 0.016640,
		0.633435, 0.141147, 0.760814,
		36.604946, 31.409733, 34.547054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997009, 30.870338, 34.466148>,  <36.161545, 31.310930, 34.014484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997009, 30.870338, 34.466148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180367, 31.138039, 34.700066>,  <36.290379, 31.298658, 34.840416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180367, 31.138039, 34.700066>,  <35.997009, 30.870338, 34.466148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180367, 31.138039, 34.700066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757854, -0.049376, 0.650553,
		0.464258, -0.741394, 0.484561,
		0.458391, 0.669251, 0.584792,
		36.317883, 31.338814, 34.875504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893856, 30.671045, 35.143818>,  <35.997009, 30.870338, 34.466148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893856, 30.671045, 35.143818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.005512, 31.049850, 35.207378>,  <36.072506, 31.277134, 35.245514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.005512, 31.049850, 35.207378>,  <35.893856, 30.671045, 35.143818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005512, 31.049850, 35.207378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578838, 0.033914, 0.814737,
		0.766177, -0.319403, 0.557633,
		0.279141, 0.947012, 0.158898,
		36.089256, 31.333954, 35.255047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924992, 30.714821, 35.843521>,  <35.893856, 30.671045, 35.143818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924992, 30.714821, 35.843521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.916283, 31.106394, 35.762314>,  <35.911057, 31.341337, 35.713589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.916283, 31.106394, 35.762314>,  <35.924992, 30.714821, 35.843521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916283, 31.106394, 35.762314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649636, 0.140503, 0.747150,
		0.759934, 0.148157, 0.632890,
		-0.021773, 0.978932, -0.203021,
		35.909752, 31.400074, 35.701408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100613, 31.124578, 36.402824>,  <35.924992, 30.714821, 35.843521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100613, 31.124578, 36.402824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879368, 31.360886, 36.167858>,  <35.746620, 31.502670, 36.026878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879368, 31.360886, 36.167858>,  <36.100613, 31.124578, 36.402824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879368, 31.360886, 36.167858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646719, 0.140015, 0.749767,
		0.525187, 0.794599, 0.304618,
		-0.553113, 0.590770, -0.587416,
		35.713432, 31.538116, 35.991634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741631, 31.718752, 36.826824>,  <36.100613, 31.124578, 36.402824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741631, 31.718752, 36.826824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537102, 31.703611, 36.483402>,  <35.414383, 31.694527, 36.277348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537102, 31.703611, 36.483402>,  <35.741631, 31.718752, 36.826824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537102, 31.703611, 36.483402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858783, -0.014951, 0.512121,
		-0.032221, 0.999171, -0.024863,
		-0.511325, -0.037853, -0.858554,
		35.383705, 31.692255, 36.225838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234428, 32.364742, 36.758514>,  <35.741631, 31.718752, 36.826824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234428, 32.364742, 36.758514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153240, 32.010029, 36.592419>,  <35.104527, 31.797201, 36.492760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153240, 32.010029, 36.592419>,  <35.234428, 32.364742, 36.758514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153240, 32.010029, 36.592419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835021, -0.064734, 0.546396,
		-0.511413, 0.457637, -0.727341,
		-0.202968, -0.886780, -0.415242,
		35.092350, 31.743996, 36.467846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094711, 32.901382, 36.383121>,  <35.234428, 32.364742, 36.758514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094711, 32.901382, 36.383121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.789730, 33.158569, 36.354115>,  <34.606743, 33.312881, 36.336712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.789730, 33.158569, 36.354115>,  <35.094711, 32.901382, 36.383121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789730, 33.158569, 36.354115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178808, 0.101662, -0.978618,
		-0.621847, -0.759116, -0.192480,
		-0.762452, 0.642968, -0.072518,
		34.560993, 33.351460, 36.332359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644867, 32.765011, 35.785622>,  <35.094711, 32.901382, 36.383121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644867, 32.765011, 35.785622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.574276, 33.149364, 35.870991>,  <34.531921, 33.379978, 35.922211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.574276, 33.149364, 35.870991>,  <34.644867, 32.765011, 35.785622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574276, 33.149364, 35.870991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146438, 0.240044, -0.959653,
		-0.973351, -0.138103, -0.183073,
		-0.176477, 0.960888, 0.213424,
		34.521332, 33.437630, 35.935017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254387, 33.031334, 35.221462>,  <34.644867, 32.765011, 35.785622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254387, 33.031334, 35.221462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.373192, 33.368912, 35.400146>,  <34.444473, 33.571457, 35.507355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.373192, 33.368912, 35.400146>,  <34.254387, 33.031334, 35.221462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373192, 33.368912, 35.400146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108902, 0.434826, -0.893905,
		-0.948643, 0.314149, 0.037242,
		0.297013, 0.843941, 0.446706,
		34.462296, 33.622093, 35.534157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875023, 33.538097, 34.919537>,  <34.254387, 33.031334, 35.221462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875023, 33.538097, 34.919537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.196320, 33.718384, 35.075310>,  <34.389099, 33.826557, 35.168774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.196320, 33.718384, 35.075310>,  <33.875023, 33.538097, 34.919537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196320, 33.718384, 35.075310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160476, 0.465874, -0.870177,
		-0.573630, 0.761457, 0.301881,
		0.803241, 0.450715, 0.389435,
		34.437290, 33.853600, 35.192139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970078, 33.919403, 34.336735>,  <33.875023, 33.538097, 34.919537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970078, 33.919403, 34.336735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.299629, 33.948349, 34.561588>,  <34.497360, 33.965717, 34.696499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.299629, 33.948349, 34.561588>,  <33.970078, 33.919403, 34.336735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299629, 33.948349, 34.561588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479786, 0.438933, -0.759699,
		-0.301715, 0.895601, 0.326906,
		0.823877, 0.072368, 0.562129,
		34.546791, 33.970058, 34.730228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222389, 34.734772, 34.363178>,  <33.970078, 33.919403, 34.336735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222389, 34.734772, 34.363178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.508671, 34.463585, 34.430275>,  <34.680439, 34.300873, 34.470531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.508671, 34.463585, 34.430275>,  <34.222389, 34.734772, 34.363178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508671, 34.463585, 34.430275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518419, 0.354771, -0.778061,
		0.467990, 0.643816, 0.605380,
		0.715700, -0.677966, 0.167737,
		34.723381, 34.260197, 34.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748283, 35.153030, 34.175404>,  <34.222389, 34.734772, 34.363178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748283, 35.153030, 34.175404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894672, 34.780891, 34.184574>,  <34.982506, 34.557610, 34.190075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894672, 34.780891, 34.184574>,  <34.748283, 35.153030, 34.175404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894672, 34.780891, 34.184574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669287, 0.246003, -0.701097,
		0.646622, 0.271923, 0.712697,
		0.365970, -0.930344, 0.022923,
		35.004463, 34.501789, 34.191452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479298, 35.219429, 34.076206>,  <34.748283, 35.153030, 34.175404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479298, 35.219429, 34.076206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391277, 34.838207, 33.993011>,  <35.338467, 34.609474, 33.943092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391277, 34.838207, 33.993011>,  <35.479298, 35.219429, 34.076206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391277, 34.838207, 33.993011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511577, 0.068797, -0.856479,
		0.830583, -0.294868, 0.472424,
		-0.220047, -0.953058, -0.207990,
		35.325264, 34.552288, 33.930614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126797, 34.792698, 34.061169>,  <35.479298, 35.219429, 34.076206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126797, 34.792698, 34.061169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.836384, 34.638897, 33.833122>,  <35.662136, 34.546616, 33.696297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.836384, 34.638897, 33.833122>,  <36.126797, 34.792698, 34.061169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836384, 34.638897, 33.833122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606362, 0.033066, -0.794501,
		0.324340, -0.922531, 0.209142,
		-0.726036, -0.384505, -0.570112,
		35.618572, 34.523544, 33.662090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552383, 34.315834, 33.587730>,  <36.126797, 34.792698, 34.061169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552383, 34.315834, 33.587730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197803, 34.344955, 33.404903>,  <35.985058, 34.362427, 33.295208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197803, 34.344955, 33.404903>,  <36.552383, 34.315834, 33.587730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197803, 34.344955, 33.404903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425387, -0.260968, -0.866569,
		-0.182372, -0.962598, 0.200364,
		-0.886446, 0.072806, -0.457070,
		35.931870, 34.366798, 33.267784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562954, 33.781277, 33.182629>,  <36.552383, 34.315834, 33.587730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562954, 33.781277, 33.182629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.244041, 33.965244, 33.026264>,  <36.052692, 34.075626, 32.932446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.244041, 33.965244, 33.026264>,  <36.562954, 33.781277, 33.182629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244041, 33.965244, 33.026264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327967, -0.213615, -0.920221,
		-0.506735, -0.861882, 0.019472,
		-0.797281, 0.459922, -0.390915,
		36.004856, 34.103222, 32.908989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209068, 33.290836, 32.656601>,  <36.562954, 33.781277, 33.182629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209068, 33.290836, 32.656601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105499, 33.665398, 32.561859>,  <36.043358, 33.890137, 32.505013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105499, 33.665398, 32.561859>,  <36.209068, 33.290836, 32.656601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105499, 33.665398, 32.561859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382845, -0.125640, -0.915230,
		-0.886786, -0.327652, -0.325968,
		-0.258922, 0.936407, -0.236855,
		36.027824, 33.946320, 32.490803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951336, 33.172363, 32.033882>,  <36.209068, 33.290836, 32.656601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951336, 33.172363, 32.033882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043194, 33.561615, 32.040516>,  <36.098309, 33.795166, 32.044495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043194, 33.561615, 32.040516>,  <35.951336, 33.172363, 32.033882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043194, 33.561615, 32.040516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447734, -0.090502, -0.889575,
		-0.864174, 0.211711, -0.456489,
		0.229646, 0.973133, 0.016581,
		36.112087, 33.853554, 32.045490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037819, 33.411842, 31.385796>,  <35.951336, 33.172363, 32.033882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037819, 33.411842, 31.385796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.206703, 33.730015, 31.559702>,  <36.308033, 33.920918, 31.664045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.206703, 33.730015, 31.559702>,  <36.037819, 33.411842, 31.385796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206703, 33.730015, 31.559702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705241, 0.013103, -0.708847,
		-0.569539, 0.605896, -0.555442,
		0.422210, 0.795436, 0.434765,
		36.333366, 33.968647, 31.690132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087494, 33.910919, 30.796207>,  <36.037819, 33.411842, 31.385796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087494, 33.910919, 30.796207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.341038, 33.992260, 31.094702>,  <36.493164, 34.041065, 31.273798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.341038, 33.992260, 31.094702>,  <36.087494, 33.910919, 30.796207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341038, 33.992260, 31.094702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752545, 0.060626, -0.655744,
		-0.178589, 0.977227, -0.114603,
		0.633862, 0.203352, 0.746235,
		36.531197, 34.053265, 31.318573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687485, 34.499798, 30.643791>,  <36.087494, 33.910919, 30.796207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687485, 34.499798, 30.643791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490417, 34.734020, 30.386297>,  <35.372177, 34.874554, 30.231800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490417, 34.734020, 30.386297>,  <35.687485, 34.499798, 30.643791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490417, 34.734020, 30.386297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799833, -0.013259, 0.600077,
		0.342845, 0.810521, 0.474882,
		-0.492671, 0.585559, -0.643736,
		35.342617, 34.909687, 30.193176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357132, 35.004112, 30.984978>,  <35.687485, 34.499798, 30.643791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357132, 35.004112, 30.984978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.150612, 34.963192, 30.644869>,  <35.026699, 34.938641, 30.440804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.150612, 34.963192, 30.644869>,  <35.357132, 35.004112, 30.984978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150612, 34.963192, 30.644869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848895, -0.070071, 0.523896,
		-0.113174, 0.992283, -0.050664,
		-0.516302, -0.102300, -0.850274,
		34.995720, 34.932503, 30.389786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864784, 35.458599, 31.138535>,  <35.357132, 35.004112, 30.984978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864784, 35.458599, 31.138535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722027, 35.226997, 30.845310>,  <34.636372, 35.088036, 30.669376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722027, 35.226997, 30.845310>,  <34.864784, 35.458599, 31.138535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722027, 35.226997, 30.845310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824519, -0.173606, 0.538543,
		-0.439085, 0.796624, -0.415446,
		-0.356893, -0.579009, -0.733060,
		34.614960, 35.053295, 30.625393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239315, 35.799450, 30.946926>,  <34.864784, 35.458599, 31.138535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239315, 35.799450, 30.946926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.220898, 35.414730, 30.838984>,  <34.209846, 35.183899, 30.774218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.220898, 35.414730, 30.838984>,  <34.239315, 35.799450, 30.946926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220898, 35.414730, 30.838984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752940, -0.144113, 0.642116,
		-0.656476, 0.232753, -0.717541,
		-0.046047, -0.961799, -0.269856,
		34.207085, 35.126190, 30.758026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623417, 35.725029, 30.967909>,  <34.239315, 35.799450, 30.946926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623417, 35.725029, 30.967909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.706852, 35.337093, 30.917467>,  <33.756912, 35.104332, 30.887201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.706852, 35.337093, 30.917467>,  <33.623417, 35.725029, 30.967909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706852, 35.337093, 30.917467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850877, -0.243527, 0.465513,
		-0.482184, 0.010202, -0.876011,
		0.208583, -0.969841, -0.126105,
		33.769428, 35.046143, 30.879635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962921, 35.414822, 30.736332>,  <33.623417, 35.725029, 30.967909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962921, 35.414822, 30.736332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.202690, 35.137890, 30.897013>,  <33.346554, 34.971729, 30.993422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.202690, 35.137890, 30.897013>,  <32.962921, 35.414822, 30.736332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202690, 35.137890, 30.897013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787704, -0.421091, 0.449671,
		-0.142168, -0.585968, -0.797765,
		0.599425, -0.692332, 0.401704,
		33.382519, 34.930191, 31.017523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656551, 34.819595, 30.680239>,  <32.962921, 35.414822, 30.736332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656551, 34.819595, 30.680239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913376, 34.754108, 30.979826>,  <33.067471, 34.714817, 31.159578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913376, 34.754108, 30.979826>,  <32.656551, 34.819595, 30.680239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913376, 34.754108, 30.979826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718233, -0.470134, 0.512948,
		0.268140, -0.867278, -0.419439,
		0.642061, -0.163713, 0.748969,
		33.105995, 34.704994, 31.204517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733959, 34.040146, 30.829725>,  <32.656551, 34.819595, 30.680239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733959, 34.040146, 30.829725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.819870, 34.234818, 31.168432>,  <32.871418, 34.351620, 31.371656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.819870, 34.234818, 31.168432>,  <32.733959, 34.040146, 30.829725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819870, 34.234818, 31.168432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624620, -0.598061, 0.502169,
		0.750814, -0.636760, 0.175542,
		0.214776, 0.486682, 0.846766,
		32.884304, 34.380821, 31.422462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695175, 33.524300, 31.294352>,  <32.733959, 34.040146, 30.829725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695175, 33.524300, 31.294352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.701118, 33.844360, 31.534197>,  <32.704685, 34.036396, 31.678104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.701118, 33.844360, 31.534197>,  <32.695175, 33.524300, 31.294352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701118, 33.844360, 31.534197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522030, -0.505255, 0.687170,
		0.852798, -0.323227, 0.410195,
		0.014859, 0.800151, 0.599615,
		32.705578, 34.084404, 31.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790314, 33.233631, 31.901730>,  <32.695175, 33.524300, 31.294352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790314, 33.233631, 31.901730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.632832, 33.591766, 31.985023>,  <32.538342, 33.806648, 32.035000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.632832, 33.591766, 31.985023>,  <32.790314, 33.233631, 31.901730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632832, 33.591766, 31.985023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620092, -0.425902, 0.658857,
		0.678590, 0.130269, 0.722873,
		-0.393702, 0.895342, 0.208235,
		32.514721, 33.860371, 32.047493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880157, 33.307861, 32.640564>,  <32.790314, 33.233631, 31.901730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880157, 33.307861, 32.640564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.582600, 33.552555, 32.532936>,  <32.404064, 33.699371, 32.468357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.582600, 33.552555, 32.532936>,  <32.880157, 33.307861, 32.640564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582600, 33.552555, 32.532936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515145, -0.268397, 0.813995,
		0.425731, 0.744139, 0.514792,
		-0.743894, 0.611736, -0.269074,
		32.359432, 33.736076, 32.452213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647205, 33.760811, 33.240887>,  <32.880157, 33.307861, 32.640564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647205, 33.760811, 33.240887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.330627, 33.801144, 32.999741>,  <32.140682, 33.825344, 32.855053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.330627, 33.801144, 32.999741>,  <32.647205, 33.760811, 33.240887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330627, 33.801144, 32.999741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601658, -0.302482, 0.739264,
		-0.107813, 0.947806, 0.300065,
		-0.791444, 0.100835, -0.602867,
		32.093193, 33.831394, 32.818882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.580853, 36.376045, 27.105167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331566, 36.063271, 27.110434>,  <37.181992, 35.875607, 27.113594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331566, 36.063271, 27.110434>,  <37.580853, 36.376045, 27.105167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331566, 36.063271, 27.110434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385898, 0.322125, 0.864476,
		-0.680205, 0.533679, -0.502502,
		-0.623221, -0.781935, 0.013165,
		37.144600, 35.828690, 27.114384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154564, 36.758133, 27.523979>,  <37.580853, 36.376045, 27.105167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154564, 36.758133, 27.523979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010212, 36.385880, 27.499681>,  <36.923599, 36.162529, 27.485104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010212, 36.385880, 27.499681>,  <37.154564, 36.758133, 27.523979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010212, 36.385880, 27.499681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481576, 0.130176, 0.866683,
		-0.798655, 0.342022, -0.495148,
		-0.360880, -0.930632, -0.060744,
		36.901947, 36.106689, 27.481459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546108, 36.750652, 27.921869>,  <37.154564, 36.758133, 27.523979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546108, 36.750652, 27.921869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586109, 36.357349, 27.860945>,  <36.610111, 36.121368, 27.824390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586109, 36.357349, 27.860945>,  <36.546108, 36.750652, 27.921869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586109, 36.357349, 27.860945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557131, -0.182166, 0.810198,
		-0.824381, 0.003833, -0.566022,
		0.100005, -0.983260, -0.152310,
		36.616112, 36.062370, 27.815252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905880, 36.464867, 28.010759>,  <36.546108, 36.750652, 27.921869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905880, 36.464867, 28.010759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147488, 36.153004, 28.076849>,  <36.292454, 35.965885, 28.116503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147488, 36.153004, 28.076849>,  <35.905880, 36.464867, 28.010759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147488, 36.153004, 28.076849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565462, -0.273155, 0.778228,
		-0.561618, -0.563492, -0.605856,
		0.604018, -0.779656, 0.165225,
		36.328693, 35.919106, 28.126417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565117, 35.781612, 27.979172>,  <35.905880, 36.464867, 28.010759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565117, 35.781612, 27.979172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888611, 35.727142, 28.208048>,  <36.082706, 35.694462, 28.345373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888611, 35.727142, 28.208048>,  <35.565117, 35.781612, 27.979172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888611, 35.727142, 28.208048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565698, -0.446422, 0.693321,
		0.161026, -0.884401, -0.438071,
		0.808738, -0.136173, 0.572189,
		36.131233, 35.686291, 28.379705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439957, 35.129772, 28.216566>,  <35.565117, 35.781612, 27.979172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439957, 35.129772, 28.216566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721695, 35.274700, 28.460737>,  <35.890739, 35.361656, 28.607239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721695, 35.274700, 28.460737>,  <35.439957, 35.129772, 28.216566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721695, 35.274700, 28.460737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547348, -0.270357, 0.792033,
		0.452004, -0.891981, 0.007891,
		0.704345, 0.362322, 0.610427,
		35.932999, 35.383396, 28.643866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510311, 34.580406, 28.624054>,  <35.439957, 35.129772, 28.216566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510311, 34.580406, 28.624054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689648, 34.874104, 28.827965>,  <35.797249, 35.050323, 28.950312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689648, 34.874104, 28.827965>,  <35.510311, 34.580406, 28.624054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689648, 34.874104, 28.827965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589794, -0.185534, 0.785951,
		0.671663, -0.653039, 0.349871,
		0.448344, 0.734246, 0.509775,
		35.824150, 35.094376, 28.980898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874424, 34.263432, 29.276119>,  <35.510311, 34.580406, 28.624054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874424, 34.263432, 29.276119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801456, 34.650249, 29.347166>,  <35.757675, 34.882339, 29.389793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801456, 34.650249, 29.347166>,  <35.874424, 34.263432, 29.276119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801456, 34.650249, 29.347166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534393, -0.249148, 0.807682,
		0.825318, 0.052416, 0.562230,
		-0.182414, 0.967046, 0.177616,
		35.746731, 34.940365, 29.400452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040222, 34.377293, 30.031923>,  <35.874424, 34.263432, 29.276119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040222, 34.377293, 30.031923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820747, 34.689323, 29.911646>,  <35.689060, 34.876541, 29.839479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820747, 34.689323, 29.911646>,  <36.040222, 34.377293, 30.031923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820747, 34.689323, 29.911646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583994, -0.100260, 0.805543,
		0.598240, 0.617595, 0.510574,
		-0.548689, 0.780080, -0.300692,
		35.656139, 34.923347, 29.821438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451591, 34.504505, 30.614792>,  <36.040222, 34.377293, 30.031923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451591, 34.504505, 30.614792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688736, 34.329395, 30.885159>,  <36.831024, 34.224327, 31.047379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688736, 34.329395, 30.885159>,  <36.451591, 34.504505, 30.614792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688736, 34.329395, 30.885159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726393, -0.071643, -0.683535,
		0.347662, 0.896224, 0.275524,
		0.592862, -0.437778, 0.675918,
		36.866596, 34.198063, 31.087934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105202, 34.823738, 30.586300>,  <36.451591, 34.504505, 30.614792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105202, 34.823738, 30.586300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163654, 34.462917, 30.748755>,  <37.198727, 34.246426, 30.846228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163654, 34.462917, 30.748755>,  <37.105202, 34.823738, 30.586300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163654, 34.462917, 30.748755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815114, -0.122841, -0.566126,
		0.560566, 0.413777, 0.717324,
		0.146133, -0.902052, 0.406136,
		37.207493, 34.192303, 30.870596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764156, 34.942307, 30.919796>,  <37.105202, 34.823738, 30.586300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764156, 34.942307, 30.919796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716682, 34.548149, 30.870958>,  <37.688198, 34.311653, 30.841656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716682, 34.548149, 30.870958>,  <37.764156, 34.942307, 30.919796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716682, 34.548149, 30.870958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830314, -0.031058, -0.556429,
		0.544511, -0.167415, 0.821876,
		-0.118681, -0.985397, -0.122095,
		37.681080, 34.252529, 30.834330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411579, 34.661018, 30.982895>,  <37.764156, 34.942307, 30.919796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411579, 34.661018, 30.982895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217979, 34.374935, 30.781214>,  <38.101818, 34.203285, 30.660206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217979, 34.374935, 30.781214>,  <38.411579, 34.661018, 30.982895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217979, 34.374935, 30.781214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746466, -0.036762, -0.664407,
		0.456655, -0.697942, 0.551672,
		-0.483998, -0.715209, -0.504203,
		38.072781, 34.160374, 30.629953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892517, 34.132473, 30.845169>,  <38.411579, 34.661018, 30.982895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892517, 34.132473, 30.845169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599789, 34.080143, 30.577641>,  <38.424152, 34.048744, 30.417124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599789, 34.080143, 30.577641>,  <38.892517, 34.132473, 30.845169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599789, 34.080143, 30.577641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681458, -0.150737, -0.716165,
		-0.007125, -0.979879, 0.199464,
		-0.731822, -0.130824, -0.668821,
		38.380241, 34.040897, 30.376995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947609, 33.477936, 30.636534>,  <38.892517, 34.132473, 30.845169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947609, 33.477936, 30.636534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755398, 33.691086, 30.357927>,  <38.640072, 33.818977, 30.190763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755398, 33.691086, 30.357927>,  <38.947609, 33.477936, 30.636534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755398, 33.691086, 30.357927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668590, -0.291363, -0.684174,
		-0.567520, -0.794449, -0.216268,
		-0.480529, 0.532877, -0.696516,
		38.611240, 33.850948, 30.148973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002575, 33.044304, 29.961121>,  <38.947609, 33.477936, 30.636534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002575, 33.044304, 29.961121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896507, 33.405491, 29.825865>,  <38.832867, 33.622204, 29.744711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896507, 33.405491, 29.825865>,  <39.002575, 33.044304, 29.961121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896507, 33.405491, 29.825865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666267, -0.081904, -0.741201,
		-0.696975, -0.421834, -0.579899,
		-0.265168, 0.902966, -0.338139,
		38.816956, 33.676380, 29.724422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755306, 32.956490, 29.234213>,  <39.002575, 33.044304, 29.961121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755306, 32.956490, 29.234213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879105, 33.330292, 29.304546>,  <38.953384, 33.554573, 29.346746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879105, 33.330292, 29.304546>,  <38.755306, 32.956490, 29.234213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879105, 33.330292, 29.304546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668307, -0.082228, -0.739327,
		-0.676445, 0.346330, -0.649983,
		0.309498, 0.934502, 0.175831,
		38.971954, 33.610641, 29.357296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923992, 33.089718, 28.585140>,  <38.755306, 32.956490, 29.234213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923992, 33.089718, 28.585140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066010, 33.388084, 28.810549>,  <39.151218, 33.567104, 28.945793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066010, 33.388084, 28.810549>,  <38.923992, 33.089718, 28.585140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066010, 33.388084, 28.810549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756108, 0.125366, -0.642326,
		-0.549767, 0.654136, -0.519483,
		0.355043, 0.745915, 0.563520,
		39.172523, 33.611858, 28.979605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038261, 33.740616, 28.053614>,  <38.923992, 33.089718, 28.585140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038261, 33.740616, 28.053614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264420, 33.783588, 28.380732>,  <39.400116, 33.809372, 28.577002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264420, 33.783588, 28.380732>,  <39.038261, 33.740616, 28.053614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264420, 33.783588, 28.380732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824816, -0.076794, -0.560161,
		0.002624, 0.991243, -0.132028,
		0.565395, 0.107429, 0.817795,
		39.434036, 33.815819, 28.626070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571083, 34.337505, 27.891581>,  <39.038261, 33.740616, 28.053614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571083, 34.337505, 27.891581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719513, 34.120079, 28.192736>,  <39.808571, 33.989624, 28.373428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719513, 34.120079, 28.192736>,  <39.571083, 34.337505, 27.891581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719513, 34.120079, 28.192736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916733, 0.085214, -0.390306,
		0.148001, 0.835029, 0.529926,
		0.371074, -0.543566, 0.752888,
		39.830833, 33.957008, 28.418602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137432, 34.693184, 28.089306>,  <39.571083, 34.337505, 27.891581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137432, 34.693184, 28.089306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206070, 34.328167, 28.237808>,  <40.247253, 34.109158, 28.326910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206070, 34.328167, 28.237808>,  <40.137432, 34.693184, 28.089306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206070, 34.328167, 28.237808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950812, 0.054746, -0.304892,
		0.257900, 0.405311, 0.877047,
		0.171591, -0.912538, 0.371255,
		40.257545, 34.054405, 28.349184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703396, 34.662952, 28.586283>,  <40.137432, 34.693184, 28.089306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703396, 34.662952, 28.586283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680408, 34.284626, 28.458450>,  <40.666615, 34.057629, 28.381750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680408, 34.284626, 28.458450>,  <40.703396, 34.662952, 28.586283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680408, 34.284626, 28.458450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947383, 0.049304, -0.316282,
		0.314901, -0.320942, 0.893215,
		-0.057469, -0.945815, -0.319581,
		40.663166, 34.000881, 28.362576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371716, 34.366402, 28.739077>,  <40.703396, 34.662952, 28.586283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371716, 34.366402, 28.739077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196846, 34.147522, 28.453575>,  <41.091923, 34.016193, 28.282274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196846, 34.147522, 28.453575>,  <41.371716, 34.366402, 28.739077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196846, 34.147522, 28.453575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862472, -0.030069, -0.505210,
		0.254991, -0.836459, 0.485093,
		-0.437174, -0.547204, -0.713756,
		41.065693, 33.983360, 28.239449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.670387, 28.794487, 24.817348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797440, 29.164135, 24.902309>,  <36.873672, 29.385923, 24.953285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797440, 29.164135, 24.902309>,  <36.670387, 28.794487, 24.817348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797440, 29.164135, 24.902309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206125, -0.151351, 0.966750,
		0.925539, -0.350851, 0.142410,
		0.317631, 0.924119, 0.212401,
		36.892731, 29.441370, 24.966030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854424, 28.719675, 25.459089>,  <36.670387, 28.794487, 24.817348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854424, 28.719675, 25.459089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868057, 29.118452, 25.430960>,  <36.876240, 29.357718, 25.414082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868057, 29.118452, 25.430960>,  <36.854424, 28.719675, 25.459089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868057, 29.118452, 25.430960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339176, 0.077727, 0.937506,
		0.940105, -0.008104, 0.340788,
		0.034086, 0.996942, -0.070322,
		36.878284, 29.417534, 25.409863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241913, 29.122129, 26.069622>,  <36.854424, 28.719675, 25.459089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241913, 29.122129, 26.069622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.971409, 29.372843, 25.914801>,  <36.809105, 29.523272, 25.821907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.971409, 29.372843, 25.914801>,  <37.241913, 29.122129, 26.069622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971409, 29.372843, 25.914801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423516, 0.099103, 0.900451,
		0.602747, 0.772865, 0.198433,
		-0.676262, 0.626784, -0.387055,
		36.768532, 29.560879, 25.798683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182728, 29.656071, 26.541613>,  <37.241913, 29.122129, 26.069622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182728, 29.656071, 26.541613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844620, 29.664705, 26.328053>,  <36.641754, 29.669886, 26.199917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844620, 29.664705, 26.328053>,  <37.182728, 29.656071, 26.541613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844620, 29.664705, 26.328053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513810, 0.241445, 0.823228,
		0.146676, 0.970174, -0.192996,
		-0.845272, 0.021585, -0.533899,
		36.591038, 29.671181, 26.167883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857250, 30.185579, 26.865240>,  <37.182728, 29.656071, 26.541613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857250, 30.185579, 26.865240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573856, 30.014162, 26.640957>,  <36.403820, 29.911312, 26.506386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573856, 30.014162, 26.640957>,  <36.857250, 30.185579, 26.865240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573856, 30.014162, 26.640957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652770, 0.095986, 0.751450,
		-0.268208, 0.898409, -0.347745,
		-0.708488, -0.428542, -0.560710,
		36.361309, 29.885599, 26.472744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292393, 30.563263, 27.092066>,  <36.857250, 30.185579, 26.865240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292393, 30.563263, 27.092066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161354, 30.222439, 26.928761>,  <36.082733, 30.017944, 26.830778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161354, 30.222439, 26.928761>,  <36.292393, 30.563263, 27.092066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161354, 30.222439, 26.928761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717587, -0.056712, 0.694156,
		-0.614615, 0.520365, -0.592848,
		-0.327593, -0.852059, -0.408263,
		36.063076, 29.966822, 26.806282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568722, 30.594486, 27.052654>,  <36.292393, 30.563263, 27.092066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568722, 30.594486, 27.052654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629318, 30.199270, 27.041183>,  <35.665676, 29.962139, 27.034302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629318, 30.199270, 27.041183>,  <35.568722, 30.594486, 27.052654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629318, 30.199270, 27.041183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692072, -0.126738, 0.710615,
		-0.705752, -0.087805, -0.702996,
		0.151492, -0.988042, -0.028678,
		35.674767, 29.902857, 27.032579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893826, 30.372065, 27.139439>,  <35.568722, 30.594486, 27.052654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893826, 30.372065, 27.139439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155308, 30.081779, 27.225237>,  <35.312199, 29.907608, 27.276716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155308, 30.081779, 27.225237>,  <34.893826, 30.372065, 27.139439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155308, 30.081779, 27.225237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494875, -0.195518, 0.846682,
		-0.572512, -0.659629, -0.486949,
		0.653704, -0.725715, 0.214498,
		35.351418, 29.864065, 27.289587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570267, 29.681545, 27.380356>,  <34.893826, 30.372065, 27.139439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570267, 29.681545, 27.380356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.945896, 29.638172, 27.510826>,  <35.171272, 29.612148, 27.589108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.945896, 29.638172, 27.510826>,  <34.570267, 29.681545, 27.380356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945896, 29.638172, 27.510826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342898, -0.361344, 0.867094,
		0.023838, -0.926106, -0.376510,
		0.939070, -0.108434, 0.326174,
		35.227615, 29.605642, 27.608679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558578, 28.974527, 27.700039>,  <34.570267, 29.681545, 27.380356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558578, 28.974527, 27.700039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869175, 29.177979, 27.848829>,  <35.055531, 29.300049, 27.938105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869175, 29.177979, 27.848829>,  <34.558578, 28.974527, 27.700039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869175, 29.177979, 27.848829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259935, -0.279207, 0.924379,
		0.574023, -0.814458, -0.084591,
		0.776486, 0.508627, 0.371977,
		35.102119, 29.330566, 27.960423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750858, 28.576530, 28.255060>,  <34.558578, 28.974527, 27.700039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750858, 28.576530, 28.255060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.913944, 28.936569, 28.316502>,  <35.011795, 29.152592, 28.353367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.913944, 28.936569, 28.316502>,  <34.750858, 28.576530, 28.255060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913944, 28.936569, 28.316502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193475, -0.079246, 0.977900,
		0.892377, -0.428422, 0.141836,
		0.407714, 0.900097, 0.153606,
		35.036259, 29.206598, 28.362583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173058, 28.542101, 28.895067>,  <34.750858, 28.576530, 28.255060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173058, 28.542101, 28.895067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053776, 28.920290, 28.842676>,  <34.982208, 29.147203, 28.811241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053776, 28.920290, 28.842676>,  <35.173058, 28.542101, 28.895067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053776, 28.920290, 28.842676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294586, 0.039359, 0.954814,
		0.907906, 0.323314, 0.266786,
		-0.298205, 0.945473, -0.130978,
		34.964314, 29.203932, 28.803383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290062, 28.791862, 29.636335>,  <35.173058, 28.542101, 28.895067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290062, 28.791862, 29.636335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.039471, 29.050900, 29.462828>,  <34.889118, 29.206322, 29.358723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.039471, 29.050900, 29.462828>,  <35.290062, 28.791862, 29.636335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039471, 29.050900, 29.462828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508042, 0.082786, 0.857345,
		0.591119, 0.757478, 0.277140,
		-0.626476, 0.647591, -0.433767,
		34.851528, 29.245176, 29.332697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237991, 29.303864, 30.132355>,  <35.290062, 28.791862, 29.636335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237991, 29.303864, 30.132355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927826, 29.360451, 29.886194>,  <34.741726, 29.394403, 29.738499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927826, 29.360451, 29.886194>,  <35.237991, 29.303864, 30.132355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927826, 29.360451, 29.886194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566466, 0.274786, 0.776923,
		0.279012, 0.951041, -0.132937,
		-0.775415, 0.141466, -0.615401,
		34.695202, 29.402891, 29.701574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814766, 29.754820, 30.234385>,  <35.237991, 29.303864, 30.132355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814766, 29.754820, 30.234385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047749, 29.597841, 30.519125>,  <36.187538, 29.503654, 30.689970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047749, 29.597841, 30.519125>,  <35.814766, 29.754820, 30.234385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047749, 29.597841, 30.519125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676813, -0.250868, -0.692091,
		0.450190, 0.884901, 0.119495,
		0.582455, -0.392448, 0.711850,
		36.222485, 29.480106, 30.732679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333687, 30.209194, 30.300833>,  <35.814766, 29.754820, 30.234385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333687, 30.209194, 30.300833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451107, 29.850533, 30.433403>,  <36.521557, 29.635336, 30.512945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451107, 29.850533, 30.433403>,  <36.333687, 30.209194, 30.300833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451107, 29.850533, 30.433403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645768, -0.069635, -0.760352,
		0.704850, 0.437224, 0.558589,
		0.293546, -0.896653, 0.331427,
		36.539169, 29.581537, 30.532831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066021, 30.186529, 30.225571>,  <36.333687, 30.209194, 30.300833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066021, 30.186529, 30.225571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000885, 29.793886, 30.265440>,  <36.961803, 29.558300, 30.289362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000885, 29.793886, 30.265440>,  <37.066021, 30.186529, 30.225571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000885, 29.793886, 30.265440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560237, -0.175146, -0.809604,
		0.812169, -0.075992, 0.578452,
		-0.162837, -0.981605, 0.099675,
		36.952034, 29.499405, 30.295341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699699, 29.926775, 30.338266>,  <37.066021, 30.186529, 30.225571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699699, 29.926775, 30.338266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490921, 29.623880, 30.181210>,  <37.365654, 29.442144, 30.086975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490921, 29.623880, 30.181210>,  <37.699699, 29.926775, 30.338266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490921, 29.623880, 30.181210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530346, 0.072430, -0.844682,
		0.668061, -0.649114, 0.363792,
		-0.521945, -0.757235, -0.392643,
		37.334339, 29.396709, 30.063417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172405, 29.466635, 30.014084>,  <37.699699, 29.926775, 30.338266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172405, 29.466635, 30.014084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829636, 29.344202, 29.848194>,  <37.623974, 29.270742, 29.748661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829636, 29.344202, 29.848194>,  <38.172405, 29.466635, 30.014084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829636, 29.344202, 29.848194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456889, -0.078589, -0.886045,
		0.238610, -0.948756, 0.207191,
		-0.856923, -0.306083, -0.414724,
		37.572559, 29.252377, 29.723778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291470, 28.844660, 29.664213>,  <38.172405, 29.466635, 30.014084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291470, 28.844660, 29.664213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.948273, 28.959957, 29.494144>,  <37.742355, 29.029135, 29.392103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.948273, 28.959957, 29.494144>,  <38.291470, 28.844660, 29.664213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948273, 28.959957, 29.494144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367319, -0.234320, -0.900095,
		-0.359074, -0.928445, 0.095166,
		-0.857988, 0.288244, -0.425173,
		37.690876, 29.046431, 29.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208084, 28.375637, 29.109768>,  <38.291470, 28.844660, 29.664213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208084, 28.375637, 29.109768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969009, 28.682426, 29.016365>,  <37.825565, 28.866499, 28.960323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969009, 28.682426, 29.016365>,  <38.208084, 28.375637, 29.109768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969009, 28.682426, 29.016365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399467, 0.032365, -0.916176,
		-0.695124, -0.640864, -0.325723,
		-0.597687, 0.766972, -0.233506,
		37.789703, 28.912518, 28.946314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788441, 28.158566, 28.413330>,  <38.208084, 28.375637, 29.109768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788441, 28.158566, 28.413330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764622, 28.556303, 28.448511>,  <37.750328, 28.794945, 28.469620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764622, 28.556303, 28.448511>,  <37.788441, 28.158566, 28.413330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764622, 28.556303, 28.448511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275779, 0.101069, -0.955893,
		-0.959374, -0.032667, -0.280238,
		-0.059550, 0.994343, 0.087954,
		37.746758, 28.854607, 28.474897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426624, 28.450872, 27.779846>,  <37.788441, 28.158566, 28.413330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426624, 28.450872, 27.779846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645203, 28.741457, 27.946533>,  <37.776348, 28.915808, 28.046545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645203, 28.741457, 27.946533>,  <37.426624, 28.450872, 27.779846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645203, 28.741457, 27.946533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339841, 0.262429, -0.903127,
		-0.765445, 0.635127, -0.103478,
		0.546445, 0.726461, 0.416717,
		37.809135, 28.959394, 28.071548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483879, 29.052660, 27.344912>,  <37.426624, 28.450872, 27.779846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483879, 29.052660, 27.344912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816761, 29.096352, 27.562353>,  <38.016491, 29.122566, 27.692818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816761, 29.096352, 27.562353>,  <37.483879, 29.052660, 27.344912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816761, 29.096352, 27.562353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535990, 0.092510, -0.839141,
		-0.141947, 0.989702, 0.018442,
		0.832205, 0.109229, 0.543602,
		38.066422, 29.129120, 27.725433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909233, 29.539865, 26.900248>,  <37.483879, 29.052660, 27.344912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909233, 29.539865, 26.900248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185547, 29.469513, 27.180786>,  <38.351334, 29.427301, 27.349110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185547, 29.469513, 27.180786>,  <37.909233, 29.539865, 26.900248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185547, 29.469513, 27.180786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723058, 0.171978, -0.669037,
		-0.002945, 0.969272, 0.245972,
		0.690781, -0.175882, 0.701347,
		38.392780, 29.416748, 27.391190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257721, 30.131300, 26.949043>,  <37.909233, 29.539865, 26.900248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257721, 30.131300, 26.949043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488400, 29.831234, 27.078459>,  <38.626804, 29.651196, 27.156109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488400, 29.831234, 27.078459>,  <38.257721, 30.131300, 26.949043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488400, 29.831234, 27.078459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686583, 0.230406, -0.689577,
		0.442750, 0.619812, 0.647924,
		0.576694, -0.750164, 0.323540,
		38.661407, 29.606184, 27.175520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875648, 30.379267, 26.996908>,  <38.257721, 30.131300, 26.949043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875648, 30.379267, 26.996908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959072, 29.988144, 26.988947>,  <39.009129, 29.753469, 26.984169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959072, 29.988144, 26.988947>,  <38.875648, 30.379267, 26.996908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959072, 29.988144, 26.988947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716625, 0.166640, -0.677259,
		0.665545, 0.126987, 0.735476,
		0.208562, -0.977806, -0.019905,
		39.021641, 29.694801, 26.982975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483788, 30.417549, 26.834641>,  <38.875648, 30.379267, 26.996908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483788, 30.417549, 26.834641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401646, 30.033707, 26.757711>,  <39.352360, 29.803402, 26.711554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401646, 30.033707, 26.757711>,  <39.483788, 30.417549, 26.834641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401646, 30.033707, 26.757711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541046, 0.052435, -0.839357,
		0.815535, -0.276423, 0.508422,
		-0.205358, -0.959604, -0.192320,
		39.340038, 29.745825, 26.700016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904331, 30.229261, 27.454504>,  <39.483788, 30.417549, 26.834641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904331, 30.229261, 27.454504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.242153, 30.350967, 27.630753>,  <40.444847, 30.423990, 27.736502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.242153, 30.350967, 27.630753>,  <39.904331, 30.229261, 27.454504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242153, 30.350967, 27.630753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368286, -0.267269, 0.890468,
		0.388703, -0.914325, -0.113667,
		0.844557, 0.304265, 0.440622,
		40.495522, 30.442247, 27.762939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138691, 29.600321, 27.813721>,  <39.904331, 30.229261, 27.454504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138691, 29.600321, 27.813721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269032, 29.943081, 27.973494>,  <40.347237, 30.148737, 28.069357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269032, 29.943081, 27.973494>,  <40.138691, 29.600321, 27.813721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269032, 29.943081, 27.973494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429290, -0.242317, 0.870053,
		0.842336, -0.454981, 0.288899,
		0.325852, 0.856898, 0.399431,
		40.366787, 30.200150, 28.093323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069427, 29.402927, 28.566916>,  <40.138691, 29.600321, 27.813721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069427, 29.402927, 28.566916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126228, 29.798475, 28.549168>,  <40.160309, 30.035805, 28.538519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126228, 29.798475, 28.549168>,  <40.069427, 29.402927, 28.566916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126228, 29.798475, 28.549168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262155, 0.080791, 0.961638,
		0.954521, -0.124922, 0.270710,
		0.142000, 0.988872, -0.044368,
		40.168827, 30.095137, 28.535858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401657, 29.449785, 29.199711>,  <40.069427, 29.402927, 28.566916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401657, 29.449785, 29.199711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268353, 29.811029, 29.091394>,  <40.188370, 30.027775, 29.026403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268353, 29.811029, 29.091394>,  <40.401657, 29.449785, 29.199711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268353, 29.811029, 29.091394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351785, 0.147364, 0.924409,
		0.874747, 0.403333, 0.268589,
		-0.333264, 0.903109, -0.270793,
		40.168373, 30.081963, 29.010157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573357, 29.970201, 29.715008>,  <40.401657, 29.449785, 29.199711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573357, 29.970201, 29.715008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274479, 30.165556, 29.534704>,  <40.095154, 30.282768, 29.426521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274479, 30.165556, 29.534704>,  <40.573357, 29.970201, 29.715008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274479, 30.165556, 29.534704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322944, 0.325975, 0.888508,
		0.580869, 0.809457, -0.085846,
		-0.747193, 0.488384, -0.450759,
		40.050320, 30.312071, 29.399477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557770, 30.776768, 29.817875>,  <40.573357, 29.970201, 29.715008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557770, 30.776768, 29.817875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190811, 30.630636, 29.754734>,  <39.970634, 30.542957, 29.716848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190811, 30.630636, 29.754734>,  <40.557770, 30.776768, 29.817875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190811, 30.630636, 29.754734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328458, 0.471069, 0.818663,
		-0.224722, 0.802886, -0.552153,
		-0.917396, -0.365331, -0.157854,
		39.915592, 30.521036, 29.707378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280460, 31.181967, 30.318895>,  <40.557770, 30.776768, 29.817875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280460, 31.181967, 30.318895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970882, 30.981888, 30.163559>,  <39.785133, 30.861841, 30.070356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970882, 30.981888, 30.163559>,  <40.280460, 31.181967, 30.318895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970882, 30.981888, 30.163559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594971, 0.364399, 0.716396,
		-0.216828, 0.785504, -0.579629,
		-0.773947, -0.500197, -0.388340,
		39.738697, 30.831829, 30.047056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766090, 31.667435, 30.358906>,  <40.280460, 31.181967, 30.318895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766090, 31.667435, 30.358906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.608879, 31.300892, 30.328402>,  <39.514553, 31.080967, 30.310099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.608879, 31.300892, 30.328402>,  <39.766090, 31.667435, 30.358906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608879, 31.300892, 30.328402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585511, 0.185454, 0.789167,
		-0.709016, 0.354818, -0.609426,
		-0.393031, -0.916357, -0.076260,
		39.490971, 31.025984, 30.305523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065514, 31.726772, 30.507883>,  <39.766090, 31.667435, 30.358906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065514, 31.726772, 30.507883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167942, 31.350143, 30.595404>,  <39.229397, 31.124166, 30.647917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167942, 31.350143, 30.595404>,  <39.065514, 31.726772, 30.507883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167942, 31.350143, 30.595404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447313, 0.085239, 0.890306,
		-0.856936, -0.325854, -0.399349,
		0.256069, -0.941570, 0.218803,
		39.244762, 31.067673, 30.661045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411530, 31.432991, 30.744982>,  <39.065514, 31.726772, 30.507883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411530, 31.432991, 30.744982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700638, 31.188202, 30.873407>,  <38.874104, 31.041328, 30.950462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700638, 31.188202, 30.873407>,  <38.411530, 31.432991, 30.744982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700638, 31.188202, 30.873407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451303, -0.066126, 0.889918,
		-0.523376, -0.788108, -0.323980,
		0.722775, -0.611975, 0.321066,
		38.917469, 31.004610, 30.969727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050247, 30.811178, 30.933573>,  <38.411530, 31.432991, 30.744982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050247, 30.811178, 30.933573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391243, 30.773687, 31.139282>,  <38.595840, 30.751192, 31.262709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391243, 30.773687, 31.139282>,  <38.050247, 30.811178, 30.933573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391243, 30.773687, 31.139282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521232, -0.077594, 0.849880,
		-0.039748, -0.992570, -0.114998,
		0.852489, -0.093722, 0.514275,
		38.646988, 30.745569, 31.293564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012062, 30.140236, 31.449018>,  <38.050247, 30.811178, 30.933573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012062, 30.140236, 31.449018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296696, 30.390005, 31.577852>,  <38.467476, 30.539867, 31.655153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296696, 30.390005, 31.577852>,  <38.012062, 30.140236, 31.449018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296696, 30.390005, 31.577852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317291, -0.123418, 0.940263,
		0.626873, -0.771274, 0.110301,
		0.711587, 0.624423, 0.322086,
		38.510174, 30.577332, 31.674479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256279, 29.893276, 32.059685>,  <38.012062, 30.140236, 31.449018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256279, 29.893276, 32.059685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332077, 30.285723, 32.075199>,  <38.377556, 30.521191, 32.084507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332077, 30.285723, 32.075199>,  <38.256279, 29.893276, 32.059685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332077, 30.285723, 32.075199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329924, 0.026414, 0.943638,
		0.924793, -0.191613, 0.328699,
		0.189496, 0.981115, 0.038790,
		38.388927, 30.580057, 32.086838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473560, 29.948179, 32.749222>,  <38.256279, 29.893276, 32.059685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473560, 29.948179, 32.749222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411407, 30.323509, 32.625671>,  <38.374115, 30.548708, 32.551540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411407, 30.323509, 32.625671>,  <38.473560, 29.948179, 32.749222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411407, 30.323509, 32.625671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044884, 0.305641, 0.951088,
		0.986834, 0.161645, -0.005376,
		-0.155382, 0.938325, -0.308872,
		38.364792, 30.605007, 32.533009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.909161, 33.870419, 28.569542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.634083, 33.855610, 28.279520>,  <41.469036, 33.846725, 28.105507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.634083, 33.855610, 28.279520>,  <41.909161, 33.870419, 28.569542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634083, 33.855610, 28.279520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725971, -0.044257, -0.686300,
		-0.006680, -0.998334, 0.057314,
		-0.687693, -0.037024, -0.725057,
		41.427776, 33.844505, 28.062002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148796, 33.385433, 28.245794>,  <41.909161, 33.870419, 28.569542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148796, 33.385433, 28.245794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.896248, 33.571636, 27.997707>,  <41.744720, 33.683357, 27.848856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.896248, 33.571636, 27.997707>,  <42.148796, 33.385433, 28.245794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896248, 33.571636, 27.997707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629759, -0.158917, -0.760361,
		-0.452521, -0.870657, -0.192825,
		-0.631370, 0.465512, -0.620218,
		41.706837, 33.711288, 27.811642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138245, 32.975735, 27.672302>,  <42.148796, 33.385433, 28.245794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138245, 32.975735, 27.672302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.015705, 33.340935, 27.564539>,  <41.942181, 33.560055, 27.499882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.015705, 33.340935, 27.564539>,  <42.138245, 32.975735, 27.672302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015705, 33.340935, 27.564539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654972, -0.003204, -0.755646,
		-0.690768, -0.407946, -0.597008,
		-0.306350, 0.913000, -0.269407,
		41.923801, 33.614834, 27.483717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207386, 32.969250, 26.940170>,  <42.138245, 32.975735, 27.672302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207386, 32.969250, 26.940170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.168713, 33.352097, 27.049400>,  <42.145508, 33.581806, 27.114939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.168713, 33.352097, 27.049400>,  <42.207386, 32.969250, 26.940170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168713, 33.352097, 27.049400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448846, 0.286807, -0.846333,
		-0.888363, 0.040745, -0.457329,
		-0.096681, 0.957122, 0.273077,
		42.139709, 33.639233, 27.131323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918575, 33.259762, 26.385071>,  <42.207386, 32.969250, 26.940170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918575, 33.259762, 26.385071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104153, 33.556580, 26.578621>,  <42.215500, 33.734669, 26.694750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104153, 33.556580, 26.578621>,  <41.918575, 33.259762, 26.385071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104153, 33.556580, 26.578621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375966, 0.329653, -0.866013,
		-0.802128, 0.583698, -0.126043,
		0.463940, 0.742041, 0.483874,
		42.243336, 33.779194, 26.723783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655914, 33.891258, 26.109509>,  <41.918575, 33.259762, 26.385071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655914, 33.891258, 26.109509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.996746, 34.009068, 26.282579>,  <42.201244, 34.079754, 26.386421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.996746, 34.009068, 26.282579>,  <41.655914, 33.891258, 26.109509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996746, 34.009068, 26.282579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276526, 0.448557, -0.849900,
		-0.444394, 0.843833, 0.300765,
		0.852084, 0.294521, 0.432678,
		42.252373, 34.097424, 26.412382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664577, 34.554333, 25.855537>,  <41.655914, 33.891258, 26.109509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664577, 34.554333, 25.855537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.031757, 34.447002, 25.972410>,  <42.252064, 34.382607, 26.042534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.031757, 34.447002, 25.972410>,  <41.664577, 34.554333, 25.855537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031757, 34.447002, 25.972410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359081, 0.248973, -0.899485,
		0.168606, 0.930600, 0.324894,
		0.917950, -0.268322, 0.292183,
		42.307144, 34.366505, 26.060064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061974, 35.141083, 25.903498>,  <41.664577, 34.554333, 25.855537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061974, 35.141083, 25.903498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.317368, 34.838066, 25.849140>,  <42.470604, 34.656254, 25.816525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.317368, 34.838066, 25.849140>,  <42.061974, 35.141083, 25.903498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317368, 34.838066, 25.849140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361081, 0.450775, -0.816347,
		0.679676, 0.472154, 0.561347,
		0.638483, -0.757544, -0.135895,
		42.508911, 34.610802, 25.808372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606552, 35.453976, 25.691196>,  <42.061974, 35.141083, 25.903498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606552, 35.453976, 25.691196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.726608, 35.082535, 25.603922>,  <42.798641, 34.859669, 25.551558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.726608, 35.082535, 25.603922>,  <42.606552, 35.453976, 25.691196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726608, 35.082535, 25.603922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588760, 0.360307, -0.723561,
		0.750517, 0.088714, 0.654870,
		0.300144, -0.928606, -0.218185,
		42.816650, 34.803951, 25.538467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393517, 35.502102, 25.620295>,  <42.606552, 35.453976, 25.691196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393517, 35.502102, 25.620295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.252319, 35.188618, 25.415863>,  <43.167603, 35.000526, 25.293203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.252319, 35.188618, 25.415863>,  <43.393517, 35.502102, 25.620295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252319, 35.188618, 25.415863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535312, 0.278833, -0.797303,
		0.767358, -0.555028, 0.321102,
		-0.352992, -0.783707, -0.511078,
		43.146423, 34.953506, 25.262539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001942, 35.104481, 25.324266>,  <43.393517, 35.502102, 25.620295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001942, 35.104481, 25.324266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674675, 35.005928, 25.116457>,  <43.478317, 34.946796, 24.991772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674675, 35.005928, 25.116457>,  <44.001942, 35.104481, 25.324266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674675, 35.005928, 25.116457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446289, 0.297580, -0.843962,
		0.362536, -0.922357, -0.133511,
		-0.818165, -0.246382, -0.519522,
		43.429226, 34.932014, 24.960600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245647, 34.766262, 24.757307>,  <44.001942, 35.104481, 25.324266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245647, 34.766262, 24.757307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.880520, 34.900551, 24.664314>,  <43.661442, 34.981125, 24.608519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.880520, 34.900551, 24.664314>,  <44.245647, 34.766262, 24.757307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880520, 34.900551, 24.664314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363983, 0.410809, -0.835914,
		-0.185127, -0.847660, -0.497192,
		-0.912822, 0.335719, -0.232482,
		43.606674, 35.001266, 24.594570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097244, 34.584900, 24.042303>,  <44.245647, 34.766262, 24.757307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097244, 34.584900, 24.042303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.942421, 34.919968, 24.196442>,  <43.849529, 35.121010, 24.288925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.942421, 34.919968, 24.196442>,  <44.097244, 34.584900, 24.042303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942421, 34.919968, 24.196442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442160, 0.535355, -0.719645,
		-0.809124, -0.108158, -0.577598,
		-0.387056, 0.837673, 0.385346,
		43.826305, 35.171268, 24.312046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052010, 33.774357, 23.786894>,  <44.097244, 34.584900, 24.042303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052010, 33.774357, 23.786894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.692028, 33.613522, 23.719473>,  <43.476040, 33.517021, 23.679020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.692028, 33.613522, 23.719473>,  <44.052010, 33.774357, 23.786894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692028, 33.613522, 23.719473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239508, 0.132909, 0.961754,
		-0.364308, 0.905903, -0.215915,
		-0.899953, -0.402088, -0.168551,
		43.422043, 33.492893, 23.668907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884399, 33.027218, 23.647135>,  <44.052010, 33.774357, 23.786894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884399, 33.027218, 23.647135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.856773, 32.662594, 23.485003>,  <43.840199, 32.443821, 23.387722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.856773, 32.662594, 23.485003>,  <43.884399, 33.027218, 23.647135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856773, 32.662594, 23.485003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512888, -0.316050, 0.798159,
		-0.855673, 0.263016, -0.445698,
		-0.069066, -0.911556, -0.405333,
		43.836052, 32.389126, 23.363403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056362, 32.822929, 23.702150>,  <43.884399, 33.027218, 23.647135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056362, 32.822929, 23.702150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.250992, 32.475479, 23.664759>,  <43.367771, 32.267010, 23.642323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.250992, 32.475479, 23.664759>,  <43.056362, 32.822929, 23.702150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250992, 32.475479, 23.664759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497924, -0.363651, 0.787293,
		-0.717854, -0.336532, -0.609452,
		0.486577, -0.868622, -0.093481,
		43.396965, 32.214893, 23.636715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555107, 32.406654, 23.525381>,  <43.056362, 32.822929, 23.702150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555107, 32.406654, 23.525381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.857834, 32.190540, 23.672527>,  <43.039471, 32.060871, 23.760815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.857834, 32.190540, 23.672527>,  <42.555107, 32.406654, 23.525381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857834, 32.190540, 23.672527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612226, -0.388823, 0.688473,
		-0.228938, -0.746262, -0.625044,
		0.756813, -0.540286, 0.367865,
		43.084877, 32.028454, 23.782887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301064, 31.833393, 23.769787>,  <42.555107, 32.406654, 23.525381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301064, 31.833393, 23.769787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651638, 31.805359, 23.960342>,  <42.861984, 31.788538, 24.074677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651638, 31.805359, 23.960342>,  <42.301064, 31.833393, 23.769787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651638, 31.805359, 23.960342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465713, -0.374773, 0.801659,
		0.122354, -0.924464, -0.361104,
		0.876437, -0.070085, 0.476389,
		42.914570, 31.784332, 24.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391113, 31.080816, 24.054438>,  <42.301064, 31.833393, 23.769787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391113, 31.080816, 24.054438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.616074, 31.327057, 24.275251>,  <42.751049, 31.474800, 24.407740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.616074, 31.327057, 24.275251>,  <42.391113, 31.080816, 24.054438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616074, 31.327057, 24.275251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523982, -0.251130, 0.813865,
		0.639648, -0.746974, 0.181328,
		0.562399, 0.615600, 0.552036,
		42.784794, 31.511736, 24.440863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618134, 30.630014, 24.635014>,  <42.391113, 31.080816, 24.054438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618134, 30.630014, 24.635014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.644417, 31.011959, 24.750895>,  <42.660187, 31.241125, 24.820423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.644417, 31.011959, 24.750895>,  <42.618134, 30.630014, 24.635014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644417, 31.011959, 24.750895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378081, -0.244857, 0.892804,
		0.923438, -0.168192, 0.344926,
		0.065705, 0.954860, 0.289700,
		42.664127, 31.298416, 24.837805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607517, 30.456310, 25.270546>,  <42.618134, 30.630014, 24.635014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607517, 30.456310, 25.270546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.599167, 30.855787, 25.289213>,  <42.594158, 31.095474, 25.300413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.599167, 30.855787, 25.289213>,  <42.607517, 30.456310, 25.270546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599167, 30.855787, 25.289213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511843, -0.050772, 0.857577,
		0.858825, -0.005984, 0.512234,
		-0.020876, 0.998692, 0.046668,
		42.592903, 31.155396, 25.303213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948326, 30.752670, 25.892870>,  <42.607517, 30.456310, 25.270546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948326, 30.752670, 25.892870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.650726, 30.974724, 25.744120>,  <42.472168, 31.107956, 25.654869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.650726, 30.974724, 25.744120>,  <42.948326, 30.752670, 25.892870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650726, 30.974724, 25.744120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430114, 0.028017, 0.902340,
		0.511338, 0.831290, 0.217926,
		-0.744000, 0.555133, -0.371875,
		42.427525, 31.141264, 25.632557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815735, 31.219191, 26.414309>,  <42.948326, 30.752670, 25.892870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815735, 31.219191, 26.414309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479691, 31.243553, 26.198717>,  <42.278065, 31.258171, 26.069363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479691, 31.243553, 26.198717>,  <42.815735, 31.219191, 26.414309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479691, 31.243553, 26.198717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542411, -0.093845, 0.834856,
		0.000268, 0.993722, 0.111877,
		-0.840113, 0.060907, -0.538980,
		42.227657, 31.261826, 26.037024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464310, 31.570375, 26.868538>,  <42.815735, 31.219191, 26.414309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464310, 31.570375, 26.868538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.173237, 31.425573, 26.635496>,  <41.998592, 31.338692, 26.495672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.173237, 31.425573, 26.635496>,  <42.464310, 31.570375, 26.868538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173237, 31.425573, 26.635496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569548, -0.154410, 0.807324,
		-0.382214, 0.919299, -0.093816,
		-0.727686, -0.362003, -0.582603,
		41.954929, 31.316973, 26.460714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764435, 31.867374, 27.213930>,  <42.464310, 31.570375, 26.868538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764435, 31.867374, 27.213930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613983, 31.582905, 26.976357>,  <41.523712, 31.412222, 26.833813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613983, 31.582905, 26.976357>,  <41.764435, 31.867374, 27.213930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613983, 31.582905, 26.976357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596134, -0.304981, 0.742705,
		-0.709332, 0.633417, -0.309243,
		-0.376128, -0.711175, -0.593934,
		41.501144, 31.369553, 26.798176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001392, 31.814482, 27.468643>,  <41.764435, 31.867374, 27.213930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001392, 31.814482, 27.468643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.082584, 31.473864, 27.275286>,  <41.131302, 31.269493, 27.159271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.082584, 31.473864, 27.275286>,  <41.001392, 31.814482, 27.468643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082584, 31.473864, 27.275286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715499, -0.466011, 0.520476,
		-0.668475, 0.240220, -0.703871,
		0.202983, -0.851544, -0.483394,
		41.143478, 31.218401, 27.130268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344090, 31.476521, 27.200325>,  <41.001392, 31.814482, 27.468643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344090, 31.476521, 27.200325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630093, 31.199373, 27.237637>,  <40.801693, 31.033085, 27.260023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630093, 31.199373, 27.237637>,  <40.344090, 31.476521, 27.200325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630093, 31.199373, 27.237637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592992, -0.530372, 0.605860,
		-0.370308, -0.488507, -0.790084,
		0.715006, -0.692868, 0.093280,
		40.844593, 30.991512, 27.265619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995499, 30.857954, 27.116180>,  <40.344090, 31.476521, 27.200325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995499, 30.857954, 27.116180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345158, 30.787756, 27.297319>,  <40.554951, 30.745638, 27.406004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345158, 30.787756, 27.297319>,  <39.995499, 30.857954, 27.116180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345158, 30.787756, 27.297319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481060, -0.440978, 0.757707,
		0.066725, -0.880193, -0.469902,
		0.874145, -0.175493, 0.452850,
		40.607403, 30.735107, 27.433174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111000, 30.165928, 26.580341>,  <39.995499, 30.857954, 27.116180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111000, 30.165928, 26.580341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809952, 29.940796, 26.443649>,  <39.629322, 29.805716, 26.361633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809952, 29.940796, 26.443649>,  <40.111000, 30.165928, 26.580341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809952, 29.940796, 26.443649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408506, 0.007913, -0.912721,
		0.516413, -0.826533, 0.223965,
		-0.752622, -0.562832, -0.341730,
		39.584164, 29.771946, 26.341129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445759, 29.663563, 26.070271>,  <40.111000, 30.165928, 26.580341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445759, 29.663563, 26.070271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057007, 29.631960, 25.981535>,  <39.823757, 29.612999, 25.928293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057007, 29.631960, 25.981535>,  <40.445759, 29.663563, 26.070271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057007, 29.631960, 25.981535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230707, -0.130578, -0.964222,
		0.047215, -0.988285, 0.145134,
		-0.971877, -0.079009, -0.221840,
		39.765442, 29.608257, 25.914984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306343, 29.019735, 25.607742>,  <40.445759, 29.663563, 26.070271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306343, 29.019735, 25.607742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.996925, 29.259895, 25.526604>,  <39.811275, 29.403992, 25.477921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.996925, 29.259895, 25.526604>,  <40.306343, 29.019735, 25.607742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996925, 29.259895, 25.526604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068750, -0.238686, -0.968660,
		-0.630000, -0.763249, 0.143357,
		-0.773546, 0.600400, -0.202845,
		39.764862, 29.440016, 25.465750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904469, 28.725006, 25.070669>,  <40.306343, 29.019735, 25.607742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904469, 28.725006, 25.070669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.800144, 29.110935, 25.057465>,  <39.737549, 29.342493, 25.049541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.800144, 29.110935, 25.057465>,  <39.904469, 28.725006, 25.070669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800144, 29.110935, 25.057465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248751, 0.034123, -0.967966,
		-0.932791, -0.260671, -0.248901,
		-0.260814, 0.964825, -0.033012,
		39.721901, 29.400383, 25.047562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462704, 28.766109, 24.461372>,  <39.904469, 28.725006, 25.070669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462704, 28.766109, 24.461372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.613228, 29.127733, 24.542437>,  <39.703541, 29.344707, 24.591074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.613228, 29.127733, 24.542437>,  <39.462704, 28.766109, 24.461372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613228, 29.127733, 24.542437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357196, 0.060260, -0.932083,
		-0.854870, 0.423140, -0.300250,
		0.376309, 0.904058, 0.202658,
		39.726120, 29.398951, 24.603233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343884, 29.093851, 23.808998>,  <39.462704, 28.766109, 24.461372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343884, 29.093851, 23.808998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619339, 29.289568, 24.023054>,  <39.784611, 29.406998, 24.151487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619339, 29.289568, 24.023054>,  <39.343884, 29.093851, 23.808998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619339, 29.289568, 24.023054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453897, 0.284658, -0.844362,
		-0.565473, 0.824355, -0.026064,
		0.688635, 0.489294, 0.535139,
		39.825928, 29.436356, 24.183596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444965, 29.696905, 23.482559>,  <39.343884, 29.093851, 23.808998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444965, 29.696905, 23.482559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761810, 29.642321, 23.720530>,  <39.951916, 29.609570, 23.863312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761810, 29.642321, 23.720530>,  <39.444965, 29.696905, 23.482559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761810, 29.642321, 23.720530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608058, 0.261247, -0.749677,
		-0.053120, 0.955577, 0.289914,
		0.792114, -0.136461, 0.594924,
		39.999443, 29.601381, 23.899006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159424, 30.297869, 23.286430>,  <39.444965, 29.696905, 23.482559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159424, 30.297869, 23.286430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854439, 30.300894, 23.027636>,  <38.671448, 30.302708, 22.872358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854439, 30.300894, 23.027636>,  <39.159424, 30.297869, 23.286430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854439, 30.300894, 23.027636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645644, -0.074335, 0.760012,
		-0.042347, 0.997205, 0.061559,
		-0.762464, 0.007561, -0.646987,
		38.625698, 30.303162, 22.833540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744644, 30.819981, 23.590654>,  <39.159424, 30.297869, 23.286430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744644, 30.819981, 23.590654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517723, 30.594387, 23.350626>,  <38.381569, 30.459030, 23.206610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517723, 30.594387, 23.350626>,  <38.744644, 30.819981, 23.590654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517723, 30.594387, 23.350626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653174, -0.135611, 0.744966,
		-0.501524, 0.814575, -0.291446,
		-0.567307, -0.563983, -0.600071,
		38.347530, 30.425192, 23.170605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088840, 31.080999, 23.571615>,  <38.744644, 30.819981, 23.590654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088840, 31.080999, 23.571615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064663, 30.691383, 23.484350>,  <38.050156, 30.457615, 23.431992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064663, 30.691383, 23.484350>,  <38.088840, 31.080999, 23.571615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064663, 30.691383, 23.484350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682050, -0.119277, 0.721513,
		-0.728803, 0.192409, -0.657134,
		-0.060445, -0.974039, -0.218162,
		38.046528, 30.399172, 23.418901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307655, 30.923563, 23.772261>,  <38.088840, 31.080999, 23.571615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307655, 30.923563, 23.772261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482037, 30.565626, 23.733889>,  <37.586666, 30.350864, 23.710865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482037, 30.565626, 23.733889>,  <37.307655, 30.923563, 23.772261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482037, 30.565626, 23.733889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603471, -0.369742, 0.706479,
		-0.667656, -0.250102, -0.701202,
		0.435956, -0.894841, -0.095931,
		37.612823, 30.297174, 23.705109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747726, 30.472740, 23.644882>,  <37.307655, 30.923563, 23.772261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747726, 30.472740, 23.644882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050980, 30.267057, 23.805292>,  <37.232933, 30.143648, 23.901539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050980, 30.267057, 23.805292>,  <36.747726, 30.472740, 23.644882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050980, 30.267057, 23.805292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605337, -0.326279, 0.726023,
		-0.242478, -0.793181, -0.558631,
		0.758137, -0.514204, 0.401026,
		37.278419, 30.112795, 23.925600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530384, 29.842710, 23.706551>,  <36.747726, 30.472740, 23.644882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530384, 29.842710, 23.706551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.833839, 29.866238, 23.966089>,  <37.015915, 29.880354, 24.121813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.833839, 29.866238, 23.966089>,  <36.530384, 29.842710, 23.706551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833839, 29.866238, 23.966089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523782, -0.537199, 0.661112,
		0.387445, -0.841402, -0.376734,
		0.758643, 0.058818, 0.648847,
		37.061432, 29.883883, 24.160744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484562, 29.207529, 24.081907>,  <36.530384, 29.842710, 23.706551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484562, 29.207529, 24.081907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730663, 29.440115, 24.294834>,  <36.878323, 29.579666, 24.422590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730663, 29.440115, 24.294834>,  <36.484562, 29.207529, 24.081907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730663, 29.440115, 24.294834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433107, -0.314892, 0.844548,
		0.658699, -0.750160, 0.058100,
		0.615251, 0.581467, 0.532318,
		36.915237, 29.614555, 24.454529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.069588, 35.804775, 22.343973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.249660, 35.821468, 22.700758>,  <42.357704, 35.831482, 22.914829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.249660, 35.821468, 22.700758>,  <42.069588, 35.804775, 22.343973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249660, 35.821468, 22.700758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892882, 0.009929, 0.450180,
		0.009929, -0.999080, 0.041730,
		-0.450180, -0.041730, -0.891962,
		42.384716, 35.833988, 22.968346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662601, 35.171856, 22.686375>,  <42.069588, 35.804775, 22.343973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662601, 35.171856, 22.686375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.835915, 35.366493, 22.989820>,  <41.939903, 35.483276, 23.171888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.835915, 35.366493, 22.989820>,  <41.662601, 35.171856, 22.686375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835915, 35.366493, 22.989820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811785, -0.154931, 0.563028,
		0.391499, -0.859781, 0.327881,
		0.433282, 0.486594, 0.758613,
		41.965900, 35.512470, 23.217403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546162, 34.750038, 23.318918>,  <41.662601, 35.171856, 22.686375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546162, 34.750038, 23.318918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.609013, 35.129429, 23.428968>,  <41.646725, 35.357063, 23.494999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.609013, 35.129429, 23.428968>,  <41.546162, 34.750038, 23.318918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609013, 35.129429, 23.428968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841699, -0.017103, 0.539676,
		0.516578, -0.316372, 0.795648,
		0.157130, 0.948481, 0.275125,
		41.656151, 35.413975, 23.511505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508045, 34.683586, 23.994810>,  <41.546162, 34.750038, 23.318918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508045, 34.683586, 23.994810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448250, 35.077980, 23.965172>,  <41.412373, 35.314617, 23.947390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448250, 35.077980, 23.965172>,  <41.508045, 34.683586, 23.994810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448250, 35.077980, 23.965172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820000, -0.081750, 0.566496,
		0.552499, 0.145439, 0.820727,
		-0.149485, 0.985984, -0.074093,
		41.403404, 35.373775, 23.942944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151329, 34.868210, 24.593987>,  <41.508045, 34.683586, 23.994810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151329, 34.868210, 24.593987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.092087, 35.189693, 24.363466>,  <41.056541, 35.382584, 24.225155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.092087, 35.189693, 24.363466>,  <41.151329, 34.868210, 24.593987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092087, 35.189693, 24.363466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937300, 0.071818, 0.341043,
		0.315487, 0.590679, 0.742675,
		-0.148110, 0.803704, -0.576301,
		41.047653, 35.430805, 24.190577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694984, 35.302376, 25.034706>,  <41.151329, 34.868210, 24.593987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694984, 35.302376, 25.034706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653519, 35.411789, 24.652203>,  <40.628639, 35.477436, 24.422701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653519, 35.411789, 24.652203>,  <40.694984, 35.302376, 25.034706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653519, 35.411789, 24.652203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970787, 0.181346, 0.157116,
		0.216390, 0.944613, 0.246743,
		-0.103668, 0.273534, -0.956260,
		40.622417, 35.493851, 24.365324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455395, 35.990757, 25.020685>,  <40.694984, 35.302376, 25.034706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455395, 35.990757, 25.020685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.326805, 35.820332, 24.682425>,  <40.249653, 35.718079, 24.479467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.326805, 35.820332, 24.682425>,  <40.455395, 35.990757, 25.020685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326805, 35.820332, 24.682425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932440, -0.013140, 0.361085,
		-0.164955, 0.904600, -0.393051,
		-0.321473, -0.426059, -0.845653,
		40.230362, 35.692513, 24.428728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856224, 36.392635, 24.784788>,  <40.455395, 35.990757, 25.020685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856224, 36.392635, 24.784788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819309, 36.034431, 24.610643>,  <39.797161, 35.819508, 24.506157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819309, 36.034431, 24.610643>,  <39.856224, 36.392635, 24.784788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819309, 36.034431, 24.610643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949476, -0.052573, 0.309406,
		-0.299966, 0.441918, -0.845417,
		-0.092286, -0.895514, -0.435360,
		39.791622, 35.765778, 24.480036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154621, 36.369682, 24.608379>,  <39.856224, 36.392635, 24.784788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154621, 36.369682, 24.608379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.238903, 35.980347, 24.572121>,  <39.289474, 35.746746, 24.550365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.238903, 35.980347, 24.572121>,  <39.154621, 36.369682, 24.608379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238903, 35.980347, 24.572121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941010, -0.227075, 0.250873,
		-0.264768, 0.032440, -0.963766,
		0.210708, -0.973337, -0.090648,
		39.302116, 35.688347, 24.544926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638512, 36.033646, 24.287016>,  <39.154621, 36.369682, 24.608379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638512, 36.033646, 24.287016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.814796, 35.718334, 24.458780>,  <38.920567, 35.529148, 24.561838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.814796, 35.718334, 24.458780>,  <38.638512, 36.033646, 24.287016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814796, 35.718334, 24.458780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861112, -0.236170, 0.450232,
		-0.253495, -0.568190, -0.782879,
		0.440710, -0.788279, 0.429408,
		38.947010, 35.481850, 24.587603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220009, 35.527004, 24.182753>,  <38.638512, 36.033646, 24.287016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220009, 35.527004, 24.182753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451000, 35.422661, 24.492197>,  <38.589596, 35.360054, 24.677864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451000, 35.422661, 24.492197>,  <38.220009, 35.527004, 24.182753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451000, 35.422661, 24.492197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816295, -0.200131, 0.541858,
		0.013478, -0.944406, -0.328505,
		0.577478, -0.260854, 0.773611,
		38.624245, 35.344406, 24.724279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985584, 34.881550, 24.496243>,  <38.220009, 35.527004, 24.182753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985584, 34.881550, 24.496243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.166008, 35.061947, 24.804308>,  <38.274261, 35.170185, 24.989147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.166008, 35.061947, 24.804308>,  <37.985584, 34.881550, 24.496243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166008, 35.061947, 24.804308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848643, -0.050437, 0.526557,
		0.276318, -0.891101, 0.359982,
		0.451059, 0.450994, 0.770163,
		38.301327, 35.197247, 25.035357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924870, 34.186188, 24.431639>,  <37.985584, 34.881550, 24.496243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924870, 34.186188, 24.431639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.663036, 33.911777, 24.304586>,  <37.505936, 33.747131, 24.228355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.663036, 33.911777, 24.304586>,  <37.924870, 34.186188, 24.431639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663036, 33.911777, 24.304586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508630, -0.088806, -0.856394,
		0.559304, -0.722134, 0.407066,
		-0.654580, -0.686030, -0.317629,
		37.466663, 33.705967, 24.209297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349865, 33.629051, 24.261797>,  <37.924870, 34.186188, 24.431639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349865, 33.629051, 24.261797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.011459, 33.585827, 24.052959>,  <37.808414, 33.559891, 23.927658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.011459, 33.585827, 24.052959>,  <38.349865, 33.629051, 24.261797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011459, 33.585827, 24.052959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531050, -0.083789, -0.843187,
		0.047372, -0.990606, 0.128274,
		-0.846015, -0.108063, -0.522093,
		37.757656, 33.553410, 23.896332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533546, 33.086025, 23.744629>,  <38.349865, 33.629051, 24.261797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533546, 33.086025, 23.744629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.210911, 33.269653, 23.595678>,  <38.017330, 33.379829, 23.506308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.210911, 33.269653, 23.595678>,  <38.533546, 33.086025, 23.744629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210911, 33.269653, 23.595678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295987, -0.231630, -0.926682,
		-0.511668, -0.857671, 0.050951,
		-0.806590, 0.459072, -0.372377,
		37.968933, 33.407375, 23.483965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237282, 32.656265, 23.282887>,  <38.533546, 33.086025, 23.744629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237282, 32.656265, 23.282887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078079, 33.007633, 23.177071>,  <37.982559, 33.218452, 23.113581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078079, 33.007633, 23.177071>,  <38.237282, 32.656265, 23.282887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078079, 33.007633, 23.177071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178246, -0.208821, -0.961573,
		-0.899902, -0.429861, -0.073463,
		-0.398002, 0.878415, -0.264539,
		37.958679, 33.271156, 23.097710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886982, 32.573383, 22.605425>,  <38.237282, 32.656265, 23.282887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886982, 32.573383, 22.605425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931396, 32.970333, 22.626822>,  <37.958046, 33.208504, 22.639660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931396, 32.970333, 22.626822>,  <37.886982, 32.573383, 22.605425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931396, 32.970333, 22.626822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325005, 0.014606, -0.945600,
		-0.939171, 0.122383, -0.320905,
		0.111039, 0.992376, 0.053493,
		37.964706, 33.268047, 22.642870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602127, 32.792439, 21.977310>,  <37.886982, 32.573383, 22.605425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602127, 32.792439, 21.977310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.843616, 33.089272, 22.093813>,  <37.988510, 33.267372, 22.163713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.843616, 33.089272, 22.093813>,  <37.602127, 32.792439, 21.977310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843616, 33.089272, 22.093813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453547, -0.019269, -0.891024,
		-0.655606, 0.670026, -0.348204,
		0.603719, 0.742087, 0.291256,
		38.024731, 33.311897, 22.181190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514351, 33.370377, 21.483297>,  <37.602127, 32.792439, 21.977310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514351, 33.370377, 21.483297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873974, 33.414555, 21.652767>,  <38.089748, 33.441059, 21.754448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873974, 33.414555, 21.652767>,  <37.514351, 33.370377, 21.483297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873974, 33.414555, 21.652767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416568, 0.082126, -0.905388,
		-0.134787, 0.990484, 0.027829,
		0.899057, 0.110442, 0.423673,
		38.143692, 33.447685, 21.779869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792095, 33.944839, 21.157583>,  <37.514351, 33.370377, 21.483297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792095, 33.944839, 21.157583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105389, 33.762997, 21.327234>,  <38.293365, 33.653893, 21.429026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105389, 33.762997, 21.327234>,  <37.792095, 33.944839, 21.157583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105389, 33.762997, 21.327234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486153, 0.022566, -0.873582,
		0.387565, 0.890407, 0.238683,
		0.783230, -0.454606, 0.424128,
		38.340359, 33.626614, 21.454472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409332, 34.335968, 20.927372>,  <37.792095, 33.944839, 21.157583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409332, 34.335968, 20.927372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532127, 33.975101, 21.048603>,  <38.605804, 33.758583, 21.121342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.532127, 33.975101, 21.048603>,  <38.409332, 34.335968, 20.927372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532127, 33.975101, 21.048603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609643, -0.058133, -0.790541,
		0.730818, 0.427454, 0.532154,
		0.306984, -0.902166, 0.303079,
		38.624222, 33.704453, 21.139526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191956, 34.320950, 20.914972>,  <38.409332, 34.335968, 20.927372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191956, 34.320950, 20.914972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038887, 33.954334, 20.868460>,  <38.947048, 33.734364, 20.840551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038887, 33.954334, 20.868460>,  <39.191956, 34.320950, 20.914972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038887, 33.954334, 20.868460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625607, -0.164447, -0.762609,
		0.679839, -0.364574, 0.636322,
		-0.382669, -0.916539, -0.116282,
		38.924088, 33.679371, 20.833574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767944, 33.976292, 20.889816>,  <39.191956, 34.320950, 20.914972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767944, 33.976292, 20.889816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.476547, 33.743027, 20.746027>,  <39.301708, 33.603069, 20.659754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.476547, 33.743027, 20.746027>,  <39.767944, 33.976292, 20.889816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476547, 33.743027, 20.746027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540684, -0.167229, -0.824436,
		0.420666, -0.794956, 0.437132,
		-0.728492, -0.583163, -0.359473,
		39.257999, 33.568077, 20.638186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127945, 33.389137, 20.599503>,  <39.767944, 33.976292, 20.889816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127945, 33.389137, 20.599503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.768871, 33.397404, 20.423439>,  <39.553429, 33.402363, 20.317801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.768871, 33.397404, 20.423439>,  <40.127945, 33.389137, 20.599503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768871, 33.397404, 20.423439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390478, -0.425579, -0.816339,
		-0.204196, -0.904685, 0.373964,
		-0.897681, 0.020668, -0.440161,
		39.499565, 33.403603, 20.291391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047684, 32.701717, 20.284573>,  <40.127945, 33.389137, 20.599503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047684, 32.701717, 20.284573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774151, 32.939026, 20.114679>,  <39.610031, 33.081409, 20.012743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774151, 32.939026, 20.114679>,  <40.047684, 32.701717, 20.284573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774151, 32.939026, 20.114679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226268, -0.380987, -0.896466,
		-0.693667, -0.709138, 0.126294,
		-0.683835, 0.593272, -0.424733,
		39.569000, 33.117008, 19.987259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780777, 31.988457, 20.252167>,  <40.047684, 32.701717, 20.284573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780777, 31.988457, 20.252167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.812420, 31.593962, 20.194098>,  <39.831406, 31.357264, 20.159256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.812420, 31.593962, 20.194098>,  <39.780777, 31.988457, 20.252167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812420, 31.593962, 20.194098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672760, -0.160286, 0.722290,
		-0.735619, 0.040525, -0.676182,
		0.079112, -0.986238, -0.145173,
		39.836155, 31.298090, 20.150545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086227, 31.694588, 20.300093>,  <39.780777, 31.988457, 20.252167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086227, 31.694588, 20.300093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344429, 31.396694, 20.367853>,  <39.499352, 31.217958, 20.408510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344429, 31.396694, 20.367853>,  <39.086227, 31.694588, 20.300093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344429, 31.396694, 20.367853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537931, -0.285869, 0.793038,
		-0.542175, -0.603036, -0.585145,
		0.645505, -0.744733, 0.169400,
		39.538082, 31.173275, 20.418673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714504, 31.114075, 20.320103>,  <39.086227, 31.694588, 20.300093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714504, 31.114075, 20.320103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058575, 31.008038, 20.494377>,  <39.265018, 30.944416, 20.598942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058575, 31.008038, 20.494377>,  <38.714504, 31.114075, 20.320103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058575, 31.008038, 20.494377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509536, -0.482993, 0.712104,
		0.021661, -0.834533, -0.550533,
		0.860177, -0.265091, 0.435686,
		39.316628, 30.928511, 20.625084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561150, 30.591976, 20.652559>,  <38.714504, 31.114075, 20.320103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561150, 30.591976, 20.652559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918224, 30.625385, 20.829708>,  <39.132469, 30.645432, 20.935997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918224, 30.625385, 20.829708>,  <38.561150, 30.591976, 20.652559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918224, 30.625385, 20.829708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371427, -0.420219, 0.827924,
		0.255256, -0.903570, -0.344100,
		0.892685, 0.083524, 0.442874,
		39.186031, 30.650442, 20.962570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696045, 29.956156, 21.065298>,  <38.561150, 30.591976, 20.652559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696045, 29.956156, 21.065298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.924431, 30.260366, 21.188976>,  <39.061462, 30.442892, 21.263184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.924431, 30.260366, 21.188976>,  <38.696045, 29.956156, 21.065298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924431, 30.260366, 21.188976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197301, -0.238468, 0.950897,
		0.796916, -0.603931, 0.013896,
		0.570962, 0.760526, 0.309195,
		39.095718, 30.488523, 21.281734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287861, 29.753593, 21.387789>,  <38.696045, 29.956156, 21.065298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287861, 29.753593, 21.387789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195492, 30.121696, 21.514154>,  <39.140068, 30.342558, 21.589973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195492, 30.121696, 21.514154>,  <39.287861, 29.753593, 21.387789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195492, 30.121696, 21.514154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292285, -0.375304, 0.879611,
		0.928032, 0.110788, 0.355645,
		-0.230925, 0.920257, 0.315912,
		39.126213, 30.397774, 21.608929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475586, 29.708303, 22.037550>,  <39.287861, 29.753593, 21.387789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475586, 29.708303, 22.037550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263077, 30.047037, 22.027601>,  <39.135571, 30.250278, 22.021631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263077, 30.047037, 22.027601>,  <39.475586, 29.708303, 22.037550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263077, 30.047037, 22.027601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450134, -0.257282, 0.855094,
		0.717724, 0.465485, 0.517876,
		-0.531274, 0.846835, -0.024873,
		39.103695, 30.301088, 22.020140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513119, 30.120365, 22.688408>,  <39.475586, 29.708303, 22.037550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513119, 30.120365, 22.688408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155987, 30.220329, 22.538530>,  <38.941708, 30.280308, 22.448605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155987, 30.220329, 22.538530>,  <39.513119, 30.120365, 22.688408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155987, 30.220329, 22.538530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447888, -0.405106, 0.797048,
		0.047400, 0.879451, 0.473623,
		-0.892832, 0.249910, -0.374694,
		38.888138, 30.295301, 22.426123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919987, 30.307104, 23.361485>,  <39.513119, 30.120365, 22.688408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919987, 30.307104, 23.361485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.142380, 30.002314, 23.494314>,  <40.275818, 29.819439, 23.574011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.142380, 30.002314, 23.494314>,  <39.919987, 30.307104, 23.361485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142380, 30.002314, 23.494314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649999, 0.149576, -0.745069,
		0.518054, 0.630096, 0.578446,
		0.555986, -0.761976, 0.332073,
		40.309177, 29.773722, 23.593937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535542, 30.602020, 23.265583>,  <39.919987, 30.307104, 23.361485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535542, 30.602020, 23.265583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.607487, 30.211159, 23.310869>,  <40.650654, 29.976643, 23.338041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.607487, 30.211159, 23.310869>,  <40.535542, 30.602020, 23.265583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607487, 30.211159, 23.310869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688491, 0.042849, -0.723978,
		0.702587, 0.208168, 0.680468,
		0.179867, -0.977154, 0.113216,
		40.661446, 29.918013, 23.344833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267296, 30.603951, 23.311604>,  <40.535542, 30.602020, 23.265583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267296, 30.603951, 23.311604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182365, 30.221249, 23.232067>,  <41.131409, 29.991627, 23.184345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182365, 30.221249, 23.232067>,  <41.267296, 30.603951, 23.311604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182365, 30.221249, 23.232067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676758, 0.002815, -0.736200,
		0.704922, -0.290882, 0.646894,
		-0.212326, -0.956755, -0.198841,
		41.118668, 29.934221, 23.172415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831005, 30.228428, 23.214603>,  <41.267296, 30.603951, 23.311604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831005, 30.228428, 23.214603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546146, 30.016115, 23.030811>,  <41.375233, 29.888727, 22.920536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546146, 30.016115, 23.030811>,  <41.831005, 30.228428, 23.214603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546146, 30.016115, 23.030811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599155, -0.118421, -0.791827,
		0.365874, -0.839195, 0.402353,
		-0.712144, -0.530781, -0.459481,
		41.332504, 29.856880, 22.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034168, 29.562799, 23.135996>,  <41.831005, 30.228428, 23.214603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034168, 29.562799, 23.135996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.775455, 29.629416, 22.838287>,  <41.620228, 29.669384, 22.659662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.775455, 29.629416, 22.838287>,  <42.034168, 29.562799, 23.135996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775455, 29.629416, 22.838287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705440, -0.240281, -0.666798,
		-0.289882, -0.956311, 0.037925,
		-0.646779, 0.166538, -0.744273,
		41.581421, 29.679377, 22.615005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044098, 28.998005, 22.612965>,  <42.034168, 29.562799, 23.135996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044098, 28.998005, 22.612965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.899250, 29.321325, 22.427269>,  <41.812340, 29.515318, 22.315851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.899250, 29.321325, 22.427269>,  <42.044098, 28.998005, 22.612965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899250, 29.321325, 22.427269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534477, -0.227980, -0.813854,
		-0.763676, -0.542841, -0.349461,
		-0.362124, 0.808300, -0.464239,
		41.790611, 29.563816, 22.287996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068226, 28.671900, 22.025719>,  <42.044098, 28.998005, 22.612965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068226, 28.671900, 22.025719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.998398, 29.058565, 21.950794>,  <41.956501, 29.290565, 21.905840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.998398, 29.058565, 21.950794>,  <42.068226, 28.671900, 22.025719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998398, 29.058565, 21.950794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492566, -0.078985, -0.866683,
		-0.852587, -0.243559, -0.462358,
		-0.174569, 0.966665, -0.187311,
		41.946026, 29.348564, 21.894602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879765, 28.534889, 21.396238>,  <42.068226, 28.671900, 22.025719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879765, 28.534889, 21.396238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.903267, 28.933233, 21.423988>,  <41.917366, 29.172239, 21.440639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.903267, 28.933233, 21.423988>,  <41.879765, 28.534889, 21.396238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903267, 28.933233, 21.423988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532347, 0.027534, -0.846079,
		-0.844485, 0.086643, -0.528524,
		0.058754, 0.995859, 0.069376,
		41.920895, 29.231991, 21.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789387, 28.947344, 20.641092>,  <41.879765, 28.534889, 21.396238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789387, 28.947344, 20.641092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.000946, 29.189491, 20.879015>,  <42.127880, 29.334780, 21.021769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.000946, 29.189491, 20.879015>,  <41.789387, 28.947344, 20.641092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000946, 29.189491, 20.879015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601521, 0.227021, -0.765921,
		-0.598698, 0.762883, -0.244071,
		0.528899, 0.605369, 0.594807,
		42.159615, 29.371101, 21.057457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.842587, 30.803398, 34.302982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937248, 31.172089, 34.425892>,  <33.994045, 31.393303, 34.499638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937248, 31.172089, 34.425892>,  <33.842587, 30.803398, 34.302982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937248, 31.172089, 34.425892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604067, 0.108117, -0.789566,
		-0.760985, 0.372466, -0.531198,
		0.236655, 0.921727, 0.307270,
		34.008244, 31.448606, 34.518074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646900, 31.363169, 33.709366>,  <33.842587, 30.803398, 34.302982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646900, 31.363169, 33.709366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960361, 31.460215, 33.938110>,  <34.148438, 31.518442, 34.075356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960361, 31.460215, 33.938110>,  <33.646900, 31.363169, 33.709366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960361, 31.460215, 33.938110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619056, -0.228694, -0.751312,
		-0.051499, 0.942782, -0.329410,
		0.783657, 0.242615, 0.571857,
		34.195457, 31.532999, 34.109669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149174, 31.788757, 33.369644>,  <33.646900, 31.363169, 33.709366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149174, 31.788757, 33.369644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324009, 31.530670, 33.620293>,  <34.428909, 31.375818, 33.770683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324009, 31.530670, 33.620293>,  <34.149174, 31.788757, 33.369644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324009, 31.530670, 33.620293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570961, -0.339267, -0.747597,
		0.694954, 0.684538, 0.220106,
		0.437083, -0.645218, 0.626620,
		34.455135, 31.337105, 33.808277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865234, 31.741432, 33.048737>,  <34.149174, 31.788757, 33.369644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865234, 31.741432, 33.048737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880245, 31.453730, 33.326229>,  <34.889252, 31.281109, 33.492725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880245, 31.453730, 33.326229>,  <34.865234, 31.741432, 33.048737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880245, 31.453730, 33.326229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722817, -0.459824, -0.515848,
		0.690020, 0.520801, 0.502632,
		0.037532, -0.719256, 0.693731,
		34.891506, 31.237953, 33.534348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544514, 31.647455, 33.268433>,  <34.865234, 31.741432, 33.048737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544514, 31.647455, 33.268433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321381, 31.316673, 33.296631>,  <35.187500, 31.118204, 33.313549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321381, 31.316673, 33.296631>,  <35.544514, 31.647455, 33.268433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321381, 31.316673, 33.296631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622329, -0.472969, -0.623705,
		0.549116, -0.304053, 0.778475,
		-0.557834, -0.826954, 0.070494,
		35.154030, 31.068586, 33.317780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022430, 31.091459, 33.351219>,  <35.544514, 31.647455, 33.268433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022430, 31.091459, 33.351219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684181, 30.934925, 33.206017>,  <35.481232, 30.841003, 33.118893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684181, 30.934925, 33.206017>,  <36.022430, 31.091459, 33.351219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684181, 30.934925, 33.206017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523611, -0.476033, -0.706558,
		0.103698, -0.787558, 0.607453,
		-0.845623, -0.391337, -0.363010,
		35.430492, 30.817524, 33.097115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202843, 30.385880, 33.231407>,  <36.022430, 31.091459, 33.351219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202843, 30.385880, 33.231407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.858295, 30.434437, 33.034100>,  <35.651566, 30.463572, 32.915714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.858295, 30.434437, 33.034100>,  <36.202843, 30.385880, 33.231407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858295, 30.434437, 33.034100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324664, -0.615262, -0.718363,
		-0.390693, -0.778919, 0.490554,
		-0.861367, 0.121394, -0.493266,
		35.599884, 30.470856, 32.886120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161320, 29.731806, 33.003494>,  <36.202843, 30.385880, 33.231407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161320, 29.731806, 33.003494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907463, 29.955082, 32.789707>,  <35.755150, 30.089048, 32.661434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907463, 29.955082, 32.789707>,  <36.161320, 29.731806, 33.003494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907463, 29.955082, 32.789707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291823, -0.467296, -0.834550,
		-0.715594, -0.685608, 0.133671,
		-0.634638, 0.558191, -0.534470,
		35.717072, 30.122540, 32.629368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808369, 29.241598, 32.645081>,  <36.161320, 29.731806, 33.003494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808369, 29.241598, 32.645081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787739, 29.589079, 32.448021>,  <35.775360, 29.797567, 32.329784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787739, 29.589079, 32.448021>,  <35.808369, 29.241598, 32.645081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787739, 29.589079, 32.448021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315171, -0.453934, -0.833433,
		-0.947632, -0.198253, -0.250377,
		-0.051576, 0.868700, -0.492646,
		35.772266, 29.849689, 32.300228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442883, 29.069826, 32.028175>,  <35.808369, 29.241598, 32.645081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442883, 29.069826, 32.028175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624943, 29.422358, 31.977423>,  <35.734177, 29.633877, 31.946972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624943, 29.422358, 31.977423>,  <35.442883, 29.069826, 32.028175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624943, 29.422358, 31.977423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309152, -0.290045, -0.905703,
		-0.835025, 0.373002, -0.404478,
		0.455146, 0.881330, -0.126881,
		35.761486, 29.686756, 31.939358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156673, 29.210501, 31.427952>,  <35.442883, 29.069826, 32.028175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156673, 29.210501, 31.427952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504887, 29.400337, 31.480009>,  <35.713814, 29.514240, 31.511244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504887, 29.400337, 31.480009>,  <35.156673, 29.210501, 31.427952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504887, 29.400337, 31.480009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274888, -0.249604, -0.928512,
		-0.408181, 0.844073, -0.347748,
		0.870531, 0.474592, 0.130142,
		35.766045, 29.542715, 31.519053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272293, 29.465992, 30.846004>,  <35.156673, 29.210501, 31.427952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272293, 29.465992, 30.846004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638084, 29.460091, 31.007750>,  <35.857559, 29.456549, 31.104795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638084, 29.460091, 31.007750>,  <35.272293, 29.465992, 30.846004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638084, 29.460091, 31.007750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396252, -0.169650, -0.902332,
		0.081914, 0.985394, -0.149295,
		0.914480, -0.014755, 0.404361,
		35.912430, 29.455664, 31.129059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878448, 29.867504, 30.390339>,  <35.272293, 29.465992, 30.846004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878448, 29.867504, 30.390339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602512, 29.719179, 30.141624>,  <34.436951, 29.630184, 29.992395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602512, 29.719179, 30.141624>,  <34.878448, 29.867504, 30.390339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602512, 29.719179, 30.141624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716210, 0.224192, 0.660895,
		-0.105669, 0.901241, -0.420236,
		-0.689839, -0.370813, -0.621788,
		34.395561, 29.607935, 29.955088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314869, 30.345682, 30.430714>,  <34.878448, 29.867504, 30.390339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314869, 30.345682, 30.430714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127941, 30.021725, 30.288902>,  <34.015785, 29.827351, 30.203815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127941, 30.021725, 30.288902>,  <34.314869, 30.345682, 30.430714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127941, 30.021725, 30.288902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729415, 0.126607, 0.672253,
		-0.499567, 0.572753, -0.649913,
		-0.467318, -0.809892, -0.354526,
		33.987747, 29.778757, 30.182545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688858, 30.597652, 30.241957>,  <34.314869, 30.345682, 30.430714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688858, 30.597652, 30.241957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633450, 30.204367, 30.289455>,  <33.600204, 29.968395, 30.317955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633450, 30.204367, 30.289455>,  <33.688858, 30.597652, 30.241957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633450, 30.204367, 30.289455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857216, 0.179084, 0.482815,
		-0.495976, -0.034910, -0.867634,
		-0.138525, -0.983214, 0.118747,
		33.591892, 29.909403, 30.325079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062252, 30.606291, 30.101881>,  <33.688858, 30.597652, 30.241957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062252, 30.606291, 30.101881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150688, 30.274208, 30.306576>,  <33.203751, 30.074959, 30.429394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150688, 30.274208, 30.306576>,  <33.062252, 30.606291, 30.101881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150688, 30.274208, 30.306576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823206, 0.122486, 0.554372,
		-0.522923, -0.543835, -0.656349,
		0.221093, -0.830205, 0.511739,
		33.217018, 30.025146, 30.460098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404987, 30.294878, 30.200727>,  <33.062252, 30.606291, 30.101881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404987, 30.294878, 30.200727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.612644, 30.105423, 30.485308>,  <32.737240, 29.991749, 30.656055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.612644, 30.105423, 30.485308>,  <32.404987, 30.294878, 30.200727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612644, 30.105423, 30.485308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569014, 0.429585, 0.701199,
		-0.637743, -0.768845, -0.046492,
		0.519141, -0.473639, 0.711448,
		32.768387, 29.963331, 30.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921331, 29.874945, 30.628864>,  <32.404987, 30.294878, 30.200727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921331, 29.874945, 30.628864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237907, 29.910084, 30.870825>,  <32.427853, 29.931168, 31.016001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237907, 29.910084, 30.870825>,  <31.921331, 29.874945, 30.628864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237907, 29.910084, 30.870825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609058, 0.197044, 0.768259,
		-0.051702, -0.976451, 0.209453,
		0.791439, 0.087848, 0.604903,
		32.475338, 29.936438, 31.052296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659700, 29.584099, 31.311262>,  <31.921331, 29.874945, 30.628864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659700, 29.584099, 31.311262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975945, 29.826881, 31.343596>,  <32.165691, 29.972551, 31.362995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975945, 29.826881, 31.343596>,  <31.659700, 29.584099, 31.311262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975945, 29.826881, 31.343596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389842, 0.397151, 0.830840,
		0.472182, -0.688384, 0.550610,
		0.790612, 0.606958, 0.080834,
		32.213127, 30.008968, 31.367846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744616, 29.644220, 32.013905>,  <31.659700, 29.584099, 31.311262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744616, 29.644220, 32.013905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926783, 29.973656, 31.878674>,  <32.036083, 30.171316, 31.797535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926783, 29.973656, 31.878674>,  <31.744616, 29.644220, 32.013905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926783, 29.973656, 31.878674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533476, 0.556473, 0.636978,
		0.712740, -0.109733, 0.692792,
		0.455418, 0.823588, -0.338081,
		32.063408, 30.220732, 31.777250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845404, 29.993372, 32.559292>,  <31.744616, 29.644220, 32.013905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845404, 29.993372, 32.559292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889137, 30.273525, 32.277153>,  <31.915377, 30.441618, 32.107872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889137, 30.273525, 32.277153>,  <31.845404, 29.993372, 32.559292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889137, 30.273525, 32.277153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477137, 0.659481, 0.580884,
		0.872002, 0.273037, 0.406280,
		0.109331, 0.700383, -0.705344,
		31.921936, 30.483641, 32.065548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241905, 30.605110, 32.815891>,  <31.845404, 29.993372, 32.559292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241905, 30.605110, 32.815891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057369, 30.754883, 32.494156>,  <31.946648, 30.844746, 32.301113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057369, 30.754883, 32.494156>,  <32.241905, 30.605110, 32.815891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057369, 30.754883, 32.494156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308601, 0.782253, 0.541152,
		0.831823, 0.497877, -0.245336,
		-0.461342, 0.374432, -0.804341,
		31.918966, 30.867212, 32.252853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330219, 31.289484, 32.950367>,  <32.241905, 30.605110, 32.815891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330219, 31.289484, 32.950367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064743, 31.281925, 32.651257>,  <31.905458, 31.277390, 32.471790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064743, 31.281925, 32.651257>,  <32.330219, 31.289484, 32.950367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064743, 31.281925, 32.651257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472605, 0.785464, 0.399613,
		0.579796, 0.618619, -0.530233,
		-0.663687, -0.018897, -0.747772,
		31.865637, 31.276257, 32.426926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286091, 32.015327, 32.719891>,  <32.330219, 31.289484, 32.950367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286091, 32.015327, 32.719891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956297, 31.799273, 32.652390>,  <31.758421, 31.669640, 32.611889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956297, 31.799273, 32.652390>,  <32.286091, 32.015327, 32.719891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956297, 31.799273, 32.652390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556143, 0.718322, 0.417994,
		-0.104555, 0.438480, -0.892639,
		-0.824484, -0.540138, -0.168753,
		31.708952, 31.637232, 32.601765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746078, 32.605320, 32.643696>,  <32.286091, 32.015327, 32.719891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746078, 32.605320, 32.643696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551735, 32.261986, 32.709660>,  <31.435129, 32.055984, 32.749237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.551735, 32.261986, 32.709660>,  <31.746078, 32.605320, 32.643696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551735, 32.261986, 32.709660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757244, 0.507599, 0.411004,
		-0.436487, 0.074817, -0.896595,
		-0.485861, -0.858339, 0.164905,
		31.405977, 32.004482, 32.759132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159702, 32.693314, 32.286518>,  <31.746078, 32.605320, 32.643696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159702, 32.693314, 32.286518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.071447, 32.407688, 32.552277>,  <31.018496, 32.236313, 32.711731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.071447, 32.407688, 32.552277>,  <31.159702, 32.693314, 32.286518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071447, 32.407688, 32.552277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880226, 0.439203, 0.179727,
		-0.420144, -0.545169, -0.725445,
		-0.220636, -0.714067, 0.664401,
		31.005257, 32.193466, 32.751598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441490, 32.405800, 32.118073>,  <31.159702, 32.693314, 32.286518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441490, 32.405800, 32.118073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.527197, 32.378048, 32.507797>,  <30.578621, 32.361397, 32.741631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.527197, 32.378048, 32.507797>,  <30.441490, 32.405800, 32.118073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527197, 32.378048, 32.507797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869848, 0.440219, 0.222645,
		-0.444357, -0.895206, 0.033973,
		0.214269, -0.069383, 0.974307,
		30.591478, 32.357235, 32.800091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976017, 32.154190, 31.612911>,  <30.441490, 32.405800, 32.118073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976017, 32.154190, 31.612911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843180, 32.530518, 31.585871>,  <29.763477, 32.756313, 31.569647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843180, 32.530518, 31.585871>,  <29.976017, 32.154190, 31.612911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843180, 32.530518, 31.585871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550611, 0.135168, -0.823745,
		-0.765859, -0.310784, -0.562915,
		-0.332096, 0.940820, -0.067602,
		29.743551, 32.812763, 31.565590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618723, 32.301811, 30.977751>,  <29.976017, 32.154190, 31.612911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618723, 32.301811, 30.977751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.768847, 32.647053, 31.112926>,  <29.858921, 32.854198, 31.194033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.768847, 32.647053, 31.112926>,  <29.618723, 32.301811, 30.977751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768847, 32.647053, 31.112926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491430, 0.123842, -0.862067,
		-0.785901, 0.489614, -0.377675,
		0.375308, 0.863100, 0.337939,
		29.881439, 32.905983, 31.214308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626318, 32.712982, 30.457796>,  <29.618723, 32.301811, 30.977751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626318, 32.712982, 30.457796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.917488, 32.846386, 30.697426>,  <30.092190, 32.926430, 30.841204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.917488, 32.846386, 30.697426>,  <29.626318, 32.712982, 30.457796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917488, 32.846386, 30.697426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609783, 0.084608, -0.788040,
		-0.313507, 0.938941, -0.141782,
		0.727927, 0.333512, 0.599076,
		30.135866, 32.946438, 30.877148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910471, 33.127625, 30.098848>,  <29.626318, 32.712982, 30.457796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910471, 33.127625, 30.098848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.201061, 33.071793, 30.367994>,  <30.375416, 33.038292, 30.529482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.201061, 33.071793, 30.367994>,  <29.910471, 33.127625, 30.098848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201061, 33.071793, 30.367994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685732, 0.211039, -0.696588,
		-0.044771, 0.967461, 0.249029,
		0.726476, -0.139580, 0.672867,
		30.419004, 33.029919, 30.569855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436424, 33.770187, 30.058821>,  <29.910471, 33.127625, 30.098848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436424, 33.770187, 30.058821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.627615, 33.459526, 30.222940>,  <30.742329, 33.273129, 30.321413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.627615, 33.459526, 30.222940>,  <30.436424, 33.770187, 30.058821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627615, 33.459526, 30.222940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748662, 0.115913, -0.652740,
		0.459395, 0.619169, 0.636856,
		0.477976, -0.776656, 0.410299,
		30.771008, 33.226528, 30.346029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167690, 33.998062, 30.206564>,  <30.436424, 33.770187, 30.058821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167690, 33.998062, 30.206564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202892, 33.599747, 30.216894>,  <31.224012, 33.360760, 30.223093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202892, 33.599747, 30.216894>,  <31.167690, 33.998062, 30.206564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202892, 33.599747, 30.216894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883288, 0.066024, -0.464158,
		0.460496, 0.063659, 0.885376,
		0.088004, -0.995785, 0.025825,
		31.229294, 33.301010, 30.224642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806862, 33.849625, 30.456610>,  <31.167690, 33.998062, 30.206564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806862, 33.849625, 30.456610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695398, 33.522713, 30.254858>,  <31.628521, 33.326565, 30.133806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695398, 33.522713, 30.254858>,  <31.806862, 33.849625, 30.456610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695398, 33.522713, 30.254858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882983, -0.011457, -0.469264,
		0.377743, -0.576124, 0.724839,
		-0.278658, -0.817282, -0.504380,
		31.611801, 33.277527, 30.103544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420555, 33.380955, 30.535557>,  <31.806862, 33.849625, 30.456610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420555, 33.380955, 30.535557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210926, 33.246449, 30.222565>,  <32.085148, 33.165745, 30.034769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210926, 33.246449, 30.222565>,  <32.420555, 33.380955, 30.535557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210926, 33.246449, 30.222565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851644, -0.199300, -0.484750,
		0.007055, -0.920439, 0.390824,
		-0.524074, -0.336263, -0.782480,
		32.053703, 33.145569, 29.987822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774124, 32.723251, 30.274469>,  <32.420555, 33.380955, 30.535557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774124, 32.723251, 30.274469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.553280, 32.842625, 29.963057>,  <32.420773, 32.914249, 29.776209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.553280, 32.842625, 29.963057>,  <32.774124, 32.723251, 30.274469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553280, 32.842625, 29.963057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713365, -0.314280, -0.626369,
		-0.431606, -0.901202, -0.039375,
		-0.552111, 0.298433, -0.778531,
		32.387646, 32.932156, 29.729498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828327, 32.212299, 29.811056>,  <32.774124, 32.723251, 30.274469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828327, 32.212299, 29.811056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681736, 32.517387, 29.597908>,  <32.593781, 32.700439, 29.470018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.681736, 32.517387, 29.597908>,  <32.828327, 32.212299, 29.811056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681736, 32.517387, 29.597908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674656, -0.176556, -0.716706,
		-0.640727, -0.622164, -0.449868,
		-0.366481, 0.762719, -0.532871,
		32.571793, 32.746204, 29.438047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777122, 31.962479, 29.175734>,  <32.828327, 32.212299, 29.811056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777122, 31.962479, 29.175734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763908, 32.357899, 29.116840>,  <32.755981, 32.595150, 29.081505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763908, 32.357899, 29.116840>,  <32.777122, 31.962479, 29.175734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763908, 32.357899, 29.116840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534515, -0.107003, -0.838357,
		-0.844513, -0.106392, -0.524861,
		-0.033033, 0.988550, -0.147234,
		32.753998, 32.654465, 29.072670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597305, 32.025642, 28.415468>,  <32.777122, 31.962479, 29.175734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597305, 32.025642, 28.415468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757542, 32.372250, 28.534580>,  <32.853683, 32.580215, 28.606047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757542, 32.372250, 28.534580>,  <32.597305, 32.025642, 28.415468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757542, 32.372250, 28.534580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636303, -0.029247, -0.770885,
		-0.659277, 0.498287, -0.563084,
		0.400590, 0.866519, 0.297780,
		32.877720, 32.632206, 28.623915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783066, 32.476730, 27.861385>,  <32.597305, 32.025642, 28.415468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783066, 32.476730, 27.861385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014156, 32.690224, 28.108402>,  <33.152809, 32.818321, 28.256613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014156, 32.690224, 28.108402>,  <32.783066, 32.476730, 27.861385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014156, 32.690224, 28.108402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688502, 0.087702, -0.719912,
		-0.438402, 0.841092, -0.316810,
		0.577727, 0.533735, 0.617542,
		33.187473, 32.850346, 28.293665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959080, 33.182903, 27.486349>,  <32.783066, 32.476730, 27.861385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959080, 33.182903, 27.486349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235775, 33.147125, 27.772985>,  <33.401791, 33.125660, 27.944967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235775, 33.147125, 27.772985>,  <32.959080, 33.182903, 27.486349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235775, 33.147125, 27.772985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712350, 0.247453, -0.656753,
		-0.118580, 0.964763, 0.234888,
		0.691734, -0.089445, 0.716592,
		33.443295, 33.120293, 27.987963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274384, 33.846851, 27.529846>,  <32.959080, 33.182903, 27.486349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274384, 33.846851, 27.529846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512634, 33.550976, 27.655127>,  <33.655582, 33.373451, 27.730295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512634, 33.550976, 27.655127>,  <33.274384, 33.846851, 27.529846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512634, 33.550976, 27.655127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686707, 0.266609, -0.676279,
		0.416734, 0.617883, 0.666748,
		0.595622, -0.739689, 0.313199,
		33.691322, 33.329067, 27.749086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916466, 34.118141, 27.310162>,  <33.274384, 33.846851, 27.529846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916466, 34.118141, 27.310162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024990, 33.747555, 27.414516>,  <34.090103, 33.525204, 27.477129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024990, 33.747555, 27.414516>,  <33.916466, 34.118141, 27.310162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024990, 33.747555, 27.414516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843578, 0.098377, -0.527918,
		0.463431, 0.363305, 0.808233,
		0.271307, -0.926462, 0.260885,
		34.106380, 33.469616, 27.492783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626144, 34.116013, 27.577173>,  <33.916466, 34.118141, 27.310162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626144, 34.116013, 27.577173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524117, 33.765884, 27.412851>,  <34.462902, 33.555809, 27.314259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524117, 33.765884, 27.412851>,  <34.626144, 34.116013, 27.577173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524117, 33.765884, 27.412851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748014, 0.090596, -0.657471,
		0.612713, -0.474986, 0.631642,
		-0.255065, -0.875318, -0.410805,
		34.447598, 33.503288, 27.289610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214943, 33.732903, 27.662579>,  <34.626144, 34.116013, 27.577173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214943, 33.732903, 27.662579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996357, 33.554878, 27.378803>,  <34.865204, 33.448063, 27.208538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996357, 33.554878, 27.378803>,  <35.214943, 33.732903, 27.662579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996357, 33.554878, 27.378803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809027, -0.061599, -0.584535,
		0.216450, -0.893381, 0.393725,
		-0.546465, -0.445057, -0.709436,
		34.832417, 33.421360, 27.165972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577530, 33.104404, 27.487858>,  <35.214943, 33.732903, 27.662579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577530, 33.104404, 27.487858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348293, 33.229935, 27.185049>,  <35.210751, 33.305252, 27.003363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348293, 33.229935, 27.185049>,  <35.577530, 33.104404, 27.487858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348293, 33.229935, 27.185049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697211, -0.298743, -0.651651,
		-0.430660, -0.901258, -0.047596,
		-0.573087, 0.313824, -0.757024,
		35.176369, 33.324081, 26.957941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827374, 32.747597, 26.955530>,  <35.577530, 33.104404, 27.487858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827374, 32.747597, 26.955530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606888, 33.009792, 26.749037>,  <35.474598, 33.167110, 26.625141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606888, 33.009792, 26.749037>,  <35.827374, 32.747597, 26.955530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606888, 33.009792, 26.749037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618109, -0.094796, -0.780356,
		-0.560453, -0.749230, -0.352912,
		-0.551212, 0.655491, -0.516234,
		35.441525, 33.206440, 26.594166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646297, 32.397324, 26.371885>,  <35.827374, 32.747597, 26.955530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646297, 32.397324, 26.371885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617920, 32.787827, 26.290020>,  <35.600891, 33.022129, 26.240902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617920, 32.787827, 26.290020>,  <35.646297, 32.397324, 26.371885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617920, 32.787827, 26.290020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595909, -0.123057, -0.793567,
		-0.799912, -0.178260, -0.573031,
		-0.070946, 0.976258, -0.204661,
		35.596638, 33.080704, 26.228622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871426, 32.379475, 25.675869>,  <35.646297, 32.397324, 26.371885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871426, 32.379475, 25.675869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856525, 32.770367, 25.759422>,  <35.847588, 33.004902, 25.809555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856525, 32.770367, 25.759422>,  <35.871426, 32.379475, 25.675869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856525, 32.770367, 25.759422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545550, 0.195016, -0.815073,
		-0.837250, 0.083599, -0.540392,
		-0.037246, 0.977231, 0.208884,
		35.845352, 33.063538, 25.822088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599377, 32.729191, 25.091854>,  <35.871426, 32.379475, 25.675869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599377, 32.729191, 25.091854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801155, 33.000996, 25.304947>,  <35.922222, 33.164078, 25.432802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801155, 33.000996, 25.304947>,  <35.599377, 32.729191, 25.091854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801155, 33.000996, 25.304947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451680, 0.318166, -0.833520,
		-0.735881, 0.661089, -0.146423,
		0.504444, 0.679508, 0.532733,
		35.952488, 33.204849, 25.464767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518688, 33.370934, 24.714294>,  <35.599377, 32.729191, 25.091854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518688, 33.370934, 24.714294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829678, 33.421608, 24.960705>,  <36.016270, 33.452011, 25.108551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829678, 33.421608, 24.960705>,  <35.518688, 33.370934, 24.714294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829678, 33.421608, 24.960705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573935, 0.257606, -0.777327,
		-0.257167, 0.957909, 0.127572,
		0.777473, 0.126685, 0.616026,
		36.062920, 33.459614, 25.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837963, 33.986839, 24.515244>,  <35.518688, 33.370934, 24.714294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837963, 33.986839, 24.515244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124146, 33.774681, 24.697149>,  <36.295853, 33.647388, 24.806293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124146, 33.774681, 24.697149>,  <35.837963, 33.986839, 24.515244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124146, 33.774681, 24.697149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580613, 0.089324, -0.809265,
		0.388607, 0.843033, 0.371860,
		0.715453, -0.530393, 0.454764,
		36.338783, 33.615562, 24.833578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486015, 34.436611, 24.435812>,  <35.837963, 33.986839, 24.515244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486015, 34.436611, 24.435812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619450, 34.071495, 24.530079>,  <36.699509, 33.852425, 24.586639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619450, 34.071495, 24.530079>,  <36.486015, 34.436611, 24.435812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619450, 34.071495, 24.530079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729700, 0.091730, -0.677586,
		0.596876, 0.397996, 0.696662,
		0.333581, -0.912790, 0.235666,
		36.719524, 33.797657, 24.600779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183941, 34.470989, 24.555981>,  <36.486015, 34.436611, 24.435812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183941, 34.470989, 24.555981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136108, 34.081432, 24.478798>,  <37.107410, 33.847698, 24.432489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136108, 34.081432, 24.478798>,  <37.183941, 34.470989, 24.555981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136108, 34.081432, 24.478798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670960, 0.063978, -0.738728,
		0.731788, -0.217803, 0.645793,
		-0.119581, -0.973894, -0.192955,
		37.100235, 33.789265, 24.420912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636723, 34.571609, 25.092628>,  <37.183941, 34.470989, 24.555981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636723, 34.571609, 25.092628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.846191, 34.866783, 25.262907>,  <37.971874, 35.043888, 25.365074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.846191, 34.866783, 25.262907>,  <37.636723, 34.571609, 25.092628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846191, 34.866783, 25.262907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665799, 0.042770, 0.744905,
		0.531484, -0.673515, 0.513714,
		0.523676, 0.737935, 0.425694,
		38.003296, 35.088165, 25.390615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694378, 34.424767, 25.838577>,  <37.636723, 34.571609, 25.092628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694378, 34.424767, 25.838577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768806, 34.817417, 25.821688>,  <37.813461, 35.053009, 25.811554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768806, 34.817417, 25.821688>,  <37.694378, 34.424767, 25.838577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768806, 34.817417, 25.821688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680841, 0.159799, 0.714786,
		0.708403, -0.104250, 0.698067,
		0.186067, 0.981630, -0.042224,
		37.824627, 35.111904, 25.809021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540276, 34.581734, 26.485386>,  <37.694378, 34.424767, 25.838577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540276, 34.581734, 26.485386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546841, 34.943604, 26.315071>,  <37.550777, 35.160725, 26.212883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546841, 34.943604, 26.315071>,  <37.540276, 34.581734, 26.485386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546841, 34.943604, 26.315071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630685, 0.339808, 0.697687,
		0.775865, 0.257089, 0.576141,
		0.016410, 0.904675, -0.425787,
		37.551765, 35.215004, 26.187334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839733, 35.079754, 26.955938>,  <37.540276, 34.581734, 26.485386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839733, 35.079754, 26.955938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592377, 35.261578, 26.699511>,  <37.443962, 35.370670, 26.545654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592377, 35.261578, 26.699511>,  <37.839733, 35.079754, 26.955938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592377, 35.261578, 26.699511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543576, 0.341724, 0.766649,
		0.567555, 0.822558, 0.035768,
		-0.618391, 0.454558, -0.641069,
		37.406860, 35.397945, 26.507189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915382, 35.731018, 27.183216>,  <37.839733, 35.079754, 26.955938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915382, 35.731018, 27.183216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581680, 35.711300, 26.963545>,  <37.381458, 35.699471, 26.831743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581680, 35.711300, 26.963545>,  <37.915382, 35.731018, 27.183216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581680, 35.711300, 26.963545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536133, 0.305155, 0.787046,
		0.128787, 0.951026, -0.281005,
		-0.834251, -0.049295, -0.549177,
		37.331406, 35.696510, 26.798792>
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
