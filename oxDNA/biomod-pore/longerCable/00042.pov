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
	<24.330256, 34.735882, 35.182014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444086, 35.108326, 35.090759>,  <24.512384, 35.331791, 35.036007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444086, 35.108326, 35.090759>,  <24.330256, 34.735882, 35.182014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444086, 35.108326, 35.090759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675243, -0.363616, -0.641740,
		-0.680487, 0.028574, -0.732203,
		0.284578, 0.931111, -0.228141,
		24.529459, 35.387661, 35.022316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337376, 34.965927, 34.383942>,  <24.330256, 34.735882, 35.182014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337376, 34.965927, 34.383942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617786, 35.138538, 34.611042>,  <24.786034, 35.242104, 34.747303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617786, 35.138538, 34.611042>,  <24.337376, 34.965927, 34.383942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617786, 35.138538, 34.611042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710576, -0.490041, -0.504918,
		0.060339, 0.757395, -0.650164,
		0.701029, 0.431525, 0.567755,
		24.828094, 35.267994, 34.781368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002739, 35.392818, 34.093979>,  <24.337376, 34.965927, 34.383942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002739, 35.392818, 34.093979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072935, 35.163887, 34.414391>,  <25.115053, 35.026527, 34.606636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072935, 35.163887, 34.414391>,  <25.002739, 35.392818, 34.093979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072935, 35.163887, 34.414391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707730, -0.492251, -0.506762,
		0.684341, 0.655840, 0.318671,
		0.175489, -0.572331, 0.801025,
		25.125582, 34.992188, 34.654697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725416, 35.473763, 34.253960>,  <25.002739, 35.392818, 34.093979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725416, 35.473763, 34.253960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607939, 35.137730, 34.436390>,  <25.537453, 34.936111, 34.545849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607939, 35.137730, 34.436390>,  <25.725416, 35.473763, 34.253960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607939, 35.137730, 34.436390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872556, -0.430451, -0.230993,
		0.390373, 0.330114, 0.859438,
		-0.293692, -0.840081, 0.456079,
		25.519831, 34.885704, 34.573215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200853, 34.984051, 33.800220>,  <25.725416, 35.473763, 34.253960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200853, 34.984051, 33.800220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469156, 35.087776, 33.522274>,  <26.630138, 35.150009, 33.355507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469156, 35.087776, 33.522274>,  <26.200853, 34.984051, 33.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469156, 35.087776, 33.522274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457171, -0.882292, 0.112053,
		-0.584020, -0.392834, -0.710354,
		0.670757, 0.259312, -0.694868,
		26.670383, 35.165569, 33.313812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318619, 34.485989, 33.178764>,  <26.200853, 34.984051, 33.800220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318619, 34.485989, 33.178764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661713, 34.687733, 33.218582>,  <26.867569, 34.808781, 33.242474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661713, 34.687733, 33.218582>,  <26.318619, 34.485989, 33.178764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661713, 34.687733, 33.218582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512198, -0.855010, -0.081308,
		0.044107, 0.120730, -0.991705,
		0.857734, 0.504363, 0.099549,
		26.919033, 34.839043, 33.248447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767847, 34.441574, 32.586056>,  <26.318619, 34.485989, 33.178764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767847, 34.441574, 32.586056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965994, 34.479298, 32.931477>,  <27.084881, 34.501930, 33.138729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965994, 34.479298, 32.931477>,  <26.767847, 34.441574, 32.586056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965994, 34.479298, 32.931477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514046, -0.833178, -0.203888,
		0.700264, 0.544904, -0.461205,
		0.495365, 0.094305, 0.863551,
		27.114603, 34.507587, 33.190540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598993, 34.546558, 32.595757>,  <26.767847, 34.441574, 32.586056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598993, 34.546558, 32.595757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476221, 34.311909, 32.895535>,  <27.402557, 34.171120, 33.075401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476221, 34.311909, 32.895535>,  <27.598993, 34.546558, 32.595757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476221, 34.311909, 32.895535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578337, -0.740347, -0.342654,
		0.755857, 0.328258, 0.566504,
		-0.306930, -0.586628, 0.749441,
		27.384142, 34.135921, 33.120365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165428, 34.306248, 32.947720>,  <27.598993, 34.546558, 32.595757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165428, 34.306248, 32.947720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859104, 34.051888, 32.986019>,  <27.675310, 33.899273, 33.008999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859104, 34.051888, 32.986019>,  <28.165428, 34.306248, 32.947720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859104, 34.051888, 32.986019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573357, -0.742603, -0.346125,
		0.291202, -0.210169, 0.933290,
		-0.765809, -0.635900, 0.095746,
		27.629362, 33.861118, 33.014744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388981, 33.801456, 33.367493>,  <28.165428, 34.306248, 32.947720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388981, 33.801456, 33.367493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081442, 33.629524, 33.178127>,  <27.896919, 33.526367, 33.064507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081442, 33.629524, 33.178127>,  <28.388981, 33.801456, 33.367493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081442, 33.629524, 33.178127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554369, -0.817038, -0.158508,
		-0.318666, -0.384314, 0.866461,
		-0.768848, -0.429828, -0.473414,
		27.850788, 33.500576, 33.036102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271894, 33.091526, 33.675949>,  <28.388981, 33.801456, 33.367493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271894, 33.091526, 33.675949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128122, 33.117538, 33.303589>,  <28.041859, 33.133144, 33.080173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128122, 33.117538, 33.303589>,  <28.271894, 33.091526, 33.675949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128122, 33.117538, 33.303589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684331, -0.659844, -0.310318,
		-0.634430, -0.748584, 0.192667,
		-0.359429, 0.065027, -0.930904,
		28.020294, 33.137047, 33.024319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109249, 32.466442, 33.378315>,  <28.271894, 33.091526, 33.675949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109249, 32.466442, 33.378315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244436, 32.729813, 33.109318>,  <28.325548, 32.887836, 32.947918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244436, 32.729813, 33.109318>,  <28.109249, 32.466442, 33.378315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244436, 32.729813, 33.109318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846476, -0.525001, -0.088616,
		-0.411408, -0.539302, -0.734777,
		0.337967, 0.658428, -0.672496,
		28.345827, 32.927341, 32.907570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329077, 32.101376, 32.765778>,  <28.109249, 32.466442, 33.378315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329077, 32.101376, 32.765778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521709, 32.447426, 32.821831>,  <28.637289, 32.655056, 32.855461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521709, 32.447426, 32.821831>,  <28.329077, 32.101376, 32.765778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521709, 32.447426, 32.821831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869634, -0.491547, 0.046020,
		0.108694, 0.099701, -0.989063,
		0.481583, 0.865125, 0.140132,
		28.666183, 32.706963, 32.863869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863325, 32.306194, 32.235065>,  <28.329077, 32.101376, 32.765778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863325, 32.306194, 32.235065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953386, 32.451721, 32.596603>,  <29.007423, 32.539036, 32.813526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953386, 32.451721, 32.596603>,  <28.863325, 32.306194, 32.235065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953386, 32.451721, 32.596603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857826, -0.513896, -0.006833,
		0.461998, 0.776883, -0.427796,
		0.225151, 0.363818, 0.903849,
		29.020931, 32.560867, 32.867760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760149, 33.069916, 32.285645>,  <28.863325, 32.306194, 32.235065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760149, 33.069916, 32.285645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489244, 32.775696, 32.278908>,  <28.326702, 32.599163, 32.274868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489244, 32.775696, 32.278908>,  <28.760149, 33.069916, 32.285645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489244, 32.775696, 32.278908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670448, 0.607569, 0.425863,
		-0.303012, 0.299711, -0.904631,
		-0.677262, -0.735549, -0.016840,
		28.286066, 32.555031, 32.273857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146881, 33.146389, 31.787004>,  <28.760149, 33.069916, 32.285645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146881, 33.146389, 31.787004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089846, 32.968338, 32.140621>,  <28.055624, 32.861507, 32.352791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089846, 32.968338, 32.140621>,  <28.146881, 33.146389, 31.787004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089846, 32.968338, 32.140621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606487, 0.745143, 0.277371,
		-0.782203, -0.496609, -0.376216,
		-0.142590, -0.445130, 0.884040,
		28.047070, 32.834801, 32.405834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413301, 33.048771, 31.865065>,  <28.146881, 33.146389, 31.787004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413301, 33.048771, 31.865065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605511, 33.083160, 32.214169>,  <27.720837, 33.103794, 32.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605511, 33.083160, 32.214169>,  <27.413301, 33.048771, 31.865065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605511, 33.083160, 32.214169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726126, 0.597059, 0.340973,
		-0.491772, -0.797577, 0.349331,
		0.480523, 0.085977, 0.872758,
		27.749668, 33.108955, 32.475994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853807, 33.066650, 32.330021>,  <27.413301, 33.048771, 31.865065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853807, 33.066650, 32.330021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170212, 33.183613, 32.544983>,  <27.360054, 33.253792, 32.673958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170212, 33.183613, 32.544983>,  <26.853807, 33.066650, 32.330021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170212, 33.183613, 32.544983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588848, 0.602232, 0.539050,
		-0.166019, -0.742842, 0.648554,
		0.791009, 0.292407, 0.537403,
		27.407515, 33.271336, 32.706203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650635, 32.969891, 33.067432>,  <26.853807, 33.066650, 32.330021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650635, 32.969891, 33.067432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921347, 33.261353, 33.025410>,  <27.083773, 33.436230, 33.000195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921347, 33.261353, 33.025410>,  <26.650635, 32.969891, 33.067432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921347, 33.261353, 33.025410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565067, 0.605623, 0.560285,
		0.471880, -0.319823, 0.821610,
		0.676778, 0.728652, -0.105060,
		27.124380, 33.479950, 32.993893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751989, 33.254128, 33.707317>,  <26.650635, 32.969891, 33.067432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751989, 33.254128, 33.707317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849813, 33.524189, 33.428936>,  <26.908508, 33.686226, 33.261906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849813, 33.524189, 33.428936>,  <26.751989, 33.254128, 33.707317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849813, 33.524189, 33.428936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613863, 0.663402, 0.427867,
		0.750575, 0.322582, 0.576695,
		0.244558, 0.675158, -0.695955,
		26.923182, 33.726738, 33.220150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095314, 33.858242, 34.024967>,  <26.751989, 33.254128, 33.707317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095314, 33.858242, 34.024967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872593, 33.924171, 33.699318>,  <26.738960, 33.963730, 33.503929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872593, 33.924171, 33.699318>,  <27.095314, 33.858242, 34.024967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872593, 33.924171, 33.699318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376363, 0.823672, 0.424163,
		0.740487, 0.542583, -0.396589,
		-0.556804, 0.164826, -0.814127,
		26.705551, 33.973618, 33.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650000, 33.412865, 34.285820>,  <27.095314, 33.858242, 34.024967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650000, 33.412865, 34.285820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610727, 33.036385, 34.156513>,  <27.587164, 32.810497, 34.078930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610727, 33.036385, 34.156513>,  <27.650000, 33.412865, 34.285820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610727, 33.036385, 34.156513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451354, -0.247393, 0.857366,
		-0.886927, 0.230088, -0.400525,
		-0.098183, -0.941199, -0.323271,
		27.581272, 32.754025, 34.059532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060312, 32.981457, 34.603920>,  <27.650000, 33.412865, 34.285820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060312, 32.981457, 34.603920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265997, 32.662872, 34.476654>,  <27.389408, 32.471722, 34.400295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265997, 32.662872, 34.476654>,  <27.060312, 32.981457, 34.603920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265997, 32.662872, 34.476654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366521, -0.539457, 0.758056,
		-0.775404, -0.273184, -0.569315,
		0.514209, -0.796465, -0.318169,
		27.420259, 32.423931, 34.381203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626160, 32.480217, 34.376995>,  <27.060312, 32.981457, 34.603920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626160, 32.480217, 34.376995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965662, 32.365585, 34.554752>,  <27.169363, 32.296806, 34.661407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965662, 32.365585, 34.554752>,  <26.626160, 32.480217, 34.376995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965662, 32.365585, 34.554752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516416, -0.268516, 0.813150,
		-0.113701, -0.919659, -0.375897,
		0.848755, -0.286576, 0.444397,
		27.220289, 32.279613, 34.688072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572784, 31.779537, 34.805206>,  <26.626160, 32.480217, 34.376995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572784, 31.779537, 34.805206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888794, 31.972462, 34.956593>,  <27.078400, 32.088215, 35.047424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888794, 31.972462, 34.956593>,  <26.572784, 31.779537, 34.805206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888794, 31.972462, 34.956593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245644, -0.316576, 0.916209,
		0.561712, -0.816795, -0.131625,
		0.790025, 0.482313, 0.378465,
		27.125801, 32.117157, 35.070133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011547, 31.250494, 35.279148>,  <26.572784, 31.779537, 34.805206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011547, 31.250494, 35.279148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081213, 31.635164, 35.363857>,  <27.123013, 31.865967, 35.414684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081213, 31.635164, 35.363857>,  <27.011547, 31.250494, 35.279148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081213, 31.635164, 35.363857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384321, -0.131620, 0.913769,
		0.906623, -0.240532, 0.346669,
		0.174162, 0.961676, 0.211772,
		27.133461, 31.923668, 35.427387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518654, 31.347111, 35.818100>,  <27.011547, 31.250494, 35.279148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518654, 31.347111, 35.818100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236937, 31.630821, 35.806107>,  <27.067905, 31.801046, 35.798912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236937, 31.630821, 35.806107>,  <27.518654, 31.347111, 35.818100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236937, 31.630821, 35.806107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356212, -0.316548, 0.879153,
		0.614070, 0.629863, 0.475595,
		-0.704295, 0.709274, -0.029983,
		27.025648, 31.843603, 35.797112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568802, 31.664955, 36.422852>,  <27.518654, 31.347111, 35.818100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568802, 31.664955, 36.422852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200211, 31.699041, 36.271267>,  <26.979055, 31.719492, 36.180317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200211, 31.699041, 36.271267>,  <27.568802, 31.664955, 36.422852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200211, 31.699041, 36.271267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380517, -0.393943, 0.836669,
		-0.077994, 0.915176, 0.395436,
		-0.921479, 0.085215, -0.378965,
		26.923767, 31.724606, 36.157578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205053, 31.526255, 36.971405>,  <27.568802, 31.664955, 36.422852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205053, 31.526255, 36.971405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943277, 31.490339, 36.671101>,  <26.786213, 31.468790, 36.490917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943277, 31.490339, 36.671101>,  <27.205053, 31.526255, 36.971405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943277, 31.490339, 36.671101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544850, -0.632454, 0.550583,
		-0.524260, 0.769376, 0.364980,
		-0.654439, -0.089789, -0.750765,
		26.746946, 31.463402, 36.445869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518471, 31.728178, 37.157280>,  <27.205053, 31.526255, 36.971405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518471, 31.728178, 37.157280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474064, 31.476452, 36.849609>,  <26.447420, 31.325417, 36.665005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474064, 31.476452, 36.849609>,  <26.518471, 31.728178, 37.157280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474064, 31.476452, 36.849609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624383, -0.557977, 0.546633,
		-0.773189, 0.540948, -0.330989,
		-0.111015, -0.629315, -0.769180,
		26.440760, 31.287657, 36.618855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876318, 31.413258, 37.223289>,  <26.518471, 31.728178, 37.157280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876318, 31.413258, 37.223289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053349, 31.151981, 36.977535>,  <26.159567, 30.995216, 36.830082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053349, 31.151981, 36.977535>,  <25.876318, 31.413258, 37.223289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053349, 31.151981, 36.977535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570212, -0.733777, 0.369363,
		-0.692085, 0.186857, -0.697211,
		0.442579, -0.653188, -0.614385,
		26.186121, 30.956024, 36.793221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439119, 31.150312, 36.706676>,  <25.876318, 31.413258, 37.223289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439119, 31.150312, 36.706676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729794, 30.898903, 36.817593>,  <25.904198, 30.748058, 36.884140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729794, 30.898903, 36.817593>,  <25.439119, 31.150312, 36.706676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729794, 30.898903, 36.817593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686106, -0.643765, 0.338859,
		-0.034472, -0.436492, -0.899047,
		0.726685, -0.628523, 0.277288,
		25.947800, 30.710346, 36.900780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183538, 30.584190, 36.567886>,  <25.439119, 31.150312, 36.706676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183538, 30.584190, 36.567886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488497, 30.466400, 36.798378>,  <25.671471, 30.395727, 36.936672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488497, 30.466400, 36.798378>,  <25.183538, 30.584190, 36.567886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488497, 30.466400, 36.798378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579470, -0.707033, 0.405363,
		0.288045, -0.642954, -0.709676,
		0.762394, -0.294474, 0.576230,
		25.717215, 30.378057, 36.971249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204760, 29.880117, 36.389992>,  <25.183538, 30.584190, 36.567886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204760, 29.880117, 36.389992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349895, 29.954666, 36.755199>,  <25.436977, 29.999395, 36.974323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349895, 29.954666, 36.755199>,  <25.204760, 29.880117, 36.389992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349895, 29.954666, 36.755199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543538, -0.753524, 0.369822,
		0.756910, -0.630449, -0.172109,
		0.362842, 0.186374, 0.913023,
		25.458748, 30.010578, 37.029106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360147, 29.269686, 36.627861>,  <25.204760, 29.880117, 36.389992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360147, 29.269686, 36.627861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280613, 29.466768, 36.966732>,  <25.232891, 29.585018, 37.170055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280613, 29.466768, 36.966732>,  <25.360147, 29.269686, 36.627861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280613, 29.466768, 36.966732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606229, -0.741041, 0.288695,
		0.770032, -0.456178, 0.446040,
		-0.198837, 0.492707, 0.847174,
		25.220963, 29.614580, 37.220882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821054, 28.858124, 37.005032>,  <25.360147, 29.269686, 36.627861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821054, 28.858124, 37.005032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073935, 28.559977, 37.089649>,  <25.225662, 28.381088, 37.140419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073935, 28.559977, 37.089649>,  <24.821054, 28.858124, 37.005032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073935, 28.559977, 37.089649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500673, -0.601374, -0.622636,
		0.591312, 0.287714, -0.753373,
		0.632200, -0.745366, 0.211549,
		25.263594, 28.336367, 37.153114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505590, 29.161154, 37.645973>,  <24.821054, 28.858124, 37.005032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505590, 29.161154, 37.645973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843084, 29.144604, 37.860039>,  <25.045580, 29.134674, 37.988480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843084, 29.144604, 37.860039>,  <24.505590, 29.161154, 37.645973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843084, 29.144604, 37.860039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350880, 0.797019, -0.491573,
		-0.406196, 0.602535, 0.686991,
		0.843735, -0.041376, 0.535164,
		25.096205, 29.132191, 38.020588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634634, 29.766403, 37.867344>,  <24.505590, 29.161154, 37.645973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634634, 29.766403, 37.867344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985474, 29.580902, 37.817337>,  <25.195978, 29.469601, 37.787334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985474, 29.580902, 37.817337>,  <24.634634, 29.766403, 37.867344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985474, 29.580902, 37.817337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363529, 0.811077, -0.458258,
		0.313917, 0.356491, 0.879983,
		0.877099, -0.463754, -0.125016,
		25.248604, 29.441776, 37.779831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276981, 30.263994, 38.029903>,  <24.634634, 29.766403, 37.867344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276981, 30.263994, 38.029903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387964, 29.962427, 37.791702>,  <25.454554, 29.781487, 37.648781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387964, 29.962427, 37.791702>,  <25.276981, 30.263994, 38.029903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387964, 29.962427, 37.791702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510117, 0.640853, -0.573662,
		0.814125, -0.144610, 0.562396,
		0.277456, -0.753920, -0.595502,
		25.471201, 29.736252, 37.613052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953386, 30.105886, 38.189770>,  <25.276981, 30.263994, 38.029903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953386, 30.105886, 38.189770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856697, 30.030691, 37.808987>,  <25.798683, 29.985573, 37.580517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856697, 30.030691, 37.808987>,  <25.953386, 30.105886, 38.189770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856697, 30.030691, 37.808987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655708, 0.691523, -0.303057,
		0.715275, -0.697464, -0.043890,
		-0.241722, -0.187990, -0.951961,
		25.784180, 29.974295, 37.523399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515306, 29.841261, 37.809128>,  <25.953386, 30.105886, 38.189770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515306, 29.841261, 37.809128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276716, 30.005970, 37.533546>,  <26.133562, 30.104795, 37.368198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276716, 30.005970, 37.533546>,  <26.515306, 29.841261, 37.809128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276716, 30.005970, 37.533546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753966, 0.581801, -0.305029,
		0.275231, -0.701391, -0.657494,
		-0.596475, 0.411775, -0.688955,
		26.097775, 30.129503, 37.326859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969475, 29.990610, 37.264412>,  <26.515306, 29.841261, 37.809128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969475, 29.990610, 37.264412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656607, 30.228733, 37.190853>,  <26.468885, 30.371607, 37.146717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656607, 30.228733, 37.190853>,  <26.969475, 29.990610, 37.264412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656607, 30.228733, 37.190853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618883, 0.708185, -0.339791,
		-0.072050, -0.379583, -0.922348,
		-0.782171, 0.595308, -0.183892,
		26.421955, 30.407326, 37.135685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148712, 30.318634, 36.654381>,  <26.969475, 29.990610, 37.264412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148712, 30.318634, 36.654381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876062, 30.560822, 36.818722>,  <26.712473, 30.706133, 36.917324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876062, 30.560822, 36.818722>,  <27.148712, 30.318634, 36.654381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876062, 30.560822, 36.818722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570118, 0.791430, -0.220464,
		-0.458643, 0.083959, -0.884646,
		-0.681625, 0.605467, 0.410850,
		26.671576, 30.742462, 36.941978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682028, 30.306286, 36.040508>,  <27.148712, 30.318634, 36.654381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682028, 30.306286, 36.040508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389734, 30.532312, 36.193726>,  <26.214357, 30.667929, 36.285656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389734, 30.532312, 36.193726>,  <26.682028, 30.306286, 36.040508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389734, 30.532312, 36.193726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256222, 0.747107, -0.613337,
		-0.632753, -0.350042, -0.690720,
		-0.730736, 0.565068, 0.383045,
		26.170513, 30.701834, 36.308640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221294, 30.601284, 35.586483>,  <26.682028, 30.306286, 36.040508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221294, 30.601284, 35.586483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220032, 30.848053, 35.901291>,  <26.219275, 30.996115, 36.090176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220032, 30.848053, 35.901291>,  <26.221294, 30.601284, 35.586483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220032, 30.848053, 35.901291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337517, 0.741495, -0.579886,
		-0.941314, 0.263802, -0.210561,
		-0.003155, 0.616923, 0.787017,
		26.219086, 31.033131, 36.137398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761641, 31.222525, 35.559559>,  <26.221294, 30.601284, 35.586483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761641, 31.222525, 35.559559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049311, 31.328623, 35.816441>,  <26.221912, 31.392282, 35.970570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049311, 31.328623, 35.816441>,  <25.761641, 31.222525, 35.559559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049311, 31.328623, 35.816441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218942, 0.790675, -0.571750,
		-0.659433, 0.551794, 0.510559,
		0.719175, 0.265248, 0.642208,
		26.265062, 31.408197, 36.009102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704302, 31.911535, 35.520981>,  <25.761641, 31.222525, 35.559559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704302, 31.911535, 35.520981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059036, 31.850601, 35.695480>,  <26.271877, 31.814041, 35.800182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059036, 31.850601, 35.695480>,  <25.704302, 31.911535, 35.520981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059036, 31.850601, 35.695480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391523, 0.749146, -0.534314,
		-0.245424, 0.644651, 0.724011,
		0.886836, -0.152334, 0.436254,
		26.325087, 31.804901, 35.826355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967909, 32.668396, 35.828873>,  <25.704302, 31.911535, 35.520981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967909, 32.668396, 35.828873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228222, 32.384159, 35.721886>,  <26.384409, 32.213615, 35.657696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228222, 32.384159, 35.721886>,  <25.967909, 32.668396, 35.828873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228222, 32.384159, 35.721886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574443, 0.691155, -0.438541,
		0.496484, 0.131753, 0.857989,
		0.650783, -0.710595, -0.267463,
		26.423456, 32.170982, 35.641647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694788, 33.004112, 35.858196>,  <25.967909, 32.668396, 35.828873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694788, 33.004112, 35.858196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865602, 32.649174, 35.927776>,  <26.968092, 32.436211, 35.969524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865602, 32.649174, 35.927776>,  <26.694788, 33.004112, 35.858196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865602, 32.649174, 35.927776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410898, 0.019060, -0.911482,
		0.805482, 0.460716, 0.372747,
		0.427039, -0.887343, 0.173955,
		26.993713, 32.382969, 35.979961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485001, 33.027344, 35.938301>,  <26.694788, 33.004112, 35.858196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485001, 33.027344, 35.938301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369473, 32.673004, 35.793056>,  <27.300156, 32.460400, 35.705910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369473, 32.673004, 35.793056>,  <27.485001, 33.027344, 35.938301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369473, 32.673004, 35.793056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470568, 0.198944, -0.859643,
		0.833756, -0.419148, 0.359396,
		-0.288819, -0.885853, -0.363108,
		27.282827, 32.407249, 35.684124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116219, 32.629013, 35.599472>,  <27.485001, 33.027344, 35.938301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116219, 32.629013, 35.599472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777632, 32.518673, 35.417305>,  <27.574480, 32.452469, 35.308006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777632, 32.518673, 35.417305>,  <28.116219, 32.629013, 35.599472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777632, 32.518673, 35.417305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454977, 0.069551, -0.887783,
		0.276572, -0.958681, 0.066633,
		-0.846466, -0.275852, -0.455413,
		27.523691, 32.435917, 35.280682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675501, 32.598000, 36.099339>,  <28.116219, 32.629013, 35.599472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675501, 32.598000, 36.099339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849243, 32.885822, 35.882610>,  <28.953489, 33.058517, 35.752575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849243, 32.885822, 35.882610>,  <28.675501, 32.598000, 36.099339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849243, 32.885822, 35.882610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848602, -0.125217, 0.514000,
		0.302007, -0.683051, -0.665007,
		0.434358, 0.719557, -0.541822,
		28.979551, 33.101688, 35.720062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177328, 32.360954, 35.837299>,  <28.675501, 32.598000, 36.099339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177328, 32.360954, 35.837299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261597, 32.751160, 35.812050>,  <29.312159, 32.985283, 35.796898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261597, 32.751160, 35.812050>,  <29.177328, 32.360954, 35.837299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261597, 32.751160, 35.812050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822568, -0.142008, 0.550650,
		0.528203, -0.167934, -0.832346,
		0.210673, 0.975516, -0.063128,
		29.324799, 33.043816, 35.793110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895607, 32.457470, 35.686901>,  <29.177328, 32.360954, 35.837299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895607, 32.457470, 35.686901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742064, 32.735355, 35.930222>,  <29.649937, 32.902084, 36.076214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742064, 32.735355, 35.930222>,  <29.895607, 32.457470, 35.686901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742064, 32.735355, 35.930222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640375, -0.274333, 0.717399,
		0.665261, 0.664922, -0.339569,
		-0.383859, 0.694709, 0.608302,
		29.626905, 32.943768, 36.112713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427700, 32.933121, 36.080784>,  <29.895607, 32.457470, 35.686901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427700, 32.933121, 36.080784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093393, 32.834816, 36.277191>,  <29.892809, 32.775833, 36.395035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093393, 32.834816, 36.277191>,  <30.427700, 32.933121, 36.080784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093393, 32.834816, 36.277191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546864, -0.292195, 0.784577,
		-0.049348, 0.924242, 0.378605,
		-0.835766, -0.245763, 0.491015,
		29.842663, 32.761086, 36.424496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458380, 33.204216, 36.726425>,  <30.427700, 32.933121, 36.080784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458380, 33.204216, 36.726425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221767, 32.885380, 36.774994>,  <30.079800, 32.694080, 36.804134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221767, 32.885380, 36.774994>,  <30.458380, 33.204216, 36.726425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221767, 32.885380, 36.774994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626518, -0.359613, 0.691487,
		-0.507511, 0.485107, 0.712112,
		-0.591530, -0.797088, 0.121421,
		30.044308, 32.646252, 36.811420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355797, 33.879848, 36.974529>,  <30.458380, 33.204216, 36.726425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355797, 33.879848, 36.974529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153212, 33.590405, 37.162094>,  <30.031660, 33.416737, 37.274635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153212, 33.590405, 37.162094>,  <30.355797, 33.879848, 36.974529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153212, 33.590405, 37.162094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728971, -0.649781, -0.215376,
		0.460541, 0.232747, 0.856581,
		-0.506462, -0.723612, 0.468916,
		30.001272, 33.373322, 37.302769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682579, 33.648918, 37.550415>,  <30.355797, 33.879848, 36.974529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682579, 33.648918, 37.550415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481953, 33.345020, 37.384899>,  <30.361576, 33.162682, 37.285587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481953, 33.345020, 37.384899>,  <30.682579, 33.648918, 37.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481953, 33.345020, 37.384899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862484, -0.476428, -0.170695,
		-0.067458, -0.442504, 0.894226,
		-0.501568, -0.759741, -0.413791,
		30.331482, 33.117100, 37.260761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549322, 33.050793, 37.930645>,  <30.682579, 33.648918, 37.550415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549322, 33.050793, 37.930645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620031, 32.994946, 37.540924>,  <30.662457, 32.961437, 37.307091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620031, 32.994946, 37.540924>,  <30.549322, 33.050793, 37.930645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620031, 32.994946, 37.540924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973777, -0.119222, 0.193765,
		-0.143210, -0.983002, 0.114878,
		0.176775, -0.139615, -0.974299,
		30.673063, 32.953060, 37.248634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693800, 32.355122, 37.809563>,  <30.549322, 33.050793, 37.930645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693800, 32.355122, 37.809563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897903, 32.589531, 37.557781>,  <31.020365, 32.730179, 37.406712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897903, 32.589531, 37.557781>,  <30.693800, 32.355122, 37.809563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897903, 32.589531, 37.557781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858985, -0.311366, 0.406442,
		0.042195, -0.748082, -0.662264,
		0.510258, 0.586025, -0.629454,
		31.050982, 32.765339, 37.368946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146296, 31.953897, 37.502903>,  <30.693800, 32.355122, 37.809563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146296, 31.953897, 37.502903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285460, 32.324089, 37.442978>,  <31.368958, 32.546204, 37.407021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285460, 32.324089, 37.442978>,  <31.146296, 31.953897, 37.502903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285460, 32.324089, 37.442978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909145, -0.294021, 0.294970,
		0.228940, -0.238827, -0.943689,
		0.347911, 0.925480, -0.149815,
		31.389833, 32.601734, 37.398033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781052, 32.007896, 36.955193>,  <31.146296, 31.953897, 37.502903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781052, 32.007896, 36.955193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793135, 32.267193, 37.259525>,  <31.800385, 32.422771, 37.442127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793135, 32.267193, 37.259525>,  <31.781052, 32.007896, 36.955193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793135, 32.267193, 37.259525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897585, -0.352516, 0.264712,
		0.439804, 0.674917, -0.592502,
		0.030207, 0.648243, 0.760834,
		31.802197, 32.461666, 37.487774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423847, 32.410324, 36.991688>,  <31.781052, 32.007896, 36.955193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423847, 32.410324, 36.991688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297550, 32.415432, 37.371193>,  <32.221771, 32.418499, 37.598896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297550, 32.415432, 37.371193>,  <32.423847, 32.410324, 36.991688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297550, 32.415432, 37.371193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936195, -0.158536, 0.313697,
		0.154419, 0.987271, 0.038098,
		-0.315743, 0.012774, 0.948759,
		32.202827, 32.419266, 37.655819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239098, 32.201385, 36.929714>,  <32.423847, 32.410324, 36.991688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239098, 32.201385, 36.929714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578438, 32.045025, 37.072540>,  <33.782043, 31.951210, 37.158237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578438, 32.045025, 37.072540>,  <33.239098, 32.201385, 36.929714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578438, 32.045025, 37.072540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418065, 0.080806, -0.904816,
		0.324837, 0.916880, 0.231973,
		0.848353, -0.390897, 0.357067,
		33.832943, 31.927755, 37.179661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772968, 32.767673, 36.886219>,  <33.239098, 32.201385, 36.929714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772968, 32.767673, 36.886219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921940, 32.397594, 36.857098>,  <34.011322, 32.175549, 36.839622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921940, 32.397594, 36.857098>,  <33.772968, 32.767673, 36.886219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921940, 32.397594, 36.857098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299023, 0.193896, -0.934339,
		0.878567, 0.326208, 0.348869,
		0.372433, -0.925199, -0.072807,
		34.033669, 32.120033, 36.835255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553402, 32.878872, 36.700130>,  <33.772968, 32.767673, 36.886219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553402, 32.878872, 36.700130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330128, 32.580944, 36.553883>,  <34.196163, 32.402187, 36.466133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330128, 32.580944, 36.553883>,  <34.553402, 32.878872, 36.700130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330128, 32.580944, 36.553883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283785, 0.242703, -0.927665,
		0.779677, -0.621566, 0.075895,
		-0.558185, -0.744816, -0.365621,
		34.162674, 32.357498, 36.444195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043888, 32.485134, 36.392597>,  <34.553402, 32.878872, 36.700130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043888, 32.485134, 36.392597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669483, 32.493610, 36.252060>,  <34.444839, 32.498695, 36.167740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669483, 32.493610, 36.252060>,  <35.043888, 32.485134, 36.392597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669483, 32.493610, 36.252060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350881, 0.134904, -0.926652,
		0.027761, -0.990632, -0.133707,
		-0.936009, 0.021190, -0.351339,
		34.388680, 32.499966, 36.146660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806717, 31.973360, 35.927921>,  <35.043888, 32.485134, 36.392597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806717, 31.973360, 35.927921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638943, 32.323521, 35.831802>,  <34.538277, 32.533619, 35.774132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638943, 32.323521, 35.831802>,  <34.806717, 31.973360, 35.927921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638943, 32.323521, 35.831802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316329, -0.107172, -0.942576,
		-0.850888, -0.471362, -0.231964,
		-0.419435, 0.875404, -0.240297,
		34.513111, 32.586143, 35.759712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451363, 31.858229, 35.364647>,  <34.806717, 31.973360, 35.927921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451363, 31.858229, 35.364647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522827, 32.251793, 35.363728>,  <34.565704, 32.487930, 35.363174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522827, 32.251793, 35.363728>,  <34.451363, 31.858229, 35.364647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522827, 32.251793, 35.363728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381166, -0.071364, -0.921748,
		-0.907080, 0.163803, -0.387783,
		0.178659, 0.983909, -0.002297,
		34.576424, 32.546967, 35.363037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126228, 32.119900, 34.740257>,  <34.451363, 31.858229, 35.364647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126228, 32.119900, 34.740257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430737, 32.348179, 34.863396>,  <34.613441, 32.485146, 34.937279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430737, 32.348179, 34.863396>,  <34.126228, 32.119900, 34.740257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430737, 32.348179, 34.863396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309732, 0.097046, -0.945858,
		-0.569672, 0.815407, -0.102884,
		0.761275, 0.570695, 0.307842,
		34.659119, 32.519386, 34.955750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188133, 32.724503, 34.216587>,  <34.126228, 32.119900, 34.740257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188133, 32.724503, 34.216587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539951, 32.711143, 34.406441>,  <34.751041, 32.703129, 34.520355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539951, 32.711143, 34.406441>,  <34.188133, 32.724503, 34.216587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539951, 32.711143, 34.406441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472044, 0.186535, -0.861614,
		-0.059760, 0.981881, 0.179832,
		0.879547, -0.033399, 0.474638,
		34.803814, 32.701122, 34.548832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645409, 33.279518, 33.910160>,  <34.188133, 32.724503, 34.216587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645409, 33.279518, 33.910160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927582, 33.049419, 34.075790>,  <35.096886, 32.911362, 34.175171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927582, 33.049419, 34.075790>,  <34.645409, 33.279518, 33.910160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927582, 33.049419, 34.075790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648088, 0.286969, -0.705430,
		0.286969, 0.765990, 0.575246,
		0.705430, -0.575246, 0.414078,
		35.139210, 32.876846, 34.200012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240604, 33.692043, 33.993031>,  <34.645409, 33.279518, 33.910160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240604, 33.692043, 33.993031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352673, 33.308746, 33.970127>,  <35.419914, 33.078770, 33.956383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352673, 33.308746, 33.970127>,  <35.240604, 33.692043, 33.993031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352673, 33.308746, 33.970127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649323, 0.233107, -0.723907,
		0.707025, 0.165637, 0.687517,
		0.280171, -0.958241, -0.057261,
		35.436726, 33.021275, 33.952950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919266, 33.740036, 33.968761>,  <35.240604, 33.692043, 33.993031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919266, 33.740036, 33.968761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827175, 33.380989, 33.818413>,  <35.771923, 33.165562, 33.728203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827175, 33.380989, 33.818413>,  <35.919266, 33.740036, 33.968761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827175, 33.380989, 33.818413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649413, 0.145949, -0.746299,
		0.724749, -0.415913, 0.549323,
		-0.230223, -0.897616, -0.375875,
		35.758110, 33.111706, 33.705650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576908, 33.482010, 33.645851>,  <35.919266, 33.740036, 33.968761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576908, 33.482010, 33.645851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285995, 33.273891, 33.466812>,  <36.111446, 33.149021, 33.359386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285995, 33.273891, 33.466812>,  <36.576908, 33.482010, 33.645851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285995, 33.273891, 33.466812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424599, 0.171297, -0.889029,
		0.539232, -0.836629, 0.096336,
		-0.727285, -0.520298, -0.447601,
		36.067810, 33.117802, 33.332531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806038, 33.221649, 33.040375>,  <36.576908, 33.482010, 33.645851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806038, 33.221649, 33.040375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420853, 33.175652, 32.942822>,  <36.189743, 33.148052, 32.884289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420853, 33.175652, 32.942822>,  <36.806038, 33.221649, 33.040375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420853, 33.175652, 32.942822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210487, 0.244722, -0.946471,
		0.168518, -0.962751, -0.211454,
		-0.962962, -0.114989, -0.243886,
		36.131966, 33.141155, 32.869656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839088, 32.907688, 32.438217>,  <36.806038, 33.221649, 33.040375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839088, 32.907688, 32.438217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462688, 33.043056, 32.438202>,  <36.236851, 33.124275, 32.438194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462688, 33.043056, 32.438202>,  <36.839088, 32.907688, 32.438217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462688, 33.043056, 32.438202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048400, 0.134473, -0.989735,
		-0.334940, -0.931337, -0.142918,
		-0.940996, 0.338419, -0.000036,
		36.180389, 33.144581, 32.438190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689198, 32.821705, 31.687290>,  <36.839088, 32.907688, 32.438217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689198, 32.821705, 31.687290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352131, 33.006615, 31.797718>,  <36.149891, 33.117561, 31.863974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352131, 33.006615, 31.797718>,  <36.689198, 32.821705, 31.687290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352131, 33.006615, 31.797718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235664, 0.144351, -0.961054,
		-0.484120, -0.874910, -0.012699,
		-0.842669, 0.462273, 0.276068,
		36.099331, 33.145298, 31.880539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073044, 32.564793, 31.311739>,  <36.689198, 32.821705, 31.687290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073044, 32.564793, 31.311739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014874, 32.943649, 31.426128>,  <35.979973, 33.170963, 31.494762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014874, 32.943649, 31.426128>,  <36.073044, 32.564793, 31.311739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014874, 32.943649, 31.426128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302844, 0.232558, -0.924231,
		-0.941880, -0.221009, 0.253016,
		-0.145422, 0.947139, 0.285973,
		35.971249, 33.227791, 31.511921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464920, 32.760139, 30.942886>,  <36.073044, 32.564793, 31.311739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464920, 32.760139, 30.942886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633469, 33.101139, 31.066624>,  <35.734596, 33.305740, 31.140865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633469, 33.101139, 31.066624>,  <35.464920, 32.760139, 30.942886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633469, 33.101139, 31.066624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207536, 0.422694, -0.882190,
		-0.882824, 0.307526, 0.355034,
		0.421367, 0.852501, 0.309342,
		35.759880, 33.356888, 31.159426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072178, 33.255802, 30.731352>,  <35.464920, 32.760139, 30.942886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072178, 33.255802, 30.731352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397625, 33.473095, 30.814228>,  <35.592892, 33.603470, 30.863955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397625, 33.473095, 30.814228>,  <35.072178, 33.255802, 30.731352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397625, 33.473095, 30.814228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162060, 0.554135, -0.816499,
		-0.558364, 0.630737, 0.538889,
		0.813613, 0.543235, 0.207192,
		35.641708, 33.636066, 30.876385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850914, 33.946625, 30.832205>,  <35.072178, 33.255802, 30.731352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850914, 33.946625, 30.832205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231865, 33.969826, 30.712465>,  <35.460438, 33.983746, 30.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231865, 33.969826, 30.712465>,  <34.850914, 33.946625, 30.832205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231865, 33.969826, 30.712465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253739, 0.695176, -0.672567,
		0.169087, 0.716495, 0.676790,
		0.952379, 0.058006, -0.299348,
		35.517578, 33.987228, 30.622662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031502, 34.605938, 30.705238>,  <34.850914, 33.946625, 30.832205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031502, 34.605938, 30.705238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307892, 34.403263, 30.499008>,  <35.473724, 34.281658, 30.375269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307892, 34.403263, 30.499008>,  <35.031502, 34.605938, 30.705238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307892, 34.403263, 30.499008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288189, 0.461011, -0.839295,
		0.662948, 0.728516, 0.172526,
		0.690976, -0.506689, -0.515576,
		35.515186, 34.251255, 30.344336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352242, 35.095013, 30.264147>,  <35.031502, 34.605938, 30.705238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352242, 35.095013, 30.264147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427002, 34.735088, 30.106459>,  <35.471859, 34.519135, 30.011847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427002, 34.735088, 30.106459>,  <35.352242, 35.095013, 30.264147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427002, 34.735088, 30.106459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343944, 0.315956, -0.884237,
		0.920201, 0.300854, -0.250432,
		0.186901, -0.899810, -0.394220,
		35.483070, 34.465145, 29.988194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701683, 35.207878, 29.673609>,  <35.352242, 35.095013, 30.264147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701683, 35.207878, 29.673609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549458, 34.841831, 29.620348>,  <35.458122, 34.622204, 29.588392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549458, 34.841831, 29.620348>,  <35.701683, 35.207878, 29.673609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549458, 34.841831, 29.620348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128409, 0.194883, -0.972384,
		0.915798, -0.352953, -0.191674,
		-0.380560, -0.915120, -0.133151,
		35.435291, 34.567295, 29.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955677, 35.055305, 29.061115>,  <35.701683, 35.207878, 29.673609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955677, 35.055305, 29.061115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657249, 34.790371, 29.088518>,  <35.478191, 34.631409, 29.104959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657249, 34.790371, 29.088518>,  <35.955677, 35.055305, 29.061115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657249, 34.790371, 29.088518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191173, 0.114510, -0.974854,
		0.637837, -0.740404, -0.212053,
		-0.746068, -0.662337, 0.068506,
		35.433430, 34.591671, 29.109070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115631, 34.578976, 28.562778>,  <35.955677, 35.055305, 29.061115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115631, 34.578976, 28.562778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725456, 34.522884, 28.630730>,  <35.491352, 34.489231, 28.671501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725456, 34.522884, 28.630730>,  <36.115631, 34.578976, 28.562778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725456, 34.522884, 28.630730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147558, -0.156641, -0.976571,
		0.163555, -0.977650, 0.132101,
		-0.975436, -0.140230, 0.169879,
		35.432827, 34.480816, 28.681694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931519, 33.959919, 28.262173>,  <36.115631, 34.578976, 28.562778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931519, 33.959919, 28.262173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620937, 34.208500, 28.303955>,  <35.434589, 34.357651, 28.329023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620937, 34.208500, 28.303955>,  <35.931519, 33.959919, 28.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620937, 34.208500, 28.303955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053809, 0.099768, -0.993555,
		-0.627870, -0.777072, -0.044026,
		-0.776456, 0.621454, 0.104455,
		35.388000, 34.394936, 28.335291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420582, 33.830105, 27.738373>,  <35.931519, 33.959919, 28.262173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420582, 33.830105, 27.738373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316132, 34.197212, 27.858053>,  <35.253460, 34.417477, 27.929861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316132, 34.197212, 27.858053>,  <35.420582, 33.830105, 27.738373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316132, 34.197212, 27.858053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002503, 0.309311, -0.950957,
		-0.965302, -0.249068, -0.078472,
		-0.261125, 0.917764, 0.299202,
		35.237793, 34.472542, 27.947813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123905, 34.091431, 27.090841>,  <35.420582, 33.830105, 27.738373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123905, 34.091431, 27.090841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143211, 34.418064, 27.320921>,  <35.154797, 34.614044, 27.458969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143211, 34.418064, 27.320921>,  <35.123905, 34.091431, 27.090841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143211, 34.418064, 27.320921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128678, 0.576155, -0.807148,
		-0.990511, -0.035056, 0.132887,
		0.048268, 0.816588, 0.575199,
		35.157692, 34.663040, 27.493481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531433, 34.601833, 26.917765>,  <35.123905, 34.091431, 27.090841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531433, 34.601833, 26.917765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785378, 34.842209, 27.112015>,  <34.937744, 34.986435, 27.228565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785378, 34.842209, 27.112015>,  <34.531433, 34.601833, 26.917765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785378, 34.842209, 27.112015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137037, 0.706148, -0.694677,
		-0.760380, 0.374471, 0.530653,
		0.634856, 0.600938, 0.485625,
		34.975834, 35.022491, 27.257702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230877, 35.309002, 26.924736>,  <34.531433, 34.601833, 26.917765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230877, 35.309002, 26.924736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627110, 35.341988, 26.968454>,  <34.864849, 35.361778, 26.994686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627110, 35.341988, 26.968454>,  <34.230877, 35.309002, 26.924736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627110, 35.341988, 26.968454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003362, 0.812693, -0.582682,
		-0.136873, 0.576827, 0.805318,
		0.990583, 0.082461, 0.109296,
		34.924286, 35.366726, 27.001244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394665, 36.021011, 27.166264>,  <34.230877, 35.309002, 26.924736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394665, 36.021011, 27.166264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728046, 35.869984, 27.004871>,  <34.928074, 35.779369, 26.908035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728046, 35.869984, 27.004871>,  <34.394665, 36.021011, 27.166264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728046, 35.869984, 27.004871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124228, 0.839500, -0.528969,
		0.538442, 0.390748, 0.746590,
		0.833455, -0.377566, -0.403480,
		34.978085, 35.756714, 26.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731327, 36.609890, 27.020664>,  <34.394665, 36.021011, 27.166264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731327, 36.609890, 27.020664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908546, 36.335373, 26.789942>,  <35.014877, 36.170662, 26.651508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908546, 36.335373, 26.789942>,  <34.731327, 36.609890, 27.020664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908546, 36.335373, 26.789942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154941, 0.692336, -0.704743,
		0.883005, 0.222867, 0.413076,
		0.443051, -0.686295, -0.576806,
		35.041462, 36.129486, 26.616899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181808, 37.001511, 26.765024>,  <34.731327, 36.609890, 27.020664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181808, 37.001511, 26.765024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208996, 36.687737, 26.518435>,  <35.225307, 36.499470, 26.370481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208996, 36.687737, 26.518435>,  <35.181808, 37.001511, 26.765024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208996, 36.687737, 26.518435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117940, 0.619885, -0.775778,
		0.990692, -0.019981, 0.134648,
		0.067965, -0.784438, -0.616472,
		35.229385, 36.452404, 26.333492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794250, 37.101101, 26.322317>,  <35.181808, 37.001511, 26.765024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794250, 37.101101, 26.322317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548878, 36.848473, 26.132656>,  <35.401653, 36.696896, 26.018860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548878, 36.848473, 26.132656>,  <35.794250, 37.101101, 26.322317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548878, 36.848473, 26.132656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237547, 0.425023, -0.873457,
		0.753174, -0.648440, -0.110695,
		-0.613433, -0.631570, -0.474152,
		35.364849, 36.659000, 25.990410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125198, 36.895599, 25.682308>,  <35.794250, 37.101101, 26.322317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125198, 36.895599, 25.682308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729481, 36.851948, 25.643539>,  <35.492050, 36.825756, 25.620277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729481, 36.851948, 25.643539>,  <36.125198, 36.895599, 25.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729481, 36.851948, 25.643539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029337, 0.501817, -0.864476,
		0.142978, -0.858062, -0.493242,
		-0.989291, -0.109131, -0.096922,
		35.432693, 36.819210, 25.614462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980602, 36.603878, 25.012217>,  <36.125198, 36.895599, 25.682308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980602, 36.603878, 25.012217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659489, 36.808018, 25.135563>,  <35.466820, 36.930500, 25.209570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659489, 36.808018, 25.135563>,  <35.980602, 36.603878, 25.012217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659489, 36.808018, 25.135563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014944, 0.499771, -0.866029,
		-0.596088, -0.699839, -0.393580,
		-0.802780, 0.510348, 0.308366,
		35.418655, 36.961121, 25.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627628, 36.690586, 24.388876>,  <35.980602, 36.603878, 25.012217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627628, 36.690586, 24.388876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483013, 36.971535, 24.634140>,  <35.396244, 37.140102, 24.781298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483013, 36.971535, 24.634140>,  <35.627628, 36.690586, 24.388876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483013, 36.971535, 24.634140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006575, 0.655709, -0.754985,
		-0.932333, -0.276989, -0.232447,
		-0.361540, 0.702370, 0.613161,
		35.374550, 37.182247, 24.818089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995850, 37.033321, 23.986843>,  <35.627628, 36.690586, 24.388876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995850, 37.033321, 23.986843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104546, 37.289673, 24.274019>,  <35.169765, 37.443481, 24.446325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104546, 37.289673, 24.274019>,  <34.995850, 37.033321, 23.986843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104546, 37.289673, 24.274019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019052, 0.742282, -0.669817,
		-0.962181, 0.195696, 0.189500,
		0.271744, 0.640875, 0.717938,
		35.186069, 37.481934, 24.489401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553387, 37.638351, 23.751459>,  <34.995850, 37.033321, 23.986843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553387, 37.638351, 23.751459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797466, 37.808159, 24.019024>,  <34.943916, 37.910042, 24.179562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797466, 37.808159, 24.019024>,  <34.553387, 37.638351, 23.751459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797466, 37.808159, 24.019024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161316, 0.893209, -0.419709,
		-0.775650, 0.148201, 0.613518,
		0.610201, 0.424517, 0.668910,
		34.980526, 37.935513, 24.219696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256374, 38.235519, 24.134209>,  <34.553387, 37.638351, 23.751459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256374, 38.235519, 24.134209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651272, 38.282497, 24.177197>,  <34.888210, 38.310684, 24.202990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651272, 38.282497, 24.177197>,  <34.256374, 38.235519, 24.134209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651272, 38.282497, 24.177197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066718, 0.918185, -0.390494,
		-0.144536, 0.378344, 0.914311,
		0.987248, 0.117442, 0.107468,
		34.947445, 38.317730, 24.209436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428852, 39.019974, 24.385178>,  <34.256374, 38.235519, 24.134209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428852, 39.019974, 24.385178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757202, 38.876110, 24.207727>,  <34.954212, 38.789791, 24.101257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757202, 38.876110, 24.207727>,  <34.428852, 39.019974, 24.385178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757202, 38.876110, 24.207727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106089, 0.859297, -0.500354,
		0.561164, 0.363666, 0.743534,
		0.820878, -0.359661, -0.443625,
		35.003464, 38.768211, 24.074640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939304, 39.617397, 24.462772>,  <34.428852, 39.019974, 24.385178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939304, 39.617397, 24.462772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041252, 39.362953, 24.171457>,  <35.102421, 39.210285, 23.996668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041252, 39.362953, 24.171457>,  <34.939304, 39.617397, 24.462772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041252, 39.362953, 24.171457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195804, 0.771508, -0.605340,
		0.946945, 0.011678, 0.321184,
		0.254865, -0.636113, -0.728289,
		35.117710, 39.172119, 23.952971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522808, 39.912109, 24.209629>,  <34.939304, 39.617397, 24.462772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522808, 39.912109, 24.209629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422745, 39.658207, 23.917187>,  <35.362709, 39.505867, 23.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422745, 39.658207, 23.917187>,  <35.522808, 39.912109, 24.209629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422745, 39.658207, 23.917187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066988, 0.741956, -0.667094,
		0.965886, -0.215852, -0.143083,
		-0.250155, -0.634752, -0.731104,
		35.347698, 39.467781, 23.697855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994949, 39.940002, 23.739653>,  <35.522808, 39.912109, 24.209629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994949, 39.940002, 23.739653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669056, 39.817917, 23.542452>,  <35.473518, 39.744663, 23.424131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669056, 39.817917, 23.542452>,  <35.994949, 39.940002, 23.739653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669056, 39.817917, 23.542452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191070, 0.661436, -0.725255,
		0.547448, -0.685088, -0.480577,
		-0.814734, -0.305216, -0.493001,
		35.424637, 39.726353, 23.394550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177216, 40.155201, 23.109903>,  <35.994949, 39.940002, 23.739653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177216, 40.155201, 23.109903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792580, 40.062000, 23.051867>,  <35.561798, 40.006081, 23.017044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792580, 40.062000, 23.051867>,  <36.177216, 40.155201, 23.109903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792580, 40.062000, 23.051867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086964, 0.759975, -0.644108,
		0.260347, -0.606750, -0.751048,
		-0.961591, -0.233006, -0.145092,
		35.504101, 39.992100, 23.008339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094303, 40.102085, 22.409790>,  <36.177216, 40.155201, 23.109903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094303, 40.102085, 22.409790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726742, 40.182304, 22.545675>,  <35.506207, 40.230434, 22.627207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726742, 40.182304, 22.545675>,  <36.094303, 40.102085, 22.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726742, 40.182304, 22.545675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001912, 0.863395, -0.504525,
		-0.394485, -0.462958, -0.793758,
		-0.918901, 0.200545, 0.339711,
		35.451073, 40.242466, 22.647589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718681, 40.399899, 21.763594>,  <36.094303, 40.102085, 22.409790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718681, 40.399899, 21.763594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532047, 40.535126, 22.090521>,  <35.420067, 40.616261, 22.286676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532047, 40.535126, 22.090521>,  <35.718681, 40.399899, 21.763594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532047, 40.535126, 22.090521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149203, 0.940911, -0.304014,
		-0.871799, -0.019904, -0.489459,
		-0.466589, 0.338068, 0.817316,
		35.392071, 40.636547, 22.335716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136868, 40.813900, 21.545908>,  <35.718681, 40.399899, 21.763594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136868, 40.813900, 21.545908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287289, 40.918472, 21.901487>,  <35.377541, 40.981216, 22.114836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287289, 40.918472, 21.901487>,  <35.136868, 40.813900, 21.545908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287289, 40.918472, 21.901487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055482, 0.964003, -0.260037,
		-0.924934, 0.048468, 0.377025,
		0.376057, 0.261435, 0.888950,
		35.400105, 40.996902, 22.168173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797611, 41.530975, 21.574150>,  <35.136868, 40.813900, 21.545908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797611, 41.530975, 21.574150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133591, 41.480309, 21.785221>,  <35.335178, 41.449909, 21.911863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133591, 41.480309, 21.785221>,  <34.797611, 41.530975, 21.574150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133591, 41.480309, 21.785221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139764, 0.990068, 0.015189,
		-0.524360, 0.060992, 0.849309,
		0.839948, -0.126667, 0.527677,
		35.385574, 41.442310, 21.943523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047146, 42.109558, 21.709883>,  <34.797611, 41.530975, 21.574150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047146, 42.109558, 21.709883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322674, 41.941387, 21.946110>,  <35.487991, 41.840485, 22.087847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322674, 41.941387, 21.946110>,  <35.047146, 42.109558, 21.709883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322674, 41.941387, 21.946110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407986, 0.898215, 0.163577,
		-0.599229, 0.128269, 0.790235,
		0.688819, -0.420425, 0.590569,
		35.529320, 41.815258, 22.123280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856869, 42.152756, 22.478148>,  <35.047146, 42.109558, 21.709883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856869, 42.152756, 22.478148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689709, 42.478886, 22.638453>,  <34.589413, 42.674564, 22.734634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689709, 42.478886, 22.638453>,  <34.856869, 42.152756, 22.478148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689709, 42.478886, 22.638453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193064, 0.351350, -0.916122,
		-0.887740, -0.460223, 0.010579,
		-0.417904, 0.815320, 0.400760,
		34.564339, 42.723480, 22.758680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327827, 42.271107, 22.157005>,  <34.856869, 42.152756, 22.478148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327827, 42.271107, 22.157005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415344, 42.632759, 22.303799>,  <34.467854, 42.849751, 22.391874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415344, 42.632759, 22.303799>,  <34.327827, 42.271107, 22.157005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415344, 42.632759, 22.303799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118466, 0.348702, -0.929717,
		-0.968554, 0.246887, -0.030816,
		0.218789, 0.904132, 0.366984,
		34.480980, 42.903999, 22.413895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981808, 42.837029, 21.721704>,  <34.327827, 42.271107, 22.157005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981808, 42.837029, 21.721704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315914, 42.956120, 21.906607>,  <34.516380, 43.027576, 22.017548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315914, 42.956120, 21.906607>,  <33.981808, 42.837029, 21.721704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315914, 42.956120, 21.906607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277035, 0.498315, -0.821543,
		-0.474946, 0.814272, 0.333746,
		0.835271, 0.297729, 0.462255,
		34.566494, 43.045437, 22.045282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140957, 43.607578, 21.633638>,  <33.981808, 42.837029, 21.721704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140957, 43.607578, 21.633638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493130, 43.434525, 21.711260>,  <34.704433, 43.330692, 21.757833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493130, 43.434525, 21.711260>,  <34.140957, 43.607578, 21.633638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493130, 43.434525, 21.711260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422700, 0.530701, -0.734630,
		0.214842, 0.728822, 0.650124,
		0.880436, -0.432637, 0.194056,
		34.757259, 43.304733, 21.769476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653584, 44.050133, 21.842857>,  <34.140957, 43.607578, 21.633638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653584, 44.050133, 21.842857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824188, 43.744659, 21.649004>,  <34.926552, 43.561375, 21.532692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824188, 43.744659, 21.649004>,  <34.653584, 44.050133, 21.842857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824188, 43.744659, 21.649004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302439, 0.625389, -0.719319,
		0.852419, 0.160226, 0.497705,
		0.426512, -0.763686, -0.484635,
		34.952141, 43.515553, 21.503614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147850, 44.053993, 22.482761>,  <34.653584, 44.050133, 21.842857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147850, 44.053993, 22.482761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897491, 43.769249, 22.355314>,  <34.747276, 43.598404, 22.278847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897491, 43.769249, 22.355314>,  <35.147850, 44.053993, 22.482761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897491, 43.769249, 22.355314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042969, -0.376435, 0.925446,
		-0.778725, 0.592920, 0.205020,
		-0.625892, -0.711858, -0.318617,
		34.709724, 43.555691, 22.259729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756779, 44.029640, 22.977076>,  <35.147850, 44.053993, 22.482761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756779, 44.029640, 22.977076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659382, 43.688175, 22.792913>,  <34.600945, 43.483295, 22.682417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659382, 43.688175, 22.792913>,  <34.756779, 44.029640, 22.977076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659382, 43.688175, 22.792913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071635, -0.457568, 0.886285,
		-0.967255, 0.248781, 0.050260,
		-0.243488, -0.853663, -0.460406,
		34.586334, 43.432076, 22.654791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119305, 43.883640, 23.182022>,  <34.756779, 44.029640, 22.977076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119305, 43.883640, 23.182022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241028, 43.518894, 23.071825>,  <34.314060, 43.300045, 23.005707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241028, 43.518894, 23.071825>,  <34.119305, 43.883640, 23.182022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241028, 43.518894, 23.071825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144175, -0.329968, 0.932917,
		-0.941600, -0.244175, -0.231880,
		0.304308, -0.911866, -0.275494,
		34.332321, 43.245335, 22.989178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705734, 43.459438, 23.588680>,  <34.119305, 43.883640, 23.182022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705734, 43.459438, 23.588680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010445, 43.218266, 23.493870>,  <34.193272, 43.073563, 23.436983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010445, 43.218266, 23.493870>,  <33.705734, 43.459438, 23.588680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010445, 43.218266, 23.493870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219995, -0.584877, 0.780718,
		-0.609356, -0.542578, -0.578182,
		0.761766, -0.602932, -0.237034,
		34.238976, 43.037388, 23.422762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477623, 42.813766, 23.723753>,  <33.705734, 43.459438, 23.588680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477623, 42.813766, 23.723753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869888, 42.740429, 23.696396>,  <34.105247, 42.696426, 23.679981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869888, 42.740429, 23.696396>,  <33.477623, 42.813766, 23.723753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869888, 42.740429, 23.696396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042106, -0.539023, 0.841238,
		-0.191100, -0.822094, -0.536322,
		0.980667, -0.183343, -0.068392,
		34.164089, 42.685425, 23.675879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560009, 42.149944, 23.607681>,  <33.477623, 42.813766, 23.723753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560009, 42.149944, 23.607681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896351, 42.281773, 23.779421>,  <34.098156, 42.360870, 23.882463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896351, 42.281773, 23.779421>,  <33.560009, 42.149944, 23.607681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896351, 42.281773, 23.779421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113784, -0.667883, 0.735518,
		0.529162, -0.667318, -0.524094,
		0.840858, 0.329574, 0.429348,
		34.148609, 42.380646, 23.908226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940434, 41.487061, 23.860340>,  <33.560009, 42.149944, 23.607681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940434, 41.487061, 23.860340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126263, 41.785969, 24.050394>,  <34.237762, 41.965313, 24.164427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126263, 41.785969, 24.050394>,  <33.940434, 41.487061, 23.860340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126263, 41.785969, 24.050394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025323, -0.525123, 0.850649,
		0.885172, -0.407222, -0.225036,
		0.464575, 0.747272, 0.475136,
		34.265636, 42.010151, 24.192934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259956, 41.180550, 24.327360>,  <33.940434, 41.487061, 23.860340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259956, 41.180550, 24.327360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248909, 41.555698, 24.465712>,  <34.242279, 41.780788, 24.548723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248909, 41.555698, 24.465712>,  <34.259956, 41.180550, 24.327360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248909, 41.555698, 24.465712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159995, -0.337402, 0.927664,
		0.986731, 0.080963, -0.140735,
		-0.027622, 0.937872, 0.345879,
		34.240623, 41.837059, 24.569475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941502, 41.317257, 24.603933>,  <34.259956, 41.180550, 24.327360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941502, 41.317257, 24.603933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660275, 41.543335, 24.776562>,  <34.491539, 41.678982, 24.880138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660275, 41.543335, 24.776562>,  <34.941502, 41.317257, 24.603933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660275, 41.543335, 24.776562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223963, -0.400018, 0.888722,
		0.674934, 0.721488, 0.154657,
		-0.703068, 0.565191, 0.431572,
		34.449356, 41.712891, 24.906033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304588, 41.491226, 25.195335>,  <34.941502, 41.317257, 24.603933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304588, 41.491226, 25.195335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915340, 41.540005, 25.273478>,  <34.681793, 41.569271, 25.320362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915340, 41.540005, 25.273478>,  <35.304588, 41.491226, 25.195335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915340, 41.540005, 25.273478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140995, -0.355231, 0.924084,
		0.182088, 0.926790, 0.328489,
		-0.973121, 0.121949, 0.195356,
		34.623405, 41.576588, 25.332085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385437, 41.734367, 25.758606>,  <35.304588, 41.491226, 25.195335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385437, 41.734367, 25.758606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002125, 41.620377, 25.749706>,  <34.772137, 41.551983, 25.744366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002125, 41.620377, 25.749706>,  <35.385437, 41.734367, 25.758606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002125, 41.620377, 25.749706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094716, -0.390009, 0.915927,
		-0.269697, 0.875603, 0.400728,
		-0.958276, -0.284978, -0.022251,
		34.714642, 41.534882, 25.743031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159969, 41.907104, 26.393080>,  <35.385437, 41.734367, 25.758606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159969, 41.907104, 26.393080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895653, 41.637119, 26.261763>,  <34.737061, 41.475128, 26.182972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895653, 41.637119, 26.261763>,  <35.159969, 41.907104, 26.393080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895653, 41.637119, 26.261763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082042, -0.499725, 0.862290,
		-0.746069, 0.542863, 0.385591,
		-0.660795, -0.674963, -0.328291,
		34.697414, 41.434631, 26.163275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837784, 41.670879, 26.990852>,  <35.159969, 41.907104, 26.393080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837784, 41.670879, 26.990852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719501, 41.393925, 26.727592>,  <34.648533, 41.227753, 26.569637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719501, 41.393925, 26.727592>,  <34.837784, 41.670879, 26.990852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719501, 41.393925, 26.727592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007749, -0.687200, 0.726427,
		-0.955246, 0.219912, 0.197846,
		-0.295710, -0.692384, -0.658150,
		34.630787, 41.186211, 26.530148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308552, 41.301144, 27.306385>,  <34.837784, 41.670879, 26.990852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308552, 41.301144, 27.306385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488312, 41.058926, 27.043676>,  <34.596169, 40.913593, 26.886051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488312, 41.058926, 27.043676>,  <34.308552, 41.301144, 27.306385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488312, 41.058926, 27.043676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005903, -0.737192, 0.675657,
		-0.893311, -0.299764, -0.334870,
		0.449401, -0.605548, -0.656772,
		34.623131, 40.877262, 26.846645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932419, 40.609470, 27.345064>,  <34.308552, 41.301144, 27.306385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932419, 40.609470, 27.345064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284081, 40.509926, 27.182507>,  <34.495079, 40.450199, 27.084972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284081, 40.509926, 27.182507>,  <33.932419, 40.609470, 27.345064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284081, 40.509926, 27.182507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077909, -0.766270, 0.637778,
		-0.470126, -0.592367, -0.654281,
		0.879154, -0.248861, -0.406394,
		34.547825, 40.435268, 27.060589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863266, 39.848545, 27.137997>,  <33.932419, 40.609470, 27.345064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863266, 39.848545, 27.137997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246681, 39.952595, 27.184553>,  <34.476730, 40.015022, 27.212488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246681, 39.952595, 27.184553>,  <33.863266, 39.848545, 27.137997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246681, 39.952595, 27.184553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129322, -0.761003, 0.635728,
		0.253942, -0.594316, -0.763087,
		0.958535, 0.260122, 0.116393,
		34.534241, 40.030632, 27.219471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243324, 39.202282, 26.988867>,  <33.863266, 39.848545, 27.137997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243324, 39.202282, 26.988867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473030, 39.443802, 27.210009>,  <34.610855, 39.588715, 27.342693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473030, 39.443802, 27.210009>,  <34.243324, 39.202282, 26.988867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473030, 39.443802, 27.210009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222757, -0.765071, 0.604190,
		0.787781, -0.223813, -0.573854,
		0.574265, 0.603800, 0.552852,
		34.645309, 39.624943, 27.375864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890942, 38.872101, 27.079868>,  <34.243324, 39.202282, 26.988867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890942, 38.872101, 27.079868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908550, 39.147537, 27.369394>,  <34.919117, 39.312798, 27.543110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908550, 39.147537, 27.369394>,  <34.890942, 38.872101, 27.079868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908550, 39.147537, 27.369394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576211, -0.609362, 0.544663,
		0.816114, 0.393093, -0.423599,
		0.044022, 0.688589, 0.723814,
		34.921757, 39.354115, 27.586538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665562, 38.676144, 27.299114>,  <34.890942, 38.872101, 27.079868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665562, 38.676144, 27.299114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430443, 38.886883, 27.544687>,  <35.289371, 39.013329, 27.692032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430443, 38.886883, 27.544687>,  <35.665562, 38.676144, 27.299114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430443, 38.886883, 27.544687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266755, -0.590216, 0.761897,
		0.763761, 0.611614, 0.206389,
		-0.587801, 0.526852, 0.613935,
		35.254101, 39.044937, 27.728868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874146, 38.427780, 27.844536>,  <35.665562, 38.676144, 27.299114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874146, 38.427780, 27.844536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561935, 38.629112, 27.992828>,  <35.374611, 38.749912, 28.081804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561935, 38.629112, 27.992828>,  <35.874146, 38.427780, 27.844536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561935, 38.629112, 27.992828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031388, -0.560746, 0.827393,
		0.624340, 0.657435, 0.421876,
		-0.780522, 0.503332, 0.370732,
		35.327778, 38.780113, 28.104048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042068, 38.704311, 28.495394>,  <35.874146, 38.427780, 27.844536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042068, 38.704311, 28.495394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642727, 38.681915, 28.500393>,  <35.403122, 38.668476, 28.503393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642727, 38.681915, 28.500393>,  <36.042068, 38.704311, 28.495394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642727, 38.681915, 28.500393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041323, -0.550717, 0.833668,
		-0.039793, 0.832812, 0.552124,
		-0.998353, -0.055990, 0.012500,
		35.343220, 38.665119, 28.504143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818859, 38.713810, 29.218126>,  <36.042068, 38.704311, 28.495394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818859, 38.713810, 29.218126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516529, 38.548538, 29.014946>,  <35.335133, 38.449375, 28.893038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516529, 38.548538, 29.014946>,  <35.818859, 38.713810, 29.218126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516529, 38.548538, 29.014946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167597, -0.627843, 0.760082,
		-0.632962, 0.659620, 0.405291,
		-0.755824, -0.413177, -0.507951,
		35.289783, 38.424583, 28.862560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402462, 38.521591, 29.732878>,  <35.818859, 38.713810, 29.218126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402462, 38.521591, 29.732878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255501, 38.321018, 29.419552>,  <35.167324, 38.200676, 29.231556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255501, 38.321018, 29.419552>,  <35.402462, 38.521591, 29.732878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255501, 38.321018, 29.419552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175266, -0.789802, 0.587788,
		-0.913399, 0.353242, 0.202290,
		-0.367401, -0.501431, -0.783316,
		35.145279, 38.170589, 29.184557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702354, 38.402882, 29.902821>,  <35.402462, 38.521591, 29.732878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702354, 38.402882, 29.902821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750271, 38.129642, 29.614645>,  <34.779018, 37.965698, 29.441740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750271, 38.129642, 29.614645>,  <34.702354, 38.402882, 29.902821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750271, 38.129642, 29.614645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547317, -0.650869, 0.526131,
		-0.828309, 0.331284, -0.451836,
		0.119787, -0.683096, -0.720438,
		34.786205, 37.924713, 29.398514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044773, 38.061760, 29.834406>,  <34.702354, 38.402882, 29.902821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044773, 38.061760, 29.834406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321758, 37.811348, 29.690975>,  <34.487949, 37.661102, 29.604918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321758, 37.811348, 29.690975>,  <34.044773, 38.061760, 29.834406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321758, 37.811348, 29.690975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377867, -0.738111, 0.558935,
		-0.614578, -0.251551, -0.747674,
		0.692467, -0.626030, -0.358575,
		34.529499, 37.623539, 29.583403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672607, 37.465969, 29.561569>,  <34.044773, 38.061760, 29.834406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672607, 37.465969, 29.561569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045082, 37.347095, 29.646029>,  <34.268566, 37.275772, 29.696703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045082, 37.347095, 29.646029>,  <33.672607, 37.465969, 29.561569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045082, 37.347095, 29.646029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363306, -0.804349, 0.470138,
		0.030121, -0.514496, -0.856963,
		0.931182, -0.297179, 0.211147,
		34.324436, 37.257942, 29.709373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570927, 36.753155, 29.571136>,  <33.672607, 37.465969, 29.561569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570927, 36.753155, 29.571136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935917, 36.775269, 29.733292>,  <34.154911, 36.788536, 29.830585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935917, 36.775269, 29.733292>,  <33.570927, 36.753155, 29.571136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935917, 36.775269, 29.733292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239888, -0.730352, 0.639562,
		0.331436, -0.680830, -0.653163,
		0.912471, 0.055288, 0.405388,
		34.209660, 36.791855, 29.854908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805462, 36.068134, 29.525476>,  <33.570927, 36.753155, 29.571136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805462, 36.068134, 29.525476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962971, 36.271732, 29.831644>,  <34.057476, 36.393890, 30.015345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962971, 36.271732, 29.831644>,  <33.805462, 36.068134, 29.525476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962971, 36.271732, 29.831644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150426, -0.785788, 0.599924,
		0.906816, -0.351374, -0.232857,
		0.393774, 0.508993, 0.765421,
		34.081104, 36.424431, 30.061270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161495, 35.537006, 29.852594>,  <33.805462, 36.068134, 29.525476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161495, 35.537006, 29.852594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173603, 35.820026, 30.135000>,  <34.180870, 35.989838, 30.304443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173603, 35.820026, 30.135000>,  <34.161495, 35.537006, 29.852594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173603, 35.820026, 30.135000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048591, -0.704461, 0.708077,
		0.998360, -0.055742, 0.013053,
		0.030274, 0.707550, 0.706014,
		34.182686, 36.032291, 30.346804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636520, 35.250088, 30.348969>,  <34.161495, 35.537006, 29.852594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636520, 35.250088, 30.348969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416779, 35.537571, 30.519457>,  <34.284935, 35.710060, 30.621750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416779, 35.537571, 30.519457>,  <34.636520, 35.250088, 30.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416779, 35.537571, 30.519457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007500, -0.505823, 0.862604,
		0.835555, 0.477074, 0.272487,
		-0.549356, 0.718709, 0.426221,
		34.251972, 35.753185, 30.647324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894680, 35.308006, 30.909405>,  <34.636520, 35.250088, 30.348969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894680, 35.308006, 30.909405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542786, 35.476089, 30.998386>,  <34.331650, 35.576939, 31.051775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542786, 35.476089, 30.998386>,  <34.894680, 35.308006, 30.909405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542786, 35.476089, 30.998386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007998, -0.454730, 0.890593,
		0.475391, 0.785268, 0.396683,
		-0.879738, 0.420207, 0.222455,
		34.278866, 35.602150, 31.065123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884911, 35.579250, 31.529854>,  <34.894680, 35.308006, 30.909405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884911, 35.579250, 31.529854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486164, 35.585331, 31.498793>,  <34.246918, 35.588978, 31.480156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486164, 35.585331, 31.498793>,  <34.884911, 35.579250, 31.529854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486164, 35.585331, 31.498793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079063, -0.230521, 0.969850,
		-0.003162, 0.972948, 0.231000,
		-0.996865, 0.015197, -0.077653,
		34.187103, 35.589890, 31.475496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598412, 36.141209, 31.982637>,  <34.884911, 35.579250, 31.529854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598412, 36.141209, 31.982637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332565, 35.847340, 31.928177>,  <34.173058, 35.671017, 31.895500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332565, 35.847340, 31.928177>,  <34.598412, 36.141209, 31.982637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332565, 35.847340, 31.928177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128555, -0.067065, 0.989432,
		-0.736041, 0.675098, -0.049873,
		-0.664618, -0.734674, -0.136150,
		34.133179, 35.626938, 31.887331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968349, 36.322929, 32.341045>,  <34.598412, 36.141209, 31.982637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968349, 36.322929, 32.341045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978939, 35.924053, 32.313023>,  <33.985294, 35.684727, 32.296211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978939, 35.924053, 32.313023>,  <33.968349, 36.322929, 32.341045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978939, 35.924053, 32.313023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069493, -0.071745, 0.994999,
		-0.997231, -0.021474, -0.071197,
		0.026475, -0.997192, -0.070054,
		33.986881, 35.624897, 32.292007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465717, 36.195724, 32.847286>,  <33.968349, 36.322929, 32.341045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465717, 36.195724, 32.847286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663502, 35.859512, 32.758736>,  <33.782173, 35.657784, 32.705605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663502, 35.859512, 32.758736>,  <33.465717, 36.195724, 32.847286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663502, 35.859512, 32.758736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025656, -0.268697, 0.962883,
		-0.868820, -0.470430, -0.154425,
		0.494463, -0.840534, -0.221380,
		33.811840, 35.607353, 32.692322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953350, 35.705391, 33.083542>,  <33.465717, 36.195724, 32.847286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953350, 35.705391, 33.083542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304401, 35.523880, 33.021755>,  <33.515034, 35.414974, 32.984684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304401, 35.523880, 33.021755>,  <32.953350, 35.705391, 33.083542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304401, 35.523880, 33.021755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108306, -0.501632, 0.858274,
		-0.466945, -0.736517, -0.489393,
		0.877629, -0.453771, -0.154465,
		33.567688, 35.387749, 32.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828533, 35.111099, 33.336464>,  <32.953350, 35.705391, 33.083542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828533, 35.111099, 33.336464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227089, 35.142704, 33.348862>,  <33.466225, 35.161667, 33.356300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227089, 35.142704, 33.348862>,  <32.828533, 35.111099, 33.336464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227089, 35.142704, 33.348862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005745, -0.301605, 0.953416,
		0.084677, -0.950154, -0.300063,
		0.996392, 0.079008, 0.030997,
		33.526005, 35.166405, 33.358162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025688, 34.591930, 33.817738>,  <32.828533, 35.111099, 33.336464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025688, 34.591930, 33.817738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362110, 34.805065, 33.780396>,  <33.563961, 34.932945, 33.757992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362110, 34.805065, 33.780396>,  <33.025688, 34.591930, 33.817738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362110, 34.805065, 33.780396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330662, -0.369806, 0.868278,
		0.428127, -0.761136, -0.487215,
		0.841053, 0.532837, -0.093355,
		33.614426, 34.964916, 33.752388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699207, 34.141624, 33.883121>,  <33.025688, 34.591930, 33.817738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699207, 34.141624, 33.883121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 34.514877, 33.985165>,  <33.861343, 34.738831, 34.046391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 34.514877, 33.985165>,  <33.699207, 34.141624, 33.883121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800541, 34.514877, 33.985165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327156, -0.330819, 0.885171,
		0.910379, -0.140784, -0.389089,
		0.253336, 0.933134, 0.255112,
		33.876541, 34.794819, 34.061699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204376, 34.053780, 34.294983>,  <33.699207, 34.141624, 33.883121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204376, 34.053780, 34.294983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127361, 34.441559, 34.355770>,  <34.081154, 34.674229, 34.392242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127361, 34.441559, 34.355770>,  <34.204376, 34.053780, 34.294983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127361, 34.441559, 34.355770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063523, -0.142231, 0.987793,
		0.979232, 0.199838, -0.034198,
		-0.192535, 0.969451, 0.151971,
		34.069599, 34.732395, 34.401360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800594, 34.272724, 34.683701>,  <34.204376, 34.053780, 34.294983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800594, 34.272724, 34.683701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484360, 34.511288, 34.739216>,  <34.294617, 34.654427, 34.772526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484360, 34.511288, 34.739216>,  <34.800594, 34.272724, 34.683701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484360, 34.511288, 34.739216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074440, -0.131361, 0.988536,
		0.607805, 0.791857, 0.059455,
		-0.790589, 0.596411, 0.138788,
		34.247185, 34.690212, 34.780853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971214, 34.830593, 35.057430>,  <34.800594, 34.272724, 34.683701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971214, 34.830593, 35.057430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575626, 34.795586, 35.105225>,  <34.338272, 34.774582, 35.133900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575626, 34.795586, 35.105225>,  <34.971214, 34.830593, 35.057430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575626, 34.795586, 35.105225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124700, -0.056777, 0.990569,
		-0.079913, 0.994543, 0.067065,
		-0.988971, -0.087522, 0.119482,
		34.278934, 34.769329, 35.141068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690865, 34.957878, 35.382305>,  <34.971214, 34.830593, 35.057430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690865, 34.957878, 35.382305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041088, 35.089008, 35.524246>,  <36.251225, 35.167686, 35.609409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041088, 35.089008, 35.524246>,  <35.690865, 34.957878, 35.382305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041088, 35.089008, 35.524246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041053, 0.782354, -0.621479,
		-0.481360, 0.529575, 0.698457,
		0.875561, 0.327829, 0.354854,
		36.303757, 35.187359, 35.630703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632214, 35.647041, 35.384037>,  <35.690865, 34.957878, 35.382305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632214, 35.647041, 35.384037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029297, 35.600990, 35.398331>,  <36.267548, 35.573360, 35.406906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029297, 35.600990, 35.398331>,  <35.632214, 35.647041, 35.384037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029297, 35.600990, 35.398331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115347, 0.821068, -0.559055,
		0.035024, 0.559100, 0.828360,
		0.992708, -0.115130, 0.035733,
		36.327110, 35.566452, 35.409050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882812, 36.339203, 35.500919>,  <35.632214, 35.647041, 35.384037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882812, 36.339203, 35.500919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192612, 36.132542, 35.354923>,  <36.378490, 36.008545, 35.267326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192612, 36.132542, 35.354923>,  <35.882812, 36.339203, 35.500919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192612, 36.132542, 35.354923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204935, 0.750812, -0.627919,
		0.598458, 0.411524, 0.687384,
		0.774500, -0.516652, -0.364994,
		36.424961, 35.977547, 35.245426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405342, 36.827118, 35.491814>,  <35.882812, 36.339203, 35.500919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405342, 36.827118, 35.491814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498905, 36.531086, 35.239601>,  <36.555042, 36.353466, 35.088272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498905, 36.531086, 35.239601>,  <36.405342, 36.827118, 35.491814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498905, 36.531086, 35.239601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299322, 0.671836, -0.677527,
		0.925038, -0.030255, 0.378667,
		0.233904, -0.740082, -0.630530,
		36.569077, 36.309063, 35.050442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027153, 36.990383, 35.183010>,  <36.405342, 36.827118, 35.491814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027153, 36.990383, 35.183010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903862, 36.718254, 34.917030>,  <36.829887, 36.554977, 34.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903862, 36.718254, 34.917030>,  <37.027153, 36.990383, 35.183010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903862, 36.718254, 34.917030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217229, 0.630182, -0.745441,
		0.926178, -0.374215, -0.046457,
		-0.308231, -0.680319, -0.664951,
		36.811394, 36.514160, 34.717545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583328, 37.006573, 34.650524>,  <37.027153, 36.990383, 35.183010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583328, 37.006573, 34.650524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258724, 36.862091, 34.466797>,  <37.063961, 36.775402, 34.356560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258724, 36.862091, 34.466797>,  <37.583328, 37.006573, 34.650524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258724, 36.862091, 34.466797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119260, 0.667131, -0.735332,
		0.572032, -0.651511, -0.498310,
		-0.811515, -0.361205, -0.459320,
		37.015270, 36.753731, 34.329002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788589, 36.864979, 33.951118>,  <37.583328, 37.006573, 34.650524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788589, 36.864979, 33.951118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390320, 36.901264, 33.959198>,  <37.151360, 36.923035, 33.964046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390320, 36.901264, 33.959198>,  <37.788589, 36.864979, 33.951118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390320, 36.901264, 33.959198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036905, 0.585438, -0.809877,
		-0.085291, -0.805627, -0.586252,
		-0.995672, 0.090711, 0.020201,
		37.091618, 36.928478, 33.965260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630798, 36.775208, 33.313053>,  <37.788589, 36.864979, 33.951118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630798, 36.775208, 33.313053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303623, 36.950279, 33.462402>,  <37.107319, 37.055325, 33.552013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303623, 36.950279, 33.462402>,  <37.630798, 36.775208, 33.313053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303623, 36.950279, 33.462402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035367, 0.609526, -0.791977,
		-0.574217, -0.660994, -0.483075,
		-0.817939, 0.437682, 0.373378,
		37.058243, 37.081585, 33.574417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219761, 37.019196, 32.705467>,  <37.630798, 36.775208, 33.313053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219761, 37.019196, 32.705467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025047, 37.220448, 32.991096>,  <36.908218, 37.341198, 33.162476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025047, 37.220448, 32.991096>,  <37.219761, 37.019196, 32.705467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025047, 37.220448, 32.991096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294814, 0.674876, -0.676482,
		-0.822269, -0.539819, -0.180190,
		-0.486784, 0.503128, 0.714076,
		36.879013, 37.371387, 33.205318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472343, 37.188229, 32.413914>,  <37.219761, 37.019196, 32.705467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472343, 37.188229, 32.413914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542648, 37.430882, 32.724037>,  <36.584831, 37.576473, 32.910110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542648, 37.430882, 32.724037>,  <36.472343, 37.188229, 32.413914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542648, 37.430882, 32.724037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321814, 0.779709, -0.537112,
		-0.930345, -0.155100, 0.332268,
		0.175766, 0.606628, 0.775312,
		36.595379, 37.612869, 32.956631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917290, 37.676132, 32.408783>,  <36.472343, 37.188229, 32.413914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917290, 37.676132, 32.408783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227909, 37.845631, 32.595295>,  <36.414280, 37.947330, 32.707203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227909, 37.845631, 32.595295>,  <35.917290, 37.676132, 32.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227909, 37.845631, 32.595295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130637, 0.832256, -0.538779,
		-0.616369, 0.357474, 0.701642,
		0.776545, 0.423747, 0.466278,
		36.460873, 37.972755, 32.735180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790428, 38.417126, 32.425468>,  <35.917290, 37.676132, 32.408783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790428, 38.417126, 32.425468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186806, 38.408993, 32.478558>,  <36.424633, 38.404114, 32.510410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186806, 38.408993, 32.478558>,  <35.790428, 38.417126, 32.425468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186806, 38.408993, 32.478558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072732, 0.912179, -0.403285,
		-0.112863, 0.409286, 0.905399,
		0.990945, -0.020336, 0.132719,
		36.484089, 38.402893, 32.518372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026249, 39.052757, 32.676418>,  <35.790428, 38.417126, 32.425468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026249, 39.052757, 32.676418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346561, 38.892620, 32.498215>,  <36.538750, 38.796535, 32.391293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346561, 38.892620, 32.498215>,  <36.026249, 39.052757, 32.676418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346561, 38.892620, 32.498215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083839, 0.811398, -0.578450,
		0.593063, 0.425860, 0.683315,
		0.800779, -0.400346, -0.445506,
		36.586796, 38.772518, 32.364563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491005, 39.660858, 32.613186>,  <36.026249, 39.052757, 32.676418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491005, 39.660858, 32.613186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623035, 39.388393, 32.351788>,  <36.702255, 39.224915, 32.194946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623035, 39.388393, 32.351788>,  <36.491005, 39.660858, 32.613186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623035, 39.388393, 32.351788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116156, 0.716348, -0.688007,
		0.936779, 0.151190, 0.315574,
		0.330081, -0.681166, -0.653498,
		36.722061, 39.184044, 32.155739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189690, 39.925560, 32.334438>,  <36.491005, 39.660858, 32.613186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189690, 39.925560, 32.334438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027706, 39.661407, 32.081482>,  <36.930515, 39.502918, 31.929708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027706, 39.661407, 32.081482>,  <37.189690, 39.925560, 32.334438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027706, 39.661407, 32.081482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041742, 0.704267, -0.708708,
		0.913384, -0.260597, -0.312761,
		-0.404953, -0.660377, -0.632388,
		36.906219, 39.463295, 31.891766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502232, 40.048325, 31.656822>,  <37.189690, 39.925560, 32.334438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502232, 40.048325, 31.656822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194134, 39.816570, 31.550219>,  <37.009274, 39.677517, 31.486256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194134, 39.816570, 31.550219>,  <37.502232, 40.048325, 31.656822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194134, 39.816570, 31.550219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150198, 0.570946, -0.807132,
		0.619809, -0.581660, -0.526791,
		-0.770245, -0.579390, -0.266513,
		36.963058, 39.642754, 31.470264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607471, 40.004978, 30.941315>,  <37.502232, 40.048325, 31.656822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607471, 40.004978, 30.941315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234280, 39.864758, 30.973951>,  <37.010365, 39.780624, 30.993532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234280, 39.864758, 30.973951>,  <37.607471, 40.004978, 30.941315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234280, 39.864758, 30.973951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169163, 0.226997, -0.959091,
		0.317694, -0.908616, -0.271085,
		-0.932981, -0.350556, 0.081589,
		36.954384, 39.759590, 30.998428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501083, 39.726776, 30.282532>,  <37.607471, 40.004978, 30.941315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501083, 39.726776, 30.282532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136074, 39.782715, 30.436283>,  <36.917068, 39.816277, 30.528534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136074, 39.782715, 30.436283>,  <37.501083, 39.726776, 30.282532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136074, 39.782715, 30.436283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343191, 0.249508, -0.905520,
		-0.222537, -0.958222, -0.179689,
		-0.912522, 0.139844, 0.384378,
		36.862316, 39.824669, 30.551596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934139, 39.479893, 29.822933>,  <37.501083, 39.726776, 30.282532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934139, 39.479893, 29.822933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738594, 39.740646, 30.054817>,  <36.621269, 39.897099, 30.193947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738594, 39.740646, 30.054817>,  <36.934139, 39.479893, 29.822933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738594, 39.740646, 30.054817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423594, 0.403548, -0.810998,
		-0.762617, -0.642025, 0.078856,
		-0.488859, 0.651884, 0.579711,
		36.591938, 39.936211, 30.228731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293709, 39.355843, 29.578300>,  <36.934139, 39.479893, 29.822933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293709, 39.355843, 29.578300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300419, 39.700859, 29.780584>,  <36.304443, 39.907867, 29.901955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300419, 39.700859, 29.780584>,  <36.293709, 39.355843, 29.578300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300419, 39.700859, 29.780584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367327, 0.475727, -0.799222,
		-0.929941, -0.172356, 0.324813,
		0.016772, 0.862541, 0.505709,
		36.305450, 39.959621, 29.932297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706928, 39.735313, 29.355383>,  <36.293709, 39.355843, 29.578300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706928, 39.735313, 29.355383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005779, 39.976444, 29.467386>,  <36.185089, 40.121120, 29.534588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005779, 39.976444, 29.467386>,  <35.706928, 39.735313, 29.355383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005779, 39.976444, 29.467386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139623, 0.554204, -0.820587,
		-0.649851, 0.573987, 0.498229,
		0.747127, 0.602824, 0.280008,
		36.229916, 40.157291, 29.551388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494087, 40.423908, 29.163830>,  <35.706928, 39.735313, 29.355383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494087, 40.423908, 29.163830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892338, 40.442242, 29.196386>,  <36.131287, 40.453243, 29.215919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892338, 40.442242, 29.196386>,  <35.494087, 40.423908, 29.163830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892338, 40.442242, 29.196386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050204, 0.472198, -0.880062,
		-0.078770, 0.880300, 0.467833,
		0.995628, 0.045835, 0.081390,
		36.191025, 40.455994, 29.220804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624657, 41.137245, 28.880362>,  <35.494087, 40.423908, 29.163830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624657, 41.137245, 28.880362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968346, 40.938236, 28.832682>,  <36.174561, 40.818829, 28.804073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968346, 40.938236, 28.832682>,  <35.624657, 41.137245, 28.880362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968346, 40.938236, 28.832682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053505, 0.319098, -0.946210,
		0.508798, 0.806626, 0.300796,
		0.859221, -0.497524, -0.119198,
		36.226112, 40.788979, 28.796923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053204, 41.545509, 28.493975>,  <35.624657, 41.137245, 28.880362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053204, 41.545509, 28.493975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250313, 41.198231, 28.470619>,  <36.368580, 40.989864, 28.456606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250313, 41.198231, 28.470619>,  <36.053204, 41.545509, 28.493975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250313, 41.198231, 28.470619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148719, 0.150143, -0.977415,
		0.857352, 0.472965, 0.203104,
		0.492777, -0.868194, -0.058387,
		36.398148, 40.937771, 28.453104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477844, 41.671436, 28.002047>,  <36.053204, 41.545509, 28.493975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477844, 41.671436, 28.002047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480114, 41.271744, 28.017544>,  <36.481476, 41.031929, 28.026842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480114, 41.271744, 28.017544>,  <36.477844, 41.671436, 28.002047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480114, 41.271744, 28.017544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234593, -0.036331, -0.971415,
		0.972077, 0.014600, 0.234207,
		0.005673, -0.999233, 0.038741,
		36.481815, 40.971973, 28.029165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065598, 41.331913, 27.722235>,  <36.477844, 41.671436, 28.002047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065598, 41.331913, 27.722235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767529, 41.067440, 27.687471>,  <36.588688, 40.908756, 27.666613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767529, 41.067440, 27.687471>,  <37.065598, 41.331913, 27.722235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767529, 41.067440, 27.687471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226341, -0.128172, -0.965578,
		0.627285, -0.739194, 0.245163,
		-0.745173, -0.661184, -0.086909,
		36.543976, 40.869083, 27.661398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364552, 40.725590, 27.351492>,  <37.065598, 41.331913, 27.722235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364552, 40.725590, 27.351492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967724, 40.721256, 27.301416>,  <36.729626, 40.718655, 27.271372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967724, 40.721256, 27.301416>,  <37.364552, 40.725590, 27.351492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967724, 40.721256, 27.301416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122880, 0.124565, -0.984573,
		0.026259, -0.992152, -0.122246,
		-0.992074, -0.010832, -0.125187,
		36.670101, 40.718006, 27.263861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211033, 40.195557, 26.905457>,  <37.364552, 40.725590, 27.351492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211033, 40.195557, 26.905457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884495, 40.425289, 26.881071>,  <36.688572, 40.563129, 26.866440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884495, 40.425289, 26.881071>,  <37.211033, 40.195557, 26.905457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884495, 40.425289, 26.881071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147120, 0.104709, -0.983561,
		-0.558510, -0.811896, -0.169975,
		-0.816347, 0.574335, -0.060965,
		36.639591, 40.597591, 26.862782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908169, 39.900913, 26.302357>,  <37.211033, 40.195557, 26.905457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908169, 39.900913, 26.302357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765949, 40.269203, 26.366680>,  <36.680618, 40.490177, 26.405273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765949, 40.269203, 26.366680>,  <36.908169, 39.900913, 26.302357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765949, 40.269203, 26.366680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096732, 0.207373, -0.973468,
		-0.929638, -0.330561, -0.162795,
		-0.355549, 0.920720, 0.160807,
		36.659283, 40.545418, 26.414923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362610, 39.991787, 25.916098>,  <36.908169, 39.900913, 26.302357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362610, 39.991787, 25.916098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460835, 40.373825, 25.982418>,  <36.519768, 40.603050, 26.022209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460835, 40.373825, 25.982418>,  <36.362610, 39.991787, 25.916098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460835, 40.373825, 25.982418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154506, 0.207411, -0.965976,
		-0.956990, 0.211586, 0.198500,
		0.245558, 0.955098, 0.165799,
		36.534500, 40.660355, 26.032158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913979, 40.395893, 25.493694>,  <36.362610, 39.991787, 25.916098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913979, 40.395893, 25.493694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225300, 40.636951, 25.564199>,  <36.412094, 40.781586, 25.606503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225300, 40.636951, 25.564199>,  <35.913979, 40.395893, 25.493694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225300, 40.636951, 25.564199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029395, 0.315385, -0.948509,
		-0.627201, 0.733046, 0.263179,
		0.778303, 0.602641, 0.176262,
		36.458790, 40.817745, 25.617079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793213, 40.907413, 24.998396>,  <35.913979, 40.395893, 25.493694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793213, 40.907413, 24.998396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171066, 40.991657, 25.099039>,  <36.397778, 41.042202, 25.159426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171066, 40.991657, 25.099039>,  <35.793213, 40.907413, 24.998396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171066, 40.991657, 25.099039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183772, 0.295676, -0.937445,
		-0.271829, 0.931783, 0.240602,
		0.944636, 0.210609, 0.251609,
		36.454456, 41.054840, 25.174522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895893, 41.651253, 24.795153>,  <35.793213, 40.907413, 24.998396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895893, 41.651253, 24.795153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248413, 41.465908, 24.832258>,  <36.459927, 41.354702, 24.854521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248413, 41.465908, 24.832258>,  <35.895893, 41.651253, 24.795153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248413, 41.465908, 24.832258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300066, 0.397079, -0.867346,
		0.365061, 0.792227, 0.488985,
		0.881301, -0.463362, 0.092762,
		36.512802, 41.326900, 24.860086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391308, 42.132595, 24.536108>,  <35.895893, 41.651253, 24.795153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391308, 42.132595, 24.536108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603374, 41.793461, 24.532059>,  <36.730614, 41.589981, 24.529629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603374, 41.793461, 24.532059>,  <36.391308, 42.132595, 24.536108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603374, 41.793461, 24.532059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417302, 0.271302, -0.867326,
		0.738093, 0.455604, 0.497638,
		0.530168, -0.847832, -0.010122,
		36.762424, 41.539112, 24.529022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957901, 42.396358, 24.282398>,  <36.391308, 42.132595, 24.536108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957901, 42.396358, 24.282398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977009, 42.002930, 24.212774>,  <36.988476, 41.766872, 24.171000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977009, 42.002930, 24.212774>,  <36.957901, 42.396358, 24.282398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977009, 42.002930, 24.212774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407492, 0.178288, -0.895636,
		0.911958, -0.028142, 0.409317,
		0.047772, -0.983576, -0.174059,
		36.991341, 41.707855, 24.160557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521038, 42.284241, 23.910587>,  <36.957901, 42.396358, 24.282398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521038, 42.284241, 23.910587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324654, 41.941544, 23.847414>,  <37.206821, 41.735924, 23.809509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324654, 41.941544, 23.847414>,  <37.521038, 42.284241, 23.910587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324654, 41.941544, 23.847414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342942, -0.023416, -0.939065,
		0.800841, -0.515208, 0.305310,
		-0.490963, -0.856745, -0.157933,
		37.177364, 41.684521, 23.800034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138607, 41.800583, 23.626406>,  <37.521038, 42.284241, 23.910587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138607, 41.800583, 23.626406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764797, 41.701019, 23.524660>,  <37.540512, 41.641281, 23.463614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764797, 41.701019, 23.524660>,  <38.138607, 41.800583, 23.626406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764797, 41.701019, 23.524660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248570, 0.054984, -0.967052,
		0.254695, -0.966965, 0.010488,
		-0.934528, -0.248910, -0.254363,
		37.484440, 41.626347, 23.448351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040600, 41.081516, 23.311062>,  <38.138607, 41.800583, 23.626406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040600, 41.081516, 23.311062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772724, 41.356678, 23.199133>,  <37.612000, 41.521774, 23.131975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772724, 41.356678, 23.199133>,  <38.040600, 41.081516, 23.311062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772724, 41.356678, 23.199133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276608, -0.118633, -0.953632,
		-0.689208, -0.716036, -0.110835,
		-0.669686, 0.687908, -0.279824,
		37.571819, 41.563049, 23.115185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115520, 41.007175, 22.508873>,  <38.040600, 41.081516, 23.311062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115520, 41.007175, 22.508873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499599, 40.961761, 22.406788>,  <38.730045, 40.934513, 22.345537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499599, 40.961761, 22.406788>,  <38.115520, 41.007175, 22.508873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499599, 40.961761, 22.406788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198915, -0.363519, 0.910102,
		-0.196105, -0.924642, -0.326465,
		0.960196, -0.113537, -0.255214,
		38.787659, 40.927700, 22.330223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402485, 40.381348, 22.954418>,  <38.115520, 41.007175, 22.508873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402485, 40.381348, 22.954418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722424, 40.592152, 22.839518>,  <38.914387, 40.718636, 22.770578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722424, 40.592152, 22.839518>,  <38.402485, 40.381348, 22.954418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722424, 40.592152, 22.839518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443476, -0.196411, 0.874501,
		0.404451, -0.826851, -0.390814,
		0.799843, 0.527009, -0.287250,
		38.962376, 40.750256, 22.753342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911236, 39.833073, 23.055168>,  <38.402485, 40.381348, 22.954418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911236, 39.833073, 23.055168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054874, 40.205307, 23.083630>,  <39.141060, 40.428646, 23.100706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054874, 40.205307, 23.083630>,  <38.911236, 39.833073, 23.055168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054874, 40.205307, 23.083630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447374, -0.238539, 0.861948,
		0.819087, -0.277693, -0.501978,
		0.359099, 0.930583, 0.071151,
		39.162605, 40.484482, 23.104975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628506, 39.707470, 23.264114>,  <38.911236, 39.833073, 23.055168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628506, 39.707470, 23.264114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538971, 40.084438, 23.363503>,  <39.485249, 40.310619, 23.423136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538971, 40.084438, 23.363503>,  <39.628506, 39.707470, 23.264114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538971, 40.084438, 23.363503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390789, -0.146762, 0.908705,
		0.892849, 0.300504, -0.335437,
		-0.223840, 0.942422, 0.248470,
		39.471821, 40.367165, 23.438044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253662, 39.915024, 23.610620>,  <39.628506, 39.707470, 23.264114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253662, 39.915024, 23.610620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987144, 40.198460, 23.703531>,  <39.827236, 40.368523, 23.759277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987144, 40.198460, 23.703531>,  <40.253662, 39.915024, 23.610620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987144, 40.198460, 23.703531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424147, 0.103931, 0.899609,
		0.613317, 0.697920, -0.369797,
		-0.666289, 0.708594, 0.232278,
		39.787258, 40.411037, 23.773214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605640, 40.346527, 24.106970>,  <40.253662, 39.915024, 23.610620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605640, 40.346527, 24.106970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219528, 40.434067, 24.164013>,  <39.987862, 40.486591, 24.198238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219528, 40.434067, 24.164013>,  <40.605640, 40.346527, 24.106970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219528, 40.434067, 24.164013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170175, 0.112687, 0.978949,
		0.198169, 0.969231, -0.146016,
		-0.965282, 0.218845, 0.142608,
		39.929943, 40.499722, 24.206795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527763, 41.066204, 24.614258>,  <40.605640, 40.346527, 24.106970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527763, 41.066204, 24.614258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192310, 40.848335, 24.616343>,  <39.991039, 40.717613, 24.617594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192310, 40.848335, 24.616343>,  <40.527763, 41.066204, 24.614258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192310, 40.848335, 24.616343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096637, 0.158192, 0.982668,
		-0.536057, 0.823594, -0.185300,
		-0.838632, -0.544674, 0.005210,
		39.940720, 40.684933, 24.617905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111351, 41.368435, 25.046789>,  <40.527763, 41.066204, 24.614258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111351, 41.368435, 25.046789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963352, 40.996826, 25.049015>,  <39.874554, 40.773861, 25.050350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963352, 40.996826, 25.049015>,  <40.111351, 41.368435, 25.046789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963352, 40.996826, 25.049015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012249, 0.010869, 0.999866,
		-0.928953, 0.369877, -0.015401,
		-0.369995, -0.929017, 0.005566,
		39.852352, 40.718121, 25.050684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487686, 41.390461, 25.476120>,  <40.111351, 41.368435, 25.046789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487686, 41.390461, 25.476120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597065, 41.008060, 25.433626>,  <39.662693, 40.778618, 25.408131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597065, 41.008060, 25.433626>,  <39.487686, 41.390461, 25.476120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597065, 41.008060, 25.433626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083604, -0.133648, 0.987496,
		-0.958248, -0.261142, -0.116471,
		0.273443, -0.956004, -0.106235,
		39.679096, 40.721260, 25.401756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097881, 41.031391, 26.002031>,  <39.487686, 41.390461, 25.476120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097881, 41.031391, 26.002031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324867, 40.716373, 25.905901>,  <39.461060, 40.527363, 25.848223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324867, 40.716373, 25.905901>,  <39.097881, 41.031391, 26.002031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324867, 40.716373, 25.905901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092648, -0.351089, 0.931747,
		-0.818169, -0.506468, -0.272195,
		0.567465, -0.787545, -0.240326,
		39.495106, 40.480110, 25.833803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772854, 40.386017, 26.218079>,  <39.097881, 41.031391, 26.002031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772854, 40.386017, 26.218079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161060, 40.291084, 26.201271>,  <39.393986, 40.234127, 26.191187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161060, 40.291084, 26.201271>,  <38.772854, 40.386017, 26.218079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161060, 40.291084, 26.201271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083805, -0.495760, 0.864407,
		-0.225979, -0.835403, -0.501034,
		0.970520, -0.237327, -0.042020,
		39.452217, 40.219887, 26.188665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747860, 39.702847, 26.328289>,  <38.772854, 40.386017, 26.218079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747860, 39.702847, 26.328289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116669, 39.832592, 26.412819>,  <39.337955, 39.910439, 26.463537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116669, 39.832592, 26.412819>,  <38.747860, 39.702847, 26.328289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116669, 39.832592, 26.412819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063614, -0.411512, 0.909182,
		0.381864, -0.851733, -0.358791,
		0.922026, 0.324360, 0.211324,
		39.393276, 39.929901, 26.476215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098190, 39.084747, 26.462629>,  <38.747860, 39.702847, 26.328289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098190, 39.084747, 26.462629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283112, 39.404636, 26.615841>,  <39.394066, 39.596569, 26.707767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283112, 39.404636, 26.615841>,  <39.098190, 39.084747, 26.462629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283112, 39.404636, 26.615841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159670, -0.499980, 0.851191,
		0.872226, -0.332353, -0.358836,
		0.462306, 0.799726, 0.383029,
		39.421803, 39.644554, 26.730749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560020, 38.825089, 26.804306>,  <39.098190, 39.084747, 26.462629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560020, 38.825089, 26.804306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538189, 39.193684, 26.958122>,  <39.525089, 39.414841, 27.050413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538189, 39.193684, 26.958122>,  <39.560020, 38.825089, 26.804306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538189, 39.193684, 26.958122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103955, -0.377779, 0.920042,
		0.993083, 0.090190, -0.075175,
		-0.054579, 0.921493, 0.384542,
		39.521816, 39.470131, 27.073484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001671, 38.901955, 27.344490>,  <39.560020, 38.825089, 26.804306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001671, 38.901955, 27.344490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760773, 39.200787, 27.457031>,  <39.616234, 39.380085, 27.524557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760773, 39.200787, 27.457031>,  <40.001671, 38.901955, 27.344490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760773, 39.200787, 27.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046030, -0.319355, 0.946517,
		0.796979, 0.582990, 0.157943,
		-0.602250, 0.747084, 0.281354,
		39.580097, 39.424911, 27.541437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326084, 39.099117, 27.967833>,  <40.001671, 38.901955, 27.344490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326084, 39.099117, 27.967833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952728, 39.241947, 27.982121>,  <39.728714, 39.327644, 27.990694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952728, 39.241947, 27.982121>,  <40.326084, 39.099117, 27.967833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952728, 39.241947, 27.982121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030621, -0.178430, 0.983476,
		0.357546, 0.916876, 0.177480,
		-0.933393, 0.357072, 0.035721,
		39.672710, 39.349068, 27.992838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322487, 39.502430, 28.618698>,  <40.326084, 39.099117, 27.967833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322487, 39.502430, 28.618698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932262, 39.467449, 28.538067>,  <39.698128, 39.446461, 28.489689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932262, 39.467449, 28.538067>,  <40.322487, 39.502430, 28.618698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932262, 39.467449, 28.538067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192696, -0.100340, 0.976115,
		-0.105592, 0.991102, 0.081036,
		-0.975561, -0.087455, -0.201576,
		39.639595, 39.441212, 28.477594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960960, 39.982250, 29.093016>,  <40.322487, 39.502430, 28.618698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960960, 39.982250, 29.093016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700268, 39.704544, 28.970875>,  <39.543850, 39.537922, 28.897591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700268, 39.704544, 28.970875>,  <39.960960, 39.982250, 29.093016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700268, 39.704544, 28.970875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338970, -0.093526, 0.936137,
		-0.678483, 0.713619, -0.174380,
		-0.651736, -0.694263, -0.305351,
		39.504745, 39.496265, 28.879269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330105, 40.184299, 29.373264>,  <39.960960, 39.982250, 29.093016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330105, 40.184299, 29.373264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307213, 39.795341, 29.282776>,  <39.293480, 39.561966, 29.228483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307213, 39.795341, 29.282776>,  <39.330105, 40.184299, 29.373264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307213, 39.795341, 29.282776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304402, -0.198810, 0.931566,
		-0.950823, 0.122172, -0.284621,
		-0.057226, -0.972393, -0.226222,
		39.290047, 39.503624, 29.214909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713154, 39.984016, 29.604729>,  <39.330105, 40.184299, 29.373264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713154, 39.984016, 29.604729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953224, 39.664463, 29.588850>,  <39.097267, 39.472733, 29.579323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953224, 39.664463, 29.588850>,  <38.713154, 39.984016, 29.604729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953224, 39.664463, 29.588850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196890, -0.195652, 0.960705,
		-0.775258, -0.568776, -0.274717,
		0.600175, -0.798883, -0.039695,
		39.133278, 39.424797, 29.576942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257778, 39.410358, 29.821291>,  <38.713154, 39.984016, 29.604729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257778, 39.410358, 29.821291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637306, 39.292114, 29.865746>,  <38.865025, 39.221169, 29.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637306, 39.292114, 29.865746>,  <38.257778, 39.410358, 29.821291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637306, 39.292114, 29.865746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200283, -0.291159, 0.935475,
		-0.244168, -0.909861, -0.335462,
		0.948825, -0.295600, 0.111138,
		38.921955, 39.203434, 29.899086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213062, 38.840801, 30.167416>,  <38.257778, 39.410358, 29.821291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213062, 38.840801, 30.167416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602409, 38.909290, 30.228386>,  <38.836018, 38.950386, 30.264967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602409, 38.909290, 30.228386>,  <38.213062, 38.840801, 30.167416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602409, 38.909290, 30.228386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096059, -0.299068, 0.949385,
		0.208146, -0.938744, -0.274656,
		0.973370, 0.171227, 0.152424,
		38.894421, 38.960659, 30.274113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472706, 38.245178, 30.453753>,  <38.213062, 38.840801, 30.167416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472706, 38.245178, 30.453753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 38.523827, 30.545900>,  <38.907551, 38.691017, 30.601189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 38.523827, 30.545900>,  <38.472706, 38.245178, 30.453753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744484, 38.523827, 30.545900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145878, -0.435962, 0.888064,
		0.719077, -0.569786, -0.397835,
		0.679447, 0.696621, 0.230371,
		38.948318, 38.732815, 30.615011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130371, 37.938465, 30.667189>,  <38.472706, 38.245178, 30.453753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130371, 37.938465, 30.667189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146912, 38.300255, 30.837000>,  <39.156834, 38.517326, 30.938887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146912, 38.300255, 30.837000>,  <39.130371, 37.938465, 30.667189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146912, 38.300255, 30.837000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368084, -0.408797, 0.835105,
		0.928873, 0.121731, -0.349824,
		0.041348, 0.904470, 0.424527,
		39.159317, 38.571594, 30.964357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759178, 37.893738, 31.079348>,  <39.130371, 37.938465, 30.667189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759178, 37.893738, 31.079348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508667, 38.166492, 31.230505>,  <39.358360, 38.330147, 31.321199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508667, 38.166492, 31.230505>,  <39.759178, 37.893738, 31.079348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508667, 38.166492, 31.230505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190087, -0.336531, 0.922287,
		0.756070, 0.649441, 0.081144,
		-0.626279, 0.681889, 0.377891,
		39.320782, 38.371059, 31.343872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187817, 38.186974, 31.587257>,  <39.759178, 37.893738, 31.079348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187817, 38.186974, 31.587257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815701, 38.308807, 31.669027>,  <39.592430, 38.381908, 31.718088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815701, 38.308807, 31.669027>,  <40.187817, 38.186974, 31.587257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815701, 38.308807, 31.669027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177982, -0.112497, 0.977582,
		0.320757, 0.945817, 0.050444,
		-0.930289, 0.304588, 0.204423,
		39.536613, 38.400185, 31.730354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318539, 38.643623, 32.115345>,  <40.187817, 38.186974, 31.587257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318539, 38.643623, 32.115345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951130, 38.485619, 32.122108>,  <39.730686, 38.390816, 32.126167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951130, 38.485619, 32.122108>,  <40.318539, 38.643623, 32.115345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951130, 38.485619, 32.122108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082505, -0.149674, 0.985287,
		-0.386672, 0.906400, 0.170069,
		-0.918519, -0.395014, 0.016907,
		39.675575, 38.367115, 32.127182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074848, 38.943356, 32.744572>,  <40.318539, 38.643623, 32.115345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074848, 38.943356, 32.744572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850780, 38.622093, 32.663433>,  <39.716339, 38.429337, 32.614750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850780, 38.622093, 32.663433>,  <40.074848, 38.943356, 32.744572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850780, 38.622093, 32.663433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130366, -0.327295, 0.935886,
		-0.818059, 0.497806, 0.288044,
		-0.560165, -0.803161, -0.202850,
		39.682732, 38.381145, 32.602577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619331, 38.930477, 33.293190>,  <40.074848, 38.943356, 32.744572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619331, 38.930477, 33.293190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619305, 38.560730, 33.140591>,  <39.619289, 38.338882, 33.049030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619305, 38.560730, 33.140591>,  <39.619331, 38.930477, 33.293190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619305, 38.560730, 33.140591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075316, -0.380411, 0.921745,
		-0.997160, 0.028793, -0.069595,
		-0.000065, -0.924369, -0.381499,
		39.619286, 38.283421, 33.026142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201645, 38.483269, 33.768307>,  <39.619331, 38.930477, 33.293190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201645, 38.483269, 33.768307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427647, 38.225868, 33.561745>,  <39.563248, 38.071426, 33.437805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427647, 38.225868, 33.561745>,  <39.201645, 38.483269, 33.768307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427647, 38.225868, 33.561745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124137, -0.552459, 0.824244,
		-0.815696, -0.529807, -0.232259,
		0.565004, -0.643501, -0.516407,
		39.597149, 38.032818, 33.406822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995201, 37.799702, 33.981915>,  <39.201645, 38.483269, 33.768307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995201, 37.799702, 33.981915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342262, 37.740524, 33.792053>,  <39.550499, 37.705017, 33.678139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342262, 37.740524, 33.792053>,  <38.995201, 37.799702, 33.981915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342262, 37.740524, 33.792053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207207, -0.760230, 0.615724,
		-0.451933, -0.632585, -0.628962,
		0.867653, -0.147941, -0.474649,
		39.602558, 37.696140, 33.649658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093956, 36.987045, 33.930313>,  <38.995201, 37.799702, 33.981915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093956, 36.987045, 33.930313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457645, 37.149849, 33.895317>,  <39.675861, 37.247532, 33.874321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457645, 37.149849, 33.895317>,  <39.093956, 36.987045, 33.930313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457645, 37.149849, 33.895317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367899, -0.687212, 0.626410,
		0.194831, -0.601735, -0.774569,
		0.909226, 0.407007, -0.087487,
		39.730412, 37.271950, 33.869072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552334, 36.463371, 33.751633>,  <39.093956, 36.987045, 33.930313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552334, 36.463371, 33.751633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780907, 36.762436, 33.886967>,  <39.918049, 36.941875, 33.968166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780907, 36.762436, 33.886967>,  <39.552334, 36.463371, 33.751633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780907, 36.762436, 33.886967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558280, -0.656340, 0.507485,
		0.601492, -0.101104, -0.792455,
		0.571429, 0.747660, 0.338339,
		39.952335, 36.986732, 33.988468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262909, 36.070553, 33.807739>,  <39.552334, 36.463371, 33.751633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262909, 36.070553, 33.807739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271519, 36.416759, 34.007908>,  <40.276684, 36.624481, 34.128010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271519, 36.416759, 34.007908>,  <40.262909, 36.070553, 33.807739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271519, 36.416759, 34.007908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591480, -0.414567, 0.691582,
		0.806033, 0.281107, -0.520855,
		0.021521, 0.865513, 0.500424,
		40.277973, 36.676414, 34.158035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981216, 36.314320, 33.909092>,  <40.262909, 36.070553, 33.807739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981216, 36.314320, 33.909092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754181, 36.478222, 34.194733>,  <40.617958, 36.576565, 34.366116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754181, 36.478222, 34.194733>,  <40.981216, 36.314320, 33.909092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754181, 36.478222, 34.194733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595096, -0.395200, 0.699770,
		0.568947, 0.822142, -0.019532,
		-0.567591, 0.409756, 0.714101,
		40.583904, 36.601147, 34.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427032, 36.304230, 34.463409>,  <40.981216, 36.314320, 33.909092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427032, 36.304230, 34.463409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076317, 36.402458, 34.628788>,  <40.865887, 36.461395, 34.728016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076317, 36.402458, 34.628788>,  <41.427032, 36.304230, 34.463409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076317, 36.402458, 34.628788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312625, -0.362190, 0.878114,
		0.365386, 0.899173, 0.240792,
		-0.876789, 0.245573, 0.413443,
		40.813282, 36.476131, 34.752819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554672, 36.852276, 34.998238>,  <41.427032, 36.304230, 34.463409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554672, 36.852276, 34.998238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220642, 36.647896, 35.079796>,  <41.020222, 36.525269, 35.128731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220642, 36.647896, 35.079796>,  <41.554672, 36.852276, 34.998238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220642, 36.647896, 35.079796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348771, -0.205083, 0.914494,
		-0.425443, 0.834789, 0.349464,
		-0.835079, -0.510948, 0.203899,
		40.970119, 36.494610, 35.140965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392170, 36.957436, 35.670536>,  <41.554672, 36.852276, 34.998238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392170, 36.957436, 35.670536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177563, 36.624283, 35.616196>,  <41.048798, 36.424389, 35.583591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177563, 36.624283, 35.616196>,  <41.392170, 36.957436, 35.670536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177563, 36.624283, 35.616196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299748, -0.338566, 0.891922,
		-0.788861, 0.437811, 0.431301,
		-0.536517, -0.832884, -0.135848,
		41.016609, 36.374416, 35.575439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961628, 37.020500, 36.251537>,  <41.392170, 36.957436, 35.670536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961628, 37.020500, 36.251537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943047, 36.644238, 36.117077>,  <40.931900, 36.418480, 36.036400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943047, 36.644238, 36.117077>,  <40.961628, 37.020500, 36.251537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943047, 36.644238, 36.117077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055891, -0.338436, 0.939328,
		-0.997356, 0.024845, 0.068296,
		-0.046451, -0.940661, -0.336153,
		40.929111, 36.362038, 36.016232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448448, 36.694942, 36.578415>,  <40.961628, 37.020500, 36.251537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448448, 36.694942, 36.578415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688007, 36.399586, 36.454414>,  <40.831741, 36.222370, 36.380016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688007, 36.399586, 36.454414>,  <40.448448, 36.694942, 36.578415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688007, 36.399586, 36.454414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102242, -0.454432, 0.884894,
		-0.794272, -0.498267, -0.347653,
		0.598898, -0.738391, -0.309998,
		40.867676, 36.178070, 36.361416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062439, 36.034386, 36.597595>,  <40.448448, 36.694942, 36.578415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062439, 36.034386, 36.597595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446358, 35.922131, 36.595375>,  <40.676708, 35.854778, 36.594044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446358, 35.922131, 36.595375>,  <40.062439, 36.034386, 36.597595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446358, 35.922131, 36.595375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165212, -0.580787, 0.797115,
		-0.226922, -0.764153, -0.603803,
		0.959797, -0.280639, -0.005546,
		40.734299, 35.837940, 36.593712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939861, 35.452267, 36.892673>,  <40.062439, 36.034386, 36.597595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939861, 35.452267, 36.892673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337654, 35.492184, 36.905643>,  <40.576328, 35.516132, 36.913425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337654, 35.492184, 36.905643>,  <39.939861, 35.452267, 36.892673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337654, 35.492184, 36.905643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017408, -0.461690, 0.886871,
		0.103474, -0.881410, -0.460879,
		0.994480, 0.099791, 0.032430,
		40.635998, 35.522121, 36.915371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168953, 34.799679, 37.259872>,  <39.939861, 35.452267, 36.892673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168953, 34.799679, 37.259872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484257, 35.039867, 37.313644>,  <40.673439, 35.183983, 37.345909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484257, 35.039867, 37.313644>,  <40.168953, 34.799679, 37.259872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484257, 35.039867, 37.313644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120167, -0.364479, 0.923425,
		0.603493, -0.711747, -0.359463,
		0.788262, 0.600476, 0.134432,
		40.720734, 35.220009, 37.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778591, 34.448158, 37.562462>,  <40.168953, 34.799679, 37.259872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778591, 34.448158, 37.562462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889526, 34.827179, 37.625996>,  <40.956089, 35.054592, 37.664116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889526, 34.827179, 37.625996>,  <40.778591, 34.448158, 37.562462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889526, 34.827179, 37.625996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359389, -0.255628, 0.897493,
		0.891024, -0.191827, -0.411435,
		0.277338, 0.947553, 0.158831,
		40.972729, 35.111446, 37.673645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496052, 34.367348, 37.853271>,  <40.778591, 34.448158, 37.562462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496052, 34.367348, 37.853271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361965, 34.732082, 37.948078>,  <41.281513, 34.950924, 38.004963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361965, 34.732082, 37.948078>,  <41.496052, 34.367348, 37.853271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361965, 34.732082, 37.948078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440369, -0.070756, 0.895024,
		0.832889, 0.404405, -0.377827,
		-0.335219, 0.911839, 0.237019,
		41.261398, 35.005634, 38.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013607, 34.670223, 38.363396>,  <41.496052, 34.367348, 37.853271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013607, 34.670223, 38.363396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721817, 34.927834, 38.455566>,  <41.546741, 35.082401, 38.510868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721817, 34.927834, 38.455566>,  <42.013607, 34.670223, 38.363396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721817, 34.927834, 38.455566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263473, -0.046324, 0.963554,
		0.631228, 0.763600, -0.135891,
		-0.729474, 0.644026, 0.230428,
		41.502975, 35.121040, 38.524696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302464, 35.293694, 38.716385>,  <42.013607, 34.670223, 38.363396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302464, 35.293694, 38.716385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914673, 35.240135, 38.798538>,  <41.681999, 35.208000, 38.847832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914673, 35.240135, 38.798538>,  <42.302464, 35.293694, 38.716385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914673, 35.240135, 38.798538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223950, -0.142660, 0.964103,
		-0.099792, 0.980673, 0.168293,
		-0.969478, -0.133899, 0.205386,
		41.623829, 35.199966, 38.860153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140179, 35.787418, 39.399181>,  <42.302464, 35.293694, 38.716385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140179, 35.787418, 39.399181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842289, 35.521488, 39.375881>,  <41.663555, 35.361931, 39.361900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842289, 35.521488, 39.375881>,  <42.140179, 35.787418, 39.399181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842289, 35.521488, 39.375881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179602, 0.115586, 0.976925,
		-0.642749, 0.738004, -0.205483,
		-0.744726, -0.664823, -0.058254,
		41.618870, 35.322041, 39.358406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545128, 36.018333, 39.805931>,  <42.140179, 35.787418, 39.399181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545128, 36.018333, 39.805931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554672, 35.619652, 39.774902>,  <41.560398, 35.380444, 39.756287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554672, 35.619652, 39.774902>,  <41.545128, 36.018333, 39.805931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554672, 35.619652, 39.774902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000961, -0.077612, 0.996983,
		-0.999715, -0.023711, -0.002810,
		0.023858, -0.996702, -0.077567,
		41.561829, 35.320641, 39.751633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011135, 35.727043, 40.173267>,  <41.545128, 36.018333, 39.805931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011135, 35.727043, 40.173267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251629, 35.407627, 40.161617>,  <41.395927, 35.215977, 40.154629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251629, 35.407627, 40.161617>,  <41.011135, 35.727043, 40.173267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251629, 35.407627, 40.161617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090898, -0.104555, 0.990356,
		-0.793883, -0.592794, -0.135449,
		0.601239, -0.798539, -0.029121,
		41.431999, 35.168064, 40.152882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115421, 35.588356, 40.775288>,  <41.011135, 35.727043, 40.173267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115421, 35.588356, 40.775288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298786, 35.245716, 40.680553>,  <41.408806, 35.040131, 40.623714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298786, 35.245716, 40.680553>,  <41.115421, 35.588356, 40.775288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298786, 35.245716, 40.680553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181575, -0.170593, 0.968467,
		-0.869994, -0.486961, 0.077336,
		0.458412, -0.856602, -0.236835,
		41.436310, 34.988735, 40.609505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858257, 34.945431, 41.097561>,  <41.115421, 35.588356, 40.775288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858257, 34.945431, 41.097561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250046, 34.872772, 41.062611>,  <41.485119, 34.829178, 41.041641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250046, 34.872772, 41.062611>,  <40.858257, 34.945431, 41.097561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250046, 34.872772, 41.062611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098907, 0.055412, 0.993553,
		-0.175635, -0.981801, 0.072241,
		0.979474, -0.181648, -0.087375,
		41.543888, 34.818279, 41.036400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058418, 34.468147, 41.656822>,  <40.858257, 34.945431, 41.097561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058418, 34.468147, 41.656822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389748, 34.661236, 41.543079>,  <41.588547, 34.777088, 41.474834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389748, 34.661236, 41.543079>,  <41.058418, 34.468147, 41.656822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389748, 34.661236, 41.543079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267171, 0.105779, 0.957826,
		0.492443, -0.869362, -0.041350,
		0.828323, 0.482722, -0.284358,
		41.638245, 34.806053, 41.457771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547798, 34.299255, 42.159286>,  <41.058418, 34.468147, 41.656822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547798, 34.299255, 42.159286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723572, 34.601982, 41.965740>,  <41.829037, 34.783619, 41.849613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723572, 34.601982, 41.965740>,  <41.547798, 34.299255, 42.159286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723572, 34.601982, 41.965740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474389, 0.261896, 0.840455,
		0.762794, -0.598863, -0.243941,
		0.439431, 0.756818, -0.483867,
		41.855400, 34.829029, 41.820580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212189, 34.356110, 42.432644>,  <41.547798, 34.299255, 42.159286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212189, 34.356110, 42.432644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156315, 34.713406, 42.261711>,  <42.122791, 34.927784, 42.159153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156315, 34.713406, 42.261711>,  <42.212189, 34.356110, 42.432644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156315, 34.713406, 42.261711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477416, 0.438839, 0.761245,
		0.867503, -0.097677, -0.487747,
		-0.139687, 0.893241, -0.427327,
		42.114410, 34.981377, 42.133514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916195, 34.720341, 42.206223>,  <42.212189, 34.356110, 42.432644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916195, 34.720341, 42.206223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614235, 34.966885, 42.295872>,  <42.433060, 35.114811, 42.349663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614235, 34.966885, 42.295872>,  <42.916195, 34.720341, 42.206223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614235, 34.966885, 42.295872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515774, 0.346846, 0.783374,
		0.405100, 0.706967, -0.579734,
		-0.754898, 0.616357, 0.224128,
		42.387764, 35.151791, 42.363110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250572, 35.333618, 42.542255>,  <42.916195, 34.720341, 42.206223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250572, 35.333618, 42.542255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859264, 35.335442, 42.625164>,  <42.624477, 35.336536, 42.674908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859264, 35.335442, 42.625164>,  <43.250572, 35.333618, 42.542255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859264, 35.335442, 42.625164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189904, 0.420830, 0.887039,
		-0.083181, 0.907128, -0.412552,
		-0.978273, 0.004561, 0.207272,
		42.565781, 35.336811, 42.687347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156769, 35.936073, 42.902248>,  <43.250572, 35.333618, 42.542255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156769, 35.936073, 42.902248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852467, 35.698521, 43.006981>,  <42.669884, 35.555988, 43.069820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852467, 35.698521, 43.006981>,  <43.156769, 35.936073, 42.902248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852467, 35.698521, 43.006981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225159, 0.136867, 0.964661,
		-0.608730, 0.792826, 0.029596,
		-0.760757, -0.593881, 0.261827,
		42.624241, 35.520355, 43.085529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716003, 36.244602, 43.489071>,  <43.156769, 35.936073, 42.902248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716003, 36.244602, 43.489071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733669, 35.845840, 43.463070>,  <42.744270, 35.606583, 43.447468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733669, 35.845840, 43.463070>,  <42.716003, 36.244602, 43.489071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733669, 35.845840, 43.463070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148911, -0.057772, 0.987162,
		-0.987864, -0.053279, 0.145898,
		0.044166, -0.996907, -0.065005,
		42.746918, 35.546768, 43.443569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232510, 35.905109, 44.010525>,  <42.716003, 36.244602, 43.489071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232510, 35.905109, 44.010525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541473, 35.666538, 43.923203>,  <42.726852, 35.523396, 43.870808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541473, 35.666538, 43.923203>,  <42.232510, 35.905109, 44.010525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541473, 35.666538, 43.923203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242950, -0.040118, 0.969209,
		-0.586819, -0.801665, 0.113914,
		0.772411, -0.596426, -0.218306,
		42.773197, 35.487610, 43.857712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309216, 35.323479, 44.507462>,  <42.232510, 35.905109, 44.010525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309216, 35.323479, 44.507462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678486, 35.383606, 44.365955>,  <42.900047, 35.419682, 44.281052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678486, 35.383606, 44.365955>,  <42.309216, 35.323479, 44.507462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678486, 35.383606, 44.365955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365703, -0.060083, 0.928790,
		0.118360, -0.986810, -0.110439,
		0.923175, 0.150320, -0.353768,
		42.955437, 35.428703, 44.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788826, 34.859608, 44.800861>,  <42.309216, 35.323479, 44.507462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788826, 34.859608, 44.800861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030804, 35.168804, 44.724415>,  <43.175991, 35.354324, 44.678547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030804, 35.168804, 44.724415>,  <42.788826, 34.859608, 44.800861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030804, 35.168804, 44.724415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324484, -0.020132, 0.945677,
		0.727154, -0.634095, -0.263003,
		0.604944, 0.772993, -0.191114,
		43.212288, 35.400703, 44.667080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523846, 34.660873, 45.020916>,  <42.788826, 34.859608, 44.800861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523846, 34.660873, 45.020916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399273, 35.040871, 45.030052>,  <43.324532, 35.268867, 45.035534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399273, 35.040871, 45.030052>,  <43.523846, 34.660873, 45.020916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399273, 35.040871, 45.030052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253708, 0.059958, 0.965421,
		0.915775, 0.306456, -0.259693,
		-0.311430, 0.949995, 0.022843,
		43.305843, 35.325871, 45.036903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479153, 34.256596, 44.375050>,  <43.523846, 34.660873, 45.020916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479153, 34.256596, 44.375050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216499, 34.512249, 44.214878>,  <43.058907, 34.665642, 44.118774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216499, 34.512249, 44.214878>,  <43.479153, 34.256596, 44.375050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216499, 34.512249, 44.214878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304833, -0.260727, -0.916023,
		-0.689861, -0.723556, -0.023626,
		-0.656634, 0.639131, -0.400429,
		43.019508, 34.703987, 44.094749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043579, 34.028522, 43.827911>,  <43.479153, 34.256596, 44.375050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043579, 34.028522, 43.827911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035984, 34.415325, 43.726299>,  <43.031425, 34.647408, 43.665333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035984, 34.415325, 43.726299>,  <43.043579, 34.028522, 43.827911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035984, 34.415325, 43.726299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294170, -0.237422, -0.925794,
		-0.955564, -0.092308, -0.279957,
		-0.018991, 0.967011, -0.254027,
		43.030289, 34.705429, 43.650093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295139, 33.863586, 43.993214>,  <43.043579, 34.028522, 43.827911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295139, 33.863586, 43.993214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441795, 34.172855, 44.200203>,  <42.529789, 34.358418, 44.324398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441795, 34.172855, 44.200203>,  <42.295139, 33.863586, 43.993214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441795, 34.172855, 44.200203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909850, -0.181823, -0.372979,
		-0.194287, 0.607575, -0.770133,
		0.366641, 0.773171, 0.517477,
		42.551788, 34.404808, 44.355446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365913, 34.613590, 43.508488>,  <42.295139, 33.863586, 43.993214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365913, 34.613590, 43.508488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262882, 34.999134, 43.535698>,  <42.201065, 35.230461, 43.552025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262882, 34.999134, 43.535698>,  <42.365913, 34.613590, 43.508488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262882, 34.999134, 43.535698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106323, 0.041701, -0.993457,
		-0.960391, -0.263121, 0.091740,
		-0.257573, 0.963861, 0.068025,
		42.185612, 35.288292, 43.556107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620377, 34.783215, 43.323174>,  <42.365913, 34.613590, 43.508488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620377, 34.783215, 43.323174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908550, 35.052013, 43.254604>,  <42.081455, 35.213295, 43.213463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908550, 35.052013, 43.254604>,  <41.620377, 34.783215, 43.323174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908550, 35.052013, 43.254604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295237, 0.073523, -0.952591,
		-0.627539, 0.736891, 0.251368,
		0.720437, 0.672001, -0.171419,
		42.124680, 35.253613, 43.203178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316593, 35.390553, 42.938469>,  <41.620377, 34.783215, 43.323174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316593, 35.390553, 42.938469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706936, 35.341576, 42.866127>,  <41.941143, 35.312191, 42.822720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706936, 35.341576, 42.866127>,  <41.316593, 35.390553, 42.938469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706936, 35.341576, 42.866127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195292, -0.118401, -0.973572,
		0.097792, 0.985388, -0.139454,
		0.975857, -0.122442, -0.180860,
		41.999695, 35.304844, 42.811871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517204, 35.941868, 42.428402>,  <41.316593, 35.390553, 42.938469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517204, 35.941868, 42.428402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748810, 35.616116, 42.412823>,  <41.887775, 35.420662, 42.403477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748810, 35.616116, 42.412823>,  <41.517204, 35.941868, 42.428402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748810, 35.616116, 42.412823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243540, -0.127172, -0.961518,
		0.778093, 0.566220, -0.271970,
		0.579017, -0.814385, -0.038946,
		41.922516, 35.371799, 42.401138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755051, 36.133526, 41.731529>,  <41.517204, 35.941868, 42.428402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755051, 36.133526, 41.731529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867626, 35.767353, 41.846611>,  <41.935173, 35.547649, 41.915661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867626, 35.767353, 41.846611>,  <41.755051, 36.133526, 41.731529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867626, 35.767353, 41.846611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258203, -0.361008, -0.896105,
		0.924188, 0.177913, -0.337969,
		0.281438, -0.915435, 0.287702,
		41.952057, 35.492722, 41.932922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353687, 35.896698, 41.242588>,  <41.755051, 36.133526, 41.731529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353687, 35.896698, 41.242588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184078, 35.586601, 41.429871>,  <42.082314, 35.400543, 41.542240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184078, 35.586601, 41.429871>,  <42.353687, 35.896698, 41.242588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184078, 35.586601, 41.429871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306591, -0.363579, -0.879666,
		0.852179, -0.516543, -0.083516,
		-0.424020, -0.775238, 0.468202,
		42.056873, 35.354031, 41.570332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721169, 35.288025, 41.085129>,  <42.353687, 35.896698, 41.242588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721169, 35.288025, 41.085129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340202, 35.200134, 41.169624>,  <42.111622, 35.147400, 41.220322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340202, 35.200134, 41.169624>,  <42.721169, 35.288025, 41.085129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340202, 35.200134, 41.169624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136222, -0.313105, -0.939898,
		0.272663, -0.923950, 0.268274,
		-0.952417, -0.219730, 0.211235,
		42.054478, 35.134216, 41.232994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630360, 34.608879, 40.865780>,  <42.721169, 35.288025, 41.085129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630360, 34.608879, 40.865780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268036, 34.777859, 40.878719>,  <42.050640, 34.879246, 40.886482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268036, 34.777859, 40.878719>,  <42.630360, 34.608879, 40.865780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268036, 34.777859, 40.878719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205220, -0.370664, -0.905810,
		-0.370664, -0.827132, 0.422446,
		0.905810, -0.422446, -0.032352,
		41.996292, 34.904594, 40.888424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124367, 34.067425, 40.745331>,  <42.630360, 34.608879, 40.865780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124367, 34.067425, 40.745331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996025, 34.418995, 40.604168>,  <41.919022, 34.629936, 40.519470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996025, 34.418995, 40.604168>,  <42.124367, 34.067425, 40.745331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996025, 34.418995, 40.604168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109095, -0.404427, -0.908040,
		-0.940825, -0.252848, 0.225648,
		-0.320854, 0.878924, -0.352910,
		41.899769, 34.682671, 40.498295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937477, 33.976971, 40.049866>,  <42.124367, 34.067425, 40.745331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937477, 33.976971, 40.049866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788082, 34.347954, 40.057095>,  <41.698444, 34.570545, 40.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788082, 34.347954, 40.057095>,  <41.937477, 33.976971, 40.049866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788082, 34.347954, 40.057095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195354, -0.059590, -0.978921,
		-0.906833, -0.369144, 0.203439,
		-0.373485, 0.927460, 0.018076,
		41.676037, 34.626190, 40.062519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434101, 34.004833, 39.654346>,  <41.937477, 33.976971, 40.049866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434101, 34.004833, 39.654346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494537, 34.399593, 39.676998>,  <41.530800, 34.636448, 39.690590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494537, 34.399593, 39.676998>,  <41.434101, 34.004833, 39.654346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494537, 34.399593, 39.676998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285548, 0.098421, -0.953297,
		-0.946379, 0.127861, 0.296677,
		0.151088, 0.986897, 0.056633,
		41.539864, 34.695663, 39.693989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507874, 33.949703, 38.855148>,  <41.434101, 34.004833, 39.654346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507874, 33.949703, 38.855148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278076, 33.827328, 39.158821>,  <41.140198, 33.753902, 39.341026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278076, 33.827328, 39.158821>,  <41.507874, 33.949703, 38.855148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278076, 33.827328, 39.158821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818101, 0.185327, -0.544393,
		0.025855, -0.933839, -0.356759,
		-0.574492, -0.305940, 0.759183,
		41.105728, 33.735546, 39.386578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883274, 34.225857, 39.146206>,  <41.507874, 33.949703, 38.855148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883274, 34.225857, 39.146206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084087, 34.563049, 39.223511>,  <41.204575, 34.765366, 39.269894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084087, 34.563049, 39.223511>,  <40.883274, 34.225857, 39.146206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084087, 34.563049, 39.223511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257338, 0.358948, -0.897181,
		-0.825674, 0.400682, 0.397134,
		0.502035, 0.842977, 0.193263,
		41.234699, 34.815941, 39.281490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395908, 34.916653, 39.205570>,  <40.883274, 34.225857, 39.146206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395908, 34.916653, 39.205570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775166, 34.983944, 39.097698>,  <41.002720, 35.024319, 39.032974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775166, 34.983944, 39.097698>,  <40.395908, 34.916653, 39.205570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775166, 34.983944, 39.097698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317106, 0.442672, -0.838740,
		-0.021723, 0.880761, 0.473062,
		0.948141, 0.168230, -0.269679,
		41.059608, 35.034412, 39.016796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390049, 35.596340, 38.876606>,  <40.395908, 34.916653, 39.205570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390049, 35.596340, 38.876606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744392, 35.451019, 38.761189>,  <40.957001, 35.363827, 38.691936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744392, 35.451019, 38.761189>,  <40.390049, 35.596340, 38.876606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744392, 35.451019, 38.761189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125841, 0.410466, -0.903151,
		0.446558, 0.836377, 0.317897,
		0.885861, -0.363305, -0.288547,
		41.010151, 35.342030, 38.674625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752625, 36.128716, 38.553646>,  <40.390049, 35.596340, 38.876606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752625, 36.128716, 38.553646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867207, 35.781784, 38.390827>,  <40.935955, 35.573627, 38.293137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867207, 35.781784, 38.390827>,  <40.752625, 36.128716, 38.553646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867207, 35.781784, 38.390827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013900, 0.428569, -0.903402,
		0.957992, 0.253128, 0.134823,
		0.286457, -0.867326, -0.407047,
		40.953144, 35.521587, 38.268715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888599, 36.288174, 37.966255>,  <40.752625, 36.128716, 38.553646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888599, 36.288174, 37.966255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974194, 35.902676, 37.902496>,  <41.025551, 35.671375, 37.864239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974194, 35.902676, 37.902496>,  <40.888599, 36.288174, 37.966255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974194, 35.902676, 37.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057714, 0.150422, -0.986936,
		0.975131, 0.220388, -0.023434,
		0.213984, -0.963744, -0.159400,
		41.038387, 35.613552, 37.854675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521278, 36.240494, 37.618740>,  <40.888599, 36.288174, 37.966255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521278, 36.240494, 37.618740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296227, 35.927406, 37.512299>,  <41.161198, 35.739555, 37.448433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296227, 35.927406, 37.512299>,  <41.521278, 36.240494, 37.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296227, 35.927406, 37.512299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012795, 0.330083, -0.943865,
		0.826612, -0.527639, -0.195729,
		-0.562627, -0.782714, -0.266099,
		41.127438, 35.692593, 37.432468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874989, 35.752312, 37.132626>,  <41.521278, 36.240494, 37.618740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874989, 35.752312, 37.132626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496090, 35.658463, 37.045288>,  <41.268749, 35.602154, 36.992886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496090, 35.658463, 37.045288>,  <41.874989, 35.752312, 37.132626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496090, 35.658463, 37.045288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156109, 0.257231, -0.953657,
		0.279912, -0.937436, -0.207036,
		-0.947248, -0.234620, -0.218344,
		41.211914, 35.588078, 36.979786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003101, 35.341129, 36.565159>,  <41.874989, 35.752312, 37.132626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003101, 35.341129, 36.565159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629276, 35.483444, 36.564129>,  <41.404980, 35.568832, 36.563511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629276, 35.483444, 36.564129>,  <42.003101, 35.341129, 36.565159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629276, 35.483444, 36.564129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087291, 0.222261, -0.971072,
		-0.344919, -0.907754, -0.238774,
		-0.934564, 0.355784, -0.002577,
		41.348907, 35.590179, 36.563354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723915, 35.394787, 36.773285>,  <42.003101, 35.341129, 36.565159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723915, 35.394787, 36.773285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741970, 35.164650, 36.446617>,  <42.752804, 35.026569, 36.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741970, 35.164650, 36.446617>,  <42.723915, 35.394787, 36.773285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741970, 35.164650, 36.446617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998938, 0.018450, 0.042215,
		-0.009220, -0.817707, 0.575560,
		0.045138, -0.575338, -0.816669,
		42.755512, 34.992050, 36.201618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043610, 35.703533, 37.477230>,  <42.723915, 35.394787, 36.773285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043610, 35.703533, 37.477230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385841, 35.584015, 37.646324>,  <43.591183, 35.512306, 37.747780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385841, 35.584015, 37.646324>,  <43.043610, 35.703533, 37.477230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385841, 35.584015, 37.646324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147353, 0.642262, 0.752187,
		-0.496253, -0.705849, 0.505480,
		0.855581, -0.298792, 0.422734,
		43.642517, 35.494377, 37.773144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564835, 35.590488, 36.953411>,  <43.043610, 35.703533, 37.477230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564835, 35.590488, 36.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460514, 35.208641, 37.010937>,  <43.397923, 34.979530, 37.045452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460514, 35.208641, 37.010937>,  <43.564835, 35.590488, 36.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460514, 35.208641, 37.010937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945389, -0.222382, 0.238298,
		-0.195504, 0.198105, 0.960486,
		-0.260803, -0.954621, 0.143810,
		43.382275, 34.922256, 37.054081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251514, 35.398842, 36.923592>,  <43.564835, 35.590488, 36.953411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251514, 35.398842, 36.923592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502445, 35.087608, 36.910671>,  <44.653004, 34.900867, 36.902920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502445, 35.087608, 36.910671>,  <44.251514, 35.398842, 36.923592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502445, 35.087608, 36.910671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317059, 0.217309, 0.923174,
		-0.711287, -0.589376, 0.383023,
		0.627331, -0.778083, -0.032298,
		44.690643, 34.854183, 36.900982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152176, 34.845173, 37.522873>,  <44.251514, 35.398842, 36.923592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152176, 34.845173, 37.522873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528343, 34.833626, 37.387356>,  <44.754044, 34.826698, 37.306046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528343, 34.833626, 37.387356>,  <44.152176, 34.845173, 37.522873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528343, 34.833626, 37.387356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339615, 0.030845, 0.940059,
		-0.016695, -0.999107, 0.038814,
		0.940416, -0.028876, -0.338797,
		44.810467, 34.824966, 37.285717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595924, 34.420158, 37.851303>,  <44.152176, 34.845173, 37.522873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595924, 34.420158, 37.851303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833858, 34.711887, 37.716099>,  <44.976620, 34.886925, 37.634975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833858, 34.711887, 37.716099>,  <44.595924, 34.420158, 37.851303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833858, 34.711887, 37.716099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289738, 0.197702, 0.936464,
		0.749813, -0.654980, -0.093713,
		0.594838, 0.729325, -0.338012,
		45.012310, 34.930683, 37.614697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835766, 33.918118, 37.493118>,  <44.595924, 34.420158, 37.851303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835766, 33.918118, 37.493118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703712, 33.573078, 37.646450>,  <44.624481, 33.366055, 37.738449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703712, 33.573078, 37.646450>,  <44.835766, 33.918118, 37.493118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703712, 33.573078, 37.646450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461576, -0.206717, -0.862679,
		0.823384, -0.461734, -0.329910,
		-0.330130, -0.862595, 0.383333,
		44.604671, 33.314301, 37.761452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009907, 33.461697, 36.979439>,  <44.835766, 33.918118, 37.493118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009907, 33.461697, 36.979439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762699, 33.250160, 37.212120>,  <44.614372, 33.123238, 37.351727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762699, 33.250160, 37.212120>,  <45.009907, 33.461697, 36.979439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762699, 33.250160, 37.212120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546438, -0.242994, -0.801473,
		0.565204, -0.813190, -0.138805,
		-0.618021, -0.528844, 0.581699,
		44.577293, 33.091507, 37.386631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991959, 32.750450, 36.682381>,  <45.009907, 33.461697, 36.979439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991959, 32.750450, 36.682381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665726, 32.848385, 36.892097>,  <44.469986, 32.907146, 37.017929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665726, 32.848385, 36.892097>,  <44.991959, 32.750450, 36.682381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665726, 32.848385, 36.892097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575794, -0.433275, -0.693350,
		0.057403, -0.867367, 0.494347,
		-0.815578, 0.244841, 0.524296,
		44.421051, 32.921837, 37.049385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776337, 32.829414, 36.691078>,  <44.991959, 32.750450, 36.682381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776337, 32.829414, 36.691078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807426, 32.541737, 36.967258>,  <45.826080, 32.369129, 37.132965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807426, 32.541737, 36.967258>,  <45.776337, 32.829414, 36.691078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807426, 32.541737, 36.967258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982392, -0.173270, -0.069889,
		0.169897, -0.672860, -0.719996,
		0.077728, -0.719192, 0.690450,
		45.830746, 32.325977, 37.174393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936565, 33.552624, 36.445892>,  <45.776337, 32.829414, 36.691078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936565, 33.552624, 36.445892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760040, 33.820992, 36.207527>,  <45.654125, 33.982010, 36.064507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760040, 33.820992, 36.207527>,  <45.936565, 33.552624, 36.445892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760040, 33.820992, 36.207527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072783, -0.635130, -0.768968,
		-0.894396, -0.382729, 0.231460,
		-0.441313, 0.670916, -0.595915,
		45.627647, 34.022266, 36.028751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295540, 33.342190, 35.893730>,  <45.936565, 33.552624, 36.445892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295540, 33.342190, 35.893730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496609, 33.647087, 35.730610>,  <45.617252, 33.830025, 35.632740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496609, 33.647087, 35.730610>,  <45.295540, 33.342190, 35.893730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496609, 33.647087, 35.730610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032481, -0.454742, -0.890031,
		-0.863866, 0.460641, -0.203828,
		0.502674, 0.762247, -0.407798,
		45.647411, 33.875763, 35.608269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914513, 33.694401, 35.407307>,  <45.295540, 33.342190, 35.893730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914513, 33.694401, 35.407307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307590, 33.668972, 35.337719>,  <45.543438, 33.653713, 35.295967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307590, 33.668972, 35.337719>,  <44.914513, 33.694401, 35.407307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307590, 33.668972, 35.337719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184662, -0.409239, -0.893545,
		-0.014388, 0.910210, -0.413898,
		0.982697, -0.063575, -0.173969,
		45.602398, 33.649899, 35.285526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109734, 34.080887, 34.736107>,  <44.914513, 33.694401, 35.407307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109734, 34.080887, 34.736107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375061, 33.791302, 34.811882>,  <45.534256, 33.617550, 34.857346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375061, 33.791302, 34.811882>,  <45.109734, 34.080887, 34.736107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375061, 33.791302, 34.811882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203945, -0.418447, -0.885047,
		0.720011, 0.548433, -0.425212,
		0.663318, -0.723963, 0.189436,
		45.574055, 33.574112, 34.868713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747173, 34.128559, 34.385292>,  <45.109734, 34.080887, 34.736107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747173, 34.128559, 34.385292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653221, 33.743031, 34.435707>,  <45.596851, 33.511715, 34.465958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653221, 33.743031, 34.435707>,  <45.747173, 34.128559, 34.385292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653221, 33.743031, 34.435707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028296, -0.122830, -0.992024,
		0.971613, -0.236570, 0.001578,
		-0.234877, -0.963819, 0.126037,
		45.582760, 33.453884, 34.473518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234810, 33.602203, 33.966721>,  <45.747173, 34.128559, 34.385292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234810, 33.602203, 33.966721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857777, 33.475613, 34.009384>,  <45.631557, 33.399658, 34.034981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857777, 33.475613, 34.009384>,  <46.234810, 33.602203, 33.966721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857777, 33.475613, 34.009384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240243, 0.420715, -0.874804,
		0.231982, -0.850201, -0.472591,
		-0.942585, -0.316475, 0.106657,
		45.575001, 33.380669, 34.041382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.898224, 33.392300, 34.018307>,  <46.234810, 33.602203, 33.966721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.898224, 33.392300, 34.018307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269039, 33.540905, 33.997971>,  <47.491528, 33.630066, 33.985771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269039, 33.540905, 33.997971>,  <46.898224, 33.392300, 34.018307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269039, 33.540905, 33.997971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219607, 0.647812, 0.729460,
		0.303934, -0.665072, 0.682131,
		0.927036, 0.371509, -0.050838,
		47.547150, 33.652359, 33.982719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184109, 33.400883, 34.687614>,  <46.898224, 33.392300, 34.018307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184109, 33.400883, 34.687614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311127, 33.715359, 34.475548>,  <47.387337, 33.904045, 34.348309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311127, 33.715359, 34.475548>,  <47.184109, 33.400883, 34.687614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.311127, 33.715359, 34.475548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204141, 0.602672, 0.771436,
		0.926009, -0.136737, 0.351868,
		0.317545, 0.786187, -0.530166,
		47.406391, 33.951214, 34.316498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.771996, 33.940208, 35.064766>,  <47.184109, 33.400883, 34.687614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.771996, 33.940208, 35.064766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518421, 34.145004, 34.832909>,  <47.366276, 34.267883, 34.693794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518421, 34.145004, 34.832909>,  <47.771996, 33.940208, 35.064766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.518421, 34.145004, 34.832909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089743, 0.695730, 0.712675,
		0.768158, 0.503813, -0.395104,
		-0.633940, 0.511989, -0.579644,
		47.328239, 34.298599, 34.659016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.999630, 34.652328, 34.873287>,  <47.771996, 33.940208, 35.064766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.999630, 34.652328, 34.873287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600567, 34.625893, 34.880245>,  <47.361130, 34.610031, 34.884418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600567, 34.625893, 34.880245>,  <47.999630, 34.652328, 34.873287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600567, 34.625893, 34.880245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028146, 0.629230, 0.776709,
		-0.062278, 0.774404, -0.629619,
		-0.997662, -0.066093, 0.017390,
		47.301270, 34.606064, 34.885464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933830, 35.268158, 35.164436>,  <47.999630, 34.652328, 34.873287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933830, 35.268158, 35.164436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565907, 35.111309, 35.169895>,  <47.345150, 35.017200, 35.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565907, 35.111309, 35.169895>,  <47.933830, 35.268158, 35.164436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.565907, 35.111309, 35.169895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195488, 0.488160, 0.850578,
		-0.340192, 0.779705, -0.525671,
		-0.919812, -0.392122, 0.013645,
		47.289963, 34.993671, 35.173988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.313354, 34.611416, 26.771826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.946053, 34.769489, 26.761694>,  <38.725674, 34.864334, 26.755615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.946053, 34.769489, 26.761694>,  <39.313354, 34.611416, 26.771826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946053, 34.769489, 26.761694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224716, -0.467344, 0.855039,
		0.326060, 0.790834, 0.517944,
		-0.918252, 0.395185, -0.025331,
		38.670578, 34.888046, 26.754095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207195, 34.876308, 27.435472>,  <39.313354, 34.611416, 26.771826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207195, 34.876308, 27.435472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829815, 34.873966, 27.302885>,  <38.603386, 34.872559, 27.223333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829815, 34.873966, 27.302885>,  <39.207195, 34.876308, 27.435472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829815, 34.873966, 27.302885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325441, -0.174193, 0.929379,
		-0.063185, 0.984694, 0.162435,
		-0.943449, -0.005860, -0.331466,
		38.546780, 34.872208, 27.203445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753937, 35.380520, 27.819168>,  <39.207195, 34.876308, 27.435472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753937, 35.380520, 27.819168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523983, 35.090885, 27.666746>,  <38.386009, 34.917103, 27.575293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523983, 35.090885, 27.666746>,  <38.753937, 35.380520, 27.819168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523983, 35.090885, 27.666746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327101, -0.223495, 0.918180,
		-0.750006, 0.652494, -0.108365,
		-0.574888, -0.724087, -0.381054,
		38.351517, 34.873657, 27.552429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197388, 35.499794, 28.171579>,  <38.753937, 35.380520, 27.819168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197388, 35.499794, 28.171579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151081, 35.138458, 28.006374>,  <38.123295, 34.921658, 27.907251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151081, 35.138458, 28.006374>,  <38.197388, 35.499794, 28.171579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151081, 35.138458, 28.006374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338205, -0.355113, 0.871500,
		-0.933924, 0.240577, -0.264401,
		-0.115771, -0.903337, -0.413013,
		38.116348, 34.867458, 27.882471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542271, 35.270290, 28.421312>,  <38.197388, 35.499794, 28.171579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542271, 35.270290, 28.421312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723392, 34.934303, 28.301699>,  <37.832066, 34.732712, 28.229931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723392, 34.934303, 28.301699>,  <37.542271, 35.270290, 28.421312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723392, 34.934303, 28.301699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239720, -0.437724, 0.866563,
		-0.858781, -0.320696, -0.399560,
		0.452800, -0.839971, -0.299032,
		37.859234, 34.682312, 28.211988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082623, 34.724873, 28.552811>,  <37.542271, 35.270290, 28.421312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082623, 34.724873, 28.552811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442814, 34.554779, 28.516350>,  <37.658928, 34.452724, 28.494473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442814, 34.554779, 28.516350>,  <37.082623, 34.724873, 28.552811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442814, 34.554779, 28.516350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205331, -0.600478, 0.772830,
		-0.383366, -0.677204, -0.628033,
		0.900483, -0.425231, -0.091152,
		37.712959, 34.427208, 28.489004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954247, 33.956757, 28.606262>,  <37.082623, 34.724873, 28.552811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954247, 33.956757, 28.606262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326748, 34.070183, 28.697784>,  <37.550251, 34.138237, 28.752699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326748, 34.070183, 28.697784>,  <36.954247, 33.956757, 28.606262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326748, 34.070183, 28.697784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050494, -0.521468, 0.851775,
		0.360847, -0.804775, -0.471303,
		0.931257, 0.283563, 0.228807,
		37.606125, 34.155251, 28.766426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170174, 33.306927, 28.893127>,  <36.954247, 33.956757, 28.606262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170174, 33.306927, 28.893127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453930, 33.561695, 29.013853>,  <37.624184, 33.714558, 29.086288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453930, 33.561695, 29.013853>,  <37.170174, 33.306927, 28.893127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453930, 33.561695, 29.013853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029062, -0.401420, 0.915433,
		0.704213, -0.658174, -0.266255,
		0.709394, 0.636922, 0.301813,
		37.666748, 33.752773, 29.104397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787853, 32.891964, 29.147465>,  <37.170174, 33.306927, 28.893127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787853, 32.891964, 29.147465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821823, 33.254932, 29.312090>,  <37.842205, 33.472713, 29.410864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821823, 33.254932, 29.312090>,  <37.787853, 32.891964, 29.147465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821823, 33.254932, 29.312090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293218, -0.417523, 0.860057,
		0.952266, 0.047638, -0.301529,
		0.084924, 0.907417, 0.411561,
		37.847301, 33.527157, 29.435558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436516, 32.846489, 29.487434>,  <37.787853, 32.891964, 29.147465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436516, 32.846489, 29.487434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.239357, 33.156204, 29.646193>,  <38.121063, 33.342033, 29.741447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.239357, 33.156204, 29.646193>,  <38.436516, 32.846489, 29.487434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239357, 33.156204, 29.646193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390752, -0.210584, 0.896085,
		0.777412, 0.596762, -0.198761,
		-0.492894, 0.774293, 0.396896,
		38.091488, 33.388493, 29.765261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877972, 33.252415, 29.985630>,  <38.436516, 32.846489, 29.487434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877972, 33.252415, 29.985630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519600, 33.357117, 30.129185>,  <38.304577, 33.419937, 30.215319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519600, 33.357117, 30.129185>,  <38.877972, 33.252415, 29.985630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519600, 33.357117, 30.129185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340838, -0.113031, 0.933302,
		0.284864, 0.958492, 0.012051,
		-0.895925, 0.261757, 0.358889,
		38.250824, 33.435642, 30.236851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106632, 33.784466, 30.401596>,  <38.877972, 33.252415, 29.985630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106632, 33.784466, 30.401596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735821, 33.701427, 30.526508>,  <38.513332, 33.651604, 30.601456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735821, 33.701427, 30.526508>,  <39.106632, 33.784466, 30.401596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735821, 33.701427, 30.526508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291133, 0.126415, 0.948294,
		-0.236335, 0.970013, -0.056754,
		-0.927031, -0.207592, 0.312279,
		38.457710, 33.639149, 30.620192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858906, 34.384953, 30.776440>,  <39.106632, 33.784466, 30.401596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858906, 34.384953, 30.776440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678890, 34.049496, 30.899170>,  <38.570881, 33.848221, 30.972809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678890, 34.049496, 30.899170>,  <38.858906, 34.384953, 30.776440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678890, 34.049496, 30.899170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266569, 0.201762, 0.942461,
		-0.852293, 0.505937, 0.132755,
		-0.450041, -0.838642, 0.306828,
		38.543877, 33.797905, 30.991219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455532, 34.599743, 31.308254>,  <38.858906, 34.384953, 30.776440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455532, 34.599743, 31.308254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466755, 34.205235, 31.373350>,  <38.473488, 33.968529, 31.412409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466755, 34.205235, 31.373350>,  <38.455532, 34.599743, 31.308254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466755, 34.205235, 31.373350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203255, 0.165033, 0.965117,
		-0.978724, 0.006000, 0.205095,
		0.028056, -0.986270, 0.162741,
		38.475170, 33.909355, 31.422173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086090, 34.516708, 31.916245>,  <38.455532, 34.599743, 31.308254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086090, 34.516708, 31.916245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301544, 34.182152, 31.875616>,  <38.430817, 33.981419, 31.851238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301544, 34.182152, 31.875616>,  <38.086090, 34.516708, 31.916245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301544, 34.182152, 31.875616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085216, -0.065856, 0.994184,
		-0.838219, -0.544157, 0.035802,
		0.538634, -0.836395, -0.101573,
		38.463135, 33.931232, 31.845144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800049, 34.114719, 32.346085>,  <38.086090, 34.516708, 31.916245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800049, 34.114719, 32.346085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178482, 33.998363, 32.289082>,  <38.405540, 33.928551, 32.254879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178482, 33.998363, 32.289082>,  <37.800049, 34.114719, 32.346085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178482, 33.998363, 32.289082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078073, -0.222210, 0.971868,
		-0.314371, -0.930595, -0.187519,
		0.946084, -0.290888, -0.142511,
		38.462307, 33.911098, 32.246330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943874, 33.666176, 32.936283>,  <37.800049, 34.114719, 32.346085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943874, 33.666176, 32.936283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314381, 33.724182, 32.797138>,  <38.536682, 33.758984, 32.713650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314381, 33.724182, 32.797138>,  <37.943874, 33.666176, 32.936283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314381, 33.724182, 32.797138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359023, -0.058774, 0.931476,
		0.114632, -0.987682, -0.106503,
		0.926262, 0.145014, -0.347864,
		38.592258, 33.767685, 32.692780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376564, 33.338863, 33.357738>,  <37.943874, 33.666176, 32.936283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376564, 33.338863, 33.357738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656227, 33.552593, 33.167713>,  <38.824024, 33.680832, 33.053699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656227, 33.552593, 33.167713>,  <38.376564, 33.338863, 33.357738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656227, 33.552593, 33.167713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604599, -0.087179, 0.791745,
		0.381634, -0.840772, -0.384003,
		0.699154, 0.534325, -0.475059,
		38.865974, 33.712891, 33.025196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941467, 32.962402, 33.365658>,  <38.376564, 33.338863, 33.357738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941467, 32.962402, 33.365658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060379, 33.343777, 33.345352>,  <39.131725, 33.572601, 33.333168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060379, 33.343777, 33.345352>,  <38.941467, 32.962402, 33.365658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060379, 33.343777, 33.345352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520535, -0.117272, 0.845748,
		0.800417, -0.277848, -0.531162,
		0.297280, 0.953440, -0.050763,
		39.149563, 33.629810, 33.330124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582420, 32.858158, 33.443562>,  <38.941467, 32.962402, 33.365658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582420, 32.858158, 33.443562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492725, 33.241375, 33.514961>,  <39.438908, 33.471306, 33.557800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492725, 33.241375, 33.514961>,  <39.582420, 32.858158, 33.443562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492725, 33.241375, 33.514961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522549, -0.036404, 0.851832,
		0.822592, 0.284291, -0.492463,
		-0.224241, 0.958046, 0.178502,
		39.425453, 33.528790, 33.568512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116993, 33.106518, 33.541702>,  <39.582420, 32.858158, 33.443562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116993, 33.106518, 33.541702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.875446, 33.361919, 33.732559>,  <39.730518, 33.515160, 33.847073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.875446, 33.361919, 33.732559>,  <40.116993, 33.106518, 33.541702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875446, 33.361919, 33.732559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610059, -0.015048, 0.792213,
		0.513010, 0.769473, -0.380437,
		-0.603862, 0.638502, 0.477144,
		39.694286, 33.553471, 33.875702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595638, 33.526108, 33.932632>,  <40.116993, 33.106518, 33.541702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595638, 33.526108, 33.932632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258205, 33.619499, 34.126072>,  <40.055748, 33.675533, 34.242134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258205, 33.619499, 34.126072>,  <40.595638, 33.526108, 33.932632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258205, 33.619499, 34.126072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479095, -0.079582, 0.874148,
		0.242579, 0.969100, -0.044724,
		-0.843578, 0.233477, 0.483596,
		40.005131, 33.689541, 34.271152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071999, 34.018482, 33.785316>,  <40.595638, 33.526108, 33.932632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071999, 34.018482, 33.785316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.397854, 34.018223, 34.017303>,  <41.593365, 34.018066, 34.156498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.397854, 34.018223, 34.017303>,  <41.071999, 34.018482, 33.785316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397854, 34.018223, 34.017303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384874, 0.748689, -0.539757,
		-0.433866, 0.662922, 0.610160,
		0.814637, -0.000653, 0.579972,
		41.642246, 34.018028, 34.191296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242310, 34.754807, 33.960407>,  <41.071999, 34.018482, 33.785316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242310, 34.754807, 33.960407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.601677, 34.590538, 34.022614>,  <41.817299, 34.491978, 34.059937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.601677, 34.590538, 34.022614>,  <41.242310, 34.754807, 33.960407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601677, 34.590538, 34.022614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388154, 0.577028, -0.718593,
		0.205367, 0.705965, 0.677819,
		0.898421, -0.410673, 0.155520,
		41.871204, 34.467335, 34.069271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726597, 35.324390, 33.979355>,  <41.242310, 34.754807, 33.960407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726597, 35.324390, 33.979355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.911346, 34.981987, 33.886471>,  <42.022198, 34.776546, 33.830742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.911346, 34.981987, 33.886471>,  <41.726597, 35.324390, 33.979355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911346, 34.981987, 33.886471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427622, 0.444283, -0.787243,
		0.777053, 0.264311, 0.571251,
		0.461874, -0.856010, -0.232206,
		42.049908, 34.725185, 33.816811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398899, 35.447594, 33.842457>,  <41.726597, 35.324390, 33.979355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398899, 35.447594, 33.842457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.326504, 35.098011, 33.662041>,  <42.283066, 34.888260, 33.553791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.326504, 35.098011, 33.662041>,  <42.398899, 35.447594, 33.842457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326504, 35.098011, 33.662041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420265, 0.345904, -0.838884,
		0.889169, -0.341382, 0.304692,
		-0.180986, -0.873961, -0.451038,
		42.272209, 34.835823, 33.526730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899841, 35.346184, 33.299702>,  <42.398899, 35.447594, 33.842457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899841, 35.346184, 33.299702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.623730, 35.078201, 33.190399>,  <42.458061, 34.917412, 33.124817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.623730, 35.078201, 33.190399>,  <42.899841, 35.346184, 33.299702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623730, 35.078201, 33.190399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220264, 0.165165, -0.961356,
		0.689202, -0.723791, 0.033559,
		-0.690278, -0.669960, -0.273257,
		42.416645, 34.877213, 33.108421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301674, 35.029591, 32.774918>,  <42.899841, 35.346184, 33.299702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301674, 35.029591, 32.774918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.915325, 34.937599, 32.727253>,  <42.683514, 34.882404, 32.698654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.915325, 34.937599, 32.727253>,  <43.301674, 35.029591, 32.774918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915325, 34.937599, 32.727253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074561, 0.193696, -0.978224,
		0.248054, -0.953725, -0.169938,
		-0.965873, -0.229981, -0.119158,
		42.625565, 34.868607, 32.691505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237694, 34.738327, 32.109169>,  <43.301674, 35.029591, 32.774918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237694, 34.738327, 32.109169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.857151, 34.821907, 32.199734>,  <42.628826, 34.872055, 32.254074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.857151, 34.821907, 32.199734>,  <43.237694, 34.738327, 32.109169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857151, 34.821907, 32.199734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140828, 0.358706, -0.922766,
		-0.274032, -0.909763, -0.311830,
		-0.951353, 0.208953, 0.226416,
		42.571743, 34.884594, 32.267658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894894, 34.583652, 31.568493>,  <43.237694, 34.738327, 32.109169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894894, 34.583652, 31.568493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.604527, 34.793079, 31.746893>,  <42.430305, 34.918736, 31.853933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.604527, 34.793079, 31.746893>,  <42.894894, 34.583652, 31.568493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604527, 34.793079, 31.746893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211394, 0.447230, -0.869079,
		-0.654489, -0.725161, -0.213973,
		-0.725917, 0.523570, 0.446002,
		42.386749, 34.950150, 31.880693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161823, 34.414204, 31.272560>,  <42.894894, 34.583652, 31.568493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161823, 34.414204, 31.272560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.172043, 34.788868, 31.412277>,  <42.178177, 35.013668, 31.496107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.172043, 34.788868, 31.412277>,  <42.161823, 34.414204, 31.272560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172043, 34.788868, 31.412277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166914, 0.348499, -0.922328,
		-0.985640, -0.034735, 0.165248,
		0.025552, 0.936665, 0.349292,
		42.179707, 35.069866, 31.517065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703400, 34.738400, 30.844711>,  <42.161823, 34.414204, 31.272560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703400, 34.738400, 30.844711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891220, 35.054932, 31.001339>,  <42.003910, 35.244850, 31.095316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891220, 35.054932, 31.001339>,  <41.703400, 34.738400, 30.844711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891220, 35.054932, 31.001339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113300, 0.493838, -0.862141,
		-0.875608, 0.360451, 0.321538,
		0.469547, 0.791328, 0.391569,
		42.032085, 35.292332, 31.118811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295055, 35.298325, 30.722075>,  <41.703400, 34.738400, 30.844711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295055, 35.298325, 30.722075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.652042, 35.468666, 30.781612>,  <41.866234, 35.570873, 30.817335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.652042, 35.468666, 30.781612>,  <41.295055, 35.298325, 30.722075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652042, 35.468666, 30.781612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143795, 0.581281, -0.800897,
		-0.427588, 0.693368, 0.580008,
		0.892464, 0.425856, 0.148846,
		41.919781, 35.596424, 30.826265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218555, 36.032272, 30.679342>,  <41.295055, 35.298325, 30.722075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218555, 36.032272, 30.679342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.602585, 35.974728, 30.583380>,  <41.833004, 35.940201, 30.525803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.602585, 35.974728, 30.583380>,  <41.218555, 36.032272, 30.679342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602585, 35.974728, 30.583380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109663, 0.595410, -0.795902,
		0.257345, 0.790436, 0.555863,
		0.960077, -0.143864, -0.239908,
		41.890610, 35.931568, 30.511408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384350, 36.620945, 30.335817>,  <41.218555, 36.032272, 30.679342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384350, 36.620945, 30.335817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692837, 36.387089, 30.235083>,  <41.877930, 36.246777, 30.174643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692837, 36.387089, 30.235083>,  <41.384350, 36.620945, 30.335817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692837, 36.387089, 30.235083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048381, 0.448299, -0.892574,
		0.634734, 0.676182, 0.374020,
		0.771215, -0.584642, -0.251836,
		41.924202, 36.211697, 30.159533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845882, 37.080242, 29.895395>,  <41.384350, 36.620945, 30.335817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845882, 37.080242, 29.895395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.927765, 36.706371, 29.779140>,  <41.976894, 36.482048, 29.709389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.927765, 36.706371, 29.779140>,  <41.845882, 37.080242, 29.895395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927765, 36.706371, 29.779140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091227, 0.277413, -0.956410,
		0.974563, 0.222295, -0.028480,
		0.204704, -0.934680, -0.290636,
		41.989178, 36.425968, 29.691950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290039, 37.105499, 29.376110>,  <41.845882, 37.080242, 29.895395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290039, 37.105499, 29.376110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133347, 36.741955, 29.318823>,  <42.039333, 36.523827, 29.284451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133347, 36.741955, 29.318823>,  <42.290039, 37.105499, 29.376110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133347, 36.741955, 29.318823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010032, 0.151430, -0.988417,
		0.920026, -0.388628, -0.050202,
		-0.391729, -0.908866, -0.143219,
		42.015827, 36.469296, 29.275858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678307, 36.757511, 28.905977>,  <42.290039, 37.105499, 29.376110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678307, 36.757511, 28.905977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.345413, 36.537060, 28.881832>,  <42.145676, 36.404789, 28.867344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.345413, 36.537060, 28.881832>,  <42.678307, 36.757511, 28.905977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345413, 36.537060, 28.881832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071698, 0.000981, -0.997426,
		0.549772, -0.834418, 0.038698,
		-0.832232, -0.551131, -0.060365,
		42.095745, 36.371719, 28.863722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722919, 36.489445, 28.250904>,  <42.678307, 36.757511, 28.905977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722919, 36.489445, 28.250904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336937, 36.408142, 28.317301>,  <42.105347, 36.359360, 28.357140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336937, 36.408142, 28.317301>,  <42.722919, 36.489445, 28.250904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336937, 36.408142, 28.317301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162588, -0.033461, -0.986127,
		0.205991, -0.978554, -0.000759,
		-0.964952, -0.203256, 0.165993,
		42.047451, 36.347164, 28.367098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476723, 35.941231, 27.764824>,  <42.722919, 36.489445, 28.250904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476723, 35.941231, 27.764824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.120213, 36.072807, 27.889681>,  <41.906307, 36.151752, 27.964594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.120213, 36.072807, 27.889681>,  <42.476723, 35.941231, 27.764824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120213, 36.072807, 27.889681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313227, 0.051168, -0.948299,
		-0.327904, -0.942964, 0.057428,
		-0.891273, 0.328939, 0.312140,
		41.852829, 36.171490, 27.983322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.971790, 35.683952, 27.259415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794281, 35.990688, 27.444901>,  <41.687775, 36.174728, 27.556192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794281, 35.990688, 27.444901>,  <41.971790, 35.683952, 27.259415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794281, 35.990688, 27.444901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343929, 0.332090, -0.878310,
		-0.827514, -0.549254, 0.116365,
		-0.443771, 0.766836, 0.463713,
		41.661148, 36.220737, 27.584015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323887, 35.610424, 27.081667>,  <41.971790, 35.683952, 27.259415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323887, 35.610424, 27.081667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387032, 35.991207, 27.186632>,  <41.424919, 36.219677, 27.249611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387032, 35.991207, 27.186632>,  <41.323887, 35.610424, 27.081667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387032, 35.991207, 27.186632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450617, 0.305907, -0.838669,
		-0.878649, 0.014146, 0.477258,
		0.157860, 0.951956, 0.262411,
		41.434391, 36.276794, 27.265356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682114, 35.925091, 27.018318>,  <41.323887, 35.610424, 27.081667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682114, 35.925091, 27.018318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.960533, 36.211578, 26.998154>,  <41.127586, 36.383472, 26.986055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.960533, 36.211578, 26.998154>,  <40.682114, 35.925091, 27.018318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960533, 36.211578, 26.998154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345633, 0.272700, -0.897871,
		-0.629326, 0.642389, 0.437362,
		0.696051, 0.716220, -0.050414,
		41.169350, 36.426445, 26.983030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257828, 36.600590, 27.022835>,  <40.682114, 35.925091, 27.018318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257828, 36.600590, 27.022835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628075, 36.670399, 26.888502>,  <40.850224, 36.712284, 26.807903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628075, 36.670399, 26.888502>,  <40.257828, 36.600590, 27.022835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628075, 36.670399, 26.888502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378435, 0.438788, -0.815017,
		0.005121, 0.881481, 0.472192,
		0.925614, 0.174520, -0.335830,
		40.905758, 36.722755, 26.787752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298107, 37.273804, 26.740061>,  <40.257828, 36.600590, 27.022835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298107, 37.273804, 26.740061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624763, 37.095848, 26.593000>,  <40.820759, 36.989075, 26.504765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624763, 37.095848, 26.593000>,  <40.298107, 37.273804, 26.740061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624763, 37.095848, 26.593000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173666, 0.418068, -0.891661,
		0.550396, 0.792016, 0.264149,
		0.816642, -0.444893, -0.367649,
		40.869755, 36.962379, 26.482706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702541, 37.712357, 26.376038>,  <40.298107, 37.273804, 26.740061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702541, 37.712357, 26.376038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.775238, 37.351749, 26.218946>,  <40.818855, 37.135384, 26.124691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.775238, 37.351749, 26.218946>,  <40.702541, 37.712357, 26.376038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775238, 37.351749, 26.218946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174938, 0.363369, -0.915074,
		0.967661, 0.235006, -0.091672,
		0.181737, -0.901519, -0.392729,
		40.829758, 37.081295, 26.101128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886948, 37.859875, 25.770494>,  <40.702541, 37.712357, 26.376038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886948, 37.859875, 25.770494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856846, 37.465130, 25.713299>,  <40.838787, 37.228283, 25.678982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856846, 37.465130, 25.713299>,  <40.886948, 37.859875, 25.770494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856846, 37.465130, 25.713299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109707, 0.150720, -0.982470,
		0.991111, -0.058244, -0.119607,
		-0.075250, -0.986859, -0.142991,
		40.834270, 37.169071, 25.670403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474674, 37.637074, 25.309589>,  <40.886948, 37.859875, 25.770494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474674, 37.637074, 25.309589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167542, 37.382469, 25.280514>,  <40.983261, 37.229706, 25.263067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167542, 37.382469, 25.280514>,  <41.474674, 37.637074, 25.309589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167542, 37.382469, 25.280514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043362, 0.164839, -0.985367,
		0.639181, -0.753445, -0.154169,
		-0.767833, -0.636513, -0.072691,
		40.937191, 37.191517, 25.258707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585377, 37.364277, 24.723587>,  <41.474674, 37.637074, 25.309589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585377, 37.364277, 24.723587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.213467, 37.217686, 24.737513>,  <40.990322, 37.129730, 24.745869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.213467, 37.217686, 24.737513>,  <41.585377, 37.364277, 24.723587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213467, 37.217686, 24.737513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067412, 0.076523, -0.994786,
		0.361905, -0.927274, -0.095854,
		-0.929774, -0.366480, 0.034815,
		40.934536, 37.107742, 24.747957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515587, 36.962276, 24.078571>,  <41.585377, 37.364277, 24.723587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515587, 36.962276, 24.078571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148380, 37.027508, 24.223158>,  <40.928059, 37.066647, 24.309910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148380, 37.027508, 24.223158>,  <41.515587, 36.962276, 24.078571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148380, 37.027508, 24.223158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326181, 0.207855, -0.922173,
		-0.225517, -0.964470, -0.137621,
		-0.918013, 0.163077, 0.361467,
		40.872978, 37.076431, 24.331598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044296, 36.512379, 23.706800>,  <41.515587, 36.962276, 24.078571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044296, 36.512379, 23.706800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.817459, 36.811100, 23.845762>,  <40.681355, 36.990334, 23.929140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.817459, 36.811100, 23.845762>,  <41.044296, 36.512379, 23.706800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817459, 36.811100, 23.845762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419590, 0.101015, -0.902076,
		-0.708765, -0.657330, 0.256065,
		-0.567095, 0.746802, 0.347405,
		40.647331, 37.035141, 23.949984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379154, 36.449944, 23.452986>,  <41.044296, 36.512379, 23.706800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379154, 36.449944, 23.452986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375996, 36.841396, 23.535166>,  <40.374100, 37.076267, 23.584475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375996, 36.841396, 23.535166>,  <40.379154, 36.449944, 23.452986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375996, 36.841396, 23.535166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547736, 0.167664, -0.819680,
		-0.836614, -0.119003, 0.534710,
		-0.007893, 0.978635, 0.205452,
		40.373627, 37.134987, 23.596802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783413, 36.738251, 23.287994>,  <40.379154, 36.449944, 23.452986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783413, 36.738251, 23.287994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965992, 37.094128, 23.283779>,  <40.075539, 37.307652, 23.281250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965992, 37.094128, 23.283779>,  <39.783413, 36.738251, 23.287994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965992, 37.094128, 23.283779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294959, 0.140133, -0.945178,
		-0.839438, 0.434531, 0.326385,
		0.456447, 0.889688, -0.010536,
		40.102924, 37.361034, 23.280619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279724, 37.129314, 23.028370>,  <39.783413, 36.738251, 23.287994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279724, 37.129314, 23.028370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595310, 37.370319, 22.980164>,  <39.784660, 37.514923, 22.951241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595310, 37.370319, 22.980164>,  <39.279724, 37.129314, 23.028370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595310, 37.370319, 22.980164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387003, 0.334926, -0.859100,
		-0.477252, 0.724436, 0.497416,
		0.788961, 0.602509, -0.120515,
		39.831997, 37.551071, 22.944010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936493, 37.842220, 22.886221>,  <39.279724, 37.129314, 23.028370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936493, 37.842220, 22.886221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308079, 37.863571, 22.739704>,  <39.531033, 37.876381, 22.651794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308079, 37.863571, 22.739704>,  <38.936493, 37.842220, 22.886221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308079, 37.863571, 22.739704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361737, 0.340816, -0.867750,
		0.078516, 0.938613, 0.335917,
		0.928968, 0.053382, -0.366291,
		39.586769, 37.879585, 22.629816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018269, 38.547592, 22.648018>,  <38.936493, 37.842220, 22.886221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018269, 38.547592, 22.648018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.309658, 38.358658, 22.449535>,  <39.484493, 38.245296, 22.330446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.309658, 38.358658, 22.449535>,  <39.018269, 38.547592, 22.648018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309658, 38.358658, 22.449535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293507, 0.439284, -0.849049,
		0.619014, 0.764150, 0.181372,
		0.728475, -0.472339, -0.496206,
		39.528202, 38.216957, 22.300674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426746, 39.052567, 22.363008>,  <39.018269, 38.547592, 22.648018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426746, 39.052567, 22.363008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486568, 38.721230, 22.147051>,  <39.522461, 38.522427, 22.017477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486568, 38.721230, 22.147051>,  <39.426746, 39.052567, 22.363008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486568, 38.721230, 22.147051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240399, 0.499184, -0.832480,
		0.959083, 0.254295, -0.124475,
		0.149559, -0.828341, -0.539892,
		39.531437, 38.472729, 21.985083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915333, 39.190792, 21.788589>,  <39.426746, 39.052567, 22.363008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915333, 39.190792, 21.788589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719631, 38.858074, 21.683702>,  <39.602211, 38.658443, 21.620771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719631, 38.858074, 21.683702>,  <39.915333, 39.190792, 21.788589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719631, 38.858074, 21.683702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274986, 0.432445, -0.858705,
		0.827657, -0.348017, -0.440305,
		-0.489251, -0.831791, -0.262216,
		39.572857, 38.608536, 21.605038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062843, 39.055511, 21.086771>,  <39.915333, 39.190792, 21.788589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062843, 39.055511, 21.086771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733620, 38.834194, 21.138063>,  <39.536087, 38.701405, 21.168839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733620, 38.834194, 21.138063>,  <40.062843, 39.055511, 21.086771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733620, 38.834194, 21.138063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366390, 0.344732, -0.864245,
		0.433977, -0.758304, -0.486455,
		-0.823057, -0.553295, 0.128229,
		39.486702, 38.668205, 21.176533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033237, 38.616169, 20.470753>,  <40.062843, 39.055511, 21.086771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033237, 38.616169, 20.470753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.675766, 38.640755, 20.648544>,  <39.461285, 38.655506, 20.755220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.675766, 38.640755, 20.648544>,  <40.033237, 38.616169, 20.470753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675766, 38.640755, 20.648544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416574, 0.254480, -0.872757,
		-0.166754, -0.965123, -0.201819,
		-0.893677, 0.061463, 0.444481,
		39.407661, 38.659195, 20.781889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554779, 38.417519, 19.913883>,  <40.033237, 38.616169, 20.470753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554779, 38.417519, 19.913883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330647, 38.606976, 20.185673>,  <39.196167, 38.720650, 20.348747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330647, 38.606976, 20.185673>,  <39.554779, 38.417519, 19.913883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330647, 38.606976, 20.185673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591782, 0.345025, -0.728527,
		-0.579497, -0.810321, 0.086964,
		-0.560336, 0.473643, 0.679475,
		39.162544, 38.749069, 20.389515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916496, 38.197769, 19.841253>,  <39.554779, 38.417519, 19.913883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916496, 38.197769, 19.841253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861450, 38.559868, 20.002045>,  <38.828423, 38.777126, 20.098520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861450, 38.559868, 20.002045>,  <38.916496, 38.197769, 19.841253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861450, 38.559868, 20.002045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692552, 0.202201, -0.692450,
		-0.708120, -0.373685, 0.599105,
		-0.137619, 0.905248, 0.401978,
		38.820164, 38.831444, 20.122639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198387, 38.398232, 20.038019>,  <38.916496, 38.197769, 19.841253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198387, 38.398232, 20.038019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400211, 38.736893, 19.970383>,  <38.521305, 38.940090, 19.929802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400211, 38.736893, 19.970383>,  <38.198387, 38.398232, 20.038019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400211, 38.736893, 19.970383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682480, 0.271170, -0.678740,
		-0.528806, 0.457867, 0.714648,
		0.504564, 0.846655, -0.169089,
		38.551579, 38.990891, 19.919657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815075, 39.057495, 20.147203>,  <38.198387, 38.398232, 20.038019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815075, 39.057495, 20.147203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099174, 39.134670, 19.876406>,  <38.269634, 39.180977, 19.713928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099174, 39.134670, 19.876406>,  <37.815075, 39.057495, 20.147203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099174, 39.134670, 19.876406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677033, 0.450614, -0.581870,
		0.192797, 0.871620, 0.450676,
		0.710250, 0.192940, -0.676993,
		38.312248, 39.192551, 19.673307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051846, 38.988148, 20.186615>,  <37.815075, 39.057495, 20.147203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051846, 38.988148, 20.186615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655258, 39.021420, 20.226759>,  <36.417305, 39.041382, 20.250845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655258, 39.021420, 20.226759>,  <37.051846, 38.988148, 20.186615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655258, 39.021420, 20.226759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063846, -0.361347, 0.930243,
		0.113638, 0.928714, 0.352953,
		-0.991468, 0.083177, 0.100358,
		36.357819, 39.046371, 20.256866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993114, 39.304874, 20.910357>,  <37.051846, 38.988148, 20.186615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993114, 39.304874, 20.910357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629780, 39.162067, 20.823206>,  <36.411781, 39.076382, 20.770916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629780, 39.162067, 20.823206>,  <36.993114, 39.304874, 20.910357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629780, 39.162067, 20.823206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171494, -0.157207, 0.972561,
		-0.381473, 0.920774, 0.081570,
		-0.908333, -0.357017, -0.217877,
		36.357281, 39.054962, 20.757843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500523, 39.580479, 21.426395>,  <36.993114, 39.304874, 20.910357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500523, 39.580479, 21.426395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384014, 39.228798, 21.275576>,  <36.314110, 39.017788, 21.185083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384014, 39.228798, 21.275576>,  <36.500523, 39.580479, 21.426395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384014, 39.228798, 21.275576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020370, -0.388350, 0.921287,
		-0.956423, 0.276026, 0.095207,
		-0.291273, -0.879201, -0.377049,
		36.296631, 38.965038, 21.162460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223232, 39.221733, 21.989515>,  <36.500523, 39.580479, 21.426395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223232, 39.221733, 21.989515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263153, 38.913311, 21.737959>,  <36.287106, 38.728256, 21.587025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263153, 38.913311, 21.737959>,  <36.223232, 39.221733, 21.989515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263153, 38.913311, 21.737959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137314, -0.615328, 0.776219,
		-0.985487, -0.163823, 0.044467,
		0.099801, -0.771060, -0.628893,
		36.293095, 38.681992, 21.549292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743271, 38.689278, 22.205019>,  <36.223232, 39.221733, 21.989515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743271, 38.689278, 22.205019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992798, 38.472237, 21.980009>,  <36.142513, 38.342010, 21.845003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992798, 38.472237, 21.980009>,  <35.743271, 38.689278, 22.205019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992798, 38.472237, 21.980009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155842, -0.618928, 0.769832,
		-0.765874, -0.567901, -0.301539,
		0.623819, -0.542601, -0.562524,
		36.179943, 38.309456, 21.811253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626717, 37.932522, 22.389091>,  <35.743271, 38.689278, 22.205019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626717, 37.932522, 22.389091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990765, 37.939289, 22.223492>,  <36.209194, 37.943352, 22.124132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990765, 37.939289, 22.223492>,  <35.626717, 37.932522, 22.389091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990765, 37.939289, 22.223492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324442, -0.650574, 0.686652,
		-0.257719, -0.759254, -0.597590,
		0.910120, 0.016921, -0.413999,
		36.263802, 37.944366, 22.099293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858059, 37.246319, 22.489237>,  <35.626717, 37.932522, 22.389091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858059, 37.246319, 22.489237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203289, 37.424976, 22.394907>,  <36.410427, 37.532169, 22.338308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203289, 37.424976, 22.394907>,  <35.858059, 37.246319, 22.489237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203289, 37.424976, 22.394907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473247, -0.551997, 0.686540,
		0.176462, -0.704139, -0.687786,
		0.863075, 0.446640, -0.235825,
		36.462212, 37.558968, 22.324160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411270, 36.720734, 22.333565>,  <35.858059, 37.246319, 22.489237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411270, 36.720734, 22.333565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578568, 37.060562, 22.462126>,  <36.678947, 37.264458, 22.539263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578568, 37.060562, 22.462126>,  <36.411270, 36.720734, 22.333565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578568, 37.060562, 22.462126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425373, -0.495832, 0.757105,
		0.802577, -0.179939, -0.568764,
		0.418244, 0.849572, 0.321401,
		36.704041, 37.315434, 22.558546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146667, 36.492809, 22.564728>,  <36.411270, 36.720734, 22.333565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146667, 36.492809, 22.564728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075249, 36.842350, 22.745619>,  <37.032398, 37.052074, 22.854153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075249, 36.842350, 22.745619>,  <37.146667, 36.492809, 22.564728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075249, 36.842350, 22.745619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449088, -0.336573, 0.827670,
		0.875467, 0.350865, -0.332343,
		-0.178543, 0.873849, 0.452228,
		37.021687, 37.104504, 22.881287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752041, 36.745934, 22.703348>,  <37.146667, 36.492809, 22.564728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752041, 36.745934, 22.703348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504604, 36.920525, 22.964676>,  <37.356140, 37.025280, 23.121473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504604, 36.920525, 22.964676>,  <37.752041, 36.745934, 22.703348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504604, 36.920525, 22.964676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524160, -0.390182, 0.756977,
		0.585318, 0.810706, 0.012579,
		-0.618594, 0.436479, 0.653320,
		37.319027, 37.051468, 23.160671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111412, 37.065392, 23.176405>,  <37.752041, 36.745934, 22.703348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111412, 37.065392, 23.176405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785862, 37.080963, 23.408298>,  <37.590530, 37.090305, 23.547436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785862, 37.080963, 23.408298>,  <38.111412, 37.065392, 23.176405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785862, 37.080963, 23.408298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568038, -0.156587, 0.807968,
		0.122231, 0.986897, 0.105330,
		-0.813875, 0.038928, 0.579735,
		37.541698, 37.092640, 23.582218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334644, 37.444836, 23.682714>,  <38.111412, 37.065392, 23.176405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334644, 37.444836, 23.682714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014580, 37.262699, 23.838869>,  <37.822540, 37.153416, 23.932562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014580, 37.262699, 23.838869>,  <38.334644, 37.444836, 23.682714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014580, 37.262699, 23.838869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564094, -0.350158, 0.747789,
		-0.203804, 0.818567, 0.537040,
		-0.800164, -0.455343, 0.390385,
		37.774532, 37.126095, 23.955984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334614, 37.633396, 24.466045>,  <38.334644, 37.444836, 23.682714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334614, 37.633396, 24.466045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146458, 37.283314, 24.420897>,  <38.033562, 37.073265, 24.393806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146458, 37.283314, 24.420897>,  <38.334614, 37.633396, 24.466045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146458, 37.283314, 24.420897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538408, -0.385984, 0.749088,
		-0.699176, 0.291595, 0.652783,
		-0.470394, -0.875208, -0.112874,
		38.005341, 37.020752, 24.387033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082832, 37.459503, 25.096210>,  <38.334614, 37.633396, 24.466045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082832, 37.459503, 25.096210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092789, 37.113560, 24.895649>,  <38.098763, 36.905994, 24.775312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092789, 37.113560, 24.895649>,  <38.082832, 37.459503, 25.096210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092789, 37.113560, 24.895649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232160, -0.482848, 0.844370,
		-0.972359, -0.137422, 0.188767,
		0.024889, -0.864855, -0.501405,
		38.100254, 36.854103, 24.745228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820656, 36.992149, 25.578676>,  <38.082832, 37.459503, 25.096210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820656, 36.992149, 25.578676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990620, 36.747597, 25.311644>,  <38.092598, 36.600864, 25.151424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990620, 36.747597, 25.311644>,  <37.820656, 36.992149, 25.578676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990620, 36.747597, 25.311644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325853, -0.584732, 0.742905,
		-0.844555, -0.533201, -0.049238,
		0.424909, -0.611380, -0.667583,
		38.118092, 36.564182, 25.111368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569778, 36.301353, 25.714001>,  <37.820656, 36.992149, 25.578676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569778, 36.301353, 25.714001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916756, 36.263203, 25.518679>,  <38.124943, 36.240311, 25.401485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916756, 36.263203, 25.518679>,  <37.569778, 36.301353, 25.714001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916756, 36.263203, 25.518679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297529, -0.687182, 0.662765,
		-0.398770, -0.720197, -0.567714,
		0.867444, -0.095379, -0.488307,
		38.176991, 36.234589, 25.372187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604771, 35.594204, 25.411066>,  <37.569778, 36.301353, 25.714001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604771, 35.594204, 25.411066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965103, 35.759079, 25.465639>,  <38.181301, 35.858006, 25.498383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965103, 35.759079, 25.465639>,  <37.604771, 35.594204, 25.411066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965103, 35.759079, 25.465639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226292, -0.713900, 0.662676,
		0.370544, -0.566083, -0.736375,
		0.900827, 0.412186, 0.136432,
		38.235352, 35.882736, 25.506569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028698, 35.037495, 25.327517>,  <37.604771, 35.594204, 25.411066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028698, 35.037495, 25.327517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274174, 35.295944, 25.509020>,  <38.421459, 35.451015, 25.617922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274174, 35.295944, 25.509020>,  <38.028698, 35.037495, 25.327517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274174, 35.295944, 25.509020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159534, -0.664334, 0.730211,
		0.773259, -0.375736, -0.510777,
		0.613694, 0.646129, 0.453760,
		38.458282, 35.489784, 25.645147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657982, 34.656879, 25.438005>,  <38.028698, 35.037495, 25.327517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657982, 34.656879, 25.438005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640564, 34.957706, 25.701063>,  <38.630112, 35.138203, 25.858898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640564, 34.957706, 25.701063>,  <38.657982, 34.656879, 25.438005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640564, 34.957706, 25.701063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049862, -0.655811, 0.753277,
		0.997806, 0.065593, -0.008942,
		-0.043545, 0.752070, 0.657643,
		38.627499, 35.183327, 25.898355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086407, 34.465214, 26.018286>,  <38.657982, 34.656879, 25.438005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086407, 34.465214, 26.018286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868973, 34.755192, 26.187510>,  <38.738514, 34.929176, 26.289043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868973, 34.755192, 26.187510>,  <39.086407, 34.465214, 26.018286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868973, 34.755192, 26.187510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065838, -0.539303, 0.839534,
		0.836771, 0.428502, 0.340883,
		-0.543581, 0.724940, 0.423061,
		38.705898, 34.972675, 26.314428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.207172, 35.872181, 30.418970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807503, 35.863972, 30.432943>,  <42.567699, 35.859047, 30.441328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807503, 35.863972, 30.432943>,  <43.207172, 35.872181, 30.418970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807503, 35.863972, 30.432943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038040, -0.178281, 0.983244,
		-0.013954, 0.983766, 0.178916,
		-0.999179, -0.020526, 0.034935,
		42.507748, 35.857815, 30.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110096, 36.112949, 31.076132>,  <43.207172, 35.872181, 30.418970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110096, 36.112949, 31.076132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.746620, 35.970264, 30.989384>,  <42.528534, 35.884655, 30.937336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.746620, 35.970264, 30.989384>,  <43.110096, 36.112949, 31.076132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746620, 35.970264, 30.989384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074077, -0.373471, 0.924679,
		-0.410839, 0.856315, 0.312947,
		-0.908694, -0.356712, -0.216869,
		42.474010, 35.863251, 30.924322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644001, 36.317417, 31.610626>,  <43.110096, 36.112949, 31.076132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644001, 36.317417, 31.610626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445107, 36.002819, 31.464104>,  <42.325771, 35.814060, 31.376190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445107, 36.002819, 31.464104>,  <42.644001, 36.317417, 31.610626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445107, 36.002819, 31.464104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068700, -0.385181, 0.920280,
		-0.864890, 0.482763, 0.137495,
		-0.497238, -0.786496, -0.366305,
		42.295937, 35.766869, 31.354212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038406, 36.256683, 31.985529>,  <42.644001, 36.317417, 31.610626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038406, 36.256683, 31.985529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120411, 35.892979, 31.840635>,  <42.169613, 35.674755, 31.753698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120411, 35.892979, 31.840635>,  <42.038406, 36.256683, 31.985529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120411, 35.892979, 31.840635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201314, -0.401356, 0.893524,
		-0.957832, -0.110260, -0.265330,
		0.205012, -0.909261, -0.362235,
		42.181915, 35.620201, 31.731964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535000, 35.855888, 32.346458>,  <42.038406, 36.256683, 31.985529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535000, 35.855888, 32.346458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.794365, 35.583225, 32.210869>,  <41.949986, 35.419628, 32.129513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.794365, 35.583225, 32.210869>,  <41.535000, 35.855888, 32.346458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794365, 35.583225, 32.210869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149669, -0.550723, 0.821160,
		-0.746430, -0.481718, -0.459119,
		0.648414, -0.681655, -0.338978,
		41.988888, 35.378731, 32.109177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325890, 35.282227, 32.463940>,  <41.535000, 35.855888, 32.346458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325890, 35.282227, 32.463940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699440, 35.154934, 32.398689>,  <41.923569, 35.078560, 32.359539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699440, 35.154934, 32.398689>,  <41.325890, 35.282227, 32.463940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699440, 35.154934, 32.398689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064072, -0.597676, 0.799173,
		-0.351816, -0.735875, -0.578543,
		0.933874, -0.318231, -0.163124,
		41.979603, 35.059464, 32.349751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299686, 34.608738, 32.554588>,  <41.325890, 35.282227, 32.463940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299686, 34.608738, 32.554588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685295, 34.690849, 32.622139>,  <41.916660, 34.740116, 32.662670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685295, 34.690849, 32.622139>,  <41.299686, 34.608738, 32.554588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685295, 34.690849, 32.622139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014936, -0.592463, 0.805459,
		0.265397, -0.779004, -0.568082,
		0.964023, 0.205282, 0.168873,
		41.974503, 34.752434, 32.672802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681850, 33.955544, 32.578915>,  <41.299686, 34.608738, 32.554588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681850, 33.955544, 32.578915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911949, 34.224949, 32.764591>,  <42.050007, 34.386593, 32.875996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911949, 34.224949, 32.764591>,  <41.681850, 33.955544, 32.578915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911949, 34.224949, 32.764591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019503, -0.578613, 0.815369,
		0.817747, -0.459985, -0.345981,
		0.575247, 0.673513, 0.464188,
		42.084522, 34.427002, 32.903847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011204, 33.590015, 33.120739>,  <41.681850, 33.955544, 32.578915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011204, 33.590015, 33.120739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104465, 33.966579, 33.218208>,  <42.160423, 34.192520, 33.276691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104465, 33.966579, 33.218208>,  <42.011204, 33.590015, 33.120739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104465, 33.966579, 33.218208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111030, -0.274712, 0.955095,
		0.966080, -0.195633, -0.168577,
		0.233158, 0.941415, 0.243673,
		42.174412, 34.249004, 33.291309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674160, 33.590584, 33.581192>,  <42.011204, 33.590015, 33.120739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674160, 33.590584, 33.581192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469624, 33.926243, 33.655331>,  <42.346901, 34.127640, 33.699814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469624, 33.926243, 33.655331>,  <42.674160, 33.590584, 33.581192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469624, 33.926243, 33.655331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172829, -0.311688, 0.934334,
		0.841819, 0.445731, 0.304409,
		-0.511343, 0.839151, 0.185350,
		42.316219, 34.177990, 33.710938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973446, 33.881512, 34.256554>,  <42.674160, 33.590584, 33.581192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973446, 33.881512, 34.256554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615967, 34.047947, 34.189407>,  <42.401478, 34.147808, 34.149120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615967, 34.047947, 34.189407>,  <42.973446, 33.881512, 34.256554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615967, 34.047947, 34.189407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331846, -0.361191, 0.871446,
		0.301967, 0.834513, 0.460872,
		-0.893697, 0.416087, -0.167862,
		42.347858, 34.172771, 34.139050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796944, 34.277340, 34.871544>,  <42.973446, 33.881512, 34.256554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796944, 34.277340, 34.871544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464333, 34.188572, 34.667850>,  <42.264767, 34.135311, 34.545635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464333, 34.188572, 34.667850>,  <42.796944, 34.277340, 34.871544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464333, 34.188572, 34.667850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466318, -0.219286, 0.857007,
		-0.301855, 0.950087, 0.078856,
		-0.831523, -0.221920, -0.509235,
		42.214874, 34.121994, 34.515079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262943, 34.688419, 35.046047>,  <42.796944, 34.277340, 34.871544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262943, 34.688419, 35.046047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.103848, 34.331741, 34.959618>,  <42.008392, 34.117733, 34.907761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.103848, 34.331741, 34.959618>,  <42.262943, 34.688419, 35.046047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103848, 34.331741, 34.959618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441853, -0.020235, 0.896859,
		-0.804096, 0.452186, -0.385949,
		-0.397738, -0.891694, -0.216071,
		41.984528, 34.064232, 34.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510307, 34.605209, 35.215794>,  <42.262943, 34.688419, 35.046047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510307, 34.605209, 35.215794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677402, 34.242916, 35.244473>,  <41.777660, 34.025539, 35.261681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677402, 34.242916, 35.244473>,  <41.510307, 34.605209, 35.215794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677402, 34.242916, 35.244473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357746, -0.091435, 0.929332,
		-0.835173, -0.413866, -0.362218,
		0.417738, -0.905735, 0.071695,
		41.802723, 33.971195, 35.265980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598785, 35.253235, 35.800392>,  <41.510307, 34.605209, 35.215794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598785, 35.253235, 35.800392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328148, 35.489925, 35.975700>,  <41.165764, 35.631939, 36.080883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328148, 35.489925, 35.975700>,  <41.598785, 35.253235, 35.800392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328148, 35.489925, 35.975700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212542, 0.412917, -0.885621,
		-0.705017, -0.692355, -0.153609,
		-0.676592, 0.591730, 0.438268,
		41.125172, 35.667446, 36.107182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005600, 35.155704, 35.406624>,  <41.598785, 35.253235, 35.800392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005600, 35.155704, 35.406624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.935627, 35.485481, 35.621918>,  <40.893642, 35.683346, 35.751095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.935627, 35.485481, 35.621918>,  <41.005600, 35.155704, 35.406624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935627, 35.485481, 35.621918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468533, 0.411093, -0.781971,
		-0.865953, -0.388975, 0.314362,
		-0.174935, 0.824439, 0.538235,
		40.883148, 35.732815, 35.783390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213650, 35.355682, 35.494034>,  <41.005600, 35.155704, 35.406624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213650, 35.355682, 35.494034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457012, 35.673023, 35.502430>,  <40.603027, 35.863426, 35.507465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457012, 35.673023, 35.502430>,  <40.213650, 35.355682, 35.494034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457012, 35.673023, 35.502430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556010, 0.444964, -0.702040,
		-0.566302, 0.415454, 0.711828,
		0.608403, 0.793350, 0.020987,
		40.639534, 35.911030, 35.508728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775242, 35.912548, 35.417461>,  <40.213650, 35.355682, 35.494034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775242, 35.912548, 35.417461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.134254, 36.072979, 35.344166>,  <40.349663, 36.169239, 35.300190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.134254, 36.072979, 35.344166>,  <39.775242, 35.912548, 35.417461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134254, 36.072979, 35.344166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387626, 0.519548, -0.761456,
		-0.210203, 0.754457, 0.621779,
		0.897530, 0.401078, -0.183237,
		40.403515, 36.193302, 35.289196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648041, 36.593494, 35.278996>,  <39.775242, 35.912548, 35.417461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648041, 36.593494, 35.278996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013874, 36.560791, 35.120571>,  <40.233372, 36.541168, 35.025517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013874, 36.560791, 35.120571>,  <39.648041, 36.593494, 35.278996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013874, 36.560791, 35.120571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216647, 0.727906, -0.650551,
		0.341482, 0.680785, 0.648014,
		0.914578, -0.081761, -0.396057,
		40.288246, 36.536263, 35.001755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995323, 37.219158, 35.365311>,  <39.648041, 36.593494, 35.278996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995323, 37.219158, 35.365311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.142342, 37.028049, 35.046150>,  <40.230553, 36.913383, 34.854656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.142342, 37.028049, 35.046150>,  <39.995323, 37.219158, 35.365311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142342, 37.028049, 35.046150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418372, 0.681293, -0.600670,
		0.830585, 0.554595, 0.050522,
		0.367549, -0.477771, -0.797899,
		40.252605, 36.884720, 34.806782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297844, 37.719574, 34.953075>,  <39.995323, 37.219158, 35.365311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297844, 37.719574, 34.953075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.271614, 37.401520, 34.711926>,  <40.255875, 37.210686, 34.567234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.271614, 37.401520, 34.711926>,  <40.297844, 37.719574, 34.953075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271614, 37.401520, 34.711926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265761, 0.596268, -0.757519,
		0.961806, 0.110547, -0.250417,
		-0.065574, -0.795138, -0.602873,
		40.251942, 37.162979, 34.531063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752499, 37.914787, 34.341980>,  <40.297844, 37.719574, 34.953075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752499, 37.914787, 34.341980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496166, 37.624901, 34.240692>,  <40.342365, 37.450970, 34.179920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496166, 37.624901, 34.240692>,  <40.752499, 37.914787, 34.341980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496166, 37.624901, 34.240692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250666, 0.509303, -0.823272,
		0.725603, -0.464108, -0.508040,
		-0.640833, -0.724717, -0.253215,
		40.303917, 37.407486, 34.164726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871151, 37.839760, 33.695316>,  <40.752499, 37.914787, 34.341980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871151, 37.839760, 33.695316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533241, 37.631500, 33.744747>,  <40.330494, 37.506542, 33.774406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533241, 37.631500, 33.744747>,  <40.871151, 37.839760, 33.695316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533241, 37.631500, 33.744747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309569, 0.287131, -0.906489,
		0.436484, -0.804037, -0.403740,
		-0.844778, -0.520653, 0.123577,
		40.279808, 37.475304, 33.781818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747704, 37.394444, 33.108044>,  <40.871151, 37.839760, 33.695316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747704, 37.394444, 33.108044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391281, 37.479832, 33.268269>,  <40.177429, 37.531067, 33.364403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391281, 37.479832, 33.268269>,  <40.747704, 37.394444, 33.108044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391281, 37.479832, 33.268269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300970, 0.382710, -0.873470,
		-0.339761, -0.898867, -0.276767,
		-0.891055, 0.213473, 0.400562,
		40.123966, 37.543873, 33.388435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196507, 37.132187, 32.708202>,  <40.747704, 37.394444, 33.108044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196507, 37.132187, 32.708202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988644, 37.390587, 32.931858>,  <39.863926, 37.545628, 33.066051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988644, 37.390587, 32.931858>,  <40.196507, 37.132187, 32.708202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988644, 37.390587, 32.931858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363536, 0.425060, -0.828955,
		-0.773174, -0.634041, 0.013959,
		-0.519657, 0.646001, 0.559141,
		39.832745, 37.584389, 33.099602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556488, 37.022537, 32.609081>,  <40.196507, 37.132187, 32.708202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556488, 37.022537, 32.609081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579735, 37.402733, 32.731194>,  <39.593685, 37.630848, 32.804462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579735, 37.402733, 32.731194>,  <39.556488, 37.022537, 32.609081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579735, 37.402733, 32.731194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451739, 0.297741, -0.841001,
		-0.890255, -0.089029, 0.446677,
		0.058120, 0.950486, 0.305283,
		39.597172, 37.687878, 32.822777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887661, 37.286316, 32.476833>,  <39.556488, 37.022537, 32.609081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887661, 37.286316, 32.476833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102337, 37.623268, 32.496288>,  <39.231140, 37.825439, 32.507961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102337, 37.623268, 32.496288>,  <38.887661, 37.286316, 32.476833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102337, 37.623268, 32.496288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428999, 0.322047, -0.843947,
		-0.726587, 0.432068, 0.534217,
		0.536685, 0.842380, 0.048638,
		39.263344, 37.875980, 32.510880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485962, 37.948055, 32.344532>,  <38.887661, 37.286316, 32.476833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485962, 37.948055, 32.344532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857372, 38.081017, 32.278385>,  <39.080219, 38.160793, 32.238697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857372, 38.081017, 32.278385>,  <38.485962, 37.948055, 32.344532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857372, 38.081017, 32.278385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289864, 0.370738, -0.882345,
		-0.231982, 0.867216, 0.440591,
		0.928527, 0.332400, -0.165370,
		39.135929, 38.180737, 32.228775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804550, 38.195755, 32.661179>,  <38.485962, 37.948055, 32.344532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804550, 38.195755, 32.661179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.415039, 38.284313, 32.640259>,  <37.181332, 38.337448, 32.627705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.415039, 38.284313, 32.640259>,  <37.804550, 38.195755, 32.661179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415039, 38.284313, 32.640259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177732, -0.596889, 0.782391,
		0.142001, 0.771172, 0.620588,
		-0.973780, 0.221399, -0.052303,
		37.122906, 38.350731, 32.624569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592064, 38.464668, 33.306450>,  <37.804550, 38.195755, 32.661179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592064, 38.464668, 33.306450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265717, 38.305618, 33.138519>,  <37.069908, 38.210190, 33.037762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265717, 38.305618, 33.138519>,  <37.592064, 38.464668, 33.306450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265717, 38.305618, 33.138519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142309, -0.565643, 0.812278,
		-0.560454, 0.722457, 0.404904,
		-0.815867, -0.397623, -0.419829,
		37.020958, 38.186333, 33.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079082, 38.345921, 33.865715>,  <37.592064, 38.464668, 33.306450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079082, 38.345921, 33.865715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.922607, 38.123116, 33.572674>,  <36.828720, 37.989433, 33.396851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.922607, 38.123116, 33.572674>,  <37.079082, 38.345921, 33.865715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922607, 38.123116, 33.572674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254076, -0.699735, 0.667695,
		-0.884542, 0.447333, 0.132206,
		-0.391191, -0.557014, -0.732601,
		36.805248, 37.956013, 33.352894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395695, 38.160580, 34.038151>,  <37.079082, 38.345921, 33.865715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395695, 38.160580, 34.038151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535122, 37.881237, 33.788097>,  <36.618778, 37.713631, 33.638065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535122, 37.881237, 33.788097>,  <36.395695, 38.160580, 34.038151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535122, 37.881237, 33.788097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271266, -0.713590, 0.645914,
		-0.897170, -0.055568, -0.438177,
		0.348571, -0.698356, -0.625138,
		36.639694, 37.671730, 33.600555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938473, 37.584167, 34.004124>,  <36.395695, 38.160580, 34.038151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938473, 37.584167, 34.004124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282974, 37.418938, 33.885723>,  <36.489674, 37.319798, 33.814682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282974, 37.418938, 33.885723>,  <35.938473, 37.584167, 34.004124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282974, 37.418938, 33.885723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179832, -0.792515, 0.582736,
		-0.475298, -0.448651, -0.756838,
		0.861251, -0.413077, -0.295998,
		36.541348, 37.295013, 33.796925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814423, 36.909420, 34.004200>,  <35.938473, 37.584167, 34.004124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814423, 36.909420, 34.004200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212738, 36.898792, 33.969105>,  <36.451729, 36.892414, 33.948048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212738, 36.898792, 33.969105>,  <35.814423, 36.909420, 34.004200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212738, 36.898792, 33.969105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036123, -0.765928, 0.641911,
		-0.084258, -0.642377, -0.761743,
		0.995789, -0.026569, -0.087740,
		36.511475, 36.890820, 33.942783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954643, 36.263088, 33.707325>,  <35.814423, 36.909420, 34.004200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954643, 36.263088, 33.707325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.266285, 36.397072, 33.919285>,  <36.453270, 36.477463, 34.046463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.266285, 36.397072, 33.919285>,  <35.954643, 36.263088, 33.707325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266285, 36.397072, 33.919285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042736, -0.814939, 0.577969,
		0.625437, -0.472943, -0.620607,
		0.779104, 0.334961, 0.529905,
		36.500015, 36.497559, 34.078255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348141, 35.634140, 33.883533>,  <35.954643, 36.263088, 33.707325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348141, 35.634140, 33.883533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.485821, 35.913902, 34.134087>,  <36.568428, 36.081760, 34.284420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.485821, 35.913902, 34.134087>,  <36.348141, 35.634140, 33.883533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485821, 35.913902, 34.134087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086712, -0.640621, 0.762946,
		0.934883, -0.316922, -0.159856,
		0.344201, 0.699404, 0.626386,
		36.589081, 36.123722, 34.322002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853462, 35.356106, 34.177010>,  <36.348141, 35.634140, 33.883533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853462, 35.356106, 34.177010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776764, 35.655697, 34.430710>,  <36.730743, 35.835449, 34.582928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776764, 35.655697, 34.430710>,  <36.853462, 35.356106, 34.177010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776764, 35.655697, 34.430710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112290, -0.625253, 0.772301,
		0.974999, 0.219307, 0.035789,
		-0.191748, 0.748975, 0.634247,
		36.719238, 35.880390, 34.620983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418228, 35.334023, 34.693020>,  <36.853462, 35.356106, 34.177010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418228, 35.334023, 34.693020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114895, 35.529488, 34.865593>,  <36.932896, 35.646767, 34.969135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114895, 35.529488, 34.865593>,  <37.418228, 35.334023, 34.693020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114895, 35.529488, 34.865593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089455, -0.577572, 0.811424,
		0.645697, 0.653925, 0.394280,
		-0.758336, 0.488664, 0.431433,
		36.887394, 35.676086, 34.995022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666656, 35.528233, 35.341599>,  <37.418228, 35.334023, 34.693020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666656, 35.528233, 35.341599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267483, 35.511002, 35.360630>,  <37.027977, 35.500664, 35.372047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267483, 35.511002, 35.360630>,  <37.666656, 35.528233, 35.341599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267483, 35.511002, 35.360630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061648, -0.437048, 0.897323,
		-0.017864, 0.898406, 0.438802,
		-0.997938, -0.043081, 0.047578,
		36.968102, 35.498077, 35.374905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570683, 35.485741, 36.051941>,  <37.666656, 35.528233, 35.341599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570683, 35.485741, 36.051941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188370, 35.429440, 35.948662>,  <36.958981, 35.395660, 35.886696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188370, 35.429440, 35.948662>,  <37.570683, 35.485741, 36.051941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188370, 35.429440, 35.948662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156456, -0.500045, 0.851749,
		-0.248995, 0.854485, 0.455914,
		-0.955784, -0.140750, -0.258198,
		36.901634, 35.387215, 35.871201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.198143, 40.884449, 29.884386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873138, 40.670986, 29.790558>,  <36.678135, 40.542908, 29.734261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873138, 40.670986, 29.790558>,  <37.198143, 40.884449, 29.884386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873138, 40.670986, 29.790558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185409, -0.144917, 0.971917,
		-0.552667, 0.833190, 0.018802,
		-0.812516, -0.533660, -0.234572,
		36.629383, 40.510887, 29.720186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789299, 41.088421, 30.468830>,  <37.198143, 40.884449, 29.884386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789299, 41.088421, 30.468830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627132, 40.764591, 30.299017>,  <36.529831, 40.570293, 30.197128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627132, 40.764591, 30.299017>,  <36.789299, 41.088421, 30.468830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627132, 40.764591, 30.299017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016346, -0.470758, 0.882111,
		-0.913986, 0.350683, 0.204086,
		-0.405416, -0.809573, -0.424534,
		36.505508, 40.521721, 30.171658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261066, 40.865929, 30.973394>,  <36.789299, 41.088421, 30.468830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261066, 40.865929, 30.973394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321751, 40.554680, 30.729586>,  <36.358162, 40.367931, 30.583300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321751, 40.554680, 30.729586>,  <36.261066, 40.865929, 30.973394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321751, 40.554680, 30.729586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029794, -0.612780, 0.789692,
		-0.987976, -0.137961, -0.069779,
		0.151706, -0.778118, -0.609523,
		36.367264, 40.321243, 30.546728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769527, 40.371685, 31.107748>,  <36.261066, 40.865929, 30.973394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769527, 40.371685, 31.107748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112206, 40.219517, 30.968407>,  <36.317814, 40.128216, 30.884802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112206, 40.219517, 30.968407>,  <35.769527, 40.371685, 31.107748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112206, 40.219517, 30.968407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120738, -0.508688, 0.852443,
		-0.501468, -0.772355, -0.389869,
		0.856710, -0.380401, -0.348343,
		36.369213, 40.105389, 30.863899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686440, 39.656315, 31.131151>,  <35.769527, 40.371685, 31.107748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686440, 39.656315, 31.131151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084354, 39.688755, 31.106434>,  <36.323105, 39.708218, 31.091602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084354, 39.688755, 31.106434>,  <35.686440, 39.656315, 31.131151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084354, 39.688755, 31.106434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101471, -0.728138, 0.677878,
		0.009981, -0.680615, -0.732573,
		0.994789, 0.081101, -0.061795,
		36.382790, 39.713085, 31.087894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976196, 38.949230, 31.097717>,  <35.686440, 39.656315, 31.131151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976196, 38.949230, 31.097717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266998, 39.188583, 31.232422>,  <36.441479, 39.332195, 31.313244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266998, 39.188583, 31.232422>,  <35.976196, 38.949230, 31.097717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266998, 39.188583, 31.232422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322320, -0.730462, 0.602109,
		0.606282, -0.329190, -0.723917,
		0.727002, 0.598381, 0.336761,
		36.485100, 39.368099, 31.333450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610355, 38.454685, 31.097427>,  <35.976196, 38.949230, 31.097717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610355, 38.454685, 31.097427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651047, 38.769890, 31.340307>,  <36.675461, 38.959011, 31.486036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651047, 38.769890, 31.340307>,  <36.610355, 38.454685, 31.097427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651047, 38.769890, 31.340307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405516, -0.590202, 0.698011,
		0.908410, 0.175224, -0.379589,
		0.101726, 0.788009, 0.607201,
		36.681564, 39.006294, 31.522467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233521, 38.249424, 31.359083>,  <36.610355, 38.454685, 31.097427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233521, 38.249424, 31.359083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095901, 38.536129, 31.601698>,  <37.013329, 38.708153, 31.747267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095901, 38.536129, 31.601698>,  <37.233521, 38.249424, 31.359083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095901, 38.536129, 31.601698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156106, -0.593319, 0.789686,
		0.925884, 0.366375, 0.092240,
		-0.344048, 0.716759, 0.606538,
		36.992687, 38.751156, 31.783659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715584, 38.385086, 31.890291>,  <37.233521, 38.249424, 31.359083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715584, 38.385086, 31.890291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366901, 38.494240, 32.053097>,  <37.157692, 38.559731, 32.150780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366901, 38.494240, 32.053097>,  <37.715584, 38.385086, 31.890291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366901, 38.494240, 32.053097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128442, -0.674320, 0.727183,
		0.472891, 0.686170, 0.552761,
		-0.871709, 0.272881, 0.407013,
		37.105389, 38.576103, 32.175201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367146, 38.691978, 32.158867>,  <37.715584, 38.385086, 31.890291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367146, 38.691978, 32.158867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730686, 38.596973, 32.021713>,  <38.948811, 38.539970, 31.939421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730686, 38.596973, 32.021713>,  <38.367146, 38.691978, 32.158867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730686, 38.596973, 32.021713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244096, 0.363735, -0.898951,
		0.338233, 0.900713, 0.272606,
		0.908854, -0.237512, -0.342888,
		39.003342, 38.525719, 31.918846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578655, 39.299667, 31.752640>,  <38.367146, 38.691978, 32.158867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578655, 39.299667, 31.752640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827011, 39.016335, 31.618317>,  <38.976025, 38.846336, 31.537724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827011, 39.016335, 31.618317>,  <38.578655, 39.299667, 31.752640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827011, 39.016335, 31.618317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063142, 0.381797, -0.922087,
		0.781351, 0.593717, 0.192328,
		0.620889, -0.708330, -0.335806,
		39.013279, 38.803837, 31.517574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187206, 39.720081, 31.484381>,  <38.578655, 39.299667, 31.752640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187206, 39.720081, 31.484381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164154, 39.355522, 31.321390>,  <39.150322, 39.136787, 31.223597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164154, 39.355522, 31.321390>,  <39.187206, 39.720081, 31.484381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164154, 39.355522, 31.321390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125680, 0.398283, -0.908612,
		0.990396, -0.103572, 0.091592,
		-0.057627, -0.911397, -0.407475,
		39.146866, 39.082104, 31.199148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828789, 39.573483, 31.039690>,  <39.187206, 39.720081, 31.484381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828789, 39.573483, 31.039690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564331, 39.315903, 30.885696>,  <39.405655, 39.161354, 30.793301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564331, 39.315903, 30.885696>,  <39.828789, 39.573483, 31.039690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564331, 39.315903, 30.885696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219293, 0.324864, -0.919986,
		0.717493, -0.692670, -0.073569,
		-0.661146, -0.643950, -0.384986,
		39.365986, 39.122719, 30.770201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171944, 39.305367, 30.457026>,  <39.828789, 39.573483, 31.039690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171944, 39.305367, 30.457026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789490, 39.198334, 30.409361>,  <39.560017, 39.134113, 30.380762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789490, 39.198334, 30.409361>,  <40.171944, 39.305367, 30.457026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789490, 39.198334, 30.409361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103791, 0.070919, -0.992067,
		0.273911, -0.960921, -0.040036,
		-0.956138, -0.267583, -0.119161,
		39.502647, 39.118057, 30.373613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093464, 38.684525, 30.025244>,  <40.171944, 39.305367, 30.457026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093464, 38.684525, 30.025244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729839, 38.841450, 29.969097>,  <39.511665, 38.935604, 29.935410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729839, 38.841450, 29.969097>,  <40.093464, 38.684525, 30.025244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729839, 38.841450, 29.969097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060031, -0.210047, -0.975847,
		-0.412317, -0.895530, 0.167395,
		-0.909060, 0.392310, -0.140365,
		39.457123, 38.959141, 29.926987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702312, 38.225449, 29.575848>,  <40.093464, 38.684525, 30.025244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702312, 38.225449, 29.575848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513897, 38.578053, 29.562767>,  <39.400848, 38.789616, 29.554918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513897, 38.578053, 29.562767>,  <39.702312, 38.225449, 29.575848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513897, 38.578053, 29.562767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053468, -0.065537, -0.996417,
		-0.880493, -0.467598, 0.078002,
		-0.471035, 0.881508, -0.032703,
		39.372585, 38.842506, 29.552956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308468, 38.226803, 28.939878>,  <39.702312, 38.225449, 29.575848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308468, 38.226803, 28.939878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294502, 38.616749, 29.027895>,  <39.286121, 38.850716, 29.080706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294502, 38.616749, 29.027895>,  <39.308468, 38.226803, 28.939878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294502, 38.616749, 29.027895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132133, 0.213741, -0.967913,
		-0.990617, -0.062869, 0.121349,
		-0.034915, 0.974865, 0.220043,
		39.284027, 38.909210, 29.093908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701759, 38.512882, 28.671751>,  <39.308468, 38.226803, 28.939878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701759, 38.512882, 28.671751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953323, 38.821739, 28.708122>,  <39.104263, 39.007053, 28.729946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953323, 38.821739, 28.708122>,  <38.701759, 38.512882, 28.671751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953323, 38.821739, 28.708122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306392, 0.353636, -0.883780,
		-0.714557, 0.527961, 0.458983,
		0.628914, 0.772139, 0.090930,
		39.141998, 39.053379, 28.735401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427723, 39.105335, 28.309778>,  <38.701759, 38.512882, 28.671751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427723, 39.105335, 28.309778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811436, 39.216148, 28.331810>,  <39.041664, 39.282635, 28.345030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811436, 39.216148, 28.331810>,  <38.427723, 39.105335, 28.309778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811436, 39.216148, 28.331810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126878, 0.596862, -0.792249,
		-0.252351, 0.753001, 0.607707,
		0.959281, 0.277030, 0.055080,
		39.099220, 39.299255, 28.348333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445366, 39.782211, 28.019709>,  <38.427723, 39.105335, 28.309778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445366, 39.782211, 28.019709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829258, 39.669979, 28.025331>,  <39.059593, 39.602638, 28.028706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829258, 39.669979, 28.025331>,  <38.445366, 39.782211, 28.019709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829258, 39.669979, 28.025331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149310, 0.467050, -0.871533,
		0.237974, 0.838532, 0.490135,
		0.959726, -0.280585, 0.014056,
		39.117176, 39.585804, 28.029549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817963, 40.391018, 27.908831>,  <38.445366, 39.782211, 28.019709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817963, 40.391018, 27.908831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062813, 40.094364, 27.799086>,  <39.209724, 39.916370, 27.733238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062813, 40.094364, 27.799086>,  <38.817963, 40.391018, 27.908831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062813, 40.094364, 27.799086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252456, 0.512088, -0.820994,
		0.749378, 0.433288, 0.500694,
		0.612126, -0.741638, -0.274361,
		39.246452, 39.871872, 27.716778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573769, 40.606934, 27.678493>,  <38.817963, 40.391018, 27.908831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573769, 40.606934, 27.678493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520546, 40.251171, 27.503561>,  <39.488613, 40.037716, 27.398602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520546, 40.251171, 27.503561>,  <39.573769, 40.606934, 27.678493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520546, 40.251171, 27.503561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290070, 0.386986, -0.875272,
		0.947710, -0.243320, 0.206496,
		-0.133060, -0.889403, -0.437330,
		39.480629, 39.984352, 27.372362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131424, 40.569893, 27.284807>,  <39.573769, 40.606934, 27.678493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131424, 40.569893, 27.284807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882427, 40.316116, 27.101509>,  <39.733028, 40.163849, 26.991531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882427, 40.316116, 27.101509>,  <40.131424, 40.569893, 27.284807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882427, 40.316116, 27.101509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177300, 0.455977, -0.872152,
		0.762280, -0.624153, -0.171355,
		-0.622490, -0.634443, -0.458244,
		39.695679, 40.125782, 26.964035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.082420, 35.494316, 25.488506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150017, 35.780182, 25.760004>,  <35.190575, 35.951702, 25.922903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150017, 35.780182, 25.760004>,  <35.082420, 35.494316, 25.488506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150017, 35.780182, 25.760004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064795, -0.695216, 0.715875,
		0.983486, -0.076996, -0.163790,
		0.168989, 0.714666, 0.678746,
		35.200714, 35.994583, 25.963629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660503, 35.268780, 25.866751>,  <35.082420, 35.494316, 25.488506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660503, 35.268780, 25.866751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457787, 35.523628, 26.099037>,  <35.336155, 35.676537, 26.238409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457787, 35.523628, 26.099037>,  <35.660503, 35.268780, 25.866751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457787, 35.523628, 26.099037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202241, -0.566964, 0.798530,
		0.838009, 0.522135, 0.158481,
		-0.506794, 0.637124, 0.580718,
		35.305748, 35.714764, 26.273252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111362, 35.489632, 26.496208>,  <35.660503, 35.268780, 25.866751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111362, 35.489632, 26.496208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720997, 35.513592, 26.580118>,  <35.486778, 35.527969, 26.630465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720997, 35.513592, 26.580118>,  <36.111362, 35.489632, 26.496208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720997, 35.513592, 26.580118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156925, -0.475243, 0.865747,
		0.151555, 0.877813, 0.454396,
		-0.975913, 0.059902, 0.209777,
		35.428223, 35.531563, 26.643051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184433, 35.425953, 27.105339>,  <36.111362, 35.489632, 26.496208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184433, 35.425953, 27.105339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784435, 35.425938, 27.103533>,  <35.544437, 35.425930, 27.102449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784435, 35.425938, 27.103533>,  <36.184433, 35.425953, 27.105339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784435, 35.425938, 27.103533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004054, -0.432346, 0.901699,
		-0.001986, 0.901708, 0.432341,
		-0.999990, -0.000038, -0.004515,
		35.484440, 35.425926, 27.102179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930725, 35.747776, 27.731724>,  <36.184433, 35.425953, 27.105339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930725, 35.747776, 27.731724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630669, 35.524822, 27.589392>,  <35.450634, 35.391048, 27.503992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630669, 35.524822, 27.589392>,  <35.930725, 35.747776, 27.731724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630669, 35.524822, 27.589392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041398, -0.497456, 0.866501,
		-0.659983, 0.664727, 0.350086,
		-0.750139, -0.557383, -0.355831,
		35.405628, 35.357609, 27.482643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411133, 35.750221, 28.226267>,  <35.930725, 35.747776, 27.731724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411133, 35.750221, 28.226267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320087, 35.426697, 28.009375>,  <35.265461, 35.232582, 27.879240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320087, 35.426697, 28.009375>,  <35.411133, 35.750221, 28.226267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320087, 35.426697, 28.009375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144611, -0.522593, 0.840228,
		-0.962954, 0.269657, 0.001984,
		-0.227610, -0.808815, -0.542229,
		35.251804, 35.184052, 27.846706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739624, 35.570602, 28.380653>,  <35.411133, 35.750221, 28.226267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739624, 35.570602, 28.380653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870159, 35.224804, 28.227737>,  <34.948483, 35.017323, 28.135988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870159, 35.224804, 28.227737>,  <34.739624, 35.570602, 28.380653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870159, 35.224804, 28.227737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219884, -0.462764, 0.858779,
		-0.919322, -0.196196, -0.341108,
		0.326341, -0.864498, -0.382289,
		34.968063, 34.965454, 28.113050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260010, 35.030991, 28.508257>,  <34.739624, 35.570602, 28.380653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260010, 35.030991, 28.508257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609612, 34.841888, 28.463316>,  <34.819374, 34.728428, 28.436352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609612, 34.841888, 28.463316>,  <34.260010, 35.030991, 28.508257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609612, 34.841888, 28.463316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139429, -0.465486, 0.874004,
		-0.465486, -0.748217, -0.472752,
		-0.874004, 0.472752, 0.112354,
		34.871811, 34.700062, 28.429609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131866, 34.331802, 28.854372>,  <34.260010, 35.030991, 28.508257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131866, 34.331802, 28.854372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526619, 34.361313, 28.796938>,  <34.763470, 34.379021, 28.762478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526619, 34.361313, 28.796938>,  <34.131866, 34.331802, 28.854372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526619, 34.361313, 28.796938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155824, -0.202975, 0.966706,
		0.042174, -0.976401, -0.211809,
		0.986884, 0.073775, -0.143586,
		34.822685, 34.383446, 28.753862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420189, 33.799004, 29.204920>,  <34.131866, 34.331802, 28.854372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420189, 33.799004, 29.204920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.738777, 34.038628, 29.172026>,  <34.929932, 34.182404, 29.152290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.738777, 34.038628, 29.172026>,  <34.420189, 33.799004, 29.204920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738777, 34.038628, 29.172026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215613, -0.154306, 0.964210,
		0.564932, -0.785694, -0.252066,
		0.796470, 0.599061, -0.082233,
		34.977718, 34.218346, 29.147356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008606, 33.352909, 29.459185>,  <34.420189, 33.799004, 29.204920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008606, 33.352909, 29.459185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140953, 33.729294, 29.487804>,  <35.220360, 33.955124, 29.504976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140953, 33.729294, 29.487804>,  <35.008606, 33.352909, 29.459185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140953, 33.729294, 29.487804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479025, -0.232794, 0.846370,
		0.813059, -0.245759, -0.527767,
		0.330865, 0.940962, 0.071551,
		35.240211, 34.011581, 29.509270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796555, 33.294373, 29.459394>,  <35.008606, 33.352909, 29.459185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796555, 33.294373, 29.459394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676636, 33.634335, 29.632725>,  <35.604683, 33.838314, 29.736723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676636, 33.634335, 29.632725>,  <35.796555, 33.294373, 29.459394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676636, 33.634335, 29.632725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593606, -0.189390, 0.782153,
		0.746827, 0.491716, -0.447732,
		-0.299801, 0.849910, 0.433328,
		35.586697, 33.889309, 29.762724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406025, 33.488682, 29.724182>,  <35.796555, 33.294373, 29.459394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406025, 33.488682, 29.724182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130489, 33.727028, 29.889326>,  <35.965168, 33.870033, 29.988413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130489, 33.727028, 29.889326>,  <36.406025, 33.488682, 29.724182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130489, 33.727028, 29.889326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381579, -0.186207, 0.905386,
		0.616363, 0.781201, -0.099102,
		-0.688835, 0.595862, 0.412861,
		35.923840, 33.905785, 30.013184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816277, 33.998138, 30.311527>,  <36.406025, 33.488682, 29.724182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816277, 33.998138, 30.311527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430500, 33.944843, 30.402824>,  <36.199032, 33.912868, 30.457603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430500, 33.944843, 30.402824>,  <36.816277, 33.998138, 30.311527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430500, 33.944843, 30.402824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258476, -0.295424, 0.919736,
		-0.055112, 0.946030, 0.319358,
		-0.964444, -0.133235, 0.228245,
		36.141167, 33.904873, 30.471298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402748, 34.367641, 30.402594>,  <36.816277, 33.998138, 30.311527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402748, 34.367641, 30.402594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.595261, 34.072071, 30.213976>,  <37.710770, 33.894730, 30.100805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.595261, 34.072071, 30.213976>,  <37.402748, 34.367641, 30.402594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595261, 34.072071, 30.213976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018865, 0.529086, -0.848359,
		0.876364, 0.417194, 0.240699,
		0.481280, -0.738930, -0.471542,
		37.739643, 33.850391, 30.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887844, 34.709000, 30.003012>,  <37.402748, 34.367641, 30.402594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887844, 34.709000, 30.003012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851433, 34.350403, 29.829565>,  <37.829586, 34.135246, 29.725498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851433, 34.350403, 29.829565>,  <37.887844, 34.709000, 30.003012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851433, 34.350403, 29.829565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114240, 0.423147, -0.898830,
		0.989274, -0.131357, 0.063896,
		-0.091030, -0.896489, -0.433615,
		37.824123, 34.081455, 29.699480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441364, 34.643562, 29.560863>,  <37.887844, 34.709000, 30.003012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441364, 34.643562, 29.560863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192375, 34.363525, 29.420919>,  <38.042980, 34.195503, 29.336954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192375, 34.363525, 29.420919>,  <38.441364, 34.643562, 29.560863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192375, 34.363525, 29.420919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308981, 0.190883, -0.931716,
		0.719065, -0.688070, 0.097494,
		-0.622476, -0.700088, -0.349858,
		38.005630, 34.153500, 29.315962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819698, 34.474319, 29.025921>,  <38.441364, 34.643562, 29.560863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819698, 34.474319, 29.025921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.438534, 34.370907, 28.962519>,  <38.209835, 34.308857, 28.924477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.438534, 34.370907, 28.962519>,  <38.819698, 34.474319, 29.025921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438534, 34.370907, 28.962519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073808, 0.309237, -0.948116,
		0.294122, -0.915172, -0.275595,
		-0.952914, -0.258521, -0.158501,
		38.152660, 34.293346, 28.914967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858688, 33.892624, 28.451696>,  <38.819698, 34.474319, 29.025921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858688, 33.892624, 28.451696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504719, 34.078430, 28.465181>,  <38.292339, 34.189915, 28.473272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504719, 34.078430, 28.465181>,  <38.858688, 33.892624, 28.451696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504719, 34.078430, 28.465181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079672, 0.222301, -0.971717,
		-0.458876, -0.857207, -0.233728,
		-0.884921, 0.464520, 0.033713,
		38.239243, 34.217785, 28.475296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545319, 33.658897, 27.890604>,  <38.858688, 33.892624, 28.451696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545319, 33.658897, 27.890604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.318954, 33.975975, 27.981277>,  <38.183136, 34.166222, 28.035683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.318954, 33.975975, 27.981277>,  <38.545319, 33.658897, 27.890604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318954, 33.975975, 27.981277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069059, 0.228407, -0.971113,
		-0.821569, -0.565219, -0.074515,
		-0.565911, 0.792691, 0.226685,
		38.149181, 34.213783, 28.049284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083775, 33.627739, 27.406618>,  <38.545319, 33.658897, 27.890604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083775, 33.627739, 27.406618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094418, 34.004292, 27.541130>,  <38.100803, 34.230225, 27.621838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094418, 34.004292, 27.541130>,  <38.083775, 33.627739, 27.406618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094418, 34.004292, 27.541130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029460, 0.335516, -0.941574,
		-0.999212, 0.034958, -0.018807,
		0.026605, 0.941386, 0.336282,
		38.102398, 34.286709, 27.642015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647572, 34.011600, 26.906370>,  <38.083775, 33.627739, 27.406618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647572, 34.011600, 26.906370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856293, 34.280064, 27.116995>,  <37.981525, 34.441143, 27.243370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856293, 34.280064, 27.116995>,  <37.647572, 34.011600, 26.906370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856293, 34.280064, 27.116995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171500, 0.522119, -0.835452,
		-0.835650, 0.526244, 0.157338,
		0.521801, 0.671162, 0.526560,
		38.012833, 34.481411, 27.274963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337765, 34.707199, 26.776836>,  <37.647572, 34.011600, 26.906370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337765, 34.707199, 26.776836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715336, 34.752911, 26.900738>,  <37.941879, 34.780338, 26.975079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715336, 34.752911, 26.900738>,  <37.337765, 34.707199, 26.776836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715336, 34.752911, 26.900738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240732, 0.403839, -0.882588,
		-0.225953, 0.907664, 0.353683,
		0.943925, 0.114280, 0.309752,
		37.998512, 34.787193, 26.993664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516144, 35.415203, 26.824574>,  <37.337765, 34.707199, 26.776836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516144, 35.415203, 26.824574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863827, 35.226841, 26.764275>,  <38.072437, 35.113823, 26.728096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863827, 35.226841, 26.764275>,  <37.516144, 35.415203, 26.824574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863827, 35.226841, 26.764275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204496, 0.619965, -0.757512,
		0.450171, 0.627611, 0.635178,
		0.869211, -0.470901, -0.150747,
		38.124592, 35.085571, 26.719051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003601, 35.938229, 26.798990>,  <37.516144, 35.415203, 26.824574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003601, 35.938229, 26.798990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188229, 35.627945, 26.626835>,  <38.299004, 35.441776, 26.523540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188229, 35.627945, 26.626835>,  <38.003601, 35.938229, 26.798990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188229, 35.627945, 26.626835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287393, 0.589753, -0.754716,
		0.839260, 0.224663, 0.495145,
		0.461570, -0.775705, -0.430390,
		38.326698, 35.395233, 26.497717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712162, 36.233597, 26.671936>,  <38.003601, 35.938229, 26.798990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712162, 36.233597, 26.671936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653717, 35.910088, 26.444061>,  <38.618649, 35.715984, 26.307337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653717, 35.910088, 26.444061>,  <38.712162, 36.233597, 26.671936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653717, 35.910088, 26.444061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236721, 0.530552, -0.813927,
		0.960528, -0.253785, 0.113930,
		-0.146117, -0.808769, -0.569686,
		38.609882, 35.667458, 26.273155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164295, 36.485821, 26.165747>,  <38.712162, 36.233597, 26.671936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164295, 36.485821, 26.165747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970257, 36.171463, 26.012356>,  <38.853832, 35.982849, 25.920321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970257, 36.171463, 26.012356>,  <39.164295, 36.485821, 26.165747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970257, 36.171463, 26.012356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039345, 0.457702, -0.888235,
		0.873574, -0.415793, -0.252951,
		-0.485098, -0.785891, -0.383477,
		38.824726, 35.935696, 25.897312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426323, 36.395058, 25.522842>,  <39.164295, 36.485821, 26.165747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426323, 36.395058, 25.522842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066299, 36.224617, 25.486326>,  <38.850285, 36.122353, 25.464417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066299, 36.224617, 25.486326>,  <39.426323, 36.395058, 25.522842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066299, 36.224617, 25.486326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081755, 0.370879, -0.925076,
		0.428039, -0.825155, -0.368648,
		-0.900055, -0.426108, -0.091290,
		38.796284, 36.096786, 25.458939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118881, 36.168289, 25.266510>,  <39.426323, 36.395058, 25.522842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118881, 36.168289, 25.266510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.351093, 36.493805, 25.255680>,  <40.490421, 36.689114, 25.249182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.351093, 36.493805, 25.255680>,  <40.118881, 36.168289, 25.266510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351093, 36.493805, 25.255680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283745, -0.171025, 0.943525,
		0.763197, -0.555431, -0.330194,
		0.580534, 0.813786, -0.027075,
		40.525253, 36.737942, 25.247557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680115, 35.919983, 25.436213>,  <40.118881, 36.168289, 25.266510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680115, 35.919983, 25.436213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.727467, 36.310448, 25.508989>,  <40.755878, 36.544727, 25.552656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.727467, 36.310448, 25.508989>,  <40.680115, 35.919983, 25.436213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727467, 36.310448, 25.508989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242269, -0.206087, 0.948069,
		0.962961, -0.068148, -0.260888,
		0.118375, 0.976158, 0.181943,
		40.762978, 36.603294, 25.563572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260754, 35.881790, 25.810890>,  <40.680115, 35.919983, 25.436213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260754, 35.881790, 25.810890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.133308, 36.254555, 25.880211>,  <41.056843, 36.478214, 25.921804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.133308, 36.254555, 25.880211>,  <41.260754, 35.881790, 25.810890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133308, 36.254555, 25.880211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473808, -0.001776, 0.880626,
		0.820971, 0.362689, -0.440980,
		-0.318610, 0.931908, 0.173303,
		41.037724, 36.534126, 25.932201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895733, 36.357685, 26.011602>,  <41.260754, 35.881790, 25.810890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895733, 36.357685, 26.011602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.562122, 36.519836, 26.161310>,  <41.361958, 36.617126, 26.251135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.562122, 36.519836, 26.161310>,  <41.895733, 36.357685, 26.011602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562122, 36.519836, 26.161310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410738, 0.003275, 0.911748,
		0.368373, 0.914145, -0.169234,
		-0.834024, 0.405374, 0.374267,
		41.311916, 36.641449, 26.273590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158958, 36.938141, 26.369608>,  <41.895733, 36.357685, 26.011602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158958, 36.938141, 26.369608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.792366, 36.857651, 26.507921>,  <41.572411, 36.809357, 26.590910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.792366, 36.857651, 26.507921>,  <42.158958, 36.938141, 26.369608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792366, 36.857651, 26.507921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350672, 0.011989, 0.936422,
		-0.192576, 0.979472, 0.059576,
		-0.916484, -0.201224, 0.345783,
		41.517422, 36.797283, 26.611656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970387, 37.442207, 26.914213>,  <42.158958, 36.938141, 26.369608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970387, 37.442207, 26.914213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.729557, 37.124641, 26.948175>,  <41.585060, 36.934101, 26.968554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.729557, 37.124641, 26.948175>,  <41.970387, 37.442207, 26.914213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729557, 37.124641, 26.948175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176432, -0.028576, 0.983898,
		-0.778705, 0.607358, 0.157276,
		-0.602072, -0.793914, 0.084905,
		41.548935, 36.886467, 26.973646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559204, 37.538612, 27.498140>,  <41.970387, 37.442207, 26.914213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559204, 37.538612, 27.498140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.531246, 37.146526, 27.424057>,  <41.514469, 36.911274, 27.379606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.531246, 37.146526, 27.424057>,  <41.559204, 37.538612, 27.498140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531246, 37.146526, 27.424057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061428, -0.189540, 0.979950,
		-0.995661, 0.057118, 0.073460,
		-0.069896, -0.980210, -0.185209,
		41.510277, 36.852463, 27.368494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244606, 37.359928, 28.078854>,  <41.559204, 37.538612, 27.498140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244606, 37.359928, 28.078854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.343468, 36.997272, 27.942081>,  <41.402786, 36.779678, 27.860018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.343468, 36.997272, 27.942081>,  <41.244606, 37.359928, 28.078854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343468, 36.997272, 27.942081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035686, -0.344122, 0.938246,
		-0.968319, -0.244094, -0.052697,
		0.247155, -0.906641, -0.341931,
		41.417614, 36.725281, 27.839502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709988, 36.816685, 28.306047>,  <41.244606, 37.359928, 28.078854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709988, 36.816685, 28.306047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063629, 36.646797, 28.228096>,  <41.275814, 36.544865, 28.181324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063629, 36.646797, 28.228096>,  <40.709988, 36.816685, 28.306047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063629, 36.646797, 28.228096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074344, -0.283885, 0.955972,
		-0.461345, -0.859663, -0.219407,
		0.884100, -0.424722, -0.194880,
		41.328861, 36.519382, 28.169632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787624, 36.177910, 28.637278>,  <40.709988, 36.816685, 28.306047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787624, 36.177910, 28.637278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.170532, 36.262272, 28.558117>,  <41.400276, 36.312889, 28.510620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.170532, 36.262272, 28.558117>,  <40.787624, 36.177910, 28.637278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170532, 36.262272, 28.558117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233882, -0.162000, 0.958674,
		0.170125, -0.963990, -0.204403,
		0.957265, 0.210901, -0.197900,
		41.457710, 36.325542, 28.498747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162315, 35.555820, 28.747707>,  <40.787624, 36.177910, 28.637278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162315, 35.555820, 28.747707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422508, 35.855713, 28.796326>,  <41.578625, 36.035648, 28.825497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422508, 35.855713, 28.796326>,  <41.162315, 35.555820, 28.747707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422508, 35.855713, 28.796326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233849, -0.349953, 0.907109,
		0.722626, -0.561634, -0.402962,
		0.650482, 0.749733, 0.121547,
		41.617653, 36.080631, 28.832790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572136, 35.262455, 29.355261>,  <41.162315, 35.555820, 28.747707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572136, 35.262455, 29.355261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.754086, 35.617207, 29.322918>,  <41.863255, 35.830055, 29.303513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.754086, 35.617207, 29.322918>,  <41.572136, 35.262455, 29.355261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754086, 35.617207, 29.322918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478880, -0.167039, 0.861842,
		0.750841, -0.430753, -0.500690,
		0.454876, 0.886876, -0.080859,
		41.890549, 35.883270, 29.298660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355389, 35.232552, 29.399076>,  <41.572136, 35.262455, 29.355261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355389, 35.232552, 29.399076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246025, 35.600761, 29.510706>,  <42.180408, 35.821686, 29.577684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.246025, 35.600761, 29.510706>,  <42.355389, 35.232552, 29.399076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246025, 35.600761, 29.510706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373660, -0.165704, 0.912645,
		0.886356, 0.353804, -0.298658,
		-0.273408, 0.920524, 0.279075,
		42.164001, 35.876919, 29.594429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945919, 35.455521, 29.867701>,  <42.355389, 35.232552, 29.399076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945919, 35.455521, 29.867701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.635883, 35.697319, 29.941263>,  <42.449863, 35.842400, 29.985401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.635883, 35.697319, 29.941263>,  <42.945919, 35.455521, 29.867701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635883, 35.697319, 29.941263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117969, -0.147497, 0.982002,
		0.620743, 0.782833, 0.043011,
		-0.775088, 0.604497, 0.183907,
		42.403358, 35.878670, 29.996435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.600651, 40.410770, 26.748856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233002, 40.269482, 26.679068>,  <40.012413, 40.184708, 26.637196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233002, 40.269482, 26.679068>,  <40.600651, 40.410770, 26.748856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233002, 40.269482, 26.679068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135635, 0.132061, -0.981918,
		0.369880, -0.926170, -0.073471,
		-0.919125, -0.353227, -0.174468,
		39.957264, 40.163513, 26.626728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758873, 40.012478, 26.213417>,  <40.600651, 40.410770, 26.748856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758873, 40.012478, 26.213417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.364334, 40.077950, 26.206196>,  <40.127609, 40.117233, 26.201862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.364334, 40.077950, 26.206196>,  <40.758873, 40.012478, 26.213417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364334, 40.077950, 26.206196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032734, 0.087444, -0.995631,
		-0.161388, -0.982630, -0.091609,
		-0.986348, 0.163681, -0.018053,
		40.068428, 40.127052, 26.200779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466961, 39.682705, 25.684023>,  <40.758873, 40.012478, 26.213417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466961, 39.682705, 25.684023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164108, 39.940601, 25.726089>,  <39.982399, 40.095341, 25.751329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164108, 39.940601, 25.726089>,  <40.466961, 39.682705, 25.684023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164108, 39.940601, 25.726089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064386, 0.086549, -0.994165,
		-0.650085, -0.759482, -0.024016,
		-0.757129, 0.644745, 0.105164,
		39.936970, 40.134026, 25.757639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839714, 39.369900, 25.286531>,  <40.466961, 39.682705, 25.684023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839714, 39.369900, 25.286531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829136, 39.767998, 25.324041>,  <39.822788, 40.006855, 25.346548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829136, 39.767998, 25.324041>,  <39.839714, 39.369900, 25.286531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829136, 39.767998, 25.324041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124698, 0.089790, -0.988123,
		-0.991842, -0.037826, 0.121730,
		-0.026447, 0.995242, 0.093774,
		39.821201, 40.066570, 25.352173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241344, 39.550442, 25.007780>,  <39.839714, 39.369900, 25.286531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241344, 39.550442, 25.007780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.452736, 39.889999, 25.011610>,  <39.579571, 40.093735, 25.013908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.452736, 39.889999, 25.011610>,  <39.241344, 39.550442, 25.007780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452736, 39.889999, 25.011610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272950, 0.180583, -0.944928,
		-0.803870, 0.496763, 0.327140,
		0.528481, 0.848891, 0.009574,
		39.611279, 40.144669, 25.014482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864834, 40.001392, 24.607084>,  <39.241344, 39.550442, 25.007780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864834, 40.001392, 24.607084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.219158, 40.187000, 24.605042>,  <39.431751, 40.298363, 24.603817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.219158, 40.187000, 24.605042>,  <38.864834, 40.001392, 24.607084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219158, 40.187000, 24.605042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201806, 0.375295, -0.904670,
		-0.417866, 0.802398, 0.426082,
		0.885812, 0.464017, -0.005106,
		39.484901, 40.326206, 24.603510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669773, 40.672527, 24.387676>,  <38.864834, 40.001392, 24.607084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669773, 40.672527, 24.387676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060032, 40.616074, 24.320511>,  <39.294186, 40.582199, 24.280210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060032, 40.616074, 24.320511>,  <38.669773, 40.672527, 24.387676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060032, 40.616074, 24.320511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115246, 0.321518, -0.939864,
		0.186639, 0.936326, 0.297422,
		0.975646, -0.141138, -0.167916,
		39.352726, 40.573730, 24.270136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872372, 41.244499, 24.088196>,  <38.669773, 40.672527, 24.387676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872372, 41.244499, 24.088196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156818, 40.979778, 23.993254>,  <39.327484, 40.820946, 23.936289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156818, 40.979778, 23.993254>,  <38.872372, 41.244499, 24.088196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156818, 40.979778, 23.993254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003143, 0.340582, -0.940209,
		0.703071, 0.667849, 0.244273,
		0.711113, -0.661802, -0.237354,
		39.370152, 40.781239, 23.922047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199020, 41.588444, 23.641237>,  <38.872372, 41.244499, 24.088196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199020, 41.588444, 23.641237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.317493, 41.210297, 23.586760>,  <39.388577, 40.983406, 23.554073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.317493, 41.210297, 23.586760>,  <39.199020, 41.588444, 23.641237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317493, 41.210297, 23.586760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053306, 0.126007, -0.990596,
		0.953642, 0.300657, -0.013073,
		0.296183, -0.945371, -0.136193,
		39.406349, 40.926685, 23.545902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736618, 41.665977, 23.179890>,  <39.199020, 41.588444, 23.641237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736618, 41.665977, 23.179890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561371, 41.307568, 23.151079>,  <39.456223, 41.092522, 23.133793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561371, 41.307568, 23.151079>,  <39.736618, 41.665977, 23.179890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561371, 41.307568, 23.151079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228246, 0.188385, -0.955204,
		0.869456, -0.402057, -0.287049,
		-0.438122, -0.896026, -0.072024,
		39.429935, 41.038761, 23.129473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983414, 41.470200, 22.426874>,  <39.736618, 41.665977, 23.179890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983414, 41.470200, 22.426874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664581, 41.252815, 22.532181>,  <39.473282, 41.122383, 22.595366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664581, 41.252815, 22.532181>,  <39.983414, 41.470200, 22.426874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664581, 41.252815, 22.532181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255509, -0.091499, -0.962467,
		0.547156, -0.834430, -0.065929,
		-0.797079, -0.543465, 0.263269,
		39.425457, 41.089775, 22.611162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061333, 40.888382, 22.111769>,  <39.983414, 41.470200, 22.426874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061333, 40.888382, 22.111769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665993, 40.931671, 22.154568>,  <39.428787, 40.957645, 22.180248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665993, 40.931671, 22.154568>,  <40.061333, 40.888382, 22.111769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665993, 40.931671, 22.154568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127040, -0.199572, -0.971613,
		-0.083793, -0.973889, 0.210996,
		-0.988352, 0.108219, 0.107000,
		39.369488, 40.964138, 22.186668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944679, 40.378101, 21.741240>,  <40.061333, 40.888382, 22.111769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944679, 40.378101, 21.741240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123959, 40.372986, 22.098776>,  <40.231525, 40.369919, 22.313297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123959, 40.372986, 22.098776>,  <39.944679, 40.378101, 21.741240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123959, 40.372986, 22.098776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671877, -0.654738, -0.346265,
		0.589660, 0.755748, -0.284862,
		0.448199, -0.012787, 0.893842,
		40.258419, 40.369148, 22.366928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391277, 40.036755, 21.516790>,  <39.944679, 40.378101, 21.741240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391277, 40.036755, 21.516790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.413628, 40.326527, 21.241961>,  <39.427040, 40.500389, 21.077063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.413628, 40.326527, 21.241961>,  <39.391277, 40.036755, 21.516790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413628, 40.326527, 21.241961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887421, 0.351400, 0.298333,
		0.457561, 0.593054, 0.662514,
		0.055880, 0.724434, -0.687075,
		39.430393, 40.543858, 21.035837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845219, 39.849106, 20.875996>,  <39.391277, 40.036755, 21.516790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845219, 39.849106, 20.875996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775333, 39.528046, 20.647881>,  <38.733402, 39.335411, 20.511011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775333, 39.528046, 20.647881>,  <38.845219, 39.849106, 20.875996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775333, 39.528046, 20.647881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320761, -0.594001, 0.737750,
		-0.930906, -0.054029, 0.361241,
		-0.174717, -0.802648, -0.570289,
		38.722919, 39.287251, 20.476793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382267, 39.375027, 21.227453>,  <38.845219, 39.849106, 20.875996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382267, 39.375027, 21.227453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608662, 39.175777, 20.964689>,  <38.744499, 39.056229, 20.807032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.608662, 39.175777, 20.964689>,  <38.382267, 39.375027, 21.227453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608662, 39.175777, 20.964689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272440, -0.639041, 0.719307,
		-0.778100, -0.586085, -0.225977,
		0.565983, -0.498127, -0.656911,
		38.778458, 39.026340, 20.767616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227955, 38.713356, 21.316389>,  <38.382267, 39.375027, 21.227453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227955, 38.713356, 21.316389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593491, 38.710529, 21.153982>,  <38.812813, 38.708836, 21.056538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593491, 38.710529, 21.153982>,  <38.227955, 38.713356, 21.316389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593491, 38.710529, 21.153982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308258, -0.638799, 0.704920,
		-0.264343, -0.769341, -0.581581,
		0.913838, -0.007063, -0.406018,
		38.867641, 38.708408, 21.032177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381794, 38.043133, 21.381472>,  <38.227955, 38.713356, 21.316389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381794, 38.043133, 21.381472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728333, 38.238686, 21.340593>,  <38.936256, 38.356018, 21.316067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728333, 38.238686, 21.340593>,  <38.381794, 38.043133, 21.381472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728333, 38.238686, 21.340593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453759, -0.684941, 0.570052,
		0.208689, -0.540233, -0.815228,
		0.866344, 0.488880, -0.102195,
		38.988235, 38.385349, 21.309935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941738, 37.527779, 21.278227>,  <38.381794, 38.043133, 21.381472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941738, 37.527779, 21.278227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.127125, 37.866474, 21.382715>,  <39.238358, 38.069691, 21.445408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.127125, 37.866474, 21.382715>,  <38.941738, 37.527779, 21.278227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127125, 37.866474, 21.382715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576092, -0.511913, 0.637231,
		0.673288, -0.144849, -0.725053,
		0.463466, 0.846737, 0.261219,
		39.266163, 38.120495, 21.461081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622257, 37.364117, 21.363773>,  <38.941738, 37.527779, 21.278227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622257, 37.364117, 21.363773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628681, 37.713402, 21.558605>,  <39.632534, 37.922974, 21.675505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628681, 37.713402, 21.558605>,  <39.622257, 37.364117, 21.363773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628681, 37.713402, 21.558605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597898, -0.398838, 0.695304,
		0.801412, 0.280057, -0.528495,
		0.016059, 0.873210, 0.487079,
		39.633499, 37.975365, 21.704729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367184, 37.558418, 21.565722>,  <39.622257, 37.364117, 21.363773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367184, 37.558418, 21.565722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112167, 37.764191, 21.795122>,  <39.959156, 37.887653, 21.932762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112167, 37.764191, 21.795122>,  <40.367184, 37.558418, 21.565722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112167, 37.764191, 21.795122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521675, -0.259517, 0.812715,
		0.566916, 0.817322, -0.102911,
		-0.637543, 0.514427, 0.573501,
		39.920906, 37.918518, 21.967173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776550, 37.882797, 22.069944>,  <40.367184, 37.558418, 21.565722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776550, 37.882797, 22.069944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.415073, 37.900108, 22.240341>,  <40.198189, 37.910496, 22.342579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.415073, 37.900108, 22.240341>,  <40.776550, 37.882797, 22.069944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415073, 37.900108, 22.240341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416159, -0.145351, 0.897599,
		0.100764, 0.988433, 0.113342,
		-0.903691, 0.043278, 0.425991,
		40.143967, 37.913090, 22.368139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820328, 38.304821, 22.674133>,  <40.776550, 37.882797, 22.069944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820328, 38.304821, 22.674133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514381, 38.059238, 22.752153>,  <40.330814, 37.911888, 22.798965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514381, 38.059238, 22.752153>,  <40.820328, 38.304821, 22.674133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514381, 38.059238, 22.752153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315284, -0.092732, 0.944456,
		-0.561767, 0.783874, 0.264497,
		-0.764862, -0.613956, 0.195049,
		40.284924, 37.875053, 22.810669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671162, 38.513763, 23.299000>,  <40.820328, 38.304821, 22.674133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671162, 38.513763, 23.299000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.506729, 38.149975, 23.274096>,  <40.408070, 37.931702, 23.259153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.506729, 38.149975, 23.274096>,  <40.671162, 38.513763, 23.299000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506729, 38.149975, 23.274096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301081, -0.199920, 0.932407,
		-0.860445, 0.364547, 0.356007,
		-0.411079, -0.909471, -0.062262,
		40.383404, 37.877132, 23.255417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390091, 38.336220, 24.000620>,  <40.671162, 38.513763, 23.299000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390091, 38.336220, 24.000620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.388119, 37.960533, 23.863306>,  <40.386936, 37.735123, 23.780918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.388119, 37.960533, 23.863306>,  <40.390091, 38.336220, 24.000620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388119, 37.960533, 23.863306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002050, -0.343280, 0.939231,
		-0.999986, 0.005337, -0.000232,
		-0.004934, -0.939218, -0.343286,
		40.386639, 37.678768, 23.760321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019306, 38.000328, 24.490824>,  <40.390091, 38.336220, 24.000620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019306, 38.000328, 24.490824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.192715, 37.689663, 24.308025>,  <40.296761, 37.503262, 24.198347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.192715, 37.689663, 24.308025>,  <40.019306, 38.000328, 24.490824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192715, 37.689663, 24.308025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187535, -0.418267, 0.888754,
		-0.881412, -0.471000, -0.035677,
		0.433525, -0.776667, -0.456995,
		40.322773, 37.456661, 24.170927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661674, 37.408829, 24.640532>,  <40.019306, 38.000328, 24.490824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661674, 37.408829, 24.640532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.041603, 37.327988, 24.545031>,  <40.269558, 37.279484, 24.487730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.041603, 37.327988, 24.545031>,  <39.661674, 37.408829, 24.640532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041603, 37.327988, 24.545031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125469, -0.453031, 0.882621,
		-0.286538, -0.868285, -0.404940,
		0.949818, -0.202097, -0.238753,
		40.326550, 37.267357, 24.473404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737621, 36.769501, 25.000902>,  <39.661674, 37.408829, 24.640532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737621, 36.769501, 25.000902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.117977, 36.847687, 24.904894>,  <40.346191, 36.894596, 24.847290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.117977, 36.847687, 24.904894>,  <39.737621, 36.769501, 25.000902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117977, 36.847687, 24.904894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283764, -0.240670, 0.928200,
		0.123664, -0.950722, -0.284315,
		0.950887, 0.195463, -0.240018,
		40.403244, 36.906326, 24.832888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344765, 36.164772, 24.690571>,  <39.737621, 36.769501, 25.000902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344765, 36.164772, 24.690571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996849, 36.163483, 24.887934>,  <38.788097, 36.162708, 25.006351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996849, 36.163483, 24.887934>,  <39.344765, 36.164772, 24.690571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996849, 36.163483, 24.887934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467534, 0.325002, -0.822062,
		-0.157708, -0.945708, -0.284191,
		-0.869793, -0.003223, 0.493406,
		38.735912, 36.162514, 25.035955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794540, 35.819241, 24.237448>,  <39.344765, 36.164772, 24.690571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794540, 35.819241, 24.237448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596230, 36.037727, 24.507515>,  <38.477242, 36.168819, 24.669556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596230, 36.037727, 24.507515>,  <38.794540, 35.819241, 24.237448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596230, 36.037727, 24.507515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576367, 0.374592, -0.726279,
		-0.649617, -0.749219, 0.129105,
		-0.495781, 0.546215, 0.675167,
		38.447495, 36.201591, 24.710066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059845, 35.740597, 24.131506>,  <38.794540, 35.819241, 24.237448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059845, 35.740597, 24.131506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080433, 36.090595, 24.324059>,  <38.092785, 36.300594, 24.439590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080433, 36.090595, 24.324059>,  <38.059845, 35.740597, 24.131506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080433, 36.090595, 24.324059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587688, 0.416261, -0.693793,
		-0.807449, -0.247191, 0.535652,
		0.051472, 0.874999, 0.481381,
		38.095875, 36.353096, 24.468473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319660, 35.918663, 24.247131>,  <38.059845, 35.740597, 24.131506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319660, 35.918663, 24.247131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541718, 36.250439, 24.271957>,  <37.674950, 36.449505, 24.286854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541718, 36.250439, 24.271957>,  <37.319660, 35.918663, 24.247131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541718, 36.250439, 24.271957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627305, 0.466517, -0.623578,
		-0.546174, 0.307239, 0.779293,
		0.555141, 0.829437, 0.062067,
		37.708260, 36.499271, 24.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816307, 36.433907, 24.491367>,  <37.319660, 35.918663, 24.247131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816307, 36.433907, 24.491367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099133, 36.660076, 24.321491>,  <37.268826, 36.795776, 24.219564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099133, 36.660076, 24.321491>,  <36.816307, 36.433907, 24.491367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099133, 36.660076, 24.321491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694046, 0.439771, -0.570001,
		-0.135524, 0.697781, 0.703374,
		0.707060, 0.565423, -0.424693,
		37.311249, 36.829704, 24.194084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484856, 37.090885, 24.241285>,  <36.816307, 36.433907, 24.491367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484856, 37.090885, 24.241285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.821404, 37.080227, 24.025362>,  <37.023331, 37.073830, 23.895807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.821404, 37.080227, 24.025362>,  <36.484856, 37.090885, 24.241285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821404, 37.080227, 24.025362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460626, 0.487099, -0.741996,
		0.282714, 0.872940, 0.397554,
		0.841366, -0.026649, -0.539808,
		37.073814, 37.072231, 23.863419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519360, 37.702850, 23.940660>,  <36.484856, 37.090885, 24.241285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519360, 37.702850, 23.940660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772980, 37.505157, 23.702768>,  <36.925152, 37.386539, 23.560032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772980, 37.505157, 23.702768>,  <36.519360, 37.702850, 23.940660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772980, 37.505157, 23.702768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411778, 0.435188, -0.800656,
		0.654534, 0.752556, 0.072417,
		0.634054, -0.494237, -0.594732,
		36.963196, 37.356888, 23.524349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216301, 38.353298, 24.351814>,  <36.519360, 37.702850, 23.940660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216301, 38.353298, 24.351814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820293, 38.358803, 24.295698>,  <35.582691, 38.362106, 24.262028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820293, 38.358803, 24.295698>,  <36.216301, 38.353298, 24.351814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820293, 38.358803, 24.295698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117926, -0.626126, 0.770753,
		-0.077229, 0.779600, 0.621498,
		-0.990015, 0.013766, -0.140290,
		35.523289, 38.362934, 24.253611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857983, 38.433548, 25.024065>,  <36.216301, 38.353298, 24.351814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857983, 38.433548, 25.024065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578293, 38.288868, 24.777405>,  <35.410480, 38.202061, 24.629410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578293, 38.288868, 24.777405>,  <35.857983, 38.433548, 25.024065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578293, 38.288868, 24.777405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217277, -0.714241, 0.665320,
		-0.681084, 0.599192, 0.420825,
		-0.699224, -0.361703, -0.616649,
		35.368526, 38.180359, 24.592409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362991, 38.383022, 25.439325>,  <35.857983, 38.433548, 25.024065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362991, 38.383022, 25.439325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310867, 38.115475, 25.146578>,  <35.279591, 37.954948, 24.970928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310867, 38.115475, 25.146578>,  <35.362991, 38.383022, 25.439325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310867, 38.115475, 25.146578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138025, -0.718739, 0.681442,
		-0.981819, 0.189817, 0.001341,
		-0.130314, -0.668867, -0.731871,
		35.271774, 37.914814, 24.927017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741737, 38.020195, 25.603222>,  <35.362991, 38.383022, 25.439325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741737, 38.020195, 25.603222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941681, 37.759491, 25.375063>,  <35.061646, 37.603069, 25.238169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941681, 37.759491, 25.375063>,  <34.741737, 38.020195, 25.603222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941681, 37.759491, 25.375063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249441, -0.739002, 0.625824,
		-0.829411, -0.170542, -0.531971,
		0.499857, -0.651760, -0.570396,
		35.091637, 37.563961, 25.203945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292088, 37.418114, 25.589880>,  <34.741737, 38.020195, 25.603222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292088, 37.418114, 25.589880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640182, 37.268902, 25.461170>,  <34.849037, 37.179375, 25.383944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640182, 37.268902, 25.461170>,  <34.292088, 37.418114, 25.589880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640182, 37.268902, 25.461170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142040, -0.815420, 0.561173,
		-0.471719, -0.442646, -0.762591,
		0.870233, -0.373034, -0.321775,
		34.901253, 37.156990, 25.364637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195152, 36.604141, 25.345322>,  <34.292088, 37.418114, 25.589880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195152, 36.604141, 25.345322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578484, 36.674274, 25.435535>,  <34.808483, 36.716354, 25.489664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578484, 36.674274, 25.435535>,  <34.195152, 36.604141, 25.345322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578484, 36.674274, 25.435535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004261, -0.780630, 0.624978,
		0.285641, -0.599895, -0.747352,
		0.958327, 0.175335, 0.225536,
		34.865982, 36.726875, 25.503197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438042, 35.947884, 25.424549>,  <34.195152, 36.604141, 25.345322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438042, 35.947884, 25.424549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722641, 36.163795, 25.604507>,  <34.893402, 36.293343, 25.712482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722641, 36.163795, 25.604507>,  <34.438042, 35.947884, 25.424549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722641, 36.163795, 25.604507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051927, -0.678885, 0.732406,
		0.700768, -0.497743, -0.511054,
		0.711497, 0.539784, 0.449894,
		34.936089, 36.325729, 25.739475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.798103, 40.832962, 22.947598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.596481, 40.568546, 23.169931>,  <35.475510, 40.409897, 23.303331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.596481, 40.568546, 23.169931>,  <35.798103, 40.832962, 22.947598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596481, 40.568546, 23.169931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720469, 0.033085, 0.692698,
		-0.476293, 0.749618, 0.459584,
		-0.504054, -0.661043, 0.555835,
		35.445267, 40.370232, 23.336681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292336, 41.323780, 23.066603>,  <35.798103, 40.832962, 22.947598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292336, 41.323780, 23.066603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.672508, 41.393478, 23.169609>,  <36.900612, 41.435295, 23.231413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.672508, 41.393478, 23.169609>,  <36.292336, 41.323780, 23.066603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672508, 41.393478, 23.169609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209849, -0.251665, 0.944790,
		0.229432, -0.952000, -0.202627,
		0.950434, 0.174244, 0.257516,
		36.957638, 41.445751, 23.246864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413868, 40.722797, 23.540007>,  <36.292336, 41.323780, 23.066603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413868, 40.722797, 23.540007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.661266, 41.026577, 23.620699>,  <36.809708, 41.208843, 23.669113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.661266, 41.026577, 23.620699>,  <36.413868, 40.722797, 23.540007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661266, 41.026577, 23.620699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092959, -0.184203, 0.978482,
		0.780268, -0.623943, -0.043332,
		0.618499, 0.759450, 0.201729,
		36.846817, 41.254414, 23.681217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804237, 40.468689, 24.006052>,  <36.413868, 40.722797, 23.540007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804237, 40.468689, 24.006052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868988, 40.859753, 24.059687>,  <36.907837, 41.094391, 24.091867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868988, 40.859753, 24.059687>,  <36.804237, 40.468689, 24.006052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868988, 40.859753, 24.059687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189864, -0.164195, 0.967983,
		0.968374, -0.131234, -0.212201,
		0.161875, 0.977659, 0.134085,
		36.917549, 41.153049, 24.099913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389725, 40.368458, 24.455942>,  <36.804237, 40.468689, 24.006052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389725, 40.368458, 24.455942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.198895, 40.718220, 24.491287>,  <37.084396, 40.928078, 24.512495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.198895, 40.718220, 24.491287>,  <37.389725, 40.368458, 24.455942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198895, 40.718220, 24.491287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023632, -0.087744, 0.995863,
		0.878543, 0.477194, 0.021196,
		-0.477079, 0.874407, 0.088364,
		37.055771, 40.980541, 24.517796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758492, 40.729855, 25.034475>,  <37.389725, 40.368458, 24.455942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758492, 40.729855, 25.034475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415142, 40.928165, 24.981697>,  <37.209133, 41.047150, 24.950029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415142, 40.928165, 24.981697>,  <37.758492, 40.729855, 25.034475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415142, 40.928165, 24.981697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178097, -0.046763, 0.982901,
		0.481126, 0.867192, 0.128436,
		-0.858370, 0.495773, -0.131945,
		37.157631, 41.076897, 24.942114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717598, 41.205849, 25.497467>,  <37.758492, 40.729855, 25.034475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717598, 41.205849, 25.497467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329067, 41.177811, 25.406591>,  <37.095951, 41.160988, 25.352066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329067, 41.177811, 25.406591>,  <37.717598, 41.205849, 25.497467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329067, 41.177811, 25.406591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220832, -0.088104, 0.971324,
		-0.088104, 0.993642, 0.070098,
		-0.971324, -0.070098, -0.227190,
		37.037670, 41.156780, 25.338434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446987, 41.501472, 26.037817>,  <37.717598, 41.205849, 25.497467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446987, 41.501472, 26.037817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.136078, 41.317745, 25.865833>,  <36.949532, 41.207508, 25.762644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.136078, 41.317745, 25.865833>,  <37.446987, 41.501472, 26.037817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136078, 41.317745, 25.865833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410491, -0.147660, 0.899829,
		-0.476798, 0.875911, -0.073774,
		-0.777277, -0.459321, -0.429958,
		36.902893, 41.179951, 25.736845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836254, 41.871841, 26.222708>,  <37.446987, 41.501472, 26.037817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836254, 41.871841, 26.222708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.731079, 41.492836, 26.149952>,  <36.667976, 41.265434, 26.106298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.731079, 41.492836, 26.149952>,  <36.836254, 41.871841, 26.222708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731079, 41.492836, 26.149952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274369, -0.107309, 0.955619,
		-0.924980, 0.301169, -0.231753,
		-0.262934, -0.947513, -0.181890,
		36.652199, 41.208584, 26.095385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187355, 41.805992, 26.512600>,  <36.836254, 41.871841, 26.222708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187355, 41.805992, 26.512600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339157, 41.437664, 26.476677>,  <36.430237, 41.216667, 26.455124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339157, 41.437664, 26.476677>,  <36.187355, 41.805992, 26.512600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339157, 41.437664, 26.476677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417558, -0.257091, 0.871521,
		-0.825604, -0.293246, -0.482064,
		0.379505, -0.920821, -0.089808,
		36.453007, 41.161419, 26.449734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653278, 41.481319, 26.957802>,  <36.187355, 41.805992, 26.512600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653278, 41.481319, 26.957802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938564, 41.205952, 26.905037>,  <36.109737, 41.040730, 26.873377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938564, 41.205952, 26.905037>,  <35.653278, 41.481319, 26.957802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938564, 41.205952, 26.905037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223272, -0.401515, 0.888220,
		-0.664433, -0.604040, -0.440072,
		0.713216, -0.688419, -0.131915,
		36.152531, 40.999428, 26.865463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430195, 40.826504, 26.971207>,  <35.653278, 41.481319, 26.957802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430195, 40.826504, 26.971207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.813206, 40.796211, 27.082497>,  <36.043011, 40.778038, 27.149271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.813206, 40.796211, 27.082497>,  <35.430195, 40.826504, 26.971207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813206, 40.796211, 27.082497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282371, -0.441689, 0.851574,
		0.058403, -0.893967, -0.444311,
		0.957526, -0.075726, 0.278227,
		36.100464, 40.773495, 27.165964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829044, 40.361286, 27.137226>,  <35.430195, 40.826504, 26.971207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829044, 40.361286, 27.137226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.442635, 40.261745, 27.165125>,  <35.210789, 40.202019, 27.181864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.442635, 40.261745, 27.165125>,  <35.829044, 40.361286, 27.137226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442635, 40.261745, 27.165125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207402, 0.585465, -0.783719,
		0.154197, -0.771559, -0.617188,
		-0.966027, -0.248853, 0.069746,
		35.152828, 40.187088, 27.186049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586552, 40.070526, 26.433598>,  <35.829044, 40.361286, 27.137226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586552, 40.070526, 26.433598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.259720, 40.192654, 26.629213>,  <35.063622, 40.265930, 26.746582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.259720, 40.192654, 26.629213>,  <35.586552, 40.070526, 26.433598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259720, 40.192654, 26.629213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216300, 0.623949, -0.750934,
		-0.534407, -0.719354, -0.443778,
		-0.817082, 0.305316, 0.489039,
		35.014595, 40.284248, 26.775925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084766, 40.100315, 25.913544>,  <35.586552, 40.070526, 26.433598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084766, 40.100315, 25.913544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.926025, 40.330158, 26.199856>,  <34.830780, 40.468063, 26.371643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.926025, 40.330158, 26.199856>,  <35.084766, 40.100315, 25.913544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926025, 40.330158, 26.199856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206819, 0.703784, -0.679643,
		-0.894280, -0.417752, -0.160455,
		-0.396848, 0.574606, 0.715779,
		34.806973, 40.502541, 26.414589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493893, 40.218307, 25.672085>,  <35.084766, 40.100315, 25.913544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493893, 40.218307, 25.672085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543522, 40.517029, 25.933430>,  <34.573299, 40.696262, 26.090237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543522, 40.517029, 25.933430>,  <34.493893, 40.218307, 25.672085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543522, 40.517029, 25.933430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382970, 0.643474, -0.662778,
		-0.915390, -0.167986, 0.365843,
		0.124072, 0.746808, 0.653364,
		34.580742, 40.741070, 26.129438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865166, 40.613800, 25.641727>,  <34.493893, 40.218307, 25.672085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865166, 40.613800, 25.641727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.119381, 40.873848, 25.808310>,  <34.271908, 41.029877, 25.908258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.119381, 40.873848, 25.808310>,  <33.865166, 40.613800, 25.641727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119381, 40.873848, 25.808310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353087, 0.724428, -0.592059,
		-0.686603, 0.229229, 0.689950,
		0.635535, 0.650122, 0.416457,
		34.310043, 41.068886, 25.933247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450222, 41.248905, 25.765718>,  <33.865166, 40.613800, 25.641727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450222, 41.248905, 25.765718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.839573, 41.339664, 25.752707>,  <34.073181, 41.394119, 25.744900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.839573, 41.339664, 25.752707>,  <33.450222, 41.248905, 25.765718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839573, 41.339664, 25.752707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185893, 0.698359, -0.691187,
		-0.134114, 0.678831, 0.721944,
		0.973374, 0.226902, -0.032530,
		34.131584, 41.407734, 25.742947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408394, 41.955727, 25.735819>,  <33.450222, 41.248905, 25.765718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408394, 41.955727, 25.735819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.769703, 41.844032, 25.605507>,  <33.986488, 41.777016, 25.527321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.769703, 41.844032, 25.605507>,  <33.408394, 41.955727, 25.735819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769703, 41.844032, 25.605507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065307, 0.660938, -0.747594,
		0.424077, 0.696553, 0.578768,
		0.903268, -0.279240, -0.325778,
		34.040684, 41.760262, 25.507774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608452, 42.570412, 25.460335>,  <33.408394, 41.955727, 25.735819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608452, 42.570412, 25.460335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.856895, 42.310562, 25.284969>,  <34.005962, 42.154652, 25.179750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.856895, 42.310562, 25.284969>,  <33.608452, 42.570412, 25.460335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856895, 42.310562, 25.284969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066418, 0.601016, -0.796473,
		0.780902, 0.465581, 0.416445,
		0.621113, -0.649626, -0.438411,
		34.043228, 42.115673, 25.153446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028488, 42.976665, 25.157871>,  <33.608452, 42.570412, 25.460335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028488, 42.976665, 25.157871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086155, 42.633690, 24.960283>,  <34.120754, 42.427902, 24.841730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086155, 42.633690, 24.960283>,  <34.028488, 42.976665, 25.157871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086155, 42.633690, 24.960283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130110, 0.511276, -0.849511,
		0.980962, 0.058202, 0.185272,
		0.144169, -0.857444, -0.493969,
		34.129406, 42.376457, 24.812092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730370, 43.077065, 24.853241>,  <34.028488, 42.976665, 25.157871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730370, 43.077065, 24.853241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.593956, 42.762257, 24.647604>,  <34.512108, 42.573372, 24.524221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.593956, 42.762257, 24.647604>,  <34.730370, 43.077065, 24.853241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593956, 42.762257, 24.647604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456710, 0.339281, -0.822377,
		0.821652, -0.515249, 0.243735,
		-0.341034, -0.787024, -0.514091,
		34.491646, 42.526150, 24.493378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217503, 42.926449, 24.370260>,  <34.730370, 43.077065, 24.853241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217503, 42.926449, 24.370260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.889191, 42.744411, 24.232151>,  <34.692204, 42.635189, 24.149284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.889191, 42.744411, 24.232151>,  <35.217503, 42.926449, 24.370260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889191, 42.744411, 24.232151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197609, 0.340911, -0.919092,
		0.535980, -0.822600, -0.189882,
		-0.820778, -0.455092, -0.345275,
		34.642956, 42.607883, 24.128569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425625, 42.586140, 23.750099>,  <35.217503, 42.926449, 24.370260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425625, 42.586140, 23.750099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028809, 42.615646, 23.709270>,  <34.790718, 42.633350, 23.684772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028809, 42.615646, 23.709270>,  <35.425625, 42.586140, 23.750099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028809, 42.615646, 23.709270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122851, 0.388524, -0.913212,
		-0.027705, -0.918482, -0.394492,
		-0.992038, 0.073764, -0.102073,
		34.731197, 42.637775, 23.678648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321327, 42.385540, 23.044300>,  <35.425625, 42.586140, 23.750099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321327, 42.385540, 23.044300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.969597, 42.548038, 23.143703>,  <34.758560, 42.645538, 23.203346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.969597, 42.548038, 23.143703>,  <35.321327, 42.385540, 23.044300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969597, 42.548038, 23.143703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021409, 0.487577, -0.872817,
		-0.475748, -0.772807, -0.420040,
		-0.879321, 0.406248, 0.248509,
		34.705799, 42.669914, 23.218256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948696, 41.788754, 23.254068>,  <35.321327, 42.385540, 23.044300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948696, 41.788754, 23.254068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.041191, 41.562992, 22.937090>,  <35.096687, 41.427536, 22.746902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.041191, 41.562992, 22.937090>,  <34.948696, 41.788754, 23.254068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041191, 41.562992, 22.937090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040181, -0.808289, 0.587413,
		-0.972066, -0.167676, -0.164232,
		0.231242, -0.564405, -0.792448,
		35.110565, 41.393669, 22.699356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700462, 41.174484, 23.306347>,  <34.948696, 41.788754, 23.254068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700462, 41.174484, 23.306347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903019, 40.990196, 23.014784>,  <35.024555, 40.879623, 22.839846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903019, 40.990196, 23.014784>,  <34.700462, 41.174484, 23.306347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903019, 40.990196, 23.014784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229228, -0.886811, 0.401274,
		-0.831276, -0.036117, -0.554685,
		0.506394, -0.460719, -0.728906,
		35.054935, 40.851982, 22.796112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294628, 40.549885, 23.150194>,  <34.700462, 41.174484, 23.306347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294628, 40.549885, 23.150194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.654476, 40.462387, 22.999022>,  <34.870384, 40.409889, 22.908318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.654476, 40.462387, 22.999022>,  <34.294628, 40.549885, 23.150194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654476, 40.462387, 22.999022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095019, -0.942810, 0.319502,
		-0.426205, -0.251520, -0.868957,
		0.899622, -0.218741, -0.377931,
		34.924362, 40.396767, 22.885643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180668, 39.823524, 22.911657>,  <34.294628, 40.549885, 23.150194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180668, 39.823524, 22.911657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.579517, 39.846504, 22.931454>,  <34.818825, 39.860291, 22.943333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.579517, 39.846504, 22.931454>,  <34.180668, 39.823524, 22.911657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579517, 39.846504, 22.931454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027498, -0.882203, 0.470067,
		0.070668, -0.467352, -0.881242,
		0.997121, 0.057451, 0.049492,
		34.878654, 39.863739, 22.946301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448181, 39.206451, 22.729284>,  <34.180668, 39.823524, 22.911657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448181, 39.206451, 22.729284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.742378, 39.379181, 22.938120>,  <34.918896, 39.482819, 23.063421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.742378, 39.379181, 22.938120>,  <34.448181, 39.206451, 22.729284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742378, 39.379181, 22.938120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088327, -0.825113, 0.558021,
		0.671747, -0.364308, -0.645008,
		0.735496, 0.431820, 0.522089,
		34.963028, 39.508728, 23.094746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022530, 38.703178, 22.682251>,  <34.448181, 39.206451, 22.729284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022530, 38.703178, 22.682251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118645, 38.937012, 22.992226>,  <35.176311, 39.077312, 23.178209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118645, 38.937012, 22.992226>,  <35.022530, 38.703178, 22.682251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118645, 38.937012, 22.992226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000943, -0.798183, 0.602414,
		0.970702, -0.145482, -0.191240,
		0.240285, 0.584584, 0.774935,
		35.190731, 39.112389, 23.224707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472111, 38.282089, 22.982550>,  <35.022530, 38.703178, 22.682251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472111, 38.282089, 22.982550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.394928, 38.547905, 23.271315>,  <35.348618, 38.707394, 23.444574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.394928, 38.547905, 23.271315>,  <35.472111, 38.282089, 22.982550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394928, 38.547905, 23.271315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258036, -0.675477, 0.690759,
		0.946670, 0.319567, -0.041136,
		-0.192957, 0.664536, 0.721914,
		35.337040, 38.747265, 23.487888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060375, 38.279537, 23.498867>,  <35.472111, 38.282089, 22.982550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060375, 38.279537, 23.498867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.733200, 38.420723, 23.680588>,  <35.536896, 38.505436, 23.789619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.733200, 38.420723, 23.680588>,  <36.060375, 38.279537, 23.498867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733200, 38.420723, 23.680588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101268, -0.689006, 0.717646,
		0.566323, 0.632996, 0.527820,
		-0.817938, 0.352968, 0.454302,
		35.487820, 38.526615, 23.816879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744709, 38.277340, 23.502422>,  <36.060375, 38.279537, 23.498867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744709, 38.277340, 23.502422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.850636, 37.938263, 23.318554>,  <36.914192, 37.734818, 23.208233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.850636, 37.938263, 23.318554>,  <36.744709, 38.277340, 23.502422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850636, 37.938263, 23.318554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295543, 0.382400, -0.875457,
		0.917893, 0.367686, -0.149263,
		0.264815, -0.847689, -0.459669,
		36.930080, 37.683956, 23.180653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207344, 38.419201, 22.988325>,  <36.744709, 38.277340, 23.502422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207344, 38.419201, 22.988325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.032688, 38.085224, 22.854326>,  <36.927895, 37.884838, 22.773928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.032688, 38.085224, 22.854326>,  <37.207344, 38.419201, 22.988325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032688, 38.085224, 22.854326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170113, 0.442276, -0.880599,
		0.883409, -0.327514, -0.335148,
		-0.436636, -0.834942, -0.334996,
		36.901699, 37.834743, 22.753828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535107, 38.198948, 22.295172>,  <37.207344, 38.419201, 22.988325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535107, 38.198948, 22.295172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174946, 38.025749, 22.312077>,  <36.958847, 37.921829, 22.322220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174946, 38.025749, 22.312077>,  <37.535107, 38.198948, 22.295172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174946, 38.025749, 22.312077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179242, 0.280706, -0.942908,
		0.396410, -0.856575, -0.330360,
		-0.900406, -0.432993, 0.042260,
		36.904823, 37.895851, 22.324755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449223, 37.922798, 21.581978>,  <37.535107, 38.198948, 22.295172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449223, 37.922798, 21.581978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077492, 37.931358, 21.729435>,  <36.854454, 37.936493, 21.817909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.077492, 37.931358, 21.729435>,  <37.449223, 37.922798, 21.581978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077492, 37.931358, 21.729435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361923, 0.145300, -0.920815,
		-0.073270, -0.989156, -0.127285,
		-0.929324, 0.021400, 0.368644,
		36.798695, 37.937778, 21.840029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055740, 37.930817, 21.021370>,  <37.449223, 37.922798, 21.581978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055740, 37.930817, 21.021370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.769718, 37.998096, 21.292782>,  <36.598103, 38.038464, 21.455629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.769718, 37.998096, 21.292782>,  <37.055740, 37.930817, 21.021370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769718, 37.998096, 21.292782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560539, 0.442029, -0.700290,
		-0.417719, -0.881089, -0.221793,
		-0.715057, 0.168200, 0.678529,
		36.555202, 38.048557, 21.496340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398582, 37.735958, 20.721367>,  <37.055740, 37.930817, 21.021370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398582, 37.735958, 20.721367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.333797, 38.028107, 20.986795>,  <36.294926, 38.203396, 21.146053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.333797, 38.028107, 20.986795>,  <36.398582, 37.735958, 20.721367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333797, 38.028107, 20.986795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478742, 0.529858, -0.700041,
		-0.862888, -0.431059, 0.263843,
		-0.161960, 0.730369, 0.663574,
		36.285210, 38.247219, 21.185867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552135, 38.020802, 20.771183>,  <36.398582, 37.735958, 20.721367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552135, 38.020802, 20.771183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.788269, 38.322296, 20.886690>,  <35.929947, 38.503193, 20.955994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.788269, 38.322296, 20.886690>,  <35.552135, 38.020802, 20.771183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788269, 38.322296, 20.886690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460473, 0.608315, -0.646466,
		-0.662928, 0.248659, 0.706184,
		0.590331, 0.753739, 0.288768,
		35.965370, 38.548416, 20.973320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160671, 38.583309, 20.653234>,  <35.552135, 38.020802, 20.771183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160671, 38.583309, 20.653234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.527821, 38.740234, 20.677227>,  <35.748112, 38.834389, 20.691624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.527821, 38.740234, 20.677227>,  <35.160671, 38.583309, 20.653234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527821, 38.740234, 20.677227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211916, 0.612280, -0.761712,
		-0.335552, 0.686446, 0.645133,
		0.917876, 0.392308, 0.059983,
		35.803185, 38.857925, 20.695221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105953, 39.312050, 20.634575>,  <35.160671, 38.583309, 20.653234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105953, 39.312050, 20.634575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463066, 39.189556, 20.502419>,  <35.677334, 39.116058, 20.423124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463066, 39.189556, 20.502419>,  <35.105953, 39.312050, 20.634575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463066, 39.189556, 20.502419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190339, 0.408297, -0.892785,
		0.408297, 0.859950, 0.306233,
		0.892785, -0.306233, -0.330389,
		35.730900, 39.097687, 20.403301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.802773, 33.821304, 34.772984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.173412, 33.818356, 34.622597>,  <39.395798, 33.816586, 34.532364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.173412, 33.818356, 34.622597>,  <38.802773, 33.821304, 34.772984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173412, 33.818356, 34.622597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375438, 0.038396, -0.926052,
		0.021263, 0.999236, 0.032809,
		0.926604, -0.007373, -0.375967,
		39.451393, 33.816143, 34.509808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951767, 34.483078, 34.427078>,  <38.802773, 33.821304, 34.772984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951767, 34.483078, 34.427078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166805, 34.198669, 34.245777>,  <39.295826, 34.028023, 34.136997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166805, 34.198669, 34.245777>,  <38.951767, 34.483078, 34.427078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166805, 34.198669, 34.245777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229021, 0.394204, -0.890029,
		0.811506, 0.582279, 0.049083,
		0.537594, -0.711023, -0.453253,
		39.328083, 33.985363, 34.109802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386253, 34.769413, 33.882462>,  <38.951767, 34.483078, 34.427078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386253, 34.769413, 33.882462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358078, 34.381771, 33.787914>,  <39.341175, 34.149185, 33.731186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358078, 34.381771, 33.787914>,  <39.386253, 34.769413, 33.882462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358078, 34.381771, 33.787914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238203, 0.246445, -0.939427,
		0.968658, -0.009865, -0.248203,
		-0.070436, -0.969106, -0.236371,
		39.336948, 34.091038, 33.717003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289150, 34.893356, 33.212933>,  <39.386253, 34.769413, 33.882462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289150, 34.893356, 33.212933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.279545, 34.494167, 33.236511>,  <39.273781, 34.254654, 33.250660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.279545, 34.494167, 33.236511>,  <39.289150, 34.893356, 33.212933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279545, 34.494167, 33.236511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257726, -0.050792, -0.964882,
		0.965920, -0.038361, -0.255984,
		-0.024012, -0.997972, 0.058947,
		39.272343, 34.194775, 33.254196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647091, 34.668068, 32.605743>,  <39.289150, 34.893356, 33.212933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647091, 34.668068, 32.605743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420944, 34.359619, 32.722870>,  <39.285255, 34.174549, 32.793144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420944, 34.359619, 32.722870>,  <39.647091, 34.668068, 32.605743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420944, 34.359619, 32.722870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265909, -0.165651, -0.949659,
		0.780804, -0.614765, -0.111394,
		-0.565365, -0.771119, 0.292812,
		39.251335, 34.128284, 32.810715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788635, 34.007599, 32.175621>,  <39.647091, 34.668068, 32.605743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788635, 34.007599, 32.175621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431576, 33.949169, 32.346188>,  <39.217339, 33.914112, 32.448528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431576, 33.949169, 32.346188>,  <39.788635, 34.007599, 32.175621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431576, 33.949169, 32.346188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366401, -0.315844, -0.875210,
		0.262527, -0.937499, 0.228418,
		-0.892653, -0.146073, 0.426418,
		39.163780, 33.905346, 32.474113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621944, 33.333622, 32.038990>,  <39.788635, 34.007599, 32.175621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621944, 33.333622, 32.038990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267620, 33.508289, 32.101814>,  <39.055027, 33.613091, 32.139507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267620, 33.508289, 32.101814>,  <39.621944, 33.333622, 32.038990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267620, 33.508289, 32.101814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356924, -0.424811, -0.831950,
		-0.296563, -0.793007, 0.532157,
		-0.885808, 0.436665, 0.157060,
		39.001877, 33.639290, 32.148933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163254, 32.844440, 31.873173>,  <39.621944, 33.333622, 32.038990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163254, 32.844440, 31.873173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956490, 33.186653, 31.861437>,  <38.832432, 33.391983, 31.854395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956490, 33.186653, 31.861437>,  <39.163254, 32.844440, 31.873173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956490, 33.186653, 31.861437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368236, -0.253164, -0.894601,
		-0.772791, -0.451626, 0.445902,
		-0.516911, 0.855536, -0.029338,
		38.801414, 33.443314, 31.852636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484333, 32.634247, 31.663923>,  <39.163254, 32.844440, 31.873173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484333, 32.634247, 31.663923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500431, 33.028034, 31.595564>,  <38.510090, 33.264305, 31.554548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500431, 33.028034, 31.595564>,  <38.484333, 32.634247, 31.663923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500431, 33.028034, 31.595564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496531, -0.128715, -0.858423,
		-0.867085, 0.119407, 0.483637,
		0.040250, 0.984466, -0.170897,
		38.512505, 33.323376, 31.544294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866631, 32.678780, 31.331783>,  <38.484333, 32.634247, 31.663923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866631, 32.678780, 31.331783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071583, 33.010731, 31.243456>,  <38.194553, 33.209904, 31.190460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071583, 33.010731, 31.243456>,  <37.866631, 32.678780, 31.331783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071583, 33.010731, 31.243456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358519, -0.026936, -0.933134,
		-0.780338, 0.557290, 0.283726,
		0.512384, 0.829881, -0.220818,
		38.225296, 33.259697, 31.177210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391220, 33.190483, 31.160467>,  <37.866631, 32.678780, 31.331783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391220, 33.190483, 31.160467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.722923, 33.318359, 30.977104>,  <37.921944, 33.395084, 30.867086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.722923, 33.318359, 30.977104>,  <37.391220, 33.190483, 31.160467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722923, 33.318359, 30.977104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529028, 0.184574, -0.828289,
		-0.180184, 0.929372, 0.322182,
		0.829255, 0.319688, -0.458406,
		37.971699, 33.414265, 30.839582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177460, 33.760899, 30.895643>,  <37.391220, 33.190483, 31.160467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177460, 33.760899, 30.895643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497860, 33.664322, 30.676519>,  <37.690102, 33.606377, 30.545044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497860, 33.664322, 30.676519>,  <37.177460, 33.760899, 30.895643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497860, 33.664322, 30.676519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482135, 0.282265, -0.829380,
		0.354876, 0.928457, 0.109688,
		0.801005, -0.241443, -0.547811,
		37.738163, 33.591888, 30.512177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684978, 34.350376, 31.056997>,  <37.177460, 33.760899, 30.895643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684978, 34.350376, 31.056997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366211, 34.117191, 30.993652>,  <36.174950, 33.977280, 30.955647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.366211, 34.117191, 30.993652>,  <36.684978, 34.350376, 31.056997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366211, 34.117191, 30.993652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064984, -0.343355, 0.936955,
		-0.600582, 0.736385, 0.311509,
		-0.796918, -0.582961, -0.158360,
		36.127136, 33.942303, 30.946144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191635, 34.516655, 31.603178>,  <36.684978, 34.350376, 31.056997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191635, 34.516655, 31.603178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062565, 34.165062, 31.462740>,  <35.985123, 33.954105, 31.378477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062565, 34.165062, 31.462740>,  <36.191635, 34.516655, 31.603178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062565, 34.165062, 31.462740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061855, -0.350562, 0.934495,
		-0.944487, 0.323255, 0.058748,
		-0.322675, -0.878984, -0.351096,
		35.965763, 33.901367, 31.357410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651134, 34.427704, 31.993515>,  <36.191635, 34.516655, 31.603178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651134, 34.427704, 31.993515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760841, 34.070602, 31.850538>,  <35.826664, 33.856342, 31.764751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760841, 34.070602, 31.850538>,  <35.651134, 34.427704, 31.993515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760841, 34.070602, 31.850538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006872, -0.373504, 0.927603,
		-0.961630, -0.251952, -0.108574,
		0.274264, -0.892757, -0.357442,
		35.843121, 33.802776, 31.743305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308125, 34.069988, 32.472519>,  <35.651134, 34.427704, 31.993515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308125, 34.069988, 32.472519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526451, 33.790028, 32.288250>,  <35.657448, 33.622051, 32.177689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526451, 33.790028, 32.288250>,  <35.308125, 34.069988, 32.472519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526451, 33.790028, 32.288250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069174, -0.585557, 0.807674,
		-0.835042, -0.408978, -0.368024,
		0.545820, -0.699899, -0.460674,
		35.690197, 33.580059, 32.150047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902405, 33.433117, 32.301605>,  <35.308125, 34.069988, 32.472519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902405, 33.433117, 32.301605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289341, 33.355789, 32.367199>,  <35.521503, 33.309395, 32.406555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289341, 33.355789, 32.367199>,  <34.902405, 33.433117, 32.301605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289341, 33.355789, 32.367199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240425, -0.494594, 0.835208,
		-0.080355, -0.847352, -0.524916,
		0.967336, -0.193316, 0.163982,
		35.579540, 33.297794, 32.416393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839893, 32.919411, 32.570103>,  <34.902405, 33.433117, 32.301605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839893, 32.919411, 32.570103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.222923, 32.985588, 32.664486>,  <35.452740, 33.025295, 32.721115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.222923, 32.985588, 32.664486>,  <34.839893, 32.919411, 32.570103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222923, 32.985588, 32.664486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092178, -0.599939, 0.794718,
		0.273040, -0.782754, -0.559237,
		0.957576, 0.165441, 0.235960,
		35.510197, 33.035221, 32.735275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186634, 32.249668, 32.805573>,  <34.839893, 32.919411, 32.570103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186634, 32.249668, 32.805573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427948, 32.516911, 32.979782>,  <35.572735, 32.677258, 33.084309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427948, 32.516911, 32.979782>,  <35.186634, 32.249668, 32.805573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427948, 32.516911, 32.979782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037539, -0.521705, 0.852300,
		0.796642, -0.530529, -0.289656,
		0.603284, 0.668105, 0.435528,
		35.608932, 32.717342, 33.110439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625813, 31.886574, 33.204926>,  <35.186634, 32.249668, 32.805573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625813, 31.886574, 33.204926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645939, 32.255363, 33.358513>,  <35.658012, 32.476639, 33.450665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645939, 32.255363, 33.358513>,  <35.625813, 31.886574, 33.204926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645939, 32.255363, 33.358513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194305, -0.368071, 0.909268,
		0.979650, -0.120355, 0.160625,
		0.050314, 0.921975, 0.383967,
		35.661034, 32.531956, 33.473701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710541, 31.762032, 33.953243>,  <35.625813, 31.886574, 33.204926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710541, 31.762032, 33.953243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645374, 32.156651, 33.958698>,  <35.606274, 32.393421, 33.961971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645374, 32.156651, 33.958698>,  <35.710541, 31.762032, 33.953243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645374, 32.156651, 33.958698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267222, -0.057427, 0.961922,
		0.949763, 0.153070, 0.272983,
		-0.162919, 0.986545, 0.013639,
		35.596500, 32.452614, 33.962791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047050, 32.128521, 34.708710>,  <35.710541, 31.762032, 33.953243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047050, 32.128521, 34.708710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753353, 32.359318, 34.565617>,  <35.577133, 32.497795, 34.479763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753353, 32.359318, 34.565617>,  <36.047050, 32.128521, 34.708710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753353, 32.359318, 34.565617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371635, 0.099362, 0.923046,
		0.568131, 0.810686, 0.141473,
		-0.734244, 0.576988, -0.357730,
		35.533081, 32.532413, 34.458298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074303, 32.750584, 34.971233>,  <36.047050, 32.128521, 34.708710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074303, 32.750584, 34.971233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692116, 32.708282, 34.861034>,  <35.462803, 32.682899, 34.794914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692116, 32.708282, 34.861034>,  <36.074303, 32.750584, 34.971233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692116, 32.708282, 34.861034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286530, 0.109125, 0.951836,
		-0.070598, 0.988386, -0.134567,
		-0.955467, -0.105755, -0.275498,
		35.405476, 32.676556, 34.778385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615398, 33.312801, 35.294300>,  <36.074303, 32.750584, 34.971233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615398, 33.312801, 35.294300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328934, 33.052731, 35.192806>,  <35.157055, 32.896690, 35.131908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328934, 33.052731, 35.192806>,  <35.615398, 33.312801, 35.294300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328934, 33.052731, 35.192806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549871, 0.301733, 0.778845,
		-0.429825, 0.697302, -0.573603,
		-0.716165, -0.650174, -0.253734,
		35.114082, 32.857677, 35.116688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053291, 33.750282, 35.475464>,  <35.615398, 33.312801, 35.294300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053291, 33.750282, 35.475464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909840, 33.379162, 35.434357>,  <34.823769, 33.156490, 35.409691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909840, 33.379162, 35.434357>,  <35.053291, 33.750282, 35.475464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909840, 33.379162, 35.434357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709008, 0.199129, 0.676502,
		-0.607198, 0.315479, -0.729235,
		-0.358634, -0.927804, -0.102766,
		34.802250, 33.100822, 35.403526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310871, 33.843143, 35.411625>,  <35.053291, 33.750282, 35.475464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310871, 33.843143, 35.411625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395996, 33.470322, 35.528923>,  <34.447071, 33.246628, 35.599300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395996, 33.470322, 35.528923>,  <34.310871, 33.843143, 35.411625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395996, 33.470322, 35.528923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675714, 0.076394, 0.733195,
		-0.705777, -0.354181, -0.613543,
		0.212812, -0.932051, 0.293242,
		34.459839, 33.190704, 35.616894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724701, 33.518333, 35.286636>,  <34.310871, 33.843143, 35.411625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724701, 33.518333, 35.286636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928669, 33.347382, 35.585255>,  <34.051048, 33.244812, 35.764427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928669, 33.347382, 35.585255>,  <33.724701, 33.518333, 35.286636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928669, 33.347382, 35.585255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750386, 0.203340, 0.628947,
		-0.420603, -0.880908, -0.217015,
		0.509916, -0.427381, 0.746545,
		34.081642, 33.219166, 35.809219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320217, 34.056271, 35.578728>,  <33.724701, 33.518333, 35.286636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320217, 34.056271, 35.578728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583286, 34.352188, 35.635532>,  <33.741127, 34.529739, 35.669613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583286, 34.352188, 35.635532>,  <33.320217, 34.056271, 35.578728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583286, 34.352188, 35.635532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077561, 0.254013, -0.964086,
		-0.749297, 0.623042, 0.224438,
		0.657676, 0.739794, 0.142008,
		33.780590, 34.574127, 35.678135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041939, 34.773335, 35.361092>,  <33.320217, 34.056271, 35.578728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041939, 34.773335, 35.361092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436142, 34.765930, 35.293644>,  <33.672665, 34.761490, 35.253174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436142, 34.765930, 35.293644>,  <33.041939, 34.773335, 35.361092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436142, 34.765930, 35.293644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157356, 0.271584, -0.949464,
		0.063368, 0.962237, 0.264736,
		0.985507, -0.018508, -0.168623,
		33.731792, 34.760376, 35.243057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063210, 35.329025, 34.905334>,  <33.041939, 34.773335, 35.361092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063210, 35.329025, 34.905334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417786, 35.149746, 34.859127>,  <33.630531, 35.042179, 34.831402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417786, 35.149746, 34.859127>,  <33.063210, 35.329025, 34.905334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417786, 35.149746, 34.859127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078390, 0.391366, -0.916890,
		0.456156, 0.803713, 0.382057,
		0.886441, -0.448194, -0.115521,
		33.683720, 35.015289, 34.824471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580917, 35.893169, 34.859608>,  <33.063210, 35.329025, 34.905334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580917, 35.893169, 34.859608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732189, 35.561584, 34.694782>,  <33.822952, 35.362633, 34.595886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732189, 35.561584, 34.694782>,  <33.580917, 35.893169, 34.859608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732189, 35.561584, 34.694782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098649, 0.478677, -0.872431,
		0.920462, 0.289283, 0.262801,
		0.378177, -0.828965, -0.412067,
		33.845642, 35.312897, 34.571163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037552, 36.032940, 34.288795>,  <33.580917, 35.893169, 34.859608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037552, 36.032940, 34.288795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023243, 35.640209, 34.214252>,  <34.014656, 35.404572, 34.169529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023243, 35.640209, 34.214252>,  <34.037552, 36.032940, 34.288795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023243, 35.640209, 34.214252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189889, 0.189756, -0.963294,
		0.981153, 0.000924, -0.193228,
		-0.035776, -0.981831, -0.186355,
		34.012508, 35.345661, 34.158344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484356, 35.847767, 33.817440>,  <34.037552, 36.032940, 34.288795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484356, 35.847767, 33.817440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238457, 35.533165, 33.793812>,  <34.090916, 35.344402, 33.779636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238457, 35.533165, 33.793812>,  <34.484356, 35.847767, 33.817440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238457, 35.533165, 33.793812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007292, 0.069224, -0.997575,
		0.788690, -0.613688, -0.036820,
		-0.614748, -0.786508, -0.059071,
		34.054031, 35.297211, 33.776089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818699, 35.344677, 33.330341>,  <34.484356, 35.847767, 33.817440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818699, 35.344677, 33.330341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421082, 35.302864, 33.342613>,  <34.182510, 35.277775, 33.349976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421082, 35.302864, 33.342613>,  <34.818699, 35.344677, 33.330341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421082, 35.302864, 33.342613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041278, 0.100821, -0.994048,
		0.100821, -0.989398, -0.104535,
		0.994048, 0.104535, -0.030675,
		34.122868, 35.271503, 33.351814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719646, 34.812103, 32.801598>,  <34.818699, 35.344677, 33.330341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719646, 34.812103, 32.801598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382278, 35.019196, 32.859009>,  <34.179859, 35.143452, 32.893456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382278, 35.019196, 32.859009>,  <34.719646, 34.812103, 32.801598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382278, 35.019196, 32.859009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114328, 0.088068, -0.989532,
		-0.524949, -0.851000, -0.015088,
		-0.843421, 0.517728, 0.143525,
		34.129253, 35.174515, 32.902065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250584, 34.440853, 32.336967>,  <34.719646, 34.812103, 32.801598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250584, 34.440853, 32.336967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132969, 34.806309, 32.449261>,  <34.062401, 35.025581, 32.516636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132969, 34.806309, 32.449261>,  <34.250584, 34.440853, 32.336967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132969, 34.806309, 32.449261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150608, 0.245760, -0.957559,
		-0.943854, -0.323836, 0.065339,
		-0.294034, 0.913637, 0.280734,
		34.044758, 35.080399, 32.533482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609329, 34.420162, 32.037586>,  <34.250584, 34.440853, 32.336967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609329, 34.420162, 32.037586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746883, 34.787537, 32.115788>,  <33.829418, 35.007961, 32.162708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746883, 34.787537, 32.115788>,  <33.609329, 34.420162, 32.037586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746883, 34.787537, 32.115788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105810, 0.244772, -0.963790,
		-0.933030, 0.310750, 0.181353,
		0.343888, 0.918434, 0.195499,
		33.850048, 35.063068, 32.174438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142010, 34.765179, 31.651028>,  <33.609329, 34.420162, 32.037586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142010, 34.765179, 31.651028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434422, 35.028542, 31.722683>,  <33.609871, 35.186562, 31.765676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434422, 35.028542, 31.722683>,  <33.142010, 34.765179, 31.651028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434422, 35.028542, 31.722683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081203, 0.344610, -0.935227,
		-0.677495, 0.669134, 0.305385,
		0.731031, 0.658410, 0.179136,
		33.653732, 35.226063, 31.776424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960045, 35.356937, 31.256248>,  <33.142010, 34.765179, 31.651028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960045, 35.356937, 31.256248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345726, 35.441055, 31.320848>,  <33.577137, 35.491528, 31.359608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345726, 35.441055, 31.320848>,  <32.960045, 35.356937, 31.256248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345726, 35.441055, 31.320848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000833, 0.606669, -0.794954,
		-0.265155, 0.766634, 0.584778,
		0.964206, 0.210299, 0.161499,
		33.634987, 35.504147, 31.369299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084667, 36.124043, 31.247618>,  <32.960045, 35.356937, 31.256248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084667, 36.124043, 31.247618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451031, 35.966774, 31.215292>,  <33.670849, 35.872414, 31.195896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451031, 35.966774, 31.215292>,  <33.084667, 36.124043, 31.247618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451031, 35.966774, 31.215292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275731, 0.762596, -0.585167,
		0.291699, 0.513675, 0.806876,
		0.915906, -0.393173, -0.080812,
		33.725803, 35.848824, 31.191048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567524, 36.697208, 31.321594>,  <33.084667, 36.124043, 31.247618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567524, 36.697208, 31.321594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763561, 36.421539, 31.108109>,  <33.881184, 36.256138, 30.980017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763561, 36.421539, 31.108109>,  <33.567524, 36.697208, 31.321594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763561, 36.421539, 31.108109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207530, 0.686940, -0.696451,
		0.846603, 0.230566, 0.479690,
		0.490096, -0.689168, -0.533716,
		33.910591, 36.214790, 30.947994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195126, 36.974556, 31.236597>,  <33.567524, 36.697208, 31.321594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195126, 36.974556, 31.236597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193413, 36.679638, 30.966375>,  <34.192387, 36.502686, 30.804243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193413, 36.679638, 30.966375>,  <34.195126, 36.974556, 31.236597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193413, 36.679638, 30.966375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425224, 0.610098, -0.668554,
		0.905078, -0.290123, 0.310906,
		-0.004280, -0.737299, -0.675554,
		34.192127, 36.458447, 30.763710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838573, 36.845989, 30.989647>,  <34.195126, 36.974556, 31.236597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838573, 36.845989, 30.989647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589985, 36.728073, 30.699301>,  <34.440834, 36.657322, 30.525093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589985, 36.728073, 30.699301>,  <34.838573, 36.845989, 30.989647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589985, 36.728073, 30.699301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491255, 0.575100, -0.654162,
		0.610287, -0.763123, -0.212586,
		-0.621465, -0.294792, -0.725865,
		34.403545, 36.639637, 30.481543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352657, 36.965885, 30.522316>,  <34.838573, 36.845989, 30.989647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352657, 36.965885, 30.522316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025723, 36.889610, 30.304836>,  <34.829563, 36.843845, 30.174349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025723, 36.889610, 30.304836>,  <35.352657, 36.965885, 30.522316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025723, 36.889610, 30.304836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378674, 0.533440, -0.756339,
		0.434250, -0.824065, -0.363792,
		-0.817333, -0.190682, -0.543698,
		34.780521, 36.832405, 30.141727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529812, 36.805847, 29.809975>,  <35.352657, 36.965885, 30.522316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529812, 36.805847, 29.809975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154999, 36.943062, 29.783730>,  <34.930111, 37.025391, 29.767982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154999, 36.943062, 29.783730>,  <35.529812, 36.805847, 29.809975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154999, 36.943062, 29.783730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272599, 0.600907, -0.751399,
		-0.218330, -0.721968, -0.656578,
		-0.937028, 0.343035, -0.065612,
		34.873890, 37.045971, 29.764046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403839, 36.870010, 29.095436>,  <35.529812, 36.805847, 29.809975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403839, 36.870010, 29.095436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142933, 37.116371, 29.272171>,  <34.986389, 37.264187, 29.378212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142933, 37.116371, 29.272171>,  <35.403839, 36.870010, 29.095436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142933, 37.116371, 29.272171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116227, 0.657279, -0.744631,
		-0.749028, -0.434343, -0.500304,
		-0.652265, 0.615898, 0.441838,
		34.947254, 37.301140, 29.404722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153702, 37.046234, 28.522978>,  <35.403839, 36.870010, 29.095436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153702, 37.046234, 28.522978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032646, 37.315109, 28.793261>,  <34.960011, 37.476433, 28.955429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032646, 37.315109, 28.793261>,  <35.153702, 37.046234, 28.522978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032646, 37.315109, 28.793261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128210, 0.731220, -0.669985,
		-0.944442, -0.116133, -0.307477,
		-0.302641, 0.672184, 0.675705,
		34.941853, 37.516766, 28.995972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691521, 37.439682, 28.237278>,  <35.153702, 37.046234, 28.522978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691521, 37.439682, 28.237278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815758, 37.673149, 28.537376>,  <34.890301, 37.813229, 28.717436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815758, 37.673149, 28.537376>,  <34.691521, 37.439682, 28.237278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815758, 37.673149, 28.537376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182059, 0.811196, -0.555712,
		-0.932946, 0.036010, 0.358211,
		0.310591, 0.583664, 0.750246,
		34.908936, 37.848248, 28.762451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218407, 37.961357, 28.330126>,  <34.691521, 37.439682, 28.237278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218407, 37.961357, 28.330126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560249, 38.106960, 28.478258>,  <34.765354, 38.194324, 28.567137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560249, 38.106960, 28.478258>,  <34.218407, 37.961357, 28.330126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560249, 38.106960, 28.478258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079014, 0.796016, -0.600097,
		-0.513232, 0.483585, 0.709041,
		0.854605, 0.364013, 0.370330,
		34.816631, 38.216164, 28.589357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031250, 38.675182, 28.452473>,  <34.218407, 37.961357, 28.330126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031250, 38.675182, 28.452473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430435, 38.649788, 28.455038>,  <34.669945, 38.634552, 28.456577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430435, 38.649788, 28.455038>,  <34.031250, 38.675182, 28.452473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430435, 38.649788, 28.455038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055464, 0.813326, -0.579159,
		0.031556, 0.578334, 0.815190,
		0.997962, -0.063489, 0.006412,
		34.729824, 38.630741, 28.456961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235516, 39.355236, 28.538607>,  <34.031250, 38.675182, 28.452473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235516, 39.355236, 28.538607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577084, 39.199337, 28.400673>,  <34.782024, 39.105797, 28.317913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577084, 39.199337, 28.400673>,  <34.235516, 39.355236, 28.538607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577084, 39.199337, 28.400673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303938, 0.911396, -0.277450,
		0.422416, 0.132113, 0.896722,
		0.853924, -0.389747, -0.344834,
		34.833260, 39.082413, 28.297222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670174, 39.789970, 28.644266>,  <34.235516, 39.355236, 28.538607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670174, 39.789970, 28.644266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865971, 39.571667, 28.372225>,  <34.983448, 39.440685, 28.209000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865971, 39.571667, 28.372225>,  <34.670174, 39.789970, 28.644266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865971, 39.571667, 28.372225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103056, 0.810672, -0.576360,
		0.865894, 0.212037, 0.453065,
		0.489496, -0.545758, -0.680104,
		35.012821, 39.407940, 28.168194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251122, 40.127979, 28.531473>,  <34.670174, 39.789970, 28.644266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251122, 40.127979, 28.531473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121143, 39.893742, 28.234425>,  <35.043156, 39.753197, 28.056196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121143, 39.893742, 28.234425>,  <35.251122, 40.127979, 28.531473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121143, 39.893742, 28.234425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006434, 0.786584, -0.617449,
		0.945711, -0.195860, -0.259365,
		-0.324946, -0.585597, -0.742621,
		35.023659, 39.718063, 28.011639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528542, 40.498924, 27.956808>,  <35.251122, 40.127979, 28.531473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528542, 40.498924, 27.956808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280632, 40.238907, 27.780935>,  <35.131886, 40.082897, 27.675411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280632, 40.238907, 27.780935>,  <35.528542, 40.498924, 27.956808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280632, 40.238907, 27.780935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148348, 0.647206, -0.747741,
		0.770631, -0.398205, -0.497555,
		-0.619775, -0.650044, -0.439684,
		35.094700, 40.043896, 27.649031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812157, 39.808697, 27.605352>,  <35.528542, 40.498924, 27.956808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812157, 39.808697, 27.605352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066746, 40.117077, 27.614664>,  <36.219498, 40.302105, 27.620251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066746, 40.117077, 27.614664>,  <35.812157, 39.808697, 27.605352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066746, 40.117077, 27.614664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075396, -0.092225, 0.992880,
		0.767608, -0.630183, -0.116825,
		0.636470, 0.770950, 0.023280,
		36.257687, 40.348362, 27.621649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287937, 39.655849, 28.061504>,  <35.812157, 39.808697, 27.605352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287937, 39.655849, 28.061504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373737, 40.046463, 28.053831>,  <36.425217, 40.280830, 28.049227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373737, 40.046463, 28.053831>,  <36.287937, 39.655849, 28.061504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373737, 40.046463, 28.053831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177330, -0.019619, 0.983956,
		0.960492, -0.214457, -0.177378,
		0.214496, 0.976536, -0.019185,
		36.438087, 40.339424, 28.048075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946507, 39.768028, 28.333218>,  <36.287937, 39.655849, 28.061504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946507, 39.768028, 28.333218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.766376, 40.119839, 28.394720>,  <36.658298, 40.330925, 28.431622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.766376, 40.119839, 28.394720>,  <36.946507, 39.768028, 28.333218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766376, 40.119839, 28.394720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271196, -0.029330, 0.962077,
		0.850681, 0.474946, -0.225316,
		-0.450326, 0.879526, 0.153754,
		36.631279, 40.383698, 28.440845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469406, 40.159893, 28.701708>,  <36.946507, 39.768028, 28.333218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469406, 40.159893, 28.701708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103901, 40.318142, 28.738646>,  <36.884598, 40.413090, 28.760807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103901, 40.318142, 28.738646>,  <37.469406, 40.159893, 28.701708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103901, 40.318142, 28.738646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105015, 0.010443, 0.994416,
		0.392450, 0.918353, -0.051089,
		-0.913759, 0.395624, 0.092342,
		36.829773, 40.436829, 28.766348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477203, 40.536201, 29.318222>,  <37.469406, 40.159893, 28.701708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477203, 40.536201, 29.318222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078232, 40.519978, 29.294590>,  <36.838848, 40.510242, 29.280411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078232, 40.519978, 29.294590>,  <37.477203, 40.536201, 29.318222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078232, 40.519978, 29.294590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050021, -0.196313, 0.979265,
		-0.051315, 0.979702, 0.193779,
		-0.997429, -0.040558, -0.059079,
		36.779003, 40.507809, 29.276867>
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
