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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.764637, 31.490095, 48.930981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692364, 31.771242, 49.206177>,  <40.649002, 31.939930, 49.371296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692364, 31.771242, 49.206177>,  <40.764637, 31.490095, 48.930981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692364, 31.771242, 49.206177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982292, 0.164203, 0.090218,
		-0.049559, 0.692110, -0.720088,
		-0.180681, 0.702866, 0.687992,
		40.638161, 31.982101, 49.412575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246326, 32.059845, 48.809711>,  <40.764637, 31.490095, 48.930981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246326, 32.059845, 48.809711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105137, 32.144855, 49.174183>,  <41.020424, 32.195862, 49.392864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105137, 32.144855, 49.174183>,  <41.246326, 32.059845, 48.809711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105137, 32.144855, 49.174183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920792, 0.251662, 0.298006,
		-0.165975, 0.944193, -0.284521,
		-0.352978, 0.212524, 0.911175,
		40.999245, 32.208614, 49.447536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623837, 32.733219, 48.993587>,  <41.246326, 32.059845, 48.809711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623837, 32.733219, 48.993587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478413, 32.570053, 49.328594>,  <41.391159, 32.472153, 49.529598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478413, 32.570053, 49.328594>,  <41.623837, 32.733219, 48.993587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478413, 32.570053, 49.328594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815153, 0.295897, 0.497967,
		-0.450947, 0.863742, 0.224937,
		-0.363557, -0.407915, 0.837516,
		41.369347, 32.447678, 49.579849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775429, 33.191341, 49.543175>,  <41.623837, 32.733219, 48.993587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775429, 33.191341, 49.543175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683594, 32.878925, 49.775475>,  <41.628494, 32.691475, 49.914856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683594, 32.878925, 49.775475>,  <41.775429, 33.191341, 49.543175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683594, 32.878925, 49.775475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743713, 0.244127, 0.622328,
		-0.627840, 0.574787, 0.524821,
		-0.229583, -0.781039, 0.580750,
		41.614719, 32.644615, 49.949699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716476, 33.468235, 50.234352>,  <41.775429, 33.191341, 49.543175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716476, 33.468235, 50.234352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800800, 33.078613, 50.267265>,  <41.851395, 32.844841, 50.287014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800800, 33.078613, 50.267265>,  <41.716476, 33.468235, 50.234352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800800, 33.078613, 50.267265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778423, 0.218194, 0.588600,
		-0.591283, -0.060034, 0.804226,
		0.210813, -0.974057, 0.082282,
		41.864044, 32.786396, 50.291950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681255, 33.230564, 51.005936>,  <41.716476, 33.468235, 50.234352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681255, 33.230564, 51.005936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915611, 32.996513, 50.781662>,  <42.056225, 32.856083, 50.647099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915611, 32.996513, 50.781662>,  <41.681255, 33.230564, 51.005936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915611, 32.996513, 50.781662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758391, 0.152038, 0.633820,
		-0.285621, -0.796561, 0.532833,
		0.585887, -0.585128, -0.560679,
		42.091377, 32.820976, 50.613457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946552, 32.874199, 51.526859>,  <41.681255, 33.230564, 51.005936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946552, 32.874199, 51.526859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181042, 32.846485, 51.203987>,  <42.321735, 32.829857, 51.010265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181042, 32.846485, 51.203987>,  <41.946552, 32.874199, 51.526859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181042, 32.846485, 51.203987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806667, 0.142175, 0.573651,
		0.075017, -0.987414, 0.139235,
		0.586226, -0.069283, -0.807179,
		42.356911, 32.825699, 50.961834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479599, 32.326122, 51.690044>,  <41.946552, 32.874199, 51.526859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479599, 32.326122, 51.690044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650562, 32.512917, 51.380402>,  <42.753139, 32.624992, 51.194614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650562, 32.512917, 51.380402>,  <42.479599, 32.326122, 51.690044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650562, 32.512917, 51.380402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824073, 0.150887, 0.546019,
		0.371788, -0.871294, -0.320344,
		0.427407, 0.466990, -0.774108,
		42.778786, 32.653015, 51.148170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171162, 32.075424, 51.621155>,  <42.479599, 32.326122, 51.690044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171162, 32.075424, 51.621155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203938, 32.419044, 51.419041>,  <43.223602, 32.625217, 51.297771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203938, 32.419044, 51.419041>,  <43.171162, 32.075424, 51.621155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203938, 32.419044, 51.419041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897550, 0.156777, 0.412099,
		0.433233, -0.487284, -0.758198,
		0.081941, 0.859055, -0.505283,
		43.228519, 32.676762, 51.267456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989025, 32.116512, 51.446487>,  <43.171162, 32.075424, 51.621155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989025, 32.116512, 51.446487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850693, 32.489433, 51.404114>,  <43.767693, 32.713184, 51.378689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850693, 32.489433, 51.404114>,  <43.989025, 32.116512, 51.446487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850693, 32.489433, 51.404114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842700, 0.358259, 0.401880,
		0.412625, 0.049710, -0.909544,
		-0.345830, 0.932298, -0.105935,
		43.746944, 32.769123, 51.372334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552353, 32.504547, 51.253941>,  <43.989025, 32.116512, 51.446487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552353, 32.504547, 51.253941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308861, 32.801163, 51.366776>,  <44.162766, 32.979130, 51.434475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308861, 32.801163, 51.366776>,  <44.552353, 32.504547, 51.253941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308861, 32.801163, 51.366776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792858, 0.581435, 0.182511,
		-0.028675, 0.334752, -0.941870,
		-0.608732, 0.741535, 0.282083,
		44.126240, 33.023624, 51.451401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752682, 33.142643, 50.900013>,  <44.552353, 32.504547, 51.253941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752682, 33.142643, 50.900013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555016, 33.273766, 51.222092>,  <44.436417, 33.352440, 51.415340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555016, 33.273766, 51.222092>,  <44.752682, 33.142643, 50.900013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555016, 33.273766, 51.222092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661682, 0.742568, 0.103777,
		-0.563897, 0.584069, -0.583852,
		-0.494163, 0.327805, 0.805200,
		44.406765, 33.372108, 51.463650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560051, 34.011444, 50.939823>,  <44.752682, 33.142643, 50.900013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560051, 34.011444, 50.939823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529316, 33.921352, 51.328331>,  <44.510876, 33.867298, 51.561436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529316, 33.921352, 51.328331>,  <44.560051, 34.011444, 50.939823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529316, 33.921352, 51.328331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679201, 0.701338, 0.216360,
		-0.729920, 0.676313, 0.099086,
		-0.076834, -0.225225, 0.971273,
		44.506268, 33.853786, 51.619713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506042, 34.711311, 51.347057>,  <44.560051, 34.011444, 50.939823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506042, 34.711311, 51.347057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608742, 34.431370, 51.613674>,  <44.670361, 34.263405, 51.773643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608742, 34.431370, 51.613674>,  <44.506042, 34.711311, 51.347057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608742, 34.431370, 51.613674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721097, 0.597912, 0.350030,
		-0.643506, 0.390775, 0.658175,
		0.256748, -0.699854, 0.666546,
		44.685764, 34.221413, 51.813637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788601, 35.159420, 51.719540>,  <44.506042, 34.711311, 51.347057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788601, 35.159420, 51.719540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930523, 34.800396, 51.824223>,  <45.015678, 34.584980, 51.887032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930523, 34.800396, 51.824223>,  <44.788601, 35.159420, 51.719540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930523, 34.800396, 51.824223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871028, 0.419057, 0.256321,
		-0.339736, 0.137013, 0.930487,
		0.354808, -0.897562, 0.261711,
		45.036964, 34.531128, 51.902737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048203, 35.211113, 52.380226>,  <44.788601, 35.159420, 51.719540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048203, 35.211113, 52.380226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225601, 34.883575, 52.234455>,  <45.332039, 34.687054, 52.146992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225601, 34.883575, 52.234455>,  <45.048203, 35.211113, 52.380226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225601, 34.883575, 52.234455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894757, 0.428151, 0.126868,
		0.052144, -0.382338, 0.922550,
		0.443497, -0.818843, -0.364426,
		45.358650, 34.637924, 52.125126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592224, 35.159145, 52.828148>,  <45.048203, 35.211113, 52.380226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592224, 35.159145, 52.828148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697151, 34.927761, 52.519196>,  <45.760109, 34.788933, 52.333824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697151, 34.927761, 52.519196>,  <45.592224, 35.159145, 52.828148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697151, 34.927761, 52.519196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900627, 0.434164, -0.019283,
		0.346495, -0.690571, 0.634864,
		0.262319, -0.578457, -0.772383,
		45.775848, 34.754223, 52.287479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229916, 34.839966, 53.069004>,  <45.592224, 35.159145, 52.828148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229916, 34.839966, 53.069004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225880, 34.829548, 52.669159>,  <46.223457, 34.823296, 52.429253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225880, 34.829548, 52.669159>,  <46.229916, 34.839966, 53.069004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225880, 34.829548, 52.669159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953655, 0.300395, -0.017452,
		0.300732, -0.953459, 0.021807,
		-0.010089, -0.026044, -0.999610,
		46.222855, 34.821735, 52.369274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953278, 34.590843, 52.875191>,  <46.229916, 34.839966, 53.069004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953278, 34.590843, 52.875191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806198, 34.757751, 52.542763>,  <46.717953, 34.857895, 52.343304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806198, 34.757751, 52.542763>,  <46.953278, 34.590843, 52.875191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806198, 34.757751, 52.542763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920888, 0.287807, -0.262930,
		0.129476, -0.862005, -0.490086,
		-0.367697, 0.417271, -0.831074,
		46.695889, 34.882935, 52.293442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447647, 34.385479, 52.313221>,  <46.953278, 34.590843, 52.875191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447647, 34.385479, 52.313221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255486, 34.719742, 52.206718>,  <47.140190, 34.920300, 52.142815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255486, 34.719742, 52.206718>,  <47.447647, 34.385479, 52.313221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.255486, 34.719742, 52.206718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870741, 0.418090, -0.258867,
		-0.105003, -0.356204, -0.928490,
		-0.480402, 0.835655, -0.266261,
		47.111366, 34.970440, 52.126839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.728870, 34.545597, 51.708675>,  <47.447647, 34.385479, 52.313221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.728870, 34.545597, 51.708675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580029, 34.897194, 51.827953>,  <47.490723, 35.108150, 51.899521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580029, 34.897194, 51.827953>,  <47.728870, 34.545597, 51.708675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.580029, 34.897194, 51.827953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819134, 0.462066, -0.339872,
		-0.436530, 0.117795, -0.891945,
		-0.372103, 0.878987, 0.298196,
		47.468399, 35.160889, 51.917412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.377731, 35.289669, 52.089798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.390823, 35.023186, 51.791779>,  <24.398678, 34.863297, 51.612968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.390823, 35.023186, 51.791779>,  <24.377731, 35.289669, 52.089798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390823, 35.023186, 51.791779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852175, -0.370903, 0.369092,
		-0.522233, -0.646989, 0.555588,
		0.032729, -0.666210, -0.745046,
		24.400642, 34.823322, 51.568264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588318, 34.649426, 52.428696>,  <24.377731, 35.289669, 52.089798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588318, 34.649426, 52.428696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.667404, 34.631676, 52.036995>,  <24.714855, 34.621025, 51.801975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.667404, 34.631676, 52.036995>,  <24.588318, 34.649426, 52.428696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667404, 34.631676, 52.036995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826915, -0.528923, 0.190925,
		-0.526421, -0.847510, -0.067886,
		0.197717, -0.044372, -0.979254,
		24.726719, 34.618362, 51.743217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896530, 33.998550, 52.298771>,  <24.588318, 34.649426, 52.428696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896530, 33.998550, 52.298771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.995070, 34.185993, 51.959423>,  <25.054193, 34.298458, 51.755814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.995070, 34.185993, 51.959423>,  <24.896530, 33.998550, 52.298771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995070, 34.185993, 51.959423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891665, -0.452608, 0.008920,
		-0.379796, -0.758655, -0.529337,
		0.246349, 0.468604, -0.848365,
		25.068974, 34.326572, 51.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198309, 33.457031, 51.874466>,  <24.896530, 33.998550, 52.298771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198309, 33.457031, 51.874466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.331455, 33.807030, 51.733852>,  <25.411343, 34.017029, 51.649483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.331455, 33.807030, 51.733852>,  <25.198309, 33.457031, 51.874466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331455, 33.807030, 51.733852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942263, -0.294157, 0.160039,
		0.036628, -0.384509, -0.922394,
		0.332865, 0.875000, -0.351534,
		25.431314, 34.069530, 51.628391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623322, 33.242123, 51.423794>,  <25.198309, 33.457031, 51.874466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623322, 33.242123, 51.423794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.739616, 33.616920, 51.501259>,  <25.809393, 33.841801, 51.547737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.739616, 33.616920, 51.501259>,  <25.623322, 33.242123, 51.423794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739616, 33.616920, 51.501259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883017, -0.340705, 0.322802,
		0.368446, 0.077152, -0.926442,
		0.290739, 0.936999, 0.193658,
		25.826838, 33.898022, 51.559357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252710, 33.269516, 51.231663>,  <25.623322, 33.242123, 51.423794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252710, 33.269516, 51.231663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.287577, 33.601208, 51.452492>,  <26.308496, 33.800220, 51.584988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.287577, 33.601208, 51.452492>,  <26.252710, 33.269516, 51.231663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287577, 33.601208, 51.452492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900271, -0.302839, 0.312730,
		0.426513, 0.469756, -0.772927,
		0.087165, 0.829227, 0.552073,
		26.313726, 33.849976, 51.618114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795113, 33.541096, 51.043850>,  <26.252710, 33.269516, 51.231663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795113, 33.541096, 51.043850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.742088, 33.705849, 51.404469>,  <26.710274, 33.804699, 51.620838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.742088, 33.705849, 51.404469>,  <26.795113, 33.541096, 51.043850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742088, 33.705849, 51.404469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949214, -0.209097, 0.235098,
		0.285342, 0.886924, -0.363244,
		-0.132560, 0.411880, 0.901545,
		26.702320, 33.829414, 51.674931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300777, 34.125092, 51.152542>,  <26.795113, 33.541096, 51.043850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300777, 34.125092, 51.152542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.174833, 33.990601, 51.507576>,  <27.099266, 33.909904, 51.720596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.174833, 33.990601, 51.507576>,  <27.300777, 34.125092, 51.152542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174833, 33.990601, 51.507576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948092, -0.155297, 0.277497,
		0.044537, 0.928887, 0.367675,
		-0.314862, -0.336231, 0.887587,
		27.080374, 33.889732, 51.773853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574579, 34.589775, 51.696453>,  <27.300777, 34.125092, 51.152542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574579, 34.589775, 51.696453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.486177, 34.234711, 51.858055>,  <27.433136, 34.021671, 51.955017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.486177, 34.234711, 51.858055>,  <27.574579, 34.589775, 51.696453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486177, 34.234711, 51.858055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971351, -0.163235, 0.172717,
		-0.087366, 0.430601, 0.898304,
		-0.221007, -0.887658, 0.404004,
		27.419876, 33.968414, 51.979256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956150, 34.551823, 52.209972>,  <27.574579, 34.589775, 51.696453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956150, 34.551823, 52.209972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.840712, 34.169872, 52.181931>,  <27.771448, 33.940701, 52.165104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.840712, 34.169872, 52.181931>,  <27.956150, 34.551823, 52.209972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840712, 34.169872, 52.181931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921726, -0.296898, 0.249546,
		-0.259101, 0.007398, 0.965822,
		-0.288597, -0.954880, -0.070108,
		27.754133, 33.883408, 52.160900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069447, 34.230709, 52.942387>,  <27.956150, 34.551823, 52.209972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069447, 34.230709, 52.942387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.094210, 33.966755, 52.642860>,  <28.109068, 33.808384, 52.463146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.094210, 33.966755, 52.642860>,  <28.069447, 34.230709, 52.942387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094210, 33.966755, 52.642860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977951, -0.109820, 0.177629,
		-0.199449, -0.743298, 0.638536,
		0.061908, -0.659884, -0.748812,
		28.112782, 33.768791, 52.418217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559141, 33.850079, 53.178696>,  <28.069447, 34.230709, 52.942387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559141, 33.850079, 53.178696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536543, 33.719986, 52.801117>,  <28.522984, 33.641930, 52.574570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536543, 33.719986, 52.801117>,  <28.559141, 33.850079, 53.178696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536543, 33.719986, 52.801117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947491, -0.315527, 0.052005,
		-0.314754, -0.891442, 0.325977,
		-0.056495, -0.325229, -0.943946,
		28.519594, 33.622417, 52.517933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972322, 33.272705, 53.203762>,  <28.559141, 33.850079, 53.178696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972322, 33.272705, 53.203762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.947878, 33.335770, 52.809521>,  <28.933210, 33.373608, 52.572975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.947878, 33.335770, 52.809521>,  <28.972322, 33.272705, 53.203762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947878, 33.335770, 52.809521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909380, -0.398254, -0.120092,
		-0.411453, -0.903624, -0.119036,
		-0.061112, 0.157661, -0.985601,
		28.929544, 33.383068, 52.513840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295567, 32.682720, 52.981491>,  <28.972322, 33.272705, 53.203762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295567, 32.682720, 52.981491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314581, 32.960495, 52.694302>,  <29.325991, 33.127159, 52.521988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314581, 32.960495, 52.694302>,  <29.295567, 32.682720, 52.981491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314581, 32.960495, 52.694302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893811, -0.350457, -0.279789,
		-0.445917, -0.628436, -0.637359,
		0.047537, 0.694441, -0.717978,
		29.328842, 33.168827, 52.478909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769508, 32.478188, 52.391552>,  <29.295567, 32.682720, 52.981491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769508, 32.478188, 52.391552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.751377, 32.873001, 52.329952>,  <29.740498, 33.109890, 52.292992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.751377, 32.873001, 52.329952>,  <29.769508, 32.478188, 52.391552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751377, 32.873001, 52.329952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935574, -0.012099, -0.352924,
		-0.350210, -0.160071, -0.922892,
		-0.045327, 0.987031, -0.153996,
		29.737780, 33.169109, 52.283752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004112, 32.600471, 51.715527>,  <29.769508, 32.478188, 52.391552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004112, 32.600471, 51.715527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.051815, 32.953529, 51.897392>,  <30.080437, 33.165363, 52.006512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.051815, 32.953529, 51.897392>,  <30.004112, 32.600471, 51.715527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051815, 32.953529, 51.897392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922002, 0.071448, -0.380537,
		-0.368362, 0.464587, -0.805275,
		0.119257, 0.882640, 0.454669,
		30.087593, 33.218323, 52.033794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467010, 32.994747, 51.253109>,  <30.004112, 32.600471, 51.715527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467010, 32.994747, 51.253109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.527935, 33.218811, 51.578815>,  <30.564489, 33.353249, 51.774239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.527935, 33.218811, 51.578815>,  <30.467010, 32.994747, 51.253109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527935, 33.218811, 51.578815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927065, 0.204590, -0.314155,
		-0.342566, 0.802726, -0.488139,
		0.152312, 0.560156, 0.814264,
		30.573629, 33.386856, 51.823093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909597, 33.593197, 51.027893>,  <30.467010, 32.994747, 51.253109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909597, 33.593197, 51.027893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.947886, 33.598652, 51.426018>,  <30.970860, 33.601925, 51.664894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.947886, 33.598652, 51.426018>,  <30.909597, 33.593197, 51.027893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947886, 33.598652, 51.426018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978694, 0.181178, -0.096607,
		-0.181647, 0.983356, 0.003993,
		0.095722, 0.013641, 0.995315,
		30.976603, 33.602745, 51.724613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326242, 34.254456, 51.272049>,  <30.909597, 33.593197, 51.027893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326242, 34.254456, 51.272049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381689, 33.969933, 51.547680>,  <31.414957, 33.799221, 51.713058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381689, 33.969933, 51.547680>,  <31.326242, 34.254456, 51.272049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381689, 33.969933, 51.547680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987811, 0.149059, -0.044840,
		-0.070819, 0.686897, 0.723296,
		0.138615, -0.711304, 0.689081,
		31.423273, 33.756542, 51.754402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885578, 34.528122, 51.707771>,  <31.326242, 34.254456, 51.272049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885578, 34.528122, 51.707771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.862139, 34.132797, 51.764057>,  <31.848076, 33.895603, 51.797829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.862139, 34.132797, 51.764057>,  <31.885578, 34.528122, 51.707771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862139, 34.132797, 51.764057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998278, -0.057658, 0.010749,
		-0.002510, 0.141099, 0.989992,
		-0.058598, -0.988315, 0.140711,
		31.844559, 33.836304, 51.806271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274796, 34.322418, 52.270107>,  <31.885578, 34.528122, 51.707771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274796, 34.322418, 52.270107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.254436, 33.993984, 52.042694>,  <32.242222, 33.796925, 51.906246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.254436, 33.993984, 52.042694>,  <32.274796, 34.322418, 52.270107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254436, 33.993984, 52.042694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994885, 0.008051, -0.100688,
		0.087250, -0.570748, 0.816476,
		-0.050894, -0.821086, -0.568532,
		32.239170, 33.747658, 51.872135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.050552, 35.221107, 35.075878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.249432, 34.889164, 34.974586>,  <24.368759, 34.689999, 34.913811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.249432, 34.889164, 34.974586>,  <24.050552, 35.221107, 35.075878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249432, 34.889164, 34.974586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753926, 0.268775, 0.599462,
		-0.429409, -0.488968, 0.759288,
		0.497196, -0.829862, -0.253232,
		24.398590, 34.640205, 34.898617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.175594, 34.815460, 35.598568>,  <24.050552, 35.221107, 35.075878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.175594, 34.815460, 35.598568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.481361, 34.794800, 35.341511>,  <24.664822, 34.782402, 35.187275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.481361, 34.794800, 35.341511>,  <24.175594, 34.815460, 35.598568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481361, 34.794800, 35.341511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627507, 0.288398, 0.723230,
		0.147980, -0.956116, 0.252871,
		0.764419, -0.051654, -0.642647,
		24.710688, 34.779305, 35.148716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524693, 34.909710, 36.202873>,  <24.175594, 34.815460, 35.598568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524693, 34.909710, 36.202873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.559931, 34.967461, 36.597111>,  <24.581074, 35.002113, 36.833652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.559931, 34.967461, 36.597111>,  <24.524693, 34.909710, 36.202873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559931, 34.967461, 36.597111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723081, 0.671264, -0.162965,
		-0.685123, 0.727020, -0.045265,
		0.088094, 0.144381, 0.985593,
		24.586359, 35.010777, 36.892788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717770, 35.517902, 36.165813>,  <24.524693, 34.909710, 36.202873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717770, 35.517902, 36.165813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.788311, 35.374184, 36.532379>,  <24.830635, 35.287952, 36.752319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.788311, 35.374184, 36.532379>,  <24.717770, 35.517902, 36.165813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788311, 35.374184, 36.532379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721026, 0.680941, 0.128220,
		-0.670090, 0.638144, 0.379147,
		0.176354, -0.359293, 0.916410,
		24.841217, 35.266396, 36.807301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559452, 36.021301, 36.671822>,  <24.717770, 35.517902, 36.165813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559452, 36.021301, 36.671822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.840702, 35.774197, 36.812668>,  <25.009453, 35.625935, 36.897175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.840702, 35.774197, 36.812668>,  <24.559452, 36.021301, 36.671822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840702, 35.774197, 36.812668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619171, 0.775404, 0.123997,
		-0.349633, 0.130835, 0.927706,
		0.703124, -0.617763, 0.352116,
		25.051640, 35.588867, 36.918304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.713125, 36.068680, 37.391869>,  <24.559452, 36.021301, 36.671822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.713125, 36.068680, 37.391869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.034887, 35.961662, 37.179695>,  <25.227943, 35.897453, 37.052391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.034887, 35.961662, 37.179695>,  <24.713125, 36.068680, 37.391869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034887, 35.961662, 37.179695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454712, 0.851873, 0.259903,
		0.382323, -0.450259, 0.806905,
		0.804404, -0.267542, -0.530429,
		25.276209, 35.881401, 37.020565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100286, 36.706184, 37.550148>,  <24.713125, 36.068680, 37.391869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100286, 36.706184, 37.550148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.284624, 37.051846, 37.631001>,  <25.395227, 37.259243, 37.679512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.284624, 37.051846, 37.631001>,  <25.100286, 36.706184, 37.550148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284624, 37.051846, 37.631001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127021, -0.161183, 0.978716,
		0.878344, -0.476709, 0.035486,
		0.460844, 0.864157, 0.202127,
		25.422876, 37.311092, 37.691639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683840, 36.560650, 38.078632>,  <25.100286, 36.706184, 37.550148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683840, 36.560650, 38.078632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491772, 36.911503, 38.082188>,  <25.376532, 37.122013, 38.084320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491772, 36.911503, 38.082188>,  <25.683840, 36.560650, 38.078632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491772, 36.911503, 38.082188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307327, -0.177712, 0.934863,
		0.821577, 0.446160, 0.354898,
		-0.480168, 0.877131, 0.008887,
		25.347721, 37.174641, 38.084854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055788, 37.016441, 38.538567>,  <25.683840, 36.560650, 38.078632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055788, 37.016441, 38.538567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.669376, 37.115929, 38.510509>,  <25.437529, 37.175621, 38.493675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.669376, 37.115929, 38.510509>,  <26.055788, 37.016441, 38.538567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669376, 37.115929, 38.510509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140486, -0.277611, 0.950366,
		0.216903, 0.927938, 0.303123,
		-0.966031, 0.248722, -0.070147,
		25.379566, 37.190544, 38.489464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300930, 37.693516, 38.691628>,  <26.055788, 37.016441, 38.538567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300930, 37.693516, 38.691628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.289125, 37.352638, 38.900589>,  <26.282043, 37.148113, 39.025967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.289125, 37.352638, 38.900589>,  <26.300930, 37.693516, 38.691628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289125, 37.352638, 38.900589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734204, 0.336165, 0.589862,
		-0.678288, 0.400955, 0.615761,
		-0.029511, -0.852190, 0.522399,
		26.280272, 37.096981, 39.057308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161179, 37.793900, 39.385391>,  <26.300930, 37.693516, 38.691628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161179, 37.793900, 39.385391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.368347, 37.451813, 39.377796>,  <26.492649, 37.246559, 39.373241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.368347, 37.451813, 39.377796>,  <26.161179, 37.793900, 39.385391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368347, 37.451813, 39.377796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679107, 0.397572, 0.617049,
		-0.520163, -0.332476, 0.786695,
		0.517922, -0.855217, -0.018985,
		26.523724, 37.195248, 39.372101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360723, 37.546387, 40.069820>,  <26.161179, 37.793900, 39.385391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360723, 37.546387, 40.069820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.621637, 37.447464, 39.783222>,  <26.778185, 37.388111, 39.611263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.621637, 37.447464, 39.783222>,  <26.360723, 37.546387, 40.069820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621637, 37.447464, 39.783222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742435, 0.398886, 0.538219,
		0.152695, -0.883023, 0.443796,
		0.652284, -0.247307, -0.716495,
		26.817322, 37.373272, 39.568275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932549, 37.158283, 40.425224>,  <26.360723, 37.546387, 40.069820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932549, 37.158283, 40.425224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.964582, 37.434586, 40.137768>,  <26.983803, 37.600368, 39.965294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.964582, 37.434586, 40.137768>,  <26.932549, 37.158283, 40.425224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964582, 37.434586, 40.137768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546421, 0.572553, 0.611234,
		0.833673, -0.441630, -0.331591,
		0.080086, 0.690758, -0.718638,
		26.988607, 37.641811, 39.922176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085047, 37.408463, 41.055046>,  <26.932549, 37.158283, 40.425224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085047, 37.408463, 41.055046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.916876, 37.045765, 41.068012>,  <26.815973, 36.828144, 41.075790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.916876, 37.045765, 41.068012>,  <27.085047, 37.408463, 41.055046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916876, 37.045765, 41.068012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375768, -0.141493, 0.915848,
		-0.825857, 0.397227, 0.400214,
		-0.420427, -0.906747, 0.032413,
		26.790749, 36.773739, 41.077736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814802, 37.460545, 41.672337>,  <27.085047, 37.408463, 41.055046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814802, 37.460545, 41.672337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.846115, 37.073997, 41.574348>,  <26.864902, 36.842072, 41.515556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.846115, 37.073997, 41.574348>,  <26.814802, 37.460545, 41.672337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846115, 37.073997, 41.574348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378392, -0.198535, 0.904104,
		-0.922329, -0.163470, 0.350123,
		0.078282, -0.966365, -0.244970,
		26.869600, 36.784088, 41.500858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513292, 37.079250, 42.233032>,  <26.814802, 37.460545, 41.672337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513292, 37.079250, 42.233032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.795561, 36.856060, 42.058361>,  <26.964922, 36.722145, 41.953556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.795561, 36.856060, 42.058361>,  <26.513292, 37.079250, 42.233032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795561, 36.856060, 42.058361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495821, -0.051386, 0.866903,
		-0.506150, -0.828265, 0.240394,
		0.705672, -0.557976, -0.436680,
		27.007263, 36.688667, 41.927357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815826, 36.621437, 42.716049>,  <26.513292, 37.079250, 42.233032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815826, 36.621437, 42.716049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097118, 36.646473, 42.432770>,  <27.265894, 36.661495, 42.262802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097118, 36.646473, 42.432770>,  <26.815826, 36.621437, 42.716049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097118, 36.646473, 42.432770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710062, -0.111932, 0.695185,
		-0.035761, -0.991743, -0.123154,
		0.703230, 0.062587, -0.708202,
		27.308088, 36.665249, 42.220310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106985, 35.973480, 42.587608>,  <26.815826, 36.621437, 42.716049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106985, 35.973480, 42.587608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.303480, 36.319420, 42.546188>,  <27.421377, 36.526985, 42.521336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.303480, 36.319420, 42.546188>,  <27.106985, 35.973480, 42.587608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303480, 36.319420, 42.546188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574243, -0.232176, 0.785073,
		0.654927, -0.445121, -0.610686,
		0.491239, 0.864848, -0.103550,
		27.450851, 36.578873, 42.515121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763159, 35.809555, 42.711254>,  <27.106985, 35.973480, 42.587608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763159, 35.809555, 42.711254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.709877, 36.194580, 42.805683>,  <27.677908, 36.425594, 42.862343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.709877, 36.194580, 42.805683>,  <27.763159, 35.809555, 42.711254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709877, 36.194580, 42.805683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517985, -0.135463, 0.844595,
		0.844955, 0.234787, -0.480548,
		-0.133203, 0.962562, 0.236076,
		27.669916, 36.483349, 42.876507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930120, 35.151340, 42.921238>,  <27.763159, 35.809555, 42.711254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930120, 35.151340, 42.921238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.005875, 35.288029, 43.289448>,  <28.051327, 35.370041, 43.510372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.005875, 35.288029, 43.289448>,  <27.930120, 35.151340, 42.921238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005875, 35.288029, 43.289448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945513, -0.189393, 0.264833,
		0.264839, -0.920520, 0.287233,
		0.189384, 0.341720, 0.920522,
		28.062691, 35.390545, 43.565605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583323, 35.163296, 42.825962>,  <27.930120, 35.151340, 42.921238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583323, 35.163296, 42.825962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.315151, 34.882214, 42.730694>,  <28.154247, 34.713562, 42.673534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.315151, 34.882214, 42.730694>,  <28.583323, 35.163296, 42.825962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315151, 34.882214, 42.730694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381185, -0.601596, 0.701983,
		-0.636570, 0.379845, 0.671190,
		-0.670430, -0.702709, -0.238167,
		28.114021, 34.671402, 42.659245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412807, 34.946716, 43.449001>,  <28.583323, 35.163296, 42.825962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412807, 34.946716, 43.449001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.364134, 34.664963, 43.169277>,  <28.334929, 34.495911, 43.001442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.364134, 34.664963, 43.169277>,  <28.412807, 34.946716, 43.449001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364134, 34.664963, 43.169277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524051, -0.643934, 0.557423,
		-0.842949, -0.298642, 0.447493,
		-0.121686, -0.704388, -0.699307,
		28.327629, 34.453648, 42.959484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976244, 34.451164, 43.670181>,  <28.412807, 34.946716, 43.449001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976244, 34.451164, 43.670181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.215567, 34.298740, 43.388237>,  <28.359159, 34.207287, 43.219070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.215567, 34.298740, 43.388237>,  <27.976244, 34.451164, 43.670181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215567, 34.298740, 43.388237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486726, -0.525943, 0.697483,
		-0.636497, -0.760380, -0.129204,
		0.598306, -0.381059, -0.704857,
		28.395060, 34.184422, 43.176781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153986, 33.832527, 43.892250>,  <27.976244, 34.451164, 43.670181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153986, 33.832527, 43.892250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423115, 33.952576, 43.621773>,  <28.584593, 34.024605, 43.459488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423115, 33.952576, 43.621773>,  <28.153986, 33.832527, 43.892250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423115, 33.952576, 43.621773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732486, -0.398482, 0.551975,
		-0.103792, -0.866683, -0.487942,
		0.672823, 0.300121, -0.676192,
		28.624962, 34.042610, 43.418915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618872, 33.279602, 43.953922>,  <28.153986, 33.832527, 43.892250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618872, 33.279602, 43.953922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.804873, 33.588535, 43.780823>,  <28.916473, 33.773895, 43.676964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.804873, 33.588535, 43.780823>,  <28.618872, 33.279602, 43.953922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804873, 33.588535, 43.780823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857123, -0.270383, 0.438445,
		0.221617, -0.574798, -0.787714,
		0.465002, 0.772334, -0.432751,
		28.944372, 33.820236, 43.650997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267090, 33.088650, 43.530720>,  <28.618872, 33.279602, 43.953922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267090, 33.088650, 43.530720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261969, 33.452923, 43.695885>,  <29.258896, 33.671486, 43.794983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261969, 33.452923, 43.695885>,  <29.267090, 33.088650, 43.530720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261969, 33.452923, 43.695885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893232, -0.175179, 0.414064,
		0.449414, 0.374126, -0.811207,
		-0.012805, 0.910682, 0.412909,
		29.258127, 33.726128, 43.819756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845173, 33.487278, 43.278404>,  <29.267090, 33.088650, 43.530720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845173, 33.487278, 43.278404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735699, 33.619358, 43.639748>,  <29.670015, 33.698608, 43.856556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735699, 33.619358, 43.639748>,  <29.845173, 33.487278, 43.278404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735699, 33.619358, 43.639748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957873, 0.008576, 0.287063,
		0.087041, 0.943871, -0.318639,
		-0.273683, 0.330202, 0.903363,
		29.653593, 33.718418, 43.910755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485874, 33.325684, 43.622185>,  <29.845173, 33.487278, 43.278404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485874, 33.325684, 43.622185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390587, 33.411716, 44.001022>,  <30.333414, 33.463337, 44.228325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390587, 33.411716, 44.001022>,  <30.485874, 33.325684, 43.622185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390587, 33.411716, 44.001022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909426, 0.292867, -0.295250,
		-0.340877, -0.931648, 0.125838,
		-0.238216, 0.215084, 0.947096,
		30.319122, 33.476242, 44.285152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757866, 33.994587, 43.433235>,  <30.485874, 33.325684, 43.622185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757866, 33.994587, 43.433235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148640, 34.051250, 43.497150>,  <31.383104, 34.085251, 43.535500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148640, 34.051250, 43.497150>,  <30.757866, 33.994587, 43.433235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148640, 34.051250, 43.497150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210602, 0.515343, 0.830704,
		0.035331, -0.845195, 0.533289,
		0.976934, 0.141661, 0.159792,
		31.441719, 34.093750, 43.545090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962339, 33.736668, 44.168724>,  <30.757866, 33.994587, 43.433235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962339, 33.736668, 44.168724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152864, 34.058857, 44.027676>,  <31.267179, 34.252171, 43.943047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152864, 34.058857, 44.027676>,  <30.962339, 33.736668, 44.168724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152864, 34.058857, 44.027676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411600, 0.558638, 0.720076,
		0.776990, -0.197839, 0.597617,
		0.476311, 0.805471, -0.352625,
		31.295757, 34.300499, 43.921886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369202, 34.013474, 44.789066>,  <30.962339, 33.736668, 44.168724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369202, 34.013474, 44.789066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.268068, 34.272289, 44.501339>,  <31.207388, 34.427578, 44.328701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.268068, 34.272289, 44.501339>,  <31.369202, 34.013474, 44.789066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268068, 34.272289, 44.501339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432053, 0.589719, 0.682321,
		0.865682, 0.483296, 0.130454,
		-0.252832, 0.647036, -0.719319,
		31.192219, 34.466400, 44.285542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636118, 34.721188, 44.966904>,  <31.369202, 34.013474, 44.789066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636118, 34.721188, 44.966904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304871, 34.715027, 44.742767>,  <31.106123, 34.711330, 44.608284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304871, 34.715027, 44.742767>,  <31.636118, 34.721188, 44.966904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304871, 34.715027, 44.742767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475142, 0.549676, 0.687093,
		0.297422, 0.835236, -0.462516,
		-0.828119, -0.015404, -0.560341,
		31.056435, 34.710407, 44.574665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179962, 34.456173, 45.328228>,  <31.636118, 34.721188, 44.966904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179962, 34.456173, 45.328228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.548309, 34.399933, 45.182774>,  <32.769318, 34.366188, 45.095501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.548309, 34.399933, 45.182774>,  <32.179962, 34.456173, 45.328228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548309, 34.399933, 45.182774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330483, -0.213310, 0.919391,
		-0.206816, -0.966817, -0.149971,
		0.920874, -0.140582, -0.363632,
		32.824570, 34.357754, 45.073685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285091, 33.751873, 45.510208>,  <32.179962, 34.456173, 45.328228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285091, 33.751873, 45.510208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583023, 34.018677, 45.517490>,  <32.761784, 34.178761, 45.521858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583023, 34.018677, 45.517490>,  <32.285091, 33.751873, 45.510208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583023, 34.018677, 45.517490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181625, -0.228916, 0.956352,
		0.642062, -0.709012, -0.291649,
		0.744828, 0.667008, 0.018204,
		32.806473, 34.218781, 45.522953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894325, 33.348949, 45.709846>,  <32.285091, 33.751873, 45.510208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894325, 33.348949, 45.709846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.982567, 33.725433, 45.812183>,  <33.035511, 33.951324, 45.873585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.982567, 33.725433, 45.812183>,  <32.894325, 33.348949, 45.709846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982567, 33.725433, 45.812183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205660, -0.301291, 0.931089,
		0.953435, -0.152784, -0.260035,
		0.220602, 0.941212, 0.255840,
		33.048748, 34.007797, 45.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691971, 33.385818, 45.938583>,  <32.894325, 33.348949, 45.709846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691971, 33.385818, 45.938583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.439602, 33.651550, 46.098881>,  <33.288181, 33.810989, 46.195061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.439602, 33.651550, 46.098881>,  <33.691971, 33.385818, 45.938583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439602, 33.651550, 46.098881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208292, -0.352527, 0.912326,
		0.747359, 0.659083, 0.084044,
		-0.630926, 0.664330, 0.400746,
		33.250324, 33.850849, 46.219105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985058, 33.816700, 46.442024>,  <33.691971, 33.385818, 45.938583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985058, 33.816700, 46.442024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592148, 33.773968, 46.503632>,  <33.356403, 33.748329, 46.540596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592148, 33.773968, 46.503632>,  <33.985058, 33.816700, 46.442024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592148, 33.773968, 46.503632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184334, -0.401461, 0.897134,
		-0.034006, 0.909624, 0.414038,
		-0.982275, -0.106830, 0.154023,
		33.297466, 33.741920, 46.549839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711857, 34.126785, 47.047253>,  <33.985058, 33.816700, 46.442024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711857, 34.126785, 47.047253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459797, 33.821796, 46.988541>,  <33.308559, 33.638802, 46.953312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459797, 33.821796, 46.988541>,  <33.711857, 34.126785, 47.047253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459797, 33.821796, 46.988541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211219, -0.350234, 0.912536,
		-0.747191, 0.544033, 0.381750,
		-0.630152, -0.762472, -0.146781,
		33.270752, 33.593056, 46.944508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130169, 34.042000, 47.518757>,  <33.711857, 34.126785, 47.047253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130169, 34.042000, 47.518757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248638, 33.683872, 47.385674>,  <33.319721, 33.468998, 47.305824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248638, 33.683872, 47.385674>,  <33.130169, 34.042000, 47.518757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248638, 33.683872, 47.385674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173019, -0.292279, 0.940552,
		-0.939333, -0.336129, 0.068342,
		0.296172, -0.895316, -0.332704,
		33.337490, 33.415279, 47.285862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693905, 33.549053, 47.853928>,  <33.130169, 34.042000, 47.518757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693905, 33.549053, 47.853928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069202, 33.432941, 47.778629>,  <33.294380, 33.363274, 47.733452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069202, 33.432941, 47.778629>,  <32.693905, 33.549053, 47.853928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069202, 33.432941, 47.778629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196860, 0.000495, 0.980432,
		-0.284504, -0.956943, 0.057608,
		0.938245, -0.290277, -0.188243,
		33.350677, 33.345860, 47.722157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905087, 33.093544, 48.472694>,  <32.693905, 33.549053, 47.853928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905087, 33.093544, 48.472694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.234158, 33.227486, 48.288921>,  <33.431599, 33.307850, 48.178658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.234158, 33.227486, 48.288921>,  <32.905087, 33.093544, 48.472694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234158, 33.227486, 48.288921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463997, 0.071480, 0.882948,
		0.328497, -0.939556, -0.096565,
		0.822676, 0.334851, -0.459432,
		33.480961, 33.327942, 48.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190639, 33.413811, 49.006378>,  <32.905087, 33.093544, 48.472694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190639, 33.413811, 49.006378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170231, 33.282612, 49.383698>,  <33.157986, 33.203892, 49.610088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170231, 33.282612, 49.383698>,  <33.190639, 33.413811, 49.006378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170231, 33.282612, 49.383698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982398, -0.186431, -0.011691,
		0.179695, 0.926100, 0.331735,
		-0.051018, -0.327996, 0.943300,
		33.154926, 33.184212, 49.666687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828758, 33.689545, 49.236523>,  <33.190639, 33.413811, 49.006378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828758, 33.689545, 49.236523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739445, 33.384277, 49.479080>,  <33.685856, 33.201118, 49.624615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739445, 33.384277, 49.479080>,  <33.828758, 33.689545, 49.236523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739445, 33.384277, 49.479080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966581, -0.253742, 0.036560,
		0.125967, 0.594296, 0.794320,
		-0.223280, -0.763169, 0.606399,
		33.672462, 33.155327, 49.660999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302464, 33.713787, 49.735954>,  <33.828758, 33.689545, 49.236523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302464, 33.713787, 49.735954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153759, 33.344269, 49.772591>,  <34.064537, 33.122559, 49.794571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153759, 33.344269, 49.772591>,  <34.302464, 33.713787, 49.735954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153759, 33.344269, 49.772591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909962, -0.343098, 0.232922,
		-0.183750, 0.169933, 0.968173,
		-0.371759, -0.923800, 0.091589,
		34.042233, 33.067127, 49.800068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483425, 33.464058, 50.384312>,  <34.302464, 33.713787, 49.735954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483425, 33.464058, 50.384312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443253, 33.138367, 50.155598>,  <34.419151, 32.942951, 50.018368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443253, 33.138367, 50.155598>,  <34.483425, 33.464058, 50.384312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443253, 33.138367, 50.155598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951193, -0.247121, 0.184832,
		-0.291797, -0.525320, 0.799308,
		-0.100429, -0.814230, -0.571790,
		34.413124, 32.894096, 49.984062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045635, 33.148663, 50.475536>,  <34.483425, 33.464058, 50.384312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045635, 33.148663, 50.475536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900997, 32.894146, 50.202953>,  <34.814213, 32.741436, 50.039406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900997, 32.894146, 50.202953>,  <35.045635, 33.148663, 50.475536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900997, 32.894146, 50.202953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869611, -0.493738, -0.000415,
		-0.336195, -0.592749, 0.731861,
		-0.361594, -0.636295, -0.681453,
		34.792519, 32.703259, 49.998516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062786, 32.417255, 50.678825>,  <35.045635, 33.148663, 50.475536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062786, 32.417255, 50.678825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056118, 32.418571, 50.278885>,  <35.052116, 32.419361, 50.038921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056118, 32.418571, 50.278885>,  <35.062786, 32.417255, 50.678825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056118, 32.418571, 50.278885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861075, -0.508224, -0.016034,
		-0.508204, -0.861218, 0.005621,
		-0.016665, 0.003308, -0.999856,
		35.051117, 32.419559, 49.978928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240665, 31.821783, 50.530922>,  <35.062786, 32.417255, 50.678825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240665, 31.821783, 50.530922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349033, 32.028816, 50.206280>,  <35.414055, 32.153038, 50.011494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349033, 32.028816, 50.206280>,  <35.240665, 31.821783, 50.530922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349033, 32.028816, 50.206280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827061, -0.556553, -0.078856,
		-0.492519, -0.649888, -0.578853,
		0.270915, 0.517585, -0.811610,
		35.430309, 32.184093, 49.962795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537766, 31.263243, 50.105774>,  <35.240665, 31.821783, 50.530922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537766, 31.263243, 50.105774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688328, 31.610722, 49.976974>,  <35.778664, 31.819208, 49.899693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688328, 31.610722, 49.976974>,  <35.537766, 31.263243, 50.105774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688328, 31.610722, 49.976974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893047, -0.432705, -0.123423,
		-0.246550, -0.241106, -0.938659,
		0.376405, 0.868697, -0.322003,
		35.801250, 31.871330, 49.880375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082039, 30.958561, 49.703102>,  <35.537766, 31.263243, 50.105774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082039, 30.958561, 49.703102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162319, 31.348717, 49.739628>,  <36.210487, 31.582809, 49.761543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162319, 31.348717, 49.739628>,  <36.082039, 30.958561, 49.703102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162319, 31.348717, 49.739628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977288, -0.192869, -0.087805,
		-0.068032, 0.106862, -0.991944,
		0.200698, 0.975388, 0.091313,
		36.222530, 31.641333, 49.767021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624699, 31.147888, 49.159798>,  <36.082039, 30.958561, 49.703102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624699, 31.147888, 49.159798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640282, 31.400394, 49.469635>,  <36.649632, 31.551897, 49.655537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640282, 31.400394, 49.469635>,  <36.624699, 31.147888, 49.159798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640282, 31.400394, 49.469635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991493, -0.120767, 0.048557,
		0.124197, 0.766108, -0.630598,
		0.038956, 0.631264, 0.774589,
		36.651970, 31.589773, 49.702011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274502, 31.432428, 49.038834>,  <36.624699, 31.147888, 49.159798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274502, 31.432428, 49.038834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184368, 31.541933, 49.412846>,  <37.130287, 31.607635, 49.637253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184368, 31.541933, 49.412846>,  <37.274502, 31.432428, 49.038834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184368, 31.541933, 49.412846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969658, -0.030372, 0.242572,
		0.094806, 0.961318, -0.258612,
		-0.225334, 0.273763, 0.935028,
		37.116768, 31.624062, 49.693356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870342, 31.862558, 49.231205>,  <37.274502, 31.432428, 49.038834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870342, 31.862558, 49.231205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680843, 31.692253, 49.539566>,  <37.567142, 31.590071, 49.724583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680843, 31.692253, 49.539566>,  <37.870342, 31.862558, 49.231205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680843, 31.692253, 49.539566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879288, -0.179864, 0.441023,
		-0.049114, 0.886778, 0.459578,
		-0.473751, -0.425762, 0.770900,
		37.538719, 31.564524, 49.770836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098381, 31.721926, 48.539494>,  <37.870342, 31.862558, 49.231205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098381, 31.721926, 48.539494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278831, 31.822683, 48.881966>,  <38.387100, 31.883137, 49.087448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278831, 31.822683, 48.881966>,  <38.098381, 31.721926, 48.539494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278831, 31.822683, 48.881966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647029, -0.753064, -0.119365,
		0.614689, 0.607819, -0.502705,
		0.451122, 0.251893, 0.856177,
		38.414169, 31.898251, 49.138821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797897, 31.947044, 48.481007>,  <38.098381, 31.721926, 48.539494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797897, 31.947044, 48.481007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762543, 31.813475, 48.856384>,  <38.741329, 31.733334, 49.081612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762543, 31.813475, 48.856384>,  <38.797897, 31.947044, 48.481007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762543, 31.813475, 48.856384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799336, -0.585934, -0.133203,
		0.594348, 0.738361, 0.318706,
		-0.088389, -0.333922, 0.938447,
		38.736027, 31.713299, 49.137920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545483, 31.938587, 48.852005>,  <38.797897, 31.947044, 48.481007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545483, 31.938587, 48.852005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322392, 31.663691, 49.038181>,  <39.188538, 31.498753, 49.149887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322392, 31.663691, 49.038181>,  <39.545483, 31.938587, 48.852005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322392, 31.663691, 49.038181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824735, -0.522040, 0.217455,
		0.093532, 0.505144, 0.857952,
		-0.557731, -0.687244, 0.465438,
		39.155071, 31.457518, 49.177814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822281, 31.878700, 49.538952>,  <39.545483, 31.938587, 48.852005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822281, 31.878700, 49.538952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662354, 31.558146, 49.361000>,  <39.566395, 31.365812, 49.254227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662354, 31.558146, 49.361000>,  <39.822281, 31.878700, 49.538952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662354, 31.558146, 49.361000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894883, -0.446300, -0.000298,
		-0.198312, -0.398236, 0.895589,
		-0.399820, -0.801389, -0.444881,
		39.542408, 31.317728, 49.227535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012718, 31.208420, 49.905617>,  <39.822281, 31.878700, 49.538952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012718, 31.208420, 49.905617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959293, 31.096323, 49.525379>,  <39.927238, 31.029064, 49.297237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959293, 31.096323, 49.525379>,  <40.012718, 31.208420, 49.905617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959293, 31.096323, 49.525379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829165, -0.556965, 0.047695,
		-0.542813, -0.781828, 0.306757,
		-0.133564, -0.280241, -0.950592,
		39.919224, 31.012251, 49.240200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676849, 31.240025, 50.537239>,  <40.012718, 31.208420, 49.905617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676849, 31.240025, 50.537239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839458, 30.934692, 50.738064>,  <39.937023, 30.751493, 50.858559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839458, 30.934692, 50.738064>,  <39.676849, 31.240025, 50.537239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839458, 30.934692, 50.738064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717414, -0.606963, -0.341926,
		0.565736, -0.221189, -0.794366,
		0.406521, -0.763330, 0.502065,
		39.961414, 30.705694, 50.888683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230785, 31.308613, 51.134632>,  <39.676849, 31.240025, 50.537239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230785, 31.308613, 51.134632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077766, 31.577436, 50.881020>,  <38.985954, 31.738729, 50.728851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077766, 31.577436, 50.881020>,  <39.230785, 31.308613, 51.134632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077766, 31.577436, 50.881020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177136, 0.726847, 0.663563,
		0.906798, 0.141532, -0.397097,
		-0.382544, 0.672058, -0.634033,
		38.963005, 31.779055, 50.690811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641270, 31.824865, 51.184914>,  <39.230785, 31.308613, 51.134632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641270, 31.824865, 51.184914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278645, 31.959915, 51.083603>,  <39.061069, 32.040947, 51.022816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278645, 31.959915, 51.083603>,  <39.641270, 31.824865, 51.184914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278645, 31.959915, 51.083603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014953, 0.574012, 0.818710,
		0.421799, 0.746002, -0.515331,
		-0.906566, 0.337625, -0.253272,
		39.006676, 32.061203, 51.007622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725483, 32.477131, 51.157372>,  <39.641270, 31.824865, 51.184914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725483, 32.477131, 51.157372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331535, 32.442081, 51.217167>,  <39.095165, 32.421051, 51.253044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331535, 32.442081, 51.217167>,  <39.725483, 32.477131, 51.157372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331535, 32.442081, 51.217167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051959, 0.673648, 0.737224,
		-0.165300, 0.733839, -0.658905,
		-0.984874, -0.087627, 0.149484,
		39.036072, 32.415794, 51.262012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550526, 33.150703, 51.422760>,  <39.725483, 32.477131, 51.157372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550526, 33.150703, 51.422760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235428, 32.918812, 51.506069>,  <39.046371, 32.779678, 51.556057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235428, 32.918812, 51.506069>,  <39.550526, 33.150703, 51.422760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235428, 32.918812, 51.506069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270201, 0.629027, 0.728914,
		-0.553585, 0.517919, -0.652154,
		-0.787741, -0.579729, 0.208277,
		38.999107, 32.744892, 51.568554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983524, 33.569393, 51.652382>,  <39.550526, 33.150703, 51.422760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983524, 33.569393, 51.652382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847141, 33.223434, 51.799736>,  <38.765312, 33.015862, 51.888149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847141, 33.223434, 51.799736>,  <38.983524, 33.569393, 51.652382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847141, 33.223434, 51.799736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227267, 0.456074, 0.860434,
		-0.912194, 0.209651, -0.352065,
		-0.340958, -0.864895, 0.368381,
		38.744854, 32.963966, 51.910252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298416, 33.765381, 51.969223>,  <38.983524, 33.569393, 51.652382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298416, 33.765381, 51.969223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439362, 33.420647, 52.115143>,  <38.523930, 33.213806, 52.202694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439362, 33.420647, 52.115143>,  <38.298416, 33.765381, 51.969223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439362, 33.420647, 52.115143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104426, 0.351159, 0.930474,
		-0.930019, -0.365960, 0.033738,
		0.352364, -0.861835, 0.364800,
		38.545071, 33.162094, 52.224583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726452, 33.590065, 52.332767>,  <38.298416, 33.765381, 51.969223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726452, 33.590065, 52.332767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044937, 33.386036, 52.462917>,  <38.236031, 33.263618, 52.541008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044937, 33.386036, 52.462917>,  <37.726452, 33.590065, 52.332767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044937, 33.386036, 52.462917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358353, 0.035716, 0.932903,
		-0.487468, -0.859390, -0.154348,
		0.796215, -0.510071, 0.325375,
		38.283802, 33.233013, 52.560532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494057, 32.934261, 52.641228>,  <37.726452, 33.590065, 52.332767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494057, 32.934261, 52.641228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849842, 33.015804, 52.804832>,  <38.063313, 33.064728, 52.902996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849842, 33.015804, 52.804832>,  <37.494057, 32.934261, 52.641228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849842, 33.015804, 52.804832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425313, 0.041785, 0.904081,
		0.167209, -0.978109, 0.123868,
		0.889467, 0.203853, 0.409015,
		38.116680, 33.076962, 52.927536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431076, 32.695591, 53.307190>,  <37.494057, 32.934261, 52.641228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431076, 32.695591, 53.307190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777012, 32.891045, 53.353294>,  <37.984573, 33.008316, 53.380959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777012, 32.891045, 53.353294>,  <37.431076, 32.695591, 53.307190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777012, 32.891045, 53.353294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226261, 0.174407, 0.958326,
		0.448168, -0.854879, 0.261393,
		0.864842, 0.488634, 0.115262,
		38.036465, 33.037636, 53.387875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768364, 32.407177, 53.893890>,  <37.431076, 32.695591, 53.307190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768364, 32.407177, 53.893890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870758, 32.789848, 53.838406>,  <37.932194, 33.019451, 53.805115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870758, 32.789848, 53.838406>,  <37.768364, 32.407177, 53.893890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870758, 32.789848, 53.838406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335110, 0.222417, 0.915550,
		0.906736, -0.187888, 0.377528,
		0.255989, 0.956676, -0.138710,
		37.947556, 33.076851, 53.796791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979080, 32.686977, 54.592007>,  <37.768364, 32.407177, 53.893890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979080, 32.686977, 54.592007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.890026, 33.005688, 54.367298>,  <37.836594, 33.196915, 54.232475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.890026, 33.005688, 54.367298>,  <37.979080, 32.686977, 54.592007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890026, 33.005688, 54.367298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510101, 0.395854, 0.763608,
		0.830802, 0.456564, 0.318305,
		-0.222634, 0.796774, -0.561770,
		37.823235, 33.244720, 54.198769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007870, 33.272579, 55.072639>,  <37.979080, 32.686977, 54.592007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007870, 33.272579, 55.072639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807663, 33.438286, 54.768570>,  <37.687538, 33.537708, 54.586128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807663, 33.438286, 54.768570>,  <38.007870, 33.272579, 55.072639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807663, 33.438286, 54.768570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657449, 0.389388, 0.645087,
		0.563240, 0.822654, 0.077463,
		-0.500521, 0.414267, -0.760172,
		37.657505, 33.562565, 54.540520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660694, 33.996613, 55.261688>,  <38.007870, 33.272579, 55.072639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660694, 33.996613, 55.261688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.449604, 33.917938, 54.931156>,  <37.322948, 33.870735, 54.732838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.449604, 33.917938, 54.931156>,  <37.660694, 33.996613, 55.261688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449604, 33.917938, 54.931156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770895, 0.519413, 0.368690,
		0.356691, 0.831580, -0.425730,
		-0.527725, -0.196685, -0.826331,
		37.291286, 33.858932, 54.683258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448933, 34.603703, 54.881149>,  <37.660694, 33.996613, 55.261688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448933, 34.603703, 54.881149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178387, 34.335732, 54.758694>,  <37.016060, 34.174950, 54.685219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178387, 34.335732, 54.758694>,  <37.448933, 34.603703, 54.881149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178387, 34.335732, 54.758694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732438, 0.655666, 0.183404,
		0.077860, 0.348278, -0.934152,
		-0.676367, -0.669929, -0.306142,
		36.975475, 34.134754, 54.666851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004726, 34.938847, 54.470814>,  <37.448933, 34.603703, 54.881149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004726, 34.938847, 54.470814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807194, 34.607498, 54.576588>,  <36.688675, 34.408688, 54.640053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807194, 34.607498, 54.576588>,  <37.004726, 34.938847, 54.470814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807194, 34.607498, 54.576588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740334, 0.560043, 0.371829,
		-0.456106, -0.012145, -0.889843,
		-0.493834, -0.828375, 0.264431,
		36.659042, 34.358986, 54.655918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381145, 35.234531, 54.518024>,  <37.004726, 34.938847, 54.470814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381145, 35.234531, 54.518024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384029, 34.886383, 54.714962>,  <36.385761, 34.677494, 54.833126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384029, 34.886383, 54.714962>,  <36.381145, 35.234531, 54.518024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384029, 34.886383, 54.714962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517638, 0.418011, 0.746537,
		-0.855570, -0.260242, -0.447521,
		0.007211, -0.870368, 0.492348,
		36.386192, 34.625271, 54.862667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682148, 35.191261, 54.753674>,  <36.381145, 35.234531, 54.518024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682148, 35.191261, 54.753674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896976, 34.942028, 54.981121>,  <36.025875, 34.792488, 55.117588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896976, 34.942028, 54.981121>,  <35.682148, 35.191261, 54.753674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896976, 34.942028, 54.981121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521603, 0.284457, 0.804372,
		-0.662935, -0.728598, -0.172227,
		0.537073, -0.623081, 0.568615,
		36.058098, 34.755104, 55.151707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176998, 34.886990, 55.145058>,  <35.682148, 35.191261, 54.753674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176998, 34.886990, 55.145058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533852, 34.871067, 55.325062>,  <35.747963, 34.861515, 55.433064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533852, 34.871067, 55.325062>,  <35.176998, 34.886990, 55.145058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533852, 34.871067, 55.325062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423115, 0.275482, 0.863182,
		-0.158326, -0.960482, 0.228926,
		0.892136, -0.039802, 0.450011,
		35.801491, 34.859127, 55.460064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992630, 34.683659, 55.831444>,  <35.176998, 34.886990, 55.145058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992630, 34.683659, 55.831444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353729, 34.852169, 55.866238>,  <35.570389, 34.953278, 55.887112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353729, 34.852169, 55.866238>,  <34.992630, 34.683659, 55.831444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353729, 34.852169, 55.866238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290834, 0.448759, 0.845003,
		0.316946, -0.788125, 0.527640,
		0.902752, 0.421276, 0.086982,
		35.624554, 34.978554, 55.892330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151867, 34.591797, 56.552696>,  <34.992630, 34.683659, 55.831444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151867, 34.591797, 56.552696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393440, 34.871567, 56.399818>,  <35.538383, 35.039429, 56.308090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393440, 34.871567, 56.399818>,  <35.151867, 34.591797, 56.552696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393440, 34.871567, 56.399818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129737, 0.559393, 0.818686,
		0.786403, -0.444849, 0.428579,
		0.603936, 0.699420, -0.382195,
		35.574619, 35.081394, 56.285160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544872, 34.690140, 57.118286>,  <35.151867, 34.591797, 56.552696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544872, 34.690140, 57.118286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569016, 35.004978, 56.872738>,  <35.583500, 35.193882, 56.725410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569016, 35.004978, 56.872738>,  <35.544872, 34.690140, 57.118286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569016, 35.004978, 56.872738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236534, 0.608753, 0.757279,
		0.969747, 0.099496, 0.222916,
		0.060355, 0.787096, -0.613871,
		35.587124, 35.241108, 56.688576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985703, 35.242535, 57.520844>,  <35.544872, 34.690140, 57.118286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985703, 35.242535, 57.520844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772404, 35.454597, 57.257153>,  <35.644424, 35.581837, 57.098938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772404, 35.454597, 57.257153>,  <35.985703, 35.242535, 57.520844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772404, 35.454597, 57.257153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175385, 0.693050, 0.699230,
		0.827581, 0.488479, -0.276583,
		-0.533245, 0.530161, -0.659226,
		35.612431, 35.613647, 57.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207462, 35.938389, 57.681320>,  <35.985703, 35.242535, 57.520844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207462, 35.938389, 57.681320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858349, 35.947060, 57.486271>,  <35.648880, 35.952263, 57.369240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858349, 35.947060, 57.486271>,  <36.207462, 35.938389, 57.681320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858349, 35.947060, 57.486271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324634, 0.720250, 0.613068,
		0.364504, 0.693376, -0.621585,
		-0.872783, 0.021678, -0.487627,
		35.596516, 35.953564, 57.339981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107155, 36.612568, 57.617928>,  <36.207462, 35.938389, 57.681320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107155, 36.612568, 57.617928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749676, 36.433552, 57.605194>,  <35.535187, 36.326141, 57.597553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749676, 36.433552, 57.605194>,  <36.107155, 36.612568, 57.617928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749676, 36.433552, 57.605194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389138, 0.737851, 0.551496,
		-0.223326, 0.505259, -0.833570,
		-0.893699, -0.447537, -0.031834,
		35.481567, 36.299290, 57.595642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773479, 37.236794, 57.779442>,  <36.107155, 36.612568, 57.617928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773479, 37.236794, 57.779442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471088, 36.975082, 57.771305>,  <35.289654, 36.818054, 57.766422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471088, 36.975082, 57.771305>,  <35.773479, 37.236794, 57.779442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471088, 36.975082, 57.771305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594784, 0.673596, 0.438750,
		-0.273363, 0.343785, -0.898379,
		-0.755980, -0.654279, -0.020341,
		35.244293, 36.778797, 57.765202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099880, 37.624035, 57.594646>,  <35.773479, 37.236794, 57.779442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099880, 37.624035, 57.594646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970715, 37.300964, 57.791981>,  <34.893215, 37.107121, 57.910381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970715, 37.300964, 57.791981>,  <35.099880, 37.624035, 57.594646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970715, 37.300964, 57.791981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799302, 0.511863, 0.314821,
		-0.506795, -0.292665, -0.810867,
		-0.322916, -0.807678, 0.493338,
		34.873840, 37.058662, 57.939983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488918, 37.486317, 57.234646>,  <35.099880, 37.624035, 57.594646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488918, 37.486317, 57.234646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497417, 37.342094, 57.607643>,  <34.502518, 37.255562, 57.831444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497417, 37.342094, 57.607643>,  <34.488918, 37.486317, 57.234646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497417, 37.342094, 57.607643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775334, 0.582908, 0.243053,
		-0.631193, -0.728160, -0.267168,
		0.021247, -0.360558, 0.932495,
		34.503792, 37.233929, 57.887390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892036, 37.609497, 57.499092>,  <34.488918, 37.486317, 57.234646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892036, 37.609497, 57.499092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091751, 37.532803, 57.837074>,  <34.211582, 37.486786, 58.039864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091751, 37.532803, 57.837074>,  <33.892036, 37.609497, 57.499092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091751, 37.532803, 57.837074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569559, 0.662263, 0.486838,
		-0.652926, -0.724324, 0.221455,
		0.499290, -0.191738, 0.844954,
		34.241539, 37.475281, 58.090561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391685, 37.476540, 57.909882>,  <33.892036, 37.609497, 57.499092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391685, 37.476540, 57.909882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713745, 37.584984, 58.120872>,  <33.906982, 37.650051, 58.247467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713745, 37.584984, 58.120872>,  <33.391685, 37.476540, 57.909882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713745, 37.584984, 58.120872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548587, 0.678400, 0.488698,
		-0.225347, -0.682842, 0.694943,
		0.805153, 0.271110, 0.527473,
		33.955292, 37.666317, 58.279114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285332, 37.316162, 58.555061>,  <33.391685, 37.476540, 57.909882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285332, 37.316162, 58.555061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557404, 37.607712, 58.586285>,  <33.720646, 37.782642, 58.605019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557404, 37.607712, 58.586285>,  <33.285332, 37.316162, 58.555061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557404, 37.607712, 58.586285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660308, 0.562954, 0.497068,
		0.318358, -0.389639, 0.864193,
		0.680178, 0.728878, 0.078061,
		33.761456, 37.826374, 58.609703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251320, 37.471073, 59.301601>,  <33.285332, 37.316162, 58.555061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251320, 37.471073, 59.301601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410896, 37.783283, 59.109089>,  <33.506641, 37.970608, 58.993584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410896, 37.783283, 59.109089>,  <33.251320, 37.471073, 59.301601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410896, 37.783283, 59.109089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570026, 0.622214, 0.536582,
		0.718273, 0.060276, 0.693145,
		0.398941, 0.780523, -0.481279,
		33.530579, 38.017441, 58.964706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458870, 38.043266, 59.847576>,  <33.251320, 37.471073, 59.301601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458870, 38.043266, 59.847576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445126, 38.215717, 59.486923>,  <33.436878, 38.319187, 59.270531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445126, 38.215717, 59.486923>,  <33.458870, 38.043266, 59.847576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445126, 38.215717, 59.486923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526118, 0.759239, 0.383088,
		0.849717, 0.487529, 0.200740,
		-0.034357, 0.431129, -0.901636,
		33.434818, 38.345055, 59.216431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501053, 38.777687, 59.965321>,  <33.458870, 38.043266, 59.847576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501053, 38.777687, 59.965321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334976, 38.769108, 59.601528>,  <33.235329, 38.763962, 59.383251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334976, 38.769108, 59.601528>,  <33.501053, 38.777687, 59.965321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334976, 38.769108, 59.601528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493275, 0.845312, 0.205253,
		0.764392, 0.533843, -0.361548,
		-0.415193, -0.021449, -0.909480,
		33.210419, 38.762672, 59.328686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542591, 39.433273, 59.777695>,  <33.501053, 38.777687, 59.965321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542591, 39.433273, 59.777695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264591, 39.272285, 59.539371>,  <33.097790, 39.175694, 59.396378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264591, 39.272285, 59.539371>,  <33.542591, 39.433273, 59.777695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264591, 39.272285, 59.539371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572207, 0.811372, 0.119392,
		0.435370, 0.423904, -0.794203,
		-0.695004, -0.402469, -0.595808,
		33.056091, 39.151546, 59.360630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404152, 39.939281, 59.404747>,  <33.542591, 39.433273, 59.777695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404152, 39.939281, 59.404747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097435, 39.684708, 59.371349>,  <32.913403, 39.531963, 59.351311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097435, 39.684708, 59.371349>,  <33.404152, 39.939281, 59.404747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097435, 39.684708, 59.371349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641460, 0.764542, 0.063284,
		0.023557, 0.102084, -0.994497,
		-0.766795, -0.636439, -0.083493,
		32.867397, 39.493774, 59.346302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987385, 40.266647, 58.939365>,  <33.404152, 39.939281, 59.404747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987385, 40.266647, 58.939365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740494, 40.008137, 59.118855>,  <32.592358, 39.853031, 59.226547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740494, 40.008137, 59.118855>,  <32.987385, 40.266647, 58.939365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740494, 40.008137, 59.118855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717626, 0.696252, 0.015673,
		-0.322554, -0.312343, -0.893533,
		-0.617228, -0.646278, 0.448724,
		32.555325, 39.814255, 59.253471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368744, 40.361603, 58.597973>,  <32.987385, 40.266647, 58.939365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368744, 40.361603, 58.597973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272175, 40.180729, 58.941425>,  <32.214233, 40.072205, 59.147495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272175, 40.180729, 58.941425>,  <32.368744, 40.361603, 58.597973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272175, 40.180729, 58.941425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704482, 0.690181, 0.165392,
		-0.667398, -0.564959, -0.485182,
		-0.241424, -0.452185, 0.858629,
		32.199749, 40.045074, 59.199013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723532, 40.389969, 58.569122>,  <32.368744, 40.361603, 58.597973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723532, 40.389969, 58.569122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803921, 40.317505, 58.954201>,  <31.852154, 40.274029, 59.185249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803921, 40.317505, 58.954201>,  <31.723532, 40.389969, 58.569122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803921, 40.317505, 58.954201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803405, 0.531815, 0.267792,
		-0.560491, -0.827258, -0.038662,
		0.200972, -0.181157, 0.962700,
		31.864212, 40.263157, 59.243011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096720, 40.131310, 58.915287>,  <31.723532, 40.389969, 58.569122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096720, 40.131310, 58.915287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.349724, 40.295967, 59.177731>,  <31.501526, 40.394764, 59.335197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.349724, 40.295967, 59.177731>,  <31.096720, 40.131310, 58.915287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349724, 40.295967, 59.177731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718183, 0.628934, 0.297752,
		-0.290079, -0.659536, 0.693445,
		0.632509, 0.411649, 0.656108,
		31.539476, 40.419460, 59.374561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643215, 40.310799, 59.499847>,  <31.096720, 40.131310, 58.915287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643215, 40.310799, 59.499847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976980, 40.526340, 59.546131>,  <31.177240, 40.655666, 59.573902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976980, 40.526340, 59.546131>,  <30.643215, 40.310799, 59.499847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976980, 40.526340, 59.546131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547801, 0.787816, 0.281532,
		0.060551, -0.298298, 0.952550,
		0.834415, 0.538855, 0.115705,
		31.227304, 40.687996, 59.580841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522211, 40.621380, 60.091698>,  <30.643215, 40.310799, 59.499847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522211, 40.621380, 60.091698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.830324, 40.827488, 59.941414>,  <31.015192, 40.951153, 59.851242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.830324, 40.827488, 59.941414>,  <30.522211, 40.621380, 60.091698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830324, 40.827488, 59.941414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505016, 0.852647, 0.133988,
		0.389389, 0.086531, 0.917000,
		0.770283, 0.515273, -0.375711,
		31.061409, 40.982071, 59.828701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790934, 40.961212, 60.673138>,  <30.522211, 40.621380, 60.091698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790934, 40.961212, 60.673138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891153, 41.159382, 60.340443>,  <30.951284, 41.278282, 60.140827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891153, 41.159382, 60.340443>,  <30.790934, 40.961212, 60.673138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891153, 41.159382, 60.340443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293565, 0.857566, 0.422375,
		0.922521, 0.138342, 0.360300,
		0.250549, 0.495421, -0.831734,
		30.966318, 41.308010, 60.090923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139597, 41.483242, 60.865410>,  <30.790934, 40.961212, 60.673138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139597, 41.483242, 60.865410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031433, 41.609970, 60.501762>,  <30.966536, 41.686008, 60.283573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031433, 41.609970, 60.501762>,  <31.139597, 41.483242, 60.865410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031433, 41.609970, 60.501762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269503, 0.881637, 0.387407,
		0.924255, 0.349769, -0.153019,
		-0.270410, 0.316824, -0.909121,
		30.950310, 41.705017, 60.229027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450037, 42.096386, 60.658970>,  <31.139597, 41.483242, 60.865410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450037, 42.096386, 60.658970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097294, 42.080135, 60.471066>,  <30.885649, 42.070385, 60.358322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097294, 42.080135, 60.471066>,  <31.450037, 42.096386, 60.658970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097294, 42.080135, 60.471066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246107, 0.889466, 0.385074,
		0.402195, 0.455192, -0.794380,
		-0.881856, -0.040628, -0.469765,
		30.832737, 42.067947, 60.330135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331764, 42.687206, 60.174770>,  <31.450037, 42.096386, 60.658970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331764, 42.687206, 60.174770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995296, 42.528179, 60.321400>,  <30.793415, 42.432762, 60.409378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995296, 42.528179, 60.321400>,  <31.331764, 42.687206, 60.174770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995296, 42.528179, 60.321400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135401, 0.811117, 0.568996,
		-0.523546, 0.428988, -0.736117,
		-0.841169, -0.397567, 0.366572,
		30.742947, 42.408909, 60.431370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812443, 43.230946, 60.198006>,  <31.331764, 42.687206, 60.174770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812443, 43.230946, 60.198006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.739788, 42.948750, 60.472027>,  <30.696196, 42.779430, 60.636440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.739788, 42.948750, 60.472027>,  <30.812443, 43.230946, 60.198006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739788, 42.948750, 60.472027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166222, 0.708640, 0.685711,
		-0.969215, 0.010680, -0.245983,
		-0.181636, -0.705490, 0.685049,
		30.685297, 42.737103, 60.677540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203007, 43.319019, 60.594013>,  <30.812443, 43.230946, 60.198006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203007, 43.319019, 60.594013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442596, 43.111122, 60.837685>,  <30.586349, 42.986385, 60.983887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442596, 43.111122, 60.837685>,  <30.203007, 43.319019, 60.594013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442596, 43.111122, 60.837685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203887, 0.636691, 0.743677,
		-0.774379, -0.569646, 0.275392,
		0.598972, -0.519739, 0.609183,
		30.622288, 42.955200, 61.020439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763706, 43.374306, 61.145912>,  <30.203007, 43.319019, 60.594013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763706, 43.374306, 61.145912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.429836, 43.267933, 60.952999>,  <29.229515, 43.204109, 60.837250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.429836, 43.267933, 60.952999>,  <29.763706, 43.374306, 61.145912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429836, 43.267933, 60.952999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546234, -0.511573, -0.663266,
		-0.070340, -0.817051, 0.572258,
		-0.834674, -0.265932, -0.482286,
		29.179434, 43.188152, 60.808311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666553, 42.645256, 60.794537>,  <29.763706, 43.374306, 61.145912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666553, 42.645256, 60.794537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414091, 42.858727, 60.569386>,  <29.262613, 42.986809, 60.434296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414091, 42.858727, 60.569386>,  <29.666553, 42.645256, 60.794537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414091, 42.858727, 60.569386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449369, -0.339910, -0.826152,
		-0.632227, -0.774371, -0.025282,
		-0.631155, 0.533677, -0.562879,
		29.224745, 43.018829, 60.400520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361273, 42.273048, 60.169712>,  <29.666553, 42.645256, 60.794537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361273, 42.273048, 60.169712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.375124, 42.656437, 60.056480>,  <29.383434, 42.886471, 59.988541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.375124, 42.656437, 60.056480>,  <29.361273, 42.273048, 60.169712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375124, 42.656437, 60.056480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278662, -0.281279, -0.918275,
		-0.959765, -0.047087, -0.276829,
		0.034628, 0.958470, -0.283083,
		29.385511, 42.943977, 59.971554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901058, 42.397125, 59.674698>,  <29.361273, 42.273048, 60.169712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901058, 42.397125, 59.674698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223879, 42.631851, 59.648426>,  <29.417572, 42.772686, 59.632664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223879, 42.631851, 59.648426>,  <28.901058, 42.397125, 59.674698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223879, 42.631851, 59.648426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258383, -0.450985, -0.854313,
		-0.530945, 0.672505, -0.515592,
		0.807054, 0.586813, -0.065684,
		29.465996, 42.807896, 59.628719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217085, 42.385674, 58.933941>,  <28.901058, 42.397125, 59.674698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217085, 42.385674, 58.933941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502781, 42.528389, 59.174793>,  <29.674198, 42.614017, 59.319305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502781, 42.528389, 59.174793>,  <29.217085, 42.385674, 58.933941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502781, 42.528389, 59.174793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695961, -0.270873, -0.665031,
		-0.074173, 0.894053, -0.441779,
		0.714238, 0.356789, 0.602134,
		29.717052, 42.635426, 59.355434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516062, 43.066242, 58.726002>,  <29.217085, 42.385674, 58.933941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516062, 43.066242, 58.726002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760401, 42.822433, 58.928131>,  <29.907005, 42.676147, 59.049408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760401, 42.822433, 58.928131>,  <29.516062, 43.066242, 58.726002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760401, 42.822433, 58.928131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514580, -0.179420, -0.838461,
		0.601724, 0.772200, 0.204049,
		0.610849, -0.609521, 0.505320,
		29.943655, 42.639576, 59.079727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176094, 43.299114, 58.391819>,  <29.516062, 43.066242, 58.726002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176094, 43.299114, 58.391819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121048, 42.917816, 58.499435>,  <30.088020, 42.689037, 58.564007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121048, 42.917816, 58.499435>,  <30.176094, 43.299114, 58.391819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121048, 42.917816, 58.499435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233255, -0.295178, -0.926533,
		0.962629, -0.064748, 0.262969,
		-0.137614, -0.953246, 0.269044,
		30.079763, 42.631844, 58.580147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749844, 42.936249, 58.297501>,  <30.176094, 43.299114, 58.391819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749844, 42.936249, 58.297501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470518, 42.649986, 58.291889>,  <30.302923, 42.478230, 58.288521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470518, 42.649986, 58.291889>,  <30.749844, 42.936249, 58.297501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470518, 42.649986, 58.291889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393696, -0.367635, -0.842525,
		0.597798, -0.593871, 0.538474,
		-0.698313, -0.715655, -0.014033,
		30.261024, 42.435291, 58.287678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116463, 42.309208, 58.235054>,  <30.749844, 42.936249, 58.297501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116463, 42.309208, 58.235054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742867, 42.261467, 58.100342>,  <30.518709, 42.232822, 58.019516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742867, 42.261467, 58.100342>,  <31.116463, 42.309208, 58.235054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742867, 42.261467, 58.100342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355775, -0.397716, -0.845722,
		-0.033000, -0.909712, 0.413926,
		-0.933989, -0.119355, -0.336778,
		30.462669, 42.225662, 57.999310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125849, 41.697002, 57.912094>,  <31.116463, 42.309208, 58.235054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125849, 41.697002, 57.912094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790838, 41.862999, 57.769920>,  <30.589832, 41.962597, 57.684616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790838, 41.862999, 57.769920>,  <31.125849, 41.697002, 57.912094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790838, 41.862999, 57.769920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196342, -0.378478, -0.904546,
		-0.509899, -0.827369, 0.235506,
		-0.837528, 0.414988, -0.355433,
		30.539579, 41.987495, 57.663292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796675, 41.151993, 57.524284>,  <31.125849, 41.697002, 57.912094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796675, 41.151993, 57.524284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636770, 41.497658, 57.402027>,  <30.540829, 41.705055, 57.328674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636770, 41.497658, 57.402027>,  <30.796675, 41.151993, 57.524284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636770, 41.497658, 57.402027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013931, -0.327677, -0.944687,
		-0.916514, -0.381905, 0.118953,
		-0.399759, 0.864162, -0.305641,
		30.516842, 41.756905, 57.310333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287851, 41.009892, 57.040791>,  <30.796675, 41.151993, 57.524284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287851, 41.009892, 57.040791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363380, 41.395164, 56.964249>,  <30.408697, 41.626328, 56.918324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363380, 41.395164, 56.964249>,  <30.287851, 41.009892, 57.040791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363380, 41.395164, 56.964249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247909, -0.235307, -0.939772,
		-0.950204, 0.130010, -0.283214,
		0.188822, 0.963186, -0.191358,
		30.420027, 41.684120, 56.906841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939472, 41.165592, 56.407684>,  <30.287851, 41.009892, 57.040791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939472, 41.165592, 56.407684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.194643, 41.469913, 56.455406>,  <30.347746, 41.652504, 56.484039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.194643, 41.469913, 56.455406>,  <29.939472, 41.165592, 56.407684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194643, 41.469913, 56.455406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247710, -0.056033, -0.967212,
		-0.729170, 0.646564, -0.224203,
		0.637927, 0.760799, 0.119302,
		30.386021, 41.698154, 56.491196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857204, 41.729523, 55.857487>,  <29.939472, 41.165592, 56.407684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857204, 41.729523, 55.857487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233013, 41.813766, 55.965523>,  <30.458498, 41.864311, 56.030342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233013, 41.813766, 55.965523>,  <29.857204, 41.729523, 55.857487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233013, 41.813766, 55.965523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326350, -0.311234, -0.892541,
		-0.103913, 0.926703, -0.361142,
		0.939520, 0.210605, 0.270088,
		30.514870, 41.876949, 56.046551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278711, 42.247543, 55.344486>,  <29.857204, 41.729523, 55.857487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278711, 42.247543, 55.344486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544746, 42.029514, 55.548660>,  <30.704369, 41.898697, 55.671165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544746, 42.029514, 55.548660>,  <30.278711, 42.247543, 55.344486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544746, 42.029514, 55.548660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354314, -0.371364, -0.858225,
		0.657356, 0.751653, -0.053863,
		0.665090, -0.545075, 0.510439,
		30.744274, 41.865993, 55.701794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930744, 42.377575, 55.067741>,  <30.278711, 42.247543, 55.344486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930744, 42.377575, 55.067741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974003, 42.019890, 55.241497>,  <30.999958, 41.805279, 55.345749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974003, 42.019890, 55.241497>,  <30.930744, 42.377575, 55.067741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974003, 42.019890, 55.241497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397499, -0.361603, -0.843349,
		0.911207, 0.263875, 0.316341,
		0.108149, -0.894211, 0.434386,
		31.006447, 41.751625, 55.371811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553034, 42.125362, 54.736782>,  <30.930744, 42.377575, 55.067741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553034, 42.125362, 54.736782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405136, 41.789223, 54.895329>,  <31.316397, 41.587540, 54.990456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405136, 41.789223, 54.895329>,  <31.553034, 42.125362, 54.736782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405136, 41.789223, 54.895329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341691, -0.519682, -0.783056,
		0.864024, -0.154096, 0.479289,
		-0.369744, -0.840348, 0.396365,
		31.294212, 41.537117, 55.014236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980982, 41.642712, 54.510056>,  <31.553034, 42.125362, 54.736782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980982, 41.642712, 54.510056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.670393, 41.421974, 54.631748>,  <31.484039, 41.289532, 54.704765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.670393, 41.421974, 54.631748>,  <31.980982, 41.642712, 54.510056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670393, 41.421974, 54.631748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256182, -0.717537, -0.647697,
		0.575724, -0.424981, 0.698521,
		-0.776474, -0.551844, 0.304231,
		31.437450, 41.256420, 54.723019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198021, 41.008049, 54.741367>,  <31.980982, 41.642712, 54.510056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198021, 41.008049, 54.741367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822548, 40.963600, 54.610809>,  <31.597265, 40.936932, 54.532475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.822548, 40.963600, 54.610809>,  <32.198021, 41.008049, 54.741367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822548, 40.963600, 54.610809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299337, -0.732435, -0.611503,
		-0.171108, -0.671707, 0.720786,
		-0.938680, -0.111125, -0.326392,
		31.540943, 40.930264, 54.512890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174503, 40.383957, 54.597504>,  <32.198021, 41.008049, 54.741367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174503, 40.383957, 54.597504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862360, 40.515621, 54.384830>,  <31.675074, 40.594620, 54.257225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862360, 40.515621, 54.384830>,  <32.174503, 40.383957, 54.597504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862360, 40.515621, 54.384830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173677, -0.702715, -0.689948,
		-0.600727, -0.630750, 0.491203,
		-0.780361, 0.329160, -0.531687,
		31.628252, 40.614368, 54.225323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602325, 39.877373, 54.592289>,  <32.174503, 40.383957, 54.597504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602325, 39.877373, 54.592289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586147, 40.120476, 54.275055>,  <31.576441, 40.266338, 54.084713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586147, 40.120476, 54.275055>,  <31.602325, 39.877373, 54.592289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586147, 40.120476, 54.275055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130449, -0.783732, -0.607245,
		-0.990630, -0.128019, -0.047582,
		-0.040447, 0.607762, -0.793088,
		31.574013, 40.302803, 54.037128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245445, 39.520679, 54.082767>,  <31.602325, 39.877373, 54.592289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245445, 39.520679, 54.082767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405935, 39.804638, 53.851231>,  <31.502230, 39.975014, 53.712307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405935, 39.804638, 53.851231>,  <31.245445, 39.520679, 54.082767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405935, 39.804638, 53.851231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262898, -0.694603, -0.669635,
		-0.877440, 0.116498, -0.465325,
		0.401227, 0.709898, -0.578845,
		31.526304, 40.017609, 53.677578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107784, 39.228176, 53.449051>,  <31.245445, 39.520679, 54.082767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107784, 39.228176, 53.449051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381727, 39.510048, 53.374870>,  <31.546093, 39.679173, 53.330360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381727, 39.510048, 53.374870>,  <31.107784, 39.228176, 53.449051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381727, 39.510048, 53.374870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489405, -0.633388, -0.599418,
		-0.539863, 0.319754, -0.778656,
		0.684858, 0.704682, -0.185454,
		31.587185, 39.721451, 53.319233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194000, 39.277821, 52.701057>,  <31.107784, 39.228176, 53.449051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194000, 39.277821, 52.701057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544632, 39.387108, 52.859528>,  <31.755011, 39.452682, 52.954609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544632, 39.387108, 52.859528>,  <31.194000, 39.277821, 52.701057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544632, 39.387108, 52.859528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469856, -0.663982, -0.581690,
		0.104123, 0.696044, -0.710409,
		0.876581, 0.273222, 0.396176,
		31.807606, 39.469074, 52.978382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679541, 39.310333, 52.101036>,  <31.194000, 39.277821, 52.701057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679541, 39.310333, 52.101036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921431, 39.298141, 52.419376>,  <32.066566, 39.290829, 52.610382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921431, 39.298141, 52.419376>,  <31.679541, 39.310333, 52.101036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921431, 39.298141, 52.419376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632986, -0.588066, -0.503495,
		0.483358, 0.808238, -0.336327,
		0.604726, -0.030477, 0.795850,
		32.102848, 39.288998, 52.658131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387569, 39.537884, 51.931213>,  <31.679541, 39.310333, 52.101036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387569, 39.537884, 51.931213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416668, 39.295040, 52.247726>,  <32.434128, 39.149334, 52.437634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416668, 39.295040, 52.247726>,  <32.387569, 39.537884, 51.931213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416668, 39.295040, 52.247726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710973, -0.524835, -0.468044,
		0.699446, 0.596631, 0.393455,
		0.072750, -0.607107, 0.791282,
		32.438492, 39.112907, 52.485111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076431, 39.359253, 51.920959>,  <32.387569, 39.537884, 51.931213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076431, 39.359253, 51.920959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921402, 39.109600, 52.192326>,  <32.828384, 38.959808, 52.355145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921402, 39.109600, 52.192326>,  <33.076431, 39.359253, 51.920959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921402, 39.109600, 52.192326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693696, -0.682135, -0.231250,
		0.607103, 0.380991, 0.697332,
		-0.387571, -0.624129, 0.678419,
		32.805130, 38.922359, 52.395851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701050, 39.105316, 52.100227>,  <33.076431, 39.359253, 51.920959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701050, 39.105316, 52.100227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427738, 38.848450, 52.239223>,  <33.263752, 38.694328, 52.322620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427738, 38.848450, 52.239223>,  <33.701050, 39.105316, 52.100227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427738, 38.848450, 52.239223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595282, -0.765519, -0.244173,
		0.422811, 0.040017, 0.905334,
		-0.683279, -0.642168, 0.347491,
		33.222755, 38.655800, 52.343472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089264, 38.635010, 52.509914>,  <33.701050, 39.105316, 52.100227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089264, 38.635010, 52.509914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739422, 38.456524, 52.434074>,  <33.529514, 38.349430, 52.388569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739422, 38.456524, 52.434074>,  <34.089264, 38.635010, 52.509914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739422, 38.456524, 52.434074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469889, -0.876484, -0.104784,
		-0.119424, -0.180735, 0.976254,
		-0.874610, -0.446218, -0.189598,
		33.477039, 38.322659, 52.377193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128193, 38.075222, 52.891361>,  <34.089264, 38.635010, 52.509914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128193, 38.075222, 52.891361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864616, 37.988491, 52.603256>,  <33.706470, 37.936455, 52.430393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864616, 37.988491, 52.603256>,  <34.128193, 38.075222, 52.891361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864616, 37.988491, 52.603256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381922, -0.921383, -0.072035,
		-0.648022, -0.322553, 0.689947,
		-0.658940, -0.216826, -0.720267,
		33.666935, 37.923443, 52.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960136, 37.386909, 53.042477>,  <34.128193, 38.075222, 52.891361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960136, 37.386909, 53.042477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837738, 37.452568, 52.667366>,  <33.764297, 37.491962, 52.442299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837738, 37.452568, 52.667366>,  <33.960136, 37.386909, 53.042477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837738, 37.452568, 52.667366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349444, -0.896906, -0.271015,
		-0.885582, -0.410630, 0.217091,
		-0.305997, 0.164145, -0.937775,
		33.745937, 37.501812, 52.386032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599094, 36.785004, 52.728687>,  <33.960136, 37.386909, 53.042477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599094, 36.785004, 52.728687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713573, 36.989304, 52.404408>,  <33.782261, 37.111881, 52.209839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713573, 36.989304, 52.404408>,  <33.599094, 36.785004, 52.728687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713573, 36.989304, 52.404408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519683, -0.793575, -0.316495,
		-0.804997, -0.330724, -0.492546,
		0.286199, 0.510745, -0.810697,
		33.799435, 37.142529, 52.161198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558899, 36.374939, 52.166058>,  <33.599094, 36.785004, 52.728687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558899, 36.374939, 52.166058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.794312, 36.651566, 51.998550>,  <33.935558, 36.817539, 51.898045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.794312, 36.651566, 51.998550>,  <33.558899, 36.374939, 52.166058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794312, 36.651566, 51.998550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570790, -0.722258, -0.390566,
		-0.572562, -0.009170, -0.819810,
		0.588532, 0.691563, -0.418772,
		33.970871, 36.859035, 51.872917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743156, 36.140770, 51.551876>,  <33.558899, 36.374939, 52.166058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743156, 36.140770, 51.551876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033607, 36.414322, 51.580299>,  <34.207878, 36.578453, 51.597355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033607, 36.414322, 51.580299>,  <33.743156, 36.140770, 51.551876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033607, 36.414322, 51.580299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634145, -0.626181, -0.453604,
		-0.265714, 0.374436, -0.888366,
		0.726124, 0.683882, 0.071062,
		34.251446, 36.619488, 51.601620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101395, 35.966457, 51.010044>,  <33.743156, 36.140770, 51.551876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101395, 35.966457, 51.010044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341534, 36.199425, 51.229271>,  <34.485619, 36.339203, 51.360806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341534, 36.199425, 51.229271>,  <34.101395, 35.966457, 51.010044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341534, 36.199425, 51.229271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797054, -0.491847, -0.350417,
		0.065474, 0.647208, -0.759496,
		0.600349, 0.582416, 0.548063,
		34.521637, 36.374149, 51.393688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705708, 36.112953, 50.523945>,  <34.101395, 35.966457, 51.010044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705708, 36.112953, 50.523945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824295, 36.150192, 50.904144>,  <34.895447, 36.172535, 51.132263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824295, 36.150192, 50.904144>,  <34.705708, 36.112953, 50.523945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824295, 36.150192, 50.904144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914946, -0.313040, -0.254717,
		0.273828, 0.945166, -0.177989,
		0.296467, 0.093102, 0.950494,
		34.913235, 36.178123, 51.189293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357910, 36.556316, 50.539398>,  <34.705708, 36.112953, 50.523945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357910, 36.556316, 50.539398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333237, 36.305210, 50.849781>,  <35.318432, 36.154549, 51.036011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333237, 36.305210, 50.849781>,  <35.357910, 36.556316, 50.539398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333237, 36.305210, 50.849781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920021, -0.337192, -0.199656,
		0.386983, 0.701581, 0.598355,
		-0.061686, -0.627762, 0.775957,
		35.314732, 36.116882, 51.082569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989906, 36.636539, 50.745754>,  <35.357910, 36.556316, 50.539398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989906, 36.636539, 50.745754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.834553, 36.304813, 50.906452>,  <35.741341, 36.105778, 51.002872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.834553, 36.304813, 50.906452>,  <35.989906, 36.636539, 50.745754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834553, 36.304813, 50.906452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858684, -0.483911, -0.168796,
		0.334393, 0.279414, 0.900061,
		-0.388386, -0.829312, 0.401745,
		35.718037, 36.056019, 51.026974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450291, 36.509460, 51.168659>,  <35.989906, 36.636539, 50.745754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450291, 36.509460, 51.168659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254776, 36.166294, 51.105331>,  <36.137466, 35.960396, 51.067337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254776, 36.166294, 51.105331>,  <36.450291, 36.509460, 51.168659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254776, 36.166294, 51.105331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865891, -0.454953, -0.207967,
		0.106392, -0.238737, 0.965239,
		-0.488788, -0.857918, -0.158317,
		36.108139, 35.908920, 51.057835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839306, 35.971344, 51.449062>,  <36.450291, 36.509460, 51.168659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839306, 35.971344, 51.449062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608315, 35.772839, 51.189758>,  <36.469719, 35.653736, 51.034176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608315, 35.772839, 51.189758>,  <36.839306, 35.971344, 51.449062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608315, 35.772839, 51.189758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801365, -0.496276, -0.333952,
		-0.155986, -0.712341, 0.684280,
		-0.577480, -0.496266, -0.648257,
		36.435070, 35.623959, 50.995281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913059, 35.161465, 51.614799>,  <36.839306, 35.971344, 51.449062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913059, 35.161465, 51.614799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783649, 35.197418, 51.238022>,  <36.706005, 35.218990, 51.011955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783649, 35.197418, 51.238022>,  <36.913059, 35.161465, 51.614799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783649, 35.197418, 51.238022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649129, -0.703206, -0.290056,
		-0.688450, -0.705282, 0.169159,
		-0.323525, 0.089883, -0.941941,
		36.686592, 35.224384, 50.955441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785755, 34.496738, 51.319622>,  <36.913059, 35.161465, 51.614799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785755, 34.496738, 51.319622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859329, 34.737473, 51.008762>,  <36.903473, 34.881912, 50.822247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859329, 34.737473, 51.008762>,  <36.785755, 34.496738, 51.319622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859329, 34.737473, 51.008762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608920, -0.690423, -0.390554,
		-0.771612, -0.401389, -0.493459,
		0.183931, 0.601833, -0.777153,
		36.914509, 34.918022, 50.775616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839169, 34.061829, 50.706989>,  <36.785755, 34.496738, 51.319622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839169, 34.061829, 50.706989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999313, 34.404591, 50.577110>,  <37.095402, 34.610249, 50.499184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999313, 34.404591, 50.577110>,  <36.839169, 34.061829, 50.706989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999313, 34.404591, 50.577110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586178, -0.511843, -0.628023,
		-0.704347, 0.061110, -0.707221,
		0.400364, 0.856903, -0.324694,
		37.119423, 34.661663, 50.479702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801151, 33.968086, 49.957123>,  <36.839169, 34.061829, 50.706989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801151, 33.968086, 49.957123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078857, 34.249798, 50.016434>,  <37.245480, 34.418823, 50.052021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078857, 34.249798, 50.016434>,  <36.801151, 33.968086, 49.957123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078857, 34.249798, 50.016434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514071, -0.341067, -0.787022,
		-0.503711, 0.622627, -0.598841,
		0.694267, 0.704278, 0.148276,
		37.287136, 34.461082, 50.060917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977177, 34.262718, 49.297592>,  <36.801151, 33.968086, 49.957123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977177, 34.262718, 49.297592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277428, 34.322243, 49.555092>,  <37.457581, 34.357956, 49.709591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277428, 34.322243, 49.555092>,  <36.977177, 34.262718, 49.297592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277428, 34.322243, 49.555092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639164, -0.410390, -0.650422,
		0.167399, 0.899687, -0.403165,
		0.750631, 0.148809, 0.643746,
		37.502617, 34.366886, 49.748215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161423, 34.317741, 49.211533>,  <36.977177, 34.262718, 49.297592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161423, 34.317741, 49.211533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141693, 34.257912, 48.816525>,  <36.129856, 34.222015, 48.579521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141693, 34.257912, 48.816525>,  <36.161423, 34.317741, 49.211533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141693, 34.257912, 48.816525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856162, 0.515499, -0.035317,
		0.514348, 0.843735, -0.153482,
		-0.049322, -0.149571, -0.987520,
		36.126896, 34.213039, 48.520267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961906, 34.920547, 49.070557>,  <36.161423, 34.317741, 49.211533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961906, 34.920547, 49.070557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885239, 34.714420, 48.736439>,  <35.839237, 34.590744, 48.535969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885239, 34.714420, 48.736439>,  <35.961906, 34.920547, 49.070557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885239, 34.714420, 48.736439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831587, 0.537290, -0.140650,
		0.521274, 0.667660, -0.531511,
		-0.191669, -0.515315, -0.835293,
		35.827740, 34.559826, 48.485851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818752, 35.358444, 48.468319>,  <35.961906, 34.920547, 49.070557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818752, 35.358444, 48.468319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.608406, 35.025135, 48.400051>,  <35.482197, 34.825150, 48.359093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.608406, 35.025135, 48.400051>,  <35.818752, 35.358444, 48.468319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608406, 35.025135, 48.400051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798416, 0.552764, -0.238714,
		0.293251, 0.010731, -0.955975,
		-0.525867, -0.833269, -0.170666,
		35.450645, 34.775154, 48.348850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275913, 35.415985, 47.806404>,  <35.818752, 35.358444, 48.468319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275913, 35.415985, 47.806404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158661, 35.139416, 48.070530>,  <35.088310, 34.973476, 48.229004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158661, 35.139416, 48.070530>,  <35.275913, 35.415985, 47.806404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158661, 35.139416, 48.070530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883787, 0.459402, 0.088712,
		-0.364688, -0.557575, -0.745730,
		-0.293127, -0.691418, 0.660316,
		35.070724, 34.931992, 48.268623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550812, 35.257458, 47.595745>,  <35.275913, 35.415985, 47.806404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550812, 35.257458, 47.595745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560909, 35.116768, 47.970051>,  <34.566967, 35.032352, 48.194633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560909, 35.116768, 47.970051>,  <34.550812, 35.257458, 47.595745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560909, 35.116768, 47.970051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960655, 0.250457, 0.120052,
		-0.276593, -0.901975, -0.331568,
		0.025241, -0.351728, 0.935762,
		34.568481, 35.011250, 48.250778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913551, 35.090755, 47.625759>,  <34.550812, 35.257458, 47.595745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913551, 35.090755, 47.625759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042725, 35.069763, 48.003746>,  <34.120228, 35.057167, 48.230537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042725, 35.069763, 48.003746>,  <33.913551, 35.090755, 47.625759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042725, 35.069763, 48.003746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893555, 0.312128, 0.322701,
		-0.311887, -0.948589, 0.053897,
		0.322933, -0.052486, 0.944965,
		34.139606, 35.054016, 48.287235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365875, 34.674870, 48.022160>,  <33.913551, 35.090755, 47.625759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365875, 34.674870, 48.022160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579605, 34.876289, 48.293728>,  <33.707844, 34.997143, 48.456669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579605, 34.876289, 48.293728>,  <33.365875, 34.674870, 48.022160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579605, 34.876289, 48.293728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844260, 0.357379, 0.399381,
		-0.041525, -0.786587, 0.616082,
		0.534323, 0.503549, 0.678924,
		33.739902, 35.027355, 48.497406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974102, 34.565079, 48.608177>,  <33.365875, 34.674870, 48.022160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974102, 34.565079, 48.608177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220177, 34.863785, 48.709278>,  <33.367821, 35.043011, 48.769939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220177, 34.863785, 48.709278>,  <32.974102, 34.565079, 48.608177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220177, 34.863785, 48.709278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759271, 0.474887, 0.444960,
		0.212255, -0.465639, 0.859144,
		0.615187, 0.746768, 0.252750,
		33.404732, 35.087814, 48.785103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917133, 34.695316, 49.343880>,  <32.974102, 34.565079, 48.608177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917133, 34.695316, 49.343880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067352, 35.043243, 49.215885>,  <33.157482, 35.251999, 49.139088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067352, 35.043243, 49.215885>,  <32.917133, 34.695316, 49.343880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067352, 35.043243, 49.215885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706970, 0.492105, 0.507962,
		0.599300, 0.035460, 0.799739,
		0.375543, 0.869813, -0.319988,
		33.180016, 35.304188, 49.119888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929623, 35.164608, 49.885857>,  <32.917133, 34.695316, 49.343880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929623, 35.164608, 49.885857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950226, 35.429874, 49.587177>,  <32.962585, 35.589035, 49.407970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950226, 35.429874, 49.587177>,  <32.929623, 35.164608, 49.885857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950226, 35.429874, 49.587177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661988, 0.582496, 0.471667,
		0.747743, 0.470014, 0.469007,
		0.051505, 0.663163, -0.746701,
		32.965679, 35.628822, 49.363167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055729, 35.790703, 50.177990>,  <32.929623, 35.164608, 49.885857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055729, 35.790703, 50.177990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892647, 35.890289, 49.826584>,  <32.794796, 35.950039, 49.615742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892647, 35.890289, 49.826584>,  <33.055729, 35.790703, 50.177990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892647, 35.890289, 49.826584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548074, 0.702804, 0.453522,
		0.730335, 0.666396, -0.150089,
		-0.407709, 0.248963, -0.878516,
		32.770332, 35.964977, 49.563030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946621, 36.518108, 50.201870>,  <33.055729, 35.790703, 50.177990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946621, 36.518108, 50.201870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704838, 36.378658, 49.915348>,  <32.559769, 36.294987, 49.743435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704838, 36.378658, 49.915348>,  <32.946621, 36.518108, 50.201870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704838, 36.378658, 49.915348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730122, 0.602117, 0.323074,
		0.318666, 0.718273, -0.618495,
		-0.604462, -0.348624, -0.716301,
		32.523499, 36.274071, 49.700459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747002, 37.125378, 49.867985>,  <32.946621, 36.518108, 50.201870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747002, 37.125378, 49.867985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469185, 36.860142, 49.756329>,  <32.302494, 36.701000, 49.689335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469185, 36.860142, 49.756329>,  <32.747002, 37.125378, 49.867985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469185, 36.860142, 49.756329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718392, 0.618143, 0.319080,
		-0.039034, 0.422143, -0.905688,
		-0.694542, -0.663094, -0.279136,
		32.260822, 36.661213, 49.672588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266613, 37.461105, 49.416195>,  <32.747002, 37.125378, 49.867985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266613, 37.461105, 49.416195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075901, 37.146317, 49.572842>,  <31.961475, 36.957443, 49.666828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075901, 37.146317, 49.572842>,  <32.266613, 37.461105, 49.416195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075901, 37.146317, 49.572842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706348, 0.608174, 0.362212,
		-0.523219, -0.103921, -0.845838,
		-0.476776, -0.786972, 0.391612,
		31.932869, 36.910225, 49.690327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617401, 37.506184, 49.154980>,  <32.266613, 37.461105, 49.416195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617401, 37.506184, 49.154980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566280, 37.293789, 49.490055>,  <31.535608, 37.166351, 49.691101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566280, 37.293789, 49.490055>,  <31.617401, 37.506184, 49.154980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566280, 37.293789, 49.490055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686880, 0.656659, 0.311440,
		-0.715446, -0.535589, -0.448644,
		-0.127803, -0.530983, 0.837690,
		31.527939, 37.134495, 49.741364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921310, 37.662773, 49.326057>,  <31.617401, 37.506184, 49.154980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921310, 37.662773, 49.326057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041094, 37.474400, 49.657974>,  <31.112963, 37.361378, 49.857124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041094, 37.474400, 49.657974>,  <30.921310, 37.662773, 49.326057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041094, 37.474400, 49.657974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645903, 0.540048, 0.539590,
		-0.702235, -0.697547, -0.142455,
		0.299457, -0.470931, 0.829789,
		31.130932, 37.333118, 49.906910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250359, 37.616508, 49.701939>,  <30.921310, 37.662773, 49.326057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250359, 37.616508, 49.701939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558664, 37.567089, 49.951950>,  <30.743649, 37.537437, 50.101955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558664, 37.567089, 49.951950>,  <30.250359, 37.616508, 49.701939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558664, 37.567089, 49.951950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400049, 0.669669, 0.625703,
		-0.495862, -0.732311, 0.466734,
		0.770767, -0.123546, 0.625024,
		30.789894, 37.530025, 50.139458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030857, 37.591309, 50.353493>,  <30.250359, 37.616508, 49.701939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030857, 37.591309, 50.353493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411234, 37.708218, 50.394062>,  <30.639460, 37.778362, 50.418404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411234, 37.708218, 50.394062>,  <30.030857, 37.591309, 50.353493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411234, 37.708218, 50.394062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281008, 0.678870, 0.678358,
		0.129412, -0.673580, 0.727697,
		0.950940, 0.292276, 0.101427,
		30.696516, 37.795902, 50.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083931, 37.584156, 51.152241>,  <30.030857, 37.591309, 50.353493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083931, 37.584156, 51.152241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367701, 37.801258, 50.972401>,  <30.537962, 37.931519, 50.864498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367701, 37.801258, 50.972401>,  <30.083931, 37.584156, 51.152241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367701, 37.801258, 50.972401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135312, 0.730947, 0.668885,
		0.691669, -0.413688, 0.591993,
		0.709425, 0.542751, -0.449596,
		30.580528, 37.964085, 50.837521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611326, 37.652439, 51.635902>,  <30.083931, 37.584156, 51.152241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611326, 37.652439, 51.635902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628120, 37.953342, 51.372890>,  <30.638197, 38.133884, 51.215084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628120, 37.953342, 51.372890>,  <30.611326, 37.652439, 51.635902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628120, 37.953342, 51.372890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030003, 0.658767, 0.751749,
		0.998668, -0.011834, 0.050228,
		0.041985, 0.752254, -0.657534,
		30.640717, 38.179020, 51.175629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728460, 38.252998, 52.037346>,  <30.611326, 37.652439, 51.635902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728460, 38.252998, 52.037346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.647421, 38.422626, 51.684273>,  <30.598797, 38.524403, 51.472431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.647421, 38.422626, 51.684273>,  <30.728460, 38.252998, 52.037346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647421, 38.422626, 51.684273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250377, 0.848979, 0.465344,
		0.946712, 0.315282, -0.065827,
		-0.202601, 0.424066, -0.882678,
		30.586641, 38.549847, 51.419468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076052, 38.891972, 52.013992>,  <30.728460, 38.252998, 52.037346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076052, 38.891972, 52.013992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766720, 38.900314, 51.760529>,  <30.581121, 38.905319, 51.608448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766720, 38.900314, 51.760529>,  <31.076052, 38.891972, 52.013992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766720, 38.900314, 51.760529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275737, 0.888922, 0.365769,
		0.570903, 0.457584, -0.681680,
		-0.773330, 0.020854, -0.633661,
		30.534721, 38.906570, 51.570431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946562, 39.607231, 51.920532>,  <31.076052, 38.891972, 52.013992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946562, 39.607231, 51.920532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615227, 39.431232, 51.781822>,  <30.416426, 39.325634, 51.698597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615227, 39.431232, 51.781822>,  <30.946562, 39.607231, 51.920532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615227, 39.431232, 51.781822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497040, 0.862777, 0.092557,
		0.258465, 0.249030, -0.933370,
		-0.828340, -0.439999, -0.346776,
		30.366724, 39.299232, 51.677788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700317, 40.210487, 51.600487>,  <30.946562, 39.607231, 51.920532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700317, 40.210487, 51.600487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411804, 39.940769, 51.663826>,  <30.238695, 39.778938, 51.701832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411804, 39.940769, 51.663826>,  <30.700317, 40.210487, 51.600487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411804, 39.940769, 51.663826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605987, 0.725059, 0.327215,
		-0.335453, 0.140056, -0.931588,
		-0.721285, -0.674295, 0.158351,
		30.195419, 39.738480, 51.711330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024055, 40.523197, 51.431602>,  <30.700317, 40.210487, 51.600487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024055, 40.523197, 51.431602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.888767, 40.217869, 51.651768>,  <29.807594, 40.034672, 51.783867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.888767, 40.217869, 51.651768>,  <30.024055, 40.523197, 51.431602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888767, 40.217869, 51.651768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758076, 0.567549, 0.321261,
		-0.557609, -0.308596, -0.770610,
		-0.338219, -0.763319, 0.550410,
		29.787302, 39.988873, 51.816891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347504, 40.607609, 51.455627>,  <30.024055, 40.523197, 51.431602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347504, 40.607609, 51.455627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.384089, 40.346481, 51.756416>,  <29.406040, 40.189804, 51.936890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.384089, 40.346481, 51.756416>,  <29.347504, 40.607609, 51.455627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384089, 40.346481, 51.756416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689971, 0.502950, 0.520559,
		-0.718036, -0.566448, -0.404427,
		0.091462, -0.652823, 0.751969,
		29.411528, 40.150635, 51.982006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679085, 40.462700, 51.738068>,  <29.347504, 40.607609, 51.455627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679085, 40.462700, 51.738068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.899485, 40.351334, 52.052746>,  <29.031725, 40.284512, 52.241550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.899485, 40.351334, 52.052746>,  <28.679085, 40.462700, 51.738068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899485, 40.351334, 52.052746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637232, 0.468316, 0.612059,
		-0.538830, -0.838548, 0.080623,
		0.550997, -0.278420, 0.786692,
		29.064783, 40.267807, 52.288754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189314, 40.262920, 52.223499>,  <28.679085, 40.462700, 51.738068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189314, 40.262920, 52.223499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530222, 40.339252, 52.418320>,  <28.734768, 40.385052, 52.535213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530222, 40.339252, 52.418320>,  <28.189314, 40.262920, 52.223499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530222, 40.339252, 52.418320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499057, 0.575655, 0.647737,
		-0.156765, -0.795114, 0.585849,
		0.852272, 0.190829, 0.487050,
		28.785904, 40.396500, 52.564434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096891, 40.183632, 52.967484>,  <28.189314, 40.262920, 52.223499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096891, 40.183632, 52.967484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436438, 40.393074, 52.938477>,  <28.640165, 40.518742, 52.921070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436438, 40.393074, 52.938477>,  <28.096891, 40.183632, 52.967484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436438, 40.393074, 52.938477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283086, 0.566158, 0.774163,
		0.446416, -0.636631, 0.628819,
		0.848867, 0.523609, -0.072521,
		28.691097, 40.550156, 52.916721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458361, 40.045460, 53.539085>,  <28.096891, 40.183632, 52.967484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458361, 40.045460, 53.539085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.596193, 40.395679, 53.403633>,  <28.678894, 40.605812, 53.322361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.596193, 40.395679, 53.403633>,  <28.458361, 40.045460, 53.539085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596193, 40.395679, 53.403633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238876, 0.430624, 0.870345,
		0.907855, -0.219016, 0.357535,
		0.344582, 0.875554, -0.338627,
		28.699568, 40.658344, 53.302044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947943, 40.294521, 53.975819>,  <28.458361, 40.045460, 53.539085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947943, 40.294521, 53.975819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818228, 40.624859, 53.791294>,  <28.740398, 40.823063, 53.680580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.818228, 40.624859, 53.791294>,  <28.947943, 40.294521, 53.975819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818228, 40.624859, 53.791294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097170, 0.456008, 0.884655,
		0.940954, 0.331709, -0.067631,
		-0.324288, 0.825848, -0.461315,
		28.720942, 40.872612, 53.652901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306566, 40.895836, 54.217159>,  <28.947943, 40.294521, 53.975819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306566, 40.895836, 54.217159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.977781, 41.057465, 54.056606>,  <28.780510, 41.154442, 53.960274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.977781, 41.057465, 54.056606>,  <29.306566, 40.895836, 54.217159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977781, 41.057465, 54.056606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163819, 0.507228, 0.846099,
		0.545475, 0.761214, -0.350728,
		-0.821961, 0.404070, -0.401382,
		28.731194, 41.178684, 53.936192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450422, 41.661007, 54.435474>,  <29.306566, 40.895836, 54.217159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450422, 41.661007, 54.435474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.066877, 41.634388, 54.325092>,  <28.836750, 41.618416, 54.258862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.066877, 41.634388, 54.325092>,  <29.450422, 41.661007, 54.435474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066877, 41.634388, 54.325092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261194, 0.587567, 0.765861,
		0.111177, 0.806435, -0.580778,
		-0.958863, -0.066549, -0.275960,
		28.779219, 41.614422, 54.242306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253340, 42.335266, 54.636036>,  <29.450422, 41.661007, 54.435474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253340, 42.335266, 54.636036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939211, 42.088303, 54.617821>,  <28.750732, 41.940125, 54.606892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939211, 42.088303, 54.617821>,  <29.253340, 42.335266, 54.636036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939211, 42.088303, 54.617821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400824, 0.451019, 0.797447,
		-0.471813, 0.644506, -0.601668,
		-0.785323, -0.617409, -0.045537,
		28.703613, 41.903080, 54.604160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638367, 42.748722, 54.586506>,  <29.253340, 42.335266, 54.636036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638367, 42.748722, 54.586506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.508642, 42.402378, 54.738880>,  <28.430807, 42.194572, 54.830303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.508642, 42.402378, 54.738880>,  <28.638367, 42.748722, 54.586506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508642, 42.402378, 54.738880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544598, 0.500167, 0.673235,
		-0.773457, 0.010882, -0.633755,
		-0.324310, -0.865861, 0.380931,
		28.411348, 42.142620, 54.853161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031248, 42.907360, 54.797672>,  <28.638367, 42.748722, 54.586506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031248, 42.907360, 54.797672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.138889, 42.573063, 54.989136>,  <28.203474, 42.372482, 55.104015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.138889, 42.573063, 54.989136>,  <28.031248, 42.907360, 54.797672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138889, 42.573063, 54.989136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165737, 0.449393, 0.877825,
		-0.948744, -0.315556, -0.017582,
		0.269102, -0.835745, 0.478658,
		28.219620, 42.322338, 55.132732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580462, 42.846535, 55.343948>,  <28.031248, 42.907360, 54.797672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580462, 42.846535, 55.343948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907104, 42.638168, 55.443386>,  <28.103090, 42.513149, 55.503048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907104, 42.638168, 55.443386>,  <27.580462, 42.846535, 55.343948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907104, 42.638168, 55.443386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022873, 0.401157, 0.915724,
		-0.576742, -0.753471, 0.315673,
		0.816606, -0.520916, 0.248599,
		28.152086, 42.481895, 55.517967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360533, 42.439529, 55.852718>,  <27.580462, 42.846535, 55.343948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360533, 42.439529, 55.852718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.747282, 42.515331, 55.921116>,  <27.979332, 42.560814, 55.962154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.747282, 42.515331, 55.921116>,  <27.360533, 42.439529, 55.852718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747282, 42.515331, 55.921116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191676, 0.096663, 0.976687,
		0.168563, -0.977109, 0.129786,
		0.966875, 0.189510, 0.170994,
		28.037344, 42.572186, 55.972416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600143, 41.862698, 56.180248>,  <27.360533, 42.439529, 55.852718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600143, 41.862698, 56.180248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.725943, 42.231621, 56.270088>,  <27.801422, 42.452972, 56.323994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.725943, 42.231621, 56.270088>,  <27.600143, 41.862698, 56.180248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725943, 42.231621, 56.270088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558229, -0.011676, 0.829604,
		0.767770, -0.386289, 0.511185,
		0.314498, 0.922304, 0.224602,
		27.820292, 42.508312, 56.337467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939163, 41.581326, 56.507446>,  <27.600143, 41.862698, 56.180248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939163, 41.581326, 56.507446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686829, 41.339703, 56.702244>,  <26.535427, 41.194729, 56.819122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686829, 41.339703, 56.702244>,  <26.939163, 41.581326, 56.507446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686829, 41.339703, 56.702244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134066, -0.703053, -0.698385,
		0.764244, -0.375279, 0.524496,
		-0.630838, -0.604054, 0.486993,
		26.497578, 41.158485, 56.848343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255814, 41.030861, 56.886169>,  <26.939163, 41.581326, 56.507446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255814, 41.030861, 56.886169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.893234, 40.891636, 56.790497>,  <26.675686, 40.808102, 56.733093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.893234, 40.891636, 56.790497>,  <27.255814, 41.030861, 56.886169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893234, 40.891636, 56.790497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420656, -0.693930, -0.584388,
		0.037428, -0.630330, 0.775425,
		-0.906448, -0.348060, -0.239180,
		26.621300, 40.787216, 56.718742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343969, 40.388702, 56.744644>,  <27.255814, 41.030861, 56.886169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343969, 40.388702, 56.744644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.982595, 40.422722, 56.576561>,  <26.765772, 40.443134, 56.475712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.982595, 40.422722, 56.576561>,  <27.343969, 40.388702, 56.744644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982595, 40.422722, 56.576561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253905, -0.683612, -0.684257,
		-0.345452, -0.724874, 0.596004,
		-0.903435, 0.085049, -0.420204,
		26.711565, 40.448238, 56.450500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058308, 39.712593, 56.697758>,  <27.343969, 40.388702, 56.744644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058308, 39.712593, 56.697758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.831635, 39.913601, 56.436577>,  <26.695631, 40.034206, 56.279869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.831635, 39.913601, 56.436577>,  <27.058308, 39.712593, 56.697758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831635, 39.913601, 56.436577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044787, -0.810094, -0.584586,
		-0.822721, -0.302028, 0.481569,
		-0.566677, 0.502520, -0.652956,
		26.661631, 40.064358, 56.240692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516901, 39.273300, 56.573490>,  <27.058308, 39.712593, 56.697758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516901, 39.273300, 56.573490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.512028, 39.522903, 56.260960>,  <26.509104, 39.672665, 56.073441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.512028, 39.522903, 56.260960>,  <26.516901, 39.273300, 56.573490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512028, 39.522903, 56.260960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042678, -0.780346, -0.623890,
		-0.999015, -0.040946, -0.017126,
		-0.012181, 0.624006, -0.781325,
		26.508373, 39.710106, 56.026562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940521, 39.015545, 56.050549>,  <26.516901, 39.273300, 56.573490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940521, 39.015545, 56.050549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.202295, 39.242073, 55.850151>,  <26.359360, 39.377991, 55.729912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.202295, 39.242073, 55.850151>,  <25.940521, 39.015545, 56.050549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202295, 39.242073, 55.850151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137978, -0.740912, -0.657276,
		-0.743420, 0.361019, -0.563020,
		0.654437, 0.566317, -0.500996,
		26.398626, 39.411968, 55.699852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874346, 38.868187, 55.322010>,  <25.940521, 39.015545, 56.050549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874346, 38.868187, 55.322010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.234854, 39.038982, 55.351383>,  <26.451159, 39.141460, 55.369007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.234854, 39.038982, 55.351383>,  <25.874346, 38.868187, 55.322010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234854, 39.038982, 55.351383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381036, -0.700504, -0.603412,
		-0.206208, 0.571819, -0.794041,
		0.901271, 0.426987, 0.073434,
		26.505236, 39.167080, 55.373413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990662, 38.831921, 54.572495>,  <25.874346, 38.868187, 55.322010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990662, 38.831921, 54.572495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.329470, 38.870159, 54.781654>,  <26.532755, 38.893101, 54.907150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.329470, 38.870159, 54.781654>,  <25.990662, 38.831921, 54.572495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329470, 38.870159, 54.781654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500972, -0.472455, -0.725130,
		0.177729, 0.876156, -0.448067,
		0.847018, 0.095592, 0.522899,
		26.583574, 38.898838, 54.938522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454294, 39.101727, 54.012257>,  <25.990662, 38.831921, 54.572495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454294, 39.101727, 54.012257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.669172, 38.976097, 54.325378>,  <26.798100, 38.900719, 54.513252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.669172, 38.976097, 54.325378>,  <26.454294, 39.101727, 54.012257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669172, 38.976097, 54.325378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348072, -0.762827, -0.544922,
		0.768290, 0.565200, -0.300465,
		0.537193, -0.314075, 0.782803,
		26.830330, 38.881874, 54.560219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168262, 39.223377, 53.794010>,  <26.454294, 39.101727, 54.012257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168262, 39.223377, 53.794010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.164660, 38.941158, 54.077450>,  <27.162498, 38.771828, 54.247513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.164660, 38.941158, 54.077450>,  <27.168262, 39.223377, 53.794010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164660, 38.941158, 54.077450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475532, -0.626395, -0.617655,
		0.879652, 0.331399, 0.341154,
		-0.009007, -0.705552, 0.708601,
		27.161957, 38.729492, 54.290031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805517, 38.917759, 53.771923>,  <27.168262, 39.223377, 53.794010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805517, 38.917759, 53.771923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.609943, 38.669502, 54.017117>,  <27.492599, 38.520546, 54.164230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.609943, 38.669502, 54.017117>,  <27.805517, 38.917759, 53.771923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609943, 38.669502, 54.017117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290311, -0.778415, -0.556587,
		0.822596, -0.094179, 0.560773,
		-0.488933, -0.620645, 0.612980,
		27.463264, 38.483307, 54.201012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305191, 38.528927, 54.139423>,  <27.805517, 38.917759, 53.771923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305191, 38.528927, 54.139423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967840, 38.315144, 54.117252>,  <27.765430, 38.186874, 54.103951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967840, 38.315144, 54.117252>,  <28.305191, 38.528927, 54.139423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967840, 38.315144, 54.117252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462368, -0.669299, -0.581596,
		0.273743, -0.516131, 0.811587,
		-0.843375, -0.534459, -0.055426,
		27.714828, 38.154804, 54.100624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497732, 37.860134, 54.199444>,  <28.305191, 38.528927, 54.139423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497732, 37.860134, 54.199444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.144506, 37.838516, 54.012993>,  <27.932571, 37.825546, 53.901123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.144506, 37.838516, 54.012993>,  <28.497732, 37.860134, 54.199444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144506, 37.838516, 54.012993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390183, -0.636396, -0.665400,
		-0.260682, -0.769467, 0.583066,
		-0.883064, -0.054044, -0.466130,
		27.879587, 37.822304, 53.873154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547770, 37.273136, 53.881798>,  <28.497732, 37.860134, 54.199444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547770, 37.273136, 53.881798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210169, 37.401314, 53.709759>,  <28.007608, 37.478222, 53.606537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210169, 37.401314, 53.709759>,  <28.547770, 37.273136, 53.881798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210169, 37.401314, 53.709759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245692, -0.481823, -0.841120,
		-0.476717, -0.815591, 0.327950,
		-0.844024, 0.320402, -0.430078,
		27.956968, 37.497448, 53.580730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105312, 36.745373, 53.679981>,  <28.547770, 37.273136, 53.881798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105312, 36.745373, 53.679981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.007263, 37.054760, 53.446175>,  <27.948433, 37.240391, 53.305889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.007263, 37.054760, 53.446175>,  <28.105312, 36.745373, 53.679981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007263, 37.054760, 53.446175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367095, -0.483969, -0.794364,
		-0.897304, -0.409291, -0.165304,
		-0.245124, 0.773469, -0.584516,
		27.933725, 37.286800, 53.270821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592625, 36.505184, 53.223301>,  <28.105312, 36.745373, 53.679981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592625, 36.505184, 53.223301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.768888, 36.813026, 53.038467>,  <27.874647, 36.997734, 52.927567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.768888, 36.813026, 53.038467>,  <27.592625, 36.505184, 53.223301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768888, 36.813026, 53.038467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077270, -0.545367, -0.834628,
		-0.894342, 0.332083, -0.299790,
		0.440661, 0.769607, -0.462084,
		27.901087, 37.043907, 52.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489037, 36.321175, 52.568371>,  <27.592625, 36.505184, 53.223301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489037, 36.321175, 52.568371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755480, 36.617874, 52.537113>,  <27.915346, 36.795895, 52.518360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755480, 36.617874, 52.537113>,  <27.489037, 36.321175, 52.568371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755480, 36.617874, 52.537113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377895, -0.425959, -0.822043,
		-0.643034, 0.518042, -0.564039,
		0.666110, 0.741749, -0.078140,
		27.955313, 36.840401, 52.513672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494356, 36.675907, 51.878277>,  <27.489037, 36.321175, 52.568371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494356, 36.675907, 51.878277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855886, 36.739674, 52.037113>,  <28.072805, 36.777935, 52.132416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855886, 36.739674, 52.037113>,  <27.494356, 36.675907, 51.878277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855886, 36.739674, 52.037113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411316, -0.579515, -0.703549,
		0.117963, 0.799218, -0.589352,
		0.903827, 0.159417, 0.397092,
		28.127035, 36.787498, 52.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901508, 36.965935, 51.239555>,  <27.494356, 36.675907, 51.878277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901508, 36.965935, 51.239555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.179390, 36.857616, 51.506107>,  <28.346119, 36.792625, 51.666039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.179390, 36.857616, 51.506107>,  <27.901508, 36.965935, 51.239555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179390, 36.857616, 51.506107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340776, -0.691955, -0.636451,
		0.633450, 0.669230, -0.388424,
		0.694704, -0.270794, 0.666376,
		28.387800, 36.776379, 51.706020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597744, 36.963512, 50.868782>,  <27.901508, 36.965935, 51.239555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597744, 36.963512, 50.868782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694572, 36.742722, 51.187962>,  <28.752670, 36.610249, 51.379471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694572, 36.742722, 51.187962>,  <28.597744, 36.963512, 50.868782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694572, 36.742722, 51.187962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650055, -0.518273, -0.555717,
		0.720299, 0.653234, 0.233356,
		0.242071, -0.551977, 0.797949,
		28.767193, 36.577129, 51.427345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254456, 36.882370, 50.859020>,  <28.597744, 36.963512, 50.868782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254456, 36.882370, 50.859020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140814, 36.581081, 51.096317>,  <29.072630, 36.400307, 51.238697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140814, 36.581081, 51.096317>,  <29.254456, 36.882370, 50.859020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140814, 36.581081, 51.096317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649055, -0.606500, -0.459222,
		0.705700, 0.254584, 0.661191,
		-0.284102, -0.753223, 0.593246,
		29.055584, 36.355114, 51.274292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879715, 36.649998, 51.146275>,  <29.254456, 36.882370, 50.859020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879715, 36.649998, 51.146275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.642378, 36.332108, 51.197426>,  <29.499975, 36.141373, 51.228119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.642378, 36.332108, 51.197426>,  <29.879715, 36.649998, 51.146275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642378, 36.332108, 51.197426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701212, -0.588326, -0.402707,
		0.395278, -0.149272, 0.906352,
		-0.593344, -0.794726, 0.127881,
		29.464375, 36.093689, 51.235790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258234, 36.152573, 51.568344>,  <29.879715, 36.649998, 51.146275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258234, 36.152573, 51.568344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.962872, 35.965988, 51.373543>,  <29.785654, 35.854038, 51.256664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.962872, 35.965988, 51.373543>,  <30.258234, 36.152573, 51.568344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962872, 35.965988, 51.373543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665188, -0.622507, -0.412323,
		-0.110828, -0.628408, 0.769948,
		-0.738406, -0.466463, -0.487001,
		29.741350, 35.826050, 51.227444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324539, 35.464302, 51.809887>,  <30.258234, 36.152573, 51.568344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324539, 35.464302, 51.809887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122505, 35.432854, 51.466095>,  <30.001284, 35.413986, 51.259819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122505, 35.432854, 51.466095>,  <30.324539, 35.464302, 51.809887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122505, 35.432854, 51.466095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712556, -0.599885, -0.363871,
		-0.486981, -0.796214, 0.359016,
		-0.505087, -0.078621, -0.859480,
		29.970980, 35.409267, 51.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441011, 34.787868, 51.586502>,  <30.324539, 35.464302, 51.809887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441011, 34.787868, 51.586502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310869, 34.906406, 51.227318>,  <30.232784, 34.977528, 51.011806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310869, 34.906406, 51.227318>,  <30.441011, 34.787868, 51.586502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310869, 34.906406, 51.227318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677756, -0.589115, -0.439990,
		-0.659386, -0.751748, -0.009175,
		-0.325356, 0.296341, -0.897956,
		30.213263, 34.995308, 50.957932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249043, 34.204220, 51.250710>,  <30.441011, 34.787868, 51.586502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249043, 34.204220, 51.250710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337454, 34.471718, 50.966759>,  <30.390501, 34.632217, 50.796391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337454, 34.471718, 50.966759>,  <30.249043, 34.204220, 51.250710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337454, 34.471718, 50.966759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584791, -0.673387, -0.452293,
		-0.780491, -0.315159, -0.539915,
		0.221027, 0.668748, -0.709875,
		30.403763, 34.672344, 50.753796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056505, 33.832024, 50.818077>,  <30.249043, 34.204220, 51.250710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056505, 33.832024, 50.818077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.294167, 34.102310, 50.643539>,  <30.436764, 34.264481, 50.538818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.294167, 34.102310, 50.643539>,  <30.056505, 33.832024, 50.818077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294167, 34.102310, 50.643539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598634, -0.733798, -0.321211,
		-0.537233, -0.070360, -0.840494,
		0.594153, 0.675714, -0.436340,
		30.472412, 34.305023, 50.512638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102493, 33.638756, 50.083282>,  <30.056505, 33.832024, 50.818077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102493, 33.638756, 50.083282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417130, 33.882839, 50.121048>,  <30.605911, 34.029289, 50.143707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417130, 33.882839, 50.121048>,  <30.102493, 33.638756, 50.083282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417130, 33.882839, 50.121048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579641, -0.677021, -0.453496,
		-0.212811, 0.411440, -0.886244,
		0.786592, 0.610212, 0.094410,
		30.653107, 34.065903, 50.149372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299364, 33.667511, 49.426945>,  <30.102493, 33.638756, 50.083282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299364, 33.667511, 49.426945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613102, 33.771214, 49.652367>,  <30.801344, 33.833435, 49.787621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613102, 33.771214, 49.652367>,  <30.299364, 33.667511, 49.426945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613102, 33.771214, 49.652367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572488, -0.652361, -0.496671,
		0.238879, 0.712189, -0.660094,
		0.784343, 0.259252, 0.563555,
		30.848404, 33.848988, 49.821434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881884, 33.608612, 48.948158>,  <30.299364, 33.667511, 49.426945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881884, 33.608612, 48.948158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031738, 33.595783, 49.318806>,  <31.121651, 33.588085, 49.541195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031738, 33.595783, 49.318806>,  <30.881884, 33.608612, 48.948158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031738, 33.595783, 49.318806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552441, -0.794905, -0.250868,
		0.744617, 0.605886, -0.280084,
		0.374638, -0.032071, 0.926616,
		31.144129, 33.586163, 49.596790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515532, 33.461662, 48.893879>,  <30.881884, 33.608612, 48.948158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515532, 33.461662, 48.893879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465242, 33.344551, 49.273029>,  <31.435068, 33.274284, 49.500519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465242, 33.344551, 49.273029>,  <31.515532, 33.461662, 48.893879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465242, 33.344551, 49.273029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704167, -0.699366, -0.122619,
		0.698815, 0.652049, 0.294091,
		-0.125724, -0.292777, 0.947879,
		31.427525, 33.256718, 49.557392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135269, 33.284767, 49.092983>,  <31.515532, 33.461662, 48.893879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135269, 33.284767, 49.092983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906237, 33.100925, 49.364548>,  <31.768818, 32.990620, 49.527485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906237, 33.100925, 49.364548>,  <32.135269, 33.284767, 49.092983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906237, 33.100925, 49.364548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638876, -0.769095, 0.018157,
		0.513801, 0.444135, 0.733998,
		-0.572578, -0.459605, 0.678909,
		31.734463, 32.963043, 49.568222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613934, 32.840599, 49.389320>,  <32.135269, 33.284767, 49.092983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613934, 32.840599, 49.389320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.266171, 32.697063, 49.525188>,  <32.057514, 32.610943, 49.606709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.266171, 32.697063, 49.525188>,  <32.613934, 32.840599, 49.389320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266171, 32.697063, 49.525188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391778, -0.919525, 0.031364,
		0.301079, 0.160343, 0.940022,
		-0.869403, -0.358837, 0.339668,
		32.005348, 32.589413, 49.627090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794117, 32.463161, 50.008366>,  <32.613934, 32.840599, 49.389320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794117, 32.463161, 50.008366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444515, 32.322914, 49.873795>,  <32.234753, 32.238766, 49.793053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444515, 32.322914, 49.873795>,  <32.794117, 32.463161, 50.008366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444515, 32.322914, 49.873795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327856, -0.936519, 0.124270,
		-0.358638, -0.001686, 0.933475,
		-0.874008, -0.350614, -0.336424,
		32.182312, 32.217731, 49.772869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601479, 31.939493, 50.326824>,  <32.794117, 32.463161, 50.008366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601479, 31.939493, 50.326824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320065, 31.851881, 50.056396>,  <32.151218, 31.799313, 49.894138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320065, 31.851881, 50.056396>,  <32.601479, 31.939493, 50.326824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320065, 31.851881, 50.056396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285979, -0.958150, 0.012824,
		-0.650584, -0.184319, 0.736727,
		-0.703532, -0.219031, -0.676068,
		32.109005, 31.786171, 49.853577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251801, 31.323223, 50.545010>,  <32.601479, 31.939493, 50.326824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251801, 31.323223, 50.545010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213432, 31.349405, 50.147717>,  <32.190411, 31.365114, 49.909340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213432, 31.349405, 50.147717>,  <32.251801, 31.323223, 50.545010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213432, 31.349405, 50.147717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408419, -0.907384, -0.099241,
		-0.907741, -0.415175, 0.060297,
		-0.095914, 0.065459, -0.993235,
		32.184658, 31.369041, 49.849747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054607, 30.676638, 50.299507>,  <32.251801, 31.323223, 50.545010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054607, 30.676638, 50.299507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221531, 30.831493, 49.970638>,  <32.321686, 30.924408, 49.773315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221531, 30.831493, 49.970638>,  <32.054607, 30.676638, 50.299507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221531, 30.831493, 49.970638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394396, -0.892231, -0.219944,
		-0.818720, -0.232477, -0.525026,
		0.417312, 0.387140, -0.822176,
		32.346725, 30.947636, 49.723984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963757, 30.119221, 49.839062>,  <32.054607, 30.676638, 50.299507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963757, 30.119221, 49.839062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243671, 30.364929, 49.693199>,  <32.411621, 30.512354, 49.605682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243671, 30.364929, 49.693199>,  <31.963757, 30.119221, 49.839062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243671, 30.364929, 49.693199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525283, -0.788429, -0.320091,
		-0.484126, 0.032449, -0.874396,
		0.699786, 0.614270, -0.364654,
		32.453606, 30.549210, 49.583801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055454, 30.022018, 49.078083>,  <31.963757, 30.119221, 49.839062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055454, 30.022018, 49.078083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388000, 30.199160, 49.212372>,  <32.587528, 30.305445, 49.292946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388000, 30.199160, 49.212372>,  <32.055454, 30.022018, 49.078083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388000, 30.199160, 49.212372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553678, -0.608252, -0.568745,
		-0.047664, 0.658719, -0.750878,
		0.831366, 0.442853, 0.335726,
		32.637409, 30.332016, 49.313091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457054, 30.036636, 48.463722>,  <32.055454, 30.022018, 49.078083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457054, 30.036636, 48.463722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718082, 30.067989, 48.765186>,  <32.874699, 30.086802, 48.946064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718082, 30.067989, 48.765186>,  <32.457054, 30.036636, 48.463722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718082, 30.067989, 48.765186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678523, -0.503179, -0.535179,
		0.337278, 0.860620, -0.381545,
		0.652571, 0.078383, 0.753662,
		32.913853, 30.091505, 48.991283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207390, 30.192932, 48.204697>,  <32.457054, 30.036636, 48.463722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207390, 30.192932, 48.204697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264759, 30.047033, 48.572693>,  <33.299179, 29.959494, 48.793491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264759, 30.047033, 48.572693>,  <33.207390, 30.192932, 48.204697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264759, 30.047033, 48.572693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845935, -0.437288, -0.305244,
		0.513639, 0.822034, 0.245836,
		0.143420, -0.364746, 0.919995,
		33.307785, 29.937609, 48.848690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868687, 30.420305, 48.619400>,  <33.207390, 30.192932, 48.204697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868687, 30.420305, 48.619400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749920, 30.044861, 48.689651>,  <33.678658, 29.819593, 48.731804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749920, 30.044861, 48.689651>,  <33.868687, 30.420305, 48.619400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749920, 30.044861, 48.689651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820846, -0.344859, -0.455284,
		0.487903, 0.008984, 0.872851,
		-0.296921, -0.938611, 0.175632,
		33.660843, 29.763277, 48.742340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205666, 29.993454, 49.039001>,  <33.868687, 30.420305, 48.619400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205666, 29.993454, 49.039001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027802, 29.764393, 48.763512>,  <33.921082, 29.626957, 48.598217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027802, 29.764393, 48.763512>,  <34.205666, 29.993454, 49.039001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027802, 29.764393, 48.763512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890068, -0.196416, -0.411339,
		0.100277, -0.795921, 0.597038,
		-0.444661, -0.572653, -0.688727,
		33.894402, 29.592598, 48.556892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566368, 29.425446, 49.167946>,  <34.205666, 29.993454, 49.039001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566368, 29.425446, 49.167946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375706, 29.418200, 48.816383>,  <34.261311, 29.413853, 48.605446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375706, 29.418200, 48.816383>,  <34.566368, 29.425446, 49.167946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375706, 29.418200, 48.816383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840172, -0.303578, -0.449390,
		-0.258675, -0.952635, 0.159921,
		-0.476653, -0.018115, -0.878905,
		34.232712, 29.412766, 48.552711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652824, 28.747725, 48.860893>,  <34.566368, 29.425446, 49.167946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652824, 28.747725, 48.860893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610291, 29.004305, 48.556988>,  <34.584770, 29.158253, 48.374645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610291, 29.004305, 48.556988>,  <34.652824, 28.747725, 48.860893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610291, 29.004305, 48.556988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830344, -0.363066, -0.422743,
		-0.547011, -0.675815, -0.494017,
		-0.106336, 0.641449, -0.759760,
		34.578388, 29.196739, 48.329060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695423, 28.321915, 48.312805>,  <34.652824, 28.747725, 48.860893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695423, 28.321915, 48.312805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810932, 28.691769, 48.213474>,  <34.880238, 28.913681, 48.153877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810932, 28.691769, 48.213474>,  <34.695423, 28.321915, 48.312805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810932, 28.691769, 48.213474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740342, -0.380117, -0.554441,
		-0.607047, -0.023740, -0.794311,
		0.288769, 0.924634, -0.248324,
		34.897564, 28.969158, 48.138977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801537, 28.487116, 47.462627>,  <34.695423, 28.321915, 48.312805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801537, 28.487116, 47.462627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033375, 28.723692, 47.686867>,  <35.172478, 28.865637, 47.821411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033375, 28.723692, 47.686867>,  <34.801537, 28.487116, 47.462627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033375, 28.723692, 47.686867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782871, -0.213130, -0.584541,
		-0.226240, 0.777673, -0.586550,
		0.579593, 0.591439, 0.560599,
		35.207253, 28.901123, 47.855045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471508, 28.578400, 47.035164>,  <34.801537, 28.487116, 47.462627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471508, 28.578400, 47.035164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532627, 28.785015, 47.372173>,  <35.569298, 28.908985, 47.574379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532627, 28.785015, 47.372173>,  <35.471508, 28.578400, 47.035164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532627, 28.785015, 47.372173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984493, -0.005221, -0.175344,
		-0.086174, 0.856248, -0.509327,
		0.152797, 0.516539, 0.842520,
		35.578465, 28.939978, 47.624931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032642, 29.166729, 46.938667>,  <35.471508, 28.578400, 47.035164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032642, 29.166729, 46.938667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025955, 29.043869, 47.319271>,  <36.021942, 28.970154, 47.547634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025955, 29.043869, 47.319271>,  <36.032642, 29.166729, 46.938667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025955, 29.043869, 47.319271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954345, 0.278955, 0.106811,
		-0.298237, 0.909859, 0.288465,
		-0.016714, -0.307150, 0.951514,
		36.020943, 28.951723, 47.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218887, 29.757462, 47.320377>,  <36.032642, 29.166729, 46.938667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218887, 29.757462, 47.320377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283779, 29.453833, 47.572563>,  <36.322716, 29.271654, 47.723877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283779, 29.453833, 47.572563>,  <36.218887, 29.757462, 47.320377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283779, 29.453833, 47.572563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850820, 0.431223, 0.300253,
		-0.499786, 0.487703, 0.715793,
		0.162232, -0.759074, 0.630467,
		36.332447, 29.226110, 47.761703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408752, 30.086779, 47.898434>,  <36.218887, 29.757462, 47.320377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408752, 30.086779, 47.898434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544064, 29.712032, 47.933884>,  <36.625252, 29.487185, 47.955154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544064, 29.712032, 47.933884>,  <36.408752, 30.086779, 47.898434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544064, 29.712032, 47.933884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931708, 0.346666, 0.108362,
		-0.132243, 0.045912, 0.990153,
		0.338278, -0.936864, 0.088621,
		36.645546, 29.430973, 47.960468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723312, 30.125303, 48.444214>,  <36.408752, 30.086779, 47.898434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723312, 30.125303, 48.444214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880844, 29.796341, 48.279995>,  <36.975365, 29.598963, 48.181465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880844, 29.796341, 48.279995>,  <36.723312, 30.125303, 48.444214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880844, 29.796341, 48.279995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919146, 0.356347, 0.167892,
		0.008221, -0.443470, 0.896252,
		0.393831, -0.822406, -0.410543,
		36.998993, 29.549620, 48.156834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241920, 29.895967, 48.901569>,  <36.723312, 30.125303, 48.444214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241920, 29.895967, 48.901569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359661, 29.704304, 48.570808>,  <37.430305, 29.589306, 48.372353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359661, 29.704304, 48.570808>,  <37.241920, 29.895967, 48.901569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359661, 29.704304, 48.570808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891659, 0.449081, 0.057181,
		0.343946, -0.754143, 0.559437,
		0.294355, -0.479160, -0.826898,
		37.447968, 29.560556, 48.322739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756058, 29.599253, 49.077839>,  <37.241920, 29.895967, 48.901569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756058, 29.599253, 49.077839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834164, 29.578108, 48.686108>,  <37.881027, 29.565420, 48.451069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834164, 29.578108, 48.686108>,  <37.756058, 29.599253, 49.077839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834164, 29.578108, 48.686108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923052, 0.347350, 0.165294,
		0.331430, -0.936244, 0.116623,
		0.195265, -0.052865, -0.979325,
		37.892742, 29.562248, 48.392311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395081, 29.288740, 49.073669>,  <37.756058, 29.599253, 49.077839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395081, 29.288740, 49.073669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334866, 29.457338, 48.715969>,  <38.298737, 29.558496, 48.501350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334866, 29.457338, 48.715969>,  <38.395081, 29.288740, 49.073669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334866, 29.457338, 48.715969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917338, 0.396772, 0.032588,
		0.368549, -0.815422, -0.446384,
		-0.150540, 0.421496, -0.894248,
		38.289703, 29.583788, 48.447693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893398, 29.037186, 48.715637>,  <38.395081, 29.288740, 49.073669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893398, 29.037186, 48.715637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794975, 29.378286, 48.531349>,  <38.735920, 29.582947, 48.420776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794975, 29.378286, 48.531349>,  <38.893398, 29.037186, 48.715637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794975, 29.378286, 48.531349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969188, 0.210929, -0.127213,
		-0.011302, -0.477828, -0.878380,
		-0.246061, 0.852754, -0.460722,
		38.721157, 29.634113, 48.393131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316395, 29.170366, 48.205860>,  <38.893398, 29.037186, 48.715637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316395, 29.170366, 48.205860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191887, 29.540600, 48.292027>,  <39.117184, 29.762741, 48.343727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191887, 29.540600, 48.292027>,  <39.316395, 29.170366, 48.205860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191887, 29.540600, 48.292027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950315, 0.304026, 0.066856,
		-0.003612, 0.225525, -0.974231,
		-0.311269, 0.925585, 0.215418,
		39.098507, 29.818275, 48.356651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732513, 29.618486, 47.904392>,  <39.316395, 29.170366, 48.205860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732513, 29.618486, 47.904392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.571186, 29.852085, 48.186180>,  <39.474392, 29.992245, 48.355255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.571186, 29.852085, 48.186180>,  <39.732513, 29.618486, 47.904392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571186, 29.852085, 48.186180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854400, 0.515973, 0.061417,
		-0.327622, 0.626673, -0.707068,
		-0.403317, 0.583997, 0.704473,
		39.450191, 30.027285, 48.397522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992508, 30.273769, 47.851624>,  <39.732513, 29.618486, 47.904392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992508, 30.273769, 47.851624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863415, 30.277294, 48.230202>,  <39.785957, 30.279409, 48.457348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863415, 30.277294, 48.230202>,  <39.992508, 30.273769, 47.851624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863415, 30.277294, 48.230202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838248, 0.467013, 0.281494,
		-0.439523, 0.884206, -0.158108,
		-0.322737, 0.008811, 0.946448,
		39.766594, 30.279938, 48.514137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577328, 29.790466, 48.036957>,  <39.992508, 30.273769, 47.851624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577328, 29.790466, 48.036957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731171, 29.487919, 47.825302>,  <40.823479, 29.306391, 47.698311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731171, 29.487919, 47.825302>,  <40.577328, 29.790466, 48.036957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731171, 29.487919, 47.825302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679047, 0.620125, -0.392861,
		0.625277, -0.208209, 0.752116,
		0.384609, -0.756369, -0.529134,
		40.846554, 29.261009, 47.666561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270660, 29.634523, 48.111984>,  <40.577328, 29.790466, 48.036957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270660, 29.634523, 48.111984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.220470, 29.478893, 47.746937>,  <41.190357, 29.385515, 47.527908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.220470, 29.478893, 47.746937>,  <41.270660, 29.634523, 48.111984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220470, 29.478893, 47.746937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764081, 0.548847, -0.339037,
		0.632800, -0.739857, 0.228418,
		-0.125473, -0.389073, -0.912622,
		41.182827, 29.362171, 47.473148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932480, 29.666868, 47.823513>,  <41.270660, 29.634523, 48.111984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932480, 29.666868, 47.823513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668846, 29.636162, 47.524258>,  <41.510666, 29.617737, 47.344704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668846, 29.636162, 47.524258>,  <41.932480, 29.666868, 47.823513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668846, 29.636162, 47.524258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534686, 0.651737, -0.537912,
		0.528885, -0.754549, -0.388503,
		-0.659084, -0.076767, -0.748141,
		41.471123, 29.613132, 47.299816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062851, 29.341618, 47.121994>,  <41.932480, 29.666868, 47.823513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062851, 29.341618, 47.121994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856030, 29.683056, 47.147404>,  <41.731937, 29.887918, 47.162651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856030, 29.683056, 47.147404>,  <42.062851, 29.341618, 47.121994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856030, 29.683056, 47.147404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789197, 0.504144, -0.350722,
		-0.331401, -0.131207, -0.934322,
		-0.517050, 0.853595, 0.063525,
		41.700916, 29.939135, 47.166462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027481, 29.680504, 46.534554>,  <42.062851, 29.341618, 47.121994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027481, 29.680504, 46.534554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.016464, 29.959988, 46.820503>,  <42.009853, 30.127678, 46.992073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.016464, 29.959988, 46.820503>,  <42.027481, 29.680504, 46.534554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016464, 29.959988, 46.820503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676231, 0.539694, -0.501440,
		-0.736175, 0.469612, -0.487351,
		-0.027539, 0.698709, 0.714876,
		42.008202, 30.169600, 47.034966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993744, 30.261312, 46.125397>,  <42.027481, 29.680504, 46.534554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993744, 30.261312, 46.125397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.153030, 30.289122, 46.491257>,  <42.248604, 30.305807, 46.710773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.153030, 30.289122, 46.491257>,  <41.993744, 30.261312, 46.125397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153030, 30.289122, 46.491257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802094, 0.457390, -0.383979,
		-0.445048, 0.886544, 0.126376,
		0.398217, 0.069523, 0.914653,
		42.272495, 30.309978, 46.765652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157734, 30.938330, 46.264217>,  <41.993744, 30.261312, 46.125397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157734, 30.938330, 46.264217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.399120, 30.702984, 46.479492>,  <42.543953, 30.561777, 46.608658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.399120, 30.702984, 46.479492>,  <42.157734, 30.938330, 46.264217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399120, 30.702984, 46.479492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797112, 0.462788, -0.387865,
		-0.020862, 0.663064, 0.748272,
		0.603471, -0.588365, 0.538191,
		42.580162, 30.526474, 46.640949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672733, 31.343616, 46.488510>,  <42.157734, 30.938330, 46.264217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672733, 31.343616, 46.488510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787998, 30.960617, 46.493557>,  <42.857159, 30.730818, 46.496586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787998, 30.960617, 46.493557>,  <42.672733, 31.343616, 46.488510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787998, 30.960617, 46.493557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905931, 0.268327, -0.327551,
		0.310245, 0.105816, 0.944749,
		0.288162, -0.957499, 0.012615,
		42.874447, 30.673367, 46.497341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206451, 31.604851, 46.086430>,  <42.672733, 31.343616, 46.488510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206451, 31.604851, 46.086430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.042629, 31.557848, 45.724556>,  <42.944336, 31.529646, 45.507431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.042629, 31.557848, 45.724556>,  <43.206451, 31.604851, 46.086430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042629, 31.557848, 45.724556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113972, -0.990491, 0.077059,
		-0.905140, -0.071549, 0.419049,
		-0.409551, -0.117509, -0.904688,
		42.919765, 31.522594, 45.453148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306034, 30.944605, 45.848541>,  <43.206451, 31.604851, 46.086430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306034, 30.944605, 45.848541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.044765, 30.862616, 45.556969>,  <42.888004, 30.813421, 45.382023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.044765, 30.862616, 45.556969>,  <43.306034, 30.944605, 45.848541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044765, 30.862616, 45.556969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457787, 0.659914, -0.595772,
		0.603151, -0.722842, -0.337208,
		-0.653177, -0.204971, -0.728935,
		42.848812, 30.801125, 45.338287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616859, 30.798820, 45.165607>,  <43.306034, 30.944605, 45.848541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616859, 30.798820, 45.165607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.264458, 30.969038, 45.082912>,  <43.053017, 31.071169, 45.033295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.264458, 30.969038, 45.082912>,  <43.616859, 30.798820, 45.165607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264458, 30.969038, 45.082912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459718, 0.666794, -0.586554,
		-0.111753, -0.611798, -0.783080,
		-0.881005, 0.425545, -0.206738,
		43.000156, 31.096701, 45.020889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552334, 30.973951, 44.404598>,  <43.616859, 30.798820, 45.165607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552334, 30.973951, 44.404598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347252, 31.233927, 44.628998>,  <43.224205, 31.389912, 44.763638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347252, 31.233927, 44.628998>,  <43.552334, 30.973951, 44.404598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347252, 31.233927, 44.628998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365858, 0.756502, -0.542083,
		-0.776715, -0.072682, -0.625644,
		-0.512700, 0.649941, 0.560995,
		43.193443, 31.428909, 44.797295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123096, 31.518320, 44.069038>,  <43.552334, 30.973951, 44.404598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123096, 31.518320, 44.069038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.241726, 31.659103, 44.424156>,  <43.312904, 31.743572, 44.637226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.241726, 31.659103, 44.424156>,  <43.123096, 31.518320, 44.069038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241726, 31.659103, 44.424156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552515, 0.695007, -0.460101,
		-0.778956, 0.626971, 0.011659,
		0.296573, 0.351957, 0.887790,
		43.330696, 31.764690, 44.690495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110382, 32.334492, 44.231873>,  <43.123096, 31.518320, 44.069038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110382, 32.334492, 44.231873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.400272, 32.136948, 44.424068>,  <43.574207, 32.018421, 44.539387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.400272, 32.136948, 44.424068>,  <43.110382, 32.334492, 44.231873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400272, 32.136948, 44.424068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675580, 0.646427, -0.354575,
		-0.135494, 0.581582, 0.802125,
		0.724729, -0.493857, 0.480492,
		43.617691, 31.988791, 44.568214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709080, 32.922134, 44.237804>,  <43.110382, 32.334492, 44.231873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709080, 32.922134, 44.237804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.001568, 33.015884, 44.494049>,  <43.177063, 33.072136, 44.647797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.001568, 33.015884, 44.494049>,  <42.709080, 32.922134, 44.237804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001568, 33.015884, 44.494049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320652, 0.946995, 0.019539,
		-0.602076, -0.219701, 0.767617,
		0.731223, 0.234374, 0.640611,
		43.220936, 33.086197, 44.686234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621639, 32.705040, 43.548046>,  <42.709080, 32.922134, 44.237804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621639, 32.705040, 43.548046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763508, 32.383709, 43.356682>,  <42.848629, 32.190910, 43.241863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763508, 32.383709, 43.356682>,  <42.621639, 32.705040, 43.548046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763508, 32.383709, 43.356682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886088, -0.125477, -0.446211,
		0.298423, 0.582171, -0.756320,
		0.354672, -0.803326, -0.478410,
		42.869911, 32.142712, 43.213158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417892, 32.775421, 42.841743>,  <42.621639, 32.705040, 43.548046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417892, 32.775421, 42.841743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.485790, 32.393929, 42.941006>,  <42.526527, 32.165031, 43.000565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.485790, 32.393929, 42.941006>,  <42.417892, 32.775421, 42.841743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485790, 32.393929, 42.941006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780091, -0.283910, -0.557542,
		0.602200, -0.098943, -0.792190,
		0.169746, -0.953732, 0.248155,
		42.536713, 32.107807, 43.015453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459911, 32.457619, 42.277058>,  <42.417892, 32.775421, 42.841743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459911, 32.457619, 42.277058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.326241, 32.200947, 42.553192>,  <42.246037, 32.046944, 42.718872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.326241, 32.200947, 42.553192>,  <42.459911, 32.457619, 42.277058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326241, 32.200947, 42.553192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804878, -0.186813, -0.563269,
		0.490405, -0.743872, -0.454047,
		-0.334178, -0.641682, 0.690340,
		42.225986, 32.008442, 42.760296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454502, 31.864672, 41.935936>,  <42.459911, 32.457619, 42.277058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454502, 31.864672, 41.935936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.186043, 31.864704, 42.232468>,  <42.024967, 31.864723, 42.410385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.186043, 31.864704, 42.232468>,  <42.454502, 31.864672, 41.935936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186043, 31.864704, 42.232468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728059, -0.188413, -0.659113,
		0.139622, -0.982090, 0.126512,
		-0.671145, 0.000081, 0.741326,
		41.984699, 31.864729, 42.454865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864929, 31.887917, 41.366985>,  <42.454502, 31.864672, 41.935936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864929, 31.887917, 41.366985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.199619, 31.905638, 41.148651>,  <43.400433, 31.916271, 41.017651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.199619, 31.905638, 41.148651>,  <42.864929, 31.887917, 41.366985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199619, 31.905638, 41.148651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365657, -0.696781, -0.617082,
		-0.407664, 0.715914, -0.566813,
		0.836723, 0.044303, -0.545832,
		43.450638, 31.918928, 40.984901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506248, 31.805271, 40.778198>,  <42.864929, 31.887917, 41.366985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506248, 31.805271, 40.778198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.897930, 31.736217, 40.735565>,  <43.132938, 31.694784, 40.709988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.897930, 31.736217, 40.735565>,  <42.506248, 31.805271, 40.778198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897930, 31.736217, 40.735565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187851, -0.573004, -0.797733,
		0.076646, 0.801164, -0.593517,
		0.979202, -0.172636, -0.106581,
		43.191692, 31.684427, 40.703590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795162, 31.913378, 40.136883>,  <42.506248, 31.805271, 40.778198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795162, 31.913378, 40.136883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054924, 31.642939, 40.276119>,  <43.210781, 31.480675, 40.359661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054924, 31.642939, 40.276119>,  <42.795162, 31.913378, 40.136883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054924, 31.642939, 40.276119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159106, -0.568417, -0.807210,
		0.743614, 0.468821, -0.476703,
		0.649403, -0.676099, 0.348090,
		43.249744, 31.440109, 40.380547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976616, 31.530224, 39.526264>,  <42.795162, 31.913378, 40.136883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976616, 31.530224, 39.526264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124317, 31.289169, 39.809242>,  <43.212936, 31.144537, 39.979031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124317, 31.289169, 39.809242>,  <42.976616, 31.530224, 39.526264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124317, 31.289169, 39.809242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137580, -0.717410, -0.682930,
		0.919088, 0.349505, -0.181996,
		0.369254, -0.602634, 0.707449,
		43.235092, 31.108379, 40.021477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184502, 32.260853, 39.188728>,  <42.976616, 31.530224, 39.526264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184502, 32.260853, 39.188728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.985737, 32.402283, 38.871727>,  <42.866478, 32.487141, 38.681526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.985737, 32.402283, 38.871727>,  <43.184502, 32.260853, 39.188728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985737, 32.402283, 38.871727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855177, 0.354729, -0.377941,
		0.147493, -0.865534, -0.478640,
		-0.496909, 0.353578, -0.792505,
		42.836666, 32.508354, 38.633976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431267, 32.042660, 38.405182>,  <43.184502, 32.260853, 39.188728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431267, 32.042660, 38.405182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.241211, 32.394352, 38.419010>,  <43.127178, 32.605366, 38.427307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.241211, 32.394352, 38.419010>,  <43.431267, 32.042660, 38.405182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241211, 32.394352, 38.419010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791874, 0.444405, -0.418855,
		-0.383633, -0.171642, -0.907395,
		-0.475144, 0.879229, 0.034570,
		43.098667, 32.658119, 38.429382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884586, 32.211479, 37.803391>,  <43.431267, 32.042660, 38.405182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884586, 32.211479, 37.803391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052425, 32.511436, 37.598804>,  <44.153130, 32.691410, 37.476055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052425, 32.511436, 37.598804>,  <43.884586, 32.211479, 37.803391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052425, 32.511436, 37.598804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768601, -0.006236, -0.639698,
		-0.482895, 0.661529, 0.573753,
		0.419601, 0.749894, -0.511463,
		44.178307, 32.736404, 37.445366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318893, 32.668491, 37.629120>,  <43.884586, 32.211479, 37.803391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318893, 32.668491, 37.629120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.584690, 32.673859, 37.330250>,  <43.744167, 32.677078, 37.150928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.584690, 32.673859, 37.330250>,  <43.318893, 32.668491, 37.629120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584690, 32.673859, 37.330250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718100, 0.288208, -0.633457,
		0.206844, 0.957474, 0.201145,
		0.664490, 0.013415, -0.747176,
		43.784039, 32.677883, 37.106098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561081, 33.367054, 37.413006>,  <43.318893, 32.668491, 37.629120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561081, 33.367054, 37.413006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.523083, 33.726322, 37.241299>,  <43.500286, 33.941883, 37.138275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.523083, 33.726322, 37.241299>,  <43.561081, 33.367054, 37.413006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523083, 33.726322, 37.241299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505407, -0.327992, -0.798113,
		-0.857636, -0.292767, -0.422785,
		-0.094991, 0.898170, -0.429264,
		43.494587, 33.995773, 37.112518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332973, 33.235363, 36.789875>,  <43.561081, 33.367054, 37.413006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332973, 33.235363, 36.789875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.545021, 33.574181, 36.774445>,  <43.672249, 33.777473, 36.765186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.545021, 33.574181, 36.774445>,  <43.332973, 33.235363, 36.789875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545021, 33.574181, 36.774445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287898, -0.222600, -0.931431,
		-0.797552, 0.482662, -0.361867,
		0.530118, 0.847046, -0.038578,
		43.704056, 33.828293, 36.762871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110912, 33.640575, 36.217953>,  <43.332973, 33.235363, 36.789875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110912, 33.640575, 36.217953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487030, 33.733097, 36.317833>,  <43.712700, 33.788609, 36.377762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487030, 33.733097, 36.317833>,  <43.110912, 33.640575, 36.217953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487030, 33.733097, 36.317833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276763, -0.092530, -0.956473,
		-0.198131, 0.968471, -0.151021,
		0.940291, 0.231304, 0.249703,
		43.769115, 33.802486, 36.392742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327553, 34.185307, 35.753185>,  <43.110912, 33.640575, 36.217953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327553, 34.185307, 35.753185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.665291, 34.002899, 35.865707>,  <43.867931, 33.893456, 35.933220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.665291, 34.002899, 35.865707>,  <43.327553, 34.185307, 35.753185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665291, 34.002899, 35.865707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350150, 0.072223, -0.933905,
		0.405564, 0.887034, 0.220657,
		0.844342, -0.456021, 0.281304,
		43.918594, 33.866093, 35.950100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912926, 34.547222, 35.488644>,  <43.327553, 34.185307, 35.753185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912926, 34.547222, 35.488644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.988365, 34.155201, 35.513718>,  <44.033630, 33.919987, 35.528763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.988365, 34.155201, 35.513718>,  <43.912926, 34.547222, 35.488644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988365, 34.155201, 35.513718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322294, 0.001473, -0.946638,
		0.927662, 0.198737, 0.316143,
		0.188598, -0.980052, 0.062686,
		44.044945, 33.861187, 35.532524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578510, 34.406532, 35.182877>,  <43.912926, 34.547222, 35.488644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578510, 34.406532, 35.182877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.359161, 34.075001, 35.138458>,  <44.227551, 33.876083, 35.111805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.359161, 34.075001, 35.138458>,  <44.578510, 34.406532, 35.182877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359161, 34.075001, 35.138458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371633, -0.122585, -0.920251,
		0.749114, -0.545913, 0.375242,
		-0.548376, -0.828825, -0.111050,
		44.194649, 33.826355, 35.105145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985977, 34.040611, 34.896252>,  <44.578510, 34.406532, 35.182877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985977, 34.040611, 34.896252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.625141, 33.907265, 34.786636>,  <44.408638, 33.827255, 34.720867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.625141, 33.907265, 34.786636>,  <44.985977, 34.040611, 34.896252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625141, 33.907265, 34.786636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295241, -0.013630, -0.955326,
		0.314737, -0.942699, 0.110719,
		-0.902094, -0.333365, -0.274034,
		44.354511, 33.807255, 34.704426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312576, 34.737896, 35.045452>,  <44.985977, 34.040611, 34.896252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312576, 34.737896, 35.045452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.254219, 34.983578, 35.355667>,  <45.219204, 35.130989, 35.541798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.254219, 34.983578, 35.355667>,  <45.312576, 34.737896, 35.045452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254219, 34.983578, 35.355667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964681, -0.085474, 0.249168,
		0.219330, 0.784501, -0.580045,
		-0.145894, 0.614208, 0.775540,
		45.210449, 35.167839, 35.588329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806309, 35.289589, 34.948341>,  <45.312576, 34.737896, 35.045452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806309, 35.289589, 34.948341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.683636, 35.209229, 35.320488>,  <45.610031, 35.161011, 35.543777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.683636, 35.209229, 35.320488>,  <45.806309, 35.289589, 34.948341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683636, 35.209229, 35.320488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940398, -0.214885, 0.263583,
		0.146968, 0.955752, 0.254829,
		-0.306679, -0.200903, 0.930369,
		45.591633, 35.148956, 35.599598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354740, 35.064888, 35.387680>,  <45.806309, 35.289589, 34.948341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354740, 35.064888, 35.387680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.117287, 35.021645, 35.706657>,  <45.974815, 34.995697, 35.898045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.117287, 35.021645, 35.706657>,  <46.354740, 35.064888, 35.387680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117287, 35.021645, 35.706657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723331, -0.505981, 0.469867,
		0.352692, 0.855742, 0.378568,
		-0.593634, -0.108111, 0.797440,
		45.939198, 34.989212, 35.945889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740288, 35.362972, 35.870598>,  <46.354740, 35.064888, 35.387680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740288, 35.362972, 35.870598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.491730, 35.080372, 36.006084>,  <46.342594, 34.910812, 36.087376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.491730, 35.080372, 36.006084>,  <46.740288, 35.362972, 35.870598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491730, 35.080372, 36.006084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782462, -0.581830, 0.221871,
		0.040324, 0.402902, 0.914354,
		-0.621391, -0.706501, 0.338717,
		46.305313, 34.868423, 36.107700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414597, 35.231495, 35.979046>,  <46.740288, 35.362972, 35.870598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414597, 35.231495, 35.979046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671818, 35.081226, 35.712109>,  <47.826153, 34.991066, 35.551945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671818, 35.081226, 35.712109>,  <47.414597, 35.231495, 35.979046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671818, 35.081226, 35.712109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735876, -0.061826, -0.674288,
		0.212053, 0.924687, -0.316207,
		0.643055, -0.375674, -0.667344,
		47.864735, 34.968525, 35.511906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446949, 35.616337, 35.336922>,  <47.414597, 35.231495, 35.979046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446949, 35.616337, 35.336922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.512814, 35.225845, 35.280533>,  <47.552330, 34.991550, 35.246700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.512814, 35.225845, 35.280533>,  <47.446949, 35.616337, 35.336922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512814, 35.225845, 35.280533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741386, -0.028226, -0.670485,
		0.650565, 0.214916, -0.728407,
		0.164658, -0.976225, -0.140973,
		47.562210, 34.932980, 35.238239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.849854, 35.386295, 34.643311>,  <47.446949, 35.616337, 35.336922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.849854, 35.386295, 34.643311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.581863, 35.118073, 34.770741>,  <47.421070, 34.957138, 34.847198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.581863, 35.118073, 34.770741>,  <47.849854, 35.386295, 34.643311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.581863, 35.118073, 34.770741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576408, 0.199430, -0.792453,
		0.467848, -0.714553, -0.520126,
		-0.669979, -0.670553, 0.318571,
		47.380871, 34.916908, 34.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.207382, 34.754189, 57.697933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.520653, 34.834667, 57.933273>,  <32.708614, 34.882954, 58.074478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.520653, 34.834667, 57.933273>,  <32.207382, 34.754189, 57.697933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520653, 34.834667, 57.933273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606929, -0.453071, -0.652966,
		0.135189, 0.868473, -0.476947,
		0.783174, 0.201199, 0.588352,
		32.755604, 34.895027, 58.109779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635563, 35.126717, 57.347576>,  <32.207382, 34.754189, 57.697933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635563, 35.126717, 57.347576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.881393, 34.972088, 57.622631>,  <33.028893, 34.879311, 57.787666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.881393, 34.972088, 57.622631>,  <32.635563, 35.126717, 57.347576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881393, 34.972088, 57.622631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622915, -0.297024, -0.723709,
		0.484014, 0.873119, 0.058259,
		0.614580, -0.386575, 0.687642,
		33.065769, 34.856113, 57.828922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335316, 35.306461, 57.148220>,  <32.635563, 35.126717, 57.347576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335316, 35.306461, 57.148220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341312, 34.971046, 57.366077>,  <33.344910, 34.769798, 57.496792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341312, 34.971046, 57.366077>,  <33.335316, 35.306461, 57.148220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341312, 34.971046, 57.366077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484732, -0.470319, -0.737452,
		0.874534, 0.275064, 0.399412,
		0.014996, -0.838535, 0.544642,
		33.345810, 34.719486, 57.529469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052170, 35.055199, 56.955231>,  <33.335316, 35.306461, 57.148220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052170, 35.055199, 56.955231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.838737, 34.758522, 57.117798>,  <33.710678, 34.580517, 57.215340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.838737, 34.758522, 57.117798>,  <34.052170, 35.055199, 56.955231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838737, 34.758522, 57.117798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455442, -0.656904, -0.600873,
		0.712644, -0.135515, 0.688312,
		-0.533583, -0.741696, 0.406420,
		33.678661, 34.536015, 57.239723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525307, 34.632477, 57.167568>,  <34.052170, 35.055199, 56.955231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525307, 34.632477, 57.167568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.203358, 34.399773, 57.120670>,  <34.010189, 34.260151, 57.092533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.203358, 34.399773, 57.120670>,  <34.525307, 34.632477, 57.167568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203358, 34.399773, 57.120670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538294, -0.632491, -0.556951,
		0.249852, -0.511385, 0.822228,
		-0.804868, -0.581756, -0.117246,
		33.961899, 34.225246, 57.085495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714218, 33.931343, 57.404751>,  <34.525307, 34.632477, 57.167568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714218, 33.931343, 57.404751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411320, 33.906181, 57.144711>,  <34.229580, 33.891087, 56.988686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411320, 33.906181, 57.144711>,  <34.714218, 33.931343, 57.404751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411320, 33.906181, 57.144711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519647, -0.661000, -0.541337,
		-0.395663, -0.747744, 0.533225,
		-0.757243, -0.062902, -0.650096,
		34.184147, 33.887310, 56.949680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912964, 33.431217, 57.022045>,  <34.714218, 33.931343, 57.404751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912964, 33.431217, 57.022045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.595802, 33.513489, 56.792610>,  <34.405506, 33.562851, 56.654949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.595802, 33.513489, 56.792610>,  <34.912964, 33.431217, 57.022045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595802, 33.513489, 56.792610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282770, -0.709622, -0.645351,
		-0.539767, -0.673893, 0.504500,
		-0.792901, 0.205681, -0.573587,
		34.357933, 33.575191, 56.620533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642986, 32.801022, 56.873798>,  <34.912964, 33.431217, 57.022045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642986, 32.801022, 56.873798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.522987, 33.056923, 56.590752>,  <34.450989, 33.210464, 56.420925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.522987, 33.056923, 56.590752>,  <34.642986, 32.801022, 56.873798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522987, 33.056923, 56.590752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363541, -0.609135, -0.704836,
		-0.881953, -0.468695, -0.049837,
		-0.299996, 0.639750, -0.707618,
		34.432987, 33.248848, 56.378468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175495, 32.397533, 56.430153>,  <34.642986, 32.801022, 56.873798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175495, 32.397533, 56.430153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.279213, 32.713783, 56.208279>,  <34.341446, 32.903534, 56.075153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.279213, 32.713783, 56.208279>,  <34.175495, 32.397533, 56.430153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279213, 32.713783, 56.208279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309424, -0.612065, -0.727759,
		-0.914889, 0.017072, -0.403344,
		0.259297, 0.790623, -0.554689,
		34.357002, 32.950970, 56.041870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036240, 32.139694, 55.816502>,  <34.175495, 32.397533, 56.430153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036240, 32.139694, 55.816502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.273190, 32.455437, 55.751984>,  <34.415359, 32.644882, 55.713272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.273190, 32.455437, 55.751984>,  <34.036240, 32.139694, 55.816502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273190, 32.455437, 55.751984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431619, -0.479974, -0.763760,
		-0.680291, 0.382817, -0.625025,
		0.592376, 0.789352, -0.161291,
		34.450901, 32.692242, 55.703598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970539, 32.171837, 55.115360>,  <34.036240, 32.139694, 55.816502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970539, 32.171837, 55.115360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297413, 32.370834, 55.231773>,  <34.493538, 32.490234, 55.301620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297413, 32.370834, 55.231773>,  <33.970539, 32.171837, 55.115360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297413, 32.370834, 55.231773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555994, -0.547344, -0.625527,
		-0.151899, 0.672989, -0.723887,
		0.817188, 0.497494, 0.291037,
		34.542568, 32.520084, 55.319084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223202, 32.364372, 54.486576>,  <33.970539, 32.171837, 55.115360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223202, 32.364372, 54.486576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.518402, 32.360020, 54.756462>,  <34.695522, 32.357407, 54.918392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.518402, 32.360020, 54.756462>,  <34.223202, 32.364372, 54.486576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518402, 32.360020, 54.756462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571988, -0.520409, -0.634038,
		0.358028, 0.853848, -0.377836,
		0.738001, -0.010886, 0.674712,
		34.739803, 32.356754, 54.958874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957039, 32.329784, 54.077274>,  <34.223202, 32.364372, 54.486576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957039, 32.329784, 54.077274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085110, 32.247936, 54.447273>,  <35.161953, 32.198830, 54.669273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085110, 32.247936, 54.447273>,  <34.957039, 32.329784, 54.077274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085110, 32.247936, 54.447273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476217, -0.809306, -0.343862,
		0.818966, 0.550595, -0.161677,
		0.320175, -0.204618, 0.924997,
		35.181164, 32.186550, 54.724773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658276, 32.373569, 54.048206>,  <34.957039, 32.329784, 54.077274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658276, 32.373569, 54.048206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.549759, 32.137344, 54.352215>,  <35.484650, 31.995609, 54.534618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.549759, 32.137344, 54.352215>,  <35.658276, 32.373569, 54.048206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549759, 32.137344, 54.352215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202734, -0.806982, -0.554688,
		0.940903, 0.003600, 0.338656,
		-0.271292, -0.590565, 0.760022,
		35.468372, 31.960175, 54.580223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119118, 31.906940, 54.064445>,  <35.658276, 32.373569, 54.048206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119118, 31.906940, 54.064445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807301, 31.750120, 54.259834>,  <35.620209, 31.656029, 54.377068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807301, 31.750120, 54.259834>,  <36.119118, 31.906940, 54.064445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807301, 31.750120, 54.259834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073581, -0.831800, -0.550177,
		0.622012, -0.392944, 0.677271,
		-0.779543, -0.392051, 0.488477,
		35.573437, 31.632505, 54.406376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436508, 31.231199, 54.431263>,  <36.119118, 31.906940, 54.064445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436508, 31.231199, 54.431263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043285, 31.236034, 54.358093>,  <35.807354, 31.238935, 54.314194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043285, 31.236034, 54.358093>,  <36.436508, 31.231199, 54.431263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043285, 31.236034, 54.358093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081497, -0.864978, -0.495148,
		-0.164210, -0.501664, 0.849334,
		-0.983053, 0.012090, -0.182922,
		35.748371, 31.239662, 54.303215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328026, 30.560101, 54.568531>,  <36.436508, 31.231199, 54.431263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328026, 30.560101, 54.568531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996914, 30.695353, 54.389446>,  <35.798248, 30.776503, 54.281994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996914, 30.695353, 54.389446>,  <36.328026, 30.560101, 54.568531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996914, 30.695353, 54.389446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025704, -0.774297, -0.632300,
		-0.560462, -0.534914, 0.632258,
		-0.827782, 0.338128, -0.447713,
		35.748581, 30.796791, 54.255131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896244, 30.023787, 54.527031>,  <36.328026, 30.560101, 54.568531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896244, 30.023787, 54.527031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.775047, 30.284164, 54.248615>,  <35.702332, 30.440392, 54.081566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.775047, 30.284164, 54.248615>,  <35.896244, 30.023787, 54.527031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775047, 30.284164, 54.248615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252555, -0.759100, -0.599986,
		-0.918920, -0.006002, 0.394399,
		-0.302989, 0.650947, -0.696036,
		35.684151, 30.479448, 54.039806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246048, 29.703566, 54.363064>,  <35.896244, 30.023787, 54.527031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246048, 29.703566, 54.363064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364349, 29.959017, 54.078899>,  <35.435329, 30.112288, 53.908401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.364349, 29.959017, 54.078899>,  <35.246048, 29.703566, 54.363064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364349, 29.959017, 54.078899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125590, -0.711231, -0.691649,
		-0.946973, 0.293777, -0.130143,
		0.295752, 0.638628, -0.710412,
		35.453075, 30.150606, 53.865776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848251, 29.563906, 53.843266>,  <35.246048, 29.703566, 54.363064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848251, 29.563906, 53.843266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.171848, 29.731726, 53.678577>,  <35.366005, 29.832418, 53.579765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.171848, 29.731726, 53.678577>,  <34.848251, 29.563906, 53.843266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171848, 29.731726, 53.678577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013377, -0.687095, -0.726444,
		-0.587672, 0.593193, -0.550240,
		0.808989, 0.419551, -0.411722,
		35.414543, 29.857592, 53.555061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732113, 29.573221, 53.172607>,  <34.848251, 29.563906, 53.843266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732113, 29.573221, 53.172607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.127167, 29.634357, 53.158638>,  <35.364201, 29.671040, 53.150257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.127167, 29.634357, 53.158638>,  <34.732113, 29.573221, 53.172607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127167, 29.634357, 53.158638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073032, -0.645613, -0.760164,
		-0.138730, 0.748213, -0.648792,
		0.987634, 0.152841, -0.034922,
		35.423458, 29.680210, 53.148163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927147, 29.751797, 52.463619>,  <34.732113, 29.573221, 53.172607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927147, 29.751797, 52.463619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.266033, 29.626085, 52.634945>,  <35.469364, 29.550657, 52.737740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.266033, 29.626085, 52.634945>,  <34.927147, 29.751797, 52.463619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266033, 29.626085, 52.634945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179922, -0.588850, -0.787961,
		0.499856, 0.744636, -0.442336,
		0.847215, -0.314281, 0.428317,
		35.520199, 29.531801, 52.763439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351780, 29.623241, 51.927044>,  <34.927147, 29.751797, 52.463619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351780, 29.623241, 51.927044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.492165, 29.426712, 52.245899>,  <35.576397, 29.308794, 52.437210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.492165, 29.426712, 52.245899>,  <35.351780, 29.623241, 51.927044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492165, 29.426712, 52.245899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292979, -0.750929, -0.591836,
		0.889374, 0.441258, -0.119604,
		0.350966, -0.491322, 0.797136,
		35.597454, 29.279316, 52.485039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780003, 29.544966, 51.323620>,  <35.351780, 29.623241, 51.927044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780003, 29.544966, 51.323620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.382183, 29.513416, 51.350883>,  <34.143490, 29.494486, 51.367241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.382183, 29.513416, 51.350883>,  <34.780003, 29.544966, 51.323620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382183, 29.513416, 51.350883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085018, 0.992076, -0.092504,
		-0.060326, -0.097795, -0.993376,
		-0.994551, -0.078875, 0.068162,
		34.083817, 29.489754, 51.371330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547844, 30.077362, 50.979805>,  <34.780003, 29.544966, 51.323620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547844, 30.077362, 50.979805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.227558, 30.008982, 51.209457>,  <34.035385, 29.967955, 51.347248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.227558, 30.008982, 51.209457>,  <34.547844, 30.077362, 50.979805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227558, 30.008982, 51.209457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008945, 0.961723, 0.273878,
		-0.598978, 0.214163, -0.771596,
		-0.800716, -0.170949, 0.574135,
		33.987343, 29.957697, 51.381699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050419, 30.636593, 50.851681>,  <34.547844, 30.077362, 50.979805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050419, 30.636593, 50.851681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.983517, 30.469707, 51.208996>,  <33.943375, 30.369576, 51.423386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.983517, 30.469707, 51.208996>,  <34.050419, 30.636593, 50.851681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983517, 30.469707, 51.208996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029862, 0.907775, 0.418393,
		-0.985462, 0.043302, -0.164287,
		-0.167252, -0.417216, 0.893285,
		33.933342, 30.344543, 51.476982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530071, 31.025421, 51.184814>,  <34.050419, 30.636593, 50.851681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530071, 31.025421, 51.184814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.695824, 30.835249, 51.495235>,  <33.795277, 30.721146, 51.681488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.695824, 30.835249, 51.495235>,  <33.530071, 31.025421, 51.184814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695824, 30.835249, 51.495235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122847, 0.815682, 0.565307,
		-0.901775, -0.329587, 0.279598,
		0.414381, -0.475432, 0.776050,
		33.820137, 30.692619, 51.728050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957619, 31.187948, 51.736698>,  <33.530071, 31.025421, 51.184814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957619, 31.187948, 51.736698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.266685, 31.040312, 51.943295>,  <33.452126, 30.951731, 52.067253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.266685, 31.040312, 51.943295>,  <32.957619, 31.187948, 51.736698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266685, 31.040312, 51.943295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130855, 0.703533, 0.698511,
		-0.621182, -0.607300, 0.495297,
		0.772664, -0.369091, 0.516491,
		33.498486, 30.929585, 52.098240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775349, 30.999414, 52.393234>,  <32.957619, 31.187948, 51.736698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775349, 30.999414, 52.393234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.169106, 31.051958, 52.440083>,  <33.405361, 31.083485, 52.468193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.169106, 31.051958, 52.440083>,  <32.775349, 30.999414, 52.393234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169106, 31.051958, 52.440083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175012, 0.660521, 0.730126,
		0.018547, -0.739228, 0.673200,
		0.984392, 0.131360, 0.117123,
		33.464424, 31.091366, 52.475220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883331, 31.037848, 53.168755>,  <32.775349, 30.999414, 52.393234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883331, 31.037848, 53.168755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.165977, 31.222990, 52.954666>,  <33.335567, 31.334076, 52.826214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.165977, 31.222990, 52.954666>,  <32.883331, 31.037848, 53.168755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165977, 31.222990, 52.954666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085049, 0.806460, 0.585139,
		0.702465, -0.367950, 0.609225,
		0.706618, 0.462854, -0.535217,
		33.377964, 31.361847, 52.794102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397392, 31.280405, 53.699680>,  <32.883331, 31.037848, 53.168755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397392, 31.280405, 53.699680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.452168, 31.482330, 53.358761>,  <33.485031, 31.603485, 53.154209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.452168, 31.482330, 53.358761>,  <33.397392, 31.280405, 53.699680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452168, 31.482330, 53.358761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025263, 0.861904, 0.506443,
		0.990258, -0.047818, 0.130778,
		0.136935, 0.504813, -0.852298,
		33.493248, 31.633774, 53.103073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654522, 31.768990, 53.908478>,  <33.397392, 31.280405, 53.699680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654522, 31.768990, 53.908478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.602585, 31.904604, 53.535770>,  <33.571423, 31.985973, 53.312145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.602585, 31.904604, 53.535770>,  <33.654522, 31.768990, 53.908478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602585, 31.904604, 53.535770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170094, 0.918178, 0.357794,
		0.976836, 0.204945, -0.061549,
		-0.129841, 0.339037, -0.931770,
		33.563633, 32.006313, 53.256241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123329, 32.369530, 53.778137>,  <33.654522, 31.768990, 53.908478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123329, 32.369530, 53.778137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.789814, 32.373997, 53.557350>,  <33.589703, 32.376678, 53.424877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.789814, 32.373997, 53.557350>,  <34.123329, 32.369530, 53.778137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789814, 32.373997, 53.557350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152278, 0.956359, 0.249376,
		0.530665, 0.291979, -0.795703,
		-0.833790, 0.011167, -0.551968,
		33.539677, 32.377346, 53.391758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088955, 33.058834, 53.486576>,  <34.123329, 32.369530, 53.778137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088955, 33.058834, 53.486576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.717037, 32.912552, 53.469860>,  <33.493885, 32.824783, 53.459831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.717037, 32.912552, 53.469860>,  <34.088955, 33.058834, 53.486576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717037, 32.912552, 53.469860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354257, 0.858265, 0.371326,
		-0.099929, 0.360060, -0.927562,
		-0.929794, -0.365702, -0.041788,
		33.438099, 32.802841, 53.457325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656994, 33.623363, 53.455357>,  <34.088955, 33.058834, 53.486576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656994, 33.623363, 53.455357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.382107, 33.340492, 53.521851>,  <33.217175, 33.170769, 53.561749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.382107, 33.340492, 53.521851>,  <33.656994, 33.623363, 53.455357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382107, 33.340492, 53.521851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604091, 0.683404, 0.409919,
		-0.403493, 0.181279, -0.896845,
		-0.687217, -0.707175, 0.166240,
		33.175941, 33.128338, 53.571724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071877, 33.990757, 53.313801>,  <33.656994, 33.623363, 53.455357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071877, 33.990757, 53.313801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.926498, 33.671860, 53.506599>,  <32.839272, 33.480522, 53.622276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.926498, 33.671860, 53.506599>,  <33.071877, 33.990757, 53.313801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926498, 33.671860, 53.506599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543909, 0.601625, 0.584987,
		-0.756355, -0.049552, -0.652282,
		-0.363442, -0.797240, 0.481994,
		32.817467, 33.432686, 53.651199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348869, 34.076775, 53.272442>,  <33.071877, 33.990757, 53.313801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348869, 34.076775, 53.272442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.419022, 33.849255, 53.593864>,  <32.461113, 33.712742, 53.786716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.419022, 33.849255, 53.593864>,  <32.348869, 34.076775, 53.272442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419022, 33.849255, 53.593864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628696, 0.563402, 0.536022,
		-0.757618, -0.599199, -0.258796,
		0.175378, -0.568804, 0.803558,
		32.471634, 33.678612, 53.834930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672777, 33.969097, 53.678436>,  <32.348869, 34.076775, 53.272442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672777, 33.969097, 53.678436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.978592, 33.914474, 53.930416>,  <32.162083, 33.881702, 54.081604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.978592, 33.914474, 53.930416>,  <31.672777, 33.969097, 53.678436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978592, 33.914474, 53.930416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492006, 0.507747, 0.707194,
		-0.416426, -0.850615, 0.321005,
		0.764539, -0.136558, 0.629947,
		32.207954, 33.873508, 54.119400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362316, 33.821503, 54.273956>,  <31.672777, 33.969097, 53.678436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362316, 33.821503, 54.273956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.725002, 33.927288, 54.405361>,  <31.942614, 33.990761, 54.484203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.725002, 33.927288, 54.405361>,  <31.362316, 33.821503, 54.273956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725002, 33.927288, 54.405361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417834, 0.457539, 0.784903,
		0.057270, -0.848950, 0.525361,
		0.906717, 0.264465, 0.328517,
		31.997017, 34.006626, 54.503918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436106, 33.684742, 54.952297>,  <31.362316, 33.821503, 54.273956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436106, 33.684742, 54.952297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.731977, 33.950409, 54.908924>,  <31.909500, 34.109810, 54.882900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.731977, 33.950409, 54.908924>,  <31.436106, 33.684742, 54.952297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731977, 33.950409, 54.908924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357693, 0.524507, 0.772624,
		0.570027, -0.532707, 0.625534,
		0.739679, 0.664165, -0.108437,
		31.953882, 34.149658, 54.876392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.723370, 33.816456, 55.648281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858349, 34.128124, 55.436993>,  <31.939337, 34.315125, 55.310219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858349, 34.128124, 55.436993>,  <31.723370, 33.816456, 55.648281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858349, 34.128124, 55.436993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206211, 0.608694, 0.766139,
		0.918481, -0.149605, 0.366075,
		0.337446, 0.779173, -0.528223,
		31.959583, 34.361877, 55.278526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125916, 34.079899, 56.135246>,  <31.723370, 33.816456, 55.648281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125916, 34.079899, 56.135246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050564, 34.340759, 55.841522>,  <32.005352, 34.497276, 55.665287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050564, 34.340759, 55.841522>,  <32.125916, 34.079899, 56.135246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050564, 34.340759, 55.841522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282944, 0.679955, 0.676465,
		0.940455, 0.335202, 0.056431,
		-0.188382, 0.652151, -0.734310,
		31.994049, 34.536404, 55.621231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332882, 34.800125, 56.512241>,  <32.125916, 34.079899, 56.135246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332882, 34.800125, 56.512241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106903, 34.888149, 56.194145>,  <31.971315, 34.940964, 56.003288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106903, 34.888149, 56.194145>,  <32.332882, 34.800125, 56.512241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106903, 34.888149, 56.194145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434587, 0.739909, 0.513486,
		0.701406, 0.635693, -0.322371,
		-0.564945, 0.220064, -0.795241,
		31.937420, 34.954170, 55.955574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327320, 35.504528, 56.454460>,  <32.332882, 34.800125, 56.512241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327320, 35.504528, 56.454460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006207, 35.374561, 56.254475>,  <31.813540, 35.296581, 56.134483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006207, 35.374561, 56.254475>,  <32.327320, 35.504528, 56.454460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006207, 35.374561, 56.254475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520585, 0.790772, 0.321981,
		0.290742, 0.518757, -0.803966,
		-0.802783, -0.324919, -0.499968,
		31.765371, 35.277084, 56.104485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049252, 36.070457, 56.190857>,  <32.327320, 35.504528, 56.454460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049252, 36.070457, 56.190857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732107, 35.828133, 56.164448>,  <31.541821, 35.682735, 56.148602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732107, 35.828133, 56.164448>,  <32.049252, 36.070457, 56.190857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732107, 35.828133, 56.164448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569744, 0.698454, 0.433073,
		-0.216248, 0.380983, -0.898937,
		-0.792861, -0.605816, -0.066023,
		31.494249, 35.646389, 56.144642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461300, 36.512177, 55.983643>,  <32.049252, 36.070457, 56.190857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461300, 36.512177, 55.983643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315212, 36.183926, 56.159454>,  <31.227560, 35.986977, 56.264942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315212, 36.183926, 56.159454>,  <31.461300, 36.512177, 55.983643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315212, 36.183926, 56.159454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577760, 0.570020, 0.584184,
		-0.729938, -0.040589, -0.682307,
		-0.365217, -0.820628, 0.439530,
		31.205647, 35.937737, 56.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765202, 36.634254, 56.097336>,  <31.461300, 36.512177, 55.983643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765202, 36.634254, 56.097336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784849, 36.304272, 56.322559>,  <30.796637, 36.106281, 56.457695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784849, 36.304272, 56.322559>,  <30.765202, 36.634254, 56.097336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784849, 36.304272, 56.322559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677185, 0.386879, 0.625896,
		-0.734172, -0.412040, -0.539643,
		0.049118, -0.824953, 0.563063,
		30.799585, 36.056786, 56.491478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163288, 36.300457, 56.034607>,  <30.765202, 36.634254, 56.097336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163288, 36.300457, 56.034607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325863, 36.182621, 56.380562>,  <30.423409, 36.111919, 56.588135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325863, 36.182621, 56.380562>,  <30.163288, 36.300457, 56.034607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325863, 36.182621, 56.380562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729761, 0.464921, 0.501296,
		-0.549779, -0.834905, -0.026019,
		0.406437, -0.294590, 0.864885,
		30.447794, 36.094246, 56.640026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568064, 36.034004, 56.413170>,  <30.163288, 36.300457, 56.034607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568064, 36.034004, 56.413170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864061, 36.104294, 56.672871>,  <30.041660, 36.146469, 56.828693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864061, 36.104294, 56.672871>,  <29.568064, 36.034004, 56.413170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864061, 36.104294, 56.672871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665907, 0.327387, 0.670362,
		-0.094758, -0.928406, 0.359282,
		0.739992, 0.175726, 0.649255,
		30.086060, 36.157013, 56.867645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289635, 35.831417, 57.018513>,  <29.568064, 36.034004, 56.413170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289635, 35.831417, 57.018513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557121, 36.116222, 57.104164>,  <29.717613, 36.287106, 57.155556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557121, 36.116222, 57.104164>,  <29.289635, 35.831417, 57.018513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557121, 36.116222, 57.104164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642356, 0.408224, 0.648638,
		0.374425, -0.571306, 0.730353,
		0.668719, 0.712013, 0.214133,
		29.757736, 36.329826, 57.168404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078871, 36.101608, 57.670208>,  <29.289635, 35.831417, 57.018513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078871, 36.101608, 57.670208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299143, 36.395882, 57.512463>,  <29.431307, 36.572445, 57.417816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299143, 36.395882, 57.512463>,  <29.078871, 36.101608, 57.670208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299143, 36.395882, 57.512463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713824, 0.659947, 0.234362,
		0.432674, 0.152447, 0.888568,
		0.550680, 0.735683, -0.394362,
		29.464348, 36.616585, 57.394154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895561, 36.527382, 58.173351>,  <29.078871, 36.101608, 57.670208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895561, 36.527382, 58.173351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057642, 36.731300, 57.869793>,  <29.154890, 36.853649, 57.687656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057642, 36.731300, 57.869793>,  <28.895561, 36.527382, 58.173351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057642, 36.731300, 57.869793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693462, 0.712316, 0.108241,
		0.595754, 0.482405, 0.642154,
		0.405201, 0.509794, -0.758896,
		29.179203, 36.884239, 57.642124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005182, 37.150169, 58.452129>,  <28.895561, 36.527382, 58.173351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005182, 37.150169, 58.452129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983944, 37.199951, 58.055809>,  <28.971201, 37.229820, 57.818016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983944, 37.199951, 58.055809>,  <29.005182, 37.150169, 58.452129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983944, 37.199951, 58.055809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669834, 0.731435, 0.127770,
		0.740610, 0.670458, 0.044528,
		-0.053094, 0.124454, -0.990804,
		28.968016, 37.237286, 57.758568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268744, 37.868748, 58.327278>,  <29.005182, 37.150169, 58.452129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268744, 37.868748, 58.327278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040489, 37.753258, 58.019768>,  <28.903536, 37.683964, 57.835262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040489, 37.753258, 58.019768>,  <29.268744, 37.868748, 58.327278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040489, 37.753258, 58.019768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558014, 0.823156, 0.105044,
		0.602490, 0.488927, -0.630838,
		-0.570636, -0.288729, -0.768771,
		28.869299, 37.666637, 57.789135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243357, 38.455112, 57.976921>,  <29.268744, 37.868748, 58.327278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243357, 38.455112, 57.976921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937593, 38.218712, 57.873852>,  <28.754135, 38.076870, 57.812012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937593, 38.218712, 57.873852>,  <29.243357, 38.455112, 57.976921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937593, 38.218712, 57.873852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620669, 0.782722, 0.046006,
		0.174494, 0.195095, -0.965137,
		-0.764409, -0.591003, -0.257670,
		28.708271, 38.041412, 57.796551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841402, 38.922253, 57.602921>,  <29.243357, 38.455112, 57.976921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841402, 38.922253, 57.602921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587103, 38.619850, 57.665249>,  <28.434523, 38.438408, 57.702644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587103, 38.619850, 57.665249>,  <28.841402, 38.922253, 57.602921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587103, 38.619850, 57.665249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740447, 0.654326, 0.153609,
		-0.218085, -0.017717, -0.975769,
		-0.635750, -0.756005, 0.155817,
		28.396378, 38.393047, 57.711994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214554, 39.236759, 57.317120>,  <28.841402, 38.922253, 57.602921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214554, 39.236759, 57.317120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109488, 38.927601, 57.548168>,  <28.046448, 38.742107, 57.686798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109488, 38.927601, 57.548168>,  <28.214554, 39.236759, 57.317120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109488, 38.927601, 57.548168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831754, 0.484802, 0.270468,
		-0.489074, -0.409394, -0.770197,
		-0.262665, -0.772893, 0.577619,
		28.030687, 38.695732, 57.721455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550648, 38.799843, 57.110134>,  <28.214554, 39.236759, 57.317120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550648, 38.799843, 57.110134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618269, 38.803532, 57.504360>,  <27.658842, 38.805744, 57.740894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618269, 38.803532, 57.504360>,  <27.550648, 38.799843, 57.110134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618269, 38.803532, 57.504360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870288, 0.470754, 0.144878,
		-0.462623, -0.882216, 0.087606,
		0.169054, 0.009219, 0.985564,
		27.668985, 38.806297, 57.800030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957506, 39.078262, 57.417820>,  <27.550648, 38.799843, 57.110134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957506, 39.078262, 57.417820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159689, 39.040882, 57.760933>,  <27.280998, 39.018456, 57.966801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159689, 39.040882, 57.760933>,  <26.957506, 39.078262, 57.417820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159689, 39.040882, 57.760933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685696, 0.559949, 0.465057,
		-0.523771, -0.823240, 0.218951,
		0.505454, -0.093450, 0.857778,
		27.311325, 39.012848, 58.018265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540472, 38.804607, 58.000252>,  <26.957506, 39.078262, 57.417820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540472, 38.804607, 58.000252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837883, 39.017181, 58.162605>,  <27.016331, 39.144726, 58.260017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837883, 39.017181, 58.162605>,  <26.540472, 38.804607, 58.000252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837883, 39.017181, 58.162605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656966, 0.693756, 0.295125,
		-0.124742, -0.486084, 0.864964,
		0.743529, 0.531438, 0.405881,
		27.060942, 39.176613, 58.284370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296806, 39.004879, 58.664162>,  <26.540472, 38.804607, 58.000252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296806, 39.004879, 58.664162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586674, 39.266510, 58.577408>,  <26.760593, 39.423489, 58.525356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586674, 39.266510, 58.577408>,  <26.296806, 39.004879, 58.664162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586674, 39.266510, 58.577408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637971, 0.755777, 0.147629,
		0.260478, 0.031386, 0.964969,
		0.724668, 0.654077, -0.216887,
		26.804073, 39.462734, 58.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346491, 39.391842, 59.376205>,  <26.296806, 39.004879, 58.664162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346491, 39.391842, 59.376205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495337, 39.616287, 59.080456>,  <26.584644, 39.750954, 58.903004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495337, 39.616287, 59.080456>,  <26.346491, 39.391842, 59.376205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495337, 39.616287, 59.080456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400609, 0.815658, 0.417390,
		0.837285, 0.140886, 0.528304,
		0.372112, 0.561118, -0.739378,
		26.606972, 39.784622, 58.858643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825571, 40.025688, 59.625618>,  <26.346491, 39.391842, 59.376205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825571, 40.025688, 59.625618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632763, 40.075611, 59.278728>,  <26.517078, 40.105564, 59.070595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632763, 40.075611, 59.278728>,  <26.825571, 40.025688, 59.625618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632763, 40.075611, 59.278728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413217, 0.840427, 0.350620,
		0.772599, 0.527358, -0.353530,
		-0.482018, 0.124804, -0.867227,
		26.488157, 40.113052, 59.018562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067474, 40.484905, 59.265663>,  <26.825571, 40.025688, 59.625618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067474, 40.484905, 59.265663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675766, 40.494045, 59.185162>,  <26.440741, 40.499531, 59.136860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675766, 40.494045, 59.185162>,  <27.067474, 40.484905, 59.265663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675766, 40.494045, 59.185162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108205, 0.780913, 0.615196,
		0.171219, 0.624221, -0.762255,
		-0.979273, 0.022854, -0.201251,
		26.381985, 40.500900, 59.124786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697746, 40.521385, 59.746624>,  <27.067474, 40.484905, 59.265663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697746, 40.521385, 59.746624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804907, 40.543919, 60.131344>,  <27.869204, 40.557438, 60.362175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804907, 40.543919, 60.131344>,  <27.697746, 40.521385, 59.746624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804907, 40.543919, 60.131344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833597, -0.514080, -0.202084,
		0.483058, 0.855891, -0.184679,
		0.267901, 0.056330, 0.961798,
		27.885277, 40.560818, 60.419884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403111, 40.595917, 59.691223>,  <27.697746, 40.521385, 59.746624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403111, 40.595917, 59.691223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352997, 40.480507, 60.070919>,  <28.322929, 40.411259, 60.298737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352997, 40.480507, 60.070919>,  <28.403111, 40.595917, 59.691223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352997, 40.480507, 60.070919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840788, -0.538783, -0.052795,
		0.526667, 0.791496, 0.310091,
		-0.125284, -0.288526, 0.949240,
		28.315411, 40.393948, 60.355690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019188, 40.688183, 59.963680>,  <28.403111, 40.595917, 59.691223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019188, 40.688183, 59.963680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837025, 40.408504, 60.184128>,  <28.727726, 40.240700, 60.316395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837025, 40.408504, 60.184128>,  <29.019188, 40.688183, 59.963680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837025, 40.408504, 60.184128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876068, -0.462128, 0.137634,
		0.158455, 0.545498, 0.822997,
		-0.455409, -0.699192, 0.551120,
		28.700401, 40.198746, 60.349464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444618, 40.569595, 60.481461>,  <29.019188, 40.688183, 59.963680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444618, 40.569595, 60.481461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208406, 40.249481, 60.439861>,  <29.066679, 40.057411, 60.414902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208406, 40.249481, 60.439861>,  <29.444618, 40.569595, 60.481461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208406, 40.249481, 60.439861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797034, -0.598567, 0.080335,
		-0.126543, -0.035452, 0.991328,
		-0.590528, -0.800288, -0.104001,
		29.031248, 40.009396, 60.408661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668009, 40.141670, 60.967297>,  <29.444618, 40.569595, 60.481461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668009, 40.141670, 60.967297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488077, 39.928200, 60.680843>,  <29.380117, 39.800117, 60.508972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488077, 39.928200, 60.680843>,  <29.668009, 40.141670, 60.967297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488077, 39.928200, 60.680843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765448, -0.643497, -0.001262,
		-0.460155, -0.548730, 0.697963,
		-0.449830, -0.533673, -0.716133,
		29.353128, 39.768097, 60.466003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818390, 39.486561, 61.155533>,  <29.668009, 40.141670, 60.967297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818390, 39.486561, 61.155533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656004, 39.427692, 60.794750>,  <29.558573, 39.392372, 60.578281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656004, 39.427692, 60.794750>,  <29.818390, 39.486561, 61.155533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656004, 39.427692, 60.794750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659017, -0.730917, -0.177360,
		-0.633156, -0.666410, 0.393715,
		-0.405967, -0.147169, -0.901960,
		29.534214, 39.383541, 60.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812939, 38.707767, 61.040138>,  <29.818390, 39.486561, 61.155533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812939, 38.707767, 61.040138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811495, 38.880165, 60.679199>,  <29.810629, 38.983604, 60.462635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811495, 38.880165, 60.679199>,  <29.812939, 38.707767, 61.040138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811495, 38.880165, 60.679199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607669, -0.715692, -0.344272,
		-0.794182, -0.549570, -0.259321,
		-0.003607, 0.430996, -0.902347,
		29.810413, 39.009464, 60.408497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643724, 38.204006, 60.645306>,  <29.812939, 38.707767, 61.040138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643724, 38.204006, 60.645306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805706, 38.461990, 60.386066>,  <29.902895, 38.616783, 60.230522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805706, 38.461990, 60.386066>,  <29.643724, 38.204006, 60.645306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805706, 38.461990, 60.386066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614687, -0.716775, -0.329231,
		-0.676884, -0.265055, -0.686712,
		0.404954, 0.644964, -0.648100,
		29.927193, 38.655479, 60.191635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701403, 37.879955, 59.976570>,  <29.643724, 38.204006, 60.645306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701403, 37.879955, 59.976570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965626, 38.180115, 59.967098>,  <30.124161, 38.360210, 59.961414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965626, 38.180115, 59.967098>,  <29.701403, 37.879955, 59.976570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965626, 38.180115, 59.967098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684964, -0.615270, -0.390214,
		-0.307383, 0.241542, -0.920420,
		0.660560, 0.750400, -0.023676,
		30.163794, 38.405235, 59.959995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848824, 37.881859, 59.339554>,  <29.701403, 37.879955, 59.976570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848824, 37.881859, 59.339554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149790, 38.074783, 59.518997>,  <30.330370, 38.190536, 59.626663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149790, 38.074783, 59.518997>,  <29.848824, 37.881859, 59.339554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149790, 38.074783, 59.518997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658388, -0.571248, -0.490103,
		0.019885, 0.664120, -0.747362,
		0.752416, 0.482308, 0.448608,
		30.375515, 38.219475, 59.653580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280994, 38.134411, 58.852642>,  <29.848824, 37.881859, 59.339554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280994, 38.134411, 58.852642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501038, 38.095104, 59.184361>,  <30.633064, 38.071518, 59.383392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501038, 38.095104, 59.184361>,  <30.280994, 38.134411, 58.852642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501038, 38.095104, 59.184361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593301, -0.652857, -0.470927,
		0.587687, 0.751080, -0.300838,
		0.550108, -0.098271, 0.829292,
		30.666069, 38.065624, 59.433147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904530, 38.025955, 58.588772>,  <30.280994, 38.134411, 58.852642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904530, 38.025955, 58.588772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937750, 37.914089, 58.971371>,  <30.957682, 37.846970, 59.200932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937750, 37.914089, 58.971371>,  <30.904530, 38.025955, 58.588772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937750, 37.914089, 58.971371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555630, -0.783785, -0.277410,
		0.827271, 0.554499, 0.090296,
		0.083051, -0.279665, 0.956499,
		30.962666, 37.830189, 59.258320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601963, 37.821877, 58.630096>,  <30.904530, 38.025955, 58.588772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601963, 37.821877, 58.630096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480583, 37.645676, 58.968060>,  <31.407755, 37.539955, 59.170837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480583, 37.645676, 58.968060>,  <31.601963, 37.821877, 58.630096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480583, 37.645676, 58.968060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595804, -0.779711, -0.192529,
		0.743597, 0.444980, 0.499055,
		-0.303447, -0.440503, 0.844912,
		31.389549, 37.513523, 59.221535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198036, 37.599232, 59.109550>,  <31.601963, 37.821877, 58.630096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198036, 37.599232, 59.109550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879641, 37.374363, 59.199318>,  <31.688604, 37.239441, 59.253178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879641, 37.374363, 59.199318>,  <32.198036, 37.599232, 59.109550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879641, 37.374363, 59.199318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549551, -0.826587, -0.121438,
		0.253774, 0.026669, 0.966896,
		-0.795985, -0.562176, 0.224422,
		31.640844, 37.205711, 59.266644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497730, 37.087433, 59.487328>,  <32.198036, 37.599232, 59.109550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497730, 37.087433, 59.487328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144543, 36.931652, 59.382492>,  <31.932629, 36.838184, 59.319592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144543, 36.931652, 59.382492>,  <32.497730, 37.087433, 59.487328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144543, 36.931652, 59.382492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457166, -0.840170, -0.291744,
		-0.106576, -0.377418, 0.919890,
		-0.882973, -0.389449, -0.262084,
		31.879650, 36.814816, 59.303867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460155, 36.385998, 59.736385>,  <32.497730, 37.087433, 59.487328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460155, 36.385998, 59.736385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175179, 36.381844, 59.455723>,  <32.004192, 36.379353, 59.287327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175179, 36.381844, 59.455723>,  <32.460155, 36.385998, 59.736385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175179, 36.381844, 59.455723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340118, -0.879703, -0.332329,
		-0.613799, -0.475410, 0.630267,
		-0.712440, -0.010382, -0.701656,
		31.961447, 36.378731, 59.245228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120098, 35.743805, 59.874916>,  <32.460155, 36.385998, 59.736385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120098, 35.743805, 59.874916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074394, 35.875290, 59.499920>,  <32.046970, 35.954182, 59.274921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074394, 35.875290, 59.499920>,  <32.120098, 35.743805, 59.874916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074394, 35.875290, 59.499920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358321, -0.866515, -0.347502,
		-0.926580, -0.375629, -0.018777,
		-0.114261, 0.328716, -0.937491,
		32.040115, 35.973904, 59.218674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775209, 35.228725, 59.549889>,  <32.120098, 35.743805, 59.874916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775209, 35.228725, 59.549889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961725, 35.461292, 59.283195>,  <32.073635, 35.600834, 59.123180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961725, 35.461292, 59.283195>,  <31.775209, 35.228725, 59.549889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961725, 35.461292, 59.283195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554990, -0.779173, -0.291334,
		-0.688885, -0.234183, -0.686000,
		0.466287, 0.581419, -0.666729,
		32.101612, 35.635719, 59.083176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828201, 34.743904, 59.010620>,  <31.775209, 35.228725, 59.549889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828201, 34.743904, 59.010620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075909, 35.037350, 58.898678>,  <32.224533, 35.213417, 58.831512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075909, 35.037350, 58.898678>,  <31.828201, 34.743904, 59.010620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075909, 35.037350, 58.898678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644438, -0.678507, -0.352601,
		-0.448558, 0.038004, -0.892946,
		0.619270, 0.733610, -0.279858,
		32.261688, 35.257431, 58.814720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879816, 34.647316, 58.323078>,  <31.828201, 34.743904, 59.010620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879816, 34.647316, 58.323078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199532, 34.863274, 58.428646>,  <32.391361, 34.992847, 58.491985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199532, 34.863274, 58.428646>,  <31.879816, 34.647316, 58.323078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199532, 34.863274, 58.428646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587229, -0.608400, -0.533865,
		-0.127659, 0.581695, -0.803327,
		0.799291, 0.539889, 0.263920,
		32.439320, 35.025242, 58.507824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.978210, 36.330368, 51.921043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.125126, 35.958977, 51.943008>,  <47.213276, 35.736141, 51.956188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.125126, 35.958977, 51.943008>,  <46.978210, 36.330368, 51.921043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125126, 35.958977, 51.943008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927913, -0.361736, 0.090141,
		-0.063830, -0.084063, -0.994414,
		0.367293, -0.928483, 0.054914,
		47.235313, 35.680431, 51.959484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474968, 36.006393, 51.647114>,  <46.978210, 36.330368, 51.921043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474968, 36.006393, 51.647114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.679077, 35.692085, 51.786930>,  <46.801544, 35.503502, 51.870819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.679077, 35.692085, 51.786930>,  <46.474968, 36.006393, 51.647114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679077, 35.692085, 51.786930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800356, -0.582624, -0.141346,
		0.314718, -0.207633, -0.926197,
		0.510277, -0.785772, 0.349542,
		46.832161, 35.456352, 51.891792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385754, 35.384190, 51.143089>,  <46.474968, 36.006393, 51.647114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385754, 35.384190, 51.143089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.474468, 35.243721, 51.506954>,  <46.527699, 35.159439, 51.725273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.474468, 35.243721, 51.506954>,  <46.385754, 35.384190, 51.143089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474468, 35.243721, 51.506954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814236, -0.579979, -0.025381,
		0.536499, -0.735051, -0.414571,
		0.221786, -0.351176, 0.909663,
		46.541004, 35.138367, 51.779854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339954, 34.654728, 51.064743>,  <46.385754, 35.384190, 51.143089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339954, 34.654728, 51.064743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.291134, 34.732449, 51.454071>,  <46.261841, 34.779079, 51.687668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.291134, 34.732449, 51.454071>,  <46.339954, 34.654728, 51.064743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291134, 34.732449, 51.454071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866397, -0.499276, -0.008978,
		0.484210, -0.844377, 0.229277,
		-0.122054, 0.194298, 0.973320,
		46.254517, 34.790737, 51.746067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175892, 34.016197, 51.312981>,  <46.339954, 34.654728, 51.064743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175892, 34.016197, 51.312981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.056087, 34.247768, 51.616333>,  <45.984207, 34.386711, 51.798344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.056087, 34.247768, 51.616333>,  <46.175892, 34.016197, 51.312981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056087, 34.247768, 51.616333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851038, -0.521437, 0.061950,
		0.431312, -0.626855, 0.648863,
		-0.299507, 0.578927, 0.758380,
		45.966236, 34.421448, 51.843845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926109, 33.578579, 51.678387>,  <46.175892, 34.016197, 51.312981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926109, 33.578579, 51.678387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.754337, 33.924595, 51.782146>,  <45.651272, 34.132206, 51.844402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.754337, 33.924595, 51.782146>,  <45.926109, 33.578579, 51.678387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754337, 33.924595, 51.782146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899755, -0.434508, -0.040536,
		0.077647, -0.250805, 0.964918,
		-0.429432, 0.865043, 0.259402,
		45.625507, 34.184109, 51.859966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461029, 33.321030, 52.114285>,  <45.926109, 33.578579, 51.678387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461029, 33.321030, 52.114285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.315815, 33.692432, 52.083103>,  <45.228687, 33.915276, 52.064396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.315815, 33.692432, 52.083103>,  <45.461029, 33.321030, 52.114285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315815, 33.692432, 52.083103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931379, -0.364049, 0.001264,
		-0.027205, 0.073061, 0.996956,
		-0.363034, 0.928510, -0.077952,
		45.206905, 33.970985, 52.059719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975555, 33.258209, 52.619144>,  <45.461029, 33.321030, 52.114285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975555, 33.258209, 52.619144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.878345, 33.561970, 52.377731>,  <44.820019, 33.744225, 52.232883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.878345, 33.561970, 52.377731>,  <44.975555, 33.258209, 52.619144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878345, 33.561970, 52.377731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872663, -0.442837, -0.205801,
		-0.423551, 0.476664, 0.770322,
		-0.243029, 0.759399, -0.603531,
		44.805439, 33.789787, 52.196671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333496, 33.425659, 52.815308>,  <44.975555, 33.258209, 52.619144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333496, 33.425659, 52.815308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.383007, 33.558075, 52.441124>,  <44.412716, 33.637524, 52.216614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.383007, 33.558075, 52.441124>,  <44.333496, 33.425659, 52.815308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383007, 33.558075, 52.441124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858406, -0.437209, -0.268302,
		-0.497812, 0.836219, 0.230047,
		0.123780, 0.331037, -0.935464,
		44.420139, 33.657387, 52.160484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777359, 33.901947, 52.455788>,  <44.333496, 33.425659, 52.815308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777359, 33.901947, 52.455788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.942699, 33.682503, 52.165085>,  <44.041904, 33.550838, 51.990665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.942699, 33.682503, 52.165085>,  <43.777359, 33.901947, 52.455788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942699, 33.682503, 52.165085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908117, -0.306935, -0.284807,
		-0.066820, 0.777703, -0.625071,
		0.413351, -0.548607, -0.726754,
		44.066704, 33.517921, 51.947060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202606, 33.822159, 51.955887>,  <43.777359, 33.901947, 52.455788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202606, 33.822159, 51.955887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.473400, 33.583572, 51.783413>,  <43.635876, 33.440418, 51.679928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.473400, 33.583572, 51.783413>,  <43.202606, 33.822159, 51.955887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473400, 33.583572, 51.783413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726231, -0.446218, -0.522951,
		0.119520, 0.667170, -0.735255,
		0.676981, -0.596468, -0.431188,
		43.676495, 33.404633, 51.654057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217499, 33.972363, 51.218369>,  <43.202606, 33.822159, 51.955887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217499, 33.972363, 51.218369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.376072, 33.606903, 51.254360>,  <43.471214, 33.387627, 51.275955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.376072, 33.606903, 51.254360>,  <43.217499, 33.972363, 51.218369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376072, 33.606903, 51.254360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760424, -0.381694, -0.525419,
		0.514392, 0.139867, -0.846072,
		0.396429, -0.913645, 0.089982,
		43.494999, 33.332809, 51.281353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399933, 33.699223, 50.492500>,  <43.217499, 33.972363, 51.218369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399933, 33.699223, 50.492500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.339504, 33.397697, 50.748295>,  <43.303249, 33.216782, 50.901772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.339504, 33.397697, 50.748295>,  <43.399933, 33.699223, 50.492500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339504, 33.397697, 50.748295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732788, -0.348798, -0.584261,
		0.663476, -0.556873, -0.499692,
		-0.151067, -0.753812, 0.639489,
		43.294186, 33.171555, 50.940140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377300, 33.080803, 50.049080>,  <43.399933, 33.699223, 50.492500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377300, 33.080803, 50.049080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.181889, 33.003338, 50.389393>,  <43.064640, 32.956860, 50.593582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.181889, 33.003338, 50.389393>,  <43.377300, 33.080803, 50.049080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181889, 33.003338, 50.389393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735977, -0.432298, -0.521014,
		0.468693, -0.880689, 0.068660,
		-0.488533, -0.193663, 0.850782,
		43.035328, 32.945240, 50.644627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077969, 32.452980, 49.886940>,  <43.377300, 33.080803, 50.049080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077969, 32.452980, 49.886940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.886032, 32.593639, 50.208462>,  <42.770870, 32.678036, 50.401375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.886032, 32.593639, 50.208462>,  <43.077969, 32.452980, 49.886940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886032, 32.593639, 50.208462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876409, -0.234695, -0.420507,
		0.040778, -0.906234, 0.420805,
		-0.479838, 0.351650, 0.803802,
		42.742081, 32.699135, 50.449604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768742, 31.906981, 50.113991>,  <43.077969, 32.452980, 49.886940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768742, 31.906981, 50.113991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.543736, 32.184921, 50.293217>,  <42.408733, 32.351685, 50.400753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.543736, 32.184921, 50.293217>,  <42.768742, 31.906981, 50.113991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543736, 32.184921, 50.293217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813951, -0.370287, -0.447628,
		-0.145124, -0.616498, 0.773867,
		-0.562514, 0.694851, 0.448062,
		42.374981, 32.393375, 50.427635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208347, 31.532551, 50.404594>,  <42.768742, 31.906981, 50.113991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208347, 31.532551, 50.404594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082298, 31.910900, 50.373547>,  <42.006668, 32.137909, 50.354916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082298, 31.910900, 50.373547>,  <42.208347, 31.532551, 50.404594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082298, 31.910900, 50.373547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900867, -0.323852, -0.289065,
		-0.298555, -0.021169, 0.954158,
		-0.315125, 0.945871, -0.077617,
		41.987762, 32.194660, 50.350258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472080, 31.556376, 50.618134>,  <42.208347, 31.532551, 50.404594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472080, 31.556376, 50.618134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.492302, 31.913609, 50.439316>,  <41.504436, 32.127949, 50.332024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.492302, 31.913609, 50.439316>,  <41.472080, 31.556376, 50.618134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492302, 31.913609, 50.439316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866568, -0.183298, -0.464178,
		-0.496491, 0.410859, 0.764651,
		0.050553, 0.893082, -0.447043,
		41.507469, 32.181534, 50.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913204, 31.941072, 50.711838>,  <41.472080, 31.556376, 50.618134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913204, 31.941072, 50.711838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059467, 32.087723, 50.369637>,  <41.147224, 32.175713, 50.164318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059467, 32.087723, 50.369637>,  <40.913204, 31.941072, 50.711838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059467, 32.087723, 50.369637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893650, -0.118631, -0.432800,
		-0.260165, 0.922774, 0.284259,
		0.365655, 0.366627, -0.855501,
		41.169163, 32.197712, 50.112988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450325, 32.469944, 50.564907>,  <40.913204, 31.941072, 50.711838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450325, 32.469944, 50.564907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633629, 32.373493, 50.222713>,  <40.743610, 32.315624, 50.017395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633629, 32.373493, 50.222713>,  <40.450325, 32.469944, 50.564907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633629, 32.373493, 50.222713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861419, -0.357627, -0.360639,
		-0.218987, 0.902199, -0.371593,
		0.458260, -0.241122, -0.855487,
		40.771107, 32.301155, 49.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101788, 32.711040, 49.964325>,  <40.450325, 32.469944, 50.564907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101788, 32.711040, 49.964325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315834, 32.381729, 49.888573>,  <40.444263, 32.184143, 49.843121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315834, 32.381729, 49.888573>,  <40.101788, 32.711040, 49.964325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315834, 32.381729, 49.888573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838522, -0.490406, -0.237449,
		0.102615, 0.285860, -0.952761,
		0.535118, -0.823278, -0.189377,
		40.476368, 32.134747, 49.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369038, 32.523579, 50.182678>,  <40.101788, 32.711040, 49.964325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369038, 32.523579, 50.182678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546116, 32.879803, 50.224499>,  <39.652363, 33.093536, 50.249592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546116, 32.879803, 50.224499>,  <39.369038, 32.523579, 50.182678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546116, 32.879803, 50.224499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018351, -0.107579, 0.994027,
		0.896486, -0.441967, -0.031282,
		0.442692, 0.890557, 0.104554,
		39.678925, 33.146969, 50.255863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208046, 31.873184, 49.922733>,  <39.369038, 32.523579, 50.182678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208046, 31.873184, 49.922733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809612, 31.890123, 49.891716>,  <38.570549, 31.900286, 49.873104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809612, 31.890123, 49.891716>,  <39.208046, 31.873184, 49.922733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809612, 31.890123, 49.891716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012624, -0.800456, -0.599259,
		-0.087449, -0.597894, 0.796791,
		-0.996089, 0.042346, -0.077547,
		38.510784, 31.902826, 49.868450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884972, 31.221165, 49.816788>,  <39.208046, 31.873184, 49.922733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884972, 31.221165, 49.816788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574615, 31.443478, 49.697384>,  <38.388401, 31.576866, 49.625744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574615, 31.443478, 49.697384>,  <38.884972, 31.221165, 49.816788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574615, 31.443478, 49.697384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268447, -0.719048, -0.641020,
		-0.570908, -0.417226, 0.707097,
		-0.775887, 0.555781, -0.298507,
		38.341850, 31.610212, 49.607830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802097, 30.760353, 49.228157>,  <38.884972, 31.221165, 49.816788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802097, 30.760353, 49.228157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012077, 30.554516, 48.956978>,  <39.138065, 30.431013, 48.794270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012077, 30.554516, 48.956978>,  <38.802097, 30.760353, 49.228157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012077, 30.554516, 48.956978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834824, -0.466481, -0.292344,
		-0.165812, 0.719435, -0.674478,
		0.524954, -0.514596, -0.677949,
		39.169563, 30.400137, 48.753593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510288, 30.941772, 48.515179>,  <38.802097, 30.760353, 49.228157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510288, 30.941772, 48.515179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717674, 30.602041, 48.475513>,  <38.842106, 30.398203, 48.451714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717674, 30.602041, 48.475513>,  <38.510288, 30.941772, 48.515179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717674, 30.602041, 48.475513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788072, -0.429596, -0.440896,
		0.331867, 0.306735, -0.892064,
		0.518466, -0.849329, -0.099160,
		38.873215, 30.347242, 48.445766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209858, 30.723867, 47.876141>,  <38.510288, 30.941772, 48.515179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209858, 30.723867, 47.876141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363758, 30.396687, 48.047215>,  <38.456100, 30.200378, 48.149860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363758, 30.396687, 48.047215>,  <38.209858, 30.723867, 47.876141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363758, 30.396687, 48.047215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683334, -0.563912, -0.463743,
		0.620499, -0.113828, -0.775903,
		0.384754, -0.817953, 0.427689,
		38.479183, 30.151300, 48.175522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294849, 30.284328, 47.359764>,  <38.209858, 30.723867, 47.876141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294849, 30.284328, 47.359764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270145, 30.072664, 47.698273>,  <38.255322, 29.945665, 47.901379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270145, 30.072664, 47.698273>,  <38.294849, 30.284328, 47.359764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270145, 30.072664, 47.698273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723404, -0.560441, -0.403228,
		0.687657, -0.637101, -0.348182,
		-0.061761, -0.529159, 0.846272,
		38.251617, 29.913918, 47.952156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049534, 29.603701, 47.099113>,  <38.294849, 30.284328, 47.359764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049534, 29.603701, 47.099113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000881, 29.583765, 47.495644>,  <37.971691, 29.571804, 47.733562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000881, 29.583765, 47.495644>,  <38.049534, 29.603701, 47.099113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000881, 29.583765, 47.495644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798041, -0.588956, -0.127523,
		0.590201, -0.806627, 0.031862,
		-0.121628, -0.049837, 0.991324,
		37.964394, 29.568813, 47.793041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762993, 28.905098, 47.219967>,  <38.049534, 29.603701, 47.099113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762993, 28.905098, 47.219967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670013, 29.098349, 47.557617>,  <37.614227, 29.214300, 47.760208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670013, 29.098349, 47.557617>,  <37.762993, 28.905098, 47.219967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670013, 29.098349, 47.557617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909745, -0.414964, -0.013017,
		0.343995, -0.770968, 0.535982,
		-0.232449, 0.483129, 0.844129,
		37.600277, 29.243288, 47.810856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399765, 28.442286, 47.576122>,  <37.762993, 28.905098, 47.219967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399765, 28.442286, 47.576122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299137, 28.778854, 47.767422>,  <37.238762, 28.980797, 47.882202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299137, 28.778854, 47.767422>,  <37.399765, 28.442286, 47.576122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299137, 28.778854, 47.767422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919314, -0.362245, 0.153754,
		0.302615, -0.400980, 0.864661,
		-0.251567, 0.841423, 0.478248,
		37.223667, 29.031281, 47.910896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072411, 28.240530, 48.227596>,  <37.399765, 28.442286, 47.576122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072411, 28.240530, 48.227596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938023, 28.613142, 48.171925>,  <36.857391, 28.836710, 48.138519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938023, 28.613142, 48.171925>,  <37.072411, 28.240530, 48.227596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938023, 28.613142, 48.171925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936875, -0.315318, 0.151128,
		0.096893, 0.181172, 0.978667,
		-0.335971, 0.931532, -0.139184,
		36.837231, 28.892601, 48.130169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489162, 28.293394, 48.649197>,  <37.072411, 28.240530, 48.227596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489162, 28.293394, 48.649197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438961, 28.592039, 48.387871>,  <36.408840, 28.771225, 48.231075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438961, 28.592039, 48.387871>,  <36.489162, 28.293394, 48.649197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438961, 28.592039, 48.387871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989876, -0.138240, 0.032171,
		-0.066296, 0.650739, 0.756402,
		-0.125500, 0.746611, -0.653316,
		36.401310, 28.816023, 48.191875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052994, 28.725948, 48.888607>,  <36.489162, 28.293394, 48.649197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052994, 28.725948, 48.888607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044144, 28.782730, 48.492756>,  <36.038834, 28.816799, 48.255245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044144, 28.782730, 48.492756>,  <36.052994, 28.725948, 48.888607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044144, 28.782730, 48.492756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961662, -0.273662, -0.017756,
		-0.273344, 0.951292, 0.142570,
		-0.022125, 0.141958, -0.989625,
		36.037506, 28.825317, 48.195869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444298, 29.072819, 48.785374>,  <36.052994, 28.725948, 48.888607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444298, 29.072819, 48.785374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.556568, 28.869457, 48.459736>,  <35.623932, 28.747440, 48.264355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.556568, 28.869457, 48.459736>,  <35.444298, 29.072819, 48.785374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556568, 28.869457, 48.459736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956329, -0.220231, -0.192181,
		-0.081582, 0.832479, -0.548017,
		0.280677, -0.508406, -0.814091,
		35.640770, 28.716936, 48.215508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.241371, 32.421909, 53.109760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608356, 32.523708, 53.232067>,  <32.828548, 32.584789, 53.305450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608356, 32.523708, 53.232067>,  <32.241371, 32.421909, 53.109760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608356, 32.523708, 53.232067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393951, -0.688175, -0.609276,
		0.055361, 0.679445, -0.731635,
		0.917462, 0.254498, 0.305767,
		32.883595, 32.600060, 53.323795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543362, 32.519749, 52.548424>,  <32.241371, 32.421909, 53.109760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543362, 32.519749, 52.548424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853241, 32.477695, 52.797836>,  <33.039169, 32.452465, 52.947483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853241, 32.477695, 52.797836>,  <32.543362, 32.519749, 52.548424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853241, 32.477695, 52.797836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409323, -0.668233, -0.621224,
		0.481977, 0.736486, -0.474643,
		0.774695, -0.105133, 0.623534,
		33.085651, 32.446156, 52.984898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225590, 32.489544, 52.095646>,  <32.543362, 32.519749, 52.548424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225590, 32.489544, 52.095646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326683, 32.347782, 52.455761>,  <33.387337, 32.262726, 52.671829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326683, 32.347782, 52.455761>,  <33.225590, 32.489544, 52.095646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326683, 32.347782, 52.455761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508748, -0.742801, -0.435227,
		0.822984, 0.568016, -0.007425,
		0.252732, -0.354407, 0.900290,
		33.402504, 32.241459, 52.725849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007370, 32.428772, 52.232616>,  <33.225590, 32.489544, 52.095646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007370, 32.428772, 52.232616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831333, 32.159054, 52.469814>,  <33.725712, 31.997225, 52.612133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831333, 32.159054, 52.469814>,  <34.007370, 32.428772, 52.232616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831333, 32.159054, 52.469814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521990, -0.729458, -0.442060,
		0.730644, 0.114990, 0.673005,
		-0.440097, -0.674291, 0.592998,
		33.699303, 31.956766, 52.647713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364750, 31.893480, 52.106758>,  <34.007370, 32.428772, 52.232616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364750, 31.893480, 52.106758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069931, 31.725016, 52.318184>,  <33.893040, 31.623936, 52.445038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069931, 31.725016, 52.318184>,  <34.364750, 31.893480, 52.106758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069931, 31.725016, 52.318184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236390, -0.893338, -0.382188,
		0.633150, -0.156744, 0.757993,
		-0.737049, -0.421164, 0.528564,
		33.848816, 31.598667, 52.476753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683819, 31.382126, 52.460545>,  <34.364750, 31.893480, 52.106758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683819, 31.382126, 52.460545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.297695, 31.278219, 52.471146>,  <34.066021, 31.215876, 52.477509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.297695, 31.278219, 52.471146>,  <34.683819, 31.382126, 52.460545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297695, 31.278219, 52.471146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224996, -0.878996, -0.420408,
		0.132505, -0.399860, 0.906948,
		-0.965308, -0.259766, 0.026505,
		34.008102, 31.200289, 52.479095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668941, 30.751377, 52.702652>,  <34.683819, 31.382126, 52.460545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668941, 30.751377, 52.702652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311096, 30.787331, 52.527565>,  <34.096390, 30.808903, 52.422512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311096, 30.787331, 52.527565>,  <34.668941, 30.751377, 52.702652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311096, 30.787331, 52.527565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096900, -0.917227, -0.386399,
		-0.436215, -0.388091, 0.811851,
		-0.894610, 0.089885, -0.437715,
		34.042713, 30.814297, 52.396252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265377, 30.150921, 52.785107>,  <34.668941, 30.751377, 52.702652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265377, 30.150921, 52.785107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.118378, 30.311491, 52.449535>,  <34.030178, 30.407833, 52.248192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.118378, 30.311491, 52.449535>,  <34.265377, 30.150921, 52.785107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118378, 30.311491, 52.449535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140704, -0.915667, -0.376506,
		-0.919319, -0.020325, 0.392989,
		-0.367499, 0.401424, -0.838930,
		34.008129, 30.431919, 52.197857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636131, 29.717590, 52.661926>,  <34.265377, 30.150921, 52.785107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636131, 29.717590, 52.661926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691742, 29.911581, 52.316563>,  <33.725109, 30.027975, 52.109344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691742, 29.911581, 52.316563>,  <33.636131, 29.717590, 52.661926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691742, 29.911581, 52.316563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065119, -0.865508, -0.496644,
		-0.988146, 0.125269, -0.088744,
		0.139023, 0.484978, -0.863406,
		33.733448, 30.057074, 52.057541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002087, 29.751717, 52.111851>,  <33.636131, 29.717590, 52.661926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002087, 29.751717, 52.111851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343876, 29.788939, 51.907410>,  <33.548950, 29.811272, 51.784744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343876, 29.788939, 51.907410>,  <33.002087, 29.751717, 52.111851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343876, 29.788939, 51.907410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148442, -0.899074, -0.411862,
		-0.497842, 0.427792, -0.754418,
		0.854470, 0.093055, -0.511099,
		33.600216, 29.816854, 51.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868687, 29.562431, 51.358841>,  <33.002087, 29.751717, 52.111851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868687, 29.562431, 51.358841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.261444, 29.495647, 51.394650>,  <33.497097, 29.455578, 51.416134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.261444, 29.495647, 51.394650>,  <32.868687, 29.562431, 51.358841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261444, 29.495647, 51.394650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122172, -0.919209, -0.374338,
		0.144788, 0.356622, -0.922961,
		0.981891, -0.166959, 0.089521,
		33.556011, 29.445560, 51.421505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192245, 29.489691, 50.724777>,  <32.868687, 29.562431, 51.358841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192245, 29.489691, 50.724777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398518, 29.283611, 50.998608>,  <33.522282, 29.159964, 51.162907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398518, 29.283611, 50.998608>,  <33.192245, 29.489691, 50.724777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398518, 29.283611, 50.998608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206814, -0.850234, -0.484077,
		0.831448, 0.108047, -0.544996,
		0.515677, -0.515197, 0.684580,
		33.553219, 29.129051, 51.203983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862938, 29.943333, 50.199780>,  <33.192245, 29.489691, 50.724777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862938, 29.943333, 50.199780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481045, 29.859283, 50.283997>,  <32.251907, 29.808855, 50.334526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481045, 29.859283, 50.283997>,  <32.862938, 29.943333, 50.199780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481045, 29.859283, 50.283997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224754, -0.973238, 0.047893,
		0.194840, 0.093045, 0.976412,
		-0.954737, -0.210121, 0.210538,
		32.194622, 29.796247, 50.347157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532955, 29.576092, 50.076645>,  <32.862938, 29.943333, 50.199780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532955, 29.576092, 50.076645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461224, 29.666376, 49.693626>,  <33.418186, 29.720547, 49.463814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461224, 29.666376, 49.693626>,  <33.532955, 29.576092, 50.076645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461224, 29.666376, 49.693626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504523, 0.814488, 0.286473,
		0.844570, 0.534477, -0.032184,
		-0.179327, 0.225709, -0.957548,
		33.407425, 29.734089, 49.406361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676025, 30.241144, 49.995831>,  <33.532955, 29.576092, 50.076645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676025, 30.241144, 49.995831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429222, 30.168476, 49.689548>,  <33.281139, 30.124876, 49.505779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429222, 30.168476, 49.689548>,  <33.676025, 30.241144, 49.995831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429222, 30.168476, 49.689548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524906, 0.819934, 0.228434,
		0.586326, 0.542867, -0.601263,
		-0.617005, -0.181670, -0.765703,
		33.244122, 30.113976, 49.459839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646961, 30.921370, 49.794300>,  <33.676025, 30.241144, 49.995831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646961, 30.921370, 49.794300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340378, 30.727821, 49.625343>,  <33.156429, 30.611692, 49.523968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340378, 30.727821, 49.625343>,  <33.646961, 30.921370, 49.794300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340378, 30.727821, 49.625343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582316, 0.800977, 0.139086,
		0.271026, 0.352568, -0.895679,
		-0.766455, -0.483872, -0.422392,
		33.110443, 30.582661, 49.498627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418747, 31.430309, 49.320427>,  <33.646961, 30.921370, 49.794300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418747, 31.430309, 49.320427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126404, 31.167591, 49.394688>,  <32.951000, 31.009960, 49.439243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126404, 31.167591, 49.394688>,  <33.418747, 31.430309, 49.320427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126404, 31.167591, 49.394688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667380, 0.744682, 0.007248,
		-0.143015, -0.118606, -0.982588,
		-0.730856, -0.656796, 0.185656,
		32.907146, 30.970552, 49.450386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939850, 31.606815, 48.814762>,  <33.418747, 31.430309, 49.320427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939850, 31.606815, 48.814762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738445, 31.383591, 49.078594>,  <32.617603, 31.249657, 49.236893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738445, 31.383591, 49.078594>,  <32.939850, 31.606815, 48.814762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738445, 31.383591, 49.078594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764322, 0.643662, -0.038875,
		-0.402851, -0.523705, -0.750629,
		-0.503510, -0.558061, 0.659579,
		32.587391, 31.216173, 49.276466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264771, 31.557199, 48.567814>,  <32.939850, 31.606815, 48.814762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264771, 31.557199, 48.567814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221092, 31.493660, 48.960312>,  <32.194885, 31.455536, 49.195812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221092, 31.493660, 48.960312>,  <32.264771, 31.557199, 48.567814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221092, 31.493660, 48.960312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776796, 0.629563, 0.015471,
		-0.620213, -0.760538, -0.192140,
		-0.109198, -0.158849, 0.981245,
		32.188332, 31.446005, 49.254684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622145, 31.622763, 48.756138>,  <32.264771, 31.557199, 48.567814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622145, 31.622763, 48.756138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806776, 31.707392, 49.100739>,  <31.917555, 31.758169, 49.307499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806776, 31.707392, 49.100739>,  <31.622145, 31.622763, 48.756138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806776, 31.707392, 49.100739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631976, 0.759941, 0.151971,
		-0.622536, -0.614594, 0.484482,
		0.461579, 0.211574, 0.861500,
		31.945250, 31.770864, 49.359188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031332, 31.766199, 49.335239>,  <31.622145, 31.622763, 48.756138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031332, 31.766199, 49.335239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.380142, 31.916111, 49.461166>,  <31.589428, 32.006058, 49.536720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.380142, 31.916111, 49.461166>,  <31.031332, 31.766199, 49.335239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380142, 31.916111, 49.461166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468047, 0.826665, 0.312343,
		-0.143185, -0.419719, 0.896289,
		0.872027, 0.374782, 0.314814,
		31.641750, 32.028545, 49.555611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841986, 32.037743, 50.001400>,  <31.031332, 31.766199, 49.335239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841986, 32.037743, 50.001400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.188066, 32.209068, 49.897118>,  <31.395716, 32.311863, 49.834549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.188066, 32.209068, 49.897118>,  <30.841986, 32.037743, 50.001400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188066, 32.209068, 49.897118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356775, 0.891200, 0.280133,
		0.352330, -0.149357, 0.923881,
		0.865203, 0.428317, -0.260709,
		31.447628, 32.337563, 49.818905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980513, 32.463188, 50.497528>,  <30.841986, 32.037743, 50.001400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980513, 32.463188, 50.497528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.214300, 32.609177, 50.207645>,  <31.354572, 32.696770, 50.033718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.214300, 32.609177, 50.207645>,  <30.980513, 32.463188, 50.497528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214300, 32.609177, 50.207645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199524, 0.930354, 0.307621,
		0.786502, -0.035199, 0.616584,
		0.584469, 0.364968, -0.724703,
		31.389641, 32.718666, 49.990234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386469, 32.908367, 50.798634>,  <30.980513, 32.463188, 50.497528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386469, 32.908367, 50.798634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.361609, 33.023254, 50.416294>,  <31.346693, 33.092186, 50.186890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.361609, 33.023254, 50.416294>,  <31.386469, 32.908367, 50.798634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361609, 33.023254, 50.416294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197773, 0.935164, 0.293860,
		0.978276, 0.207304, -0.001316,
		-0.062150, 0.287216, -0.955848,
		31.342964, 33.109421, 50.129539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778719, 33.592285, 50.787933>,  <31.386469, 32.908367, 50.798634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778719, 33.592285, 50.787933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581875, 33.580498, 50.439919>,  <31.463768, 33.573425, 50.231110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581875, 33.580498, 50.439919>,  <31.778719, 33.592285, 50.787933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581875, 33.580498, 50.439919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190593, 0.978826, 0.074654,
		0.849413, 0.202561, -0.487305,
		-0.492109, -0.029465, -0.870035,
		31.434242, 33.571659, 50.178909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936352, 34.195644, 50.473423>,  <31.778719, 33.592285, 50.787933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936352, 34.195644, 50.473423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594883, 34.079639, 50.300385>,  <31.390001, 34.010036, 50.196564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594883, 34.079639, 50.300385>,  <31.936352, 34.195644, 50.473423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594883, 34.079639, 50.300385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348840, 0.935165, 0.061462,
		0.386722, 0.203375, -0.899491,
		-0.853672, -0.290010, -0.432594,
		31.338781, 33.992638, 50.170605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703806, 34.762627, 50.263729>,  <31.936352, 34.195644, 50.473423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703806, 34.762627, 50.263729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.372263, 34.539524, 50.246296>,  <31.173338, 34.405663, 50.235836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.372263, 34.539524, 50.246296>,  <31.703806, 34.762627, 50.263729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372263, 34.539524, 50.246296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552790, 0.804493, 0.217288,
		-0.086135, 0.204191, -0.975134,
		-0.828857, -0.557761, -0.043580,
		31.123606, 34.372196, 50.233223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181868, 35.086502, 49.790920>,  <31.703806, 34.762627, 50.263729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181868, 35.086502, 49.790920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.970367, 34.869373, 50.051922>,  <30.843468, 34.739098, 50.208523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.970367, 34.869373, 50.051922>,  <31.181868, 35.086502, 49.790920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970367, 34.869373, 50.051922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540276, 0.808154, 0.234496,
		-0.654617, -0.228545, -0.720586,
		-0.528752, -0.542821, 0.652508,
		30.811743, 34.706528, 50.247673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374525, 35.683697, 49.381985>,  <31.181868, 35.086502, 49.790920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374525, 35.683697, 49.381985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.635086, 35.980366, 49.445984>,  <31.791422, 36.158367, 49.484383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.635086, 35.980366, 49.445984>,  <31.374525, 35.683697, 49.381985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635086, 35.980366, 49.445984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731306, -0.557549, -0.392849,
		-0.202159, 0.372909, -0.905578,
		0.651401, 0.741672, 0.159997,
		31.830507, 36.202866, 49.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777708, 35.790855, 48.739799>,  <31.374525, 35.683697, 49.381985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777708, 35.790855, 48.739799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007088, 35.942352, 49.030376>,  <32.144714, 36.033249, 49.204723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007088, 35.942352, 49.030376>,  <31.777708, 35.790855, 48.739799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007088, 35.942352, 49.030376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813339, -0.369447, -0.449430,
		0.098163, 0.848566, -0.519903,
		0.573448, 0.378741, 0.726438,
		32.179123, 36.055973, 49.248306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229744, 36.228642, 48.444149>,  <31.777708, 35.790855, 48.739799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229744, 36.228642, 48.444149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422520, 36.144276, 48.784325>,  <32.538185, 36.093658, 48.988430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422520, 36.144276, 48.784325>,  <32.229744, 36.228642, 48.444149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422520, 36.144276, 48.784325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839512, -0.166787, -0.517109,
		0.250907, 0.963171, 0.096683,
		0.481939, -0.210913, 0.850442,
		32.567101, 36.081001, 49.039455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952225, 36.418854, 48.326969>,  <32.229744, 36.228642, 48.444149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952225, 36.418854, 48.326969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974369, 36.186878, 48.652081>,  <32.987656, 36.047695, 48.847149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974369, 36.186878, 48.652081>,  <32.952225, 36.418854, 48.326969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974369, 36.186878, 48.652081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853167, -0.395405, -0.340237,
		0.518692, 0.712272, 0.472893,
		0.055357, -0.579935, 0.812780,
		32.990974, 36.012897, 48.895916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602757, 36.374870, 48.549538>,  <32.952225, 36.418854, 48.326969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602757, 36.374870, 48.549538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486565, 36.056049, 48.761326>,  <33.416847, 35.864758, 48.888397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486565, 36.056049, 48.761326>,  <33.602757, 36.374870, 48.549538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486565, 36.056049, 48.761326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880827, -0.438913, -0.177482,
		0.373852, 0.414813, 0.829557,
		-0.290481, -0.797048, 0.529466,
		33.399422, 35.816936, 48.920166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206902, 36.160107, 48.932243>,  <33.602757, 36.374870, 48.549538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206902, 36.160107, 48.932243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961052, 35.846405, 48.898346>,  <33.813541, 35.658184, 48.878010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961052, 35.846405, 48.898346>,  <34.206902, 36.160107, 48.932243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961052, 35.846405, 48.898346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786275, -0.600486, -0.145559,
		0.063270, -0.156093, 0.985714,
		-0.614629, -0.784252, -0.084739,
		33.776665, 35.611130, 48.872925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361553, 35.708832, 49.430656>,  <34.206902, 36.160107, 48.932243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361553, 35.708832, 49.430656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180779, 35.498539, 49.142387>,  <34.072315, 35.372364, 48.969425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180779, 35.498539, 49.142387>,  <34.361553, 35.708832, 49.430656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180779, 35.498539, 49.142387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748405, -0.663086, 0.014393,
		-0.485433, -0.532847, 0.693130,
		-0.451935, -0.525728, -0.720669,
		34.045197, 35.340820, 48.926186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552750, 35.048943, 49.496887>,  <34.361553, 35.708832, 49.430656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552750, 35.048943, 49.496887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425953, 35.027241, 49.118137>,  <34.349876, 35.014221, 48.890888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425953, 35.027241, 49.118137>,  <34.552750, 35.048943, 49.496887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425953, 35.027241, 49.118137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695566, -0.691997, -0.193204,
		-0.644754, -0.719859, 0.257093,
		-0.316987, -0.054256, -0.946876,
		34.330856, 35.010963, 48.834076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487873, 34.288250, 49.252201>,  <34.552750, 35.048943, 49.496887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487873, 34.288250, 49.252201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489964, 34.516621, 48.923809>,  <34.491219, 34.653645, 48.726772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489964, 34.516621, 48.923809>,  <34.487873, 34.288250, 49.252201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489964, 34.516621, 48.923809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745031, -0.549842, -0.377628,
		-0.667009, -0.609685, -0.428232,
		0.005226, 0.570927, -0.820984,
		34.491531, 34.687901, 48.677513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601711, 33.787724, 48.698689>,  <34.487873, 34.288250, 49.252201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601711, 33.787724, 48.698689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737694, 34.150661, 48.599770>,  <34.819283, 34.368423, 48.540417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737694, 34.150661, 48.599770>,  <34.601711, 33.787724, 48.698689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737694, 34.150661, 48.599770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861069, -0.406044, -0.306085,
		-0.378138, -0.108885, -0.919323,
		0.339958, 0.907344, -0.247298,
		34.839680, 34.422863, 48.525581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785118, 33.704395, 48.055946>,  <34.601711, 33.787724, 48.698689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785118, 33.704395, 48.055946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005367, 34.016186, 48.175426>,  <35.137516, 34.203262, 48.247116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005367, 34.016186, 48.175426>,  <34.785118, 33.704395, 48.055946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005367, 34.016186, 48.175426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830797, -0.546523, -0.105304,
		0.081165, 0.306143, -0.948519,
		0.550626, 0.779480, 0.298701,
		35.170555, 34.250031, 48.265038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399521, 33.725979, 47.602745>,  <34.785118, 33.704395, 48.055946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399521, 33.725979, 47.602745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504383, 33.925854, 47.932980>,  <35.567299, 34.045776, 48.131119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504383, 33.925854, 47.932980>,  <35.399521, 33.725979, 47.602745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504383, 33.925854, 47.932980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891303, -0.453326, -0.008647,
		0.369938, 0.738113, -0.564212,
		0.262155, 0.499685, 0.825585,
		35.583031, 34.075760, 48.180656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.007675, 40.094669, 53.189247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.722979, 40.160835, 52.916172>,  <29.552160, 40.200535, 52.752327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.722979, 40.160835, 52.916172>,  <30.007675, 40.094669, 53.189247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722979, 40.160835, 52.916172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413523, -0.686955, -0.597571,
		-0.567821, -0.707623, 0.420534,
		-0.711743, 0.165413, -0.682686,
		29.509457, 40.210461, 52.711365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927349, 39.415325, 52.893917>,  <30.007675, 40.094669, 53.189247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927349, 39.415325, 52.893917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763819, 39.655514, 52.619022>,  <29.665701, 39.799625, 52.454086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763819, 39.655514, 52.619022>,  <29.927349, 39.415325, 52.893917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763819, 39.655514, 52.619022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263830, -0.643124, -0.718878,
		-0.873645, -0.475209, 0.104502,
		-0.408825, 0.600473, -0.687236,
		29.641171, 39.835655, 52.412853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399391, 39.018307, 52.508617>,  <29.927349, 39.415325, 52.893917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399391, 39.018307, 52.508617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506758, 39.328262, 52.279705>,  <29.571178, 39.514236, 52.142357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506758, 39.328262, 52.279705>,  <29.399391, 39.018307, 52.508617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506758, 39.328262, 52.279705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427775, -0.628174, -0.649927,
		-0.863110, -0.070354, -0.500091,
		0.268419, 0.774886, -0.572279,
		29.587284, 39.560726, 52.108021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153288, 38.990860, 51.826286>,  <29.399391, 39.018307, 52.508617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153288, 38.990860, 51.826286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490919, 39.199703, 51.777405>,  <29.693499, 39.325008, 51.748077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490919, 39.199703, 51.777405>,  <29.153288, 38.990860, 51.826286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490919, 39.199703, 51.777405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258257, -0.595556, -0.760668,
		-0.469929, 0.610505, -0.637535,
		0.844079, 0.522108, -0.122202,
		29.744143, 39.356335, 51.740746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261410, 38.828495, 51.213108>,  <29.153288, 38.990860, 51.826286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261410, 38.828495, 51.213108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607424, 38.985573, 51.338009>,  <29.815033, 39.079819, 51.412949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607424, 38.985573, 51.338009>,  <29.261410, 38.828495, 51.213108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607424, 38.985573, 51.338009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492272, -0.544194, -0.679354,
		-0.096855, 0.741378, -0.664061,
		0.865036, 0.392698, 0.312251,
		29.866934, 39.103382, 51.431683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640499, 38.817028, 50.651051>,  <29.261410, 38.828495, 51.213108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640499, 38.817028, 50.651051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913357, 38.833904, 50.943050>,  <30.077072, 38.844028, 51.118252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913357, 38.833904, 50.943050>,  <29.640499, 38.817028, 50.651051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913357, 38.833904, 50.943050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567327, -0.660384, -0.491968,
		0.461324, 0.749741, -0.474414,
		0.682144, 0.042192, 0.730000,
		30.118000, 38.846561, 51.162052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228016, 38.973343, 50.280910>,  <29.640499, 38.817028, 50.651051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228016, 38.973343, 50.280910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357817, 38.860870, 50.642162>,  <30.435698, 38.793388, 50.858913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357817, 38.860870, 50.642162>,  <30.228016, 38.973343, 50.280910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357817, 38.860870, 50.642162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632529, -0.645399, -0.428213,
		0.703281, 0.710211, -0.031581,
		0.324504, -0.281178, 0.903126,
		30.455168, 38.776516, 50.913101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030344, 39.018242, 50.273033>,  <30.228016, 38.973343, 50.280910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030344, 39.018242, 50.273033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.878248, 38.761307, 50.539211>,  <30.786991, 38.607147, 50.698917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.878248, 38.761307, 50.539211>,  <31.030344, 39.018242, 50.273033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878248, 38.761307, 50.539211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531840, -0.740489, -0.410879,
		0.756679, 0.197679, 0.623185,
		-0.380240, -0.642338, 0.665446,
		30.764175, 38.568604, 50.738846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580940, 38.624298, 50.309036>,  <31.030344, 39.018242, 50.273033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580940, 38.624298, 50.309036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.280935, 38.427044, 50.485355>,  <31.100931, 38.308693, 50.591145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.280935, 38.427044, 50.485355>,  <31.580940, 38.624298, 50.309036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280935, 38.427044, 50.485355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396313, -0.868607, -0.297417,
		0.529543, -0.048374, 0.846903,
		-0.750013, -0.493134, 0.440793,
		31.055931, 38.279102, 50.617592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950018, 38.000496, 50.567276>,  <31.580940, 38.624298, 50.309036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950018, 38.000496, 50.567276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556297, 37.941132, 50.529076>,  <31.320065, 37.905514, 50.506153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556297, 37.941132, 50.529076>,  <31.950018, 38.000496, 50.567276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556297, 37.941132, 50.529076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171409, -0.932790, -0.317052,
		-0.042030, -0.328445, 0.943587,
		-0.984303, -0.148413, -0.095504,
		31.261007, 37.896606, 50.500423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829712, 37.396000, 50.951088>,  <31.950018, 38.000496, 50.567276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829712, 37.396000, 50.951088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518610, 37.436146, 50.702888>,  <31.331949, 37.460232, 50.553967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518610, 37.436146, 50.702888>,  <31.829712, 37.396000, 50.951088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518610, 37.436146, 50.702888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215756, -0.884569, -0.413506,
		-0.590377, -0.455484, 0.666325,
		-0.777756, 0.100360, -0.620503,
		31.285284, 37.466255, 50.516739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539385, 36.730251, 50.946129>,  <31.829712, 37.396000, 50.951088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539385, 36.730251, 50.946129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.421026, 36.922707, 50.616051>,  <31.350012, 37.038181, 50.418003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.421026, 36.922707, 50.616051>,  <31.539385, 36.730251, 50.946129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421026, 36.922707, 50.616051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348466, -0.749979, -0.562231,
		-0.889392, -0.453915, 0.054256,
		-0.295896, 0.481138, -0.825198,
		31.332256, 37.067047, 50.368492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088179, 36.256279, 50.667736>,  <31.539385, 36.730251, 50.946129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088179, 36.256279, 50.667736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243158, 36.509491, 50.399658>,  <31.336145, 36.661419, 50.238811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243158, 36.509491, 50.399658>,  <31.088179, 36.256279, 50.667736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243158, 36.509491, 50.399658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473637, -0.760379, -0.444401,
		-0.790919, -0.145246, -0.594433,
		0.387447, 0.633031, -0.670192,
		31.359392, 36.699402, 50.198601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337446, 35.798908, 50.122501>,  <31.088179, 36.256279, 50.667736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337446, 35.798908, 50.122501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507811, 36.139305, 49.999599>,  <31.610029, 36.343544, 49.925858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507811, 36.139305, 49.999599>,  <31.337446, 35.798908, 50.122501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507811, 36.139305, 49.999599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673685, -0.524971, -0.520148,
		-0.603944, 0.014544, -0.796894,
		0.425911, 0.850996, -0.307255,
		31.635584, 36.394604, 49.907421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594194, 35.578781, 49.879375>,  <31.337446, 35.798908, 50.122501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594194, 35.578781, 49.879375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.532808, 35.264812, 50.119488>,  <30.495975, 35.076431, 50.263557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.532808, 35.264812, 50.119488>,  <30.594194, 35.578781, 49.879375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532808, 35.264812, 50.119488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862357, 0.402996, 0.306487,
		-0.482481, -0.470623, -0.738733,
		-0.153467, -0.784926, 0.600283,
		30.486769, 35.029335, 50.299572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879484, 35.371090, 49.786972>,  <30.594194, 35.578781, 49.879375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879484, 35.371090, 49.786972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994511, 35.284214, 50.160095>,  <30.063526, 35.232086, 50.383968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994511, 35.284214, 50.160095>,  <29.879484, 35.371090, 49.786972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994511, 35.284214, 50.160095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788096, 0.499789, 0.359326,
		-0.544252, -0.838473, -0.027448,
		0.287566, -0.217195, 0.932808,
		30.080780, 35.219055, 50.439938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274979, 35.326385, 50.147240>,  <29.879484, 35.371090, 49.786972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274979, 35.326385, 50.147240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503962, 35.343857, 50.474747>,  <29.641352, 35.354340, 50.671253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503962, 35.343857, 50.474747>,  <29.274979, 35.326385, 50.147240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503962, 35.343857, 50.474747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756754, 0.412531, 0.507091,
		-0.315620, -0.909896, 0.269210,
		0.572458, 0.043678, 0.818770,
		29.675699, 35.356960, 50.720379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872929, 35.046638, 50.652374>,  <29.274979, 35.326385, 50.147240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872929, 35.046638, 50.652374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121803, 35.298466, 50.838501>,  <29.271128, 35.449562, 50.950176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121803, 35.298466, 50.838501>,  <28.872929, 35.046638, 50.652374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121803, 35.298466, 50.838501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751336, 0.313209, 0.580857,
		0.219946, -0.711016, 0.667892,
		0.622189, 0.629568, 0.465322,
		29.308460, 35.487335, 50.978096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645487, 35.042721, 51.315060>,  <28.872929, 35.046638, 50.652374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645487, 35.042721, 51.315060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883919, 35.362690, 51.287296>,  <29.026978, 35.554672, 51.270638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883919, 35.362690, 51.287296>,  <28.645487, 35.042721, 51.315060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883919, 35.362690, 51.287296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659448, 0.537050, 0.526029,
		0.458059, -0.267781, 0.847629,
		0.596080, 0.799919, -0.069412,
		29.062742, 35.602665, 51.266472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585955, 35.383678, 51.923084>,  <28.645487, 35.042721, 51.315060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585955, 35.383678, 51.923084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777151, 35.680927, 51.735771>,  <28.891869, 35.859276, 51.623383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777151, 35.680927, 51.735771>,  <28.585955, 35.383678, 51.923084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777151, 35.680927, 51.735771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536744, 0.669127, 0.513980,
		0.695292, 0.005669, 0.718705,
		0.477991, 0.743127, -0.468282,
		28.920549, 35.903866, 51.595287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999821, 35.767521, 52.374802>,  <28.585955, 35.383678, 51.923084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999821, 35.767521, 52.374802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927740, 36.032677, 52.084118>,  <28.884493, 36.191769, 51.909706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927740, 36.032677, 52.084118>,  <28.999821, 35.767521, 52.374802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927740, 36.032677, 52.084118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116654, 0.719186, 0.684955,
		0.976688, 0.208203, -0.052269,
		-0.180201, 0.662890, -0.726708,
		28.873680, 36.231544, 51.866104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222548, 36.418438, 52.677395>,  <28.999821, 35.767521, 52.374802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222548, 36.418438, 52.677395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982372, 36.525642, 52.376026>,  <28.838266, 36.589966, 52.195206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982372, 36.525642, 52.376026>,  <29.222548, 36.418438, 52.677395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982372, 36.525642, 52.376026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332234, 0.773393, 0.539892,
		0.727389, 0.574483, -0.375332,
		-0.600438, 0.268014, -0.753420,
		28.802240, 36.606045, 52.150002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286690, 37.182003, 52.605667>,  <29.222548, 36.418438, 52.677395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286690, 37.182003, 52.605667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941717, 37.055668, 52.447449>,  <28.734734, 36.979866, 52.352520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941717, 37.055668, 52.447449>,  <29.286690, 37.182003, 52.605667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941717, 37.055668, 52.447449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494334, 0.693577, 0.524009,
		0.108836, 0.647453, -0.754294,
		-0.862432, -0.315842, -0.395544,
		28.682987, 36.960915, 52.328785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891642, 37.764282, 52.539143>,  <29.286690, 37.182003, 52.605667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891642, 37.764282, 52.539143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594057, 37.497677, 52.520050>,  <28.415506, 37.337711, 52.508595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594057, 37.497677, 52.520050>,  <28.891642, 37.764282, 52.539143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594057, 37.497677, 52.520050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564281, 0.588376, 0.579138,
		-0.357923, 0.457788, -0.813831,
		-0.743961, -0.666517, -0.047727,
		28.370869, 37.297722, 52.505733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319069, 38.107342, 52.304401>,  <28.891642, 37.764282, 52.539143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319069, 38.107342, 52.304401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206427, 37.773502, 52.493774>,  <28.138842, 37.573196, 52.607399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206427, 37.773502, 52.493774>,  <28.319069, 38.107342, 52.304401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206427, 37.773502, 52.493774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601312, 0.537995, 0.590750,
		-0.747745, -0.118322, -0.653359,
		-0.281605, -0.834603, 0.473431,
		28.121944, 37.523121, 52.635803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676922, 38.324005, 52.564465>,  <28.319069, 38.107342, 52.304401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676922, 38.324005, 52.564465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.750750, 37.990017, 52.771835>,  <27.795046, 37.789623, 52.896255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.750750, 37.990017, 52.771835>,  <27.676922, 38.324005, 52.564465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750750, 37.990017, 52.771835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638717, 0.299006, 0.708968,
		-0.746978, -0.461979, -0.478121,
		0.184567, -0.834967, 0.518425,
		27.806120, 37.739525, 52.927364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126814, 38.166908, 52.814842>,  <27.676922, 38.324005, 52.564465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126814, 38.166908, 52.814842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353331, 37.938702, 53.052773>,  <27.489241, 37.801777, 53.195530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353331, 37.938702, 53.052773>,  <27.126814, 38.166908, 52.814842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353331, 37.938702, 53.052773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585821, 0.229047, 0.777400,
		-0.579765, -0.788699, -0.204515,
		0.566291, -0.570519, 0.594830,
		27.523218, 37.767548, 53.231220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702909, 37.744389, 53.284443>,  <27.126814, 38.166908, 52.814842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702909, 37.744389, 53.284443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.051754, 37.807507, 53.469711>,  <27.261061, 37.845379, 53.580872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.051754, 37.807507, 53.469711>,  <26.702909, 37.744389, 53.284443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051754, 37.807507, 53.469711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486751, 0.376451, 0.788263,
		-0.049976, -0.912899, 0.405114,
		0.872110, 0.157796, 0.463167,
		27.313387, 37.854847, 53.608662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.861790, 38.181107, 59.095173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589817, 38.014256, 58.853943>,  <34.426636, 37.914143, 58.709206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589817, 38.014256, 58.853943>,  <34.861790, 38.181107, 59.095173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589817, 38.014256, 58.853943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580339, -0.808832, -0.094849,
		-0.448222, -0.414479, 0.792026,
		-0.679929, -0.417130, -0.603074,
		34.385838, 37.889118, 58.673019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759777, 37.325245, 59.239323>,  <34.861790, 38.181107, 59.095173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759777, 37.325245, 59.239323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617184, 37.357479, 58.866993>,  <34.531628, 37.376820, 58.643597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617184, 37.357479, 58.866993>,  <34.759777, 37.325245, 59.239323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617184, 37.357479, 58.866993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340052, -0.916752, -0.209597,
		-0.870220, -0.391245, 0.299407,
		-0.356485, 0.080582, -0.930820,
		34.510239, 37.381653, 58.587746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541748, 36.692024, 59.099243>,  <34.759777, 37.325245, 59.239323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541748, 36.692024, 59.099243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561150, 36.847553, 58.731228>,  <34.572792, 36.940872, 58.510418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561150, 36.847553, 58.731228>,  <34.541748, 36.692024, 59.099243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561150, 36.847553, 58.731228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258526, -0.894618, -0.364449,
		-0.964786, -0.220175, -0.143917,
		0.048508, 0.388821, -0.920035,
		34.575703, 36.964199, 58.455215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418961, 36.155392, 58.714455>,  <34.541748, 36.692024, 59.099243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418961, 36.155392, 58.714455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566212, 36.435802, 58.470146>,  <34.654564, 36.604050, 58.323559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566212, 36.435802, 58.470146>,  <34.418961, 36.155392, 58.714455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566212, 36.435802, 58.470146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544699, -0.694980, -0.469368,
		-0.753514, -0.159900, -0.637691,
		0.368130, 0.701025, -0.610774,
		34.676651, 36.646111, 58.286915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210468, 35.955891, 58.085934>,  <34.418961, 36.155392, 58.714455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210468, 35.955891, 58.085934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540203, 36.166031, 58.001579>,  <34.738045, 36.292114, 57.950966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540203, 36.166031, 58.001579>,  <34.210468, 35.955891, 58.085934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540203, 36.166031, 58.001579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283951, -0.706003, -0.648793,
		-0.489731, 0.474943, -0.731159,
		0.824339, 0.525347, -0.210891,
		34.787506, 36.323635, 57.938313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223995, 36.155048, 57.343678>,  <34.210468, 35.955891, 58.085934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223995, 36.155048, 57.343678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616520, 36.172089, 57.418732>,  <34.852036, 36.182312, 57.463764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616520, 36.172089, 57.418732>,  <34.223995, 36.155048, 57.343678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616520, 36.172089, 57.418732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160961, -0.716033, -0.679256,
		0.105413, 0.696766, -0.709511,
		0.981315, 0.042601, 0.187631,
		34.910915, 36.184868, 57.475021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482094, 35.981289, 56.608643>,  <34.223995, 36.155048, 57.343678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482094, 35.981289, 56.608643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825054, 36.028397, 56.809044>,  <35.030830, 36.056664, 56.929283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825054, 36.028397, 56.809044>,  <34.482094, 35.981289, 56.608643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825054, 36.028397, 56.809044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496657, -0.444537, -0.745465,
		0.134919, 0.887984, -0.439637,
		0.857396, 0.117771, 0.501001,
		35.082272, 36.063728, 56.959343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025059, 36.269775, 56.145340>,  <34.482094, 35.981289, 56.608643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025059, 36.269775, 56.145340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229271, 36.085419, 56.435703>,  <35.351799, 35.974804, 56.609921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229271, 36.085419, 56.435703>,  <35.025059, 36.269775, 56.145340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229271, 36.085419, 56.435703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487356, -0.540419, -0.685881,
		0.708408, 0.703937, -0.051283,
		0.510531, -0.460890, 0.725905,
		35.382431, 35.947151, 56.653473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702377, 36.295097, 55.925156>,  <35.025059, 36.269775, 56.145340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702377, 36.295097, 55.925156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657890, 35.970802, 56.155056>,  <35.631199, 35.776226, 56.292995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657890, 35.970802, 56.155056>,  <35.702377, 36.295097, 55.925156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657890, 35.970802, 56.155056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493301, -0.547093, -0.676272,
		0.862720, 0.208312, 0.460782,
		-0.111215, -0.810738, 0.574749,
		35.624527, 35.727581, 56.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355667, 36.002121, 55.834137>,  <35.702377, 36.295097, 55.925156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355667, 36.002121, 55.834137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113029, 35.718174, 55.977318>,  <35.967445, 35.547806, 56.063225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113029, 35.718174, 55.977318>,  <36.355667, 36.002121, 55.834137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113029, 35.718174, 55.977318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531393, -0.696926, -0.481576,
		0.591320, -0.101911, 0.799972,
		-0.606599, -0.709865, 0.357951,
		35.931049, 35.505215, 56.084702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765285, 35.527538, 56.102787>,  <36.355667, 36.002121, 55.834137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765285, 35.527538, 56.102787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429001, 35.325737, 56.024109>,  <36.227230, 35.204655, 55.976902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429001, 35.325737, 56.024109>,  <36.765285, 35.527538, 56.102787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429001, 35.325737, 56.024109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517290, -0.640892, -0.567159,
		0.160074, -0.578562, 0.799777,
		-0.840707, -0.504503, -0.196694,
		36.176788, 35.174385, 55.965099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941082, 34.777927, 56.061314>,  <36.765285, 35.527538, 56.102787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941082, 34.777927, 56.061314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587246, 34.795967, 55.875645>,  <36.374943, 34.806789, 55.764244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587246, 34.795967, 55.875645>,  <36.941082, 34.777927, 56.061314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587246, 34.795967, 55.875645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311708, -0.683153, -0.660409,
		-0.346887, -0.728882, 0.590255,
		-0.884594, 0.045100, -0.464176,
		36.321869, 34.809498, 55.736393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842560, 34.110054, 55.924984>,  <36.941082, 34.777927, 56.061314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842560, 34.110054, 55.924984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589981, 34.297523, 55.677883>,  <36.438435, 34.410007, 55.529621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589981, 34.297523, 55.677883>,  <36.842560, 34.110054, 55.924984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589981, 34.297523, 55.677883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271216, -0.612859, -0.742190,
		-0.726443, -0.636197, 0.259874,
		-0.631445, 0.468677, -0.617753,
		36.400547, 34.438126, 55.492558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228256, 33.650486, 55.636566>,  <36.842560, 34.110054, 55.924984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228256, 33.650486, 55.636566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280945, 33.946743, 55.373020>,  <36.312557, 34.124496, 55.214893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280945, 33.946743, 55.373020>,  <36.228256, 33.650486, 55.636566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280945, 33.946743, 55.373020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451933, -0.636431, -0.625069,
		-0.882274, -0.215431, -0.418548,
		0.131718, 0.740638, -0.658867,
		36.320461, 34.168934, 55.175362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400276, 33.599682, 55.657570>,  <36.228256, 33.650486, 55.636566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400276, 33.599682, 55.657570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093384, 33.344585, 55.630310>,  <34.909248, 33.191528, 55.613956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093384, 33.344585, 55.630310>,  <35.400276, 33.599682, 55.657570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093384, 33.344585, 55.630310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589432, 0.659222, 0.466900,
		-0.252837, 0.398389, -0.881680,
		-0.767231, -0.637740, -0.068147,
		34.863213, 33.153263, 55.609867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847530, 33.959965, 55.424541>,  <35.400276, 33.599682, 55.657570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847530, 33.959965, 55.424541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704247, 33.646770, 55.627960>,  <34.618275, 33.458855, 55.750011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704247, 33.646770, 55.627960>,  <34.847530, 33.959965, 55.424541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704247, 33.646770, 55.627960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703763, 0.584371, 0.404015,
		-0.613518, -0.213175, -0.760363,
		-0.358208, -0.782986, 0.508546,
		34.596783, 33.411873, 55.780525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037846, 34.019943, 55.360600>,  <34.847530, 33.959965, 55.424541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037846, 34.019943, 55.360600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165039, 33.807655, 55.674854>,  <34.241356, 33.680283, 55.863407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165039, 33.807655, 55.674854>,  <34.037846, 34.019943, 55.360600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165039, 33.807655, 55.674854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661308, 0.469629, 0.584910,
		-0.679379, -0.705542, -0.201630,
		0.317988, -0.530715, 0.785637,
		34.260437, 33.648441, 55.910545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468521, 34.013050, 55.762981>,  <34.037846, 34.019943, 55.360600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468521, 34.013050, 55.762981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723141, 33.874432, 56.038578>,  <33.875912, 33.791260, 56.203938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723141, 33.874432, 56.038578>,  <33.468521, 34.013050, 55.762981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723141, 33.874432, 56.038578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514538, 0.474653, 0.714111,
		-0.574507, -0.809079, 0.123826,
		0.636546, -0.346549, 0.688994,
		33.914104, 33.770466, 56.245277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068825, 33.551853, 56.308662>,  <33.468521, 34.013050, 55.762981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068825, 33.551853, 56.308662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404354, 33.669857, 56.491680>,  <33.605671, 33.740662, 56.601490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404354, 33.669857, 56.491680>,  <33.068825, 33.551853, 56.308662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404354, 33.669857, 56.491680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539461, 0.337409, 0.771451,
		0.073208, -0.893937, 0.442173,
		0.838822, 0.295012, 0.457543,
		33.656002, 33.758362, 56.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882740, 33.547779, 56.974625>,  <33.068825, 33.551853, 56.308662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882740, 33.547779, 56.974625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236195, 33.729847, 57.018436>,  <33.448269, 33.839088, 57.044724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236195, 33.729847, 57.018436>,  <32.882740, 33.547779, 56.974625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236195, 33.729847, 57.018436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339090, 0.460949, 0.820088,
		0.322793, -0.761804, 0.561658,
		0.883642, 0.455171, 0.109529,
		33.501286, 33.866398, 57.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996185, 33.509212, 57.609024>,  <32.882740, 33.547779, 56.974625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996185, 33.509212, 57.609024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228901, 33.821781, 57.518772>,  <33.368530, 34.009323, 57.464622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228901, 33.821781, 57.518772>,  <32.996185, 33.509212, 57.609024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228901, 33.821781, 57.518772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362082, 0.497233, 0.788452,
		0.728302, -0.377014, 0.572221,
		0.581784, 0.781422, -0.225626,
		33.403435, 34.056206, 57.451084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417782, 33.684078, 58.245850>,  <32.996185, 33.509212, 57.609024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417782, 33.684078, 58.245850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398647, 34.010925, 58.016056>,  <33.387165, 34.207031, 57.878178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398647, 34.010925, 58.016056>,  <33.417782, 33.684078, 58.245850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398647, 34.010925, 58.016056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141005, 0.563863, 0.813742,
		0.988853, 0.119933, 0.088244,
		-0.047837, 0.817114, -0.574489,
		33.384296, 34.256058, 57.843708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798397, 34.201847, 58.660103>,  <33.417782, 33.684078, 58.245850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798397, 34.201847, 58.660103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557228, 34.382938, 58.397343>,  <33.412525, 34.491592, 58.239685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557228, 34.382938, 58.397343>,  <33.798397, 34.201847, 58.660103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557228, 34.382938, 58.397343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363833, 0.576755, 0.731423,
		0.710006, 0.679996, -0.183024,
		-0.602924, 0.452724, -0.656904,
		33.376350, 34.518757, 58.200272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693638, 34.874229, 58.959034>,  <33.798397, 34.201847, 58.660103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693638, 34.874229, 58.959034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393200, 34.882793, 58.695095>,  <33.212936, 34.887932, 58.536732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393200, 34.882793, 58.695095>,  <33.693638, 34.874229, 58.959034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393200, 34.882793, 58.695095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452278, 0.711408, 0.537907,
		0.480937, 0.702453, -0.524651,
		-0.751095, 0.021411, -0.659847,
		33.167870, 34.889217, 58.497143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553604, 35.702877, 58.781155>,  <33.693638, 34.874229, 58.959034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553604, 35.702877, 58.781155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221722, 35.498333, 58.691628>,  <33.022591, 35.375607, 58.637913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221722, 35.498333, 58.691628>,  <33.553604, 35.702877, 58.781155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221722, 35.498333, 58.691628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548046, 0.822391, 0.152706,
		0.105976, 0.249362, -0.962594,
		-0.829708, -0.511362, -0.223816,
		32.972809, 35.344925, 58.624481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114651, 36.178249, 58.462872>,  <33.553604, 35.702877, 58.781155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114651, 36.178249, 58.462872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853844, 35.895954, 58.573727>,  <32.697357, 35.726578, 58.640240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853844, 35.895954, 58.573727>,  <33.114651, 36.178249, 58.462872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853844, 35.895954, 58.573727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716316, 0.693184, 0.079926,
		-0.248516, -0.146407, -0.957499,
		-0.652021, -0.705735, 0.277141,
		32.658237, 35.684235, 58.656868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580364, 36.205505, 58.047623>,  <33.114651, 36.178249, 58.462872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580364, 36.205505, 58.047623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423168, 36.022003, 58.366398>,  <32.328850, 35.911903, 58.557663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423168, 36.022003, 58.366398>,  <32.580364, 36.205505, 58.047623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423168, 36.022003, 58.366398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731660, 0.680956, 0.031196,
		-0.556988, -0.570825, -0.603260,
		-0.392986, -0.458757, 0.796934,
		32.305271, 35.884377, 58.605476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798683, 36.228294, 57.911266>,  <32.580364, 36.205505, 58.047623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798683, 36.228294, 57.911266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848358, 36.160736, 58.302380>,  <31.878162, 36.120201, 58.537048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848358, 36.160736, 58.302380>,  <31.798683, 36.228294, 57.911266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848358, 36.160736, 58.302380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553043, 0.806376, 0.209527,
		-0.823846, -0.566774, 0.006735,
		0.124185, -0.168893, 0.977780,
		31.885614, 36.110069, 58.595715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130516, 35.887466, 57.689671>,  <31.798683, 36.228294, 57.911266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130516, 35.887466, 57.689671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901157, 35.959934, 57.370071>,  <30.763542, 36.003414, 57.178310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901157, 35.959934, 57.370071>,  <31.130516, 35.887466, 57.689671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901157, 35.959934, 57.370071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570840, -0.611202, -0.548247,
		-0.587670, -0.770462, 0.247046,
		-0.573398, 0.181164, -0.798995,
		30.729139, 36.014286, 57.130371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182970, 35.268311, 57.377258>,  <31.130516, 35.887466, 57.689671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182970, 35.268311, 57.377258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026310, 35.520390, 57.109089>,  <30.932314, 35.671638, 56.948189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026310, 35.520390, 57.109089>,  <31.182970, 35.268311, 57.377258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026310, 35.520390, 57.109089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192750, -0.656266, -0.729495,
		-0.899699, -0.414929, 0.135555,
		-0.391649, 0.630198, -0.670420,
		30.908815, 35.709450, 56.907963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737213, 34.887695, 56.881336>,  <31.182970, 35.268311, 57.377258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737213, 34.887695, 56.881336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874336, 35.208710, 56.686024>,  <30.956610, 35.401318, 56.568836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874336, 35.208710, 56.686024>,  <30.737213, 34.887695, 56.881336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874336, 35.208710, 56.686024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292173, -0.585083, -0.756514,
		-0.892814, 0.116677, -0.435051,
		0.342809, 0.802536, -0.488280,
		30.977179, 35.449471, 56.539539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474327, 34.827045, 56.223202>,  <30.737213, 34.887695, 56.881336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474327, 34.827045, 56.223202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.788963, 35.073441, 56.206089>,  <30.977745, 35.221279, 56.195820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.788963, 35.073441, 56.206089>,  <30.474327, 34.827045, 56.223202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788963, 35.073441, 56.206089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386371, -0.545054, -0.744065,
		-0.481657, 0.568744, -0.666736,
		0.786590, 0.615992, -0.042783,
		31.024940, 35.258240, 56.193253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612608, 34.934135, 55.504765>,  <30.474327, 34.827045, 56.223202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612608, 34.934135, 55.504765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963047, 35.043865, 55.663357>,  <31.173311, 35.109703, 55.758514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963047, 35.043865, 55.663357>,  <30.612608, 34.934135, 55.504765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963047, 35.043865, 55.663357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478846, -0.590911, -0.649254,
		0.056182, 0.758665, -0.649054,
		0.876099, 0.274321, 0.396483,
		31.225876, 35.126160, 55.782303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098780, 35.198238, 54.989212>,  <30.612608, 34.934135, 55.504765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098780, 35.198238, 54.989212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359243, 35.105892, 55.278400>,  <31.515522, 35.050484, 55.451916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359243, 35.105892, 55.278400>,  <31.098780, 35.198238, 54.989212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359243, 35.105892, 55.278400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618894, -0.389843, -0.681904,
		0.439274, 0.891473, -0.110969,
		0.651159, -0.230865, 0.722975,
		31.554592, 35.036633, 55.495293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684498, 35.378975, 54.697765>,  <31.098780, 35.198238, 54.989212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684498, 35.378975, 54.697765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787859, 35.122177, 54.986507>,  <31.849874, 34.968098, 55.159752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787859, 35.122177, 54.986507>,  <31.684498, 35.378975, 54.697765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787859, 35.122177, 54.986507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728818, -0.360906, -0.581868,
		0.634076, 0.676458, 0.374636,
		0.258401, -0.641991, 0.721856,
		31.865379, 34.929581, 55.203064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375141, 35.448395, 54.676678>,  <31.684498, 35.378975, 54.697765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375141, 35.448395, 54.676678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267933, 35.102375, 54.846317>,  <32.203609, 34.894764, 54.948101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267933, 35.102375, 54.846317>,  <32.375141, 35.448395, 54.676678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267933, 35.102375, 54.846317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662315, -0.485124, -0.570958,
		0.699645, 0.127857, 0.702958,
		-0.268021, -0.865048, 0.424096,
		32.187527, 34.842861, 54.973545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909069, 35.027763, 54.682251>,  <32.375141, 35.448395, 54.676678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909069, 35.027763, 54.682251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605812, 34.772385, 54.735336>,  <32.423859, 34.619160, 54.767185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605812, 34.772385, 54.735336>,  <32.909069, 35.027763, 54.682251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605812, 34.772385, 54.735336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468041, -0.674479, -0.570978,
		0.454048, -0.370768, 0.810167,
		-0.758141, -0.638443, 0.132711,
		32.378368, 34.580853, 54.775150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180264, 34.380322, 54.903408>,  <32.909069, 35.027763, 54.682251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180264, 34.380322, 54.903408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815395, 34.274509, 54.778214>,  <32.596474, 34.211021, 54.703098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815395, 34.274509, 54.778214>,  <33.180264, 34.380322, 54.903408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815395, 34.274509, 54.778214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406976, -0.674311, -0.616177,
		-0.048051, -0.689439, 0.722748,
		-0.912174, -0.264533, -0.312987,
		32.541744, 34.195148, 54.684319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183331, 33.613556, 54.916489>,  <33.180264, 34.380322, 54.903408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183331, 33.613556, 54.916489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887894, 33.703045, 54.662109>,  <32.710632, 33.756737, 54.509483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887894, 33.703045, 54.662109>,  <33.183331, 33.613556, 54.916489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887894, 33.703045, 54.662109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234779, -0.798916, -0.553725,
		-0.631946, -0.558286, 0.537552,
		-0.738596, 0.223718, -0.635945,
		32.666317, 33.770161, 54.471325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764778, 33.029263, 54.908463>,  <33.183331, 33.613556, 54.916489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764778, 33.029263, 54.908463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676670, 33.222069, 54.569252>,  <32.623806, 33.337753, 54.365726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676670, 33.222069, 54.569252>,  <32.764778, 33.029263, 54.908463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676670, 33.222069, 54.569252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243320, -0.814744, -0.526297,
		-0.944603, -0.322271, 0.062183,
		-0.220273, 0.482011, -0.848024,
		32.610588, 33.366673, 54.314846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400295, 32.483906, 54.479710>,  <32.764778, 33.029263, 54.908463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400295, 32.483906, 54.479710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541237, 32.765213, 54.232727>,  <32.625801, 32.933998, 54.084538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541237, 32.765213, 54.232727>,  <32.400295, 32.483906, 54.479710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541237, 32.765213, 54.232727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317418, -0.710471, -0.628073,
		-0.880393, 0.025312, -0.473569,
		0.352355, 0.703271, -0.617459,
		32.646942, 32.976192, 54.047489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126987, 32.366074, 53.815647>,  <32.400295, 32.483906, 54.479710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126987, 32.366074, 53.815647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468006, 32.573807, 53.792110>,  <32.672615, 32.698448, 53.777988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468006, 32.573807, 53.792110>,  <32.126987, 32.366074, 53.815647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468006, 32.573807, 53.792110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212602, -0.447433, -0.868680,
		-0.477460, 0.728079, -0.491867,
		0.852545, 0.519332, -0.058840,
		32.723770, 32.729607, 53.774460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.505127, 37.699398, 53.998917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.874832, 37.848610, 54.031384>,  <27.096655, 37.938137, 54.050865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.874832, 37.848610, 54.031384>,  <26.505127, 37.699398, 53.998917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874832, 37.848610, 54.031384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269249, 0.486230, 0.831316,
		0.270641, -0.790207, 0.549842,
		0.924261, 0.373033, 0.081168,
		27.152111, 37.960522, 54.055733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615963, 37.668747, 54.755249>,  <26.505127, 37.699398, 53.998917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615963, 37.668747, 54.755249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.888899, 37.915951, 54.599056>,  <27.052660, 38.064274, 54.505341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.888899, 37.915951, 54.599056>,  <26.615963, 37.668747, 54.755249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888899, 37.915951, 54.599056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030105, 0.557445, 0.829668,
		0.730416, -0.554359, 0.398972,
		0.682338, 0.618014, -0.390478,
		27.093601, 38.101357, 54.481915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171350, 37.718307, 55.273880>,  <26.615963, 37.668747, 54.755249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171350, 37.718307, 55.273880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.172028, 38.026707, 55.019146>,  <27.172434, 38.211746, 54.866306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.172028, 38.026707, 55.019146>,  <27.171350, 37.718307, 55.273880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172028, 38.026707, 55.019146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077595, 0.635016, 0.768592,
		0.996984, 0.048113, 0.060901,
		0.001694, 0.770999, -0.636834,
		27.172537, 38.258007, 54.828094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420053, 38.291382, 55.627743>,  <27.171350, 37.718307, 55.273880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420053, 38.291382, 55.627743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272633, 38.479492, 55.306992>,  <27.184179, 38.592358, 55.114540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272633, 38.479492, 55.306992>,  <27.420053, 38.291382, 55.627743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272633, 38.479492, 55.306992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211088, 0.797731, 0.564860,
		0.905323, 0.377449, -0.194738,
		-0.368555, 0.470273, -0.801879,
		27.162066, 38.620575, 55.066429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685057, 39.019711, 55.643593>,  <27.420053, 38.291382, 55.627743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685057, 39.019711, 55.643593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.359180, 38.995968, 55.412853>,  <27.163654, 38.981720, 55.274410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.359180, 38.995968, 55.412853>,  <27.685057, 39.019711, 55.643593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359180, 38.995968, 55.412853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378227, 0.808430, 0.450983,
		0.439573, 0.585592, -0.681071,
		-0.814690, -0.059359, -0.576851,
		27.114773, 38.978161, 55.239799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670425, 39.701477, 55.354961>,  <27.685057, 39.019711, 55.643593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670425, 39.701477, 55.354961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.301661, 39.546883, 55.344326>,  <27.080402, 39.454124, 55.337944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.301661, 39.546883, 55.344326>,  <27.670425, 39.701477, 55.354961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301661, 39.546883, 55.344326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363412, 0.839016, 0.404949,
		-0.134199, 0.382990, -0.913953,
		-0.921912, -0.386485, -0.026588,
		27.025087, 39.430939, 55.336349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263748, 40.222466, 55.029919>,  <27.670425, 39.701477, 55.354961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263748, 40.222466, 55.029919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.024218, 39.980156, 55.239468>,  <26.880499, 39.834770, 55.365196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.024218, 39.980156, 55.239468>,  <27.263748, 40.222466, 55.029919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024218, 39.980156, 55.239468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402296, 0.793131, 0.457276,
		-0.692505, 0.063079, -0.718650,
		-0.598828, -0.605776, 0.523871,
		26.844570, 39.798424, 55.396629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709581, 40.594292, 55.077976>,  <27.263748, 40.222466, 55.029919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709581, 40.594292, 55.077976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.649799, 40.317188, 55.360180>,  <26.613930, 40.150925, 55.529503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.649799, 40.317188, 55.360180>,  <26.709581, 40.594292, 55.077976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649799, 40.317188, 55.360180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433290, 0.687256, 0.583043,
		-0.888776, -0.218554, -0.402879,
		-0.149455, -0.692758, 0.705514,
		26.604963, 40.109360, 55.571835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021137, 40.585285, 55.270996>,  <26.709581, 40.594292, 55.077976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021137, 40.585285, 55.270996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.218910, 40.434643, 55.584354>,  <26.337574, 40.344257, 55.772369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.218910, 40.434643, 55.584354>,  <26.021137, 40.585285, 55.270996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218910, 40.434643, 55.584354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446562, 0.663169, 0.600658,
		-0.745734, -0.646818, 0.159713,
		0.494433, -0.376609, 0.783392,
		26.367241, 40.321659, 55.819370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601185, 40.520546, 55.863125>,  <26.021137, 40.585285, 55.270996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601185, 40.520546, 55.863125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.962843, 40.542149, 56.032642>,  <26.179838, 40.555111, 56.134354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.962843, 40.542149, 56.032642>,  <25.601185, 40.520546, 55.863125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962843, 40.542149, 56.032642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387532, 0.521225, 0.760358,
		-0.179826, -0.851709, 0.492194,
		0.904147, 0.054009, 0.423794,
		26.234087, 40.558350, 56.159782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381536, 40.570541, 56.621838>,  <25.601185, 40.520546, 55.863125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381536, 40.570541, 56.621838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.776653, 40.632198, 56.630878>,  <26.013723, 40.669193, 56.636303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.776653, 40.632198, 56.630878>,  <25.381536, 40.570541, 56.621838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776653, 40.632198, 56.630878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089743, 0.444386, 0.891329,
		0.127344, -0.882475, 0.452793,
		0.987791, 0.154140, 0.022606,
		26.072990, 40.678440, 56.637661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560329, 40.400280, 57.374302>,  <25.381536, 40.570541, 56.621838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560329, 40.400280, 57.374302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.849197, 40.628376, 57.217690>,  <26.022518, 40.765232, 57.123722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.849197, 40.628376, 57.217690>,  <25.560329, 40.400280, 57.374302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849197, 40.628376, 57.217690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067988, 0.621810, 0.780212,
		0.688366, -0.536826, 0.487821,
		0.722170, 0.570237, -0.391535,
		26.065849, 40.799446, 57.100227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238779, 40.417870, 57.770744>,  <25.560329, 40.400280, 57.374302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238779, 40.417870, 57.770744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.107944, 40.737568, 57.569065>,  <26.029444, 40.929386, 57.448055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.107944, 40.737568, 57.569065>,  <26.238779, 40.417870, 57.770744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107944, 40.737568, 57.569065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030657, 0.524295, 0.850985,
		0.944496, 0.293805, -0.146988,
		-0.327089, 0.799246, -0.504201,
		26.009817, 40.977341, 57.417805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717834, 41.079041, 57.918221>,  <26.238779, 40.417870, 57.770744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717834, 41.079041, 57.918221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.322222, 41.137146, 57.907543>,  <26.084854, 41.172009, 57.901134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.322222, 41.137146, 57.907543>,  <26.717834, 41.079041, 57.918221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322222, 41.137146, 57.907543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023192, 0.331256, 0.943256,
		0.145861, 0.932292, -0.330992,
		-0.989033, 0.145261, -0.026696,
		26.025513, 41.180725, 57.899536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275877, 40.494858, 58.000473>,  <26.717834, 41.079041, 57.918221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275877, 40.494858, 58.000473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.106453, 40.274025, 58.287750>,  <27.004799, 40.141525, 58.460117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.106453, 40.274025, 58.287750>,  <27.275877, 40.494858, 58.000473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106453, 40.274025, 58.287750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717725, -0.688245, -0.105778,
		0.552692, 0.470663, 0.687756,
		-0.423559, -0.552082, 0.718195,
		26.979385, 40.108398, 58.503208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779476, 40.281628, 58.437206>,  <27.275877, 40.494858, 58.000473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779476, 40.281628, 58.437206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.478851, 40.018723, 58.459713>,  <27.298477, 39.860981, 58.473217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.478851, 40.018723, 58.459713>,  <27.779476, 40.281628, 58.437206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478851, 40.018723, 58.459713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659608, -0.749874, 0.051060,
		0.008635, 0.075491, 0.997109,
		-0.751561, -0.657260, 0.056270,
		27.253384, 39.821545, 58.476593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010155, 39.746613, 58.916767>,  <27.779476, 40.281628, 58.437206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010155, 39.746613, 58.916767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.718382, 39.570808, 58.707096>,  <27.543318, 39.465324, 58.581295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.718382, 39.570808, 58.707096>,  <28.010155, 39.746613, 58.916767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718382, 39.570808, 58.707096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503791, -0.863520, 0.022985,
		-0.462736, -0.247308, 0.851302,
		-0.729432, -0.439514, -0.524173,
		27.499552, 39.438953, 58.549843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988695, 39.005455, 59.152824>,  <28.010155, 39.746613, 58.916767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988695, 39.005455, 59.152824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.774113, 38.990623, 58.815578>,  <27.645363, 38.981724, 58.613232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.774113, 38.990623, 58.815578>,  <27.988695, 39.005455, 59.152824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774113, 38.990623, 58.815578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498401, -0.820126, -0.281051,
		-0.681038, -0.570980, 0.458443,
		-0.536455, -0.037082, -0.843114,
		27.613176, 38.979500, 58.562645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785572, 38.378010, 58.979824>,  <27.988695, 39.005455, 59.152824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785572, 38.378010, 58.979824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.757587, 38.532349, 58.611862>,  <27.740797, 38.624954, 58.391087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.757587, 38.532349, 58.611862>,  <27.785572, 38.378010, 58.979824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757587, 38.532349, 58.611862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488095, -0.790995, -0.368903,
		-0.869982, -0.474810, -0.132992,
		-0.069963, 0.385852, -0.919904,
		27.736599, 38.648106, 58.335892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557199, 37.743042, 58.466572>,  <27.785572, 38.378010, 58.979824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557199, 37.743042, 58.466572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.709026, 38.016369, 58.217091>,  <27.800123, 38.180367, 58.067402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.709026, 38.016369, 58.217091>,  <27.557199, 37.743042, 58.466572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709026, 38.016369, 58.217091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647897, -0.677567, -0.348041,
		-0.660422, -0.271989, -0.699903,
		0.379568, 0.683319, -0.623701,
		27.822897, 38.221363, 58.029980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589451, 37.337608, 57.829922>,  <27.557199, 37.743042, 58.466572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589451, 37.337608, 57.829922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.829000, 37.657719, 57.817890>,  <27.972731, 37.849785, 57.810673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.829000, 37.657719, 57.817890>,  <27.589451, 37.337608, 57.829922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829000, 37.657719, 57.817890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742921, -0.569192, -0.352263,
		-0.299027, 0.188617, -0.935418,
		0.598875, 0.800278, -0.030076,
		28.008663, 37.897800, 57.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687071, 37.512814, 57.112595>,  <27.589451, 37.337608, 57.829922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687071, 37.512814, 57.112595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.984962, 37.643143, 57.345566>,  <28.163698, 37.721340, 57.485348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.984962, 37.643143, 57.345566>,  <27.687071, 37.512814, 57.112595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984962, 37.643143, 57.345566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653744, -0.531596, -0.538540,
		0.134147, 0.781823, -0.608899,
		0.744731, 0.325820, 0.582424,
		28.208382, 37.740891, 57.520294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204056, 37.362782, 56.752773>,  <27.687071, 37.512814, 57.112595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204056, 37.362782, 56.752773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.403030, 37.439598, 57.091164>,  <28.522415, 37.485687, 57.294197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.403030, 37.439598, 57.091164>,  <28.204056, 37.362782, 56.752773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403030, 37.439598, 57.091164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809539, -0.453241, -0.373122,
		0.311778, 0.870456, -0.380922,
		0.497435, 0.192040, 0.845978,
		28.552261, 37.497211, 57.344955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793678, 37.566326, 56.534184>,  <28.204056, 37.362782, 56.752773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793678, 37.566326, 56.534184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865925, 37.444283, 56.908195>,  <28.909273, 37.371056, 57.132603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865925, 37.444283, 56.908195>,  <28.793678, 37.566326, 56.534184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865925, 37.444283, 56.908195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888311, -0.357513, -0.288250,
		0.422235, 0.882661, 0.206463,
		0.180614, -0.305112, 0.935032,
		28.920109, 37.352749, 57.188705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447706, 37.560680, 56.545151>,  <28.793678, 37.566326, 56.534184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447706, 37.560680, 56.545151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.400867, 37.367123, 56.892052>,  <29.372765, 37.250988, 57.100193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.400867, 37.367123, 56.892052>,  <29.447706, 37.560680, 56.545151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400867, 37.367123, 56.892052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825250, -0.533227, -0.186096,
		0.552496, 0.693912, 0.461774,
		-0.117096, -0.483896, 0.867256,
		29.365738, 37.221954, 57.152229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206264, 37.493412, 56.836864>,  <29.447706, 37.560680, 56.545151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206264, 37.493412, 56.836864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.965279, 37.232265, 57.020515>,  <29.820686, 37.075577, 57.130707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.965279, 37.232265, 57.020515>,  <30.206264, 37.493412, 56.836864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965279, 37.232265, 57.020515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751362, -0.657968, 0.050317,
		0.269241, 0.375285, 0.886944,
		-0.602464, -0.652869, 0.459128,
		29.784540, 37.036404, 57.158253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593895, 37.246262, 57.454498>,  <30.206264, 37.493412, 56.836864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593895, 37.246262, 57.454498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324165, 36.968719, 57.353424>,  <30.162327, 36.802193, 57.292782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324165, 36.968719, 57.353424>,  <30.593895, 37.246262, 57.454498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324165, 36.968719, 57.353424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732168, -0.672724, -0.106642,
		-0.095992, -0.256917, 0.961654,
		-0.674326, -0.693856, -0.252683,
		30.121868, 36.760563, 57.277618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964062, 36.615021, 57.656010>,  <30.593895, 37.246262, 57.454498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964062, 36.615021, 57.656010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681391, 36.474274, 57.410473>,  <30.511789, 36.389824, 57.263153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681391, 36.474274, 57.410473>,  <30.964062, 36.615021, 57.656010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681391, 36.474274, 57.410473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646418, -0.673815, -0.357934,
		-0.287668, -0.649740, 0.703623,
		-0.706676, -0.351868, -0.613839,
		30.469389, 36.368713, 57.226322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105129, 36.519886, 58.353836>,  <30.964062, 36.615021, 57.656010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105129, 36.519886, 58.353836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.364943, 36.443260, 58.648159>,  <31.520830, 36.397285, 58.824753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.364943, 36.443260, 58.648159>,  <31.105129, 36.519886, 58.353836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364943, 36.443260, 58.648159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383066, 0.753497, 0.534325,
		-0.656784, -0.628924, 0.416041,
		0.649535, -0.191565, 0.735804,
		31.559803, 36.385792, 58.868900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700569, 36.430717, 58.929485>,  <31.105129, 36.519886, 58.353836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700569, 36.430717, 58.929485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067657, 36.537792, 59.046875>,  <31.287910, 36.602036, 59.117310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067657, 36.537792, 59.046875>,  <30.700569, 36.430717, 58.929485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067657, 36.537792, 59.046875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388770, 0.756879, 0.525349,
		-0.081500, -0.596221, 0.798673,
		0.917723, 0.267684, 0.293478,
		31.342974, 36.618099, 59.134918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640724, 36.462841, 59.627151>,  <30.700569, 36.430717, 58.929485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640724, 36.462841, 59.627151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961309, 36.682877, 59.533287>,  <31.153660, 36.814896, 59.476971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961309, 36.682877, 59.533287>,  <30.640724, 36.462841, 59.627151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961309, 36.682877, 59.533287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452183, 0.814182, 0.364196,
		0.391394, -0.185780, 0.901275,
		0.801463, 0.550085, -0.234659,
		31.201748, 36.847900, 59.462891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904591, 36.817043, 60.195244>,  <30.640724, 36.462841, 59.627151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904591, 36.817043, 60.195244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.048758, 37.035706, 59.892914>,  <31.135258, 37.166901, 59.711517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.048758, 37.035706, 59.892914>,  <30.904591, 36.817043, 60.195244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048758, 37.035706, 59.892914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242017, 0.837335, 0.490201,
		0.900848, 0.006246, 0.434089,
		0.360416, 0.546654, -0.755823,
		31.156883, 37.199703, 59.666168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258272, 37.337616, 60.456715>,  <30.904591, 36.817043, 60.195244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258272, 37.337616, 60.456715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.148737, 37.489174, 60.103115>,  <31.083015, 37.580109, 59.890957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.148737, 37.489174, 60.103115>,  <31.258272, 37.337616, 60.456715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148737, 37.489174, 60.103115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280393, 0.847751, 0.450220,
		0.919996, 0.371153, -0.125906,
		-0.273837, 0.378898, -0.883996,
		31.066586, 37.602844, 59.837917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536543, 38.013199, 60.439816>,  <31.258272, 37.337616, 60.456715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536543, 38.013199, 60.439816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.251570, 38.015358, 60.159126>,  <31.080585, 38.016655, 59.990715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.251570, 38.015358, 60.159126>,  <31.536543, 38.013199, 60.439816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251570, 38.015358, 60.159126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423544, 0.793983, 0.436121,
		0.559507, 0.607916, -0.563374,
		-0.712434, 0.005399, -0.701719,
		31.037840, 38.016979, 59.948612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460592, 38.672726, 60.265640>,  <31.536543, 38.013199, 60.439816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460592, 38.672726, 60.265640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.122238, 38.530785, 60.106365>,  <30.919226, 38.445621, 60.010799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.122238, 38.530785, 60.106365>,  <31.460592, 38.672726, 60.265640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122238, 38.530785, 60.106365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456837, 0.867342, 0.197532,
		0.275272, 0.348997, -0.895782,
		-0.845887, -0.354851, -0.398190,
		30.868471, 38.424328, 59.986908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662533, 39.019123, 59.685501>,  <31.460592, 38.672726, 60.265640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662533, 39.019123, 59.685501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954147, 39.275009, 59.588116>,  <32.129116, 39.428539, 59.529686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954147, 39.275009, 59.588116>,  <31.662533, 39.019123, 59.685501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954147, 39.275009, 59.588116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524106, -0.750500, -0.402570,
		-0.440246, 0.165890, -0.882419,
		0.729038, 0.639711, -0.243461,
		32.172859, 39.466923, 59.515076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835312, 38.668358, 59.137890>,  <31.662533, 39.019123, 59.685501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835312, 38.668358, 59.137890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134178, 38.926556, 59.201225>,  <32.313499, 39.081474, 59.239227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134178, 38.926556, 59.201225>,  <31.835312, 38.668358, 59.137890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134178, 38.926556, 59.201225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636875, -0.627214, -0.448323,
		-0.190080, 0.435814, -0.879736,
		0.747168, 0.645499, 0.158338,
		32.358330, 39.120205, 59.248726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156807, 38.601143, 58.534901>,  <31.835312, 38.668358, 59.137890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156807, 38.601143, 58.534901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434727, 38.769154, 58.768425>,  <32.601479, 38.869961, 58.908539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434727, 38.769154, 58.768425>,  <32.156807, 38.601143, 58.534901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434727, 38.769154, 58.768425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711272, -0.521534, -0.471269,
		0.106535, 0.742686, -0.661111,
		0.694797, 0.420023, 0.583813,
		32.643166, 38.895161, 58.943569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726200, 38.706333, 58.136967>,  <32.156807, 38.601143, 58.534901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726200, 38.706333, 58.136967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.894562, 38.726887, 58.499226>,  <32.995579, 38.739220, 58.716583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.894562, 38.726887, 58.499226>,  <32.726200, 38.706333, 58.136967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894562, 38.726887, 58.499226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793801, -0.504046, -0.340319,
		0.439002, 0.862146, -0.252944,
		0.420901, 0.051387, 0.905650,
		33.020832, 38.742302, 58.770920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439056, 38.956047, 58.073685>,  <32.726200, 38.706333, 58.136967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439056, 38.956047, 58.073685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420620, 38.756077, 58.419621>,  <33.409557, 38.636093, 58.627182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420620, 38.756077, 58.419621>,  <33.439056, 38.956047, 58.073685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420620, 38.756077, 58.419621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720692, -0.616145, -0.317755,
		0.691721, 0.608636, 0.388694,
		-0.046095, -0.499927, 0.864840,
		33.406792, 38.606098, 58.679073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078529, 39.076862, 58.349831>,  <33.439056, 38.956047, 58.073685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078529, 39.076862, 58.349831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915916, 38.748768, 58.510803>,  <33.818348, 38.551910, 58.607388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915916, 38.748768, 58.510803>,  <34.078529, 39.076862, 58.349831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915916, 38.748768, 58.510803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713360, -0.560166, -0.421108,
		0.570834, 0.115882, 0.812847,
		-0.406530, -0.820235, 0.402427,
		33.793957, 38.502697, 58.631531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683292, 38.735458, 58.635811>,  <34.078529, 39.076862, 58.349831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683292, 38.735458, 58.635811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401100, 38.451973, 58.634018>,  <34.231785, 38.281883, 58.632942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401100, 38.451973, 58.634018>,  <34.683292, 38.735458, 58.635811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401100, 38.451973, 58.634018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691694, -0.687141, -0.222252,
		0.154435, -0.159893, 0.974979,
		-0.705485, -0.708711, -0.004478,
		34.189453, 38.239361, 58.632675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.254749, 43.011616, 56.027397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982954, 42.788631, 56.218201>,  <28.819878, 42.654842, 56.332684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982954, 42.788631, 56.218201>,  <29.254749, 43.011616, 56.027397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982954, 42.788631, 56.218201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081000, -0.589178, -0.803933,
		0.729201, -0.584901, 0.355185,
		-0.679488, -0.557459, 0.477006,
		28.779108, 42.621395, 56.361301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397648, 42.373394, 55.872021>,  <29.254749, 43.011616, 56.027397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397648, 42.373394, 55.872021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006884, 42.371334, 55.957458>,  <28.772425, 42.370098, 56.008720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006884, 42.371334, 55.957458>,  <29.397648, 42.373394, 55.872021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006884, 42.371334, 55.957458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152702, -0.682402, -0.714849,
		0.149439, -0.730959, 0.665858,
		-0.976908, -0.005149, 0.213597,
		28.713812, 42.369789, 56.021538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116894, 41.610584, 55.783669>,  <29.397648, 42.373394, 55.872021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116894, 41.610584, 55.783669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843533, 41.897312, 55.728344>,  <28.679516, 42.069351, 55.695148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843533, 41.897312, 55.728344>,  <29.116894, 41.610584, 55.783669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843533, 41.897312, 55.728344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298499, -0.447259, -0.843124,
		-0.666229, -0.534908, 0.519628,
		-0.683402, 0.716822, -0.138307,
		28.638512, 42.112358, 55.686852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437538, 41.246094, 55.792416>,  <29.116894, 41.610584, 55.783669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437538, 41.246094, 55.792416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432156, 41.578915, 55.570599>,  <28.428926, 41.778606, 55.437508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432156, 41.578915, 55.570599>,  <28.437538, 41.246094, 55.792416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432156, 41.578915, 55.570599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246882, -0.540186, -0.804518,
		-0.968952, 0.126081, 0.212686,
		-0.013456, 0.832048, -0.554541,
		28.428120, 41.828529, 55.404236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056831, 40.986492, 55.269596>,  <28.437538, 41.246094, 55.792416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056831, 40.986492, 55.269596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147850, 41.358761, 55.155006>,  <28.202461, 41.582123, 55.086254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147850, 41.358761, 55.155006>,  <28.056831, 40.986492, 55.269596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147850, 41.358761, 55.155006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149470, -0.257323, -0.954695,
		-0.962228, 0.260055, 0.080556,
		0.227545, 0.930675, -0.286474,
		28.216114, 41.637962, 55.069065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670971, 41.103535, 54.670696>,  <28.056831, 40.986492, 55.269596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670971, 41.103535, 54.670696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958984, 41.375652, 54.615932>,  <28.131792, 41.538925, 54.583073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958984, 41.375652, 54.615932>,  <27.670971, 41.103535, 54.670696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958984, 41.375652, 54.615932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229390, -0.419543, -0.878273,
		-0.654927, 0.600982, -0.458139,
		0.720036, 0.680297, -0.136910,
		28.174995, 41.579742, 54.574860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550919, 41.458668, 53.965290>,  <27.670971, 41.103535, 54.670696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550919, 41.458668, 53.965290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938190, 41.515221, 54.047890>,  <28.170553, 41.549152, 54.097450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938190, 41.515221, 54.047890>,  <27.550919, 41.458668, 53.965290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938190, 41.515221, 54.047890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243591, -0.343153, -0.907144,
		-0.057397, 0.928578, -0.366673,
		0.968178, 0.141385, 0.206497,
		28.228643, 41.557636, 54.109840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800358, 41.965038, 53.469189>,  <27.550919, 41.458668, 53.965290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800358, 41.965038, 53.469189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100414, 41.735622, 53.600849>,  <28.280449, 41.597973, 53.679844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100414, 41.735622, 53.600849>,  <27.800358, 41.965038, 53.469189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100414, 41.735622, 53.600849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167830, -0.316327, -0.933686,
		0.639623, 0.755640, -0.141034,
		0.750143, -0.573538, 0.329149,
		28.325457, 41.563560, 53.699593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368355, 41.992115, 53.055065>,  <27.800358, 41.965038, 53.469189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368355, 41.992115, 53.055065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481852, 41.649048, 53.226601>,  <28.549950, 41.443207, 53.329521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481852, 41.649048, 53.226601>,  <28.368355, 41.992115, 53.055065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481852, 41.649048, 53.226601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287310, -0.350627, -0.891355,
		0.914846, 0.376125, 0.146927,
		0.283744, -0.857666, 0.428834,
		28.566975, 41.391747, 53.355251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095993, 41.795422, 52.753288>,  <28.368355, 41.992115, 53.055065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095993, 41.795422, 52.753288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956463, 41.456238, 52.912930>,  <28.872744, 41.252728, 53.008717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956463, 41.456238, 52.912930>,  <29.095993, 41.795422, 52.753288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956463, 41.456238, 52.912930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362752, -0.514826, -0.776766,
		0.864136, -0.126180, 0.487184,
		-0.348827, -0.847958, 0.399108,
		28.851814, 41.201851, 53.032661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642044, 41.424332, 52.907761>,  <29.095993, 41.795422, 52.753288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642044, 41.424332, 52.907761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347853, 41.154129, 52.886745>,  <29.171337, 40.992008, 52.874138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347853, 41.154129, 52.886745>,  <29.642044, 41.424332, 52.907761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347853, 41.154129, 52.886745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568477, -0.573037, -0.590307,
		0.368650, -0.464025, 0.805467,
		-0.735480, -0.675507, -0.052538,
		29.127209, 40.951477, 52.870983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897297, 40.843224, 53.175095>,  <29.642044, 41.424332, 52.907761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897297, 40.843224, 53.175095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581728, 40.698986, 52.976067>,  <29.392387, 40.612442, 52.856651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581728, 40.698986, 52.976067>,  <29.897297, 40.843224, 53.175095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581728, 40.698986, 52.976067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544510, -0.785510, -0.294078,
		-0.284804, -0.502937, 0.816052,
		-0.788920, -0.360594, -0.497571,
		29.345053, 40.590809, 52.826794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620691, 40.918102, 53.443333>,  <29.897297, 40.843224, 53.175095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620691, 40.918102, 53.443333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927919, 40.843861, 53.688484>,  <31.112257, 40.799316, 53.835575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927919, 40.843861, 53.688484>,  <30.620691, 40.918102, 53.443333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927919, 40.843861, 53.688484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442677, 0.537663, 0.717604,
		-0.462714, -0.822477, 0.330799,
		0.768071, -0.185608, 0.612876,
		31.158340, 40.788177, 53.872349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352564, 40.797981, 54.112259>,  <30.620691, 40.918102, 53.443333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352564, 40.797981, 54.112259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729757, 40.821198, 54.243359>,  <30.956074, 40.835125, 54.322018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729757, 40.821198, 54.243359>,  <30.352564, 40.797981, 54.112259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729757, 40.821198, 54.243359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329211, 0.307715, 0.892710,
		-0.049043, -0.949707, 0.309276,
		0.942982, 0.058036, 0.327745,
		31.012651, 40.838608, 54.341682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408525, 40.458752, 54.836971>,  <30.352564, 40.797981, 54.112259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408525, 40.458752, 54.836971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731300, 40.693783, 54.812958>,  <30.924965, 40.834801, 54.798550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731300, 40.693783, 54.812958>,  <30.408525, 40.458752, 54.836971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731300, 40.693783, 54.812958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234877, 0.412493, 0.880160,
		0.541926, -0.696134, 0.470865,
		0.806938, 0.587577, -0.060035,
		30.973381, 40.870056, 54.794949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783842, 40.483929, 55.541889>,  <30.408525, 40.458752, 54.836971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783842, 40.483929, 55.541889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923258, 40.805664, 55.349407>,  <31.006908, 40.998707, 55.233917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923258, 40.805664, 55.349407>,  <30.783842, 40.483929, 55.541889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923258, 40.805664, 55.349407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203939, 0.566174, 0.798659,
		0.914838, -0.180229, 0.361371,
		0.348541, 0.804341, -0.481202,
		31.027821, 41.046967, 55.205048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304415, 40.630795, 55.967606>,  <30.783842, 40.483929, 55.541889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304415, 40.630795, 55.967606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219358, 40.983231, 55.798622>,  <31.168325, 41.194691, 55.697231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219358, 40.983231, 55.798622>,  <31.304415, 40.630795, 55.967606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219358, 40.983231, 55.798622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083887, 0.414287, 0.906272,
		0.973523, 0.228150, -0.014183,
		-0.212641, 0.881087, -0.422457,
		31.155565, 41.247555, 55.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623861, 41.170128, 56.377598>,  <31.304415, 40.630795, 55.967606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623861, 41.170128, 56.377598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367273, 41.397930, 56.172005>,  <31.213320, 41.534611, 56.048649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367273, 41.397930, 56.172005>,  <31.623861, 41.170128, 56.377598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367273, 41.397930, 56.172005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334243, 0.395570, 0.855457,
		0.690506, 0.720544, -0.063391,
		-0.641470, 0.569510, -0.513980,
		31.174833, 41.568783, 56.017811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720898, 41.967255, 56.528412>,  <31.623861, 41.170128, 56.377598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720898, 41.967255, 56.528412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349859, 41.911251, 56.389870>,  <31.127235, 41.877647, 56.306744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349859, 41.911251, 56.389870>,  <31.720898, 41.967255, 56.528412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349859, 41.911251, 56.389870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369287, 0.483788, 0.793458,
		0.056470, 0.863914, -0.500464,
		-0.927598, -0.140008, -0.346352,
		31.071579, 41.869247, 56.285965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341373, 42.551128, 56.677448>,  <31.720898, 41.967255, 56.528412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341373, 42.551128, 56.677448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048136, 42.288971, 56.604740>,  <30.872194, 42.131676, 56.561115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048136, 42.288971, 56.604740>,  <31.341373, 42.551128, 56.677448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048136, 42.288971, 56.604740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520409, 0.368465, 0.770330,
		-0.437892, 0.659316, -0.611189,
		-0.733093, -0.655390, -0.181766,
		30.828207, 42.092354, 56.550209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789438, 42.894543, 56.774109>,  <31.341373, 42.551128, 56.677448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789438, 42.894543, 56.774109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634457, 42.526718, 56.800312>,  <30.541468, 42.306023, 56.816032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634457, 42.526718, 56.800312>,  <30.789438, 42.894543, 56.774109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634457, 42.526718, 56.800312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413796, 0.236968, 0.878987,
		-0.823804, 0.313460, -0.472324,
		-0.387453, -0.919559, 0.065506,
		30.518221, 42.250851, 56.819965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057520, 42.901470, 56.974102>,  <30.789438, 42.894543, 56.774109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057520, 42.901470, 56.974102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184212, 42.533142, 57.065125>,  <30.260227, 42.312145, 57.119740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184212, 42.533142, 57.065125>,  <30.057520, 42.901470, 56.974102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184212, 42.533142, 57.065125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459891, 0.060740, 0.885895,
		-0.829568, -0.385239, -0.404237,
		0.316728, -0.920816, 0.227555,
		30.279230, 42.256897, 57.133392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419624, 42.501995, 57.284054>,  <30.057520, 42.901470, 56.974102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419624, 42.501995, 57.284054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751099, 42.309738, 57.398781>,  <29.949984, 42.194382, 57.467617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751099, 42.309738, 57.398781>,  <29.419624, 42.501995, 57.284054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751099, 42.309738, 57.398781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278826, 0.089826, 0.956131,
		-0.485325, -0.872302, -0.059579,
		0.828683, -0.480646, 0.286815,
		29.999704, 42.165543, 57.484825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163528, 41.986591, 57.736423>,  <29.419624, 42.501995, 57.284054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163528, 41.986591, 57.736423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551723, 42.051964, 57.807350>,  <29.784641, 42.091187, 57.849907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551723, 42.051964, 57.807350>,  <29.163528, 41.986591, 57.736423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551723, 42.051964, 57.807350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207338, 0.190046, 0.959632,
		0.123131, -0.968078, 0.218322,
		0.970489, 0.163427, 0.177318,
		29.842871, 42.100994, 57.860546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371660, 41.520111, 58.226086>,  <29.163528, 41.986591, 57.736423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371660, 41.520111, 58.226086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630278, 41.824657, 58.245300>,  <29.785448, 42.007385, 58.256828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630278, 41.824657, 58.245300>,  <29.371660, 41.520111, 58.226086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630278, 41.824657, 58.245300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319407, 0.212973, 0.923375,
		0.692792, -0.612347, 0.380881,
		0.646543, 0.761363, 0.048041,
		29.824240, 42.053066, 58.259712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805132, 41.425217, 58.942738>,  <29.371660, 41.520111, 58.226086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805132, 41.425217, 58.942738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865677, 41.805752, 58.835377>,  <29.902004, 42.034073, 58.770958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865677, 41.805752, 58.835377>,  <29.805132, 41.425217, 58.942738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865677, 41.805752, 58.835377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111767, 0.286265, 0.951609,
		0.982139, -0.114040, 0.149659,
		0.151364, 0.951340, -0.268406,
		29.911085, 42.091152, 58.754856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527649, 41.674049, 59.035698>,  <29.805132, 41.425217, 58.942738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527649, 41.674049, 59.035698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688334, 41.723854, 59.398602>,  <30.784744, 41.753738, 59.616344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688334, 41.723854, 59.398602>,  <30.527649, 41.674049, 59.035698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688334, 41.723854, 59.398602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744540, -0.621230, -0.244403,
		0.533187, 0.773673, -0.342261,
		0.401710, 0.124514, 0.907262,
		30.808847, 41.761208, 59.670780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227552, 41.886089, 58.989483>,  <30.527649, 41.674049, 59.035698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227552, 41.886089, 58.989483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161474, 41.689766, 59.331669>,  <31.121826, 41.571972, 59.536980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161474, 41.689766, 59.331669>,  <31.227552, 41.886089, 58.989483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161474, 41.689766, 59.331669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658456, -0.700646, -0.274829,
		0.734265, 0.517885, 0.438919,
		-0.165197, -0.490806, 0.855464,
		31.111916, 41.542522, 59.588306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016872, 41.690540, 59.193913>,  <31.227552, 41.886089, 58.989483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016872, 41.690540, 59.193913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735216, 41.477699, 59.381977>,  <31.566221, 41.349995, 59.494816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735216, 41.477699, 59.381977>,  <32.016872, 41.690540, 59.193913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735216, 41.477699, 59.381977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613407, -0.789361, 0.025315,
		0.357654, 0.306224, 0.882219,
		-0.704141, -0.532105, 0.470159,
		31.523973, 41.318069, 59.523026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224781, 41.355656, 59.888454>,  <32.016872, 41.690540, 59.193913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224781, 41.355656, 59.888454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916412, 41.131943, 59.766552>,  <31.731390, 40.997715, 59.693413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916412, 41.131943, 59.766552>,  <32.224781, 41.355656, 59.888454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916412, 41.131943, 59.766552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555785, -0.824411, 0.107007,
		-0.311088, -0.086882, 0.946402,
		-0.770927, -0.559284, -0.304752,
		31.685135, 40.964157, 59.675125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219788, 40.789459, 60.357162>,  <32.224781, 41.355656, 59.888454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219788, 40.789459, 60.357162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003674, 40.673721, 60.041096>,  <31.874004, 40.604279, 59.851456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003674, 40.673721, 60.041096>,  <32.219788, 40.789459, 60.357162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003674, 40.673721, 60.041096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540506, -0.839027, -0.062345,
		-0.644934, -0.460776, 0.609709,
		-0.540290, -0.289343, -0.790169,
		31.841587, 40.586918, 59.804047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109318, 40.117844, 60.563354>,  <32.219788, 40.789459, 60.357162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109318, 40.117844, 60.563354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046909, 40.157215, 60.170219>,  <32.009464, 40.180840, 59.934338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046909, 40.157215, 60.170219>,  <32.109318, 40.117844, 60.563354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046909, 40.157215, 60.170219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486450, -0.858334, -0.163184,
		-0.859664, -0.503561, 0.086039,
		-0.156023, 0.098430, -0.982837,
		32.000103, 40.186745, 59.875370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783283, 39.476555, 60.279171>,  <32.109318, 40.117844, 60.563354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783283, 39.476555, 60.279171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949638, 39.658623, 59.964249>,  <32.049454, 39.767864, 59.775295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949638, 39.658623, 59.964249>,  <31.783283, 39.476555, 60.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949638, 39.658623, 59.964249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440911, -0.858098, -0.263185,
		-0.795382, -0.237677, -0.557563,
		0.415890, 0.455168, -0.787310,
		32.074406, 39.795174, 59.728054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060602, 39.311680, 60.035351>,  <31.783283, 39.476555, 60.279171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060602, 39.311680, 60.035351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778349, 39.030430, 60.000248>,  <30.608997, 38.861679, 59.979187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778349, 39.030430, 60.000248>,  <31.060602, 39.311680, 60.035351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778349, 39.030430, 60.000248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696612, 0.711042, -0.095662,
		0.129659, -0.006371, -0.991538,
		-0.705635, -0.703120, -0.087755,
		30.566658, 38.819492, 59.973923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608913, 39.494846, 59.457890>,  <31.060602, 39.311680, 60.035351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608913, 39.494846, 59.457890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412237, 39.258110, 59.713379>,  <30.294231, 39.116070, 59.866673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412237, 39.258110, 59.713379>,  <30.608913, 39.494846, 59.457890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412237, 39.258110, 59.713379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802354, 0.592934, -0.068240,
		-0.338332, -0.546033, -0.766407,
		-0.491690, -0.591842, 0.638721,
		30.264730, 39.080559, 59.904995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908754, 39.551353, 59.259785>,  <30.608913, 39.494846, 59.457890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908754, 39.551353, 59.259785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864477, 39.378147, 59.617611>,  <29.837910, 39.274223, 59.832306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864477, 39.378147, 59.617611>,  <29.908754, 39.551353, 59.259785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864477, 39.378147, 59.617611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813827, 0.556142, 0.168498,
		-0.570467, -0.709368, -0.413962,
		-0.110694, -0.433016, 0.894564,
		29.831268, 39.248241, 59.885979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196459, 39.359005, 59.286064>,  <29.908754, 39.551353, 59.259785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196459, 39.359005, 59.286064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309942, 39.343102, 59.669300>,  <29.378033, 39.333561, 59.899242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309942, 39.343102, 59.669300>,  <29.196459, 39.359005, 59.286064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309942, 39.343102, 59.669300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871037, 0.407144, 0.274824,
		-0.401005, -0.912498, 0.080881,
		0.283707, -0.039755, 0.958087,
		29.395054, 39.331177, 59.956726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659674, 38.956051, 59.737392>,  <29.196459, 39.359005, 59.286064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659674, 38.956051, 59.737392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879734, 39.198784, 59.966854>,  <29.011770, 39.344425, 60.104530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879734, 39.198784, 59.966854>,  <28.659674, 38.956051, 59.737392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879734, 39.198784, 59.966854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833274, 0.443893, 0.329566,
		-0.054651, -0.659325, 0.749869,
		0.550153, 0.606835, 0.573658,
		29.044781, 39.380833, 60.138950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302612, 38.910568, 60.441601>,  <28.659674, 38.956051, 59.737392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302612, 38.910568, 60.441601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499516, 39.256786, 60.404709>,  <28.617659, 39.464520, 60.382572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499516, 39.256786, 60.404709>,  <28.302612, 38.910568, 60.441601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499516, 39.256786, 60.404709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776809, 0.484639, 0.402109,
		0.392743, -0.126296, 0.910935,
		0.492260, 0.865548, -0.092231,
		28.647194, 39.516449, 60.377041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119955, 39.274155, 60.998768>,  <28.302612, 38.910568, 60.441601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119955, 39.274155, 60.998768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292223, 39.569965, 60.791836>,  <28.395584, 39.747452, 60.667679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292223, 39.569965, 60.791836>,  <28.119955, 39.274155, 60.998768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292223, 39.569965, 60.791836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714769, 0.629457, 0.304777,
		0.551025, 0.238512, 0.799677,
		0.430669, 0.739525, -0.517327,
		28.421423, 39.791824, 60.636639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191227, 39.876640, 61.520252>,  <28.119955, 39.274155, 60.998768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191227, 39.876640, 61.520252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213091, 40.057175, 61.163979>,  <28.226210, 40.165493, 60.950214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213091, 40.057175, 61.163979>,  <28.191227, 39.876640, 61.520252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213091, 40.057175, 61.163979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696909, 0.656055, 0.289672,
		0.715074, 0.604889, 0.350397,
		0.054661, 0.451332, -0.890681,
		28.229488, 40.192574, 60.896774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281286, 40.645412, 61.707161>,  <28.191227, 39.876640, 61.520252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281286, 40.645412, 61.707161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138556, 40.604294, 61.335762>,  <28.052917, 40.579624, 61.112923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138556, 40.604294, 61.335762>,  <28.281286, 40.645412, 61.707161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138556, 40.604294, 61.335762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718794, 0.665046, 0.202607,
		0.596667, 0.739694, -0.311193,
		-0.356824, -0.102795, -0.928499,
		28.031507, 40.573456, 61.057213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.820000, 31.160856, 50.860859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028282, 31.314301, 50.555779>,  <37.153252, 31.406368, 50.372730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028282, 31.314301, 50.555779>,  <36.820000, 31.160856, 50.860859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028282, 31.314301, 50.555779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730654, 0.662337, -0.165691,
		0.441604, 0.643546, 0.625168,
		0.520702, 0.383613, -0.762700,
		37.184494, 31.429384, 50.326969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014324, 31.998405, 50.900921>,  <36.820000, 31.160856, 50.860859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014324, 31.998405, 50.900921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011814, 31.865189, 50.523766>,  <37.010307, 31.785259, 50.297470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011814, 31.865189, 50.523766>,  <37.014324, 31.998405, 50.900921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011814, 31.865189, 50.523766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719627, 0.656210, -0.226991,
		0.694333, 0.677105, -0.243785,
		-0.006277, -0.333041, -0.942891,
		37.009930, 31.765276, 50.240898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775944, 32.522907, 50.586594>,  <37.014324, 31.998405, 50.900921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775944, 32.522907, 50.586594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.730385, 32.222752, 50.326149>,  <36.703049, 32.042660, 50.169884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.730385, 32.222752, 50.326149>,  <36.775944, 32.522907, 50.586594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730385, 32.222752, 50.326149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900323, 0.355056, -0.251701,
		0.420054, 0.557544, -0.716030,
		-0.113896, -0.750387, -0.651112,
		36.696217, 31.997635, 50.130814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520302, 32.898941, 50.069324>,  <36.775944, 32.522907, 50.586594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520302, 32.898941, 50.069324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420101, 32.523792, 49.973289>,  <36.359982, 32.298702, 49.915668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420101, 32.523792, 49.973289>,  <36.520302, 32.898941, 50.069324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420101, 32.523792, 49.973289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919039, 0.308328, -0.245562,
		0.304328, 0.159123, -0.939183,
		-0.250502, -0.937877, -0.240073,
		36.344952, 32.242432, 49.901260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254601, 33.011909, 49.384270>,  <36.520302, 32.898941, 50.069324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254601, 33.011909, 49.384270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131836, 32.665291, 49.541702>,  <36.058178, 32.457321, 49.636162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131836, 32.665291, 49.541702>,  <36.254601, 33.011909, 49.384270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131836, 32.665291, 49.541702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906037, 0.139414, -0.399575,
		0.291379, -0.479234, -0.827909,
		-0.306912, -0.866544, 0.393582,
		36.039761, 32.405327, 49.659779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818184, 32.759289, 48.905354>,  <36.254601, 33.011909, 49.384270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818184, 32.759289, 48.905354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694225, 32.577202, 49.239239>,  <35.619850, 32.467949, 49.439568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694225, 32.577202, 49.239239>,  <35.818184, 32.759289, 48.905354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694225, 32.577202, 49.239239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949331, 0.196424, -0.245333,
		-0.052277, -0.868444, -0.493024,
		-0.309900, -0.455217, 0.834709,
		35.601254, 32.440636, 49.489651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225292, 32.313301, 48.666519>,  <35.818184, 32.759289, 48.905354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225292, 32.313301, 48.666519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181561, 32.348843, 49.062531>,  <35.155319, 32.370167, 49.300137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181561, 32.348843, 49.062531>,  <35.225292, 32.313301, 48.666519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181561, 32.348843, 49.062531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959410, 0.251048, -0.128483,
		-0.259961, -0.963888, 0.057803,
		-0.109332, 0.088857, 0.990026,
		35.148762, 32.375500, 49.359539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601246, 32.117992, 48.793266>,  <35.225292, 32.313301, 48.666519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601246, 32.117992, 48.793266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 32.270020, 49.161907>,  <34.651638, 32.361237, 49.383091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 32.270020, 49.161907>,  <34.601246, 32.117992, 48.793266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632740, 32.270020, 49.161907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996514, 0.055582, 0.062212,
		-0.027579, -0.923286, 0.383122,
		0.078734, 0.380071, 0.921600,
		34.656361, 32.384041, 49.438389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005920, 31.890263, 49.210312>,  <34.601246, 32.117992, 48.793266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005920, 31.890263, 49.210312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117222, 32.186684, 49.454742>,  <34.184002, 32.364536, 49.601402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117222, 32.186684, 49.454742>,  <34.005920, 31.890263, 49.210312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117222, 32.186684, 49.454742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959132, 0.248401, 0.135506,
		-0.051375, -0.623810, 0.779886,
		0.278255, 0.741052, 0.611078,
		34.200699, 32.409000, 49.638065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600704, 31.861708, 49.963013>,  <34.005920, 31.890263, 49.210312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600704, 31.861708, 49.963013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742527, 32.231018, 49.903881>,  <33.827621, 32.452602, 49.868401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742527, 32.231018, 49.903881>,  <33.600704, 31.861708, 49.963013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742527, 32.231018, 49.903881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912802, 0.376044, 0.159320,
		0.202686, 0.078451, 0.976096,
		0.354557, 0.923275, -0.147829,
		33.848892, 32.507999, 49.859531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315010, 32.219948, 50.493637>,  <33.600704, 31.861708, 49.963013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315010, 32.219948, 50.493637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417107, 32.504452, 50.231655>,  <33.478363, 32.675152, 50.074467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417107, 32.504452, 50.231655>,  <33.315010, 32.219948, 50.493637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417107, 32.504452, 50.231655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838403, 0.500215, 0.216481,
		0.481591, 0.493858, 0.723999,
		0.255244, 0.711259, -0.654952,
		33.493679, 32.717831, 50.035168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226429, 32.824547, 50.931046>,  <33.315010, 32.219948, 50.493637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226429, 32.824547, 50.931046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199818, 32.907532, 50.540653>,  <33.183853, 32.957321, 50.306419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199818, 32.907532, 50.540653>,  <33.226429, 32.824547, 50.931046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199818, 32.907532, 50.540653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872700, 0.462084, 0.157710,
		0.483703, 0.862228, 0.150312,
		-0.066525, 0.207462, -0.975978,
		33.179859, 32.969769, 50.247860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076069, 33.572304, 50.830547>,  <33.226429, 32.824547, 50.931046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076069, 33.572304, 50.830547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.920658, 33.351521, 50.535416>,  <32.827412, 33.219051, 50.358337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.920658, 33.351521, 50.535416>,  <33.076069, 33.572304, 50.830547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920658, 33.351521, 50.535416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894631, 0.417705, 0.158614,
		0.220647, 0.721711, -0.656085,
		-0.388523, -0.551957, -0.737830,
		32.804100, 33.185932, 50.314068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538795, 32.995419, 50.991779>,  <33.076069, 33.572304, 50.830547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538795, 32.995419, 50.991779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.565777, 33.076721, 51.382500>,  <32.581966, 33.125504, 51.616932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.565777, 33.076721, 51.382500>,  <32.538795, 32.995419, 50.991779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565777, 33.076721, 51.382500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961104, 0.276041, 0.008931,
		-0.267822, -0.939409, 0.213966,
		0.067453, 0.203252, 0.976800,
		32.586014, 33.137695, 51.675541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063957, 32.580997, 51.380184>,  <32.538795, 32.995419, 50.991779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063957, 32.580997, 51.380184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.138432, 32.938129, 51.544228>,  <32.183117, 33.152409, 51.642654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.138432, 32.938129, 51.544228>,  <32.063957, 32.580997, 51.380184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138432, 32.938129, 51.544228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982496, 0.171702, 0.072247,
		-0.005912, -0.416382, 0.909171,
		0.186189, 0.892829, 0.410109,
		32.194286, 33.205978, 51.667259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710548, 32.545601, 51.934139>,  <32.063957, 32.580997, 51.380184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710548, 32.545601, 51.934139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.763700, 32.940868, 51.903519>,  <31.795591, 33.178028, 51.885147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.763700, 32.940868, 51.903519>,  <31.710548, 32.545601, 51.934139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763700, 32.940868, 51.903519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935346, 0.150570, 0.320089,
		0.327829, 0.029067, 0.944290,
		0.132878, 0.988172, -0.076549,
		31.803564, 33.237320, 51.880554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550497, 32.816833, 52.659725>,  <31.710548, 32.545601, 51.934139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550497, 32.816833, 52.659725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.524666, 33.112698, 52.391773>,  <31.509167, 33.290215, 52.231003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.524666, 33.112698, 52.391773>,  <31.550497, 32.816833, 52.659725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524666, 33.112698, 52.391773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956567, 0.145340, 0.252696,
		0.284269, 0.657100, 0.698148,
		-0.064578, 0.739659, -0.669876,
		31.505293, 33.334595, 52.190811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218836, 33.428429, 53.012363>,  <31.550497, 32.816833, 52.659725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218836, 33.428429, 53.012363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.129778, 33.508667, 52.630749>,  <31.076344, 33.556808, 52.401779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.129778, 33.508667, 52.630749>,  <31.218836, 33.428429, 53.012363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129778, 33.508667, 52.630749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957220, 0.140545, 0.252936,
		0.184823, 0.969541, 0.160721,
		-0.222643, 0.200594, -0.954040,
		31.062984, 33.568844, 52.344536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684982, 34.008770, 53.008373>,  <31.218836, 33.428429, 53.012363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684982, 34.008770, 53.008373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.651506, 33.836021, 52.649155>,  <30.631420, 33.732372, 52.433624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.651506, 33.836021, 52.649155>,  <30.684982, 34.008770, 53.008373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651506, 33.836021, 52.649155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967926, 0.249467, -0.029765,
		0.236887, 0.866750, -0.438895,
		-0.083690, -0.431868, -0.898045,
		30.626400, 33.706463, 52.379742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212307, 34.315418, 52.691704>,  <30.684982, 34.008770, 53.008373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212307, 34.315418, 52.691704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.173098, 33.995529, 52.454777>,  <30.149572, 33.803596, 52.312618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.173098, 33.995529, 52.454777>,  <30.212307, 34.315418, 52.691704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173098, 33.995529, 52.454777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986538, 0.156373, -0.047859,
		0.130896, 0.579653, -0.804281,
		-0.098026, -0.799718, -0.592319,
		30.143690, 33.755615, 52.277081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750017, 34.418877, 52.094391>,  <30.212307, 34.315418, 52.691704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750017, 34.418877, 52.094391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736729, 34.023235, 52.151752>,  <29.728756, 33.785851, 52.186169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736729, 34.023235, 52.151752>,  <29.750017, 34.418877, 52.094391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736729, 34.023235, 52.151752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993075, 0.016490, -0.116317,
		0.112685, -0.146274, -0.982805,
		-0.033220, -0.989106, 0.143403,
		29.726763, 33.726501, 52.194775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379061, 34.127018, 51.579132>,  <29.750017, 34.418877, 52.094391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379061, 34.127018, 51.579132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.372011, 33.840309, 51.857967>,  <29.367783, 33.668285, 52.025269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.372011, 33.840309, 51.857967>,  <29.379061, 34.127018, 51.579132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372011, 33.840309, 51.857967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996479, -0.044562, -0.071013,
		0.081964, -0.695883, -0.713463,
		-0.017623, -0.716772, 0.697085,
		29.366724, 33.625278, 52.067093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080498, 33.625626, 51.238922>,  <29.379061, 34.127018, 51.579132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080498, 33.625626, 51.238922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.017036, 33.549873, 51.626522>,  <28.978958, 33.504421, 51.859081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.017036, 33.549873, 51.626522>,  <29.080498, 33.625626, 51.238922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017036, 33.549873, 51.626522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986094, -0.018769, -0.165123,
		0.049461, -0.981722, -0.183784,
		-0.158655, -0.189395, 0.968998,
		28.969440, 33.493061, 51.917221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567961, 33.192524, 51.274166>,  <29.080498, 33.625626, 51.238922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567961, 33.192524, 51.274166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.554001, 33.316551, 51.654198>,  <28.545626, 33.390968, 51.882217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.554001, 33.316551, 51.654198>,  <28.567961, 33.192524, 51.274166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554001, 33.316551, 51.654198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999099, -0.033796, -0.025671,
		0.024149, -0.950114, 0.310965,
		-0.034899, 0.310065, 0.950074,
		28.543531, 33.409573, 51.939220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080385, 32.773212, 51.570347>,  <28.567961, 33.192524, 51.274166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080385, 32.773212, 51.570347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.093718, 33.073372, 51.834408>,  <28.101717, 33.253468, 51.992844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.093718, 33.073372, 51.834408>,  <28.080385, 32.773212, 51.570347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093718, 33.073372, 51.834408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997087, 0.070302, -0.029569,
		-0.068598, -0.657241, 0.750553,
		0.033331, 0.750395, 0.660149,
		28.103718, 33.298489, 52.032452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478603, 32.618824, 52.030647>,  <28.080385, 32.773212, 51.570347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478603, 32.618824, 52.030647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.575972, 33.001457, 52.094772>,  <27.634394, 33.231037, 52.133247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.575972, 33.001457, 52.094772>,  <27.478603, 32.618824, 52.030647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575972, 33.001457, 52.094772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969428, 0.234681, 0.071659,
		0.030924, -0.172857, 0.984461,
		0.243421, 0.956580, 0.160315,
		27.648998, 33.288433, 52.142868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088823, 32.826752, 52.617405>,  <27.478603, 32.618824, 52.030647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088823, 32.826752, 52.617405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178852, 33.169727, 52.432304>,  <27.232870, 33.375515, 52.321243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178852, 33.169727, 52.432304>,  <27.088823, 32.826752, 52.617405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178852, 33.169727, 52.432304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969827, 0.242821, -0.021776,
		0.093694, 0.453689, 0.886221,
		0.225072, 0.857441, -0.462750,
		27.246374, 33.426960, 52.293480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717545, 33.327915, 52.872414>,  <27.088823, 32.826752, 52.617405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717545, 33.327915, 52.872414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827188, 33.534180, 52.547707>,  <26.892975, 33.657936, 52.352882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827188, 33.534180, 52.547707>,  <26.717545, 33.327915, 52.872414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827188, 33.534180, 52.547707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927720, 0.364174, -0.081929,
		0.253376, 0.775548, 0.578209,
		0.274109, 0.515658, -0.811764,
		26.909422, 33.688877, 52.304176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500257, 34.069881, 52.889793>,  <26.717545, 33.327915, 52.872414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500257, 34.069881, 52.889793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.564774, 34.002514, 52.500820>,  <26.603483, 33.962093, 52.267437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.564774, 34.002514, 52.500820>,  <26.500257, 34.069881, 52.889793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564774, 34.002514, 52.500820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907281, 0.362439, -0.213258,
		0.388364, 0.916664, -0.094348,
		0.161290, -0.168421, -0.972430,
		26.613161, 33.951988, 52.209091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240425, 34.759323, 52.551273>,  <26.500257, 34.069881, 52.889793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240425, 34.759323, 52.551273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.290552, 34.512630, 52.240421>,  <26.320629, 34.364613, 52.053909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.290552, 34.512630, 52.240421>,  <26.240425, 34.759323, 52.551273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290552, 34.512630, 52.240421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824304, 0.371177, -0.427494,
		0.552104, 0.694166, -0.461861,
		0.125319, -0.616735, -0.777132,
		26.328148, 34.327610, 52.007282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163391, 35.154839, 51.891129>,  <26.240425, 34.759323, 52.551273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163391, 35.154839, 51.891129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.075415, 34.779720, 51.783676>,  <26.022629, 34.554649, 51.719204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.075415, 34.779720, 51.783676>,  <26.163391, 35.154839, 51.891129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075415, 34.779720, 51.783676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810997, 0.328817, -0.483904,
		0.542134, 0.111427, -0.832872,
		-0.219943, -0.937797, -0.268630,
		26.009432, 34.498383, 51.703087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000805, 35.204758, 51.197739>,  <26.163391, 35.154839, 51.891129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000805, 35.204758, 51.197739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.805544, 34.878765, 51.322647>,  <25.688387, 34.683170, 51.397591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.805544, 34.878765, 51.322647>,  <26.000805, 35.204758, 51.197739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805544, 34.878765, 51.322647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868313, 0.417451, -0.267896,
		0.087973, -0.401922, -0.911438,
		-0.488154, -0.814981, 0.312270,
		25.659098, 34.634270, 51.416328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.477644, 35.053360, 50.743530>,  <26.000805, 35.204758, 51.197739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.477644, 35.053360, 50.743530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.352074, 34.822006, 51.044708>,  <25.276731, 34.683193, 51.225414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.352074, 34.822006, 51.044708>,  <25.477644, 35.053360, 50.743530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352074, 34.822006, 51.044708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949191, 0.172753, -0.263044,
		0.022067, -0.797263, -0.603229,
		-0.313925, -0.578384, 0.752943,
		25.257896, 34.648491, 51.270592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023651, 34.584995, 50.476902>,  <25.477644, 35.053360, 50.743530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023651, 34.584995, 50.476902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.936970, 34.572914, 50.867210>,  <24.884962, 34.565666, 51.101395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.936970, 34.572914, 50.867210>,  <25.023651, 34.584995, 50.476902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936970, 34.572914, 50.867210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975879, 0.033814, -0.215680,
		-0.026487, -0.998973, -0.036773,
		-0.216701, -0.030173, 0.975772,
		24.871960, 34.563854, 51.159943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480963, 34.098011, 50.520779>,  <25.023651, 34.584995, 50.476902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480963, 34.098011, 50.520779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.448462, 34.328182, 50.846302>,  <24.428961, 34.466286, 51.041615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.448462, 34.328182, 50.846302>,  <24.480963, 34.098011, 50.520779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.448462, 34.328182, 50.846302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971015, 0.138444, -0.194840,
		-0.224783, -0.806048, 0.547502,
		-0.081252, 0.575430, 0.813805,
		24.424086, 34.500813, 51.090443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.677399, 29.357904, 53.268406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318130, 29.417215, 53.102852>,  <36.102570, 29.452801, 53.003517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318130, 29.417215, 53.102852>,  <36.677399, 29.357904, 53.268406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318130, 29.417215, 53.102852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150792, 0.780409, 0.606814,
		0.412977, 0.607434, -0.678582,
		-0.898171, 0.148275, -0.413887,
		36.048679, 29.461699, 52.978687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665195, 29.985081, 53.206364>,  <36.677399, 29.357904, 53.268406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665195, 29.985081, 53.206364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.273159, 29.914566, 53.169819>,  <36.037937, 29.872257, 53.147892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.273159, 29.914566, 53.169819>,  <36.665195, 29.985081, 53.206364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273159, 29.914566, 53.169819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198197, 0.896324, 0.396638,
		0.011969, 0.406848, -0.913417,
		-0.980089, -0.176289, -0.091364,
		35.979134, 29.861679, 53.142410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288406, 30.542486, 52.899574>,  <36.665195, 29.985081, 53.206364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288406, 30.542486, 52.899574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043919, 30.340410, 53.143276>,  <35.897224, 30.219164, 53.289497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043919, 30.340410, 53.143276>,  <36.288406, 30.542486, 52.899574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043919, 30.340410, 53.143276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119772, 0.819960, 0.559750,
		-0.782346, 0.269158, -0.561684,
		-0.611220, -0.505192, 0.609255,
		35.860554, 30.188852, 53.326054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738892, 30.990648, 52.877262>,  <36.288406, 30.542486, 52.899574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738892, 30.990648, 52.877262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664783, 30.745518, 53.184540>,  <35.620319, 30.598438, 53.368904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664783, 30.745518, 53.184540>,  <35.738892, 30.990648, 52.877262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664783, 30.745518, 53.184540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370202, 0.767657, 0.523119,
		-0.910290, -0.187470, -0.369090,
		-0.185266, -0.612828, 0.768192,
		35.609203, 30.561668, 53.414997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203327, 31.315968, 53.200794>,  <35.738892, 30.990648, 52.877262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203327, 31.315968, 53.200794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354141, 31.055849, 53.464600>,  <35.444630, 30.899778, 53.622883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354141, 31.055849, 53.464600>,  <35.203327, 31.315968, 53.200794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354141, 31.055849, 53.464600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049096, 0.697034, 0.715355,
		-0.924899, -0.302091, 0.230877,
		0.377031, -0.650296, 0.659517,
		35.467251, 30.860760, 53.662457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712582, 31.171549, 53.596638>,  <35.203327, 31.315968, 53.200794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712582, 31.171549, 53.596638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032280, 31.057072, 53.808037>,  <35.224098, 30.988386, 53.934875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032280, 31.057072, 53.808037>,  <34.712582, 31.171549, 53.596638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032280, 31.057072, 53.808037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301807, 0.569313, 0.764719,
		-0.519736, -0.770699, 0.368644,
		0.799242, -0.286193, 0.528495,
		35.272053, 30.971214, 53.966587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441429, 31.081276, 54.245228>,  <34.712582, 31.171549, 53.596638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441429, 31.081276, 54.245228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837772, 31.112381, 54.289307>,  <35.075581, 31.131044, 54.315754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837772, 31.112381, 54.289307>,  <34.441429, 31.081276, 54.245228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837772, 31.112381, 54.289307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134790, 0.599810, 0.788708,
		-0.004765, -0.796355, 0.604811,
		0.990863, 0.077765, 0.110199,
		35.135033, 31.135710, 54.322365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521229, 31.089933, 54.984886>,  <34.441429, 31.081276, 54.245228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521229, 31.089933, 54.984886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852482, 31.249174, 54.827049>,  <35.051235, 31.344719, 54.732346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852482, 31.249174, 54.827049>,  <34.521229, 31.089933, 54.984886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852482, 31.249174, 54.827049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001543, 0.702351, 0.711829,
		0.560524, -0.590101, 0.581028,
		0.828137, 0.398101, -0.394595,
		35.100922, 31.368605, 54.708672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981735, 31.201729, 55.524261>,  <34.521229, 31.089933, 54.984886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981735, 31.201729, 55.524261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127201, 31.427626, 55.227932>,  <35.214481, 31.563164, 55.050133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127201, 31.427626, 55.227932>,  <34.981735, 31.201729, 55.524261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127201, 31.427626, 55.227932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070122, 0.809615, 0.582758,
		0.928888, -0.159978, 0.334026,
		0.363661, 0.564740, -0.740823,
		35.236301, 31.597048, 55.005684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411266, 31.689314, 55.857117>,  <34.981735, 31.201729, 55.524261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411266, 31.689314, 55.857117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346256, 31.858437, 55.500507>,  <35.307251, 31.959911, 55.286541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346256, 31.858437, 55.500507>,  <35.411266, 31.689314, 55.857117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346256, 31.858437, 55.500507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250575, 0.856233, 0.451748,
		0.954358, 0.296813, -0.033211,
		-0.162521, 0.422808, -0.891527,
		35.297501, 31.985279, 55.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733139, 32.393681, 55.856163>,  <35.411266, 31.689314, 55.857117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733139, 32.393681, 55.856163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435799, 32.380867, 55.588909>,  <35.257393, 32.373180, 55.428558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435799, 32.380867, 55.588909>,  <35.733139, 32.393681, 55.856163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435799, 32.380867, 55.588909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350775, 0.869161, 0.348592,
		0.569550, 0.493491, -0.657327,
		-0.743350, -0.032033, -0.668135,
		35.212795, 32.371258, 55.388470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759235, 32.969410, 55.501343>,  <35.733139, 32.393681, 55.856163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759235, 32.969410, 55.501343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379738, 32.845337, 55.477100>,  <35.152039, 32.770893, 55.462555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379738, 32.845337, 55.477100>,  <35.759235, 32.969410, 55.501343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379738, 32.845337, 55.477100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301857, 0.832502, 0.464566,
		-0.093648, 0.459048, -0.883462,
		-0.948742, -0.310185, -0.060605,
		35.095116, 32.752281, 55.458920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884651, 33.409782, 55.056995>,  <35.759235, 32.969410, 55.501343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884651, 33.409782, 55.056995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153225, 33.689659, 54.959335>,  <36.314369, 33.857586, 54.900738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153225, 33.689659, 54.959335>,  <35.884651, 33.409782, 55.056995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153225, 33.689659, 54.959335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403555, -0.621547, -0.671434,
		-0.621547, 0.352295, -0.699691,
		0.671434, 0.699691, -0.244150,
		36.354656, 33.899567, 54.886089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121975, 33.283070, 54.288834>,  <35.884651, 33.409782, 55.056995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121975, 33.283070, 54.288834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393135, 33.547375, 54.417732>,  <36.555832, 33.705959, 54.495071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393135, 33.547375, 54.417732>,  <36.121975, 33.283070, 54.288834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393135, 33.547375, 54.417732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727298, -0.538875, -0.425031,
		-0.107191, 0.522501, -0.845874,
		0.677900, 0.660762, 0.322251,
		36.596504, 33.745602, 54.514408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586121, 33.479950, 53.699486>,  <36.121975, 33.283070, 54.288834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586121, 33.479950, 53.699486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791111, 33.612633, 54.016308>,  <36.914104, 33.692242, 54.206402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791111, 33.612633, 54.016308>,  <36.586121, 33.479950, 53.699486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791111, 33.612633, 54.016308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856346, -0.265720, -0.442791,
		0.063588, 0.905187, -0.420229,
		0.512472, 0.331706, 0.792050,
		36.944851, 33.712143, 54.253922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973976, 34.039921, 53.540096>,  <36.586121, 33.479950, 53.699486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973976, 34.039921, 53.540096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149807, 33.834583, 53.834919>,  <37.255306, 33.711380, 54.011814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149807, 33.834583, 53.834919>,  <36.973976, 34.039921, 53.540096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149807, 33.834583, 53.834919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837112, -0.063326, -0.543353,
		0.325599, 0.855846, 0.401886,
		0.439577, -0.513339, 0.737058,
		37.281681, 33.680580, 54.056038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593170, 34.392628, 53.551746>,  <36.973976, 34.039921, 53.540096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593170, 34.392628, 53.551746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.667702, 34.060108, 53.761211>,  <37.712421, 33.860596, 53.886890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.667702, 34.060108, 53.761211>,  <37.593170, 34.392628, 53.551746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667702, 34.060108, 53.761211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776758, -0.201723, -0.596619,
		0.601603, 0.517929, 0.608131,
		0.186333, -0.831299, 0.523663,
		37.723602, 33.810719, 53.918312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359257, 34.330471, 53.561989>,  <37.593170, 34.392628, 53.551746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359257, 34.330471, 53.561989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220444, 33.962486, 53.634918>,  <38.137157, 33.741695, 53.678677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220444, 33.962486, 53.634918>,  <38.359257, 34.330471, 53.561989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220444, 33.962486, 53.634918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552808, -0.357695, -0.752634,
		0.757609, -0.160399, 0.632693,
		-0.347033, -0.919960, 0.182323,
		38.116333, 33.686497, 53.689613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996845, 33.893692, 53.439259>,  <38.359257, 34.330471, 53.561989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996845, 33.893692, 53.439259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714653, 33.610210, 53.441837>,  <38.545338, 33.440121, 53.443386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714653, 33.610210, 53.441837>,  <38.996845, 33.893692, 53.439259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714653, 33.610210, 53.441837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371010, -0.377045, -0.848640,
		0.603863, -0.596306, 0.528932,
		-0.705480, -0.708701, 0.006448,
		38.503010, 33.397602, 53.443771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303207, 33.336678, 53.245003>,  <38.996845, 33.893692, 53.439259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303207, 33.336678, 53.245003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920326, 33.251896, 53.166180>,  <38.690598, 33.201027, 53.118885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920326, 33.251896, 53.166180>,  <39.303207, 33.336678, 53.245003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920326, 33.251896, 53.166180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274028, -0.444754, -0.852703,
		0.093092, -0.870212, 0.483803,
		-0.957205, -0.211955, -0.197060,
		38.633163, 33.188309, 53.107063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198784, 32.548084, 53.148891>,  <39.303207, 33.336678, 53.245003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198784, 32.548084, 53.148891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906326, 32.751793, 52.967312>,  <38.730850, 32.874020, 52.858364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906326, 32.751793, 52.967312>,  <39.198784, 32.548084, 53.148891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906326, 32.751793, 52.967312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168942, -0.509513, -0.843715,
		-0.660976, -0.693567, 0.286489,
		-0.731143, 0.509276, -0.453949,
		38.686985, 32.904575, 52.831127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890457, 32.004261, 52.810905>,  <39.198784, 32.548084, 53.148891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890457, 32.004261, 52.810905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738266, 32.332085, 52.639534>,  <38.646950, 32.528778, 52.536709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738266, 32.332085, 52.639534>,  <38.890457, 32.004261, 52.810905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738266, 32.332085, 52.639534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196667, -0.380971, -0.903429,
		-0.903634, -0.427997, -0.016228,
		-0.380482, 0.819561, -0.428431,
		38.624123, 32.577953, 52.511005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260868, 31.887712, 52.394188>,  <38.890457, 32.004261, 52.810905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260868, 31.887712, 52.394188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.406605, 32.226955, 52.240326>,  <38.494049, 32.430500, 52.148006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.406605, 32.226955, 52.240326>,  <38.260868, 31.887712, 52.394188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406605, 32.226955, 52.240326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035955, -0.425554, -0.904218,
		-0.930569, 0.315619, -0.185543,
		0.364347, 0.848109, -0.384659,
		38.515907, 32.481388, 52.124928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959076, 31.854130, 51.783676>,  <38.260868, 31.887712, 52.394188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959076, 31.854130, 51.783676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262470, 32.106102, 51.716873>,  <38.444508, 32.257286, 51.676792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262470, 32.106102, 51.716873>,  <37.959076, 31.854130, 51.783676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262470, 32.106102, 51.716873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036621, -0.297060, -0.954156,
		-0.650662, 0.717596, -0.248384,
		0.758484, 0.629929, -0.167007,
		38.490017, 32.295082, 51.666771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749249, 32.428215, 51.192612>,  <37.959076, 31.854130, 51.783676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749249, 32.428215, 51.192612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141735, 32.374557, 51.248074>,  <38.377228, 32.342365, 51.281349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141735, 32.374557, 51.248074>,  <37.749249, 32.428215, 51.192612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141735, 32.374557, 51.248074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066185, -0.441016, -0.895055,
		0.181211, 0.887418, -0.423854,
		0.981214, -0.134141, 0.138651,
		38.436100, 32.334316, 51.289669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993492, 32.725208, 50.547344>,  <37.749249, 32.428215, 51.192612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993492, 32.725208, 50.547344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276600, 32.489632, 50.703400>,  <38.446465, 32.348286, 50.797031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276600, 32.489632, 50.703400>,  <37.993492, 32.725208, 50.547344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276600, 32.489632, 50.703400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188274, -0.375033, -0.907691,
		0.680891, 0.715891, -0.154555,
		0.707772, -0.588940, 0.390140,
		38.488930, 32.312950, 50.820442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493210, 33.241943, 50.022537>,  <37.993492, 32.725208, 50.547344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493210, 33.241943, 50.022537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403923, 33.629951, 50.060970>,  <37.350349, 33.862755, 50.084030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403923, 33.629951, 50.060970>,  <37.493210, 33.241943, 50.022537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403923, 33.629951, 50.060970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928564, 0.241590, -0.281784,
		-0.296550, 0.026323, -0.954654,
		-0.223218, 0.970021, 0.096086,
		37.336956, 33.920959, 50.089798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248974, 33.523071, 49.978191>,  <37.493210, 33.241943, 50.022537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248974, 33.523071, 49.978191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385025, 33.883228, 49.869667>,  <38.466656, 34.099323, 49.804554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385025, 33.883228, 49.869667>,  <38.248974, 33.523071, 49.978191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385025, 33.883228, 49.869667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727800, 0.434744, 0.530383,
		0.595503, 0.017063, 0.803172,
		0.340124, 0.900393, -0.271309,
		38.487061, 34.153347, 49.788273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508564, 34.034920, 50.500885>,  <38.248974, 33.523071, 49.978191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508564, 34.034920, 50.500885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377003, 34.237705, 50.182186>,  <38.298065, 34.359375, 49.990967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377003, 34.237705, 50.182186>,  <38.508564, 34.034920, 50.500885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377003, 34.237705, 50.182186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577352, 0.559709, 0.594467,
		0.747321, 0.655527, 0.108606,
		-0.328902, 0.506962, -0.796752,
		38.278332, 34.389793, 49.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451241, 34.817177, 50.606087>,  <38.508564, 34.034920, 50.500885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451241, 34.817177, 50.606087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173023, 34.681725, 50.352615>,  <38.006092, 34.600452, 50.200531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173023, 34.681725, 50.352615>,  <38.451241, 34.817177, 50.606087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173023, 34.681725, 50.352615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700393, 0.516243, 0.492892,
		0.160226, 0.786653, -0.596242,
		-0.695541, -0.338630, -0.633682,
		37.964359, 34.580135, 50.162510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216476, 35.385296, 50.292240>,  <38.451241, 34.817177, 50.606087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216476, 35.385296, 50.292240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922955, 35.118332, 50.241486>,  <37.746841, 34.958153, 50.211033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922955, 35.118332, 50.241486>,  <38.216476, 35.385296, 50.292240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922955, 35.118332, 50.241486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651441, 0.638258, 0.410184,
		-0.192773, 0.383654, -0.903133,
		-0.733801, -0.667410, -0.126889,
		37.702816, 34.918110, 50.203419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588997, 35.742157, 50.019772>,  <38.216476, 35.385296, 50.292240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588997, 35.742157, 50.019772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454052, 35.408298, 50.193924>,  <37.373085, 35.207985, 50.298416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454052, 35.408298, 50.193924>,  <37.588997, 35.742157, 50.019772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454052, 35.408298, 50.193924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867765, 0.455012, 0.199870,
		-0.364925, -0.310382, -0.877777,
		-0.337363, -0.834642, 0.435384,
		37.352844, 35.157906, 50.324539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890831, 35.627003, 49.685806>,  <37.588997, 35.742157, 50.019772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890831, 35.627003, 49.685806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911594, 35.417671, 50.026028>,  <36.924053, 35.292072, 50.230160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911594, 35.417671, 50.026028>,  <36.890831, 35.627003, 49.685806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911594, 35.417671, 50.026028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931529, 0.281602, 0.230117,
		-0.359943, -0.804258, -0.472875,
		0.051911, -0.523326, 0.850550,
		36.927166, 35.260674, 50.281193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252373, 35.278286, 49.748852>,  <36.890831, 35.627003, 49.685806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252373, 35.278286, 49.748852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371651, 35.246868, 50.129360>,  <36.443218, 35.228016, 50.357666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371651, 35.246868, 50.129360>,  <36.252373, 35.278286, 49.748852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371651, 35.246868, 50.129360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881027, 0.360801, 0.305964,
		-0.367252, -0.929329, 0.038385,
		0.298191, -0.078547, 0.951269,
		36.461109, 35.223305, 50.414742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782150, 34.785091, 50.214470>,  <36.252373, 35.278286, 49.748852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782150, 34.785091, 50.214470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967072, 35.044857, 50.455978>,  <36.078026, 35.200714, 50.600883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967072, 35.044857, 50.455978>,  <35.782150, 34.785091, 50.214470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967072, 35.044857, 50.455978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885163, 0.297656, 0.357615,
		0.052524, -0.699762, 0.712443,
		0.462308, 0.649411, 0.603769,
		36.105762, 35.239681, 50.637108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375946, 34.813778, 50.819019>,  <35.782150, 34.785091, 50.214470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375946, 34.813778, 50.819019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610409, 35.129631, 50.891575>,  <35.751087, 35.319145, 50.935108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610409, 35.129631, 50.891575>,  <35.375946, 34.813778, 50.819019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610409, 35.129631, 50.891575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751312, 0.445958, 0.486468,
		0.303241, -0.421423, 0.854662,
		0.586153, 0.789635, 0.181387,
		35.786255, 35.366520, 50.945992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209469, 34.957527, 51.502228>,  <35.375946, 34.813778, 50.819019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209469, 34.957527, 51.502228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369274, 35.290562, 51.348766>,  <35.465157, 35.490383, 51.256687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369274, 35.290562, 51.348766>,  <35.209469, 34.957527, 51.502228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369274, 35.290562, 51.348766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712830, 0.545294, 0.441054,
		0.576419, 0.097273, 0.811344,
		0.399518, 0.832582, -0.383657,
		35.489128, 35.540337, 51.233669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213753, 35.361069, 52.116592>,  <35.209469, 34.957527, 51.502228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213753, 35.361069, 52.116592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244862, 35.608227, 51.803631>,  <35.263527, 35.756523, 51.615852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244862, 35.608227, 51.803631>,  <35.213753, 35.361069, 52.116592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244862, 35.608227, 51.803631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676574, 0.609119, 0.413789,
		0.732256, 0.497171, 0.465427,
		0.077777, 0.617895, -0.782404,
		35.268196, 35.793594, 51.568909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314461, 36.045761, 52.372646>,  <35.213753, 35.361069, 52.116592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314461, 36.045761, 52.372646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183483, 36.109806, 52.000164>,  <35.104897, 36.148235, 51.776676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183483, 36.109806, 52.000164>,  <35.314461, 36.045761, 52.372646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183483, 36.109806, 52.000164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615136, 0.711953, 0.338719,
		0.717209, 0.683729, -0.134630,
		-0.327443, 0.160117, -0.931206,
		35.085251, 36.157841, 51.720802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314262, 36.828686, 52.295040>,  <35.314461, 36.045761, 52.372646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314262, 36.828686, 52.295040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091095, 36.708576, 51.985573>,  <34.957195, 36.636513, 51.799892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091095, 36.708576, 51.985573>,  <35.314262, 36.828686, 52.295040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091095, 36.708576, 51.985573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594125, 0.795411, 0.119735,
		0.579430, 0.526457, -0.622176,
		-0.557921, -0.300272, -0.773667,
		34.923717, 36.618496, 51.753471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217136, 37.431042, 51.897545>,  <35.314262, 36.828686, 52.295040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217136, 37.431042, 51.897545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914135, 37.189617, 51.798016>,  <34.732334, 37.044762, 51.738300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914135, 37.189617, 51.798016>,  <35.217136, 37.431042, 51.897545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914135, 37.189617, 51.798016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651557, 0.722787, 0.230331,
		0.040827, 0.336596, -0.940763,
		-0.757501, -0.603557, -0.248821,
		34.686886, 37.008549, 51.723370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800011, 37.744087, 51.451092>,  <35.217136, 37.431042, 51.897545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800011, 37.744087, 51.451092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546684, 37.471478, 51.597755>,  <34.394688, 37.307911, 51.685753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546684, 37.471478, 51.597755>,  <34.800011, 37.744087, 51.451092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546684, 37.471478, 51.597755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687344, 0.713068, 0.138174,
		-0.355620, -0.164512, -0.920038,
		-0.633319, -0.681520, 0.366657,
		34.356689, 37.267021, 51.707752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138733, 37.777435, 51.077961>,  <34.800011, 37.744087, 51.451092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138733, 37.777435, 51.077961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029160, 37.573185, 51.403961>,  <33.963417, 37.450634, 51.599560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029160, 37.573185, 51.403961>,  <34.138733, 37.777435, 51.077961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029160, 37.573185, 51.403961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765636, 0.628621, 0.136514,
		-0.582033, -0.586597, -0.563153,
		-0.273931, -0.510626, 0.814999,
		33.946980, 37.419998, 51.648460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373245, 37.685181, 51.193478>,  <34.138733, 37.777435, 51.077961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373245, 37.685181, 51.193478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514080, 37.636139, 51.564640>,  <33.598579, 37.606716, 51.787338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514080, 37.636139, 51.564640>,  <33.373245, 37.685181, 51.193478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514080, 37.636139, 51.564640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681654, 0.645779, 0.343973,
		-0.641392, -0.753617, 0.143799,
		0.352086, -0.122600, 0.927903,
		33.619705, 37.599358, 51.843010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808613, 37.406544, 51.635769>,  <33.373245, 37.685181, 51.193478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808613, 37.406544, 51.635769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073421, 37.606308, 51.859306>,  <33.232307, 37.726166, 51.993431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073421, 37.606308, 51.859306>,  <32.808613, 37.406544, 51.635769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073421, 37.606308, 51.859306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743340, 0.532781, 0.404462,
		-0.095750, -0.683177, 0.723948,
		0.662025, 0.499413, 0.558847,
		33.272030, 37.756130, 52.026958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461102, 37.543888, 52.146698>,  <32.808613, 37.406544, 51.635769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461102, 37.543888, 52.146698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759319, 37.801170, 52.216499>,  <32.938251, 37.955540, 52.258381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759319, 37.801170, 52.216499>,  <32.461102, 37.543888, 52.146698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759319, 37.801170, 52.216499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630280, 0.595383, 0.498263,
		0.216590, -0.481462, 0.849284,
		0.745544, 0.643205, 0.174502,
		32.982983, 37.994133, 52.268848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211338, 37.910934, 52.713116>,  <32.461102, 37.543888, 52.146698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211338, 37.910934, 52.713116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534969, 38.128933, 52.625137>,  <32.729149, 38.259731, 52.572350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534969, 38.128933, 52.625137>,  <32.211338, 37.910934, 52.713116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534969, 38.128933, 52.625137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332131, 0.732763, 0.593926,
		0.484855, -0.407480, 0.773870,
		0.809076, 0.544995, -0.219947,
		32.777691, 38.292431, 52.559155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440933, 38.091610, 53.346664>,  <32.211338, 37.910934, 52.713116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440933, 38.091610, 53.346664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554230, 38.345802, 53.059349>,  <32.622208, 38.498318, 52.886959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554230, 38.345802, 53.059349>,  <32.440933, 38.091610, 53.346664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554230, 38.345802, 53.059349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416501, 0.756152, 0.504738,
		0.863887, 0.156206, 0.478851,
		0.283241, 0.635479, -0.718290,
		32.639202, 38.536446, 52.843861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574551, 38.633858, 53.648754>,  <32.440933, 38.091610, 53.346664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574551, 38.633858, 53.648754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.557034, 38.793568, 53.282440>,  <32.546524, 38.889393, 53.062653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.557034, 38.793568, 53.282440>,  <32.574551, 38.633858, 53.648754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557034, 38.793568, 53.282440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336743, 0.857121, 0.389804,
		0.940578, 0.325456, 0.096915,
		-0.043796, 0.399276, -0.915784,
		32.543896, 38.913349, 53.007706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949173, 39.276573, 53.633713>,  <32.574551, 38.633858, 53.648754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949173, 39.276573, 53.633713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679806, 39.297829, 53.338772>,  <32.518185, 39.310581, 53.161808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.679806, 39.297829, 53.338772>,  <32.949173, 39.276573, 53.633713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679806, 39.297829, 53.338772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271194, 0.910117, 0.313273,
		0.687726, 0.410929, -0.598474,
		-0.673414, 0.053143, -0.737352,
		32.477783, 39.313770, 53.117565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945656, 39.927891, 53.456684>,  <32.949173, 39.276573, 53.633713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945656, 39.927891, 53.456684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592640, 39.788773, 53.330090>,  <32.380833, 39.705299, 53.254131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592640, 39.788773, 53.330090>,  <32.945656, 39.927891, 53.456684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592640, 39.788773, 53.330090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435620, 0.858147, 0.271697,
		0.177099, 0.377651, -0.908854,
		-0.882537, -0.347798, -0.316489,
		32.327877, 39.684433, 53.235142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633991, 40.526627, 53.252636>,  <32.945656, 39.927891, 53.456684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633991, 40.526627, 53.252636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301388, 40.304523, 53.259232>,  <32.101826, 40.171261, 53.263191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301388, 40.304523, 53.259232>,  <32.633991, 40.526627, 53.252636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301388, 40.304523, 53.259232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487890, 0.744172, 0.456258,
		-0.265616, 0.371338, -0.889695,
		-0.831512, -0.555262, 0.016492,
		32.051933, 40.137943, 53.264179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035667, 40.961590, 52.944672>,  <32.633991, 40.526627, 53.252636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035667, 40.961590, 52.944672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.905983, 40.663357, 53.177563>,  <31.828171, 40.484417, 53.317295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.905983, 40.663357, 53.177563>,  <32.035667, 40.961590, 52.944672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905983, 40.663357, 53.177563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517615, 0.654982, 0.550521,
		-0.791808, -0.122881, -0.598282,
		-0.324215, -0.745586, 0.582225,
		31.808718, 40.439682, 53.352230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353617, 41.017765, 52.986019>,  <32.035667, 40.961590, 52.944672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353617, 41.017765, 52.986019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435671, 40.829998, 53.329548>,  <31.484903, 40.717339, 53.535664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435671, 40.829998, 53.329548>,  <31.353617, 41.017765, 52.986019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435671, 40.829998, 53.329548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573145, 0.653672, 0.494184,
		-0.793363, -0.593602, -0.134950,
		0.205136, -0.469414, 0.858819,
		31.497211, 40.689175, 53.587193>
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
