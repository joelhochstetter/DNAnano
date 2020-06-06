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
	<24.135859, 34.829372, 35.173183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442263, 35.021843, 35.002678>,  <24.626104, 35.137325, 34.900375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442263, 35.021843, 35.002678>,  <24.135859, 34.829372, 35.173183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442263, 35.021843, 35.002678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517837, -0.068996, 0.852693,
		0.380884, -0.873905, -0.302022,
		0.766011, 0.481175, -0.426261,
		24.672066, 35.166195, 34.874802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836210, 34.361763, 35.290997>,  <24.135859, 34.829372, 35.173183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836210, 34.361763, 35.290997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900558, 34.754681, 35.252586>,  <24.939167, 34.990433, 35.229542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900558, 34.754681, 35.252586>,  <24.836210, 34.361763, 35.290997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900558, 34.754681, 35.252586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464101, 0.010577, 0.885719,
		0.871052, -0.187051, -0.454181,
		0.160870, 0.982293, -0.096024,
		24.948820, 35.049370, 35.223778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580378, 34.519684, 35.453602>,  <24.836210, 34.361763, 35.290997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580378, 34.519684, 35.453602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336721, 34.825726, 35.537094>,  <25.190527, 35.009350, 35.587189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336721, 34.825726, 35.537094>,  <25.580378, 34.519684, 35.453602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336721, 34.825726, 35.537094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350219, 0.023377, 0.936376,
		0.711542, 0.643487, -0.282192,
		-0.609143, 0.765100, 0.208728,
		25.153978, 35.055256, 35.599712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932329, 35.235760, 35.685440>,  <25.580378, 34.519684, 35.453602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932329, 35.235760, 35.685440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574820, 35.140236, 35.837303>,  <25.360313, 35.082920, 35.928421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574820, 35.140236, 35.837303>,  <25.932329, 35.235760, 35.685440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574820, 35.140236, 35.837303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419248, -0.144065, 0.896368,
		-0.159367, 0.960320, 0.228883,
		-0.893774, -0.238811, 0.379653,
		25.306686, 35.068592, 35.951199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587898, 35.715549, 36.198780>,  <25.932329, 35.235760, 35.685440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587898, 35.715549, 36.198780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491177, 35.335133, 36.275776>,  <25.433144, 35.106884, 36.321972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491177, 35.335133, 36.275776>,  <25.587898, 35.715549, 36.198780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491177, 35.335133, 36.275776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476342, 0.056482, 0.877444,
		-0.845358, 0.303859, 0.439363,
		-0.241803, -0.951041, 0.192488,
		25.418636, 35.049820, 36.333523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176319, 35.577209, 36.780811>,  <25.587898, 35.715549, 36.198780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176319, 35.577209, 36.780811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400494, 35.246677, 36.758568>,  <25.534998, 35.048359, 36.745224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400494, 35.246677, 36.758568>,  <25.176319, 35.577209, 36.780811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400494, 35.246677, 36.758568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201953, 0.071237, 0.976801,
		-0.803198, -0.558664, 0.206803,
		0.560436, -0.826329, -0.055606,
		25.568624, 34.998779, 36.741886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997438, 35.135242, 37.442535>,  <25.176319, 35.577209, 36.780811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997438, 35.135242, 37.442535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361164, 35.005447, 37.338345>,  <25.579399, 34.927570, 37.275829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361164, 35.005447, 37.338345>,  <24.997438, 35.135242, 37.442535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361164, 35.005447, 37.338345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201132, -0.205249, 0.957820,
		-0.364269, -0.923351, -0.121371,
		0.909316, -0.324492, -0.260481,
		25.633959, 34.908100, 37.260201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114931, 34.495163, 37.733788>,  <24.997438, 35.135242, 37.442535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114931, 34.495163, 37.733788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464975, 34.680939, 37.679413>,  <25.675001, 34.792404, 37.646790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464975, 34.680939, 37.679413>,  <25.114931, 34.495163, 37.733788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464975, 34.680939, 37.679413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211006, -0.113421, 0.970882,
		0.435501, -0.878310, -0.197256,
		0.875109, 0.464442, -0.135933,
		25.727509, 34.820271, 37.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574543, 34.158493, 38.142628>,  <25.114931, 34.495163, 37.733788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574543, 34.158493, 38.142628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750900, 34.513710, 38.090496>,  <25.856714, 34.726841, 38.059216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750900, 34.513710, 38.090496>,  <25.574543, 34.158493, 38.142628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750900, 34.513710, 38.090496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379830, -0.053034, 0.923535,
		0.813230, -0.456684, -0.360689,
		0.440892, 0.888047, -0.130334,
		25.883167, 34.780125, 38.051395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281101, 33.997768, 38.219723>,  <25.574543, 34.158493, 38.142628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281101, 33.997768, 38.219723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224728, 34.387341, 38.290825>,  <26.190903, 34.621082, 38.333485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224728, 34.387341, 38.290825>,  <26.281101, 33.997768, 38.219723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224728, 34.387341, 38.290825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239697, -0.140635, 0.960607,
		0.960564, 0.177989, -0.213628,
		-0.140934, 0.973931, 0.177752,
		26.182447, 34.679520, 38.344151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871336, 34.206654, 38.540539>,  <26.281101, 33.997768, 38.219723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871336, 34.206654, 38.540539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614227, 34.491840, 38.652622>,  <26.459963, 34.662952, 38.719872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614227, 34.491840, 38.652622>,  <26.871336, 34.206654, 38.540539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614227, 34.491840, 38.652622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135622, -0.254098, 0.957623,
		0.753958, 0.653534, 0.066632,
		-0.642770, 0.712971, 0.280213,
		26.421396, 34.705730, 38.736687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150188, 34.620007, 39.127670>,  <26.871336, 34.206654, 38.540539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150188, 34.620007, 39.127670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750231, 34.619495, 39.133442>,  <26.510256, 34.619190, 39.136906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750231, 34.619495, 39.133442>,  <27.150188, 34.620007, 39.127670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750231, 34.619495, 39.133442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014375, -0.212348, 0.977088,
		0.001819, 0.977193, 0.212344,
		-0.999895, -0.001276, 0.014433,
		26.450262, 34.619114, 39.137772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679937, 34.295696, 39.688339>,  <27.150188, 34.620007, 39.127670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679937, 34.295696, 39.688339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469816, 34.047302, 39.455639>,  <26.343742, 33.898266, 39.316021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469816, 34.047302, 39.455639>,  <26.679937, 34.295696, 39.688339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469816, 34.047302, 39.455639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749297, 0.013586, 0.662095,
		-0.403249, 0.783703, -0.472440,
		-0.525305, -0.620986, -0.581748,
		26.312225, 33.861008, 39.281113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065737, 34.579285, 39.698040>,  <26.679937, 34.295696, 39.688339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065737, 34.579285, 39.698040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021463, 34.192333, 39.606895>,  <25.994900, 33.960163, 39.552208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021463, 34.192333, 39.606895>,  <26.065737, 34.579285, 39.698040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021463, 34.192333, 39.606895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612879, -0.114053, 0.781902,
		-0.782386, 0.226199, -0.580264,
		-0.110685, -0.967381, -0.227866,
		25.988258, 33.902119, 39.538536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342609, 34.488495, 39.748646>,  <26.065737, 34.579285, 39.698040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342609, 34.488495, 39.748646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504141, 34.122738, 39.759995>,  <25.601059, 33.903282, 39.766804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504141, 34.122738, 39.759995>,  <25.342609, 34.488495, 39.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504141, 34.122738, 39.759995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466986, -0.179368, 0.865882,
		-0.786669, -0.362916, -0.499444,
		0.403827, -0.914395, 0.028374,
		25.625290, 33.848419, 39.768505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230558, 34.878323, 39.037674>,  <25.342609, 34.488495, 39.748646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230558, 34.878323, 39.037674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619413, 34.920612, 39.121357>,  <25.852726, 34.945988, 39.171566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619413, 34.920612, 39.121357>,  <25.230558, 34.878323, 39.037674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619413, 34.920612, 39.121357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124248, 0.524378, -0.842372,
		-0.198765, 0.844896, 0.496632,
		0.972139, 0.105728, 0.209205,
		25.911055, 34.952332, 39.184120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535707, 35.552704, 39.044289>,  <25.230558, 34.878323, 39.037674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535707, 35.552704, 39.044289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838303, 35.311535, 38.942932>,  <26.019859, 35.166832, 38.882118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838303, 35.311535, 38.942932>,  <25.535707, 35.552704, 39.044289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838303, 35.311535, 38.942932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026112, 0.359286, -0.932862,
		0.653485, 0.712316, 0.256052,
		0.756489, -0.602926, -0.253388,
		26.065248, 35.130657, 38.866917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915110, 35.936626, 38.570824>,  <25.535707, 35.552704, 39.044289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915110, 35.936626, 38.570824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007763, 35.555378, 38.492939>,  <26.063354, 35.326630, 38.446209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007763, 35.555378, 38.492939>,  <25.915110, 35.936626, 38.570824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007763, 35.555378, 38.492939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201958, 0.148683, -0.968042,
		0.951609, 0.263555, -0.158050,
		0.231633, -0.953117, -0.194715,
		26.077253, 35.269444, 38.434525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294399, 35.987747, 37.977852>,  <25.915110, 35.936626, 38.570824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294399, 35.987747, 37.977852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171345, 35.608799, 38.013283>,  <26.097513, 35.381428, 38.034542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171345, 35.608799, 38.013283>,  <26.294399, 35.987747, 37.977852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171345, 35.608799, 38.013283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181597, -0.032927, -0.982822,
		0.934015, -0.318436, -0.161911,
		-0.307634, -0.947372, 0.088581,
		26.079054, 35.324589, 38.039856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627291, 35.739288, 37.445324>,  <26.294399, 35.987747, 37.977852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627291, 35.739288, 37.445324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360415, 35.448311, 37.509422>,  <26.200289, 35.273724, 37.547882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360415, 35.448311, 37.509422>,  <26.627291, 35.739288, 37.445324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360415, 35.448311, 37.509422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018019, -0.199305, -0.979772,
		0.744670, -0.656581, 0.119866,
		-0.667190, -0.727447, 0.160248,
		26.160257, 35.230076, 37.557495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807405, 35.033096, 37.113705>,  <26.627291, 35.739288, 37.445324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807405, 35.033096, 37.113705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416775, 35.119148, 37.112225>,  <26.182396, 35.170780, 37.111336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416775, 35.119148, 37.112225>,  <26.807405, 35.033096, 37.113705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416775, 35.119148, 37.112225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028704, -0.147326, -0.988671,
		-0.213244, -0.965407, 0.150051,
		-0.976577, 0.215136, -0.003705,
		26.123802, 35.183689, 37.111115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114964, 35.117039, 36.365906>,  <26.807405, 35.033096, 37.113705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114964, 35.117039, 36.365906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034266, 34.861591, 36.068863>,  <26.985846, 34.708321, 35.890636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034266, 34.861591, 36.068863>,  <27.114964, 35.117039, 36.365906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034266, 34.861591, 36.068863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256339, -0.697337, 0.669336,
		-0.945298, 0.325395, -0.023019,
		-0.201747, -0.638623, -0.742603,
		26.973742, 34.670006, 35.846081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443192, 34.765942, 36.530697>,  <27.114964, 35.117039, 36.365906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443192, 34.765942, 36.530697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644884, 34.539906, 36.269493>,  <26.765900, 34.404282, 36.112770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644884, 34.539906, 36.269493>,  <26.443192, 34.765942, 36.530697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644884, 34.539906, 36.269493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229460, -0.816665, 0.529534,
		-0.832529, -0.117165, -0.541450,
		0.504226, -0.565094, -0.653013,
		26.796152, 34.370377, 36.073589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041702, 34.556499, 36.039455>,  <26.443192, 34.765942, 36.530697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041702, 34.556499, 36.039455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302530, 34.286022, 36.176605>,  <26.459026, 34.123734, 36.258896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302530, 34.286022, 36.176605>,  <26.041702, 34.556499, 36.039455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302530, 34.286022, 36.176605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750671, -0.512430, 0.417023,
		-0.106290, -0.529314, -0.841742,
		0.652070, -0.676197, 0.342874,
		26.498152, 34.083164, 36.279469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952318, 33.925987, 35.699989>,  <26.041702, 34.556499, 36.039455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952318, 33.925987, 35.699989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082851, 33.879417, 36.075211>,  <26.161171, 33.851475, 36.300343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082851, 33.879417, 36.075211>,  <25.952318, 33.925987, 35.699989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082851, 33.879417, 36.075211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859415, -0.449759, 0.243151,
		0.393590, -0.885529, -0.246831,
		0.326332, -0.116429, 0.938058,
		26.180752, 33.844490, 36.356628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064837, 33.345699, 35.351562>,  <25.952318, 33.925987, 35.699989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064837, 33.345699, 35.351562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166525, 33.329689, 34.965034>,  <26.227537, 33.320084, 34.733120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166525, 33.329689, 34.965034>,  <26.064837, 33.345699, 35.351562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166525, 33.329689, 34.965034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321886, -0.938681, 0.123560,
		-0.912009, -0.342456, -0.225749,
		0.254220, -0.040022, -0.966318,
		26.242790, 33.317684, 34.675140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719435, 32.837368, 34.987240>,  <26.064837, 33.345699, 35.351562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719435, 32.837368, 34.987240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077854, 32.921341, 34.830765>,  <26.292906, 32.971725, 34.736881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077854, 32.921341, 34.830765>,  <25.719435, 32.837368, 34.987240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077854, 32.921341, 34.830765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342421, -0.887633, 0.307986,
		-0.282570, -0.409920, -0.867248,
		0.896048, 0.209937, -0.391184,
		26.346668, 32.984322, 34.713409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974522, 32.317177, 34.561340>,  <25.719435, 32.837368, 34.987240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974522, 32.317177, 34.561340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296066, 32.499763, 34.713890>,  <26.488993, 32.609314, 34.805420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296066, 32.499763, 34.713890>,  <25.974522, 32.317177, 34.561340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296066, 32.499763, 34.713890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357928, -0.883300, 0.302767,
		0.475073, -0.106877, -0.873432,
		0.803861, 0.456462, 0.381378,
		26.537224, 32.636703, 34.828304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624668, 32.303509, 34.131771>,  <25.974522, 32.317177, 34.561340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624668, 32.303509, 34.131771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683470, 32.299877, 34.527409>,  <26.718750, 32.297699, 34.764790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683470, 32.299877, 34.527409>,  <26.624668, 32.303509, 34.131771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683470, 32.299877, 34.527409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275747, -0.959940, -0.049791,
		0.949923, 0.280060, -0.138612,
		0.147004, -0.009075, 0.989094,
		26.727571, 32.297153, 34.824139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312719, 32.359219, 34.089661>,  <26.624668, 32.303509, 34.131771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312719, 32.359219, 34.089661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659281, 32.542892, 34.168140>,  <27.867218, 32.653095, 34.215229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659281, 32.542892, 34.168140>,  <27.312719, 32.359219, 34.089661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659281, 32.542892, 34.168140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232160, 0.718286, -0.655871,
		-0.442091, 0.522700, 0.728931,
		0.866405, 0.459184, 0.196198,
		27.919203, 32.680649, 34.227001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203901, 32.916649, 34.602055>,  <27.312719, 32.359219, 34.089661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203901, 32.916649, 34.602055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488350, 32.945194, 34.322281>,  <27.659019, 32.962322, 34.154415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488350, 32.945194, 34.322281>,  <27.203901, 32.916649, 34.602055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488350, 32.945194, 34.322281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585378, 0.611104, -0.532808,
		0.389405, 0.788327, 0.476345,
		0.711123, 0.071364, -0.699436,
		27.701687, 32.966602, 34.112450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396509, 33.532211, 34.575680>,  <27.203901, 32.916649, 34.602055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396509, 33.532211, 34.575680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466343, 33.364071, 34.219517>,  <27.508244, 33.263187, 34.005817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466343, 33.364071, 34.219517>,  <27.396509, 33.532211, 34.575680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466343, 33.364071, 34.219517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529051, 0.722628, -0.444875,
		0.830437, 0.548739, -0.096228,
		0.174583, -0.420350, -0.890408,
		27.518717, 33.237965, 33.952393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447435, 34.144115, 34.246769>,  <27.396509, 33.532211, 34.575680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447435, 34.144115, 34.246769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370764, 33.845367, 33.992073>,  <27.324760, 33.666119, 33.839256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370764, 33.845367, 33.992073>,  <27.447435, 34.144115, 34.246769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370764, 33.845367, 33.992073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565399, 0.614330, -0.550385,
		0.802236, 0.254516, -0.540036,
		-0.191678, -0.746874, -0.636741,
		27.313261, 33.621304, 33.801052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447411, 34.374615, 33.580479>,  <27.447435, 34.144115, 34.246769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447411, 34.374615, 33.580479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255009, 34.029713, 33.517048>,  <27.139568, 33.822773, 33.478989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255009, 34.029713, 33.517048>,  <27.447411, 34.374615, 33.580479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255009, 34.029713, 33.517048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509249, 0.422025, -0.750040,
		0.713652, -0.280015, -0.642099,
		-0.481005, -0.862257, -0.158581,
		27.110706, 33.771034, 33.469475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446032, 34.219208, 32.837013>,  <27.447411, 34.374615, 33.580479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446032, 34.219208, 32.837013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137089, 34.041824, 33.018917>,  <26.951723, 33.935394, 33.128059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137089, 34.041824, 33.018917>,  <27.446032, 34.219208, 32.837013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137089, 34.041824, 33.018917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620309, 0.372554, -0.690232,
		0.136670, -0.815196, -0.562829,
		-0.772359, -0.443462, 0.454757,
		26.905380, 33.908787, 33.155342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042500, 33.839142, 32.356258>,  <27.446032, 34.219208, 32.837013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042500, 33.839142, 32.356258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794426, 33.931953, 32.656002>,  <26.645582, 33.987640, 32.835846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794426, 33.931953, 32.656002>,  <27.042500, 33.839142, 32.356258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794426, 33.931953, 32.656002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734205, 0.164708, -0.658646,
		-0.276249, -0.958663, 0.068206,
		-0.620186, 0.232027, 0.749355,
		26.608370, 34.001560, 32.880810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399296, 33.345421, 32.379559>,  <27.042500, 33.839142, 32.356258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399296, 33.345421, 32.379559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328024, 33.710152, 32.527515>,  <26.285261, 33.928989, 32.616291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328024, 33.710152, 32.527515>,  <26.399296, 33.345421, 32.379559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328024, 33.710152, 32.527515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868294, 0.031159, -0.495071,
		-0.462945, -0.409388, 0.786182,
		-0.178179, 0.911828, 0.369894,
		26.274570, 33.983700, 32.638485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533962, 32.765484, 31.912394>,  <26.399296, 33.345421, 32.379559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533962, 32.765484, 31.912394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926928, 32.809265, 31.851877>,  <27.162706, 32.835533, 31.815567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926928, 32.809265, 31.851877>,  <26.533962, 32.765484, 31.912394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926928, 32.809265, 31.851877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102789, -0.993385, -0.051200,
		-0.155892, 0.034749, -0.987163,
		0.982411, 0.109451, -0.151289,
		27.221651, 32.842102, 31.806490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939104, 33.291046, 31.731573>,  <26.533962, 32.765484, 31.912394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939104, 33.291046, 31.731573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773016, 33.472530, 31.416170>,  <25.673363, 33.581421, 31.226929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773016, 33.472530, 31.416170>,  <25.939104, 33.291046, 31.731573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773016, 33.472530, 31.416170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043076, 0.875590, 0.481131,
		0.908701, 0.165809, -0.383105,
		-0.415219, 0.453706, -0.788507,
		25.648451, 33.608643, 31.179617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097391, 33.979511, 31.747581>,  <25.939104, 33.291046, 31.731573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097391, 33.979511, 31.747581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766853, 34.027493, 31.527485>,  <25.568531, 34.056282, 31.395428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766853, 34.027493, 31.527485>,  <26.097391, 33.979511, 31.747581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766853, 34.027493, 31.527485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161912, 0.885195, 0.436136,
		0.539387, 0.449489, -0.712054,
		-0.826345, 0.119956, -0.550241,
		25.518950, 34.063480, 31.362413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822559, 34.562817, 31.790707>,  <26.097391, 33.979511, 31.747581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822559, 34.562817, 31.790707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478687, 34.483932, 31.602215>,  <25.272364, 34.436600, 31.489120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478687, 34.483932, 31.602215>,  <25.822559, 34.562817, 31.790707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478687, 34.483932, 31.602215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215419, 0.976397, -0.015631,
		0.463189, 0.088073, -0.881873,
		-0.859681, -0.197212, -0.471229,
		25.220783, 34.424770, 31.460846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360075, 33.981899, 31.816170>,  <25.822559, 34.562817, 31.790707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360075, 33.981899, 31.816170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220461, 33.806999, 32.147709>,  <25.136692, 33.702061, 32.346634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220461, 33.806999, 32.147709>,  <25.360075, 33.981899, 31.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220461, 33.806999, 32.147709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934781, -0.224753, 0.275082,
		0.066008, 0.870805, 0.487178,
		-0.349037, -0.437247, 0.828847,
		25.115749, 33.675823, 32.396362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756903, 34.129559, 32.411743>,  <25.360075, 33.981899, 31.816170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756903, 34.129559, 32.411743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607752, 33.768772, 32.498844>,  <25.518261, 33.552299, 32.551105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607752, 33.768772, 32.498844>,  <25.756903, 34.129559, 32.411743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607752, 33.768772, 32.498844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900001, -0.294478, 0.321374,
		-0.225745, 0.315812, 0.921576,
		-0.372877, -0.901968, 0.217755,
		25.495888, 33.498180, 32.564171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630608, 33.990131, 33.138351>,  <25.756903, 34.129559, 32.411743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630608, 33.990131, 33.138351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702057, 33.664013, 32.918034>,  <25.744926, 33.468342, 32.785843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702057, 33.664013, 32.918034>,  <25.630608, 33.990131, 33.138351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702057, 33.664013, 32.918034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975391, 0.073190, 0.207980,
		-0.129253, -0.574394, 0.808310,
		0.178622, -0.815300, -0.550799,
		25.755644, 33.419422, 32.752792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189987, 34.163139, 33.713699>,  <25.630608, 33.990131, 33.138351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189987, 34.163139, 33.713699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145758, 33.915005, 33.403099>,  <26.119221, 33.766125, 33.216740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145758, 33.915005, 33.403099>,  <26.189987, 34.163139, 33.713699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145758, 33.915005, 33.403099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761969, -0.554536, 0.334504,
		-0.638104, -0.554685, 0.533992,
		-0.110573, -0.620334, -0.776504,
		26.112585, 33.728905, 33.170147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976372, 33.364559, 33.755997>,  <26.189987, 34.163139, 33.713699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976372, 33.364559, 33.755997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265974, 33.457649, 33.496258>,  <26.439735, 33.513504, 33.340412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265974, 33.457649, 33.496258>,  <25.976372, 33.364559, 33.755997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265974, 33.457649, 33.496258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656424, -0.521705, 0.544915,
		-0.211955, -0.820770, -0.530482,
		0.724005, 0.232724, -0.649351,
		26.483175, 33.527466, 33.301453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320217, 32.780762, 33.424915>,  <25.976372, 33.364559, 33.755997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320217, 32.780762, 33.424915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585144, 33.080036, 33.409164>,  <26.744101, 33.259602, 33.399715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585144, 33.080036, 33.409164>,  <26.320217, 32.780762, 33.424915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585144, 33.080036, 33.409164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716398, -0.617036, 0.325638,
		0.219342, -0.243885, -0.944674,
		0.662316, 0.748189, -0.039377,
		26.783838, 33.304493, 33.397350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912220, 32.614498, 33.109612>,  <26.320217, 32.780762, 33.424915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912220, 32.614498, 33.109612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040323, 32.923313, 33.329208>,  <27.117186, 33.108601, 33.460968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040323, 32.923313, 33.329208>,  <26.912220, 32.614498, 33.109612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040323, 32.923313, 33.329208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763673, -0.553320, 0.332627,
		0.560570, 0.312726, -0.766788,
		0.320259, 0.772036, 0.548995,
		27.136400, 33.154922, 33.493908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595816, 32.753624, 32.828850>,  <26.912220, 32.614498, 33.109612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595816, 32.753624, 32.828850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546329, 32.894707, 33.199856>,  <27.516638, 32.979359, 33.422459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546329, 32.894707, 33.199856>,  <27.595816, 32.753624, 32.828850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546329, 32.894707, 33.199856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833886, -0.469706, 0.289844,
		0.537892, 0.809303, -0.236009,
		-0.123717, 0.352710, 0.927518,
		27.509214, 33.000519, 33.478111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232765, 32.992710, 32.977913>,  <27.595816, 32.753624, 32.828850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232765, 32.992710, 32.977913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067173, 32.897003, 33.329224>,  <27.967817, 32.839581, 33.540012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067173, 32.897003, 33.329224>,  <28.232765, 32.992710, 32.977913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067173, 32.897003, 33.329224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825033, -0.506303, 0.250953,
		0.384631, 0.828499, 0.407000,
		-0.413980, -0.239264, 0.878279,
		27.942980, 32.825222, 33.592709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810328, 32.608078, 33.313492>,  <28.232765, 32.992710, 32.977913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810328, 32.608078, 33.313492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531504, 32.539253, 33.591915>,  <28.364208, 32.497959, 33.758968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531504, 32.539253, 33.591915>,  <28.810328, 32.608078, 33.313492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531504, 32.539253, 33.591915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668863, -0.505789, 0.544794,
		0.258319, 0.845323, 0.467654,
		-0.697061, -0.172066, 0.696060,
		28.322386, 32.487633, 33.800732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065317, 32.816837, 34.033966>,  <28.810328, 32.608078, 33.313492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065317, 32.816837, 34.033966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800663, 32.519279, 34.071609>,  <28.641870, 32.340744, 34.094196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800663, 32.519279, 34.071609>,  <29.065317, 32.816837, 34.033966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800663, 32.519279, 34.071609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640059, -0.494930, 0.587680,
		-0.390596, 0.449066, 0.803601,
		-0.661633, -0.743898, 0.094111,
		28.602173, 32.296108, 34.099842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055447, 32.510525, 34.756836>,  <29.065317, 32.816837, 34.033966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055447, 32.510525, 34.756836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925138, 32.233715, 34.499161>,  <28.846954, 32.067631, 34.344555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925138, 32.233715, 34.499161>,  <29.055447, 32.510525, 34.756836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925138, 32.233715, 34.499161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548633, -0.693276, 0.467302,
		-0.769984, -0.201191, 0.605513,
		-0.325770, -0.692020, -0.644191,
		28.827408, 32.026108, 34.305904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786207, 31.794338, 34.975517>,  <29.055447, 32.510525, 34.756836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786207, 31.794338, 34.975517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914364, 31.734169, 34.601410>,  <28.991259, 31.698067, 34.376945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914364, 31.734169, 34.601410>,  <28.786207, 31.794338, 34.975517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914364, 31.734169, 34.601410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534031, -0.786784, 0.309486,
		-0.782403, -0.598619, -0.171756,
		0.320399, -0.150420, -0.935264,
		29.010481, 31.689041, 34.320831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931490, 31.110128, 34.977608>,  <28.786207, 31.794338, 34.975517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931490, 31.110128, 34.977608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130653, 31.196325, 34.641598>,  <29.250153, 31.248043, 34.439991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130653, 31.196325, 34.641598>,  <28.931490, 31.110128, 34.977608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130653, 31.196325, 34.641598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692244, -0.682226, 0.235301,
		-0.522383, -0.698663, -0.488862,
		0.497911, 0.215495, -0.840028,
		29.280027, 31.260973, 34.389587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122635, 30.547216, 34.835011>,  <28.931490, 31.110128, 34.977608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122635, 30.547216, 34.835011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360722, 30.813192, 34.654533>,  <29.503572, 30.972778, 34.546246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360722, 30.813192, 34.654533>,  <29.122635, 30.547216, 34.835011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360722, 30.813192, 34.654533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791711, -0.581359, 0.187658,
		-0.137524, -0.468911, -0.872473,
		0.595215, 0.664939, -0.451193,
		29.539286, 31.012674, 34.519176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546022, 30.235998, 34.320572>,  <29.122635, 30.547216, 34.835011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546022, 30.235998, 34.320572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750769, 30.546467, 34.467842>,  <29.873615, 30.732748, 34.556206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750769, 30.546467, 34.467842>,  <29.546022, 30.235998, 34.320572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750769, 30.546467, 34.467842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771294, -0.603943, 0.200894,
		0.378287, 0.181144, -0.907792,
		0.511863, 0.776170, 0.368179,
		29.904327, 30.779318, 34.578297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262190, 30.464912, 34.090576>,  <29.546022, 30.235998, 34.320572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262190, 30.464912, 34.090576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512751, 30.426846, 34.400043>,  <30.663088, 30.404005, 34.585724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512751, 30.426846, 34.400043>,  <30.262190, 30.464912, 34.090576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512751, 30.426846, 34.400043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725633, -0.291362, -0.623350,
		0.284741, 0.951867, -0.113452,
		0.626402, -0.095169, 0.773669,
		30.700670, 30.398294, 34.632145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791716, 30.941673, 33.950783>,  <30.262190, 30.464912, 34.090576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791716, 30.941673, 33.950783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893196, 30.624052, 34.171730>,  <30.954084, 30.433479, 34.304298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893196, 30.624052, 34.171730>,  <30.791716, 30.941673, 33.950783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893196, 30.624052, 34.171730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816139, -0.130788, -0.562860,
		0.519184, 0.593612, 0.614876,
		0.253702, -0.794053, 0.552373,
		30.969307, 30.385836, 34.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527988, 30.894661, 33.738262>,  <30.791716, 30.941673, 33.950783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527988, 30.894661, 33.738262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468773, 30.558657, 33.947056>,  <31.433243, 30.357054, 34.072330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468773, 30.558657, 33.947056>,  <31.527988, 30.894661, 33.738262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468773, 30.558657, 33.947056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908500, -0.324060, -0.263843,
		0.390784, 0.435161, 0.811124,
		-0.148039, -0.840012, 0.521981,
		31.424360, 30.306652, 34.103649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975740, 30.671717, 34.242226>,  <31.527988, 30.894661, 33.738262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975740, 30.671717, 34.242226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825502, 30.311777, 34.153500>,  <31.735359, 30.095814, 34.100262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825502, 30.311777, 34.153500>,  <31.975740, 30.671717, 34.242226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825502, 30.311777, 34.153500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924014, -0.345099, -0.164633,
		0.071596, -0.266797, 0.961089,
		-0.375594, -0.899848, -0.221817,
		31.712824, 30.041822, 34.086956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278717, 30.213415, 34.635815>,  <31.975740, 30.671717, 34.242226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278717, 30.213415, 34.635815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158554, 30.029842, 34.301357>,  <32.086456, 29.919699, 34.100681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158554, 30.029842, 34.301357>,  <32.278717, 30.213415, 34.635815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158554, 30.029842, 34.301357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900154, -0.426293, -0.089428,
		-0.315401, -0.779524, 0.541170,
		-0.300408, -0.458930, -0.836145,
		32.068432, 29.892164, 34.050514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578049, 30.938349, 34.749813>,  <32.278717, 30.213415, 34.635815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578049, 30.938349, 34.749813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874325, 31.024319, 35.004429>,  <33.052090, 31.075901, 35.157200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874325, 31.024319, 35.004429>,  <32.578049, 30.938349, 34.749813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874325, 31.024319, 35.004429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403074, 0.615842, -0.676957,
		-0.537505, 0.757988, 0.369517,
		0.740689, 0.214925, 0.636543,
		33.096531, 31.088797, 35.195393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679901, 31.690538, 34.783482>,  <32.578049, 30.938349, 34.749813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679901, 31.690538, 34.783482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980507, 31.427835, 34.808445>,  <33.160870, 31.270214, 34.823421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980507, 31.427835, 34.808445>,  <32.679901, 31.690538, 34.783482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980507, 31.427835, 34.808445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419422, 0.402625, -0.813621,
		0.509227, 0.637621, 0.578038,
		0.751514, -0.656759, 0.062405,
		33.205959, 31.230808, 34.827168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373875, 31.972626, 34.593487>,  <32.679901, 31.690538, 34.783482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373875, 31.972626, 34.593487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356770, 31.581732, 34.510361>,  <33.346508, 31.347197, 34.460484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356770, 31.581732, 34.510361>,  <33.373875, 31.972626, 34.593487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356770, 31.581732, 34.510361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589001, 0.143358, -0.795315,
		0.807000, -0.156411, 0.569462,
		-0.042759, -0.977233, -0.207816,
		33.343941, 31.288563, 34.448017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090038, 31.667259, 34.547844>,  <33.373875, 31.972626, 34.593487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090038, 31.667259, 34.547844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870083, 31.442457, 34.300694>,  <33.738110, 31.307577, 34.152405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870083, 31.442457, 34.300694>,  <34.090038, 31.667259, 34.547844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870083, 31.442457, 34.300694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593715, 0.257304, -0.762429,
		0.587469, -0.786096, 0.192181,
		-0.549893, -0.562004, -0.617875,
		33.705116, 31.273855, 34.115330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510159, 31.254354, 34.100174>,  <34.090038, 31.667259, 34.547844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510159, 31.254354, 34.100174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168285, 31.324860, 33.904850>,  <33.963161, 31.367163, 33.787655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168285, 31.324860, 33.904850>,  <34.510159, 31.254354, 34.100174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168285, 31.324860, 33.904850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500829, 0.032300, -0.864944,
		-0.136688, -0.983812, -0.115885,
		-0.854685, 0.176266, -0.488306,
		33.911880, 31.377739, 33.758358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541862, 30.775942, 33.525593>,  <34.510159, 31.254354, 34.100174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541862, 30.775942, 33.525593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334251, 31.113737, 33.472744>,  <34.209686, 31.316414, 33.441036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334251, 31.113737, 33.472744>,  <34.541862, 30.775942, 33.525593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334251, 31.113737, 33.472744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706725, 0.337038, -0.622049,
		-0.480783, -0.416230, -0.771751,
		-0.519025, 0.844487, -0.132118,
		34.178543, 31.367083, 33.433109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517902, 30.832422, 32.791698>,  <34.541862, 30.775942, 33.525593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517902, 30.832422, 32.791698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442402, 31.199818, 32.930695>,  <34.397102, 31.420256, 33.014091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442402, 31.199818, 32.930695>,  <34.517902, 30.832422, 32.791698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442402, 31.199818, 32.930695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605170, 0.387472, -0.695438,
		-0.773395, 0.079024, -0.628980,
		-0.188756, 0.918488, 0.347492,
		34.385777, 31.475365, 33.034943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326515, 31.242487, 32.267292>,  <34.517902, 30.832422, 32.791698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326515, 31.242487, 32.267292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474575, 31.497425, 32.537636>,  <34.563412, 31.650387, 32.699841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474575, 31.497425, 32.537636>,  <34.326515, 31.242487, 32.267292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474575, 31.497425, 32.537636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646452, 0.345768, -0.680106,
		-0.667151, 0.688650, -0.284027,
		0.370148, 0.637343, 0.675858,
		34.585621, 31.688627, 32.740395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437141, 31.941963, 31.926575>,  <34.326515, 31.242487, 32.267292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437141, 31.941963, 31.926575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685516, 31.923414, 32.239571>,  <34.834541, 31.912285, 32.427368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685516, 31.923414, 32.239571>,  <34.437141, 31.941963, 31.926575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685516, 31.923414, 32.239571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734527, 0.382978, -0.560176,
		-0.273700, 0.922593, 0.271865,
		0.620933, -0.046372, 0.782491,
		34.871796, 31.909502, 32.474319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770252, 32.532196, 32.058773>,  <34.437141, 31.941963, 31.926575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770252, 32.532196, 32.058773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042061, 32.321178, 32.262714>,  <35.205147, 32.194569, 32.385078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042061, 32.321178, 32.262714>,  <34.770252, 32.532196, 32.058773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042061, 32.321178, 32.262714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733005, 0.458846, -0.502160,
		0.030965, 0.714954, 0.698485,
		0.679519, -0.527542, 0.509857,
		35.245918, 32.162914, 32.415672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271240, 32.973202, 32.036617>,  <34.770252, 32.532196, 32.058773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271240, 32.973202, 32.036617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447399, 32.633759, 32.153862>,  <35.553093, 32.430092, 32.224209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447399, 32.633759, 32.153862>,  <35.271240, 32.973202, 32.036617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447399, 32.633759, 32.153862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869782, 0.322342, -0.373598,
		0.222558, 0.419471, 0.880064,
		0.440395, -0.848611, 0.293108,
		35.579517, 32.379177, 32.241795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824532, 33.148739, 32.477531>,  <35.271240, 32.973202, 32.036617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824532, 33.148739, 32.477531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899975, 32.795227, 32.306248>,  <35.945240, 32.583118, 32.203480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899975, 32.795227, 32.306248>,  <35.824532, 33.148739, 32.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899975, 32.795227, 32.306248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926727, 0.304457, -0.220186,
		0.324966, -0.355300, 0.876447,
		0.188609, -0.883780, -0.428205,
		35.956558, 32.530094, 32.177788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461426, 32.985023, 32.634571>,  <35.824532, 33.148739, 32.477531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461426, 32.985023, 32.634571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420681, 32.752373, 32.311749>,  <36.396236, 32.612782, 32.118057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420681, 32.752373, 32.311749>,  <36.461426, 32.985023, 32.634571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420681, 32.752373, 32.311749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886521, 0.315000, -0.338904,
		0.451338, -0.749988, 0.483541,
		-0.101859, -0.581629, -0.807052,
		36.390125, 32.577885, 32.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254246, 32.872173, 32.532104>,  <36.461426, 32.985023, 32.634571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254246, 32.872173, 32.532104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043880, 32.797512, 32.200180>,  <36.917664, 32.752716, 32.001026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043880, 32.797512, 32.200180>,  <37.254246, 32.872173, 32.532104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043880, 32.797512, 32.200180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767675, 0.315872, -0.557584,
		0.366189, -0.930260, -0.022829,
		-0.525909, -0.186656, -0.829807,
		36.886108, 32.741516, 31.951239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725967, 32.599667, 32.107296>,  <37.254246, 32.872173, 32.532104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725967, 32.599667, 32.107296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431988, 32.724285, 31.866367>,  <37.255600, 32.799057, 31.721809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431988, 32.724285, 31.866367>,  <37.725967, 32.599667, 32.107296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431988, 32.724285, 31.866367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678100, 0.330436, -0.656501,
		-0.005499, -0.890928, -0.454111,
		-0.734949, 0.311542, -0.602321,
		37.211502, 32.817749, 31.685671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024696, 32.540997, 31.488026>,  <37.725967, 32.599667, 32.107296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024696, 32.540997, 31.488026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719936, 32.790142, 31.416971>,  <37.537079, 32.939629, 31.374338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719936, 32.790142, 31.416971>,  <38.024696, 32.540997, 31.488026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719936, 32.790142, 31.416971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557571, 0.491175, -0.669224,
		-0.329582, -0.608927, -0.721515,
		-0.761899, 0.622860, -0.177638,
		37.491367, 32.977001, 31.363680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035538, 32.588829, 30.773584>,  <38.024696, 32.540997, 31.488026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035538, 32.588829, 30.773584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830112, 32.909534, 30.895851>,  <37.706860, 33.101959, 30.969212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830112, 32.909534, 30.895851>,  <38.035538, 32.588829, 30.773584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830112, 32.909534, 30.895851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473768, 0.561967, -0.678040,
		-0.715401, -0.203399, -0.668453,
		-0.513561, 0.801762, 0.305667,
		37.676044, 33.150063, 30.987551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843666, 32.978771, 30.111887>,  <38.035538, 32.588829, 30.773584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843666, 32.978771, 30.111887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789986, 33.229752, 30.418690>,  <37.757778, 33.380341, 30.602772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789986, 33.229752, 30.418690>,  <37.843666, 32.978771, 30.111887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789986, 33.229752, 30.418690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461942, 0.724377, -0.511749,
		-0.876698, 0.285634, -0.387058,
		-0.134204, 0.627448, 0.767006,
		37.749725, 33.417984, 30.648792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362541, 33.331047, 29.925718>,  <37.843666, 32.978771, 30.111887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362541, 33.331047, 29.925718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568466, 33.541573, 30.196409>,  <37.692020, 33.667889, 30.358824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568466, 33.541573, 30.196409>,  <37.362541, 33.331047, 29.925718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568466, 33.541573, 30.196409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105159, 0.744637, -0.659133,
		-0.850830, 0.410492, 0.327999,
		0.514809, 0.526318, 0.676727,
		37.722908, 33.699467, 30.399427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043186, 33.973022, 30.005775>,  <37.362541, 33.331047, 29.925718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043186, 33.973022, 30.005775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423107, 34.030399, 30.116982>,  <37.651062, 34.064823, 30.183704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423107, 34.030399, 30.116982>,  <37.043186, 33.973022, 30.005775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423107, 34.030399, 30.116982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079177, 0.749533, -0.657215,
		-0.302651, 0.646239, 0.700555,
		0.949807, 0.143439, 0.278014,
		37.708050, 34.073433, 30.200386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220623, 34.651020, 29.955420>,  <37.043186, 33.973022, 30.005775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220623, 34.651020, 29.955420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588898, 34.496037, 29.974230>,  <37.809864, 34.403046, 29.985516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588898, 34.496037, 29.974230>,  <37.220623, 34.651020, 29.955420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588898, 34.496037, 29.974230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299958, 0.625337, -0.720402,
		0.249718, 0.677371, 0.691960,
		0.920688, -0.387456, 0.047025,
		37.865105, 34.379799, 29.988337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627018, 35.226906, 29.813066>,  <37.220623, 34.651020, 29.955420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627018, 35.226906, 29.813066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869328, 34.912647, 29.762789>,  <38.014713, 34.724091, 29.732622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869328, 34.912647, 29.762789>,  <37.627018, 35.226906, 29.813066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869328, 34.912647, 29.762789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415297, 0.446974, -0.792302,
		0.678652, 0.427753, 0.597041,
		0.605772, -0.785647, -0.125696,
		38.051060, 34.676952, 29.725080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153996, 35.510452, 29.588295>,  <37.627018, 35.226906, 29.813066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153996, 35.510452, 29.588295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228615, 35.131824, 29.483070>,  <38.273388, 34.904648, 29.419935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228615, 35.131824, 29.483070>,  <38.153996, 35.510452, 29.588295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228615, 35.131824, 29.483070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673460, 0.318163, -0.667251,
		0.715297, -0.052685, 0.696831,
		0.186552, -0.946571, -0.263062,
		38.284580, 34.847855, 29.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891571, 35.505375, 29.503572>,  <38.153996, 35.510452, 29.588295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891571, 35.505375, 29.503572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721394, 35.193008, 29.320633>,  <38.619286, 35.005589, 29.210869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721394, 35.193008, 29.320633>,  <38.891571, 35.505375, 29.503572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721394, 35.193008, 29.320633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533320, 0.191938, -0.823850,
		0.731141, -0.594414, 0.334820,
		-0.425444, -0.780917, -0.457347,
		38.593761, 34.958733, 29.183430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435802, 35.003151, 29.374069>,  <38.891571, 35.505375, 29.503572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435802, 35.003151, 29.374069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146042, 34.924446, 29.109789>,  <38.972187, 34.877224, 28.951220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146042, 34.924446, 29.109789>,  <39.435802, 35.003151, 29.374069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146042, 34.924446, 29.109789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665432, 0.050833, -0.744726,
		0.180117, -0.979133, 0.094107,
		-0.724402, -0.196760, -0.660702,
		38.928722, 34.865417, 28.911579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764370, 34.533989, 28.949591>,  <39.435802, 35.003151, 29.374069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764370, 34.533989, 28.949591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463154, 34.686028, 28.734758>,  <39.282425, 34.777252, 28.605860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463154, 34.686028, 28.734758>,  <39.764370, 34.533989, 28.949591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463154, 34.686028, 28.734758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606387, 0.084076, -0.790713,
		-0.255392, -0.921117, -0.293799,
		-0.753040, 0.380098, -0.537081,
		39.237240, 34.800056, 28.573633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830967, 34.229252, 28.304564>,  <39.764370, 34.533989, 28.949591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830967, 34.229252, 28.304564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604622, 34.549400, 28.225367>,  <39.468815, 34.741489, 28.177849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604622, 34.549400, 28.225367>,  <39.830967, 34.229252, 28.304564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604622, 34.549400, 28.225367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459162, 0.106456, -0.881951,
		-0.684811, -0.589977, -0.427740,
		-0.565866, 0.800371, -0.197993,
		39.434860, 34.789513, 28.165968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902481, 34.233906, 27.610300>,  <39.830967, 34.229252, 28.304564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902481, 34.233906, 27.610300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720127, 34.585327, 27.667326>,  <39.610714, 34.796181, 27.701542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720127, 34.585327, 27.667326>,  <39.902481, 34.233906, 27.610300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720127, 34.585327, 27.667326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376467, 0.335482, -0.863553,
		-0.806502, -0.340006, -0.483684,
		-0.455881, 0.878549, 0.142566,
		39.583363, 34.848892, 27.710096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580250, 34.427963, 26.921228>,  <39.902481, 34.233906, 27.610300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580250, 34.427963, 26.921228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655430, 34.736210, 27.164808>,  <39.700539, 34.921158, 27.310957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655430, 34.736210, 27.164808>,  <39.580250, 34.427963, 26.921228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655430, 34.736210, 27.164808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590198, 0.406965, -0.697170,
		-0.785074, 0.490433, -0.378330,
		0.187948, 0.770620, 0.608950,
		39.711815, 34.967396, 27.347494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843224, 34.944756, 26.386183>,  <39.580250, 34.427963, 26.921228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843224, 34.944756, 26.386183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923286, 35.139118, 26.726496>,  <39.971325, 35.255737, 26.930683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923286, 35.139118, 26.726496>,  <39.843224, 34.944756, 26.386183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923286, 35.139118, 26.726496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458610, 0.720885, -0.519617,
		-0.865802, 0.494183, -0.078550,
		0.200160, 0.485910, 0.850780,
		39.983334, 35.284889, 26.981730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691227, 35.605309, 26.204048>,  <39.843224, 34.944756, 26.386183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691227, 35.605309, 26.204048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939041, 35.620163, 26.517683>,  <40.087730, 35.629074, 26.705864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939041, 35.620163, 26.517683>,  <39.691227, 35.605309, 26.204048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939041, 35.620163, 26.517683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622161, 0.585836, -0.519338,
		-0.478632, 0.809579, 0.339844,
		0.619538, 0.037134, 0.784088,
		40.124901, 35.631302, 26.752909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925369, 36.296757, 26.399963>,  <39.691227, 35.605309, 26.204048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925369, 36.296757, 26.399963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203743, 36.054108, 26.553684>,  <40.370766, 35.908520, 26.645916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203743, 36.054108, 26.553684>,  <39.925369, 36.296757, 26.399963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203743, 36.054108, 26.553684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704540, 0.473252, -0.528826,
		0.138925, 0.638784, 0.756740,
		0.695934, -0.606620, 0.384302,
		40.412521, 35.872120, 26.668974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468987, 36.559090, 26.721308>,  <39.925369, 36.296757, 26.399963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468987, 36.559090, 26.721308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614277, 36.224312, 26.557560>,  <40.701450, 36.023445, 26.459311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614277, 36.224312, 26.557560>,  <40.468987, 36.559090, 26.721308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614277, 36.224312, 26.557560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365854, 0.532211, -0.763481,
		0.856865, 0.127547, 0.499514,
		0.363226, -0.836949, -0.409369,
		40.723244, 35.973228, 26.434750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191074, 36.678967, 26.618584>,  <40.468987, 36.559090, 26.721308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191074, 36.678967, 26.618584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069141, 36.402424, 26.356558>,  <40.995983, 36.236500, 26.199343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069141, 36.402424, 26.356558>,  <41.191074, 36.678967, 26.618584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069141, 36.402424, 26.356558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506809, 0.464582, -0.726160,
		0.806363, -0.553350, 0.208764,
		-0.304833, -0.691352, -0.655064,
		40.977692, 36.195019, 26.160038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727020, 36.354202, 26.264063>,  <41.191074, 36.678967, 26.618584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727020, 36.354202, 26.264063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406158, 36.368149, 26.025621>,  <41.213642, 36.376518, 25.882557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406158, 36.368149, 26.025621>,  <41.727020, 36.354202, 26.264063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406158, 36.368149, 26.025621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496317, 0.593987, -0.633127,
		0.332002, -0.803719, -0.493772,
		-0.802150, 0.034868, -0.596104,
		41.165512, 36.378609, 25.846790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052361, 36.312351, 25.548616>,  <41.727020, 36.354202, 26.264063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052361, 36.312351, 25.548616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683617, 36.452423, 25.482225>,  <41.462372, 36.536465, 25.442390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683617, 36.452423, 25.482225>,  <42.052361, 36.312351, 25.548616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683617, 36.452423, 25.482225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352146, 0.578189, -0.735996,
		-0.161762, -0.736934, -0.656324,
		-0.921860, 0.350178, -0.165980,
		41.407059, 36.557476, 25.432432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995323, 36.303921, 24.746883>,  <42.052361, 36.312351, 25.548616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995323, 36.303921, 24.746883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680122, 36.502743, 24.892200>,  <41.491001, 36.622036, 24.979391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680122, 36.502743, 24.892200>,  <41.995323, 36.303921, 24.746883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680122, 36.502743, 24.892200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186647, 0.755176, -0.628388,
		-0.586695, -0.427366, -0.687857,
		-0.788005, 0.497059, 0.363291,
		41.443722, 36.651859, 25.001188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625519, 36.540806, 24.188519>,  <41.995323, 36.303921, 24.746883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625519, 36.540806, 24.188519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491680, 36.763885, 24.492365>,  <41.411377, 36.897732, 24.674673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491680, 36.763885, 24.492365>,  <41.625519, 36.540806, 24.188519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491680, 36.763885, 24.492365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127460, 0.825454, -0.549890,
		-0.933700, -0.087174, -0.347282,
		-0.334601, 0.557697, 0.759616,
		41.391300, 36.931194, 24.720249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080776, 36.846596, 23.944345>,  <41.625519, 36.540806, 24.188519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080776, 36.846596, 23.944345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230186, 37.078236, 24.234205>,  <41.319832, 37.217220, 24.408121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230186, 37.078236, 24.234205>,  <41.080776, 36.846596, 23.944345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230186, 37.078236, 24.234205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183815, 0.719495, -0.669731,
		-0.909225, 0.383364, 0.162304,
		0.373528, 0.579102, 0.724650,
		41.342243, 37.251965, 24.451601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824852, 37.554592, 23.795807>,  <41.080776, 36.846596, 23.944345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824852, 37.554592, 23.795807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134197, 37.626476, 24.038992>,  <41.319805, 37.669605, 24.184904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134197, 37.626476, 24.038992>,  <40.824852, 37.554592, 23.795807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134197, 37.626476, 24.038992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325406, 0.710493, -0.623948,
		-0.544084, 0.680371, 0.490987,
		0.773359, 0.179710, 0.607964,
		41.366203, 37.680389, 24.221382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932453, 38.184586, 23.797947>,  <40.824852, 37.554592, 23.795807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932453, 38.184586, 23.797947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292564, 38.099827, 23.950052>,  <41.508633, 38.048973, 24.041315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292564, 38.099827, 23.950052>,  <40.932453, 38.184586, 23.797947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292564, 38.099827, 23.950052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412930, 0.692212, -0.591887,
		-0.137804, 0.689885, 0.710682,
		0.900277, -0.211897, 0.380264,
		41.562649, 38.036259, 24.064131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125008, 38.823418, 23.931581>,  <40.932453, 38.184586, 23.797947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125008, 38.823418, 23.931581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453854, 38.597988, 23.899307>,  <41.651161, 38.462730, 23.879942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453854, 38.597988, 23.899307>,  <41.125008, 38.823418, 23.931581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453854, 38.597988, 23.899307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403131, 0.676326, -0.616497,
		0.402015, 0.474303, 0.783212,
		0.822113, -0.563578, -0.080686,
		41.700489, 38.428913, 23.875101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661873, 39.288471, 23.968521>,  <41.125008, 38.823418, 23.931581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661873, 39.288471, 23.968521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827572, 38.954803, 23.822887>,  <41.926991, 38.754601, 23.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827572, 38.954803, 23.822887>,  <41.661873, 39.288471, 23.968521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827572, 38.954803, 23.822887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336349, 0.512005, -0.790393,
		0.845736, 0.204958, 0.492669,
		0.414246, -0.834172, -0.364084,
		41.951847, 38.704552, 23.713663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308136, 39.427494, 23.785969>,  <41.661873, 39.288471, 23.968521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308136, 39.427494, 23.785969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249306, 39.092205, 23.575920>,  <42.214008, 38.891033, 23.449892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249306, 39.092205, 23.575920>,  <42.308136, 39.427494, 23.785969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249306, 39.092205, 23.575920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319327, 0.462229, -0.827269,
		0.936162, -0.289354, 0.199686,
		-0.147073, -0.838223, -0.525120,
		42.205185, 38.840736, 23.418385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863575, 39.298122, 23.361135>,  <42.308136, 39.427494, 23.785969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863575, 39.298122, 23.361135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579735, 39.094791, 23.165964>,  <42.409431, 38.972794, 23.048861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579735, 39.094791, 23.165964>,  <42.863575, 39.298122, 23.361135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579735, 39.094791, 23.165964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251533, 0.464109, -0.849314,
		0.658182, -0.725401, -0.201469,
		-0.709597, -0.508327, -0.487930,
		42.366856, 38.942295, 23.019585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146732, 39.091496, 22.637949>,  <42.863575, 39.298122, 23.361135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146732, 39.091496, 22.637949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746891, 39.083500, 22.630106>,  <42.506985, 39.078701, 22.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746891, 39.083500, 22.630106>,  <43.146732, 39.091496, 22.637949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746891, 39.083500, 22.630106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008635, 0.445979, -0.895002,
		0.026636, -0.894820, -0.445632,
		-0.999608, -0.019992, -0.019606,
		42.447010, 39.077503, 22.624224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990498, 38.950874, 21.960514>,  <43.146732, 39.091496, 22.637949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990498, 38.950874, 21.960514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643101, 39.112026, 22.076040>,  <42.434662, 39.208717, 22.145355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643101, 39.112026, 22.076040>,  <42.990498, 38.950874, 21.960514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643101, 39.112026, 22.076040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129805, 0.377470, -0.916879,
		-0.478412, -0.833789, -0.275532,
		-0.868488, 0.402881, 0.288816,
		42.382553, 39.232891, 22.162685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448223, 38.710125, 21.553268>,  <42.990498, 38.950874, 21.960514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448223, 38.710125, 21.553268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353123, 39.071854, 21.695068>,  <42.296062, 39.288891, 21.780148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353123, 39.071854, 21.695068>,  <42.448223, 38.710125, 21.553268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353123, 39.071854, 21.695068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113004, 0.336733, -0.934795,
		-0.964730, -0.262311, 0.022133,
		-0.237754, 0.904325, 0.354498,
		42.281796, 39.343151, 21.801418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939159, 38.919193, 21.204004>,  <42.448223, 38.710125, 21.553268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939159, 38.919193, 21.204004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123875, 39.255360, 21.317461>,  <42.234703, 39.457062, 21.385534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123875, 39.255360, 21.317461>,  <41.939159, 38.919193, 21.204004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123875, 39.255360, 21.317461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058395, 0.347889, -0.935715,
		-0.885068, 0.415536, 0.209726,
		0.461785, 0.840418, 0.283641,
		42.262409, 39.507484, 21.402554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640663, 39.295834, 20.801128>,  <41.939159, 38.919193, 21.204004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640663, 39.295834, 20.801128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995190, 39.456699, 20.892963>,  <42.207905, 39.553219, 20.948065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995190, 39.456699, 20.892963>,  <41.640663, 39.295834, 20.801128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995190, 39.456699, 20.892963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171010, 0.176496, -0.969332,
		-0.430354, 0.898394, 0.087656,
		0.886313, 0.402166, 0.229590,
		42.261086, 39.577351, 20.961840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220161, 39.653023, 20.473593>,  <41.640663, 39.295834, 20.801128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220161, 39.653023, 20.473593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147491, 39.367325, 20.743954>,  <41.103889, 39.195904, 20.906170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147491, 39.367325, 20.743954>,  <41.220161, 39.653023, 20.473593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147491, 39.367325, 20.743954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981734, -0.092237, 0.166408,
		-0.056513, 0.693788, 0.717959,
		-0.181674, -0.714248, 0.675902,
		41.092991, 39.153049, 20.946724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929329, 39.934109, 20.365290>,  <41.220161, 39.653023, 20.473593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929329, 39.934109, 20.365290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718910, 40.273670, 20.385830>,  <41.592659, 40.477406, 20.398155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718910, 40.273670, 20.385830>,  <41.929329, 39.934109, 20.365290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718910, 40.273670, 20.385830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212859, 0.072964, 0.974355,
		0.823387, 0.523487, -0.219080,
		-0.526047, 0.848904, 0.051352,
		41.561096, 40.528343, 20.401236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274269, 40.391762, 20.792059>,  <41.929329, 39.934109, 20.365290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274269, 40.391762, 20.792059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896267, 40.522587, 20.791773>,  <41.669468, 40.601082, 20.791601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896267, 40.522587, 20.791773>,  <42.274269, 40.391762, 20.792059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896267, 40.522587, 20.791773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096715, 0.281534, 0.954665,
		0.312441, 0.902090, -0.297682,
		-0.945001, 0.327067, -0.000717,
		41.612766, 40.620708, 20.791557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184628, 40.624275, 21.497494>,  <42.274269, 40.391762, 20.792059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184628, 40.624275, 21.497494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943844, 40.878120, 21.303623>,  <41.799374, 41.030426, 21.187302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943844, 40.878120, 21.303623>,  <42.184628, 40.624275, 21.497494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943844, 40.878120, 21.303623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115333, 0.531504, 0.839167,
		0.790152, 0.561046, -0.246754,
		-0.601962, 0.634611, -0.484676,
		41.763256, 41.068504, 21.158220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278572, 41.204510, 22.031216>,  <42.184628, 40.624275, 21.497494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278572, 41.204510, 22.031216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975353, 41.309261, 21.792294>,  <41.793423, 41.372112, 21.648939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975353, 41.309261, 21.792294>,  <42.278572, 41.204510, 22.031216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975353, 41.309261, 21.792294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306638, 0.665192, 0.680803,
		0.575614, 0.699240, -0.423947,
		-0.758051, 0.261881, -0.597308,
		41.747936, 41.387825, 21.613102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587341, 41.471645, 22.682711>,  <42.278572, 41.204510, 22.031216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587341, 41.471645, 22.682711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215984, 41.465328, 22.534203>,  <41.993172, 41.461536, 22.445099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215984, 41.465328, 22.534203>,  <42.587341, 41.471645, 22.682711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215984, 41.465328, 22.534203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321529, -0.466754, 0.823869,
		-0.186304, 0.884246, 0.428252,
		-0.928391, -0.015795, -0.371269,
		41.937466, 41.460590, 22.422821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135765, 41.653366, 23.292843>,  <42.587341, 41.471645, 22.682711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135765, 41.653366, 23.292843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945702, 41.451103, 23.004805>,  <41.831665, 41.329746, 22.831982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945702, 41.451103, 23.004805>,  <42.135765, 41.653366, 23.292843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945702, 41.451103, 23.004805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510199, -0.508433, 0.693680,
		-0.716886, 0.696998, -0.016402,
		-0.475154, -0.505657, -0.720096,
		41.803154, 41.299404, 22.788776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335762, 41.723236, 23.257145>,  <42.135765, 41.653366, 23.292843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335762, 41.723236, 23.257145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489651, 41.371395, 23.145224>,  <41.581985, 41.160290, 23.078070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489651, 41.371395, 23.145224>,  <41.335762, 41.723236, 23.257145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489651, 41.371395, 23.145224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493713, -0.452226, 0.742791,
		-0.779895, -0.147624, -0.608252,
		0.384721, -0.879602, -0.279805,
		41.605068, 41.107513, 23.061283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745247, 41.437340, 23.215445>,  <41.335762, 41.723236, 23.257145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745247, 41.437340, 23.215445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028095, 41.160000, 23.270937>,  <41.197803, 40.993595, 23.304232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028095, 41.160000, 23.270937>,  <40.745247, 41.437340, 23.215445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028095, 41.160000, 23.270937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569105, -0.441632, 0.693599,
		-0.419639, -0.569411, -0.706876,
		0.707123, -0.693348, 0.138729,
		41.240231, 40.951996, 23.312555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353985, 40.926960, 23.146259>,  <40.745247, 41.437340, 23.215445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353985, 40.926960, 23.146259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670025, 40.801369, 23.356844>,  <40.859650, 40.726013, 23.483194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670025, 40.801369, 23.356844>,  <40.353985, 40.926960, 23.146259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670025, 40.801369, 23.356844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612630, -0.375325, 0.695568,
		-0.020800, -0.872094, -0.488897,
		0.790096, -0.313980, 0.526464,
		40.907055, 40.707172, 23.514784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208412, 40.254616, 23.288387>,  <40.353985, 40.926960, 23.146259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208412, 40.254616, 23.288387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484135, 40.362385, 23.557390>,  <40.649567, 40.427044, 23.718792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484135, 40.362385, 23.557390>,  <40.208412, 40.254616, 23.288387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484135, 40.362385, 23.557390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545482, -0.417879, 0.726517,
		0.476765, -0.867635, -0.141083,
		0.689307, 0.269419, 0.672509,
		40.690926, 40.443211, 23.759144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302460, 39.748299, 23.715179>,  <40.208412, 40.254616, 23.288387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302460, 39.748299, 23.715179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452335, 40.041592, 23.942152>,  <40.542263, 40.217567, 24.078335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452335, 40.041592, 23.942152>,  <40.302460, 39.748299, 23.715179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452335, 40.041592, 23.942152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347181, -0.456525, 0.819176,
		0.859693, -0.503939, 0.083509,
		0.374691, 0.733233, 0.567430,
		40.564743, 40.261562, 24.112381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621124, 39.385998, 24.247448>,  <40.302460, 39.748299, 23.715179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621124, 39.385998, 24.247448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568314, 39.761299, 24.375359>,  <40.536629, 39.986481, 24.452105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568314, 39.761299, 24.375359>,  <40.621124, 39.385998, 24.247448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568314, 39.761299, 24.375359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284079, -0.344881, 0.894626,
		0.949667, 0.027272, 0.312071,
		-0.132025, 0.938250, 0.319775,
		40.528706, 40.042774, 24.471291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756302, 39.246208, 24.936749>,  <40.621124, 39.385998, 24.247448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756302, 39.246208, 24.936749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590107, 39.610046, 24.936424>,  <40.490391, 39.828350, 24.936230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590107, 39.610046, 24.936424>,  <40.756302, 39.246208, 24.936749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590107, 39.610046, 24.936424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307408, -0.139579, 0.941285,
		0.856078, 0.391343, 0.337611,
		-0.415489, 0.909598, -0.000811,
		40.465462, 39.882927, 24.936180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930294, 39.408852, 25.553576>,  <40.756302, 39.246208, 24.936749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930294, 39.408852, 25.553576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645912, 39.665661, 25.438797>,  <40.475281, 39.819748, 25.369930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645912, 39.665661, 25.438797>,  <40.930294, 39.408852, 25.553576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645912, 39.665661, 25.438797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446606, -0.097026, 0.889454,
		0.543213, 0.760517, 0.355715,
		-0.710959, 0.642027, -0.286946,
		40.432625, 39.858269, 25.352713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774792, 39.959316, 26.129631>,  <40.930294, 39.408852, 25.553576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774792, 39.959316, 26.129631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440022, 39.976662, 25.911394>,  <40.239159, 39.987068, 25.780453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440022, 39.976662, 25.911394>,  <40.774792, 39.959316, 26.129631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440022, 39.976662, 25.911394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527683, -0.328508, 0.783347,
		-0.145264, 0.943505, 0.297819,
		-0.836929, 0.043362, -0.545592,
		40.188942, 39.989670, 25.747717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187840, 40.289280, 26.513700>,  <40.774792, 39.959316, 26.129631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187840, 40.289280, 26.513700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016510, 40.060303, 26.234032>,  <39.913712, 39.922916, 26.066231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016510, 40.060303, 26.234032>,  <40.187840, 40.289280, 26.513700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016510, 40.060303, 26.234032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585202, -0.413840, 0.697334,
		-0.688531, 0.707845, -0.157736,
		-0.428327, -0.572443, -0.699174,
		39.888012, 39.888569, 26.024279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524975, 40.290272, 26.652031>,  <40.187840, 40.289280, 26.513700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524975, 40.290272, 26.652031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579006, 39.965828, 26.424397>,  <39.611423, 39.771160, 26.287817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579006, 39.965828, 26.424397>,  <39.524975, 40.290272, 26.652031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579006, 39.965828, 26.424397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611838, -0.520047, 0.595990,
		-0.779364, 0.267682, -0.566515,
		0.135078, -0.811108, -0.569084,
		39.619530, 39.722496, 26.253672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787628, 40.072300, 26.530792>,  <39.524975, 40.290272, 26.652031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787628, 40.072300, 26.530792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035320, 39.765720, 26.462547>,  <39.183937, 39.581772, 26.421600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035320, 39.765720, 26.462547>,  <38.787628, 40.072300, 26.530792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035320, 39.765720, 26.462547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498872, -0.551812, 0.668303,
		-0.606369, -0.328718, -0.724059,
		0.619228, -0.766452, -0.170613,
		39.221088, 39.535786, 26.411364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453407, 39.541477, 26.040247>,  <38.787628, 40.072300, 26.530792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453407, 39.541477, 26.040247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735516, 39.356247, 26.254969>,  <38.904781, 39.245110, 26.383801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735516, 39.356247, 26.254969>,  <38.453407, 39.541477, 26.040247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735516, 39.356247, 26.254969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701675, -0.564084, 0.435272,
		0.101237, -0.683644, -0.722760,
		0.705268, -0.463077, 0.536802,
		38.947098, 39.217323, 26.416010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213120, 38.794697, 26.094301>,  <38.453407, 39.541477, 26.040247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213120, 38.794697, 26.094301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490784, 38.808170, 26.381914>,  <38.657383, 38.816254, 26.554482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490784, 38.808170, 26.381914>,  <38.213120, 38.794697, 26.094301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490784, 38.808170, 26.381914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584917, -0.555811, 0.590717,
		0.419543, -0.830626, -0.366119,
		0.694158, 0.033682, 0.719034,
		38.699032, 38.818275, 26.597624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231102, 38.098038, 26.360823>,  <38.213120, 38.794697, 26.094301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231102, 38.098038, 26.360823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368839, 38.337799, 26.649860>,  <38.451481, 38.481655, 26.823282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368839, 38.337799, 26.649860>,  <38.231102, 38.098038, 26.360823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368839, 38.337799, 26.649860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648156, -0.405038, 0.644855,
		0.679207, -0.690404, 0.249037,
		0.344342, 0.599405, 0.722594,
		38.472141, 38.517620, 26.866638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518402, 37.664860, 26.985310>,  <38.231102, 38.098038, 26.360823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518402, 37.664860, 26.985310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444206, 38.023647, 27.145832>,  <38.399689, 38.238918, 27.242146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444206, 38.023647, 27.145832>,  <38.518402, 37.664860, 26.985310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444206, 38.023647, 27.145832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623206, -0.423137, 0.657700,
		0.759742, -0.128100, 0.637482,
		-0.185491, 0.896964, 0.401308,
		38.388557, 38.292736, 27.266224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555077, 37.599644, 27.649086>,  <38.518402, 37.664860, 26.985310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555077, 37.599644, 27.649086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344208, 37.938866, 27.627569>,  <38.217686, 38.142399, 27.614660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344208, 37.938866, 27.627569>,  <38.555077, 37.599644, 27.649086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344208, 37.938866, 27.627569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664351, -0.371850, 0.648357,
		0.529841, 0.377529, 0.759434,
		-0.527169, 0.848056, -0.053790,
		38.186058, 38.193283, 27.611433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465664, 37.698380, 28.280424>,  <38.555077, 37.599644, 27.649086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465664, 37.698380, 28.280424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172775, 37.891663, 28.088438>,  <37.997044, 38.007633, 27.973246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172775, 37.891663, 28.088438>,  <38.465664, 37.698380, 28.280424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172775, 37.891663, 28.088438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671952, -0.397624, 0.624800,
		0.111059, 0.780006, 0.615838,
		-0.732220, 0.483203, -0.479967,
		37.953110, 38.036625, 27.944448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015560, 37.848900, 28.839695>,  <38.465664, 37.698380, 28.280424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015560, 37.848900, 28.839695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823963, 37.895214, 28.491636>,  <37.709003, 37.923004, 28.282801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823963, 37.895214, 28.491636>,  <38.015560, 37.848900, 28.839695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823963, 37.895214, 28.491636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805958, -0.450806, 0.383674,
		-0.347843, 0.885080, 0.309254,
		-0.478996, 0.115787, -0.870147,
		37.680264, 37.929951, 28.230593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295029, 38.100594, 29.075901>,  <38.015560, 37.848900, 28.839695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295029, 38.100594, 29.075901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276642, 37.935905, 28.711842>,  <37.265610, 37.837093, 28.493406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276642, 37.935905, 28.711842>,  <37.295029, 38.100594, 29.075901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276642, 37.935905, 28.711842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651319, -0.678463, 0.339811,
		-0.757411, 0.608416, -0.236978,
		-0.045965, -0.411725, -0.910148,
		37.262852, 37.812389, 28.438797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590572, 38.014305, 28.980301>,  <37.295029, 38.100594, 29.075901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590572, 38.014305, 28.980301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775814, 37.763596, 28.729643>,  <36.886959, 37.613171, 28.579248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775814, 37.763596, 28.729643>,  <36.590572, 38.014305, 28.980301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775814, 37.763596, 28.729643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691829, -0.697575, 0.186446,
		-0.553992, 0.347189, -0.756672,
		0.463103, -0.626777, -0.626646,
		36.914745, 37.575562, 28.541649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130882, 37.667980, 28.651747>,  <36.590572, 38.014305, 28.980301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130882, 37.667980, 28.651747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430531, 37.411167, 28.586493>,  <36.610317, 37.257080, 28.547340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430531, 37.411167, 28.586493>,  <36.130882, 37.667980, 28.651747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430531, 37.411167, 28.586493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589555, -0.758463, 0.277773,
		-0.302071, -0.111909, -0.946694,
		0.749118, -0.642036, -0.163133,
		36.655266, 37.218555, 28.537552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808300, 37.162151, 28.309128>,  <36.130882, 37.667980, 28.651747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808300, 37.162151, 28.309128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144619, 36.985016, 28.433680>,  <36.346409, 36.878735, 28.508411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144619, 36.985016, 28.433680>,  <35.808300, 37.162151, 28.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144619, 36.985016, 28.433680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540519, -0.718602, 0.437552,
		0.029995, -0.536199, -0.843558,
		0.840797, -0.442835, 0.311380,
		36.396858, 36.852165, 28.527094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670238, 36.526974, 28.247955>,  <35.808300, 37.162151, 28.309128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670238, 36.526974, 28.247955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978645, 36.526638, 28.502680>,  <36.163689, 36.526436, 28.655516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978645, 36.526638, 28.502680>,  <35.670238, 36.526974, 28.247955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978645, 36.526638, 28.502680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395347, -0.784582, 0.477631,
		0.499232, -0.620025, -0.605258,
		0.771018, -0.000838, 0.636813,
		36.209949, 36.526386, 28.693724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669418, 35.858105, 28.412758>,  <35.670238, 36.526974, 28.247955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669418, 35.858105, 28.412758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897243, 35.995354, 28.711521>,  <36.033939, 36.077702, 28.890779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897243, 35.995354, 28.711521>,  <35.669418, 35.858105, 28.412758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897243, 35.995354, 28.711521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419014, -0.660554, 0.622973,
		0.707128, -0.667784, -0.232451,
		0.569558, 0.343121, 0.746908,
		36.068111, 36.098289, 28.935593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999722, 35.268639, 28.787209>,  <35.669418, 35.858105, 28.412758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999722, 35.268639, 28.787209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013378, 35.577370, 29.041172>,  <36.021572, 35.762608, 29.193550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013378, 35.577370, 29.041172>,  <35.999722, 35.268639, 28.787209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013378, 35.577370, 29.041172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408939, -0.568876, 0.713547,
		0.911923, -0.284004, 0.296207,
		0.034145, 0.771831, 0.634911,
		36.023621, 35.808918, 29.231646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316425, 35.019703, 29.422737>,  <35.999722, 35.268639, 28.787209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316425, 35.019703, 29.422737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084152, 35.334469, 29.506239>,  <35.944790, 35.523327, 29.556339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084152, 35.334469, 29.506239>,  <36.316425, 35.019703, 29.422737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084152, 35.334469, 29.506239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473945, -0.535225, 0.699221,
		0.661955, 0.307088, 0.683749,
		-0.580682, 0.786913, 0.208752,
		35.909946, 35.570541, 29.568865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205700, 34.968861, 30.052387>,  <36.316425, 35.019703, 29.422737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205700, 34.968861, 30.052387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908039, 35.226582, 29.981833>,  <35.729443, 35.381214, 29.939499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908039, 35.226582, 29.981833>,  <36.205700, 34.968861, 30.052387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908039, 35.226582, 29.981833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472453, -0.320959, 0.820837,
		0.472252, 0.694164, 0.543244,
		-0.744154, 0.644300, -0.176387,
		35.684792, 35.419872, 29.928917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051949, 35.183060, 30.731884>,  <36.205700, 34.968861, 30.052387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051949, 35.183060, 30.731884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731827, 35.268642, 30.507837>,  <35.539753, 35.319992, 30.373409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731827, 35.268642, 30.507837>,  <36.051949, 35.183060, 30.731884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731827, 35.268642, 30.507837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598898, -0.330173, 0.729594,
		-0.028836, 0.919352, 0.392377,
		-0.800306, 0.213956, -0.560119,
		35.491734, 35.332829, 30.339802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576626, 35.604099, 31.077089>,  <36.051949, 35.183060, 30.731884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576626, 35.604099, 31.077089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351833, 35.418835, 30.802963>,  <35.216957, 35.307674, 30.638487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351833, 35.418835, 30.802963>,  <35.576626, 35.604099, 31.077089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351833, 35.418835, 30.802963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648785, -0.267112, 0.712551,
		-0.513083, 0.845063, -0.150381,
		-0.561982, -0.463163, -0.685315,
		35.183239, 35.279884, 30.597368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890469, 35.888260, 31.201357>,  <35.576626, 35.604099, 31.077089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890469, 35.888260, 31.201357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817173, 35.550541, 30.999931>,  <34.773197, 35.347908, 30.879076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817173, 35.550541, 30.999931>,  <34.890469, 35.888260, 31.201357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817173, 35.550541, 30.999931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645571, -0.282964, 0.709344,
		-0.741391, 0.455068, -0.493206,
		-0.183240, -0.844301, -0.503566,
		34.762199, 35.297249, 30.848862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105045, 35.732212, 31.180618>,  <34.890469, 35.888260, 31.201357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105045, 35.732212, 31.180618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286068, 35.379337, 31.128563>,  <34.394680, 35.167610, 31.097330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286068, 35.379337, 31.128563>,  <34.105045, 35.732212, 31.180618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286068, 35.379337, 31.128563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611251, -0.413145, 0.675044,
		-0.649282, -0.225948, -0.726210,
		0.452554, -0.882190, -0.130137,
		34.421833, 35.114681, 31.089521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544048, 35.278690, 31.167116>,  <34.105045, 35.732212, 31.180618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544048, 35.278690, 31.167116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856308, 35.038918, 31.237854>,  <34.043663, 34.895054, 31.280296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856308, 35.038918, 31.237854>,  <33.544048, 35.278690, 31.167116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856308, 35.038918, 31.237854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538693, -0.501913, 0.676678,
		-0.316860, -0.623512, -0.714726,
		0.780646, -0.599431, 0.176845,
		34.090504, 34.859089, 31.290907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243305, 34.619053, 31.327694>,  <33.544048, 35.278690, 31.167116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243305, 34.619053, 31.327694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621830, 34.536621, 31.427313>,  <33.848946, 34.487164, 31.487083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621830, 34.536621, 31.427313>,  <33.243305, 34.619053, 31.327694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621830, 34.536621, 31.427313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322982, -0.571243, 0.754562,
		-0.013233, -0.794489, -0.607134,
		0.946313, -0.206078, 0.249047,
		33.905724, 34.474796, 31.502028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265720, 33.851337, 31.484400>,  <33.243305, 34.619053, 31.327694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265720, 33.851337, 31.484400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586784, 34.010555, 31.662075>,  <33.779423, 34.106087, 31.768681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586784, 34.010555, 31.662075>,  <33.265720, 33.851337, 31.484400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586784, 34.010555, 31.662075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203745, -0.516944, 0.831418,
		0.560563, -0.757844, -0.333829,
		0.802656, 0.398047, 0.444187,
		33.827579, 34.129971, 31.795332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534039, 33.252808, 31.784033>,  <33.265720, 33.851337, 31.484400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534039, 33.252808, 31.784033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651772, 33.593842, 31.956764>,  <33.722412, 33.798462, 32.060402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651772, 33.593842, 31.956764>,  <33.534039, 33.252808, 31.784033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651772, 33.593842, 31.956764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206064, -0.384599, 0.899789,
		0.933224, -0.353820, 0.062487,
		0.294331, 0.852581, 0.431827,
		33.740070, 33.849617, 32.086311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038853, 33.066750, 32.310486>,  <33.534039, 33.252808, 31.784033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038853, 33.066750, 32.310486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926155, 33.435646, 32.416382>,  <33.858536, 33.656986, 32.479919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926155, 33.435646, 32.416382>,  <34.038853, 33.066750, 32.310486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926155, 33.435646, 32.416382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350787, -0.355818, 0.866223,
		0.893068, 0.151184, 0.423760,
		-0.281740, 0.922246, 0.264736,
		33.841633, 33.712318, 32.495804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330139, 33.061386, 32.957058>,  <34.038853, 33.066750, 32.310486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330139, 33.061386, 32.957058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064537, 33.360329, 32.947613>,  <33.905178, 33.539696, 32.941944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064537, 33.360329, 32.947613>,  <34.330139, 33.061386, 32.957058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064537, 33.360329, 32.947613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263864, -0.204651, 0.942599,
		0.699626, 0.632119, 0.333090,
		-0.664002, 0.747358, -0.023614,
		33.865337, 33.584538, 32.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399883, 33.524235, 33.609406>,  <34.330139, 33.061386, 32.957058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399883, 33.524235, 33.609406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029041, 33.555035, 33.462681>,  <33.806538, 33.573517, 33.374645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029041, 33.555035, 33.462681>,  <34.399883, 33.524235, 33.609406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029041, 33.555035, 33.462681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370637, -0.333964, 0.866658,
		-0.055767, 0.939435, 0.338159,
		-0.927102, 0.077003, -0.366814,
		33.750912, 33.578136, 33.352638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079353, 33.804096, 34.158875>,  <34.399883, 33.524235, 33.609406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079353, 33.804096, 34.158875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801525, 33.637173, 33.924461>,  <33.634830, 33.537018, 33.783813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801525, 33.637173, 33.924461>,  <34.079353, 33.804096, 34.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801525, 33.637173, 33.924461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536009, -0.243162, 0.808434,
		-0.479864, 0.875631, -0.054786,
		-0.694568, -0.417304, -0.586031,
		33.593155, 33.511982, 33.748653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565098, 34.287178, 33.842026>,  <34.079353, 33.804096, 34.158875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565098, 34.287178, 33.842026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604969, 34.474510, 34.193192>,  <34.628891, 34.586910, 34.403893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604969, 34.474510, 34.193192>,  <34.565098, 34.287178, 33.842026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604969, 34.474510, 34.193192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463341, 0.758965, -0.457480,
		-0.880557, 0.452373, -0.141345,
		0.099676, 0.468327, 0.877915,
		34.634872, 34.615009, 34.456566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449722, 35.087406, 33.778721>,  <34.565098, 34.287178, 33.842026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449722, 35.087406, 33.778721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650299, 35.057098, 34.123466>,  <34.770645, 35.038914, 34.330315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650299, 35.057098, 34.123466>,  <34.449722, 35.087406, 33.778721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650299, 35.057098, 34.123466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599856, 0.748307, -0.283213,
		-0.623482, 0.659011, 0.420684,
		0.501441, -0.075772, 0.861868,
		34.800732, 35.034367, 34.382027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595581, 35.826847, 34.078960>,  <34.449722, 35.087406, 33.778721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595581, 35.826847, 34.078960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864456, 35.580994, 34.244072>,  <35.025784, 35.433483, 34.343140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864456, 35.580994, 34.244072>,  <34.595581, 35.826847, 34.078960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864456, 35.580994, 34.244072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738618, 0.595115, -0.316673,
		-0.051013, 0.517750, 0.854010,
		0.672191, -0.614632, 0.412778,
		35.066113, 35.396603, 34.367905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933483, 36.254704, 34.472519>,  <34.595581, 35.826847, 34.078960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933483, 36.254704, 34.472519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172863, 35.939819, 34.412979>,  <35.316490, 35.750889, 34.377254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172863, 35.939819, 34.412979>,  <34.933483, 36.254704, 34.472519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172863, 35.939819, 34.412979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770233, 0.616451, -0.163493,
		0.220465, -0.016810, 0.975250,
		0.598446, -0.787214, -0.148853,
		35.352398, 35.703655, 34.368324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538265, 36.492252, 34.806076>,  <34.933483, 36.254704, 34.472519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538265, 36.492252, 34.806076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631401, 36.194157, 34.556149>,  <35.687283, 36.015297, 34.406193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631401, 36.194157, 34.556149>,  <35.538265, 36.492252, 34.806076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631401, 36.194157, 34.556149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826822, 0.489944, -0.276260,
		0.512008, -0.452291, 0.730261,
		0.232837, -0.745244, -0.624819,
		35.701252, 35.970585, 34.368702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303955, 36.556847, 34.728905>,  <35.538265, 36.492252, 34.806076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303955, 36.556847, 34.728905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205753, 36.296810, 34.441265>,  <36.146832, 36.140789, 34.268681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205753, 36.296810, 34.441265>,  <36.303955, 36.556847, 34.728905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205753, 36.296810, 34.441265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861613, 0.193612, -0.469187,
		0.444242, -0.734774, 0.512597,
		-0.245502, -0.650093, -0.719102,
		36.132103, 36.101784, 34.225536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937794, 36.135490, 34.516182>,  <36.303955, 36.556847, 34.728905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937794, 36.135490, 34.516182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683552, 36.118275, 34.207855>,  <36.531006, 36.107944, 34.022861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683552, 36.118275, 34.207855>,  <36.937794, 36.135490, 34.516182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683552, 36.118275, 34.207855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747051, 0.217557, -0.628159,
		0.194729, -0.975098, -0.106132,
		-0.635606, -0.043035, -0.770813,
		36.492870, 36.105362, 33.976612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407425, 35.914757, 34.031376>,  <36.937794, 36.135490, 34.516182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407425, 35.914757, 34.031376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099758, 36.089119, 33.844460>,  <36.915157, 36.193737, 33.732311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099758, 36.089119, 33.844460>,  <37.407425, 35.914757, 34.031376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099758, 36.089119, 33.844460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626121, 0.367756, -0.687553,
		-0.127862, -0.821425, -0.555798,
		-0.769171, 0.435908, -0.467290,
		36.869007, 36.219891, 33.704273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442898, 35.759129, 33.314465>,  <37.407425, 35.914757, 34.031376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442898, 35.759129, 33.314465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204460, 36.079952, 33.329311>,  <37.061398, 36.272446, 33.338219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204460, 36.079952, 33.329311>,  <37.442898, 35.759129, 33.314465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204460, 36.079952, 33.329311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601009, 0.476373, -0.641761,
		-0.532412, -0.360241, -0.766006,
		-0.596093, 0.802057, 0.037119,
		37.025631, 36.320568, 33.340446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522945, 36.043488, 32.688015>,  <37.442898, 35.759129, 33.314465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522945, 36.043488, 32.688015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389278, 36.367455, 32.880833>,  <37.309078, 36.561832, 32.996525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389278, 36.367455, 32.880833>,  <37.522945, 36.043488, 32.688015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389278, 36.367455, 32.880833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439231, 0.586336, -0.680651,
		-0.833911, -0.015721, -0.551674,
		-0.334167, 0.809916, 0.482047,
		37.289028, 36.610428, 33.025448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142059, 36.502567, 32.152721>,  <37.522945, 36.043488, 32.688015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142059, 36.502567, 32.152721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216297, 36.733757, 32.470592>,  <37.260838, 36.872471, 32.661316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216297, 36.733757, 32.470592>,  <37.142059, 36.502567, 32.152721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216297, 36.733757, 32.470592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307832, 0.733816, -0.605602,
		-0.933164, 0.357021, -0.041726,
		0.185593, 0.577970, 0.794673,
		37.271976, 36.907146, 32.708996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893341, 37.043289, 31.939808>,  <37.142059, 36.502567, 32.152721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893341, 37.043289, 31.939808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107197, 37.176785, 32.250362>,  <37.235512, 37.256882, 32.436695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107197, 37.176785, 32.250362>,  <36.893341, 37.043289, 31.939808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107197, 37.176785, 32.250362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266629, 0.805175, -0.529718,
		-0.801914, 0.490218, 0.341498,
		0.534643, 0.333735, 0.776388,
		37.267590, 37.276905, 32.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721989, 37.724522, 31.991375>,  <36.893341, 37.043289, 31.939808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721989, 37.724522, 31.991375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077820, 37.673901, 32.166935>,  <37.291317, 37.643528, 32.272270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077820, 37.673901, 32.166935>,  <36.721989, 37.724522, 31.991375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077820, 37.673901, 32.166935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289577, 0.899343, -0.327609,
		-0.353263, 0.418529, 0.836683,
		0.889579, -0.126552, 0.438901,
		37.344692, 37.635937, 32.298607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833611, 38.379257, 32.304550>,  <36.721989, 37.724522, 31.991375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833611, 38.379257, 32.304550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191246, 38.205177, 32.262196>,  <37.405827, 38.100731, 32.236782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191246, 38.205177, 32.262196>,  <36.833611, 38.379257, 32.304550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191246, 38.205177, 32.262196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391920, 0.874617, -0.285383,
		0.216809, 0.213658, 0.952546,
		0.894088, -0.435195, -0.105888,
		37.459473, 38.074619, 32.230431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348640, 38.934856, 32.554367>,  <36.833611, 38.379257, 32.304550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348640, 38.934856, 32.554367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536007, 38.690914, 32.298660>,  <37.648426, 38.544548, 32.145237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536007, 38.690914, 32.298660>,  <37.348640, 38.934856, 32.554367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536007, 38.690914, 32.298660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384403, 0.792158, -0.474046,
		0.795502, -0.023689, 0.605487,
		0.468412, -0.609856, -0.639270,
		37.676529, 38.507957, 32.106880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939423, 39.339081, 32.363068>,  <37.348640, 38.934856, 32.554367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939423, 39.339081, 32.363068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895084, 39.070988, 32.069534>,  <37.868481, 38.910133, 31.893415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895084, 39.070988, 32.069534>,  <37.939423, 39.339081, 32.363068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895084, 39.070988, 32.069534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323116, 0.673962, -0.664358,
		0.939845, -0.310754, 0.141855,
		-0.110847, -0.670229, -0.733829,
		37.861832, 38.869919, 31.849386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458988, 39.530807, 31.951298>,  <37.939423, 39.339081, 32.363068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458988, 39.530807, 31.951298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273689, 39.256104, 31.727240>,  <38.162510, 39.091282, 31.592804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273689, 39.256104, 31.727240>,  <38.458988, 39.530807, 31.951298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273689, 39.256104, 31.727240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412115, 0.392625, -0.822196,
		0.784578, -0.611726, 0.101141,
		-0.463248, -0.686758, -0.560146,
		38.134716, 39.050076, 31.559196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967529, 39.248577, 31.559263>,  <38.458988, 39.530807, 31.951298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967529, 39.248577, 31.559263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614998, 39.203007, 31.375839>,  <38.403481, 39.175663, 31.265785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614998, 39.203007, 31.375839>,  <38.967529, 39.248577, 31.559263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614998, 39.203007, 31.375839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412535, 0.287638, -0.864337,
		0.230372, -0.950939, -0.206505,
		-0.881330, -0.113928, -0.458559,
		38.350597, 39.168827, 31.238272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080917, 38.903423, 30.928425>,  <38.967529, 39.248577, 31.559263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080917, 38.903423, 30.928425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727425, 39.078144, 30.861217>,  <38.515331, 39.182976, 30.820892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727425, 39.078144, 30.861217>,  <39.080917, 38.903423, 30.928425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727425, 39.078144, 30.861217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352265, 0.384477, -0.853280,
		-0.308114, -0.813255, -0.493642,
		-0.883728, 0.436800, -0.168018,
		38.462307, 39.209183, 30.810812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045242, 38.891285, 30.191431>,  <39.080917, 38.903423, 30.928425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045242, 38.891285, 30.191431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758865, 39.149887, 30.296850>,  <38.587040, 39.305046, 30.360102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758865, 39.149887, 30.296850>,  <39.045242, 38.891285, 30.191431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758865, 39.149887, 30.296850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109429, 0.476737, -0.872209,
		-0.689527, -0.595614, -0.412063,
		-0.715945, 0.646503, 0.263546,
		38.544083, 39.343838, 30.375914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492180, 38.832546, 29.642004>,  <39.045242, 38.891285, 30.191431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492180, 38.832546, 29.642004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456028, 39.181461, 29.834229>,  <38.434338, 39.390812, 29.949564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456028, 39.181461, 29.834229>,  <38.492180, 38.832546, 29.642004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456028, 39.181461, 29.834229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273140, 0.485745, -0.830329,
		-0.957719, 0.056213, -0.282160,
		-0.090383, 0.872291, 0.480561,
		38.428913, 39.443150, 29.978397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203159, 39.269653, 29.043547>,  <38.492180, 38.832546, 29.642004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203159, 39.269653, 29.043547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346630, 39.546803, 29.293755>,  <38.432713, 39.713093, 29.443880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346630, 39.546803, 29.293755>,  <38.203159, 39.269653, 29.043547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346630, 39.546803, 29.293755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527921, 0.402080, -0.748085,
		-0.769839, 0.598545, -0.221566,
		0.358675, 0.692874, 0.625521,
		38.454231, 39.754665, 29.481411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177219, 39.907768, 28.620701>,  <38.203159, 39.269653, 29.043547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177219, 39.907768, 28.620701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428257, 39.962273, 28.927309>,  <38.578880, 39.994976, 29.111275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428257, 39.962273, 28.927309>,  <38.177219, 39.907768, 28.620701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428257, 39.962273, 28.927309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696423, 0.341861, -0.630972,
		-0.348019, 0.929820, 0.119657,
		0.627596, 0.136258, 0.766522,
		38.616535, 40.003151, 29.157267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415443, 40.606857, 28.580292>,  <38.177219, 39.907768, 28.620701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415443, 40.606857, 28.580292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678902, 40.395790, 28.794861>,  <38.836979, 40.269150, 28.923603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678902, 40.395790, 28.794861>,  <38.415443, 40.606857, 28.580292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678902, 40.395790, 28.794861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751869, 0.433517, -0.496744,
		0.029567, 0.730500, 0.682273,
		0.658649, -0.527667, 0.536422,
		38.876495, 40.237492, 28.955788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930099, 41.106297, 28.596548>,  <38.415443, 40.606857, 28.580292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930099, 41.106297, 28.596548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083710, 40.750401, 28.695251>,  <39.175877, 40.536865, 28.754473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083710, 40.750401, 28.695251>,  <38.930099, 41.106297, 28.596548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083710, 40.750401, 28.695251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869873, 0.259030, -0.419792,
		0.309587, 0.375859, 0.873433,
		0.384028, -0.889738, 0.246757,
		39.198917, 40.483479, 28.769278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551373, 41.291046, 28.982298>,  <38.930099, 41.106297, 28.596548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551373, 41.291046, 28.982298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592808, 40.909687, 28.868948>,  <39.617668, 40.680870, 28.800938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592808, 40.909687, 28.868948>,  <39.551373, 41.291046, 28.982298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592808, 40.909687, 28.868948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941996, 0.185482, -0.279714,
		0.319239, -0.237962, 0.917311,
		0.103584, -0.953399, -0.283373,
		39.623882, 40.623669, 28.783936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193794, 40.993847, 29.077866>,  <39.551373, 41.291046, 28.982298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193794, 40.993847, 29.077866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056999, 40.779102, 28.769367>,  <39.974922, 40.650253, 28.584269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056999, 40.779102, 28.769367>,  <40.193794, 40.993847, 29.077866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056999, 40.779102, 28.769367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805811, 0.254686, -0.534606,
		0.483436, -0.804309, 0.345510,
		-0.341992, -0.536863, -0.771245,
		39.954403, 40.618042, 28.537994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759552, 40.737804, 28.904581>,  <40.193794, 40.993847, 29.077866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759552, 40.737804, 28.904581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510571, 40.702381, 28.593529>,  <40.361183, 40.681129, 28.406897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510571, 40.702381, 28.593529>,  <40.759552, 40.737804, 28.904581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510571, 40.702381, 28.593529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731975, 0.285868, -0.618460,
		0.277074, -0.954167, -0.113111,
		-0.622449, -0.088564, -0.777633,
		40.323833, 40.675816, 28.360239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024261, 40.163589, 28.401964>,  <40.759552, 40.737804, 28.904581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024261, 40.163589, 28.401964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766396, 40.385227, 28.191294>,  <40.611675, 40.518208, 28.064892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766396, 40.385227, 28.191294>,  <41.024261, 40.163589, 28.401964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766396, 40.385227, 28.191294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706279, 0.168056, -0.687698,
		-0.292536, -0.815316, -0.499683,
		-0.644665, 0.554091, -0.526678,
		40.572994, 40.551453, 28.033291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161583, 40.102402, 27.584385>,  <41.024261, 40.163589, 28.401964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161583, 40.102402, 27.584385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948566, 40.440571, 27.600647>,  <40.820755, 40.643475, 27.610403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948566, 40.440571, 27.600647>,  <41.161583, 40.102402, 27.584385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948566, 40.440571, 27.600647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672164, 0.451615, -0.586719,
		-0.514388, -0.285127, -0.808769,
		-0.532542, 0.845427, 0.040654,
		40.788803, 40.694199, 27.612843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910885, 40.260937, 26.820801>,  <41.161583, 40.102402, 27.584385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910885, 40.260937, 26.820801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858624, 40.606789, 27.014853>,  <40.827267, 40.814301, 27.131285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858624, 40.606789, 27.014853>,  <40.910885, 40.260937, 26.820801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858624, 40.606789, 27.014853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678626, 0.434722, -0.592017,
		-0.722770, 0.251872, -0.643556,
		-0.130655, 0.864626, 0.485131,
		40.819427, 40.866177, 27.160391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862358, 40.749283, 26.353149>,  <40.910885, 40.260937, 26.820801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862358, 40.749283, 26.353149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978264, 40.958530, 26.673746>,  <41.047806, 41.084080, 26.866104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978264, 40.958530, 26.673746>,  <40.862358, 40.749283, 26.353149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978264, 40.958530, 26.673746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655541, 0.501678, -0.564434,
		-0.697354, 0.688962, -0.197556,
		0.289764, 0.523116, 0.801490,
		41.065193, 41.115467, 26.914192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985218, 41.386345, 26.110332>,  <40.862358, 40.749283, 26.353149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985218, 41.386345, 26.110332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194237, 41.431992, 26.448309>,  <41.319649, 41.459381, 26.651094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194237, 41.431992, 26.448309>,  <40.985218, 41.386345, 26.110332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194237, 41.431992, 26.448309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804531, 0.262093, -0.532952,
		-0.282273, 0.958271, 0.045142,
		0.522544, 0.114120, 0.844940,
		41.351002, 41.466228, 26.701792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352470, 41.970043, 25.978298>,  <40.985218, 41.386345, 26.110332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352470, 41.970043, 25.978298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555374, 41.851067, 26.301834>,  <41.677116, 41.779682, 26.495956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555374, 41.851067, 26.301834>,  <41.352470, 41.970043, 25.978298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555374, 41.851067, 26.301834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858556, 0.255722, -0.444397,
		-0.074658, 0.919857, 0.385084,
		0.507256, -0.297439, 0.808840,
		41.707550, 41.761833, 26.544485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755070, 42.546219, 26.189924>,  <41.352470, 41.970043, 25.978298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755070, 42.546219, 26.189924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905434, 42.194569, 26.307112>,  <41.995651, 41.983578, 26.377424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905434, 42.194569, 26.307112>,  <41.755070, 42.546219, 26.189924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905434, 42.194569, 26.307112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854923, 0.207052, -0.475643,
		0.357490, 0.429265, 0.829417,
		0.375909, -0.879125, 0.292970,
		42.018208, 41.930832, 26.395002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358246, 42.755386, 26.469379>,  <41.755070, 42.546219, 26.189924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358246, 42.755386, 26.469379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384281, 42.364288, 26.389601>,  <42.399902, 42.129631, 26.341734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384281, 42.364288, 26.389601>,  <42.358246, 42.755386, 26.469379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384281, 42.364288, 26.389601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891191, 0.146877, -0.429191,
		0.448934, -0.149811, 0.880917,
		0.065089, -0.977744, -0.199449,
		42.403809, 42.070965, 26.329765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028450, 42.555702, 26.598015>,  <42.358246, 42.755386, 26.469379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028450, 42.555702, 26.598015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912796, 42.257816, 26.357416>,  <42.843403, 42.079082, 26.213057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912796, 42.257816, 26.357416>,  <43.028450, 42.555702, 26.598015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912796, 42.257816, 26.357416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833026, 0.113854, -0.541392,
		0.471666, -0.657596, 0.587450,
		-0.289134, -0.744718, -0.601496,
		42.826057, 42.034401, 26.176968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501923, 41.985733, 26.680897>,  <43.028450, 42.555702, 26.598015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501923, 41.985733, 26.680897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343506, 41.973904, 26.313793>,  <43.248455, 41.966808, 26.093531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343506, 41.973904, 26.313793>,  <43.501923, 41.985733, 26.680897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343506, 41.973904, 26.313793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902548, 0.171408, -0.395001,
		0.168989, -0.984756, -0.041200,
		-0.396042, -0.029566, -0.917756,
		43.224693, 41.965031, 26.038465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154354, 41.976158, 26.457010>,  <43.501923, 41.985733, 26.680897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154354, 41.976158, 26.457010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496109, 42.138103, 26.587309>,  <44.701160, 42.235271, 26.665489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496109, 42.138103, 26.587309>,  <44.154354, 41.976158, 26.457010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496109, 42.138103, 26.587309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318281, -0.087799, 0.943922,
		0.410759, -0.910152, 0.053846,
		0.854385, 0.404862, 0.325749,
		44.752426, 42.259563, 26.685034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456600, 41.503963, 26.904722>,  <44.154354, 41.976158, 26.457010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456600, 41.503963, 26.904722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624157, 41.853153, 27.004683>,  <44.724689, 42.062668, 27.064659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624157, 41.853153, 27.004683>,  <44.456600, 41.503963, 26.904722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624157, 41.853153, 27.004683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334865, -0.107298, 0.936137,
		0.844036, -0.475820, 0.247382,
		0.418889, 0.872974, 0.249899,
		44.749825, 42.115044, 27.079653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788727, 41.424725, 27.482744>,  <44.456600, 41.503963, 26.904722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788727, 41.424725, 27.482744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707394, 41.816345, 27.486921>,  <44.658592, 42.051319, 27.489428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707394, 41.816345, 27.486921>,  <44.788727, 41.424725, 27.482744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707394, 41.816345, 27.486921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389664, -0.090701, 0.916480,
		0.898230, 0.182281, 0.399945,
		-0.203332, 0.979054, 0.010442,
		44.646393, 42.110062, 27.490053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868015, 41.583763, 28.152420>,  <44.788727, 41.424725, 27.482744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868015, 41.583763, 28.152420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658691, 41.886677, 27.996128>,  <44.533096, 42.068424, 27.902353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658691, 41.886677, 27.996128>,  <44.868015, 41.583763, 28.152420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658691, 41.886677, 27.996128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554189, 0.045868, 0.831126,
		0.647322, 0.651471, 0.395677,
		-0.523306, 0.757286, -0.390729,
		44.501701, 42.113861, 27.878910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720448, 41.909492, 28.832329>,  <44.868015, 41.583763, 28.152420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720448, 41.909492, 28.832329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482121, 42.051994, 28.544416>,  <44.339127, 42.137497, 28.371668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482121, 42.051994, 28.544416>,  <44.720448, 41.909492, 28.832329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482121, 42.051994, 28.544416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742215, 0.098107, 0.662942,
		0.306792, 0.929224, 0.205965,
		-0.595815, 0.356255, -0.719783,
		44.303375, 42.158871, 28.328482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413864, 42.530617, 29.210094>,  <44.720448, 41.909492, 28.832329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413864, 42.530617, 29.210094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196644, 42.401882, 28.899866>,  <44.066311, 42.324642, 28.713728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196644, 42.401882, 28.899866>,  <44.413864, 42.530617, 29.210094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196644, 42.401882, 28.899866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791275, -0.112983, 0.600931,
		-0.281030, 0.940029, -0.193308,
		-0.543052, -0.321840, -0.775573,
		44.033730, 42.305328, 28.667194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850365, 42.963139, 29.215494>,  <44.413864, 42.530617, 29.210094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850365, 42.963139, 29.215494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737080, 42.621147, 29.041685>,  <43.669109, 42.415955, 28.937399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737080, 42.621147, 29.041685>,  <43.850365, 42.963139, 29.215494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737080, 42.621147, 29.041685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747503, -0.087073, 0.658528,
		-0.600860, 0.511308, -0.614436,
		-0.283210, -0.854975, -0.434523,
		43.652115, 42.364655, 28.911329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111389, 42.918148, 29.462704>,  <43.850365, 42.963139, 29.215494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111389, 42.918148, 29.462704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166195, 42.562263, 29.288513>,  <43.199078, 42.348732, 29.183998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166195, 42.562263, 29.288513>,  <43.111389, 42.918148, 29.462704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166195, 42.562263, 29.288513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781496, -0.367226, 0.504389,
		-0.608680, 0.271217, -0.745620,
		0.137012, -0.889711, -0.435478,
		43.207298, 42.295349, 29.157869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496872, 42.679054, 29.436049>,  <43.111389, 42.918148, 29.462704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496872, 42.679054, 29.436049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708492, 42.343102, 29.387541>,  <42.835464, 42.141529, 29.358437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708492, 42.343102, 29.387541>,  <42.496872, 42.679054, 29.436049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708492, 42.343102, 29.387541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658259, -0.496364, 0.565967,
		-0.535538, -0.219598, -0.815460,
		0.529050, -0.839881, -0.121270,
		42.867207, 42.091137, 29.351160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038750, 42.069744, 29.030478>,  <42.496872, 42.679054, 29.436049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038750, 42.069744, 29.030478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332169, 41.910542, 29.250843>,  <42.508221, 41.815022, 29.383062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332169, 41.910542, 29.250843>,  <42.038750, 42.069744, 29.030478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332169, 41.910542, 29.250843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661322, -0.604932, 0.443521,
		0.156743, -0.689674, -0.706952,
		0.733543, -0.398004, 0.550916,
		42.552231, 41.791142, 29.416119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938465, 41.303040, 29.014166>,  <42.038750, 42.069744, 29.030478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938465, 41.303040, 29.014166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197636, 41.335545, 29.317108>,  <42.353138, 41.355049, 29.498873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197636, 41.335545, 29.317108>,  <41.938465, 41.303040, 29.014166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197636, 41.335545, 29.317108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445731, -0.765825, 0.463504,
		0.617668, -0.637893, -0.459977,
		0.647928, 0.081265, 0.757354,
		42.392014, 41.359924, 29.544315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165768, 40.645084, 29.175138>,  <41.938465, 41.303040, 29.014166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165768, 40.645084, 29.175138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252716, 40.848652, 29.508307>,  <42.304886, 40.970791, 29.708208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252716, 40.848652, 29.508307>,  <42.165768, 40.645084, 29.175138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252716, 40.848652, 29.508307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536679, -0.650450, 0.537485,
		0.815307, -0.563844, 0.131735,
		0.217371, 0.508914, 0.832920,
		42.317928, 41.001328, 29.758183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414848, 40.169273, 29.634983>,  <42.165768, 40.645084, 29.175138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414848, 40.169273, 29.634983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289871, 40.463268, 29.875708>,  <42.214886, 40.639664, 30.020144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289871, 40.463268, 29.875708>,  <42.414848, 40.169273, 29.634983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289871, 40.463268, 29.875708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413333, -0.675601, 0.610508,
		0.855298, -0.057998, 0.514881,
		-0.312446, 0.734983, 0.601813,
		42.196136, 40.683762, 30.056252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544071, 39.932865, 30.280497>,  <42.414848, 40.169273, 29.634983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544071, 39.932865, 30.280497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260387, 40.211655, 30.322914>,  <42.090176, 40.378929, 30.348364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260387, 40.211655, 30.322914>,  <42.544071, 39.932865, 30.280497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260387, 40.211655, 30.322914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508705, -0.610064, 0.607488,
		0.488096, 0.376893, 0.787219,
		-0.709212, 0.696975, 0.106042,
		42.047623, 40.420746, 30.354727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505554, 39.958714, 30.924152>,  <42.544071, 39.932865, 30.280497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505554, 39.958714, 30.924152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159771, 40.110867, 30.792685>,  <41.952301, 40.202160, 30.713804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159771, 40.110867, 30.792685>,  <42.505554, 39.958714, 30.924152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159771, 40.110867, 30.792685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484895, -0.458416, 0.744803,
		0.132643, 0.803220, 0.580726,
		-0.864455, 0.380384, -0.328672,
		41.900433, 40.224983, 30.694082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129700, 40.102501, 31.575012>,  <42.505554, 39.958714, 30.924152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129700, 40.102501, 31.575012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848625, 40.080021, 31.291302>,  <41.679981, 40.066532, 31.121077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848625, 40.080021, 31.291302>,  <42.129700, 40.102501, 31.575012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848625, 40.080021, 31.291302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586300, -0.519032, 0.621979,
		-0.403090, 0.852905, 0.331770,
		-0.702688, -0.056197, -0.709275,
		41.637817, 40.063160, 31.078520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526531, 40.511505, 31.840345>,  <42.129700, 40.102501, 31.575012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526531, 40.511505, 31.840345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404495, 40.245197, 31.567970>,  <41.331272, 40.085415, 31.404545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404495, 40.245197, 31.567970>,  <41.526531, 40.511505, 31.840345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404495, 40.245197, 31.567970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638091, -0.387874, 0.665127,
		-0.706937, 0.637423, -0.306484,
		-0.305090, -0.665767, -0.680936,
		41.312969, 40.045467, 31.363689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817749, 40.552208, 31.892479>,  <41.526531, 40.511505, 31.840345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817749, 40.552208, 31.892479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887394, 40.198257, 31.719654>,  <40.929180, 39.985886, 31.615959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887394, 40.198257, 31.719654>,  <40.817749, 40.552208, 31.892479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887394, 40.198257, 31.719654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726301, -0.411687, 0.550456,
		-0.664960, 0.217966, -0.714366,
		0.174114, -0.884876, -0.432064,
		40.939629, 39.932796, 31.590034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187313, 40.274849, 31.855175>,  <40.817749, 40.552208, 31.892479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187313, 40.274849, 31.855175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443054, 39.969917, 31.814993>,  <40.596497, 39.786961, 31.790884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443054, 39.969917, 31.814993>,  <40.187313, 40.274849, 31.855175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443054, 39.969917, 31.814993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548313, -0.543603, 0.635491,
		-0.539037, -0.351247, -0.765549,
		0.639369, -0.762313, -0.100429,
		40.634861, 39.741219, 31.784857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785088, 39.641541, 31.671850>,  <40.187313, 40.274849, 31.855175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785088, 39.641541, 31.671850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139545, 39.526932, 31.817539>,  <40.352219, 39.458168, 31.904953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139545, 39.526932, 31.817539>,  <39.785088, 39.641541, 31.671850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139545, 39.526932, 31.817539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463254, -0.527090, 0.712441,
		-0.012149, -0.800052, -0.599808,
		0.886142, -0.286519, 0.364224,
		40.405388, 39.440975, 31.926805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625576, 38.924034, 31.789085>,  <39.785088, 39.641541, 31.671850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625576, 38.924034, 31.789085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963852, 38.977386, 31.995785>,  <40.166817, 39.009396, 32.119804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963852, 38.977386, 31.995785>,  <39.625576, 38.924034, 31.789085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963852, 38.977386, 31.995785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300042, -0.681926, 0.667047,
		0.441352, -0.719157, -0.536676,
		0.845685, 0.133377, 0.516747,
		40.217556, 39.017399, 32.150810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845356, 38.364330, 32.068699>,  <39.625576, 38.924034, 31.789085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845356, 38.364330, 32.068699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049408, 38.609703, 32.309853>,  <40.171841, 38.756927, 32.454544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049408, 38.609703, 32.309853>,  <39.845356, 38.364330, 32.068699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049408, 38.609703, 32.309853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098975, -0.654427, 0.749620,
		0.854384, -0.442074, -0.273128,
		0.510130, 0.613430, 0.602886,
		40.202446, 38.793732, 32.490719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252811, 37.885803, 32.436047>,  <39.845356, 38.364330, 32.068699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252811, 37.885803, 32.436047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245022, 38.222878, 32.651268>,  <40.240349, 38.425121, 32.780403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245022, 38.222878, 32.651268>,  <40.252811, 37.885803, 32.436047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245022, 38.222878, 32.651268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315937, -0.515771, 0.796344,
		0.948580, -0.154482, 0.276281,
		-0.019477, 0.842684, 0.538056,
		40.239178, 38.475681, 32.812683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547073, 37.702843, 33.153851>,  <40.252811, 37.885803, 32.436047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547073, 37.702843, 33.153851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343235, 38.046104, 33.178772>,  <40.220932, 38.252064, 33.193726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343235, 38.046104, 33.178772>,  <40.547073, 37.702843, 33.153851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343235, 38.046104, 33.178772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399695, -0.300229, 0.866087,
		0.761945, 0.416447, 0.495996,
		-0.509592, 0.858157, 0.062306,
		40.190357, 38.303551, 33.197464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584614, 37.930965, 33.828037>,  <40.547073, 37.702843, 33.153851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584614, 37.930965, 33.828037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255806, 38.115543, 33.694557>,  <40.058521, 38.226292, 33.614468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255806, 38.115543, 33.694557>,  <40.584614, 37.930965, 33.828037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255806, 38.115543, 33.694557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464522, -0.204373, 0.861656,
		0.329409, 0.863307, 0.382350,
		-0.822015, 0.461447, -0.333703,
		40.009201, 38.253979, 33.594448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241924, 38.317101, 34.380173>,  <40.584614, 37.930965, 33.828037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241924, 38.317101, 34.380173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947323, 38.301113, 34.110069>,  <39.770561, 38.291523, 33.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947323, 38.301113, 34.110069>,  <40.241924, 38.317101, 34.380173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947323, 38.301113, 34.110069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672611, -0.062743, 0.737332,
		-0.071836, 0.997229, 0.019329,
		-0.736501, -0.039966, -0.675254,
		39.726372, 38.289124, 33.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813694, 38.852646, 34.627495>,  <40.241924, 38.317101, 34.380173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813694, 38.852646, 34.627495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570709, 38.614922, 34.416676>,  <39.424919, 38.472286, 34.290184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570709, 38.614922, 34.416676>,  <39.813694, 38.852646, 34.627495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570709, 38.614922, 34.416676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577781, -0.124745, 0.806602,
		-0.545122, 0.794499, -0.267605,
		-0.607463, -0.594314, -0.527048,
		39.388470, 38.436626, 34.258560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149666, 38.969837, 34.813633>,  <39.813694, 38.852646, 34.627495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149666, 38.969837, 34.813633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141720, 38.595673, 34.672432>,  <39.136951, 38.371174, 34.587711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141720, 38.595673, 34.672432>,  <39.149666, 38.969837, 34.813633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141720, 38.595673, 34.672432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682933, -0.245172, 0.688109,
		-0.730211, 0.254745, -0.633953,
		-0.019865, -0.935412, -0.353001,
		39.135761, 38.315048, 34.566532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387978, 38.647308, 34.813747>,  <39.149666, 38.969837, 34.813633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387978, 38.647308, 34.813747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604172, 38.311596, 34.790138>,  <38.733887, 38.110168, 34.775970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604172, 38.311596, 34.790138>,  <38.387978, 38.647308, 34.813747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604172, 38.311596, 34.790138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529161, -0.393639, 0.751689,
		-0.654113, -0.375043, -0.656871,
		0.540486, -0.839280, -0.059027,
		38.766319, 38.059811, 34.772430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822788, 38.142956, 34.855255>,  <38.387978, 38.647308, 34.813747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822788, 38.142956, 34.855255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156689, 37.954216, 34.968773>,  <38.357029, 37.840973, 35.036884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156689, 37.954216, 34.968773>,  <37.822788, 38.142956, 34.855255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156689, 37.954216, 34.968773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493854, -0.413661, 0.764848,
		-0.243501, -0.778614, -0.578332,
		0.834754, -0.471853, 0.283795,
		38.407116, 37.812660, 35.053913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601383, 37.496544, 35.020313>,  <37.822788, 38.142956, 34.855255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601383, 37.496544, 35.020313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960770, 37.507793, 35.195572>,  <38.176399, 37.514542, 35.300728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960770, 37.507793, 35.195572>,  <37.601383, 37.496544, 35.020313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960770, 37.507793, 35.195572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362575, -0.515254, 0.776564,
		0.247597, -0.856576, -0.452740,
		0.898463, 0.028122, 0.438149,
		38.230309, 37.516232, 35.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838203, 36.843555, 35.091728>,  <37.601383, 37.496544, 35.020313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838203, 36.843555, 35.091728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041794, 37.060051, 35.359463>,  <38.163948, 37.189949, 35.520103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041794, 37.060051, 35.359463>,  <37.838203, 36.843555, 35.091728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041794, 37.060051, 35.359463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301226, -0.616426, 0.727518,
		0.806356, -0.571907, -0.150708,
		0.508973, 0.541241, 0.669332,
		38.194485, 37.222424, 35.560261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245396, 36.332802, 35.482681>,  <37.838203, 36.843555, 35.091728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245396, 36.332802, 35.482681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224865, 36.644402, 35.732651>,  <38.212547, 36.831360, 35.882633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224865, 36.644402, 35.732651>,  <38.245396, 36.332802, 35.482681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224865, 36.644402, 35.732651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362870, -0.597528, 0.715043,
		0.930425, -0.190069, 0.313341,
		-0.051323, 0.778996, 0.624925,
		38.209469, 36.878101, 35.920128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379356, 36.039371, 36.001778>,  <38.245396, 36.332802, 35.482681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379356, 36.039371, 36.001778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255547, 36.390015, 36.149158>,  <38.181259, 36.600399, 36.237587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255547, 36.390015, 36.149158>,  <38.379356, 36.039371, 36.001778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255547, 36.390015, 36.149158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390087, -0.470431, 0.791534,
		0.867193, 0.101275, 0.487565,
		-0.309528, 0.876606, 0.368449,
		38.162689, 36.652996, 36.259693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847439, 36.231159, 36.610394>,  <38.379356, 36.039371, 36.001778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847439, 36.231159, 36.610394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502819, 36.433220, 36.630619>,  <38.296047, 36.554459, 36.642754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502819, 36.433220, 36.630619>,  <38.847439, 36.231159, 36.610394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502819, 36.433220, 36.630619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125634, -0.308650, 0.942842,
		0.491890, 0.805948, 0.329381,
		-0.861546, 0.505156, 0.050567,
		38.244354, 36.584766, 36.645790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824234, 36.515678, 37.216274>,  <38.847439, 36.231159, 36.610394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824234, 36.515678, 37.216274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435162, 36.548828, 37.129528>,  <38.201717, 36.568718, 37.077480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435162, 36.548828, 37.129528>,  <38.824234, 36.515678, 37.216274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435162, 36.548828, 37.129528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227594, -0.155974, 0.961183,
		0.045831, 0.984279, 0.170574,
		-0.972677, 0.082874, -0.216868,
		38.143360, 36.573689, 37.064468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602509, 37.035133, 37.653427>,  <38.824234, 36.515678, 37.216274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602509, 37.035133, 37.653427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280926, 36.820801, 37.550247>,  <38.087978, 36.692200, 37.488338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280926, 36.820801, 37.550247>,  <38.602509, 37.035133, 37.653427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280926, 36.820801, 37.550247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205337, -0.156962, 0.966023,
		-0.558118, 0.829604, 0.016164,
		-0.803953, -0.535836, -0.257951,
		38.039742, 36.660049, 37.472862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285419, 37.096668, 38.238628>,  <38.602509, 37.035133, 37.653427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285419, 37.096668, 38.238628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044624, 36.823723, 38.072742>,  <37.900146, 36.659954, 37.973209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044624, 36.823723, 38.072742>,  <38.285419, 37.096668, 38.238628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044624, 36.823723, 38.072742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344731, -0.246385, 0.905789,
		-0.720259, 0.688239, -0.086912,
		-0.601986, -0.682364, -0.414718,
		37.864029, 36.619015, 37.948326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514008, 37.210560, 38.435555>,  <38.285419, 37.096668, 38.238628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514008, 37.210560, 38.435555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622593, 36.830734, 38.372768>,  <37.687744, 36.602840, 38.335098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622593, 36.830734, 38.372768>,  <37.514008, 37.210560, 38.435555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622593, 36.830734, 38.372768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148097, -0.202355, 0.968050,
		-0.950986, -0.239545, -0.195559,
		0.271464, -0.949563, -0.156961,
		37.704033, 36.545864, 38.325680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974739, 36.774117, 38.627892>,  <37.514008, 37.210560, 38.435555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974739, 36.774117, 38.627892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267544, 36.501606, 38.630096>,  <37.443226, 36.338100, 38.631420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267544, 36.501606, 38.630096>,  <36.974739, 36.774117, 38.627892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267544, 36.501606, 38.630096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116550, -0.117248, 0.986240,
		-0.671253, -0.722578, -0.165229,
		0.732008, -0.681273, 0.005514,
		37.487144, 36.297222, 38.631752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850697, 36.135201, 39.031319>,  <36.974739, 36.774117, 38.627892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850697, 36.135201, 39.031319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225761, 36.273865, 39.041206>,  <37.450802, 36.357063, 39.047138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225761, 36.273865, 39.041206>,  <36.850697, 36.135201, 39.031319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225761, 36.273865, 39.041206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032137, 0.015674, 0.999361,
		0.346056, -0.937858, 0.025837,
		0.937663, 0.346665, 0.024716,
		37.507061, 36.377865, 39.048622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389942, 35.669167, 39.447773>,  <36.850697, 36.135201, 39.031319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389942, 35.669167, 39.447773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395504, 36.068539, 39.426094>,  <37.398842, 36.308163, 39.413086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395504, 36.068539, 39.426094>,  <37.389942, 35.669167, 39.447773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395504, 36.068539, 39.426094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036069, 0.054664, 0.997853,
		0.999252, -0.011922, 0.036773,
		0.013907, 0.998433, -0.054193,
		37.399677, 36.368069, 39.409836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033356, 36.049294, 39.768322>,  <37.389942, 35.669167, 39.447773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033356, 36.049294, 39.768322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700859, 36.269844, 39.796658>,  <37.501362, 36.402176, 39.813660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700859, 36.269844, 39.796658>,  <38.033356, 36.049294, 39.768322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700859, 36.269844, 39.796658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065000, -0.030149, 0.997430,
		0.552099, 0.833709, -0.010778,
		-0.831242, 0.551380, 0.070836,
		37.451488, 36.435257, 39.817909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202904, 36.643314, 40.306957>,  <38.033356, 36.049294, 39.768322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202904, 36.643314, 40.306957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814846, 36.546841, 40.296768>,  <37.582012, 36.488956, 40.290653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814846, 36.546841, 40.296768>,  <38.202904, 36.643314, 40.306957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814846, 36.546841, 40.296768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090708, -0.458248, 0.884184,
		-0.224922, 0.855476, 0.466444,
		-0.970145, -0.241182, -0.025471,
		37.523804, 36.474487, 40.289127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962463, 36.825535, 41.007378>,  <38.202904, 36.643314, 40.306957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962463, 36.825535, 41.007378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757195, 36.534317, 40.825562>,  <37.634033, 36.359585, 40.716473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757195, 36.534317, 40.825562>,  <37.962463, 36.825535, 41.007378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757195, 36.534317, 40.825562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164674, -0.603268, 0.780353,
		-0.842339, 0.325607, 0.429471,
		-0.513175, -0.728044, -0.454537,
		37.603241, 36.315903, 40.689201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273129, 36.540829, 41.280052>,  <37.962463, 36.825535, 41.007378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273129, 36.540829, 41.280052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483170, 36.252106, 41.099716>,  <37.609196, 36.078873, 40.991512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483170, 36.252106, 41.099716>,  <37.273129, 36.540829, 41.280052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483170, 36.252106, 41.099716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270350, -0.360838, 0.892585,
		-0.806955, -0.590585, 0.005663,
		0.525104, -0.721807, -0.450845,
		37.640701, 36.035564, 40.964462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472176, 36.006550, 41.750240>,  <37.273129, 36.540829, 41.280052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472176, 36.006550, 41.750240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680294, 35.798771, 41.479103>,  <37.805164, 35.674103, 41.316422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680294, 35.798771, 41.479103>,  <37.472176, 36.006550, 41.750240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680294, 35.798771, 41.479103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193339, -0.701479, 0.685965,
		-0.831813, -0.487957, -0.264547,
		0.520295, -0.519447, -0.677840,
		37.836384, 35.642937, 41.275749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252552, 35.286469, 41.541489>,  <37.472176, 36.006550, 41.750240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252552, 35.286469, 41.541489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648815, 35.302399, 41.489311>,  <37.886574, 35.311958, 41.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648815, 35.302399, 41.489311>,  <37.252552, 35.286469, 41.541489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648815, 35.302399, 41.489311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119608, -0.713308, 0.690569,
		-0.065546, -0.699718, -0.711406,
		0.990655, 0.039826, -0.130447,
		37.946011, 35.314346, 41.450176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617714, 34.738976, 41.226086>,  <37.252552, 35.286469, 41.541489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617714, 34.738976, 41.226086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874508, 34.917847, 41.475208>,  <38.028584, 35.025169, 41.624680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874508, 34.917847, 41.475208>,  <37.617714, 34.738976, 41.226086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874508, 34.917847, 41.475208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123853, -0.862115, 0.491344,
		0.756649, -0.238298, -0.608848,
		0.641983, 0.447183, 0.622805,
		38.067104, 35.052002, 41.662048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250843, 34.474247, 41.270981>,  <37.617714, 34.738976, 41.226086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250843, 34.474247, 41.270981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092293, 34.606346, 41.613636>,  <37.997162, 34.685604, 41.819229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092293, 34.606346, 41.613636>,  <38.250843, 34.474247, 41.270981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092293, 34.606346, 41.613636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357968, -0.803625, 0.475443,
		0.845427, 0.495102, 0.200319,
		-0.396375, 0.330244, 0.856636,
		37.973381, 34.705418, 41.870628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781940, 34.252254, 41.754589>,  <38.250843, 34.474247, 41.270981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781940, 34.252254, 41.754589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451267, 34.341412, 41.961243>,  <38.252865, 34.394905, 42.085236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451267, 34.341412, 41.961243>,  <38.781940, 34.252254, 41.754589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451267, 34.341412, 41.961243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285315, -0.625332, 0.726330,
		0.484966, 0.747849, 0.453355,
		-0.826682, 0.222896, 0.516637,
		38.203262, 34.408279, 42.116234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933598, 34.747231, 42.324688>,  <38.781940, 34.252254, 41.754589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933598, 34.747231, 42.324688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988579, 35.140877, 42.369617>,  <39.021568, 35.377064, 42.396576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988579, 35.140877, 42.369617>,  <38.933598, 34.747231, 42.324688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988579, 35.140877, 42.369617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978901, -0.117652, -0.167067,
		-0.151199, 0.132918, -0.979526,
		0.137449, 0.984120, 0.112324,
		39.029812, 35.436111, 42.403316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141411, 35.088371, 41.702503>,  <38.933598, 34.747231, 42.324688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141411, 35.088371, 41.702503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283615, 35.276016, 42.025871>,  <39.368938, 35.388603, 42.219894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283615, 35.276016, 42.025871>,  <39.141411, 35.088371, 41.702503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283615, 35.276016, 42.025871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934598, -0.167409, -0.313848,
		-0.011893, 0.867126, -0.497948,
		0.355506, 0.469114, 0.808423,
		39.390266, 35.416752, 42.268398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736202, 35.499935, 41.618355>,  <39.141411, 35.088371, 41.702503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736202, 35.499935, 41.618355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778751, 35.472973, 42.015171>,  <39.804279, 35.456795, 42.253262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778751, 35.472973, 42.015171>,  <39.736202, 35.499935, 41.618355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778751, 35.472973, 42.015171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994279, -0.002505, -0.106784,
		0.009683, 0.997722, 0.066755,
		0.106374, -0.067407, 0.992039,
		39.810665, 35.452751, 42.312782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324020, 36.130589, 41.925774>,  <39.736202, 35.499935, 41.618355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324020, 36.130589, 41.925774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275974, 35.755219, 42.055340>,  <40.247147, 35.529995, 42.133080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275974, 35.755219, 42.055340>,  <40.324020, 36.130589, 41.925774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275974, 35.755219, 42.055340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987622, -0.146106, -0.057054,
		0.100867, 0.313057, 0.944363,
		-0.120116, -0.938429, 0.323919,
		40.239941, 35.473690, 42.152515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796627, 36.013161, 42.461987>,  <40.324020, 36.130589, 41.925774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796627, 36.013161, 42.461987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703892, 35.643673, 42.340015>,  <40.648251, 35.421978, 42.266830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703892, 35.643673, 42.340015>,  <40.796627, 36.013161, 42.461987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703892, 35.643673, 42.340015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972754, -0.220172, -0.072626,
		-0.000051, -0.313461, 0.949601,
		-0.231841, -0.923724, -0.304932,
		40.634338, 35.366554, 42.248535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021996, 35.382465, 42.880096>,  <40.796627, 36.013161, 42.461987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021996, 35.382465, 42.880096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014084, 35.305916, 42.487568>,  <41.009338, 35.259987, 42.252052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014084, 35.305916, 42.487568>,  <41.021996, 35.382465, 42.880096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014084, 35.305916, 42.487568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997604, -0.068859, -0.006678,
		-0.066294, -0.979098, 0.192280,
		-0.019778, -0.191376, -0.981317,
		41.008152, 35.248505, 42.193172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133972, 34.667873, 42.605186>,  <41.021996, 35.382465, 42.880096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133972, 34.667873, 42.605186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283371, 34.972610, 42.393490>,  <41.373013, 35.155453, 42.266472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283371, 34.972610, 42.393490>,  <41.133972, 34.667873, 42.605186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283371, 34.972610, 42.393490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926975, -0.327968, 0.182082,
		-0.034856, -0.558599, -0.828705,
		0.373500, 0.761843, -0.529239,
		41.395420, 35.201164, 42.234718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423042, 34.441322, 41.903919>,  <41.133972, 34.667873, 42.605186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423042, 34.441322, 41.903919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591301, 34.787933, 42.011387>,  <41.692257, 34.995899, 42.075867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591301, 34.787933, 42.011387>,  <41.423042, 34.441322, 41.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591301, 34.787933, 42.011387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893630, -0.446833, 0.042017,
		0.156460, 0.222417, -0.962315,
		0.420649, 0.866528, 0.268670,
		41.717495, 35.047894, 42.091988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947865, 34.713673, 41.401627>,  <41.423042, 34.441322, 41.903919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947865, 34.713673, 41.401627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011608, 34.774746, 41.791763>,  <42.049854, 34.811390, 42.025845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011608, 34.774746, 41.791763>,  <41.947865, 34.713673, 41.401627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011608, 34.774746, 41.791763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864191, -0.499198, -0.063051,
		0.477262, 0.852930, -0.211498,
		0.159358, 0.152683, 0.975343,
		42.059414, 34.820549, 42.084366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645279, 34.943825, 41.560562>,  <41.947865, 34.713673, 41.401627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645279, 34.943825, 41.560562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529888, 34.820793, 41.923256>,  <42.460651, 34.746975, 42.140873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529888, 34.820793, 41.923256>,  <42.645279, 34.943825, 41.560562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529888, 34.820793, 41.923256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777667, -0.627729, 0.034481,
		0.558581, 0.715088, 0.420281,
		-0.288480, -0.307578, 0.906739,
		42.443344, 34.728519, 42.195278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175766, 35.101398, 42.081158>,  <42.645279, 34.943825, 41.560562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175766, 35.101398, 42.081158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968334, 34.776653, 42.188457>,  <42.843876, 34.581806, 42.252838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968334, 34.776653, 42.188457>,  <43.175766, 35.101398, 42.081158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968334, 34.776653, 42.188457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823674, -0.558520, -0.098060,
		0.229433, 0.170097, 0.958346,
		-0.518576, -0.811863, 0.268247,
		42.812759, 34.533092, 42.268932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787449, 34.681847, 42.022316>,  <43.175766, 35.101398, 42.081158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787449, 34.681847, 42.022316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445263, 34.483055, 42.080532>,  <43.239952, 34.363781, 42.115459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445263, 34.483055, 42.080532>,  <43.787449, 34.681847, 42.022316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445263, 34.483055, 42.080532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478002, -0.865925, -0.147270,
		0.199214, -0.056419, 0.978330,
		-0.855469, -0.496982, 0.145536,
		43.188622, 34.333961, 42.124191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787354, 34.217499, 42.601139>,  <43.787449, 34.681847, 42.022316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787354, 34.217499, 42.601139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557949, 34.085659, 42.301151>,  <43.420307, 34.006557, 42.121159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557949, 34.085659, 42.301151>,  <43.787354, 34.217499, 42.601139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557949, 34.085659, 42.301151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623470, -0.769463, -0.138609,
		-0.531390, -0.547077, 0.646786,
		-0.573507, -0.329596, -0.749971,
		43.385899, 33.986782, 42.076160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677116, 33.499573, 42.744434>,  <43.787354, 34.217499, 42.601139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677116, 33.499573, 42.744434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649601, 33.602573, 42.358906>,  <43.633091, 33.664375, 42.127586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649601, 33.602573, 42.358906>,  <43.677116, 33.499573, 42.744434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649601, 33.602573, 42.358906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629876, -0.737993, -0.242121,
		-0.773644, -0.623745, -0.111432,
		-0.068785, 0.257504, -0.963826,
		43.628963, 33.679825, 42.069759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186462, 32.908169, 42.579929>,  <43.677116, 33.499573, 42.744434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186462, 32.908169, 42.579929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171249, 32.601429, 42.836208>,  <44.162121, 32.417385, 42.989975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171249, 32.601429, 42.836208>,  <44.186462, 32.908169, 42.579929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171249, 32.601429, 42.836208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068167, -0.641660, -0.763954,
		0.996949, 0.014618, 0.076678,
		-0.038033, -0.766850, 0.640698,
		44.159840, 32.371372, 43.028419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704582, 32.341309, 42.623676>,  <44.186462, 32.908169, 42.579929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704582, 32.341309, 42.623676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625233, 32.466244, 42.252064>,  <43.577621, 32.541206, 42.029099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625233, 32.466244, 42.252064>,  <43.704582, 32.341309, 42.623676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625233, 32.466244, 42.252064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976463, 0.144850, -0.159809,
		0.084655, -0.938863, -0.333722,
		-0.198378, 0.312339, -0.929027,
		43.565720, 32.559944, 41.973354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059822, 31.899460, 42.056171>,  <43.704582, 32.341309, 42.623676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059822, 31.899460, 42.056171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014618, 32.280445, 41.943005>,  <43.987495, 32.509037, 41.875103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014618, 32.280445, 41.943005>,  <44.059822, 31.899460, 42.056171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014618, 32.280445, 41.943005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987258, 0.075542, -0.140055,
		-0.112025, -0.295140, -0.948864,
		-0.113015, 0.952463, -0.282917,
		43.980713, 32.566185, 41.858128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416973, 32.103943, 41.354504>,  <44.059822, 31.899460, 42.056171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416973, 32.103943, 41.354504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397011, 32.407803, 41.613869>,  <44.385033, 32.590118, 41.769489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397011, 32.407803, 41.613869>,  <44.416973, 32.103943, 41.354504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397011, 32.407803, 41.613869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983545, 0.150246, -0.100323,
		-0.173632, 0.632738, -0.754649,
		-0.049905, 0.759650, 0.648414,
		44.382038, 32.635696, 41.808392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923355, 32.537582, 41.052792>,  <44.416973, 32.103943, 41.354504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923355, 32.537582, 41.052792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863281, 32.596718, 41.443810>,  <44.827236, 32.632198, 41.678421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863281, 32.596718, 41.443810>,  <44.923355, 32.537582, 41.052792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863281, 32.596718, 41.443810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981151, 0.143903, 0.128974,
		-0.121604, 0.978487, -0.166662,
		-0.150183, 0.147836, 0.977543,
		44.818226, 32.641068, 41.737072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188457, 33.185135, 41.245052>,  <44.923355, 32.537582, 41.052792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188457, 33.185135, 41.245052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.179394, 32.955448, 41.572411>,  <45.173954, 32.817638, 41.768826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.179394, 32.955448, 41.572411>,  <45.188457, 33.185135, 41.245052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.179394, 32.955448, 41.572411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997156, 0.045877, 0.059801,
		-0.071884, 0.817420, 0.571540,
		-0.022662, -0.574213, 0.818392,
		45.172596, 32.783184, 41.817928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362049, 33.749519, 41.711605>,  <45.188457, 33.185135, 41.245052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362049, 33.749519, 41.711605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483425, 33.376980, 41.792107>,  <45.556252, 33.153454, 41.840408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483425, 33.376980, 41.792107>,  <45.362049, 33.749519, 41.711605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483425, 33.376980, 41.792107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945021, 0.267143, -0.188599,
		0.121888, 0.247422, 0.961210,
		0.303444, -0.931352, 0.201258,
		45.574459, 33.097572, 41.852486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.802032, 33.563194, 42.375896>,  <45.362049, 33.749519, 41.711605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.802032, 33.563194, 42.375896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927467, 33.353859, 42.058968>,  <46.002728, 33.228256, 41.868809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927467, 33.353859, 42.058968>,  <45.802032, 33.563194, 42.375896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927467, 33.353859, 42.058968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911624, 0.399417, 0.096988,
		0.265709, -0.752715, 0.602345,
		0.313592, -0.523342, -0.792322,
		46.021545, 33.196857, 41.821270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346458, 33.070770, 42.496330>,  <45.802032, 33.563194, 42.375896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346458, 33.070770, 42.496330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353371, 33.207569, 42.120514>,  <46.357517, 33.289646, 41.895023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353371, 33.207569, 42.120514>,  <46.346458, 33.070770, 42.496330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353371, 33.207569, 42.120514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859397, 0.475186, 0.188775,
		0.511018, -0.810703, -0.285696,
		0.017282, 0.341993, -0.939544,
		46.358555, 33.310165, 41.838650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984409, 33.133293, 42.364216>,  <46.346458, 33.070770, 42.496330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984409, 33.133293, 42.364216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824936, 33.369617, 42.083649>,  <46.729252, 33.511414, 41.915306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824936, 33.369617, 42.083649>,  <46.984409, 33.133293, 42.364216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.824936, 33.369617, 42.083649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743066, 0.656368, 0.130514,
		0.537499, -0.469167, -0.700697,
		-0.398683, 0.590815, -0.701419,
		46.705330, 33.546864, 41.873222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.557182, 33.332249, 41.812973>,  <46.984409, 33.133293, 42.364216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.557182, 33.332249, 41.812973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268864, 33.592426, 41.908783>,  <47.095871, 33.748531, 41.966270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268864, 33.592426, 41.908783>,  <47.557182, 33.332249, 41.812973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268864, 33.592426, 41.908783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693116, 0.679489, 0.240591,
		-0.006267, 0.339439, -0.940607,
		-0.720799, 0.650442, 0.239529,
		47.052624, 33.787560, 41.980640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.628914, 33.950935, 41.387466>,  <47.557182, 33.332249, 41.812973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.628914, 33.950935, 41.387466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456047, 34.028069, 41.739841>,  <47.352325, 34.074348, 41.951267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456047, 34.028069, 41.739841>,  <47.628914, 33.950935, 41.387466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456047, 34.028069, 41.739841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685628, 0.704816, 0.182070,
		-0.585787, 0.682678, -0.436811,
		-0.432167, 0.192836, 0.880935,
		47.326397, 34.085918, 42.004124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565952, 34.739689, 41.441406>,  <47.628914, 33.950935, 41.387466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565952, 34.739689, 41.441406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544106, 34.566757, 41.801430>,  <47.530998, 34.462997, 42.017445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544106, 34.566757, 41.801430>,  <47.565952, 34.739689, 41.441406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.544106, 34.566757, 41.801430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764903, 0.561296, 0.316023,
		-0.641826, 0.705717, 0.300037,
		-0.054613, -0.432331, 0.900060,
		47.527721, 34.437057, 42.071449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344124, 35.331326, 41.985420>,  <47.565952, 34.739689, 41.441406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344124, 35.331326, 41.985420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563862, 35.017193, 42.099602>,  <47.695705, 34.828712, 42.168110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563862, 35.017193, 42.099602>,  <47.344124, 35.331326, 41.985420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.563862, 35.017193, 42.099602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733144, 0.616888, 0.286267,
		-0.400905, 0.052017, 0.914642,
		0.549341, -0.785330, 0.285450,
		47.728664, 34.781593, 42.185238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617371, 34.993526, 41.990726>,  <47.344124, 35.331326, 41.985420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617371, 34.993526, 41.990726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828556, 34.748135, 41.755814>,  <46.955265, 34.600899, 41.614864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828556, 34.748135, 41.755814>,  <46.617371, 34.993526, 41.990726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828556, 34.748135, 41.755814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770395, -0.636987, -0.027174,
		-0.357422, 0.466788, -0.808924,
		0.527959, -0.613478, -0.587285,
		46.986942, 34.564091, 41.579628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152519, 34.656479, 41.508476>,  <46.617371, 34.993526, 41.990726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152519, 34.656479, 41.508476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449448, 34.389572, 41.532852>,  <46.627605, 34.229427, 41.547478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449448, 34.389572, 41.532852>,  <46.152519, 34.656479, 41.508476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449448, 34.389572, 41.532852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669518, -0.742262, 0.028154,
		0.026445, -0.061698, -0.997744,
		0.742325, -0.667263, 0.060937,
		46.672146, 34.189392, 41.551132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106396, 34.183739, 40.929516>,  <46.152519, 34.656479, 41.508476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106396, 34.183739, 40.929516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281639, 34.013851, 41.246422>,  <46.386784, 33.911919, 41.436565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281639, 34.013851, 41.246422>,  <46.106396, 34.183739, 40.929516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281639, 34.013851, 41.246422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711235, -0.702759, 0.016569,
		0.549731, -0.570743, -0.609958,
		0.438109, -0.424715, 0.792261,
		46.413071, 33.886436, 41.484100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958809, 34.311466, 40.190403>,  <46.106396, 34.183739, 40.929516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958809, 34.311466, 40.190403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754215, 34.537937, 40.448963>,  <45.631458, 34.673820, 40.604099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754215, 34.537937, 40.448963>,  <45.958809, 34.311466, 40.190403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754215, 34.537937, 40.448963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070935, 0.777496, -0.624874,
		-0.856360, -0.273760, -0.437838,
		-0.511483, 0.566176, 0.646398,
		45.600769, 34.707790, 40.642883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568352, 34.768112, 39.794426>,  <45.958809, 34.311466, 40.190403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568352, 34.768112, 39.794426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567501, 34.939831, 40.155689>,  <45.566990, 35.042862, 40.372448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567501, 34.939831, 40.155689>,  <45.568352, 34.768112, 39.794426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567501, 34.939831, 40.155689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025643, 0.902888, -0.429110,
		-0.999669, 0.022249, -0.012926,
		-0.002123, 0.429299, 0.903160,
		45.566864, 35.068619, 40.426636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157433, 35.292557, 39.722118>,  <45.568352, 34.768112, 39.794426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157433, 35.292557, 39.722118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370560, 35.366859, 40.052357>,  <45.498436, 35.411442, 40.250500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370560, 35.366859, 40.052357>,  <45.157433, 35.292557, 39.722118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370560, 35.366859, 40.052357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165388, 0.933938, -0.316872,
		-0.829912, 0.305377, 0.466895,
		0.532816, 0.185757, 0.825592,
		45.530403, 35.422588, 40.300034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824604, 35.871799, 40.086807>,  <45.157433, 35.292557, 39.722118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824604, 35.871799, 40.086807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214897, 35.844036, 40.169872>,  <45.449074, 35.827377, 40.219711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214897, 35.844036, 40.169872>,  <44.824604, 35.871799, 40.086807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214897, 35.844036, 40.169872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161303, 0.869208, -0.467396,
		-0.148061, 0.489551, 0.859312,
		0.975735, -0.069407, 0.207662,
		45.507618, 35.823215, 40.232170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139210, 36.584057, 40.342491>,  <44.824604, 35.871799, 40.086807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139210, 36.584057, 40.342491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394497, 36.337280, 40.158291>,  <45.547668, 36.189213, 40.047771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394497, 36.337280, 40.158291>,  <45.139210, 36.584057, 40.342491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394497, 36.337280, 40.158291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377650, 0.772137, -0.511062,
		0.670865, 0.152261, 0.725780,
		0.638217, -0.616944, -0.460499,
		45.585960, 36.152199, 40.020142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792568, 36.762733, 40.531872>,  <45.139210, 36.584057, 40.342491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792568, 36.762733, 40.531872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727009, 36.607265, 40.169201>,  <45.687672, 36.513985, 39.951599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727009, 36.607265, 40.169201>,  <45.792568, 36.762733, 40.531872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727009, 36.607265, 40.169201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205871, 0.885396, -0.416762,
		0.964756, -0.254967, -0.065101,
		-0.163901, -0.388671, -0.906681,
		45.677837, 36.490665, 39.897198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127884, 37.361347, 40.087097>,  <45.792568, 36.762733, 40.531872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127884, 37.361347, 40.087097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825935, 37.552387, 39.907291>,  <45.644764, 37.667011, 39.799408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825935, 37.552387, 39.907291>,  <46.127884, 37.361347, 40.087097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825935, 37.552387, 39.907291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340932, -0.299766, -0.891014,
		-0.560296, -0.825858, 0.063458,
		-0.754874, 0.477597, -0.449519,
		45.599472, 37.695667, 39.772434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766857, 36.983143, 39.605671>,  <46.127884, 37.361347, 40.087097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766857, 36.983143, 39.605671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697460, 37.356628, 39.480404>,  <45.655823, 37.580719, 39.405243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697460, 37.356628, 39.480404>,  <45.766857, 36.983143, 39.605671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697460, 37.356628, 39.480404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330155, -0.244447, -0.911725,
		-0.927846, -0.261570, -0.265862,
		-0.173491, 0.933717, -0.313168,
		45.645412, 37.636742, 39.386452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265945, 37.035583, 39.020081>,  <45.766857, 36.983143, 39.605671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265945, 37.035583, 39.020081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514793, 37.347858, 38.996422>,  <45.664101, 37.535221, 38.982227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514793, 37.347858, 38.996422>,  <45.265945, 37.035583, 39.020081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514793, 37.347858, 38.996422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219002, -0.246060, -0.944189,
		-0.751669, 0.574444, -0.324050,
		0.622120, 0.780685, -0.059151,
		45.701427, 37.582066, 38.978676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093369, 37.358631, 38.332127>,  <45.265945, 37.035583, 39.020081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093369, 37.358631, 38.332127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462704, 37.407177, 38.477848>,  <45.684303, 37.436302, 38.565281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462704, 37.407177, 38.477848>,  <45.093369, 37.358631, 38.332127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462704, 37.407177, 38.477848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379271, -0.139997, -0.914633,
		-0.059999, 0.982686, -0.175294,
		0.923338, 0.121361, 0.364304,
		45.739704, 37.443584, 38.587139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464497, 37.676815, 37.784142>,  <45.093369, 37.358631, 38.332127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464497, 37.676815, 37.784142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755203, 37.498863, 37.993481>,  <45.929626, 37.392094, 38.119083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755203, 37.498863, 37.993481>,  <45.464497, 37.676815, 37.784142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755203, 37.498863, 37.993481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359932, -0.402276, -0.841798,
		0.585029, 0.800160, -0.132234,
		0.726767, -0.444881, 0.523346,
		45.973232, 37.365398, 38.150486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052261, 37.875771, 37.485962>,  <45.464497, 37.676815, 37.784142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052261, 37.875771, 37.485962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089600, 37.522057, 37.668972>,  <46.112003, 37.309830, 37.778778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089600, 37.522057, 37.668972>,  <46.052261, 37.875771, 37.485962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089600, 37.522057, 37.668972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107362, -0.447913, -0.887608,
		0.989828, 0.131977, 0.053127,
		0.093348, -0.884283, 0.457527,
		46.117603, 37.256771, 37.806229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714706, 37.504456, 37.404125>,  <46.052261, 37.875771, 37.485962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714706, 37.504456, 37.404125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380917, 37.284065, 37.407722>,  <46.180645, 37.151833, 37.409882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380917, 37.284065, 37.407722>,  <46.714706, 37.504456, 37.404125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380917, 37.284065, 37.407722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159043, -0.256446, -0.953384,
		0.527599, -0.794142, 0.301626,
		-0.834473, -0.550976, 0.008998,
		46.130573, 37.118774, 37.410423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708069, 37.121815, 36.799171>,  <46.714706, 37.504456, 37.404125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708069, 37.121815, 36.799171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352242, 37.004906, 36.939598>,  <46.138744, 36.934761, 37.023853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352242, 37.004906, 36.939598>,  <46.708069, 37.121815, 36.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352242, 37.004906, 36.939598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266324, -0.292566, -0.918410,
		0.371133, -0.910485, 0.182419,
		-0.889568, -0.292270, 0.351065,
		46.085369, 36.917225, 37.044918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375706, 36.407906, 36.643169>,  <46.708069, 37.121815, 36.799171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375706, 36.407906, 36.643169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010345, 36.569954, 36.659065>,  <45.791130, 36.667183, 36.668602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010345, 36.569954, 36.659065>,  <46.375706, 36.407906, 36.643169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010345, 36.569954, 36.659065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246000, -0.471560, -0.846826,
		-0.324327, -0.783266, 0.530383,
		-0.913398, 0.405123, 0.039744,
		45.736328, 36.691490, 36.670990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813965, 35.953987, 36.776512>,  <46.375706, 36.407906, 36.643169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813965, 35.953987, 36.776512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703526, 36.267548, 36.554062>,  <45.637260, 36.455685, 36.420593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703526, 36.267548, 36.554062>,  <45.813965, 35.953987, 36.776512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703526, 36.267548, 36.554062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324435, -0.620665, -0.713804,
		-0.904715, -0.016657, 0.425691,
		-0.276101, 0.783899, -0.556121,
		45.620693, 36.502716, 36.387226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151695, 35.992302, 36.592770>,  <45.813965, 35.953987, 36.776512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151695, 35.992302, 36.592770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334656, 36.175209, 36.287693>,  <45.444431, 36.284954, 36.104649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334656, 36.175209, 36.287693>,  <45.151695, 35.992302, 36.592770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334656, 36.175209, 36.287693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435098, -0.632912, -0.640400,
		-0.775548, 0.624762, -0.090538,
		0.457400, 0.457268, -0.762687,
		45.471874, 36.312389, 36.058887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619434, 35.958832, 36.023441>,  <45.151695, 35.992302, 36.592770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619434, 35.958832, 36.023441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007862, 35.991047, 35.933525>,  <45.240921, 36.010376, 35.879574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007862, 35.991047, 35.933525>,  <44.619434, 35.958832, 36.023441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007862, 35.991047, 35.933525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119162, -0.652349, -0.748492,
		-0.206926, 0.753627, -0.623881,
		0.971073, 0.080540, -0.224792,
		45.299183, 36.015209, 35.866089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786880, 36.154976, 35.251331>,  <44.619434, 35.958832, 36.023441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786880, 36.154976, 35.251331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073048, 35.926590, 35.412411>,  <45.244747, 35.789558, 35.509060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073048, 35.926590, 35.412411>,  <44.786880, 36.154976, 35.251331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073048, 35.926590, 35.412411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082624, -0.641454, -0.762699,
		0.693791, 0.512378, -0.506085,
		0.715421, -0.570969, 0.402700,
		45.287674, 35.755299, 35.533222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275326, 35.925636, 34.734928>,  <44.786880, 36.154976, 35.251331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275326, 35.925636, 34.734928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360413, 35.672699, 35.032894>,  <45.411465, 35.520935, 35.211674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360413, 35.672699, 35.032894>,  <45.275326, 35.925636, 34.734928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360413, 35.672699, 35.032894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198070, -0.718628, -0.666589,
		0.956828, 0.289339, -0.027615,
		0.212716, -0.632342, 0.744913,
		45.424229, 35.482998, 35.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982319, 35.638828, 34.787754>,  <45.275326, 35.925636, 34.734928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982319, 35.638828, 34.787754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736259, 35.365395, 34.944878>,  <45.588623, 35.201332, 35.039154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736259, 35.365395, 34.944878>,  <45.982319, 35.638828, 34.787754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736259, 35.365395, 34.944878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336106, -0.678065, -0.653652,
		0.713180, -0.270066, 0.646868,
		-0.615147, -0.683588, 0.392812,
		45.551716, 35.160316, 35.062721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392967, 35.036484, 34.960438>,  <45.982319, 35.638828, 34.787754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392967, 35.036484, 34.960438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020802, 34.945683, 34.845345>,  <45.797501, 34.891201, 34.776287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020802, 34.945683, 34.845345>,  <46.392967, 35.036484, 34.960438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020802, 34.945683, 34.845345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366078, -0.613233, -0.699952,
		-0.017560, -0.756582, 0.653663,
		-0.930418, -0.227000, -0.287737,
		45.741676, 34.877583, 34.759022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470829, 34.335899, 34.875103>,  <46.392967, 35.036484, 34.960438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470829, 34.335899, 34.875103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139633, 34.462124, 34.689693>,  <45.940914, 34.537861, 34.578449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139633, 34.462124, 34.689693>,  <46.470829, 34.335899, 34.875103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139633, 34.462124, 34.689693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215196, -0.584509, -0.782330,
		-0.517807, -0.747509, 0.416060,
		-0.827989, 0.315562, -0.463524,
		45.891235, 34.556793, 34.550636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019634, 34.790794, 35.201538>,  <46.470829, 34.335899, 34.875103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019634, 34.790794, 35.201538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396523, 34.873688, 35.306824>,  <47.622654, 34.923424, 35.369995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396523, 34.873688, 35.306824>,  <47.019634, 34.790794, 35.201538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.396523, 34.873688, 35.306824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329648, -0.433634, -0.838626,
		-0.059649, 0.876936, -0.476891,
		0.942218, 0.207229, 0.263214,
		47.679188, 34.935856, 35.385788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358391, 35.188202, 34.723736>,  <47.019634, 34.790794, 35.201538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358391, 35.188202, 34.723736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636726, 34.936081, 34.861454>,  <47.803726, 34.784809, 34.944084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636726, 34.936081, 34.861454>,  <47.358391, 35.188202, 34.723736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636726, 34.936081, 34.861454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033592, -0.450293, -0.892249,
		0.717415, 0.632424, -0.292157,
		0.695835, -0.630299, 0.344292,
		47.845478, 34.746990, 34.964741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.604736, 36.468315, 30.420780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.366966, 36.417797, 30.103109>,  <42.224304, 36.387486, 29.912508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.366966, 36.417797, 30.103109>,  <42.604736, 36.468315, 30.420780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366966, 36.417797, 30.103109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477341, -0.739365, 0.474853,
		-0.647155, 0.661355, 0.379210,
		-0.594421, -0.126291, -0.794176,
		42.188641, 36.379910, 29.864857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857475, 36.642570, 30.625935>,  <42.604736, 36.468315, 30.420780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857475, 36.642570, 30.625935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.865322, 36.392399, 30.313921>,  <41.870029, 36.242294, 30.126713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.865322, 36.392399, 30.313921>,  <41.857475, 36.642570, 30.625935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865322, 36.392399, 30.313921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710753, -0.557430, 0.429071,
		-0.703168, 0.545994, -0.455462,
		0.019618, -0.625430, -0.780034,
		41.871208, 36.204769, 30.079910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204109, 36.537125, 30.505106>,  <41.857475, 36.642570, 30.625935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204109, 36.537125, 30.505106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393223, 36.234741, 30.323996>,  <41.506691, 36.053310, 30.215330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393223, 36.234741, 30.323996>,  <41.204109, 36.537125, 30.505106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393223, 36.234741, 30.323996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641247, -0.647582, 0.411629,
		-0.604383, 0.095729, -0.790922,
		0.472782, -0.755958, -0.452774,
		41.535057, 36.007954, 30.188164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619308, 36.221905, 30.209303>,  <41.204109, 36.537125, 30.505106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619308, 36.221905, 30.209303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.924374, 35.965237, 30.241821>,  <41.107414, 35.811237, 30.261332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.924374, 35.965237, 30.241821>,  <40.619308, 36.221905, 30.209303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924374, 35.965237, 30.241821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620792, -0.690914, 0.370480,
		-0.181556, -0.333019, -0.925276,
		0.762663, -0.641667, 0.081296,
		41.153172, 35.772736, 30.266211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351013, 35.614601, 29.920485>,  <40.619308, 36.221905, 30.209303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351013, 35.614601, 29.920485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664898, 35.477222, 30.126890>,  <40.853230, 35.394794, 30.250732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664898, 35.477222, 30.126890>,  <40.351013, 35.614601, 29.920485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664898, 35.477222, 30.126890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595053, -0.650532, 0.471933,
		0.173600, -0.677387, -0.714850,
		0.784714, -0.343446, 0.516013,
		40.900311, 35.374187, 30.281694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363667, 34.873833, 29.786325>,  <40.351013, 35.614601, 29.920485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363667, 34.873833, 29.786325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566570, 34.940048, 30.124624>,  <40.688313, 34.979778, 30.327604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.566570, 34.940048, 30.124624>,  <40.363667, 34.873833, 29.786325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566570, 34.940048, 30.124624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564077, -0.678174, 0.471061,
		0.651544, -0.716014, -0.250629,
		0.507256, 0.165543, 0.845746,
		40.718746, 34.989712, 30.378347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480232, 34.226067, 30.129446>,  <40.363667, 34.873833, 29.786325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480232, 34.226067, 30.129446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553268, 34.473850, 30.434847>,  <40.597092, 34.622520, 30.618088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553268, 34.473850, 30.434847>,  <40.480232, 34.226067, 30.129446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553268, 34.473850, 30.434847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386906, -0.668629, 0.635012,
		0.903861, -0.411352, 0.117583,
		0.182594, 0.619455, 0.763502,
		40.608047, 34.659687, 30.663897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729893, 33.878239, 30.565874>,  <40.480232, 34.226067, 30.129446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729893, 33.878239, 30.565874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603001, 34.176666, 30.800051>,  <40.526863, 34.355724, 30.940556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603001, 34.176666, 30.800051>,  <40.729893, 33.878239, 30.565874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603001, 34.176666, 30.800051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303830, -0.664743, 0.682498,
		0.898360, 0.038636, 0.437557,
		-0.317232, 0.746072, 0.585440,
		40.507832, 34.400490, 30.975683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773739, 33.654362, 31.186935>,  <40.729893, 33.878239, 30.565874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773739, 33.654362, 31.186935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541538, 33.965618, 31.282873>,  <40.402218, 34.152370, 31.340435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541538, 33.965618, 31.282873>,  <40.773739, 33.654362, 31.186935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541538, 33.965618, 31.282873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340277, -0.499426, 0.796734,
		0.739751, 0.380890, 0.554699,
		-0.580499, 0.778136, 0.239843,
		40.367390, 34.199059, 31.354826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951149, 33.880089, 31.829666>,  <40.773739, 33.654362, 31.186935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951149, 33.880089, 31.829666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569336, 33.983707, 31.770658>,  <40.340248, 34.045879, 31.735254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569336, 33.983707, 31.770658>,  <40.951149, 33.880089, 31.829666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569336, 33.983707, 31.770658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259037, -0.475854, 0.840514,
		0.147532, 0.840512, 0.521320,
		-0.954534, 0.259044, -0.147520,
		40.282974, 34.061420, 31.726402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804394, 34.212868, 32.351452>,  <40.951149, 33.880089, 31.829666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804394, 34.212868, 32.351452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447731, 34.108025, 32.203804>,  <40.233734, 34.045120, 32.115215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447731, 34.108025, 32.203804>,  <40.804394, 34.212868, 32.351452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447731, 34.108025, 32.203804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292268, -0.289388, 0.911501,
		-0.345728, 0.920628, 0.181429,
		-0.891656, -0.262106, -0.369120,
		40.180233, 34.029392, 32.093067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366116, 34.417606, 32.847889>,  <40.804394, 34.212868, 32.351452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366116, 34.417606, 32.847889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.133583, 34.174175, 32.631855>,  <39.994064, 34.028118, 32.502235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.133583, 34.174175, 32.631855>,  <40.366116, 34.417606, 32.847889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133583, 34.174175, 32.631855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435078, -0.328410, 0.838364,
		-0.687577, 0.722345, -0.073863,
		-0.581330, -0.608576, -0.540083,
		39.959183, 33.991604, 32.469830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677010, 34.575386, 32.912121>,  <40.366116, 34.417606, 32.847889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677010, 34.575386, 32.912121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631195, 34.189877, 32.815769>,  <39.603706, 33.958572, 32.757957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631195, 34.189877, 32.815769>,  <39.677010, 34.575386, 32.912121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631195, 34.189877, 32.815769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724113, -0.085010, 0.684422,
		-0.680105, 0.252814, -0.688144,
		-0.114533, -0.963773, -0.240882,
		39.596836, 33.900745, 32.743504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985283, 34.371620, 32.954399>,  <39.677010, 34.575386, 32.912121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985283, 34.371620, 32.954399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138977, 34.002911, 32.933647>,  <39.231194, 33.781685, 32.921196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138977, 34.002911, 32.933647>,  <38.985283, 34.371620, 32.954399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138977, 34.002911, 32.933647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710068, -0.330966, 0.621503,
		-0.590056, -0.201967, -0.781692,
		0.384236, -0.921776, -0.051878,
		39.254250, 33.726379, 32.918083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427551, 33.930607, 32.869576>,  <38.985283, 34.371620, 32.954399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427551, 33.930607, 32.869576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.724018, 33.705227, 33.015556>,  <38.901897, 33.570000, 33.103146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.724018, 33.705227, 33.015556>,  <38.427551, 33.930607, 32.869576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724018, 33.705227, 33.015556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571465, -0.244271, 0.783428,
		-0.352280, -0.789207, -0.503041,
		0.741166, -0.563457, 0.364952,
		38.946369, 33.536190, 33.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051704, 33.313503, 33.044483>,  <38.427551, 33.930607, 32.869576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051704, 33.313503, 33.044483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396778, 33.308556, 33.246719>,  <38.603821, 33.305588, 33.368061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396778, 33.308556, 33.246719>,  <38.051704, 33.313503, 33.044483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396778, 33.308556, 33.246719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499872, -0.172729, 0.848701,
		0.076836, -0.984892, -0.155191,
		0.862684, -0.012365, 0.505592,
		38.655582, 33.304848, 33.398396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905804, 32.777355, 33.457539>,  <38.051704, 33.313503, 33.044483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905804, 32.777355, 33.457539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217915, 32.971283, 33.615589>,  <38.405182, 33.087639, 33.710419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217915, 32.971283, 33.615589>,  <37.905804, 32.777355, 33.457539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217915, 32.971283, 33.615589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339186, -0.202762, 0.918608,
		0.525477, -0.850785, 0.006235,
		0.780273, 0.484822, 0.395121,
		38.451996, 33.116730, 33.734127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131157, 32.356922, 33.855087>,  <37.905804, 32.777355, 33.457539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131157, 32.356922, 33.855087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265858, 32.709591, 33.987297>,  <38.346680, 32.921192, 34.066624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265858, 32.709591, 33.987297>,  <38.131157, 32.356922, 33.855087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265858, 32.709591, 33.987297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360089, -0.203760, 0.910394,
		0.870019, -0.425598, 0.248864,
		0.336753, 0.881674, 0.330528,
		38.366882, 32.974094, 34.086456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277119, 32.260586, 34.566589>,  <38.131157, 32.356922, 33.855087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277119, 32.260586, 34.566589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294861, 32.659966, 34.580048>,  <38.305508, 32.899593, 34.588123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294861, 32.659966, 34.580048>,  <38.277119, 32.260586, 34.566589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294861, 32.659966, 34.580048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494638, -0.007312, 0.869068,
		0.867966, -0.055192, 0.493547,
		0.044357, 0.998449, 0.033647,
		38.308167, 32.959499, 34.590141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507622, 32.423321, 35.326698>,  <38.277119, 32.260586, 34.566589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507622, 32.423321, 35.326698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327953, 32.748466, 35.178371>,  <38.220154, 32.943554, 35.089375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327953, 32.748466, 35.178371>,  <38.507622, 32.423321, 35.326698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327953, 32.748466, 35.178371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384967, 0.198458, 0.901341,
		0.806257, 0.547605, 0.223784,
		-0.449167, 0.812861, -0.370818,
		38.193203, 32.992325, 35.067127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728603, 32.856792, 35.804054>,  <38.507622, 32.423321, 35.326698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728603, 32.856792, 35.804054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414864, 32.998188, 35.600159>,  <38.226620, 33.083027, 35.477821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414864, 32.998188, 35.600159>,  <38.728603, 32.856792, 35.804054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414864, 32.998188, 35.600159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420362, 0.301405, 0.855833,
		0.456170, 0.885550, -0.087811,
		-0.784349, 0.353493, -0.509743,
		38.179558, 33.104237, 35.447235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696037, 33.562397, 35.926823>,  <38.728603, 32.856792, 35.804054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696037, 33.562397, 35.926823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327492, 33.440853, 35.829872>,  <38.106365, 33.367928, 35.771702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327492, 33.440853, 35.829872>,  <38.696037, 33.562397, 35.926823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327492, 33.440853, 35.829872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342567, 0.340180, 0.875743,
		-0.183654, 0.889913, -0.417524,
		-0.921368, -0.303864, -0.242379,
		38.051083, 33.349693, 35.757160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158085, 34.071205, 36.527779>,  <38.696037, 33.562397, 35.926823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158085, 34.071205, 36.527779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333504, 34.286884, 36.815372>,  <39.438755, 34.416294, 36.987930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333504, 34.286884, 36.815372>,  <39.158085, 34.071205, 36.527779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333504, 34.286884, 36.815372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437972, 0.570364, -0.694885,
		-0.784765, 0.619635, 0.013977,
		0.438547, 0.539200, 0.718985,
		39.465069, 34.448643, 37.031067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991524, 34.864529, 36.492435>,  <39.158085, 34.071205, 36.527779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991524, 34.864529, 36.492435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349922, 34.786186, 36.651852>,  <39.564960, 34.739182, 36.747501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349922, 34.786186, 36.651852>,  <38.991524, 34.864529, 36.492435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349922, 34.786186, 36.651852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438040, 0.537146, -0.720829,
		-0.072890, 0.820435, 0.567075,
		0.895995, -0.195861, 0.398536,
		39.618721, 34.727428, 36.771412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421181, 35.510387, 36.368736>,  <38.991524, 34.864529, 36.492435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421181, 35.510387, 36.368736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681976, 35.229340, 36.482742>,  <39.838455, 35.060711, 36.551147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681976, 35.229340, 36.482742>,  <39.421181, 35.510387, 36.368736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681976, 35.229340, 36.482742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689380, 0.392809, -0.608652,
		0.315693, 0.593321, 0.740478,
		0.651992, -0.702618, 0.285017,
		39.877575, 35.018555, 36.568249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062435, 35.845051, 36.491730>,  <39.421181, 35.510387, 36.368736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062435, 35.845051, 36.491730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.133991, 35.458336, 36.418709>,  <40.176926, 35.226307, 36.374897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.133991, 35.458336, 36.418709>,  <40.062435, 35.845051, 36.491730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133991, 35.458336, 36.418709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622320, 0.254895, -0.740099,
		0.762048, 0.018792, 0.647248,
		0.178889, -0.966786, -0.182548,
		40.187656, 35.168301, 36.363945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780354, 35.857506, 36.318817>,  <40.062435, 35.845051, 36.491730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780354, 35.857506, 36.318817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661194, 35.497658, 36.191109>,  <40.589699, 35.281746, 36.114483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661194, 35.497658, 36.191109>,  <40.780354, 35.857506, 36.318817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661194, 35.497658, 36.191109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608364, 0.078816, -0.789735,
		0.735628, -0.429492, 0.523820,
		-0.297899, -0.899625, -0.319266,
		40.571823, 35.227772, 36.095329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406910, 35.538422, 36.244194>,  <40.780354, 35.857506, 36.318817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406910, 35.538422, 36.244194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.155758, 35.346741, 35.998875>,  <41.005066, 35.231731, 35.851685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.155758, 35.346741, 35.998875>,  <41.406910, 35.538422, 36.244194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155758, 35.346741, 35.998875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685897, 0.031733, -0.727006,
		0.367844, -0.877131, 0.308758,
		-0.627882, -0.479201, -0.613295,
		40.967392, 35.202980, 35.814888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774887, 35.007927, 35.954994>,  <41.406910, 35.538422, 36.244194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774887, 35.007927, 35.954994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481220, 35.017586, 35.683578>,  <41.305019, 35.023380, 35.520729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481220, 35.017586, 35.683578>,  <41.774887, 35.007927, 35.954994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481220, 35.017586, 35.683578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672551, -0.111232, -0.731644,
		-0.093146, -0.993501, 0.065419,
		-0.734165, 0.024152, -0.678541,
		41.260971, 35.024830, 35.480015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903793, 34.502899, 35.375210>,  <41.774887, 35.007927, 35.954994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903793, 34.502899, 35.375210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637493, 34.764469, 35.231457>,  <41.477711, 34.921410, 35.145206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637493, 34.764469, 35.231457>,  <41.903793, 34.502899, 35.375210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637493, 34.764469, 35.231457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632789, 0.239564, -0.736334,
		-0.395411, -0.717630, -0.573286,
		-0.665754, 0.653923, -0.359382,
		41.437767, 34.960648, 35.123642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753536, 34.340336, 34.609886>,  <41.903793, 34.502899, 35.375210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753536, 34.340336, 34.609886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.642300, 34.716888, 34.686272>,  <41.575558, 34.942822, 34.732101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.642300, 34.716888, 34.686272>,  <41.753536, 34.340336, 34.609886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642300, 34.716888, 34.686272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577472, 0.322710, -0.749923,
		-0.767589, -0.098270, -0.633364,
		-0.278088, 0.941382, 0.190961,
		41.558872, 34.999302, 34.743561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635258, 34.596939, 33.979233>,  <41.753536, 34.340336, 34.609886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635258, 34.596939, 33.979233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.624237, 34.939838, 34.184902>,  <41.617622, 35.145576, 34.308304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.624237, 34.939838, 34.184902>,  <41.635258, 34.596939, 33.979233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624237, 34.939838, 34.184902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438902, 0.472508, -0.764265,
		-0.898112, 0.204611, -0.389267,
		-0.027555, 0.857246, 0.514170,
		41.615971, 35.197014, 34.339153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308212, 35.219635, 33.497692>,  <41.635258, 34.596939, 33.979233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308212, 35.219635, 33.497692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.561039, 35.360100, 33.774006>,  <41.712734, 35.444378, 33.939793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.561039, 35.360100, 33.774006>,  <41.308212, 35.219635, 33.497692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561039, 35.360100, 33.774006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427939, 0.584996, -0.688947,
		-0.646035, 0.731072, 0.219481,
		0.632065, 0.351160, 0.690783,
		41.750660, 35.465446, 33.981239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258774, 35.934383, 33.456898>,  <41.308212, 35.219635, 33.497692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258774, 35.934383, 33.456898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.599106, 35.855618, 33.651756>,  <41.803307, 35.808357, 33.768673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.599106, 35.855618, 33.651756>,  <41.258774, 35.934383, 33.456898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599106, 35.855618, 33.651756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460560, 0.725765, -0.511028,
		-0.252928, 0.659159, 0.708192,
		0.850830, -0.196912, 0.487149,
		41.854355, 35.796543, 33.797901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553341, 36.587646, 33.717102>,  <41.258774, 35.934383, 33.456898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553341, 36.587646, 33.717102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.837265, 36.306328, 33.701401>,  <42.007622, 36.137539, 33.691978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.837265, 36.306328, 33.701401>,  <41.553341, 36.587646, 33.717102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837265, 36.306328, 33.701401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586764, 0.621200, -0.519440,
		0.389705, 0.345671, 0.853605,
		0.709815, -0.703293, -0.039257,
		42.050209, 36.095341, 33.689625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111706, 37.071888, 33.764969>,  <41.553341, 36.587646, 33.717102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111706, 37.071888, 33.764969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.280006, 36.719696, 33.677582>,  <42.380985, 36.508381, 33.625149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.280006, 36.719696, 33.677582>,  <42.111706, 37.071888, 33.764969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280006, 36.719696, 33.677582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586634, 0.447772, -0.674805,
		0.691974, 0.155765, 0.704918,
		0.420753, -0.880476, -0.218469,
		42.406231, 36.455555, 33.612041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894753, 37.196430, 33.736839>,  <42.111706, 37.071888, 33.764969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894753, 37.196430, 33.736839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.844032, 36.854984, 33.534740>,  <42.813599, 36.650116, 33.413483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.844032, 36.854984, 33.534740>,  <42.894753, 37.196430, 33.736839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844032, 36.854984, 33.534740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703379, 0.281772, -0.652581,
		0.699414, -0.438126, 0.564683,
		-0.126801, -0.853610, -0.505244,
		42.805992, 36.598900, 33.383167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468052, 36.914249, 33.597874>,  <42.894753, 37.196430, 33.736839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468052, 36.914249, 33.597874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.252949, 36.745861, 33.305683>,  <43.123886, 36.644829, 33.130367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.252949, 36.745861, 33.305683>,  <43.468052, 36.914249, 33.597874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252949, 36.745861, 33.305683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609246, 0.404870, -0.681835,
		0.582782, -0.811704, 0.038752,
		-0.537759, -0.420971, -0.730478,
		43.091621, 36.619572, 33.086540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871616, 36.563297, 33.193905>,  <43.468052, 36.914249, 33.597874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871616, 36.563297, 33.193905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.571983, 36.620350, 32.935127>,  <43.392204, 36.654583, 32.779861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.571983, 36.620350, 32.935127>,  <43.871616, 36.563297, 33.193905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571983, 36.620350, 32.935127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662221, 0.133955, -0.737238,
		-0.018494, -0.980669, -0.194797,
		-0.749081, 0.142633, -0.646942,
		43.347260, 36.663139, 32.741043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028309, 36.143368, 32.512966>,  <43.871616, 36.563297, 33.193905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028309, 36.143368, 32.512966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.760406, 36.422054, 32.410202>,  <43.599663, 36.589268, 32.348541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.760406, 36.422054, 32.410202>,  <44.028309, 36.143368, 32.512966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760406, 36.422054, 32.410202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376064, 0.019911, -0.926380,
		-0.640312, -0.717066, -0.275347,
		-0.669758, 0.696720, -0.256914,
		43.559479, 36.631069, 32.333126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.948380, 35.937611, 31.728907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.770741, 36.286777, 31.809696>,  <43.664158, 36.496277, 31.858170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.770741, 36.286777, 31.809696>,  <43.948380, 35.937611, 31.728907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770741, 36.286777, 31.809696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368158, 0.383293, -0.847081,
		-0.816848, -0.301826, -0.491590,
		-0.444094, 0.872919, 0.201972,
		43.637512, 36.548653, 31.870287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432056, 36.128452, 31.271276>,  <43.948380, 35.937611, 31.728907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432056, 36.128452, 31.271276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.543716, 36.477051, 31.432560>,  <43.610710, 36.686211, 31.529329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.543716, 36.477051, 31.432560>,  <43.432056, 36.128452, 31.271276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543716, 36.477051, 31.432560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230295, 0.346886, -0.909194,
		-0.932224, 0.346656, -0.103868,
		0.279148, 0.871493, 0.403208,
		43.627460, 36.738499, 31.553522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970753, 36.657349, 31.047350>,  <43.432056, 36.128452, 31.271276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970753, 36.657349, 31.047350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318123, 36.824135, 31.154665>,  <43.526546, 36.924206, 31.219053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.318123, 36.824135, 31.154665>,  <42.970753, 36.657349, 31.047350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318123, 36.824135, 31.154665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103437, 0.376832, -0.920488,
		-0.484911, 0.827126, 0.284121,
		0.868425, 0.416966, 0.268286,
		43.578651, 36.949226, 31.235151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989422, 37.357689, 30.804483>,  <42.970753, 36.657349, 31.047350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989422, 37.357689, 30.804483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.371887, 37.278793, 30.891064>,  <43.601368, 37.231457, 30.943012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.371887, 37.278793, 30.891064>,  <42.989422, 37.357689, 30.804483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371887, 37.278793, 30.891064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282482, 0.426433, -0.859278,
		0.077179, 0.882753, 0.463455,
		0.956163, -0.197236, 0.216451,
		43.658737, 37.219624, 30.955999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415428, 38.063030, 30.683325>,  <42.989422, 37.357689, 30.804483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415428, 38.063030, 30.683325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.688152, 37.770718, 30.670038>,  <43.851788, 37.595329, 30.662066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.688152, 37.770718, 30.670038>,  <43.415428, 38.063030, 30.683325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688152, 37.770718, 30.670038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535695, 0.529686, -0.657620,
		0.498168, 0.430576, 0.752618,
		0.681806, -0.730778, -0.033216,
		43.892693, 37.551483, 30.660074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071636, 38.435966, 30.775822>,  <43.415428, 38.063030, 30.683325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071636, 38.435966, 30.775822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.134327, 38.074738, 30.615871>,  <44.171944, 37.858002, 30.519901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.134327, 38.074738, 30.615871>,  <44.071636, 38.435966, 30.775822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134327, 38.074738, 30.615871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534772, 0.417989, -0.734374,
		0.830335, -0.098745, 0.548447,
		0.156729, -0.903070, -0.399876,
		44.181347, 37.803818, 30.495909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730614, 38.500614, 30.676262>,  <44.071636, 38.435966, 30.775822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730614, 38.500614, 30.676262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.601841, 38.206638, 30.437523>,  <44.524578, 38.030254, 30.294279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.601841, 38.206638, 30.437523>,  <44.730614, 38.500614, 30.676262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601841, 38.206638, 30.437523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519568, 0.389856, -0.760304,
		0.791460, -0.554868, 0.256344,
		-0.321931, -0.734939, -0.596847,
		44.505260, 37.986156, 30.258469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196644, 38.362701, 30.285246>,  <44.730614, 38.500614, 30.676262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196644, 38.362701, 30.285246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.930950, 38.179024, 30.049305>,  <44.771534, 38.068817, 29.907740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.930950, 38.179024, 30.049305>,  <45.196644, 38.362701, 30.285246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930950, 38.179024, 30.049305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574041, 0.192096, -0.795975,
		0.478818, -0.867315, 0.136002,
		-0.664236, -0.459198, -0.589854,
		44.731678, 38.041264, 29.872349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553505, 38.048512, 29.693050>,  <45.196644, 38.362701, 30.285246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553505, 38.048512, 29.693050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173950, 38.103836, 29.579571>,  <44.946217, 38.137032, 29.511484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173950, 38.103836, 29.579571>,  <45.553505, 38.048512, 29.693050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173950, 38.103836, 29.579571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302666, 0.143918, -0.942168,
		-0.089481, -0.979877, -0.178423,
		-0.948887, 0.138309, -0.283697,
		44.889282, 38.145329, 29.494461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684711, 37.890003, 29.080803>,  <45.553505, 38.048512, 29.693050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684711, 37.890003, 29.080803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.312683, 38.036953, 29.079262>,  <45.089466, 38.125122, 29.078337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.312683, 38.036953, 29.079262>,  <45.684711, 37.890003, 29.080803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312683, 38.036953, 29.079262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134053, 0.329581, -0.934562,
		-0.342062, -0.869721, -0.355779,
		-0.930066, 0.367371, -0.003851,
		45.033665, 38.147163, 29.078106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417816, 37.681473, 28.480469>,  <45.684711, 37.890003, 29.080803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417816, 37.681473, 28.480469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.214703, 38.004112, 28.601503>,  <45.092834, 38.197697, 28.674124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.214703, 38.004112, 28.601503>,  <45.417816, 37.681473, 28.480469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214703, 38.004112, 28.601503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039887, 0.372877, -0.927023,
		-0.860560, -0.458660, -0.221514,
		-0.507786, 0.806594, 0.302589,
		45.062366, 38.246090, 28.692280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865356, 37.776615, 27.975315>,  <45.417816, 37.681473, 28.480469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865356, 37.776615, 27.975315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.954117, 38.124748, 28.151169>,  <45.007374, 38.333630, 28.256681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.954117, 38.124748, 28.151169>,  <44.865356, 37.776615, 27.975315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954117, 38.124748, 28.151169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058922, 0.438082, -0.897002,
		-0.973288, 0.224948, 0.045928,
		0.221899, 0.870335, 0.439634,
		45.020687, 38.385849, 28.283058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618336, 38.248047, 27.662369>,  <44.865356, 37.776615, 27.975315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618336, 38.248047, 27.662369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.851204, 38.519165, 27.842001>,  <44.990925, 38.681835, 27.949780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.851204, 38.519165, 27.842001>,  <44.618336, 38.248047, 27.662369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851204, 38.519165, 27.842001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140013, 0.460505, -0.876545,
		-0.800921, 0.573175, 0.173192,
		0.582169, 0.677795, 0.449080,
		45.025856, 38.722504, 27.976725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507843, 38.781868, 27.319025>,  <44.618336, 38.248047, 27.662369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507843, 38.781868, 27.319025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.831322, 38.907310, 27.518085>,  <45.025410, 38.982578, 27.637522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.831322, 38.907310, 27.518085>,  <44.507843, 38.781868, 27.319025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831322, 38.907310, 27.518085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282284, 0.535330, -0.796076,
		-0.516065, 0.784264, 0.344393,
		0.808698, 0.313610, 0.497651,
		45.073933, 39.001392, 27.667381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475868, 39.476913, 27.291847>,  <44.507843, 38.781868, 27.319025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475868, 39.476913, 27.291847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.858200, 39.363918, 27.324318>,  <45.087601, 39.296124, 27.343800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.858200, 39.363918, 27.324318>,  <44.475868, 39.476913, 27.291847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858200, 39.363918, 27.324318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249631, 0.634453, -0.731542,
		0.155147, 0.719494, 0.676947,
		0.955831, -0.282484, 0.081175,
		45.144951, 39.279175, 27.348671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732349, 40.090004, 27.206362>,  <44.475868, 39.476913, 27.291847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732349, 40.090004, 27.206362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.045700, 39.844330, 27.168211>,  <45.233711, 39.696926, 27.145321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.045700, 39.844330, 27.168211>,  <44.732349, 40.090004, 27.206362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045700, 39.844330, 27.168211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483685, 0.698771, -0.527037,
		0.390347, 0.366735, 0.844473,
		0.783376, -0.614186, -0.095379,
		45.280712, 39.660072, 27.139597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295677, 40.432343, 27.471197>,  <44.732349, 40.090004, 27.206362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295677, 40.432343, 27.471197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.444977, 40.176102, 27.202776>,  <45.534557, 40.022358, 27.041723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.444977, 40.176102, 27.202776>,  <45.295677, 40.432343, 27.471197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444977, 40.176102, 27.202776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421151, 0.761500, -0.492697,
		0.826630, -0.098715, 0.554020,
		0.373249, -0.640604, -0.671052,
		45.556950, 39.983921, 27.001461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962597, 40.766975, 27.301199>,  <45.295677, 40.432343, 27.471197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962597, 40.766975, 27.301199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.935032, 40.484005, 27.019831>,  <45.918491, 40.314224, 26.851009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.935032, 40.484005, 27.019831>,  <45.962597, 40.766975, 27.301199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935032, 40.484005, 27.019831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543644, 0.564576, -0.621052,
		0.836482, -0.425211, 0.345678,
		-0.068916, -0.707424, -0.703421,
		45.914356, 40.271778, 26.808804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633972, 40.718964, 26.930799>,  <45.962597, 40.766975, 27.301199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633972, 40.718964, 26.930799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.411694, 40.523647, 26.661644>,  <46.278328, 40.406460, 26.500151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.411694, 40.523647, 26.661644>,  <46.633972, 40.718964, 26.930799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411694, 40.523647, 26.661644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426295, 0.527518, -0.734845,
		0.713777, -0.695198, -0.084984,
		-0.555693, -0.488287, -0.672889,
		46.244984, 40.377163, 26.459778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.033524, 40.361061, 26.488148>,  <46.633972, 40.718964, 26.930799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.033524, 40.361061, 26.488148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.694359, 40.381760, 26.277105>,  <46.490860, 40.394180, 26.150480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.694359, 40.381760, 26.277105>,  <47.033524, 40.361061, 26.488148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694359, 40.381760, 26.277105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505624, 0.378080, -0.775500,
		0.159347, -0.924326, -0.346743,
		-0.847911, 0.051749, -0.527607,
		46.439987, 40.397285, 26.118824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.304962, 40.278431, 25.799765>,  <47.033524, 40.361061, 26.488148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.304962, 40.278431, 25.799765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.934776, 40.425049, 25.761497>,  <46.712666, 40.513020, 25.738537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.934776, 40.425049, 25.761497>,  <47.304962, 40.278431, 25.799765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934776, 40.425049, 25.761497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268403, 0.456235, -0.848416,
		-0.267338, -0.810859, -0.520613,
		-0.925468, 0.366548, -0.095668,
		46.657135, 40.535015, 25.732798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.039440, 40.037064, 25.112371>,  <47.304962, 40.278431, 25.799765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.039440, 40.037064, 25.112371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.863190, 40.376850, 25.228472>,  <46.757439, 40.580723, 25.298132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.863190, 40.376850, 25.228472>,  <47.039440, 40.037064, 25.112371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863190, 40.376850, 25.228472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359848, 0.463361, -0.809819,
		-0.822409, -0.252382, -0.509850,
		-0.440628, 0.849471, 0.290253,
		46.731003, 40.631691, 25.315548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605900, 40.377537, 24.532526>,  <47.039440, 40.037064, 25.112371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605900, 40.377537, 24.532526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.718925, 40.675022, 24.774864>,  <46.786743, 40.853512, 24.920267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.718925, 40.675022, 24.774864>,  <46.605900, 40.377537, 24.532526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718925, 40.675022, 24.774864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338415, 0.513687, -0.788417,
		-0.897570, 0.427808, -0.106532,
		0.282567, 0.743711, 0.605846,
		46.803696, 40.898136, 24.956617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296898, 39.914173, 23.937469>,  <46.605900, 40.377537, 24.532526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296898, 39.914173, 23.937469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.061764, 39.955238, 23.616495>,  <45.920681, 39.979877, 23.423910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.061764, 39.955238, 23.616495>,  <46.296898, 39.914173, 23.937469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.061764, 39.955238, 23.616495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561499, -0.765853, 0.313348,
		-0.582379, 0.634766, 0.507845,
		-0.587837, 0.102667, -0.802438,
		45.885414, 39.986038, 23.375763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661789, 40.242222, 24.145229>,  <46.296898, 39.914173, 23.937469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661789, 40.242222, 24.145229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.637524, 39.988914, 23.836609>,  <45.622963, 39.836929, 23.651438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.637524, 39.988914, 23.836609>,  <45.661789, 40.242222, 24.145229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637524, 39.988914, 23.836609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457020, -0.669568, 0.585501,
		-0.887385, 0.388134, -0.248797,
		-0.060666, -0.633270, -0.771549,
		45.619324, 39.798935, 23.605145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977936, 40.208199, 23.954062>,  <45.661789, 40.242222, 24.145229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977936, 40.208199, 23.954062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.143490, 39.866318, 23.828726>,  <45.242825, 39.661190, 23.753525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.143490, 39.866318, 23.828726>,  <44.977936, 40.208199, 23.954062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143490, 39.866318, 23.828726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701393, -0.518825, 0.488742,
		-0.580296, 0.017488, -0.814218,
		0.413889, -0.854702, -0.313338,
		45.267658, 39.609909, 23.734724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453651, 39.874893, 23.594187>,  <44.977936, 40.208199, 23.954062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453651, 39.874893, 23.594187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.712479, 39.594830, 23.714907>,  <44.867775, 39.426792, 23.787338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.712479, 39.594830, 23.714907>,  <44.453651, 39.874893, 23.594187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712479, 39.594830, 23.714907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760663, -0.565868, 0.318096,
		-0.051937, -0.435398, -0.898739,
		0.647066, -0.700158, 0.301802,
		44.906597, 39.384781, 23.805447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178883, 39.212578, 23.363012>,  <44.453651, 39.874893, 23.594187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178883, 39.212578, 23.363012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.450310, 39.106453, 23.636992>,  <44.613167, 39.042778, 23.801380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.450310, 39.106453, 23.636992>,  <44.178883, 39.212578, 23.363012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450310, 39.106453, 23.636992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646451, -0.658472, 0.385376,
		0.348778, -0.704291, -0.618327,
		0.678568, -0.265307, 0.684950,
		44.653881, 39.026859, 23.842476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216423, 38.457279, 23.445221>,  <44.178883, 39.212578, 23.363012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216423, 38.457279, 23.445221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375069, 38.586464, 23.788940>,  <44.470257, 38.663975, 23.995173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375069, 38.586464, 23.788940>,  <44.216423, 38.457279, 23.445221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375069, 38.586464, 23.788940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621483, -0.594460, 0.510271,
		0.675615, -0.736421, -0.035059,
		0.396616, 0.322958, 0.859299,
		44.494053, 38.683350, 24.046730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297588, 37.787804, 23.901291>,  <44.216423, 38.457279, 23.445221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297588, 37.787804, 23.901291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.362652, 38.082703, 24.163591>,  <44.401691, 38.259644, 24.320972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.362652, 38.082703, 24.163591>,  <44.297588, 37.787804, 23.901291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362652, 38.082703, 24.163591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525202, -0.497933, 0.690091,
		0.835288, -0.456650, 0.306212,
		0.162657, 0.737247, 0.655751,
		44.411449, 38.303879, 24.360317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520164, 37.443314, 24.564007>,  <44.297588, 37.787804, 23.901291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520164, 37.443314, 24.564007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.401150, 37.808239, 24.676546>,  <44.329742, 38.027195, 24.744070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.401150, 37.808239, 24.676546>,  <44.520164, 37.443314, 24.564007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401150, 37.808239, 24.676546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445587, -0.393331, 0.804203,
		0.844348, 0.113914, 0.523545,
		-0.297536, 0.912313, 0.281350,
		44.311890, 38.081932, 24.760950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781063, 37.493618, 25.174747>,  <44.520164, 37.443314, 24.564007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781063, 37.493618, 25.174747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.516788, 37.792683, 25.147896>,  <44.358223, 37.972122, 25.131784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.516788, 37.792683, 25.147896>,  <44.781063, 37.493618, 25.174747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516788, 37.792683, 25.147896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282373, -0.164668, 0.945066,
		0.695531, 0.643345, 0.319911,
		-0.660683, 0.747657, -0.067132,
		44.318584, 38.016979, 25.127756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800518, 37.773476, 25.883879>,  <44.781063, 37.493618, 25.174747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800518, 37.773476, 25.883879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.473866, 37.908794, 25.696831>,  <44.277874, 37.989986, 25.584602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.473866, 37.908794, 25.696831>,  <44.800518, 37.773476, 25.883879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473866, 37.908794, 25.696831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539010, -0.157340, 0.827474,
		0.206358, 0.927792, 0.310835,
		-0.816630, 0.338299, -0.467620,
		44.228878, 38.010284, 25.556545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557751, 38.397007, 26.209774>,  <44.800518, 37.773476, 25.883879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557751, 38.397007, 26.209774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.246330, 38.201797, 26.051949>,  <44.059479, 38.084671, 25.957253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.246330, 38.201797, 26.051949>,  <44.557751, 38.397007, 26.209774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246330, 38.201797, 26.051949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404071, -0.091240, 0.910166,
		-0.480185, 0.868047, -0.126162,
		-0.778556, -0.488026, -0.394565,
		44.012764, 38.055389, 25.933578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111912, 38.555149, 26.604551>,  <44.557751, 38.397007, 26.209774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111912, 38.555149, 26.604551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.875195, 38.282501, 26.432423>,  <43.733162, 38.118912, 26.329145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.875195, 38.282501, 26.432423>,  <44.111912, 38.555149, 26.604551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875195, 38.282501, 26.432423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313147, -0.297511, 0.901901,
		-0.742776, 0.668496, -0.037380,
		-0.591796, -0.681616, -0.430322,
		43.697655, 38.078018, 26.303326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484604, 38.691338, 26.834137>,  <44.111912, 38.555149, 26.604551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484604, 38.691338, 26.834137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.468216, 38.308697, 26.718729>,  <43.458382, 38.079113, 26.649485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.468216, 38.308697, 26.718729>,  <43.484604, 38.691338, 26.834137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468216, 38.308697, 26.718729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381690, -0.251875, 0.889310,
		-0.923382, 0.146561, -0.354804,
		-0.040972, -0.956598, -0.288518,
		43.455925, 38.021717, 26.632174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794136, 38.535465, 27.107731>,  <43.484604, 38.691338, 26.834137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794136, 38.535465, 27.107731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.974613, 38.188229, 27.024937>,  <43.082901, 37.979889, 26.975260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.974613, 38.188229, 27.024937>,  <42.794136, 38.535465, 27.107731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974613, 38.188229, 27.024937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297656, -0.365041, 0.882126,
		-0.841322, -0.336402, -0.423097,
		0.451197, -0.868089, -0.206985,
		43.109974, 37.927803, 26.962841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278904, 38.015373, 27.021755>,  <42.794136, 38.535465, 27.107731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278904, 38.015373, 27.021755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616753, 37.829079, 27.127361>,  <42.819462, 37.717304, 27.190725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616753, 37.829079, 27.127361>,  <42.278904, 38.015373, 27.021755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616753, 37.829079, 27.127361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472190, -0.415671, 0.777338,
		-0.252286, -0.781224, -0.571000,
		0.844623, -0.465732, 0.264018,
		42.870140, 37.689358, 27.206566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067162, 37.395073, 27.273409>,  <42.278904, 38.015373, 27.021755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067162, 37.395073, 27.273409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.445526, 37.380512, 27.402361>,  <42.672543, 37.371777, 27.479733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.445526, 37.380512, 27.402361>,  <42.067162, 37.395073, 27.273409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445526, 37.380512, 27.402361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265049, -0.659749, 0.703193,
		0.187093, -0.750604, -0.633711,
		0.945910, -0.036402, 0.322381,
		42.729298, 37.369591, 27.499075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125793, 36.781334, 27.492174>,  <42.067162, 37.395073, 27.273409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125793, 36.781334, 27.492174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433765, 36.943245, 27.689499>,  <42.618549, 37.040390, 27.807894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433765, 36.943245, 27.689499>,  <42.125793, 36.781334, 27.492174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433765, 36.943245, 27.689499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250541, -0.519238, 0.817081,
		0.586884, -0.752692, -0.298365,
		0.769933, 0.404779, 0.493313,
		42.664745, 37.064678, 27.837492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437912, 36.263790, 27.879116>,  <42.125793, 36.781334, 27.492174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437912, 36.263790, 27.879116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527225, 36.605583, 28.066736>,  <42.580814, 36.810658, 28.179308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527225, 36.605583, 28.066736>,  <42.437912, 36.263790, 27.879116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527225, 36.605583, 28.066736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091775, -0.460632, 0.882834,
		0.970423, -0.240170, -0.024432,
		0.223284, 0.854480, 0.469050,
		42.594212, 36.861927, 28.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898270, 35.985912, 28.441807>,  <42.437912, 36.263790, 27.879116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898270, 35.985912, 28.441807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.785076, 36.353214, 28.552603>,  <42.717159, 36.573597, 28.619081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.785076, 36.353214, 28.552603>,  <42.898270, 35.985912, 28.441807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785076, 36.353214, 28.552603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248312, -0.349090, 0.903591,
		0.926425, 0.186918, 0.326800,
		-0.282980, 0.918258, 0.276992,
		42.700184, 36.628693, 28.635700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193676, 36.091305, 29.127073>,  <42.898270, 35.985912, 28.441807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193676, 36.091305, 29.127073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.891815, 36.351887, 29.095844>,  <42.710697, 36.508236, 29.077106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.891815, 36.351887, 29.095844>,  <43.193676, 36.091305, 29.127073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891815, 36.351887, 29.095844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373249, -0.328391, 0.867666,
		0.539610, 0.683931, 0.490978,
		-0.754656, 0.651459, -0.078073,
		42.665417, 36.547325, 29.072422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136520, 36.479343, 29.812155>,  <43.193676, 36.091305, 29.127073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136520, 36.479343, 29.812155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781124, 36.505371, 29.630449>,  <42.567886, 36.520988, 29.521425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781124, 36.505371, 29.630449>,  <43.136520, 36.479343, 29.812155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781124, 36.505371, 29.630449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436212, -0.427175, 0.791985,
		-0.142515, 0.901824, 0.407925,
		-0.888487, 0.065073, -0.454266,
		42.514580, 36.524895, 29.494169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.936317, 35.469902, 34.492775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621494, 35.600853, 34.283638>,  <42.432602, 35.679424, 34.158157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621494, 35.600853, 34.283638>,  <42.936317, 35.469902, 34.492775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621494, 35.600853, 34.283638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609316, -0.280269, 0.741744,
		0.096296, 0.902370, 0.420065,
		-0.787059, 0.327379, -0.522840,
		42.385376, 35.699066, 34.126785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526604, 36.039207, 34.855068>,  <42.936317, 35.469902, 34.492775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526604, 36.039207, 34.855068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.277290, 35.860168, 34.598579>,  <42.127701, 35.752747, 34.444687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.277290, 35.860168, 34.598579>,  <42.526604, 36.039207, 34.855068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277290, 35.860168, 34.598579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577975, -0.288657, 0.763297,
		-0.526745, 0.846364, -0.078785,
		-0.623285, -0.447598, -0.641226,
		42.090305, 35.725887, 34.406212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856098, 36.282948, 35.022430>,  <42.526604, 36.039207, 34.855068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856098, 36.282948, 35.022430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769695, 35.948738, 34.820343>,  <41.717854, 35.748215, 34.699089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769695, 35.948738, 34.820343>,  <41.856098, 36.282948, 35.022430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769695, 35.948738, 34.820343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701906, -0.226808, 0.675193,
		-0.678726, 0.500463, -0.537465,
		-0.216008, -0.835521, -0.505218,
		41.704891, 35.698082, 34.668777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094032, 36.232079, 34.925365>,  <41.856098, 36.282948, 35.022430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094032, 36.232079, 34.925365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230034, 35.860664, 34.865742>,  <41.311634, 35.637817, 34.829967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230034, 35.860664, 34.865742>,  <41.094032, 36.232079, 34.925365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230034, 35.860664, 34.865742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741302, -0.362160, 0.565076,
		-0.578677, -0.081629, -0.811461,
		0.340005, -0.928535, -0.149062,
		41.332035, 35.582104, 34.821022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539200, 35.800053, 34.685722>,  <41.094032, 36.232079, 34.925365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539200, 35.800053, 34.685722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.819614, 35.543823, 34.811081>,  <40.987862, 35.390087, 34.886295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.819614, 35.543823, 34.811081>,  <40.539200, 35.800053, 34.685722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819614, 35.543823, 34.811081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707094, -0.567349, 0.422058,
		-0.092553, -0.517478, -0.850677,
		0.701036, -0.640571, 0.313396,
		41.029926, 35.351650, 34.905098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209290, 35.108826, 34.759163>,  <40.539200, 35.800053, 34.685722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209290, 35.108826, 34.759163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534061, 35.059200, 34.987331>,  <40.728924, 35.029423, 35.124233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534061, 35.059200, 34.987331>,  <40.209290, 35.108826, 34.759163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534061, 35.059200, 34.987331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570671, -0.374459, 0.730832,
		0.122929, -0.918906, -0.374834,
		0.811926, -0.124066, 0.570425,
		40.777637, 35.021980, 35.158459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101036, 34.454128, 35.166706>,  <40.209290, 35.108826, 34.759163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101036, 34.454128, 35.166706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375366, 34.672680, 35.359001>,  <40.539967, 34.803810, 35.474377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375366, 34.672680, 35.359001>,  <40.101036, 34.454128, 35.166706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375366, 34.672680, 35.359001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481459, -0.154719, 0.862705,
		0.545744, -0.823122, 0.156949,
		0.685829, 0.546381, 0.480736,
		40.581116, 34.836594, 35.503223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250111, 34.077576, 35.627129>,  <40.101036, 34.454128, 35.166706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250111, 34.077576, 35.627129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342289, 34.438206, 35.773582>,  <40.397594, 34.654583, 35.861454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.342289, 34.438206, 35.773582>,  <40.250111, 34.077576, 35.627129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342289, 34.438206, 35.773582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366865, -0.268002, 0.890834,
		0.901279, -0.339612, 0.268996,
		0.230446, 0.901575, 0.366137,
		40.411423, 34.708679, 35.883423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607288, 33.958286, 36.291355>,  <40.250111, 34.077576, 35.627129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607288, 33.958286, 36.291355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.492462, 34.341434, 36.288067>,  <40.423565, 34.571323, 36.286095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.492462, 34.341434, 36.288067>,  <40.607288, 33.958286, 36.291355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492462, 34.341434, 36.288067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314395, -0.086106, 0.945379,
		0.904847, 0.273973, 0.325869,
		-0.287068, 0.957875, -0.008223,
		40.406342, 34.628796, 36.285599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771622, 34.157597, 36.901878>,  <40.607288, 33.958286, 36.291355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771622, 34.157597, 36.901878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491871, 34.423824, 36.797657>,  <40.324020, 34.583561, 36.735123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491871, 34.423824, 36.797657>,  <40.771622, 34.157597, 36.901878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491871, 34.423824, 36.797657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416097, -0.082737, 0.905548,
		0.581146, 0.741738, 0.334805,
		-0.699381, 0.665567, -0.260552,
		40.282055, 34.623493, 36.719490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701900, 34.602318, 37.464100>,  <40.771622, 34.157597, 36.901878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701900, 34.602318, 37.464100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366425, 34.648006, 37.251102>,  <40.165138, 34.675419, 37.123302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366425, 34.648006, 37.251102>,  <40.701900, 34.602318, 37.464100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366425, 34.648006, 37.251102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541109, -0.285413, 0.791038,
		-0.061624, 0.951573, 0.301181,
		-0.838692, 0.114225, -0.532493,
		40.114819, 34.682274, 37.091354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285496, 34.960991, 37.889484>,  <40.701900, 34.602318, 37.464100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285496, 34.960991, 37.889484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032715, 34.800713, 37.624130>,  <39.881046, 34.704544, 37.464916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032715, 34.800713, 37.624130>,  <40.285496, 34.960991, 37.889484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032715, 34.800713, 37.624130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681312, -0.120750, 0.721964,
		-0.369391, 0.908220, -0.196690,
		-0.631952, -0.400695, -0.663386,
		39.843128, 34.680504, 37.425114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689041, 35.380341, 37.691616>,  <40.285496, 34.960991, 37.889484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689041, 35.380341, 37.691616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595898, 34.991352, 37.688271>,  <39.540012, 34.757957, 37.686264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595898, 34.991352, 37.688271>,  <39.689041, 35.380341, 37.691616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595898, 34.991352, 37.688271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274509, 0.057479, 0.959865,
		-0.932964, 0.225807, -0.280337,
		-0.232858, -0.972475, -0.008360,
		39.526039, 34.699608, 37.685764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996609, 35.352821, 38.068691>,  <39.689041, 35.380341, 37.691616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996609, 35.352821, 38.068691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223156, 35.023281, 38.077541>,  <39.359085, 34.825558, 38.082851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223156, 35.023281, 38.077541>,  <38.996609, 35.352821, 38.068691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223156, 35.023281, 38.077541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208530, -0.117276, 0.970959,
		-0.797335, -0.554535, -0.238220,
		0.566368, -0.823855, 0.022129,
		39.393066, 34.776123, 38.084179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482975, 35.499741, 38.582245>,  <38.996609, 35.352821, 38.068691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482975, 35.499741, 38.582245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.169971, 35.748306, 38.597832>,  <37.982170, 35.897446, 38.607185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.169971, 35.748306, 38.597832>,  <38.482975, 35.499741, 38.582245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169971, 35.748306, 38.597832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002020, 0.060049, -0.998193,
		-0.622636, -0.781174, -0.045733,
		-0.782509, 0.621419, 0.038967,
		37.935219, 35.934731, 38.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044300, 35.358871, 38.029160>,  <38.482975, 35.499741, 38.582245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044300, 35.358871, 38.029160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.917091, 35.725662, 38.125504>,  <37.840767, 35.945736, 38.183308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.917091, 35.725662, 38.125504>,  <38.044300, 35.358871, 38.029160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917091, 35.725662, 38.125504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027606, 0.244984, -0.969134,
		-0.947680, -0.314858, -0.052596,
		-0.318025, 0.916977, 0.240858,
		37.821682, 36.000755, 38.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415714, 35.486221, 37.566734>,  <38.044300, 35.358871, 38.029160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415714, 35.486221, 37.566734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578533, 35.838062, 37.665207>,  <37.676224, 36.049168, 37.724289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578533, 35.838062, 37.665207>,  <37.415714, 35.486221, 37.566734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578533, 35.838062, 37.665207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138669, 0.325907, -0.935177,
		-0.902818, 0.346527, 0.254635,
		0.407052, 0.879604, 0.246183,
		37.700649, 36.101944, 37.739063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022404, 35.923904, 37.048939>,  <37.415714, 35.486221, 37.566734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022404, 35.923904, 37.048939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337502, 36.135063, 37.175922>,  <37.526558, 36.261761, 37.252113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337502, 36.135063, 37.175922>,  <37.022404, 35.923904, 37.048939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337502, 36.135063, 37.175922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053554, 0.454718, -0.889024,
		-0.613673, 0.717323, 0.329930,
		0.787742, 0.527901, 0.317464,
		37.573826, 36.293434, 37.271160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851276, 36.558136, 36.781914>,  <37.022404, 35.923904, 37.048939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851276, 36.558136, 36.781914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243050, 36.563385, 36.862442>,  <37.478115, 36.566532, 36.910759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243050, 36.563385, 36.862442>,  <36.851276, 36.558136, 36.781914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243050, 36.563385, 36.862442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173449, 0.454930, -0.873472,
		-0.103049, 0.890430, 0.443300,
		0.979437, 0.013121, 0.201324,
		37.536880, 36.567322, 36.922840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064472, 37.212566, 36.621807>,  <36.851276, 36.558136, 36.781914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064472, 37.212566, 36.621807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.424248, 37.038807, 36.641045>,  <37.640114, 36.934551, 36.652588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.424248, 37.038807, 36.641045>,  <37.064472, 37.212566, 36.621807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424248, 37.038807, 36.641045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355694, 0.663617, -0.658099,
		0.253956, 0.609027, 0.751394,
		0.899438, -0.434394, 0.048097,
		37.694080, 36.908489, 36.655472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588062, 37.650162, 36.785400>,  <37.064472, 37.212566, 36.621807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588062, 37.650162, 36.785400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779732, 37.357136, 36.592014>,  <37.894733, 37.181320, 36.475983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779732, 37.357136, 36.592014>,  <37.588062, 37.650162, 36.785400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779732, 37.357136, 36.592014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514119, 0.680693, -0.521861,
		0.711387, 0.001507, 0.702799,
		0.479176, -0.732567, -0.483461,
		37.923485, 37.137367, 36.446976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140476, 37.944695, 36.697727>,  <37.588062, 37.650162, 36.785400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140476, 37.944695, 36.697727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158485, 37.627563, 36.454617>,  <38.169289, 37.437283, 36.308750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158485, 37.627563, 36.454617>,  <38.140476, 37.944695, 36.697727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158485, 37.627563, 36.454617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631926, 0.493804, -0.597351,
		0.773721, -0.357177, 0.523241,
		0.045019, -0.792832, -0.607775,
		38.171989, 37.389713, 36.272285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886852, 37.941101, 36.402279>,  <38.140476, 37.944695, 36.697727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886852, 37.941101, 36.402279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660145, 37.727459, 36.151360>,  <38.524120, 37.599274, 36.000809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660145, 37.727459, 36.151360>,  <38.886852, 37.941101, 36.402279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660145, 37.727459, 36.151360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608356, 0.242147, -0.755823,
		0.555588, -0.809998, 0.187684,
		-0.566767, -0.534105, -0.627301,
		38.490116, 37.567226, 35.963169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322811, 37.517494, 36.003540>,  <38.886852, 37.941101, 36.402279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322811, 37.517494, 36.003540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980667, 37.559456, 35.800621>,  <38.775379, 37.584633, 35.678871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980667, 37.559456, 35.800621>,  <39.322811, 37.517494, 36.003540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980667, 37.559456, 35.800621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517936, 0.154679, -0.841318,
		-0.009792, -0.982379, -0.186642,
		-0.855363, 0.104907, -0.507295,
		38.724056, 37.590927, 35.648434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567863, 37.306499, 35.337662>,  <39.322811, 37.517494, 36.003540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567863, 37.306499, 35.337662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212276, 37.469296, 35.253670>,  <38.998924, 37.566971, 35.203274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212276, 37.469296, 35.253670>,  <39.567863, 37.306499, 35.337662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212276, 37.469296, 35.253670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317585, 0.217519, -0.922944,
		-0.329952, -0.887156, -0.322621,
		-0.888972, 0.406987, -0.209976,
		38.945583, 37.591393, 35.190678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415478, 36.959232, 34.737450>,  <39.567863, 37.306499, 35.337662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415478, 36.959232, 34.737450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225784, 37.311169, 34.750004>,  <39.111969, 37.522331, 34.757534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225784, 37.311169, 34.750004>,  <39.415478, 36.959232, 34.737450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225784, 37.311169, 34.750004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354546, 0.223487, -0.907938,
		-0.805851, -0.419452, -0.417929,
		-0.474238, 0.879837, 0.031382,
		39.083511, 37.575119, 34.759418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027645, 37.078758, 34.015003>,  <39.415478, 36.959232, 34.737450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027645, 37.078758, 34.015003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079525, 37.433907, 34.191578>,  <39.110653, 37.646996, 34.297523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079525, 37.433907, 34.191578>,  <39.027645, 37.078758, 34.015003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079525, 37.433907, 34.191578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420027, 0.354084, -0.835584,
		-0.898196, 0.293788, -0.327006,
		0.129697, 0.887870, 0.441436,
		39.118435, 37.700268, 34.324009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714489, 37.559597, 33.554058>,  <39.027645, 37.078758, 34.015003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714489, 37.559597, 33.554058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927559, 37.815887, 33.775230>,  <39.055401, 37.969662, 33.907932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927559, 37.815887, 33.775230>,  <38.714489, 37.559597, 33.554058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927559, 37.815887, 33.775230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375744, 0.406369, -0.832875,
		-0.758337, 0.651410, -0.024287,
		0.532674, 0.640726, 0.552928,
		39.087360, 38.008106, 33.941109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028782, 37.726368, 33.411674>,  <38.714489, 37.559597, 33.554058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028782, 37.726368, 33.411674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.765518, 37.601742, 33.137524>,  <37.607559, 37.526966, 32.973034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.765518, 37.601742, 33.137524>,  <38.028782, 37.726368, 33.411674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765518, 37.601742, 33.137524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456883, -0.558272, 0.692524,
		-0.598398, 0.768932, 0.225084,
		-0.658163, -0.311568, -0.685381,
		37.568069, 37.508270, 32.931908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395576, 37.691597, 33.779701>,  <38.028782, 37.726368, 33.411674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395576, 37.691597, 33.779701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357826, 37.462421, 33.454041>,  <37.335175, 37.324917, 33.258644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357826, 37.462421, 33.454041>,  <37.395576, 37.691597, 33.779701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357826, 37.462421, 33.454041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528714, -0.664090, 0.528626,
		-0.843537, 0.480343, -0.240243,
		-0.094379, -0.572935, -0.814149,
		37.329514, 37.290543, 33.209797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767208, 37.560753, 33.687874>,  <37.395576, 37.691597, 33.779701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767208, 37.560753, 33.687874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.934978, 37.259987, 33.484425>,  <37.035641, 37.079525, 33.362354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.934978, 37.259987, 33.484425>,  <36.767208, 37.560753, 33.687874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934978, 37.259987, 33.484425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735300, -0.609979, 0.295398,
		-0.532365, 0.250092, -0.808729,
		0.419431, -0.751917, -0.508624,
		37.060806, 37.034412, 33.331837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185638, 37.249966, 33.302418>,  <36.767208, 37.560753, 33.687874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185638, 37.249966, 33.302418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.457451, 36.956512, 33.303909>,  <36.620537, 36.780441, 33.304802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.457451, 36.956512, 33.303909>,  <36.185638, 37.249966, 33.302418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457451, 36.956512, 33.303909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678485, -0.626501, 0.383607,
		-0.279093, -0.263202, -0.923489,
		0.679532, -0.733636, 0.003726,
		36.661312, 36.736423, 33.305027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842056, 36.723206, 33.038105>,  <36.185638, 37.249966, 33.302418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842056, 36.723206, 33.038105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149441, 36.569714, 33.242935>,  <36.333874, 36.477619, 33.365833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149441, 36.569714, 33.242935>,  <35.842056, 36.723206, 33.038105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149441, 36.569714, 33.242935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629936, -0.594285, 0.500006,
		0.112453, -0.706810, -0.698409,
		0.768463, -0.383725, 0.512074,
		36.379978, 36.454597, 33.396557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667149, 36.081512, 32.990887>,  <35.842056, 36.723206, 33.038105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667149, 36.081512, 32.990887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928871, 36.097435, 33.292961>,  <36.085903, 36.106991, 33.474205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928871, 36.097435, 33.292961>,  <35.667149, 36.081512, 32.990887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928871, 36.097435, 33.292961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512499, -0.710974, 0.481519,
		0.556084, -0.702090, -0.444792,
		0.654305, 0.039809, 0.755182,
		36.125164, 36.109379, 33.519516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933788, 35.428654, 33.149918>,  <35.667149, 36.081512, 32.990887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933788, 35.428654, 33.149918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986107, 35.636612, 33.487579>,  <36.017498, 35.761387, 33.690178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986107, 35.636612, 33.487579>,  <35.933788, 35.428654, 33.149918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986107, 35.636612, 33.487579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554784, -0.667292, 0.496927,
		0.821649, -0.533322, 0.201148,
		0.130798, 0.519893, 0.844159,
		36.025345, 35.792580, 33.740826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818871, 34.919888, 33.568436>,  <35.933788, 35.428654, 33.149918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818871, 34.919888, 33.568436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811607, 35.241951, 33.805546>,  <35.807251, 35.435188, 33.947811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811607, 35.241951, 33.805546>,  <35.818871, 34.919888, 33.568436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811607, 35.241951, 33.805546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542379, -0.505994, 0.670667,
		0.839937, -0.309333, 0.445890,
		-0.018158, 0.805160, 0.592779,
		35.806160, 35.483498, 33.983379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074318, 34.635281, 34.260273>,  <35.818871, 34.919888, 33.568436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074318, 34.635281, 34.260273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.864994, 34.973946, 34.298847>,  <35.739399, 35.177147, 34.321991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.864994, 34.973946, 34.298847>,  <36.074318, 34.635281, 34.260273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864994, 34.973946, 34.298847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583044, -0.438291, 0.684077,
		0.621452, 0.301759, 0.723007,
		-0.523314, 0.846666, 0.096437,
		35.708000, 35.227943, 34.327778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998569, 34.665760, 34.969952>,  <36.074318, 34.635281, 34.260273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998569, 34.665760, 34.969952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.717785, 34.882622, 34.785206>,  <35.549313, 35.012737, 34.674358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.717785, 34.882622, 34.785206>,  <35.998569, 34.665760, 34.969952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717785, 34.882622, 34.785206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695826, -0.383729, 0.607107,
		0.151914, 0.747544, 0.646607,
		-0.701961, 0.542154, -0.461867,
		35.507198, 35.045269, 34.646645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533970, 34.850857, 35.482689>,  <35.998569, 34.665760, 34.969952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533970, 34.850857, 35.482689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.308857, 34.926022, 35.160706>,  <35.173790, 34.971123, 34.967514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.308857, 34.926022, 35.160706>,  <35.533970, 34.850857, 35.482689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308857, 34.926022, 35.160706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789994, -0.408880, 0.456867,
		-0.243281, 0.893031, 0.378562,
		-0.562783, 0.187915, -0.804962,
		35.140022, 34.982395, 34.919216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837284, 35.120613, 35.636364>,  <35.533970, 34.850857, 35.482689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837284, 35.120613, 35.636364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.779663, 34.959900, 35.274632>,  <34.745090, 34.863472, 35.057590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.779663, 34.959900, 35.274632>,  <34.837284, 35.120613, 35.636364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779663, 34.959900, 35.274632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866062, -0.390923, 0.311635,
		-0.478734, 0.828101, -0.291655,
		-0.144051, -0.401782, -0.904334,
		34.736446, 34.839367, 35.003330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.336544, 40.672367, 30.416075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354801, 40.296261, 30.281122>,  <38.365757, 40.070599, 30.200151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354801, 40.296261, 30.281122>,  <38.336544, 40.672367, 30.416075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354801, 40.296261, 30.281122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425945, -0.323811, 0.844818,
		-0.903597, 0.105146, -0.415279,
		0.045642, -0.940261, -0.337381,
		38.368492, 40.014183, 30.179909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726658, 40.319206, 30.543070>,  <38.336544, 40.672367, 30.416075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726658, 40.319206, 30.543070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980381, 40.012650, 30.502480>,  <38.132614, 39.828716, 30.478125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980381, 40.012650, 30.502480>,  <37.726658, 40.319206, 30.543070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980381, 40.012650, 30.502480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367397, -0.414331, 0.832676,
		-0.680201, -0.490890, -0.544383,
		0.634307, -0.766392, -0.101477,
		38.170673, 39.782734, 30.472036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318268, 39.730572, 30.520992>,  <37.726658, 40.319206, 30.543070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318268, 39.730572, 30.520992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669640, 39.563782, 30.614367>,  <37.880463, 39.463707, 30.670391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669640, 39.563782, 30.614367>,  <37.318268, 39.730572, 30.520992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669640, 39.563782, 30.614367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427194, -0.466283, 0.774652,
		-0.214161, -0.780201, -0.587725,
		0.878431, -0.416973, 0.233437,
		37.933170, 39.438690, 30.684397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241871, 38.975101, 30.583199>,  <37.318268, 39.730572, 30.520992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241871, 38.975101, 30.583199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582382, 39.041199, 30.782404>,  <37.786690, 39.080856, 30.901926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582382, 39.041199, 30.782404>,  <37.241871, 38.975101, 30.583199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582382, 39.041199, 30.782404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327148, -0.574907, 0.749971,
		0.410239, -0.801359, -0.435348,
		0.851280, 0.165244, 0.498012,
		37.837765, 39.090771, 30.931808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339592, 38.313389, 30.796593>,  <37.241871, 38.975101, 30.583199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339592, 38.313389, 30.796593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597893, 38.532223, 31.009651>,  <37.752872, 38.663521, 31.137486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597893, 38.532223, 31.009651>,  <37.339592, 38.313389, 30.796593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597893, 38.532223, 31.009651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068086, -0.653554, 0.753811,
		0.760509, -0.523038, -0.384783,
		0.645748, 0.547082, 0.532645,
		37.791618, 38.696346, 31.169445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834183, 37.878689, 31.021921>,  <37.339592, 38.313389, 30.796593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834183, 37.878689, 31.021921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838940, 38.183460, 31.280941>,  <37.841793, 38.366325, 31.436354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838940, 38.183460, 31.280941>,  <37.834183, 37.878689, 31.021921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838940, 38.183460, 31.280941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002367, -0.647572, 0.762000,
		0.999927, -0.010596, -0.005899,
		0.011894, 0.761930, 0.647550,
		37.842506, 38.412041, 31.475206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388496, 37.736942, 31.407684>,  <37.834183, 37.878689, 31.021921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388496, 37.736942, 31.407684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140327, 37.975288, 31.611656>,  <37.991428, 38.118294, 31.734039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140327, 37.975288, 31.611656>,  <38.388496, 37.736942, 31.407684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140327, 37.975288, 31.611656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047633, -0.677626, 0.733862,
		0.782822, 0.431013, 0.448795,
		-0.620419, 0.595861, 0.509931,
		37.954201, 38.154045, 31.764635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624168, 37.533073, 32.077160>,  <38.388496, 37.736942, 31.407684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624168, 37.533073, 32.077160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276234, 37.720108, 32.140083>,  <38.067474, 37.832329, 32.177837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276234, 37.720108, 32.140083>,  <38.624168, 37.533073, 32.077160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276234, 37.720108, 32.140083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276458, -0.726097, 0.629566,
		0.408600, 0.504129, 0.760854,
		-0.869837, 0.467585, 0.157313,
		38.015282, 37.860382, 32.187279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486664, 37.607422, 32.877350>,  <38.624168, 37.533073, 32.077160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486664, 37.607422, 32.877350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126087, 37.613613, 32.704300>,  <37.909740, 37.617329, 32.600471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126087, 37.613613, 32.704300>,  <38.486664, 37.607422, 32.877350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126087, 37.613613, 32.704300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322253, -0.691294, 0.646734,
		-0.289061, 0.722408, 0.628149,
		-0.901442, 0.015478, -0.432624,
		37.855656, 37.618256, 32.574512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738350, 38.282661, 33.065521>,  <38.486664, 37.607422, 32.877350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738350, 38.282661, 33.065521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041809, 38.274212, 33.325985>,  <39.223885, 38.269142, 33.482262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041809, 38.274212, 33.325985>,  <38.738350, 38.282661, 33.065521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041809, 38.274212, 33.325985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575989, 0.488814, -0.655208,
		-0.304453, 0.872132, 0.383007,
		0.758647, -0.021128, 0.651159,
		39.269402, 38.267872, 33.521332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125542, 38.821678, 32.799076>,  <38.738350, 38.282661, 33.065521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125542, 38.821678, 32.799076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390297, 38.661133, 33.052315>,  <39.549149, 38.564804, 33.204258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390297, 38.661133, 33.052315>,  <39.125542, 38.821678, 32.799076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390297, 38.661133, 33.052315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702917, 0.625727, -0.338191,
		-0.260411, 0.668861, 0.696284,
		0.661887, -0.401362, 0.633099,
		39.588863, 38.540726, 33.242245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467117, 39.370075, 33.219593>,  <39.125542, 38.821678, 32.799076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467117, 39.370075, 33.219593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682461, 39.033993, 33.193619>,  <39.811668, 38.832344, 33.178036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682461, 39.033993, 33.193619>,  <39.467117, 39.370075, 33.219593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682461, 39.033993, 33.193619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780037, 0.525995, -0.338926,
		0.318923, 0.131813, 0.938570,
		0.538358, -0.840211, -0.064933,
		39.843967, 38.781929, 33.174137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148113, 39.638885, 33.392052>,  <39.467117, 39.370075, 33.219593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148113, 39.638885, 33.392052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209480, 39.277706, 33.231476>,  <40.246300, 39.061001, 33.135128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209480, 39.277706, 33.231476>,  <40.148113, 39.638885, 33.392052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209480, 39.277706, 33.231476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711569, 0.382835, -0.589158,
		0.685663, -0.195268, 0.701240,
		0.153415, -0.902944, -0.401442,
		40.255505, 39.006824, 33.111042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898315, 39.466095, 33.368397>,  <40.148113, 39.638885, 33.392052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898315, 39.466095, 33.368397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676037, 39.285191, 33.089352>,  <40.542667, 39.176647, 32.921925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676037, 39.285191, 33.089352>,  <40.898315, 39.466095, 33.368397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676037, 39.285191, 33.089352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560382, 0.416086, -0.716132,
		0.614142, -0.788883, 0.022218,
		-0.555700, -0.452257, -0.697612,
		40.509327, 39.149513, 32.880070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349289, 39.236420, 32.835171>,  <40.898315, 39.466095, 33.368397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349289, 39.236420, 32.835171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015087, 39.159950, 32.629112>,  <40.814564, 39.114067, 32.505478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015087, 39.159950, 32.629112>,  <41.349289, 39.236420, 32.835171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015087, 39.159950, 32.629112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356156, 0.525500, -0.772659,
		0.418424, -0.829036, -0.370972,
		-0.835508, -0.191176, -0.515148,
		40.764435, 39.102596, 32.474567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565216, 38.913528, 32.217575>,  <41.349289, 39.236420, 32.835171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565216, 38.913528, 32.217575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206409, 39.080585, 32.159695>,  <40.991127, 39.180820, 32.124966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206409, 39.080585, 32.159695>,  <41.565216, 38.913528, 32.217575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206409, 39.080585, 32.159695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383425, 0.572416, -0.724793,
		-0.219875, -0.705632, -0.673601,
		-0.897017, 0.417639, -0.144697,
		40.937305, 39.205875, 32.116287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418976, 38.767220, 31.606695>,  <41.565216, 38.913528, 32.217575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418976, 38.767220, 31.606695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165043, 39.068981, 31.673471>,  <41.012684, 39.250038, 31.713537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165043, 39.068981, 31.673471>,  <41.418976, 38.767220, 31.606695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165043, 39.068981, 31.673471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210186, 0.376532, -0.902245,
		-0.743513, -0.537683, -0.397599,
		-0.634830, 0.754401, 0.166943,
		40.974594, 39.295303, 31.723555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184853, 38.878490, 30.881468>,  <41.418976, 38.767220, 31.606695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184853, 38.878490, 30.881468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097504, 39.194221, 31.110996>,  <41.045094, 39.383659, 31.248713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097504, 39.194221, 31.110996>,  <41.184853, 38.878490, 30.881468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097504, 39.194221, 31.110996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071353, 0.599352, -0.797300,
		-0.973254, -0.133162, -0.187201,
		-0.218370, 0.789332, 0.573820,
		41.031994, 39.431023, 31.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726704, 39.285969, 30.460135>,  <41.184853, 38.878490, 30.881468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726704, 39.285969, 30.460135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910484, 39.519535, 30.727850>,  <41.020752, 39.659676, 30.888479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910484, 39.519535, 30.727850>,  <40.726704, 39.285969, 30.460135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910484, 39.519535, 30.727850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173582, 0.679974, -0.712393,
		-0.871076, 0.443488, 0.211059,
		0.459452, 0.583912, 0.669291,
		41.048321, 39.694710, 30.928637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665993, 39.994949, 30.228912>,  <40.726704, 39.285969, 30.460135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665993, 39.994949, 30.228912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955410, 40.041847, 30.501013>,  <41.129059, 40.069984, 30.664272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955410, 40.041847, 30.501013>,  <40.665993, 39.994949, 30.228912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955410, 40.041847, 30.501013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419700, 0.707670, -0.568380,
		-0.548033, 0.696748, 0.462820,
		0.723541, 0.117245, 0.680251,
		41.172474, 40.077023, 30.705088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801392, 40.707718, 30.301878>,  <40.665993, 39.994949, 30.228912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801392, 40.707718, 30.301878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140018, 40.564075, 30.459042>,  <41.343193, 40.477890, 30.553339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140018, 40.564075, 30.459042>,  <40.801392, 40.707718, 30.301878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140018, 40.564075, 30.459042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527245, 0.667085, -0.526318,
		-0.073101, 0.652720, 0.754064,
		0.846563, -0.359102, 0.392908,
		41.393986, 40.456345, 30.576914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154274, 41.291756, 30.522228>,  <40.801392, 40.707718, 30.301878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154274, 41.291756, 30.522228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431480, 41.009136, 30.464941>,  <41.597805, 40.839565, 30.430569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431480, 41.009136, 30.464941>,  <41.154274, 41.291756, 30.522228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431480, 41.009136, 30.464941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595188, 0.672842, -0.439357,
		0.406792, 0.219240, 0.886822,
		0.693016, -0.706553, -0.143218,
		41.639385, 40.797169, 30.421976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724072, 41.593658, 30.795887>,  <41.154274, 41.291756, 30.522228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724072, 41.593658, 30.795887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864017, 41.307732, 30.553686>,  <41.947987, 41.136177, 30.408365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864017, 41.307732, 30.553686>,  <41.724072, 41.593658, 30.795887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864017, 41.307732, 30.553686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700683, 0.628692, -0.337327,
		0.621800, -0.306245, 0.720818,
		0.349868, -0.714815, -0.605501,
		41.968979, 41.093288, 30.372036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.730907, 34.825733, 26.805567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.126385, 34.780113, 26.766609>,  <42.363670, 34.752739, 26.743235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.126385, 34.780113, 26.766609>,  <41.730907, 34.825733, 26.805567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126385, 34.780113, 26.766609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147590, 0.624428, 0.767012,
		-0.026665, -0.772710, 0.634199,
		0.988689, -0.114054, -0.097394,
		42.422993, 34.745895, 26.737391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218937, 35.086769, 27.314056>,  <41.730907, 34.825733, 26.805567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218937, 35.086769, 27.314056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.986614, 35.364922, 27.144775>,  <40.847221, 35.531815, 27.043207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.986614, 35.364922, 27.144775>,  <41.218937, 35.086769, 27.314056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986614, 35.364922, 27.144775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733079, -0.220780, 0.643312,
		0.353914, 0.683884, 0.638003,
		-0.580809, 0.695384, -0.423204,
		40.812370, 35.573536, 27.017815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000164, 35.646912, 27.801361>,  <41.218937, 35.086769, 27.314056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000164, 35.646912, 27.801361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.734428, 35.605106, 27.505325>,  <40.574989, 35.580025, 27.327703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.734428, 35.605106, 27.505325>,  <41.000164, 35.646912, 27.801361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734428, 35.605106, 27.505325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698068, -0.267128, 0.664337,
		-0.267128, 0.957977, 0.104509,
		-0.664337, -0.104509, -0.740091,
		40.535126, 35.573753, 27.283298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436806, 35.787067, 28.111582>,  <41.000164, 35.646912, 27.801361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436806, 35.787067, 28.111582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.295280, 35.648167, 27.764196>,  <40.210365, 35.564827, 27.555765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.295280, 35.648167, 27.764196>,  <40.436806, 35.787067, 28.111582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295280, 35.648167, 27.764196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877857, -0.197135, 0.436468,
		-0.322771, 0.916816, -0.235092,
		-0.353816, -0.347256, -0.868463,
		40.189137, 35.543991, 27.503658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876476, 36.178120, 27.940319>,  <40.436806, 35.787067, 28.111582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876476, 36.178120, 27.940319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830090, 35.814907, 27.779310>,  <39.802258, 35.596977, 27.682705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830090, 35.814907, 27.779310>,  <39.876476, 36.178120, 27.940319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830090, 35.814907, 27.779310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898398, -0.076941, 0.432390,
		-0.423596, 0.411766, -0.806855,
		-0.115963, -0.908036, -0.402521,
		39.795300, 35.542496, 27.658554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222214, 36.124035, 27.782440>,  <39.876476, 36.178120, 27.940319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222214, 36.124035, 27.782440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.320408, 35.736858, 27.803711>,  <39.379322, 35.504551, 27.816473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.320408, 35.736858, 27.803711>,  <39.222214, 36.124035, 27.782440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320408, 35.736858, 27.803711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847048, -0.187498, 0.497347,
		-0.471433, -0.167132, -0.865920,
		0.245481, -0.967942, 0.053176,
		39.394051, 35.446476, 27.819664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638885, 35.806049, 28.030357>,  <39.222214, 36.124035, 27.782440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638885, 35.806049, 28.030357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874622, 35.483040, 28.039972>,  <39.016064, 35.289234, 28.045742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874622, 35.483040, 28.039972>,  <38.638885, 35.806049, 28.030357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874622, 35.483040, 28.039972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564945, -0.390668, 0.726785,
		-0.577507, -0.441905, -0.686445,
		0.589341, -0.807526, 0.024038,
		39.051426, 35.240784, 28.047184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234425, 35.179451, 27.860609>,  <38.638885, 35.806049, 28.030357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234425, 35.179451, 27.860609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543999, 35.074814, 28.091291>,  <38.729744, 35.012032, 28.229700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543999, 35.074814, 28.091291>,  <38.234425, 35.179451, 27.860609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543999, 35.074814, 28.091291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633256, -0.323002, 0.703318,
		0.002295, -0.909527, -0.415638,
		0.773939, -0.261591, 0.576705,
		38.776180, 34.996338, 28.264303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978760, 34.555481, 28.087080>,  <38.234425, 35.179451, 27.860609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978760, 34.555481, 28.087080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.277302, 34.630608, 28.342480>,  <38.456425, 34.675682, 28.495720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.277302, 34.630608, 28.342480>,  <37.978760, 34.555481, 28.087080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277302, 34.630608, 28.342480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543264, -0.382280, 0.747480,
		0.384475, -0.904758, -0.183282,
		0.746353, 0.187817, 0.638500,
		38.501209, 34.686951, 28.534029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072510, 33.914322, 28.435282>,  <37.978760, 34.555481, 28.087080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072510, 33.914322, 28.435282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222927, 34.216244, 28.650265>,  <38.313175, 34.397396, 28.779255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222927, 34.216244, 28.650265>,  <38.072510, 33.914322, 28.435282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222927, 34.216244, 28.650265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407604, -0.386150, 0.827495,
		0.832137, -0.530242, 0.162453,
		0.376041, 0.754806, 0.537458,
		38.335739, 34.442684, 28.811502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374084, 33.611877, 28.976307>,  <38.072510, 33.914322, 28.435282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374084, 33.611877, 28.976307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376297, 33.990814, 29.104382>,  <38.377625, 34.218174, 29.181227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376297, 33.990814, 29.104382>,  <38.374084, 33.611877, 28.976307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376297, 33.990814, 29.104382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142175, -0.316192, 0.937981,
		0.989826, -0.050714, 0.132938,
		0.005535, 0.947339, 0.320185,
		38.377956, 34.275017, 29.200438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796032, 33.654274, 29.458683>,  <38.374084, 33.611877, 28.976307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796032, 33.654274, 29.458683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569050, 33.970959, 29.549175>,  <38.432861, 34.160969, 29.603472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569050, 33.970959, 29.549175>,  <38.796032, 33.654274, 29.458683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569050, 33.970959, 29.549175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169750, -0.381334, 0.908719,
		0.805716, 0.477256, 0.350784,
		-0.567457, 0.791714, 0.226233,
		38.398811, 34.208473, 29.617044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094856, 33.973194, 30.034540>,  <38.796032, 33.654274, 29.458683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094856, 33.973194, 30.034540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.716446, 34.102753, 30.039202>,  <38.489399, 34.180489, 30.042000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.716446, 34.102753, 30.039202>,  <39.094856, 33.973194, 30.034540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716446, 34.102753, 30.039202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121490, -0.387726, 0.913734,
		0.300473, 0.862995, 0.406146,
		-0.946021, 0.323895, 0.011656,
		38.432640, 34.199921, 30.042698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898579, 34.112881, 30.727694>,  <39.094856, 33.973194, 30.034540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898579, 34.112881, 30.727694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530247, 34.123016, 30.572039>,  <38.309246, 34.129097, 30.478645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530247, 34.123016, 30.572039>,  <38.898579, 34.112881, 30.727694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530247, 34.123016, 30.572039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346994, -0.508585, 0.787995,
		-0.177945, 0.860639, 0.477112,
		-0.920831, 0.025336, -0.389137,
		38.253998, 34.130615, 30.455297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123608, 34.553310, 31.336279>,  <38.898579, 34.112881, 30.727694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123608, 34.553310, 31.336279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464016, 34.385143, 31.462147>,  <39.668262, 34.284245, 31.537668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464016, 34.385143, 31.462147>,  <39.123608, 34.553310, 31.336279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464016, 34.385143, 31.462147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509511, 0.515970, -0.688603,
		0.127139, 0.746342, 0.653306,
		0.851020, -0.420415, 0.314669,
		39.719322, 34.259018, 31.556547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503231, 35.095890, 31.372353>,  <39.123608, 34.553310, 31.336279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503231, 35.095890, 31.372353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789433, 34.817806, 31.399866>,  <39.961155, 34.650955, 31.416374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789433, 34.817806, 31.399866>,  <39.503231, 35.095890, 31.372353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789433, 34.817806, 31.399866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676700, 0.665244, -0.315478,
		0.173565, 0.272274, 0.946437,
		0.715508, -0.695210, 0.068785,
		40.004086, 34.609241, 31.420502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146416, 35.383827, 31.661976>,  <39.503231, 35.095890, 31.372353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146416, 35.383827, 31.661976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260708, 35.075256, 31.434551>,  <40.329285, 34.890114, 31.298096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260708, 35.075256, 31.434551>,  <40.146416, 35.383827, 31.661976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260708, 35.075256, 31.434551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744649, 0.552175, -0.374967,
		0.603204, -0.316239, 0.732214,
		0.285731, -0.771424, -0.568562,
		40.346428, 34.843830, 31.263983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834641, 35.452736, 31.677420>,  <40.146416, 35.383827, 31.661976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834641, 35.452736, 31.677420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.752136, 35.230965, 31.354914>,  <40.702633, 35.097900, 31.161411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.752136, 35.230965, 31.354914>,  <40.834641, 35.452736, 31.677420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752136, 35.230965, 31.354914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642450, 0.544767, -0.538968,
		0.738047, -0.629154, 0.243829,
		-0.206263, -0.554431, -0.806264,
		40.690258, 35.064636, 31.113035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450363, 35.138287, 31.493004>,  <40.834641, 35.452736, 31.677420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450363, 35.138287, 31.493004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231647, 35.101143, 31.160160>,  <41.100418, 35.078857, 30.960455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231647, 35.101143, 31.160160>,  <41.450363, 35.138287, 31.493004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231647, 35.101143, 31.160160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735234, 0.422220, -0.530246,
		0.400565, -0.901725, -0.162598,
		-0.546789, -0.092850, -0.832107,
		41.067612, 35.073288, 30.910528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944786, 35.093849, 31.024614>,  <41.450363, 35.138287, 31.493004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944786, 35.093849, 31.024614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627529, 35.179703, 30.796631>,  <41.437176, 35.231213, 30.659840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627529, 35.179703, 30.796631>,  <41.944786, 35.093849, 31.024614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627529, 35.179703, 30.796631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568258, 0.597467, -0.565788,
		0.219097, -0.772637, -0.595843,
		-0.793145, 0.214630, -0.569960,
		41.389587, 35.244091, 30.625643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255947, 35.077171, 30.350489>,  <41.944786, 35.093849, 31.024614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255947, 35.077171, 30.350489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.909454, 35.272640, 30.308849>,  <41.701557, 35.389923, 30.283865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.909454, 35.272640, 30.308849>,  <42.255947, 35.077171, 30.350489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909454, 35.272640, 30.308849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410674, 0.577693, -0.705420,
		-0.284585, -0.653809, -0.701103,
		-0.866232, 0.488677, -0.104099,
		41.649586, 35.419243, 30.277620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107498, 35.030983, 29.608597>,  <42.255947, 35.077171, 30.350489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107498, 35.030983, 29.608597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.913738, 35.331062, 29.788626>,  <41.797482, 35.511108, 29.896643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.913738, 35.331062, 29.788626>,  <42.107498, 35.030983, 29.608597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913738, 35.331062, 29.788626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307845, 0.627720, -0.714981,
		-0.818897, -0.207781, -0.535010,
		-0.484396, 0.750196, 0.450074,
		41.768421, 35.556122, 29.923647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909046, 35.427994, 29.022718>,  <42.107498, 35.030983, 29.608597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909046, 35.427994, 29.022718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.889610, 35.675793, 29.336117>,  <41.877949, 35.824471, 29.524157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.889610, 35.675793, 29.336117>,  <41.909046, 35.427994, 29.022718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889610, 35.675793, 29.336117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471155, 0.705883, -0.528907,
		-0.880712, 0.343450, -0.326173,
		-0.048587, 0.619493, 0.783497,
		41.875034, 35.861641, 29.571167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532028, 35.989525, 28.830450>,  <41.909046, 35.427994, 29.022718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532028, 35.989525, 28.830450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.734451, 36.132984, 29.144209>,  <41.855904, 36.219059, 29.332464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.734451, 36.132984, 29.144209>,  <41.532028, 35.989525, 28.830450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734451, 36.132984, 29.144209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290315, 0.785547, -0.546472,
		-0.812173, 0.504268, 0.293409,
		0.506056, 0.358649, 0.784397,
		41.886269, 36.240578, 29.379528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379475, 36.739967, 28.900297>,  <41.532028, 35.989525, 28.830450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379475, 36.739967, 28.900297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.737263, 36.654510, 29.057415>,  <41.951935, 36.603237, 29.151686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.737263, 36.654510, 29.057415>,  <41.379475, 36.739967, 28.900297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737263, 36.654510, 29.057415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417125, 0.715103, -0.560924,
		-0.161051, 0.665571, 0.728751,
		0.894466, -0.213642, 0.392794,
		42.005604, 36.590416, 29.175253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706245, 37.419888, 28.845444>,  <41.379475, 36.739967, 28.900297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706245, 37.419888, 28.845444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.006847, 37.167912, 28.923841>,  <42.187210, 37.016724, 28.970881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.006847, 37.167912, 28.923841>,  <41.706245, 37.419888, 28.845444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006847, 37.167912, 28.923841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588740, 0.506302, -0.630114,
		0.297702, 0.588924, 0.751360,
		0.751504, -0.629942, 0.195996,
		42.232300, 36.978928, 28.982641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289948, 37.811073, 28.952198>,  <41.706245, 37.419888, 28.845444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289948, 37.811073, 28.952198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.456661, 37.456554, 28.871429>,  <42.556690, 37.243843, 28.822968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.456661, 37.456554, 28.871429>,  <42.289948, 37.811073, 28.952198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456661, 37.456554, 28.871429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558107, 0.424840, -0.712760,
		0.717500, 0.184373, 0.671714,
		0.416785, -0.886294, -0.201923,
		42.581696, 37.190666, 28.810852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072586, 37.769005, 29.011608>,  <42.289948, 37.811073, 28.952198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072586, 37.769005, 29.011608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.930168, 37.508823, 28.743238>,  <42.844719, 37.352715, 28.582216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.930168, 37.508823, 28.743238>,  <43.072586, 37.769005, 29.011608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930168, 37.508823, 28.743238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595000, 0.395824, -0.699498,
		0.720561, -0.648253, 0.246090,
		-0.356043, -0.650455, -0.670926,
		42.823357, 37.313686, 28.541960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750778, 37.541122, 29.204947>,  <43.072586, 37.769005, 29.011608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750778, 37.541122, 29.204947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.052280, 37.707821, 29.408190>,  <44.233181, 37.807838, 29.530136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.052280, 37.707821, 29.408190>,  <43.750778, 37.541122, 29.204947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052280, 37.707821, 29.408190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262922, -0.517367, 0.814373,
		0.602262, -0.747433, -0.280399,
		0.753759, 0.416743, 0.508107,
		44.278408, 37.832844, 29.560621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198147, 37.078838, 29.447012>,  <43.750778, 37.541122, 29.204947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198147, 37.078838, 29.447012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.312565, 37.355347, 29.712439>,  <44.381214, 37.521252, 29.871695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.312565, 37.355347, 29.712439>,  <44.198147, 37.078838, 29.447012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312565, 37.355347, 29.712439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195089, -0.635983, 0.746636,
		0.938146, -0.343026, -0.047059,
		0.286044, 0.691273, 0.663566,
		44.398376, 37.562729, 29.911509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541378, 36.726807, 29.977703>,  <44.198147, 37.078838, 29.447012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541378, 36.726807, 29.977703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.404850, 37.071606, 30.127611>,  <44.322933, 37.278484, 30.217556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.404850, 37.071606, 30.127611>,  <44.541378, 36.726807, 29.977703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404850, 37.071606, 30.127611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262096, -0.470183, 0.842754,
		0.902665, 0.189426, 0.386411,
		-0.341324, 0.862001, 0.374770,
		44.302452, 37.330208, 30.240042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640373, 36.542740, 30.589851>,  <44.541378, 36.726807, 29.977703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640373, 36.542740, 30.589851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.432205, 36.880238, 30.642395>,  <44.307304, 37.082737, 30.673922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.432205, 36.880238, 30.642395>,  <44.640373, 36.542740, 30.589851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432205, 36.880238, 30.642395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237190, -0.290616, 0.926975,
		0.820305, 0.451262, 0.351371,
		-0.520423, 0.843745, 0.131359,
		44.276077, 37.133362, 30.681803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918118, 36.924789, 31.240309>,  <44.640373, 36.542740, 30.589851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918118, 36.924789, 31.240309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.545471, 37.046078, 31.160156>,  <44.321884, 37.118851, 31.112064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.545471, 37.046078, 31.160156>,  <44.918118, 36.924789, 31.240309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545471, 37.046078, 31.160156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288645, -0.282227, 0.914895,
		0.220865, 0.910167, 0.350450,
		-0.931613, 0.303224, -0.200381,
		44.265987, 37.137047, 31.100042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722195, 37.333214, 31.814465>,  <44.918118, 36.924789, 31.240309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722195, 37.333214, 31.814465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.379028, 37.245903, 31.628416>,  <44.173130, 37.193516, 31.516787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.379028, 37.245903, 31.628416>,  <44.722195, 37.333214, 31.814465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379028, 37.245903, 31.628416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444735, -0.137824, 0.884995,
		-0.257278, 0.966106, 0.021166,
		-0.857915, -0.218276, -0.465120,
		44.121655, 37.180420, 31.488880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117779, 37.813732, 32.151749>,  <44.722195, 37.333214, 31.814465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117779, 37.813732, 32.151749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.969570, 37.486374, 31.976051>,  <43.880646, 37.289959, 31.870632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.969570, 37.486374, 31.976051>,  <44.117779, 37.813732, 32.151749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969570, 37.486374, 31.976051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612329, -0.140358, 0.778045,
		-0.698402, 0.557245, -0.449124,
		-0.370524, -0.818399, -0.439243,
		43.858414, 37.240852, 31.844278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353321, 37.845520, 32.224754>,  <44.117779, 37.813732, 32.151749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353321, 37.845520, 32.224754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.425079, 37.463291, 32.131195>,  <43.468132, 37.233955, 32.075062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.425079, 37.463291, 32.131195>,  <43.353321, 37.845520, 32.224754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425079, 37.463291, 32.131195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714016, -0.290020, 0.637237,
		-0.676757, 0.052689, -0.734318,
		0.179392, -0.955569, -0.233894,
		43.478897, 37.176620, 32.061028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652382, 37.407379, 31.947178>,  <43.353321, 37.845520, 32.224754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652382, 37.407379, 31.947178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.928848, 37.161194, 32.098698>,  <43.094730, 37.013481, 32.189610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.928848, 37.161194, 32.098698>,  <42.652382, 37.407379, 31.947178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928848, 37.161194, 32.098698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694224, -0.419770, 0.584676,
		-0.200839, -0.667081, -0.717403,
		0.691170, -0.615465, 0.378797,
		43.136200, 36.976555, 32.212337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337269, 36.748569, 31.892584>,  <42.652382, 37.407379, 31.947178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337269, 36.748569, 31.892584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.645081, 36.714241, 32.145710>,  <42.829769, 36.693645, 32.297585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.645081, 36.714241, 32.145710>,  <42.337269, 36.748569, 31.892584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645081, 36.714241, 32.145710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551848, -0.588042, 0.591329,
		0.321375, -0.804265, -0.499876,
		0.769533, -0.085817, 0.632814,
		42.875942, 36.688496, 32.335556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517532, 36.011082, 32.129349>,  <42.337269, 36.748569, 31.892584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517532, 36.011082, 32.129349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.659599, 36.229710, 32.432697>,  <42.744839, 36.360886, 32.614704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.659599, 36.229710, 32.432697>,  <42.517532, 36.011082, 32.129349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659599, 36.229710, 32.432697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386362, -0.652897, 0.651499,
		0.851223, -0.524396, -0.020716,
		0.355168, 0.546566, 0.758367,
		42.766151, 36.393681, 32.660206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339916, 35.662529, 32.648247>,  <42.517532, 36.011082, 32.129349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339916, 35.662529, 32.648247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.517124, 35.953167, 32.858311>,  <42.623447, 36.127548, 32.984348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.517124, 35.953167, 32.858311>,  <42.339916, 35.662529, 32.648247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517124, 35.953167, 32.858311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291157, -0.437422, 0.850817,
		0.847917, -0.529830, 0.017768,
		0.443016, 0.726596, 0.525162,
		42.650028, 36.171146, 33.015858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845078, 35.283493, 33.099442>,  <42.339916, 35.662529, 32.648247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845078, 35.283493, 33.099442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.723480, 35.630287, 33.257393>,  <42.650520, 35.838364, 33.352165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.723480, 35.630287, 33.257393>,  <42.845078, 35.283493, 33.099442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723480, 35.630287, 33.257393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477512, -0.497335, 0.724321,
		0.824360, 0.031630, 0.565181,
		-0.303995, 0.866982, 0.394879,
		42.632282, 35.890381, 33.375858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024761, 35.253674, 33.805901>,  <42.845078, 35.283493, 33.099442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024761, 35.253674, 33.805901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.727863, 35.517891, 33.760723>,  <42.549725, 35.676422, 33.733616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.727863, 35.517891, 33.760723>,  <43.024761, 35.253674, 33.805901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727863, 35.517891, 33.760723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457124, -0.375834, 0.806094,
		0.490013, 0.649946, 0.580911,
		-0.742243, 0.660544, -0.112942,
		42.505192, 35.716053, 33.726841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.472267, 41.610641, 30.881666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.428391, 41.404823, 30.541500>,  <42.402065, 41.281334, 30.337400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.428391, 41.404823, 30.541500>,  <42.472267, 41.610641, 30.881666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428391, 41.404823, 30.541500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693282, 0.573496, -0.436420,
		0.712270, -0.637451, 0.293817,
		-0.109693, -0.514547, -0.850417,
		42.395481, 41.250458, 30.286375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131836, 41.651524, 30.548805>,  <42.472267, 41.610641, 30.881666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131836, 41.651524, 30.548805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.909050, 41.527256, 30.240709>,  <42.775379, 41.452694, 30.055851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.909050, 41.527256, 30.240709>,  <43.131836, 41.651524, 30.548805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909050, 41.527256, 30.240709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653626, 0.408210, -0.637290,
		0.512409, -0.858398, -0.024294,
		-0.556965, -0.310674, -0.770241,
		42.741959, 41.434055, 30.009638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543652, 41.275723, 30.096334>,  <43.131836, 41.651524, 30.548805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543652, 41.275723, 30.096334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.238800, 41.424831, 29.884602>,  <43.055889, 41.514297, 29.757561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.238800, 41.424831, 29.884602>,  <43.543652, 41.275723, 30.096334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238800, 41.424831, 29.884602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641373, 0.323222, -0.695823,
		-0.088293, -0.869808, -0.485426,
		-0.762132, 0.372775, -0.529333,
		43.010159, 41.536663, 29.725801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552448, 40.989479, 29.373047>,  <43.543652, 41.275723, 30.096334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552448, 40.989479, 29.373047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356117, 41.337189, 29.349518>,  <43.238319, 41.545815, 29.335400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356117, 41.337189, 29.349518>,  <43.552448, 40.989479, 29.373047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356117, 41.337189, 29.349518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721537, 0.367710, -0.586663,
		-0.488339, -0.330392, -0.807692,
		-0.490825, 0.869270, -0.058823,
		43.208870, 41.597969, 29.331871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586693, 41.117306, 28.710032>,  <43.552448, 40.989479, 29.373047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586693, 41.117306, 28.710032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.459698, 41.477840, 28.827879>,  <43.383499, 41.694160, 28.898588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.459698, 41.477840, 28.827879>,  <43.586693, 41.117306, 28.710032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459698, 41.477840, 28.827879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494489, 0.422473, -0.759604,
		-0.809124, -0.095480, -0.579829,
		-0.317489, 0.901332, 0.294619,
		43.364452, 41.748241, 28.916265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385418, 41.399071, 28.089294>,  <43.586693, 41.117306, 28.710032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385418, 41.399071, 28.089294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449261, 41.690857, 28.355347>,  <43.487568, 41.865929, 28.514978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449261, 41.690857, 28.355347>,  <43.385418, 41.399071, 28.089294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449261, 41.690857, 28.355347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440777, 0.550216, -0.709210,
		-0.883312, 0.406372, -0.233712,
		0.159611, 0.729468, 0.665132,
		43.497143, 41.909698, 28.554886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126198, 42.051632, 27.824274>,  <43.385418, 41.399071, 28.089294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126198, 42.051632, 27.824274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.428703, 42.123714, 28.075857>,  <43.610207, 42.166965, 28.226807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.428703, 42.123714, 28.075857>,  <43.126198, 42.051632, 27.824274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428703, 42.123714, 28.075857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549926, 0.345732, -0.760296,
		-0.354465, 0.920865, 0.162362,
		0.756264, 0.180211, 0.628958,
		43.655582, 42.177776, 28.264545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398434, 42.625492, 27.476427>,  <43.126198, 42.051632, 27.824274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398434, 42.625492, 27.476427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.669350, 42.473854, 27.728638>,  <43.831902, 42.382870, 27.879963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.669350, 42.473854, 27.728638>,  <43.398434, 42.625492, 27.476427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669350, 42.473854, 27.728638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705356, 0.090945, -0.702995,
		0.209159, 0.920878, 0.328994,
		0.677293, -0.379095, 0.630525,
		43.872536, 42.360126, 27.917795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838974, 43.162098, 27.491571>,  <43.398434, 42.625492, 27.476427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838974, 43.162098, 27.491571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.058617, 42.855225, 27.624180>,  <44.190403, 42.671101, 27.703745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.058617, 42.855225, 27.624180>,  <43.838974, 43.162098, 27.491571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058617, 42.855225, 27.624180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681789, 0.181777, -0.708605,
		0.483369, 0.615128, 0.622874,
		0.549107, -0.767186, 0.331522,
		44.223351, 42.625069, 27.723637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479462, 43.407757, 27.563053>,  <43.838974, 43.162098, 27.491571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479462, 43.407757, 27.563053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.566128, 43.017570, 27.547430>,  <44.618130, 42.783459, 27.538057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.566128, 43.017570, 27.547430>,  <44.479462, 43.407757, 27.563053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566128, 43.017570, 27.547430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656787, 0.175249, -0.733430,
		0.722278, 0.133260, 0.678643,
		0.216668, -0.975464, -0.039056,
		44.631126, 42.724930, 27.535713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177769, 43.298000, 27.454103>,  <44.479462, 43.407757, 27.563053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177769, 43.298000, 27.454103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.049477, 42.935478, 27.344021>,  <44.972504, 42.717964, 27.277971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.049477, 42.935478, 27.344021>,  <45.177769, 43.298000, 27.454103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049477, 42.935478, 27.344021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459998, 0.104948, -0.881696,
		0.827971, -0.409379, 0.383240,
		-0.320728, -0.906308, -0.275207,
		44.953259, 42.663586, 27.261459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805790, 42.798035, 27.259392>,  <45.177769, 43.298000, 27.454103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805790, 42.798035, 27.259392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.460426, 42.699600, 27.083227>,  <45.253208, 42.640537, 26.977528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.460426, 42.699600, 27.083227>,  <45.805790, 42.798035, 27.259392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460426, 42.699600, 27.083227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481716, -0.142739, -0.864624,
		0.149910, -0.958679, 0.241787,
		-0.863410, -0.246088, -0.440414,
		45.201405, 42.625774, 26.951103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766140, 42.065037, 26.914108>,  <45.805790, 42.798035, 27.259392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766140, 42.065037, 26.914108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.534081, 42.329758, 26.724182>,  <45.394844, 42.488590, 26.610228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.534081, 42.329758, 26.724182>,  <45.766140, 42.065037, 26.914108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534081, 42.329758, 26.724182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437238, -0.238790, -0.867065,
		-0.687206, -0.710632, -0.150831,
		-0.580147, 0.661801, -0.474813,
		45.360035, 42.528297, 26.581738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504814, 41.748989, 26.190590>,  <45.766140, 42.065037, 26.914108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504814, 41.748989, 26.190590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.483723, 42.148369, 26.183361>,  <45.471069, 42.387997, 26.179024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.483723, 42.148369, 26.183361>,  <45.504814, 41.748989, 26.190590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483723, 42.148369, 26.183361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417345, 0.005593, -0.908731,
		-0.907217, -0.055458, -0.416991,
		-0.052728, 0.998445, -0.018071,
		45.467903, 42.447903, 26.177940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181877, 41.706642, 25.766806>,  <45.504814, 41.748989, 26.190590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181877, 41.706642, 25.766806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.323624, 41.376846, 25.590332>,  <46.408672, 41.178970, 25.484447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.323624, 41.376846, 25.590332>,  <46.181877, 41.706642, 25.766806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323624, 41.376846, 25.590332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687101, -0.549601, 0.475217,
		-0.634287, 0.134740, -0.761265,
		0.354361, -0.824490, -0.441185,
		46.429932, 41.129498, 25.457977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618519, 41.251072, 25.449633>,  <46.181877, 41.706642, 25.766806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618519, 41.251072, 25.449633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.928398, 41.018200, 25.548347>,  <46.114326, 40.878475, 25.607576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.928398, 41.018200, 25.548347>,  <45.618519, 41.251072, 25.449633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928398, 41.018200, 25.548347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602163, -0.560128, 0.568908,
		-0.192972, -0.589341, -0.784499,
		0.774701, -0.582180, 0.246790,
		46.160809, 40.843544, 25.622385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421951, 40.461174, 25.324848>,  <45.618519, 41.251072, 25.449633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421951, 40.461174, 25.324848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.722672, 40.462322, 25.588600>,  <45.903103, 40.463009, 25.746851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.722672, 40.462322, 25.588600>,  <45.421951, 40.461174, 25.324848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722672, 40.462322, 25.588600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496012, -0.656435, 0.568388,
		0.434471, -0.754377, -0.492088,
		0.751802, 0.002866, 0.659382,
		45.948212, 40.463181, 25.786415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305859, 39.804817, 25.676899>,  <45.421951, 40.461174, 25.324848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305859, 39.804817, 25.676899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.581326, 39.981461, 25.906935>,  <45.746605, 40.087448, 26.044956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.581326, 39.981461, 25.906935>,  <45.305859, 39.804817, 25.676899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581326, 39.981461, 25.906935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136180, -0.700247, 0.700792,
		0.712178, -0.560925, -0.422097,
		0.688664, 0.441607, 0.575087,
		45.787926, 40.113941, 26.079460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729359, 39.280048, 25.966997>,  <45.305859, 39.804817, 25.676899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729359, 39.280048, 25.966997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.768246, 39.584953, 26.222969>,  <45.791580, 39.767895, 26.376553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.768246, 39.584953, 26.222969>,  <45.729359, 39.280048, 25.966997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768246, 39.584953, 26.222969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257969, -0.601701, 0.755916,
		0.961249, -0.238572, 0.138141,
		0.097221, 0.762260, 0.639928,
		45.797413, 39.813633, 26.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133366, 38.976818, 26.424702>,  <45.729359, 39.280048, 25.966997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133366, 38.976818, 26.424702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.972656, 39.294312, 26.607378>,  <45.876228, 39.484806, 26.716984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.972656, 39.294312, 26.607378>,  <46.133366, 38.976818, 26.424702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972656, 39.294312, 26.607378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356861, -0.594998, 0.720158,
		0.843342, 0.126367, 0.522308,
		-0.401777, 0.793731, 0.456691,
		45.852123, 39.532433, 26.744385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.256371, 38.836651, 27.094049>,  <46.133366, 38.976818, 26.424702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.256371, 38.836651, 27.094049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.992378, 39.134502, 27.133955>,  <45.833981, 39.313213, 27.157898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.992378, 39.134502, 27.133955>,  <46.256371, 38.836651, 27.094049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992378, 39.134502, 27.133955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327888, -0.404968, 0.853517,
		0.675950, 0.530598, 0.511427,
		-0.659985, 0.744625, 0.099762,
		45.794384, 39.357891, 27.163883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381111, 39.085842, 27.710400>,  <46.256371, 38.836651, 27.094049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381111, 39.085842, 27.710400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.999683, 39.160957, 27.616209>,  <45.770828, 39.206024, 27.559694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.999683, 39.160957, 27.616209>,  <46.381111, 39.085842, 27.710400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.999683, 39.160957, 27.616209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270841, -0.192621, 0.943156,
		0.131754, 0.963137, 0.234537,
		-0.953565, 0.187786, -0.235479,
		45.713615, 39.217293, 27.545565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139679, 39.476429, 28.267424>,  <46.381111, 39.085842, 27.710400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139679, 39.476429, 28.267424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.820293, 39.334614, 28.072790>,  <45.628662, 39.249527, 27.956011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.820293, 39.334614, 28.072790>,  <46.139679, 39.476429, 28.267424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820293, 39.334614, 28.072790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403647, -0.284399, 0.869590,
		-0.446682, 0.890743, 0.083976,
		-0.798463, -0.354534, -0.486582,
		45.580753, 39.228252, 27.926815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525726, 39.809029, 28.557175>,  <46.139679, 39.476429, 28.267424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525726, 39.809029, 28.557175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.428268, 39.457783, 28.392464>,  <45.369793, 39.247036, 28.293636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.428268, 39.457783, 28.392464>,  <45.525726, 39.809029, 28.557175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428268, 39.457783, 28.392464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440072, -0.278255, 0.853763,
		-0.864277, 0.389226, -0.318636,
		-0.243645, -0.878110, -0.411777,
		45.355175, 39.194351, 28.268930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137142, 39.517147, 29.066599>,  <45.525726, 39.809029, 28.557175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137142, 39.517147, 29.066599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.104008, 39.218746, 28.802288>,  <45.084129, 39.039707, 28.643702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.104008, 39.218746, 28.802288>,  <45.137142, 39.517147, 29.066599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104008, 39.218746, 28.802288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642127, -0.467111, 0.607849,
		-0.762110, 0.474652, -0.440333,
		-0.082832, -0.745998, -0.660777,
		45.079159, 38.994946, 28.604055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549290, 39.323063, 28.975418>,  <45.137142, 39.517147, 29.066599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549290, 39.323063, 28.975418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.678146, 38.967628, 28.844801>,  <44.755463, 38.754368, 28.766430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.678146, 38.967628, 28.844801>,  <44.549290, 39.323063, 28.975418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678146, 38.967628, 28.844801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465255, -0.449006, 0.762844,
		-0.824476, -0.093818, -0.558065,
		0.322143, -0.888590, -0.326545,
		44.774788, 38.701050, 28.746838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989151, 38.869385, 29.129595>,  <44.549290, 39.323063, 28.975418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989151, 38.869385, 29.129595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.302078, 38.625149, 29.080349>,  <44.489834, 38.478607, 29.050802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.302078, 38.625149, 29.080349>,  <43.989151, 38.869385, 29.129595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302078, 38.625149, 29.080349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323501, -0.567198, 0.757386,
		-0.532278, -0.552694, -0.641257,
		0.782322, -0.610587, -0.123110,
		44.536774, 38.441971, 29.043415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750568, 38.243767, 29.049501>,  <43.989151, 38.869385, 29.129595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750568, 38.243767, 29.049501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.127758, 38.206352, 29.177282>,  <44.354073, 38.183903, 29.253952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.127758, 38.206352, 29.177282>,  <43.750568, 38.243767, 29.049501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127758, 38.206352, 29.177282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320875, -0.510708, 0.797632,
		0.088541, -0.854651, -0.511598,
		0.942974, -0.093536, 0.319455,
		44.410648, 38.178291, 29.273119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543880, 37.792542, 28.472490>,  <43.750568, 38.243767, 29.049501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543880, 37.792542, 28.472490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.256397, 37.584095, 28.288361>,  <43.083908, 37.459026, 28.177883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.256397, 37.584095, 28.288361>,  <43.543880, 37.792542, 28.472490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256397, 37.584095, 28.288361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352031, 0.298204, -0.887214,
		0.599610, -0.799696, -0.030873,
		-0.718708, -0.521114, -0.460324,
		43.040783, 37.427761, 28.150263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910656, 37.268009, 28.066446>,  <43.543880, 37.792542, 28.472490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910656, 37.268009, 28.066446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.548233, 37.325802, 27.907356>,  <43.330780, 37.360477, 27.811901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.548233, 37.325802, 27.907356>,  <43.910656, 37.268009, 28.066446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548233, 37.325802, 27.907356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422068, 0.241198, -0.873889,
		-0.030330, -0.959661, -0.279520,
		-0.906057, 0.144482, -0.397726,
		43.276417, 37.369144, 27.788038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988289, 37.111099, 27.392828>,  <43.910656, 37.268009, 28.066446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988289, 37.111099, 27.392828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.624031, 37.267647, 27.339819>,  <43.405476, 37.361576, 27.308014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.624031, 37.267647, 27.339819>,  <43.988289, 37.111099, 27.392828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624031, 37.267647, 27.339819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239108, 0.237562, -0.941484,
		-0.336982, -0.889043, -0.309913,
		-0.910643, 0.391365, -0.132523,
		43.350838, 37.385056, 27.300062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803471, 36.848846, 26.773071>,  <43.988289, 37.111099, 27.392828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803471, 36.848846, 26.773071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.569275, 37.168221, 26.829205>,  <43.428757, 37.359844, 26.862885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.569275, 37.168221, 26.829205>,  <43.803471, 36.848846, 26.773071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569275, 37.168221, 26.829205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244278, 0.338821, -0.908586,
		-0.772998, -0.497690, -0.393418,
		-0.585493, 0.798439, 0.140333,
		43.393627, 37.407753, 26.871304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191032, 36.839390, 26.218306>,  <43.803471, 36.848846, 26.773071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191032, 36.839390, 26.218306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.273148, 37.208767, 26.347986>,  <43.322414, 37.430393, 26.425795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.273148, 37.208767, 26.347986>,  <43.191032, 36.839390, 26.218306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273148, 37.208767, 26.347986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179562, 0.290099, -0.940000,
		-0.962089, 0.251183, -0.106263,
		0.205286, 0.923444, 0.324204,
		43.334732, 37.485802, 26.445248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849754, 37.274807, 25.857592>,  <43.191032, 36.839390, 26.218306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849754, 37.274807, 25.857592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168392, 37.484318, 25.978317>,  <43.359577, 37.610023, 26.050753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168392, 37.484318, 25.978317>,  <42.849754, 37.274807, 25.857592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168392, 37.484318, 25.978317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113715, 0.360520, -0.925794,
		-0.593719, 0.771805, 0.227628,
		0.796597, 0.523777, 0.301814,
		43.407372, 37.641449, 26.068861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048023, 37.550888, 25.174940>,  <42.849754, 37.274807, 25.857592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048023, 37.550888, 25.174940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.313160, 37.708900, 25.429371>,  <43.472240, 37.803707, 25.582029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.313160, 37.708900, 25.429371>,  <43.048023, 37.550888, 25.174940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313160, 37.708900, 25.429371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405011, 0.525346, -0.748316,
		-0.629770, 0.753632, 0.188227,
		0.662839, 0.395033, 0.636076,
		43.512012, 37.827412, 25.620193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310150, 37.929935, 25.155064>,  <43.048023, 37.550888, 25.174940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310150, 37.929935, 25.155064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.051895, 37.850578, 24.860094>,  <41.896942, 37.802963, 24.683113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.051895, 37.850578, 24.860094>,  <42.310150, 37.929935, 25.155064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051895, 37.850578, 24.860094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590671, -0.482309, 0.646905,
		-0.484005, 0.853241, 0.194214,
		-0.645637, -0.198389, -0.737424,
		41.858204, 37.791061, 24.638866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726631, 38.031300, 25.489689>,  <42.310150, 37.929935, 25.155064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726631, 38.031300, 25.489689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.646332, 37.799702, 25.173597>,  <41.598152, 37.660744, 24.983942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.646332, 37.799702, 25.173597>,  <41.726631, 38.031300, 25.489689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646332, 37.799702, 25.173597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623498, -0.546664, 0.558935,
		-0.755612, 0.604913, -0.251260,
		-0.200752, -0.578998, -0.790228,
		41.586105, 37.626003, 24.936529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041931, 37.816593, 25.616627>,  <41.726631, 38.031300, 25.489689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041931, 37.816593, 25.616627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.149940, 37.555813, 25.333206>,  <41.214745, 37.399345, 25.163153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.149940, 37.555813, 25.333206>,  <41.041931, 37.816593, 25.616627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149940, 37.555813, 25.333206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636356, -0.673096, 0.376819,
		-0.722592, 0.349143, -0.596623,
		0.270021, -0.651952, -0.708553,
		41.230946, 37.360226, 25.120640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378971, 37.428329, 25.406786>,  <41.041931, 37.816593, 25.616627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378971, 37.428329, 25.406786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695625, 37.210144, 25.296669>,  <40.885616, 37.079231, 25.230598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695625, 37.210144, 25.296669>,  <40.378971, 37.428329, 25.406786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695625, 37.210144, 25.296669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405147, -0.805883, 0.431750,
		-0.457358, -0.230254, -0.858957,
		0.791631, -0.545468, -0.275291,
		40.933113, 37.046505, 25.214081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121300, 36.861423, 25.175018>,  <40.378971, 37.428329, 25.406786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121300, 36.861423, 25.175018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.500168, 36.749107, 25.237009>,  <40.727489, 36.681717, 25.274202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.500168, 36.749107, 25.237009>,  <40.121300, 36.861423, 25.175018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500168, 36.749107, 25.237009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320167, -0.799500, 0.508224,
		-0.018801, -0.530995, -0.847166,
		0.947174, -0.280790, 0.154976,
		40.784321, 36.664871, 25.283503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166733, 36.128098, 25.109776>,  <40.121300, 36.861423, 25.175018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166733, 36.128098, 25.109776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.473473, 36.237503, 25.342026>,  <40.657516, 36.303146, 25.481375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.473473, 36.237503, 25.342026>,  <40.166733, 36.128098, 25.109776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473473, 36.237503, 25.342026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117919, -0.829207, 0.546361,
		0.630897, -0.487446, -0.603627,
		0.766853, 0.273518, 0.580623,
		40.703529, 36.319557, 25.516212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369183, 35.518826, 25.257109>,  <40.166733, 36.128098, 25.109776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369183, 35.518826, 25.257109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538525, 35.723198, 25.556366>,  <40.640129, 35.845821, 25.735920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538525, 35.723198, 25.556366>,  <40.369183, 35.518826, 25.257109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538525, 35.723198, 25.556366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029196, -0.833063, 0.552406,
		0.905492, -0.212022, -0.367601,
		0.423357, 0.510932, 0.748142,
		40.665531, 35.876476, 25.780809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.630604, 41.670017, 24.962713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.818775, 41.736210, 25.309425>,  <42.931679, 41.775925, 25.517452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.818775, 41.736210, 25.309425>,  <42.630604, 41.670017, 24.962713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818775, 41.736210, 25.309425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730941, -0.477242, 0.487817,
		0.494389, -0.863051, -0.103554,
		0.470431, 0.165479, 0.866782,
		42.959904, 41.785854, 25.569460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528305, 41.062756, 25.379190>,  <42.630604, 41.670017, 24.962713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528305, 41.062756, 25.379190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.620415, 41.352680, 25.638920>,  <42.675682, 41.526634, 25.794758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.620415, 41.352680, 25.638920>,  <42.528305, 41.062756, 25.379190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620415, 41.352680, 25.638920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752796, -0.290152, 0.590855,
		0.616662, -0.624867, 0.478822,
		0.230274, 0.724813, 0.649323,
		42.689499, 41.570126, 25.833717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548714, 40.746284, 26.073275>,  <42.528305, 41.062756, 25.379190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548714, 40.746284, 26.073275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.511799, 41.136963, 26.150782>,  <42.489651, 41.371368, 26.197287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.511799, 41.136963, 26.150782>,  <42.548714, 40.746284, 26.073275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511799, 41.136963, 26.150782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649369, -0.206556, 0.731884,
		0.754853, -0.058285, 0.653299,
		-0.092286, 0.976697, 0.193768,
		42.484112, 41.429974, 26.208912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479275, 40.808193, 26.827246>,  <42.548714, 40.746284, 26.073275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479275, 40.808193, 26.827246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.359119, 41.174545, 26.720713>,  <42.287025, 41.394356, 26.656794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.359119, 41.174545, 26.720713>,  <42.479275, 40.808193, 26.827246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359119, 41.174545, 26.720713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758024, -0.059747, 0.649484,
		0.578937, 0.396980, 0.712207,
		-0.300385, 0.915880, -0.266331,
		42.269005, 41.449310, 26.640814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399731, 41.167618, 27.440012>,  <42.479275, 40.808193, 26.827246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399731, 41.167618, 27.440012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.177914, 41.372211, 27.177452>,  <42.044823, 41.494968, 27.019917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.177914, 41.372211, 27.177452>,  <42.399731, 41.167618, 27.440012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177914, 41.372211, 27.177452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811645, -0.158405, 0.562263,
		0.183614, 0.844564, 0.502989,
		-0.554543, 0.511488, -0.656401,
		42.011551, 41.525658, 26.980532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036289, 41.628525, 27.777864>,  <42.399731, 41.167618, 27.440012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036289, 41.628525, 27.777864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.825455, 41.576885, 27.441885>,  <41.698956, 41.545902, 27.240297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.825455, 41.576885, 27.441885>,  <42.036289, 41.628525, 27.777864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825455, 41.576885, 27.441885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827898, -0.145001, 0.541811,
		-0.191738, 0.980973, -0.030450,
		-0.527087, -0.129095, -0.839948,
		41.667328, 41.538158, 27.189901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432915, 41.939140, 27.806841>,  <42.036289, 41.628525, 27.777864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432915, 41.939140, 27.806841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300140, 41.683151, 27.529638>,  <41.220478, 41.529556, 27.363317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300140, 41.683151, 27.529638>,  <41.432915, 41.939140, 27.806841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300140, 41.683151, 27.529638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732343, -0.288212, 0.616934,
		-0.594553, 0.712298, -0.373012,
		-0.331934, -0.639973, -0.693004,
		41.200562, 41.491161, 27.321737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720730, 41.963638, 27.873867>,  <41.432915, 41.939140, 27.806841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720730, 41.963638, 27.873867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752403, 41.633801, 27.649803>,  <40.771408, 41.435898, 27.515366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752403, 41.633801, 27.649803>,  <40.720730, 41.963638, 27.873867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752403, 41.633801, 27.649803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662746, -0.463300, 0.588321,
		-0.744646, 0.324655, -0.583182,
		0.079187, -0.824592, -0.560158,
		40.776161, 41.386421, 27.481756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044441, 41.684288, 27.559359>,  <40.720730, 41.963638, 27.873867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044441, 41.684288, 27.559359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.305256, 41.383747, 27.599997>,  <40.461746, 41.203423, 27.624380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.305256, 41.383747, 27.599997>,  <40.044441, 41.684288, 27.559359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305256, 41.383747, 27.599997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682953, -0.523847, 0.509077,
		-0.329274, -0.401323, -0.854704,
		0.652038, -0.751348, 0.101596,
		40.500866, 41.158344, 27.630476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671597, 41.140686, 27.305653>,  <40.044441, 41.684288, 27.559359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671597, 41.140686, 27.305653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950356, 40.973221, 27.538563>,  <40.117611, 40.872742, 27.678308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950356, 40.973221, 27.538563>,  <39.671597, 41.140686, 27.305653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950356, 40.973221, 27.538563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706282, -0.541581, 0.455912,
		0.124475, -0.728978, -0.673125,
		0.696901, -0.418667, 0.582278,
		40.159428, 40.847622, 27.713245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453575, 40.434628, 27.374975>,  <39.671597, 41.140686, 27.305653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453575, 40.434628, 27.374975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.721195, 40.497070, 27.665628>,  <39.881767, 40.534534, 27.840021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.721195, 40.497070, 27.665628>,  <39.453575, 40.434628, 27.374975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721195, 40.497070, 27.665628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498296, -0.631175, 0.594407,
		0.551423, -0.759769, -0.344505,
		0.669055, 0.156104, 0.726634,
		39.921913, 40.543903, 27.883619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607933, 39.764664, 27.611349>,  <39.453575, 40.434628, 27.374975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607933, 39.764664, 27.611349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.681232, 40.041073, 27.891037>,  <39.725212, 40.206917, 28.058849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.681232, 40.041073, 27.891037>,  <39.607933, 39.764664, 27.611349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681232, 40.041073, 27.891037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588453, -0.492657, 0.641102,
		0.787491, -0.528940, 0.316355,
		0.183250, 0.691022, 0.699219,
		39.736206, 40.248379, 28.100803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593140, 38.932480, 27.535158>,  <39.607933, 39.764664, 27.611349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593140, 38.932480, 27.535158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330994, 38.875641, 27.238430>,  <39.173706, 38.841537, 27.060392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330994, 38.875641, 27.238430>,  <39.593140, 38.932480, 27.535158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330994, 38.875641, 27.238430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602578, 0.493806, -0.626941,
		0.455402, -0.857883, -0.238001,
		-0.655369, -0.142096, -0.741822,
		39.134384, 38.833012, 27.015882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915405, 38.637150, 26.974518>,  <39.593140, 38.932480, 27.535158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915405, 38.637150, 26.974518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597412, 38.832668, 26.830807>,  <39.406616, 38.949978, 26.744579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597412, 38.832668, 26.830807>,  <39.915405, 38.637150, 26.974518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597412, 38.832668, 26.830807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571254, 0.403912, -0.714510,
		-0.204132, -0.773263, -0.600330,
		-0.794984, 0.488795, -0.359278,
		39.358917, 38.979305, 26.723022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999836, 38.487457, 26.252008>,  <39.915405, 38.637150, 26.974518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999836, 38.487457, 26.252008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752106, 38.799217, 26.289902>,  <39.603466, 38.986271, 26.312637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752106, 38.799217, 26.289902>,  <39.999836, 38.487457, 26.252008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752106, 38.799217, 26.289902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449750, 0.451077, -0.770879,
		-0.643553, -0.434820, -0.629898,
		-0.619326, 0.779398, 0.094731,
		39.566307, 39.033035, 26.318321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721264, 38.661289, 25.579454>,  <39.999836, 38.487457, 26.252008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721264, 38.661289, 25.579454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.694023, 38.999180, 25.791792>,  <39.677681, 39.201916, 25.919195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.694023, 38.999180, 25.791792>,  <39.721264, 38.661289, 25.579454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694023, 38.999180, 25.791792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220889, 0.531639, -0.817660,
		-0.972919, 0.061577, -0.222795,
		-0.068098, 0.844730, 0.530843,
		39.673595, 39.252598, 25.951044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303631, 39.145111, 25.190622>,  <39.721264, 38.661289, 25.579454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303631, 39.145111, 25.190622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.498177, 39.380260, 25.449190>,  <39.614902, 39.521351, 25.604330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.498177, 39.380260, 25.449190>,  <39.303631, 39.145111, 25.190622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498177, 39.380260, 25.449190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279365, 0.596359, -0.752536,
		-0.827891, 0.546595, 0.125818,
		0.486365, 0.587869, 0.646420,
		39.644085, 39.556622, 25.643116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279495, 39.763737, 24.814917>,  <39.303631, 39.145111, 25.190622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279495, 39.763737, 24.814917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.561577, 39.817101, 25.093451>,  <39.730827, 39.849121, 25.260571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.561577, 39.817101, 25.093451>,  <39.279495, 39.763737, 24.814917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561577, 39.817101, 25.093451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504269, 0.596012, -0.624886,
		-0.498392, 0.791815, 0.353036,
		0.705208, 0.133413, 0.696335,
		39.773140, 39.857124, 25.302351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432526, 40.492626, 24.909222>,  <39.279495, 39.763737, 24.814917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432526, 40.492626, 24.909222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752426, 40.301136, 25.054113>,  <39.944366, 40.186241, 25.141048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.752426, 40.301136, 25.054113>,  <39.432526, 40.492626, 24.909222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752426, 40.301136, 25.054113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594831, 0.550477, -0.585791,
		0.081036, 0.683955, 0.725010,
		0.799756, -0.478729, 0.362229,
		39.992352, 40.157516, 25.162783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875240, 41.065460, 25.024399>,  <39.432526, 40.492626, 24.909222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875240, 41.065460, 25.024399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.056961, 40.710876, 24.989071>,  <40.165993, 40.498127, 24.967875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.056961, 40.710876, 24.989071>,  <39.875240, 41.065460, 25.024399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056961, 40.710876, 24.989071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657599, 0.400585, -0.638041,
		0.600974, 0.231788, 0.764921,
		0.454306, -0.886457, -0.088318,
		40.193253, 40.444939, 24.962576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493431, 41.267338, 25.027231>,  <39.875240, 41.065460, 25.024399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493431, 41.267338, 25.027231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485512, 40.903427, 24.861378>,  <40.480762, 40.685081, 24.761866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485512, 40.903427, 24.861378>,  <40.493431, 41.267338, 25.027231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485512, 40.903427, 24.861378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684697, 0.289866, -0.668706,
		0.728559, -0.297135, 0.617182,
		-0.019796, -0.909774, -0.414631,
		40.479572, 40.630493, 24.736988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103783, 41.254734, 24.799818>,  <40.493431, 41.267338, 25.027231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103783, 41.254734, 24.799818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.963737, 40.925533, 24.620892>,  <40.879711, 40.728012, 24.513536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.963737, 40.925533, 24.620892>,  <41.103783, 41.254734, 24.799818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963737, 40.925533, 24.620892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618863, 0.155244, -0.770006,
		0.703159, -0.546413, 0.454973,
		-0.350110, -0.823002, -0.447316,
		40.858704, 40.678635, 24.486696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640572, 40.795059, 24.636578>,  <41.103783, 41.254734, 24.799818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640572, 40.795059, 24.636578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.367756, 40.678738, 24.368172>,  <41.204067, 40.608944, 24.207129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.367756, 40.678738, 24.368172>,  <41.640572, 40.795059, 24.636578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367756, 40.678738, 24.368172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663695, 0.139224, -0.734932,
		0.307143, -0.946599, 0.098050,
		-0.682035, -0.290804, -0.671015,
		41.163147, 40.591496, 24.166866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945210, 40.341724, 24.221079>,  <41.640572, 40.795059, 24.636578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945210, 40.341724, 24.221079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.639565, 40.457939, 23.990700>,  <41.456177, 40.527668, 23.852472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.639565, 40.457939, 23.990700>,  <41.945210, 40.341724, 24.221079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639565, 40.457939, 23.990700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640900, 0.240451, -0.728993,
		-0.073310, -0.926160, -0.369936,
		-0.764116, 0.290535, -0.575948,
		41.410328, 40.545101, 23.817915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179707, 40.094128, 23.572454>,  <41.945210, 40.341724, 24.221079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179707, 40.094128, 23.572454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.897724, 40.371197, 23.511465>,  <41.728535, 40.537437, 23.474871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.897724, 40.371197, 23.511465>,  <42.179707, 40.094128, 23.572454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897724, 40.371197, 23.511465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409605, 0.222098, -0.884814,
		-0.579020, -0.686207, -0.440290,
		-0.704953, 0.692671, -0.152475,
		41.686237, 40.578999, 23.465723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858021, 39.941814, 22.931654>,  <42.179707, 40.094128, 23.572454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858021, 39.941814, 22.931654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.838390, 40.330318, 23.024820>,  <41.826611, 40.563419, 23.080719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.838390, 40.330318, 23.024820>,  <41.858021, 39.941814, 22.931654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838390, 40.330318, 23.024820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384756, 0.233582, -0.892974,
		-0.921713, 0.045792, -0.385161,
		-0.049075, 0.971258, 0.232914,
		41.823669, 40.621696, 23.094694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202885, 39.632767, 22.565832>,  <41.858021, 39.941814, 22.931654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202885, 39.632767, 22.565832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.554302, 39.496235, 22.432171>,  <41.765152, 39.414318, 22.351974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.554302, 39.496235, 22.432171>,  <41.202885, 39.632767, 22.565832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554302, 39.496235, 22.432171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039776, -0.749404, 0.660917,
		-0.476003, -0.567354, -0.671961,
		0.878544, -0.341327, -0.334152,
		41.817863, 39.393837, 22.331924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102005, 38.948589, 22.533024>,  <41.202885, 39.632767, 22.565832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102005, 38.948589, 22.533024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496098, 39.002361, 22.575443>,  <41.732552, 39.034622, 22.600895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496098, 39.002361, 22.575443>,  <41.102005, 38.948589, 22.533024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496098, 39.002361, 22.575443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008875, -0.578428, 0.815685,
		0.170991, -0.804580, -0.568693,
		0.985232, 0.134428, 0.106047,
		41.791668, 39.042690, 22.607258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417797, 38.276199, 22.437004>,  <41.102005, 38.948589, 22.533024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417797, 38.276199, 22.437004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.682983, 38.513699, 22.619404>,  <41.842094, 38.656200, 22.728844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.682983, 38.513699, 22.619404>,  <41.417797, 38.276199, 22.437004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682983, 38.513699, 22.619404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006217, -0.613443, 0.789715,
		0.748624, -0.520719, -0.410383,
		0.662965, 0.593751, 0.456001,
		41.881874, 38.691822, 22.756205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899223, 37.801403, 22.674574>,  <41.417797, 38.276199, 22.437004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899223, 37.801403, 22.674574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.971004, 38.126629, 22.896103>,  <42.014072, 38.321766, 23.029020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.971004, 38.126629, 22.896103>,  <41.899223, 37.801403, 22.674574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971004, 38.126629, 22.896103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073537, -0.572474, 0.816619,
		0.981014, -0.105820, -0.162523,
		0.179455, 0.813066, 0.553823,
		42.024841, 38.370548, 23.062250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452812, 37.661621, 23.071745>,  <41.899223, 37.801403, 22.674574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452812, 37.661621, 23.071745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.304718, 37.966774, 23.283760>,  <42.215862, 38.149864, 23.410969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.304718, 37.966774, 23.283760>,  <42.452812, 37.661621, 23.071745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304718, 37.966774, 23.283760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017814, -0.576311, 0.817036,
		0.928767, 0.293054, 0.226961,
		-0.370235, 0.762880, 0.530038,
		42.193645, 38.195637, 23.442772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814945, 37.745792, 23.794704>,  <42.452812, 37.661621, 23.071745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814945, 37.745792, 23.794704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465569, 37.937241, 23.830526>,  <42.255943, 38.052109, 23.852018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465569, 37.937241, 23.830526>,  <42.814945, 37.745792, 23.794704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465569, 37.937241, 23.830526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155588, -0.448608, 0.880081,
		0.461397, 0.754769, 0.466302,
		-0.873445, 0.478618, 0.089553,
		42.203537, 38.080826, 23.857391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790928, 37.826366, 24.444290>,  <42.814945, 37.745792, 23.794704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790928, 37.826366, 24.444290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.405998, 37.875679, 24.347355>,  <42.175041, 37.905266, 24.289194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.405998, 37.875679, 24.347355>,  <42.790928, 37.826366, 24.444290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405998, 37.875679, 24.347355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271143, -0.368931, 0.889028,
		0.020199, 0.921244, 0.388461,
		-0.962327, 0.123286, -0.242337,
		42.117302, 37.912666, 24.274654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098202, 38.349907, 24.974846>,  <42.790928, 37.826366, 24.444290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098202, 38.349907, 24.974846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.437378, 38.240734, 25.156614>,  <43.640884, 38.175232, 25.265675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.437378, 38.240734, 25.156614>,  <43.098202, 38.349907, 24.974846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437378, 38.240734, 25.156614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528778, 0.375348, -0.761254,
		0.037204, 0.885789, 0.462595,
		0.847944, -0.272932, 0.454421,
		43.691761, 38.158855, 25.292940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439922, 38.980141, 24.927229>,  <43.098202, 38.349907, 24.974846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439922, 38.980141, 24.927229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.686691, 38.675716, 25.007418>,  <43.834751, 38.493061, 25.055531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.686691, 38.675716, 25.007418>,  <43.439922, 38.980141, 24.927229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686691, 38.675716, 25.007418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648811, 0.347626, -0.676905,
		0.445479, 0.547665, 0.708245,
		0.616921, -0.761065, 0.200471,
		43.871769, 38.447395, 25.067558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972038, 39.302654, 25.191198>,  <43.439922, 38.980141, 24.927229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972038, 39.302654, 25.191198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.074265, 38.939808, 25.057436>,  <44.135601, 38.722099, 24.977179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.074265, 38.939808, 25.057436>,  <43.972038, 39.302654, 25.191198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074265, 38.939808, 25.057436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756289, 0.403048, -0.515344,
		0.602259, -0.121205, 0.789046,
		0.255561, -0.907117, -0.334405,
		44.150932, 38.667671, 24.957115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611492, 39.300808, 25.193481>,  <43.972038, 39.302654, 25.191198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611492, 39.300808, 25.193481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.556152, 38.999279, 24.936541>,  <44.522949, 38.818363, 24.782375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.556152, 38.999279, 24.936541>,  <44.611492, 39.300808, 25.193481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556152, 38.999279, 24.936541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742464, 0.350296, -0.570998,
		0.655443, -0.555923, 0.511219,
		-0.138353, -0.753819, -0.642352,
		44.514645, 38.773132, 24.743835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203167, 39.275837, 24.945963>,  <44.611492, 39.300808, 25.193481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203167, 39.275837, 24.945963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.001759, 39.048206, 24.685926>,  <44.880913, 38.911629, 24.529905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.001759, 39.048206, 24.685926>,  <45.203167, 39.275837, 24.945963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001759, 39.048206, 24.685926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601879, 0.308776, -0.736477,
		0.619844, -0.762108, 0.187040,
		-0.503522, -0.569077, -0.650091,
		44.850700, 38.877483, 24.490900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657696, 38.786499, 24.569042>,  <45.203167, 39.275837, 24.945963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657696, 38.786499, 24.569042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.330544, 38.877953, 24.357838>,  <45.134251, 38.932827, 24.231115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.330544, 38.877953, 24.357838>,  <45.657696, 38.786499, 24.569042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330544, 38.877953, 24.357838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575368, 0.317415, -0.753790,
		-0.004747, -0.920311, -0.391159,
		-0.817881, 0.228639, -0.528011,
		45.085178, 38.946545, 24.199434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890751, 38.469795, 23.925163>,  <45.657696, 38.786499, 24.569042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890751, 38.469795, 23.925163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.596085, 38.734600, 23.869925>,  <45.419285, 38.893482, 23.836781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.596085, 38.734600, 23.869925>,  <45.890751, 38.469795, 23.925163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596085, 38.734600, 23.869925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542126, 0.456034, -0.705785,
		-0.404259, -0.594792, -0.694836,
		-0.736664, 0.662009, -0.138097,
		45.375084, 38.933201, 23.828495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876808, 38.568363, 23.207310>,  <45.890751, 38.469795, 23.925163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876808, 38.568363, 23.207310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.694904, 38.889889, 23.360714>,  <45.585762, 39.082802, 23.452757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.694904, 38.889889, 23.360714>,  <45.876808, 38.568363, 23.207310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694904, 38.889889, 23.360714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493218, 0.585849, -0.643053,
		-0.741572, -0.103282, -0.662876,
		-0.454761, 0.803812, 0.383508,
		45.558475, 39.131031, 23.475767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594357, 38.909981, 22.671387>,  <45.876808, 38.568363, 23.207310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594357, 38.909981, 22.671387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.622581, 39.187103, 22.958452>,  <45.639515, 39.353378, 23.130692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.622581, 39.187103, 22.958452>,  <45.594357, 38.909981, 22.671387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622581, 39.187103, 22.958452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452112, 0.619102, -0.642111,
		-0.889166, 0.369771, -0.269543,
		0.070559, 0.692807, 0.717663,
		45.643749, 39.394947, 23.173752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.898636, 32.973228, 35.251198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238445, 33.101982, 35.418385>,  <37.442333, 33.179234, 35.518696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238445, 33.101982, 35.418385>,  <36.898636, 32.973228, 35.251198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238445, 33.101982, 35.418385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415796, 0.079084, -0.906013,
		-0.324682, 0.943472, -0.066652,
		0.849526, 0.321880, 0.417969,
		37.493301, 33.198547, 35.543774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114101, 33.613499, 34.885231>,  <36.898636, 32.973228, 35.251198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114101, 33.613499, 34.885231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449673, 33.468544, 35.047649>,  <37.651016, 33.381573, 35.145100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449673, 33.468544, 35.047649>,  <37.114101, 33.613499, 34.885231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449673, 33.468544, 35.047649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473460, 0.118042, -0.872870,
		0.268383, 0.924524, 0.270603,
		0.838932, -0.362383, 0.406044,
		37.701351, 33.359829, 35.169464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650753, 34.073601, 34.609692>,  <37.114101, 33.613499, 34.885231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650753, 34.073601, 34.609692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838425, 33.750526, 34.752525>,  <37.951027, 33.556683, 34.838226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838425, 33.750526, 34.752525>,  <37.650753, 34.073601, 34.609692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838425, 33.750526, 34.752525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556783, -0.043313, -0.829528,
		0.685468, 0.588015, 0.429387,
		0.469176, -0.807690, 0.357087,
		37.979179, 33.508221, 34.859650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339310, 34.252865, 34.467789>,  <37.650753, 34.073601, 34.609692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339310, 34.252865, 34.467789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.319626, 33.855900, 34.512863>,  <38.307816, 33.617722, 34.539909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.319626, 33.855900, 34.512863>,  <38.339310, 34.252865, 34.467789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319626, 33.855900, 34.512863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679524, -0.115958, -0.724432,
		0.732001, 0.040923, 0.680074,
		-0.049214, -0.992411, 0.112690,
		38.304863, 33.558178, 34.546669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013584, 34.098122, 34.439999>,  <38.339310, 34.252865, 34.467789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013584, 34.098122, 34.439999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.806854, 33.776821, 34.321552>,  <38.682816, 33.584042, 34.250484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.806854, 33.776821, 34.321552>,  <39.013584, 34.098122, 34.439999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806854, 33.776821, 34.321552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617670, -0.110368, -0.778654,
		0.592771, -0.585329, 0.553184,
		-0.516823, -0.803249, -0.296117,
		38.651806, 33.535847, 34.232716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467514, 33.692677, 34.206436>,  <39.013584, 34.098122, 34.439999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467514, 33.692677, 34.206436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140636, 33.514503, 34.060131>,  <38.944511, 33.407600, 33.972347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140636, 33.514503, 34.060131>,  <39.467514, 33.692677, 34.206436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140636, 33.514503, 34.060131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548098, -0.404303, -0.732207,
		0.178271, -0.798829, 0.574536,
		-0.817195, -0.445433, -0.365761,
		38.895477, 33.380875, 33.950401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786350, 33.128784, 34.046349>,  <39.467514, 33.692677, 34.206436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786350, 33.128784, 34.046349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443089, 33.173859, 33.846001>,  <39.237133, 33.200905, 33.725792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443089, 33.173859, 33.846001>,  <39.786350, 33.128784, 34.046349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443089, 33.173859, 33.846001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508659, 0.054457, -0.859244,
		-0.069553, -0.992137, -0.104054,
		-0.858154, 0.112691, -0.500871,
		39.185642, 33.207664, 33.695740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743568, 32.604279, 33.568611>,  <39.786350, 33.128784, 34.046349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743568, 32.604279, 33.568611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524841, 32.915401, 33.444668>,  <39.393604, 33.102074, 33.370300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524841, 32.915401, 33.444668>,  <39.743568, 32.604279, 33.568611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524841, 32.915401, 33.444668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370287, -0.107262, -0.922704,
		-0.750918, -0.619288, -0.229357,
		-0.546818, 0.777803, -0.309859,
		39.360794, 33.148743, 33.351711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848354, 32.554424, 32.826561>,  <39.743568, 32.604279, 33.568611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848354, 32.554424, 32.826561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.662365, 32.903648, 32.885311>,  <39.550774, 33.113182, 32.920559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.662365, 32.903648, 32.885311>,  <39.848354, 32.554424, 32.826561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662365, 32.903648, 32.885311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391943, 0.351749, -0.850091,
		-0.793841, -0.337701, -0.505741,
		-0.464970, 0.873059, 0.146873,
		39.522873, 33.165565, 32.929375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453133, 32.690689, 32.325089>,  <39.848354, 32.554424, 32.826561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453133, 32.690689, 32.325089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512688, 33.059319, 32.468498>,  <39.548420, 33.280495, 32.554543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512688, 33.059319, 32.468498>,  <39.453133, 32.690689, 32.325089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512688, 33.059319, 32.468498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353106, 0.289112, -0.889792,
		-0.923661, 0.259074, -0.282368,
		0.148886, 0.921572, 0.358522,
		39.557354, 33.335789, 32.576054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314411, 33.130825, 31.736719>,  <39.453133, 32.690689, 32.325089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314411, 33.130825, 31.736719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.506233, 33.374210, 31.989637>,  <39.621326, 33.520241, 32.141388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.506233, 33.374210, 31.989637>,  <39.314411, 33.130825, 31.736719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506233, 33.374210, 31.989637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222953, 0.612423, -0.758439,
		-0.848716, 0.504685, 0.158031,
		0.479554, 0.608466, 0.632295,
		39.650101, 33.556751, 32.179325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011261, 33.791870, 31.576511>,  <39.314411, 33.130825, 31.736719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011261, 33.791870, 31.576511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.379539, 33.844845, 31.723358>,  <39.600506, 33.876629, 31.811466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.379539, 33.844845, 31.723358>,  <39.011261, 33.791870, 31.576511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379539, 33.844845, 31.723358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252432, 0.515321, -0.818976,
		-0.297646, 0.846702, 0.441024,
		0.920698, 0.132436, 0.367118,
		39.655750, 33.884575, 31.833494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441837, 34.222191, 31.350393>,  <39.011261, 33.791870, 31.576511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441837, 34.222191, 31.350393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201832, 34.102570, 31.053596>,  <38.057831, 34.030796, 30.875519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201832, 34.102570, 31.053596>,  <38.441837, 34.222191, 31.350393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201832, 34.102570, 31.053596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366700, -0.721511, 0.587328,
		-0.710997, 0.624493, 0.323253,
		-0.600012, -0.299051, -0.741993,
		38.021828, 34.012856, 30.830999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647381, 34.329189, 31.592859>,  <38.441837, 34.222191, 31.350393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647381, 34.329189, 31.592859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692104, 34.047409, 31.312502>,  <37.718937, 33.878342, 31.144287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692104, 34.047409, 31.312502>,  <37.647381, 34.329189, 31.592859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692104, 34.047409, 31.312502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663507, -0.577985, 0.475069,
		-0.739768, 0.411933, -0.532029,
		0.111808, -0.704446, -0.700896,
		37.725647, 33.836075, 31.102234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968925, 34.193413, 31.423628>,  <37.647381, 34.329189, 31.592859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968925, 34.193413, 31.423628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174526, 33.876667, 31.291714>,  <37.297886, 33.686619, 31.212564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174526, 33.876667, 31.291714>,  <36.968925, 34.193413, 31.423628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174526, 33.876667, 31.291714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719590, -0.607311, 0.336697,
		-0.466900, 0.064249, -0.881973,
		0.513999, -0.791863, -0.329786,
		37.328728, 33.639107, 31.192778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523319, 33.736305, 31.114466>,  <36.968925, 34.193413, 31.423628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523319, 33.736305, 31.114466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843395, 33.504784, 31.177309>,  <37.035442, 33.365871, 31.215015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843395, 33.504784, 31.177309>,  <36.523319, 33.736305, 31.114466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843395, 33.504784, 31.177309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591850, -0.719702, 0.362963,
		-0.097013, -0.383425, -0.918463,
		0.800189, -0.578804, 0.157110,
		37.083450, 33.331142, 31.224442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362152, 33.117416, 30.812666>,  <36.523319, 33.736305, 31.114466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362152, 33.117416, 30.812666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630451, 33.031956, 31.096764>,  <36.791431, 32.980679, 31.267221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630451, 33.031956, 31.096764>,  <36.362152, 33.117416, 30.812666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630451, 33.031956, 31.096764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554997, -0.779834, 0.289548,
		0.492008, -0.588397, -0.641652,
		0.670751, -0.213655, 0.710243,
		36.831676, 32.967861, 31.309835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202911, 32.397202, 30.910238>,  <36.362152, 33.117416, 30.812666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202911, 32.397202, 30.910238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402161, 32.509991, 31.238230>,  <36.521709, 32.577663, 31.435024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402161, 32.509991, 31.238230>,  <36.202911, 32.397202, 30.910238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402161, 32.509991, 31.238230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586467, -0.586994, 0.558117,
		0.638696, -0.758901, -0.127029,
		0.498121, 0.281968, 0.819981,
		36.551598, 32.594582, 31.484224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481388, 31.737541, 31.168297>,  <36.202911, 32.397202, 30.910238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481388, 31.737541, 31.168297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408840, 32.024464, 31.437393>,  <36.365311, 32.196617, 31.598850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408840, 32.024464, 31.437393>,  <36.481388, 31.737541, 31.168297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408840, 32.024464, 31.437393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655972, -0.597905, 0.460662,
		0.732670, -0.357748, 0.578974,
		-0.181370, 0.717304, 0.672740,
		36.354427, 32.239655, 31.639215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371861, 31.342449, 31.800446>,  <36.481388, 31.737541, 31.168297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371861, 31.342449, 31.800446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240437, 31.702641, 31.914417>,  <36.161583, 31.918756, 31.982801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240437, 31.702641, 31.914417>,  <36.371861, 31.342449, 31.800446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240437, 31.702641, 31.914417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762031, -0.430969, 0.483296,
		0.557994, -0.058335, 0.827792,
		-0.328560, 0.900479, 0.284931,
		36.141869, 31.972784, 31.999897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136223, 31.215796, 32.507587>,  <36.371861, 31.342449, 31.800446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136223, 31.215796, 32.507587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947350, 31.552755, 32.403740>,  <35.834026, 31.754930, 32.341431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947350, 31.552755, 32.403740>,  <36.136223, 31.215796, 32.507587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947350, 31.552755, 32.403740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759407, -0.239193, 0.605051,
		0.447594, 0.482856, 0.752668,
		-0.472186, 0.842399, -0.259623,
		35.805695, 31.805475, 32.325851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006687, 31.485598, 33.196354>,  <36.136223, 31.215796, 32.507587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006687, 31.485598, 33.196354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779854, 31.692556, 32.940006>,  <35.643753, 31.816730, 32.786198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779854, 31.692556, 32.940006>,  <36.006687, 31.485598, 33.196354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779854, 31.692556, 32.940006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801233, -0.166189, 0.574811,
		0.190899, 0.839454, 0.508797,
		-0.567084, 0.517395, -0.640873,
		35.609730, 31.847775, 32.747746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671074, 32.035725, 33.496220>,  <36.006687, 31.485598, 33.196354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671074, 32.035725, 33.496220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423504, 31.978556, 33.187286>,  <35.274963, 31.944254, 33.001926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423504, 31.978556, 33.187286>,  <35.671074, 32.035725, 33.496220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423504, 31.978556, 33.187286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782983, 0.034387, 0.621091,
		-0.062210, 0.989136, -0.133191,
		-0.618924, -0.142924, -0.772338,
		35.237827, 31.935678, 32.955585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081551, 32.478481, 33.631516>,  <35.671074, 32.035725, 33.496220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081551, 32.478481, 33.631516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948242, 32.220901, 33.356049>,  <34.868259, 32.066353, 33.190769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948242, 32.220901, 33.356049>,  <35.081551, 32.478481, 33.631516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948242, 32.220901, 33.356049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794389, -0.201628, 0.572968,
		-0.507819, 0.738018, -0.444353,
		-0.333267, -0.643953, -0.688664,
		34.848263, 32.027714, 33.149448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388947, 32.560741, 33.622784>,  <35.081551, 32.478481, 33.631516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388947, 32.560741, 33.622784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372707, 32.229671, 33.398891>,  <34.362965, 32.031029, 33.264557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372707, 32.229671, 33.398891>,  <34.388947, 32.560741, 33.622784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372707, 32.229671, 33.398891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840873, -0.274291, 0.466579,
		-0.539708, 0.489603, -0.684839,
		-0.040593, -0.827679, -0.559732,
		34.360531, 31.981367, 33.230972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739117, 32.585369, 33.327908>,  <34.388947, 32.560741, 33.622784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739117, 32.585369, 33.327908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866905, 32.207886, 33.362202>,  <33.943577, 31.981396, 33.382778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866905, 32.207886, 33.362202>,  <33.739117, 32.585369, 33.327908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866905, 32.207886, 33.362202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834663, -0.237401, 0.496970,
		-0.448642, -0.230327, -0.863522,
		0.319466, -0.943711, 0.085738,
		33.962746, 31.924772, 33.387924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193966, 32.134933, 33.154850>,  <33.739117, 32.585369, 33.327908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193966, 32.134933, 33.154850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428658, 31.925972, 33.402344>,  <33.569473, 31.800594, 33.550842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428658, 31.925972, 33.402344>,  <33.193966, 32.134933, 33.154850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428658, 31.925972, 33.402344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803508, -0.280665, 0.524978,
		-0.100593, -0.805183, -0.584433,
		0.586733, -0.522406, 0.618738,
		33.604679, 31.769249, 33.587963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729465, 32.672318, 33.496998>,  <33.193966, 32.134933, 33.154850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729465, 32.672318, 33.496998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837585, 33.018612, 33.665493>,  <32.902458, 33.226387, 33.766590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837585, 33.018612, 33.665493>,  <32.729465, 32.672318, 33.496998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837585, 33.018612, 33.665493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552454, 0.218856, -0.804299,
		-0.788501, 0.450114, -0.419123,
		0.270299, 0.865736, 0.421236,
		32.918674, 33.278332, 33.791862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559269, 33.190334, 32.993515>,  <32.729465, 32.672318, 33.496998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559269, 33.190334, 32.993515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840977, 33.324696, 33.243694>,  <33.010002, 33.405312, 33.393803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840977, 33.324696, 33.243694>,  <32.559269, 33.190334, 32.993515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840977, 33.324696, 33.243694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371568, 0.576288, -0.727894,
		-0.604936, 0.745026, 0.281050,
		0.704265, 0.335900, 0.625445,
		33.052258, 33.425465, 33.431328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557400, 33.849365, 32.954872>,  <32.559269, 33.190334, 32.993515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557400, 33.849365, 32.954872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928490, 33.770664, 33.081753>,  <33.151142, 33.723442, 33.157883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928490, 33.770664, 33.081753>,  <32.557400, 33.849365, 32.954872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928490, 33.770664, 33.081753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366525, 0.640973, -0.674398,
		-0.070626, 0.741917, 0.666761,
		0.927724, -0.196755, 0.317201,
		33.206806, 33.711639, 33.176914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944042, 34.490051, 33.008125>,  <32.557400, 33.849365, 32.954872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944042, 34.490051, 33.008125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217251, 34.199192, 32.980560>,  <33.381176, 34.024677, 32.964020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217251, 34.199192, 32.980560>,  <32.944042, 34.490051, 33.008125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217251, 34.199192, 32.980560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440055, 0.484973, -0.755746,
		0.582957, 0.485863, 0.651229,
		0.683017, -0.727144, -0.068912,
		33.422157, 33.981049, 32.959888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489643, 34.848743, 32.941486>,  <32.944042, 34.490051, 33.008125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489643, 34.848743, 32.941486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593018, 34.490086, 32.797684>,  <33.655041, 34.274891, 32.711403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593018, 34.490086, 32.797684>,  <33.489643, 34.848743, 32.941486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593018, 34.490086, 32.797684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327218, 0.431395, -0.840730,
		0.908923, 0.099636, 0.404885,
		0.258433, -0.896644, -0.359502,
		33.670547, 34.221092, 32.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191486, 34.959091, 32.742027>,  <33.489643, 34.848743, 32.941486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191486, 34.959091, 32.742027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031040, 34.654873, 32.537800>,  <33.934772, 34.472343, 32.415264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031040, 34.654873, 32.537800>,  <34.191486, 34.959091, 32.742027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031040, 34.654873, 32.537800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558456, 0.238779, -0.794426,
		0.726109, -0.603784, 0.328953,
		-0.401115, -0.760545, -0.510566,
		33.910706, 34.426708, 32.384628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738064, 34.775070, 32.456627>,  <34.191486, 34.959091, 32.742027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738064, 34.775070, 32.456627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.453697, 34.576004, 32.257866>,  <34.283077, 34.456562, 32.138607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.453697, 34.576004, 32.257866>,  <34.738064, 34.775070, 32.456627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453697, 34.576004, 32.257866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394082, 0.303308, -0.867585,
		0.582487, -0.812606, -0.019506,
		-0.710921, -0.497670, -0.496906,
		34.240421, 34.426704, 32.108795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158630, 34.386497, 31.924307>,  <34.738064, 34.775070, 32.456627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158630, 34.386497, 31.924307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778446, 34.429710, 31.807716>,  <34.550335, 34.455639, 31.737762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778446, 34.429710, 31.807716>,  <35.158630, 34.386497, 31.924307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778446, 34.429710, 31.807716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307773, 0.195379, -0.931184,
		-0.043647, -0.974760, -0.218948,
		-0.950458, 0.108029, -0.291477,
		34.493309, 34.462120, 31.720274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022686, 33.949615, 31.382961>,  <35.158630, 34.386497, 31.924307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022686, 33.949615, 31.382961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743584, 34.234535, 31.352602>,  <34.576122, 34.405487, 31.334387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743584, 34.234535, 31.352602>,  <35.022686, 33.949615, 31.382961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743584, 34.234535, 31.352602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368639, 0.266212, -0.890638,
		-0.614199, -0.649428, -0.448334,
		-0.697757, 0.712302, -0.075898,
		34.534256, 34.448227, 31.329832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934059, 33.969898, 30.725252>,  <35.022686, 33.949615, 31.382961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934059, 33.969898, 30.725252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788189, 34.320572, 30.850750>,  <34.700668, 34.530975, 30.926048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788189, 34.320572, 30.850750>,  <34.934059, 33.969898, 30.725252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788189, 34.320572, 30.850750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306692, 0.431235, -0.848514,
		-0.879179, -0.213206, -0.426132,
		-0.364671, 0.876687, 0.313744,
		34.678787, 34.583576, 30.944874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607468, 34.223579, 30.126921>,  <34.934059, 33.969898, 30.725252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607468, 34.223579, 30.126921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666473, 34.527546, 30.380144>,  <34.701878, 34.709927, 30.532078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666473, 34.527546, 30.380144>,  <34.607468, 34.223579, 30.126921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666473, 34.527546, 30.380144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153033, 0.614818, -0.773679,
		-0.977149, 0.211008, -0.025598,
		0.147515, 0.759917, 0.633061,
		34.710728, 34.755520, 30.570063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400986, 34.738667, 29.727177>,  <34.607468, 34.223579, 30.126921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400986, 34.738667, 29.727177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655113, 34.894485, 29.993896>,  <34.807590, 34.987976, 30.153929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655113, 34.894485, 29.993896>,  <34.400986, 34.738667, 29.727177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655113, 34.894485, 29.993896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455227, 0.508563, -0.730843,
		-0.623805, 0.767866, 0.145770,
		0.635323, 0.389545, 0.666798,
		34.845711, 35.011349, 30.193935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421894, 35.431400, 29.652225>,  <34.400986, 34.738667, 29.727177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421894, 35.431400, 29.652225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747704, 35.422768, 29.884119>,  <34.943188, 35.417587, 30.023256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747704, 35.422768, 29.884119>,  <34.421894, 35.431400, 29.652225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747704, 35.422768, 29.884119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392532, 0.756325, -0.523347,
		-0.427174, 0.653840, 0.624512,
		0.814519, -0.021581, 0.579735,
		34.992058, 35.416294, 30.058039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635555, 36.128780, 29.752596>,  <34.421894, 35.431400, 29.652225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635555, 36.128780, 29.752596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956501, 35.893280, 29.791750>,  <35.149071, 35.751980, 29.815243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956501, 35.893280, 29.791750>,  <34.635555, 36.128780, 29.752596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956501, 35.893280, 29.791750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579589, 0.729495, -0.363199,
		0.142426, 0.348153, 0.926555,
		0.802366, -0.588750, 0.097887,
		35.197212, 35.716656, 29.821115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159622, 36.637131, 29.853165>,  <34.635555, 36.128780, 29.752596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159622, 36.637131, 29.853165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373848, 36.312923, 29.758308>,  <35.502384, 36.118401, 29.701395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373848, 36.312923, 29.758308>,  <35.159622, 36.637131, 29.853165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373848, 36.312923, 29.758308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672586, 0.579188, -0.460619,
		0.510688, 0.087192, 0.855333,
		0.535561, -0.810518, -0.237140,
		35.534515, 36.069767, 29.687166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886501, 36.814613, 30.013866>,  <35.159622, 36.637131, 29.853165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886501, 36.814613, 30.013866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954678, 36.490681, 29.789322>,  <35.995583, 36.296322, 29.654594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954678, 36.490681, 29.789322>,  <35.886501, 36.814613, 30.013866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954678, 36.490681, 29.789322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708040, 0.496861, -0.501806,
		0.685296, -0.311939, 0.658076,
		0.170439, -0.809829, -0.561362,
		36.005810, 36.247730, 29.620913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590420, 36.737064, 29.859447>,  <35.886501, 36.814613, 30.013866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590420, 36.737064, 29.859447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432087, 36.525547, 29.559128>,  <36.337090, 36.398636, 29.378935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432087, 36.525547, 29.559128>,  <36.590420, 36.737064, 29.859447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432087, 36.525547, 29.559128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583035, 0.486953, -0.650344,
		0.709499, -0.695168, 0.115552,
		-0.395830, -0.528789, -0.750800,
		36.313339, 36.366909, 29.333887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177856, 36.521225, 29.567686>,  <36.590420, 36.737064, 29.859447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177856, 36.521225, 29.567686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871555, 36.521320, 29.310434>,  <36.687775, 36.521378, 29.156082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871555, 36.521320, 29.310434>,  <37.177856, 36.521225, 29.567686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871555, 36.521320, 29.310434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527657, 0.571949, -0.628055,
		0.367690, -0.820289, -0.438098,
		-0.765756, 0.000236, -0.643131,
		36.641827, 36.521393, 29.117495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523434, 36.357109, 28.932243>,  <37.177856, 36.521225, 29.567686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523434, 36.357109, 28.932243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174469, 36.523163, 28.829042>,  <36.965092, 36.622795, 28.767122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174469, 36.523163, 28.829042>,  <37.523434, 36.357109, 28.932243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174469, 36.523163, 28.829042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467344, 0.553895, -0.689050,
		-0.143139, -0.721711, -0.677233,
		-0.872410, 0.415131, -0.258003,
		36.912746, 36.647701, 28.751642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636082, 36.477379, 28.227795>,  <37.523434, 36.357109, 28.932243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636082, 36.477379, 28.227795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308590, 36.698700, 28.289169>,  <37.112095, 36.831493, 28.325994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308590, 36.698700, 28.289169>,  <37.636082, 36.477379, 28.227795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308590, 36.698700, 28.289169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380976, 0.723407, -0.575795,
		-0.429588, -0.412962, -0.803067,
		-0.818726, 0.553304, 0.153438,
		37.062973, 36.864693, 28.335201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447472, 36.781013, 27.613604>,  <37.636082, 36.477379, 28.227795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447472, 36.781013, 27.613604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287445, 37.024822, 27.887371>,  <37.191429, 37.171108, 28.051632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287445, 37.024822, 27.887371>,  <37.447472, 36.781013, 27.613604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287445, 37.024822, 27.887371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401862, 0.787831, -0.466721,
		-0.823684, 0.088322, -0.560129,
		-0.400066, 0.609525, 0.684417,
		37.167427, 37.207680, 28.092695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008335, 37.418720, 27.226603>,  <37.447472, 36.781013, 27.613604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008335, 37.418720, 27.226603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127388, 37.511589, 27.597010>,  <37.198818, 37.567310, 27.819254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127388, 37.511589, 27.597010>,  <37.008335, 37.418720, 27.226603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127388, 37.511589, 27.597010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343137, 0.879141, -0.330709,
		-0.890883, 0.416181, 0.181992,
		0.297632, 0.232175, 0.926019,
		37.216679, 37.581242, 27.874815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792446, 38.090336, 27.246872>,  <37.008335, 37.418720, 27.226603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792446, 38.090336, 27.246872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065517, 38.048298, 27.536119>,  <37.229362, 38.023075, 27.709669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065517, 38.048298, 27.536119>,  <36.792446, 38.090336, 27.246872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065517, 38.048298, 27.536119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492244, 0.797513, -0.348812,
		-0.540041, 0.594079, 0.596177,
		0.682680, -0.105092, 0.723121,
		37.270321, 38.016769, 27.753056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041950, 38.736431, 27.343655>,  <36.792446, 38.090336, 27.246872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041950, 38.736431, 27.343655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314465, 38.531437, 27.552734>,  <37.477974, 38.408440, 27.678183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314465, 38.531437, 27.552734>,  <37.041950, 38.736431, 27.343655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314465, 38.531437, 27.552734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716184, 0.614362, -0.331120,
		-0.151432, 0.599935, 0.785586,
		0.681285, -0.512482, 0.522698,
		37.518848, 38.377693, 27.709543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459431, 39.239220, 27.490025>,  <37.041950, 38.736431, 27.343655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459431, 39.239220, 27.490025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696167, 38.926620, 27.569010>,  <37.838207, 38.739063, 27.616402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696167, 38.926620, 27.569010>,  <37.459431, 39.239220, 27.490025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696167, 38.926620, 27.569010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800197, 0.540159, -0.260602,
		0.096997, 0.312245, 0.945037,
		0.591841, -0.781493, 0.197464,
		37.873718, 38.692173, 27.628248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105145, 39.440109, 27.807426>,  <37.459431, 39.239220, 27.490025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105145, 39.440109, 27.807426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168617, 39.085407, 27.633768>,  <38.206699, 38.872585, 27.529573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168617, 39.085407, 27.633768>,  <38.105145, 39.440109, 27.807426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168617, 39.085407, 27.633768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841787, 0.351294, -0.409862,
		0.515961, -0.300421, 0.802204,
		0.158679, -0.886758, -0.434144,
		38.216221, 38.819382, 27.503525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875401, 39.305984, 27.940723>,  <38.105145, 39.440109, 27.807426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875401, 39.305984, 27.940723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777920, 39.097176, 27.613771>,  <38.719433, 38.971889, 27.417601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777920, 39.097176, 27.613771>,  <38.875401, 39.305984, 27.940723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777920, 39.097176, 27.613771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848854, 0.292838, -0.440105,
		0.469103, -0.801088, 0.371754,
		-0.243700, -0.522019, -0.817378,
		38.704811, 38.940571, 27.368559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646843, 39.421856, 28.241068>,  <38.875401, 39.305984, 27.940723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646843, 39.421856, 28.241068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603836, 39.797401, 28.371891>,  <39.578030, 40.022728, 28.450386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603836, 39.797401, 28.371891>,  <39.646843, 39.421856, 28.241068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603836, 39.797401, 28.371891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393043, -0.342308, 0.853430,
		0.913212, -0.036788, 0.405820,
		-0.107520, 0.938867, 0.327059,
		39.571579, 40.079063, 28.470009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802193, 39.313457, 28.879532>,  <39.646843, 39.421856, 28.241068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802193, 39.313457, 28.879532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.594959, 39.653770, 28.844288>,  <39.470619, 39.857956, 28.823141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.594959, 39.653770, 28.844288>,  <39.802193, 39.313457, 28.879532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594959, 39.653770, 28.844288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553709, -0.255086, 0.792678,
		0.651918, 0.459460, 0.603240,
		-0.518082, 0.850780, -0.088112,
		39.439533, 39.909004, 28.817854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814888, 39.612091, 29.551943>,  <39.802193, 39.313457, 28.879532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814888, 39.612091, 29.551943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517448, 39.789684, 29.351971>,  <39.338985, 39.896240, 29.231987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517448, 39.789684, 29.351971>,  <39.814888, 39.612091, 29.551943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517448, 39.789684, 29.351971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577509, -0.049682, 0.814871,
		0.336955, 0.894654, 0.293351,
		-0.743602, 0.443988, -0.499930,
		39.294369, 39.922882, 29.201992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516541, 40.099316, 30.095161>,  <39.814888, 39.612091, 29.551943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516541, 40.099316, 30.095161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247532, 40.055763, 29.802349>,  <39.086128, 40.029633, 29.626661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247532, 40.055763, 29.802349>,  <39.516541, 40.099316, 30.095161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247532, 40.055763, 29.802349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713547, -0.167090, 0.680391,
		-0.196396, 0.979911, 0.034679,
		-0.672517, -0.108881, -0.732029,
		39.045776, 40.023098, 29.582741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036045, 40.591446, 30.269140>,  <39.516541, 40.099316, 30.095161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036045, 40.591446, 30.269140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.832344, 40.333073, 30.041658>,  <38.710121, 40.178047, 29.905169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.832344, 40.333073, 30.041658>,  <39.036045, 40.591446, 30.269140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832344, 40.333073, 30.041658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549696, -0.264318, 0.792445,
		-0.662187, 0.716173, -0.220462,
		-0.509256, -0.645935, -0.568706,
		38.679565, 40.139294, 29.871046>
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
