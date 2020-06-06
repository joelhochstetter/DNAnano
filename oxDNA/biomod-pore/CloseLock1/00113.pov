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
	<24.126598, 35.271362, 34.854782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358639, 34.947563, 34.890995>,  <24.497862, 34.753284, 34.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358639, 34.947563, 34.890995>,  <24.126598, 35.271362, 34.854782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358639, 34.947563, 34.890995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736053, 0.568557, 0.367382,
		-0.348871, -0.146478, 0.925653,
		0.580100, -0.809498, 0.090537,
		24.532669, 34.704712, 34.918156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.346390, 35.073696, 35.499443>,  <24.126598, 35.271362, 34.854782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.346390, 35.073696, 35.499443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644878, 34.937561, 35.270592>,  <24.823971, 34.855881, 35.133282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644878, 34.937561, 35.270592>,  <24.346390, 35.073696, 35.499443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644878, 34.937561, 35.270592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665163, 0.415702, 0.620282,
		0.026730, -0.843423, 0.536584,
		0.746220, -0.340335, -0.572126,
		24.868744, 34.835461, 35.098953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905451, 34.624737, 35.767330>,  <24.346390, 35.073696, 35.499443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905451, 34.624737, 35.767330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069494, 34.851234, 35.481346>,  <25.167921, 34.987133, 35.309753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069494, 34.851234, 35.481346>,  <24.905451, 34.624737, 35.767330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069494, 34.851234, 35.481346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593403, 0.429637, 0.680650,
		0.692592, -0.703402, -0.159816,
		0.410108, 0.566248, -0.714965,
		25.192526, 35.021111, 35.266857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623037, 34.569241, 35.742897>,  <24.905451, 34.624737, 35.767330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623037, 34.569241, 35.742897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513899, 34.929161, 35.606712>,  <25.448416, 35.145111, 35.525002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513899, 34.929161, 35.606712>,  <25.623037, 34.569241, 35.742897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513899, 34.929161, 35.606712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544337, 0.436185, 0.716547,
		0.793254, 0.010180, -0.608806,
		-0.272846, 0.899800, -0.340464,
		25.432045, 35.199100, 35.504574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276724, 35.045338, 35.774467>,  <25.623037, 34.569241, 35.742897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276724, 35.045338, 35.774467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934753, 35.250584, 35.804977>,  <25.729570, 35.373730, 35.823284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934753, 35.250584, 35.804977>,  <26.276724, 35.045338, 35.774467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934753, 35.250584, 35.804977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397658, 0.553811, 0.731547,
		0.333120, 0.655752, -0.677510,
		-0.854926, 0.513110, 0.076280,
		25.678276, 35.404518, 35.827862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404591, 35.712406, 35.412506>,  <26.276724, 35.045338, 35.774467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404591, 35.712406, 35.412506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794819, 35.635094, 35.454281>,  <27.028955, 35.588707, 35.479347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794819, 35.635094, 35.454281>,  <26.404591, 35.712406, 35.412506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794819, 35.635094, 35.454281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100447, 0.815193, 0.570413,
		-0.195388, -0.545986, 0.814691,
		0.975569, -0.193285, 0.104436,
		27.087490, 35.577106, 35.485611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496407, 35.869411, 36.123924>,  <26.404591, 35.712406, 35.412506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496407, 35.869411, 36.123924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862669, 35.854858, 35.963799>,  <27.082426, 35.846127, 35.867722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862669, 35.854858, 35.963799>,  <26.496407, 35.869411, 36.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862669, 35.854858, 35.963799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210826, 0.891389, 0.401221,
		0.342239, -0.451777, 0.823875,
		0.915656, -0.036381, -0.400314,
		27.137365, 35.843945, 35.843704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874249, 36.116028, 36.572281>,  <26.496407, 35.869411, 36.123924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874249, 36.116028, 36.572281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119961, 36.147839, 36.258255>,  <27.267387, 36.166927, 36.069839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119961, 36.147839, 36.258255>,  <26.874249, 36.116028, 36.572281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119961, 36.147839, 36.258255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220557, 0.937949, 0.267594,
		0.757636, -0.337530, 0.558624,
		0.614281, 0.079530, -0.785069,
		27.304245, 36.171700, 36.022736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388660, 36.455338, 36.843300>,  <26.874249, 36.116028, 36.572281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388660, 36.455338, 36.843300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429556, 36.500908, 36.448013>,  <27.454094, 36.528252, 36.210842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429556, 36.500908, 36.448013>,  <27.388660, 36.455338, 36.843300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429556, 36.500908, 36.448013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175572, 0.975758, 0.130653,
		0.979143, -0.186861, 0.079762,
		0.102242, 0.113924, -0.988214,
		27.460228, 36.535084, 36.151550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025597, 36.755875, 36.669239>,  <27.388660, 36.455338, 36.843300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025597, 36.755875, 36.669239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808187, 36.852352, 36.347641>,  <27.677742, 36.910240, 36.154682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808187, 36.852352, 36.347641>,  <28.025597, 36.755875, 36.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808187, 36.852352, 36.347641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296927, 0.951145, 0.084608,
		0.785121, -0.192741, -0.588588,
		-0.543525, 0.241195, -0.803993,
		27.645130, 36.924709, 36.106441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370537, 37.337524, 36.507011>,  <28.025597, 36.755875, 36.669239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370537, 37.337524, 36.507011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033253, 37.343243, 36.292053>,  <27.830881, 37.346676, 36.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033253, 37.343243, 36.292053>,  <28.370537, 37.337524, 36.507011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033253, 37.343243, 36.292053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086836, 0.990141, -0.109910,
		0.530522, -0.139342, -0.836140,
		-0.843212, 0.014298, -0.537391,
		27.780289, 37.347530, 36.130836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491903, 37.689182, 36.050304>,  <28.370537, 37.337524, 36.507011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491903, 37.689182, 36.050304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096928, 37.749996, 36.033089>,  <27.859943, 37.786484, 36.022758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096928, 37.749996, 36.033089>,  <28.491903, 37.689182, 36.050304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096928, 37.749996, 36.033089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155507, 0.983325, -0.094285,
		0.027986, -0.099793, -0.994615,
		-0.987438, 0.152031, -0.043037,
		27.800695, 37.795605, 36.020176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338634, 38.096401, 35.398048>,  <28.491903, 37.689182, 36.050304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338634, 38.096401, 35.398048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051352, 38.167988, 35.667015>,  <27.878983, 38.210941, 35.828396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051352, 38.167988, 35.667015>,  <28.338634, 38.096401, 35.398048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051352, 38.167988, 35.667015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017311, 0.970654, -0.239855,
		-0.695615, -0.160626, -0.700228,
		-0.718206, 0.178968, 0.672421,
		27.835890, 38.221680, 35.868740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963533, 38.545364, 35.081009>,  <28.338634, 38.096401, 35.398048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963533, 38.545364, 35.081009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853407, 38.583035, 35.463699>,  <27.787331, 38.605637, 35.693314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853407, 38.583035, 35.463699>,  <27.963533, 38.545364, 35.081009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853407, 38.583035, 35.463699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081332, 0.989340, -0.120793,
		-0.957907, -0.111069, -0.264723,
		-0.275318, 0.094178, 0.956729,
		27.770811, 38.611286, 35.750717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313532, 38.849529, 35.121037>,  <27.963533, 38.545364, 35.081009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313532, 38.849529, 35.121037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496601, 38.918991, 35.469837>,  <27.606443, 38.960667, 35.679115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496601, 38.918991, 35.469837>,  <27.313532, 38.849529, 35.121037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496601, 38.918991, 35.469837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130633, 0.983231, -0.127244,
		-0.879472, -0.055675, 0.472683,
		0.457673, 0.173656, 0.871997,
		27.633904, 38.971088, 35.731438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923939, 39.393993, 35.355766>,  <27.313532, 38.849529, 35.121037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923939, 39.393993, 35.355766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260511, 39.420631, 35.570263>,  <27.462456, 39.436615, 35.698963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260511, 39.420631, 35.570263>,  <26.923939, 39.393993, 35.355766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260511, 39.420631, 35.570263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043719, 0.997513, -0.055281,
		-0.538593, 0.023071, 0.842250,
		0.841431, 0.066596, 0.536245,
		27.512941, 39.440609, 35.731136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867865, 40.056248, 35.732590>,  <26.923939, 39.393993, 35.355766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867865, 40.056248, 35.732590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257355, 39.981026, 35.783955>,  <27.491049, 39.935890, 35.814774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257355, 39.981026, 35.783955>,  <26.867865, 40.056248, 35.732590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257355, 39.981026, 35.783955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204866, 0.969655, -0.133411,
		-0.099430, 0.156214, 0.982706,
		0.973727, -0.188058, 0.128415,
		27.549473, 39.924610, 35.822479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053257, 40.562576, 36.105259>,  <26.867865, 40.056248, 35.732590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053257, 40.562576, 36.105259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393221, 40.435089, 35.937416>,  <27.597200, 40.358597, 35.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393221, 40.435089, 35.937416>,  <27.053257, 40.562576, 36.105259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393221, 40.435089, 35.937416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251107, 0.945077, -0.209225,
		0.463245, 0.072457, 0.883263,
		0.849912, -0.318716, -0.419608,
		27.648195, 40.339474, 35.811535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549366, 40.978420, 36.377041>,  <27.053257, 40.562576, 36.105259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549366, 40.978420, 36.377041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740484, 40.847763, 36.050846>,  <27.855156, 40.769367, 35.855129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740484, 40.847763, 36.050846>,  <27.549366, 40.978420, 36.377041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740484, 40.847763, 36.050846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397047, 0.908369, -0.131222,
		0.783623, -0.261088, 0.563709,
		0.477795, -0.326647, -0.815484,
		27.883823, 40.749767, 35.806202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301867, 41.221420, 36.448547>,  <27.549366, 40.978420, 36.377041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301867, 41.221420, 36.448547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246124, 41.178722, 36.054760>,  <28.212679, 41.153103, 35.818485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246124, 41.178722, 36.054760>,  <28.301867, 41.221420, 36.448547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246124, 41.178722, 36.054760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656040, 0.734741, -0.172529,
		0.741749, -0.669896, -0.032360,
		-0.139353, -0.106744, -0.984472,
		28.204319, 41.146698, 35.759418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008711, 41.223129, 36.121120>,  <28.301867, 41.221420, 36.448547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008711, 41.223129, 36.121120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731985, 41.325802, 35.851154>,  <28.565948, 41.387405, 35.689175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731985, 41.325802, 35.851154>,  <29.008711, 41.223129, 36.121120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731985, 41.325802, 35.851154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538955, 0.805591, -0.246073,
		0.480540, -0.533984, -0.695659,
		-0.691816, 0.256681, -0.674912,
		28.524441, 41.402805, 35.648682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383661, 41.371910, 35.419262>,  <29.008711, 41.223129, 36.121120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383661, 41.371910, 35.419262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020773, 41.540043, 35.425816>,  <28.803040, 41.640923, 35.429749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020773, 41.540043, 35.425816>,  <29.383661, 41.371910, 35.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020773, 41.540043, 35.425816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390714, 0.856444, -0.337410,
		-0.155853, -0.299706, -0.941215,
		-0.907222, 0.420333, 0.016380,
		28.748606, 41.666142, 35.430729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263426, 41.583996, 34.760452>,  <29.383661, 41.371910, 35.419262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263426, 41.583996, 34.760452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039516, 41.820484, 34.992699>,  <28.905170, 41.962376, 35.132046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039516, 41.820484, 34.992699>,  <29.263426, 41.583996, 34.760452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039516, 41.820484, 34.992699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438938, 0.805861, -0.397394,
		-0.702842, 0.032403, -0.710608,
		-0.559774, 0.591218, 0.580616,
		28.871584, 41.997849, 35.166882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133896, 42.113304, 34.320419>,  <29.263426, 41.583996, 34.760452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133896, 42.113304, 34.320419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015564, 42.266178, 34.670601>,  <28.944565, 42.357903, 34.880711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015564, 42.266178, 34.670601>,  <29.133896, 42.113304, 34.320419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015564, 42.266178, 34.670601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476765, 0.853237, -0.211382,
		-0.827756, 0.354852, -0.434627,
		-0.295830, 0.382187, 0.875453,
		28.926815, 42.380833, 34.933235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718332, 42.773438, 34.253899>,  <29.133896, 42.113304, 34.320419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718332, 42.773438, 34.253899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904612, 42.790592, 34.607460>,  <29.016380, 42.800884, 34.819595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904612, 42.790592, 34.607460>,  <28.718332, 42.773438, 34.253899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904612, 42.790592, 34.607460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402965, 0.878986, -0.254957,
		-0.787872, 0.474915, 0.392063,
		0.465700, 0.042886, 0.883903,
		29.044321, 42.803459, 34.872631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785200, 43.568581, 34.413113>,  <28.718332, 42.773438, 34.253899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785200, 43.568581, 34.413113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037209, 43.368858, 34.651024>,  <29.188414, 43.249023, 34.793770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037209, 43.368858, 34.651024>,  <28.785200, 43.568581, 34.413113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037209, 43.368858, 34.651024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566099, 0.819585, 0.088389,
		-0.531606, 0.281018, 0.799014,
		0.630021, -0.499309, 0.594780,
		29.226215, 43.219067, 34.829456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837162, 43.822948, 35.134144>,  <28.785200, 43.568581, 34.413113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837162, 43.822948, 35.134144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199419, 43.659599, 35.088470>,  <29.416773, 43.561588, 35.061066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199419, 43.659599, 35.088470>,  <28.837162, 43.822948, 35.134144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199419, 43.659599, 35.088470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416679, 0.907005, 0.060994,
		0.078653, -0.102816, 0.991586,
		0.905644, -0.408376, -0.114180,
		29.471113, 43.537086, 35.054214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320612, 44.148655, 35.602428>,  <28.837162, 43.822948, 35.134144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320612, 44.148655, 35.602428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526735, 44.002724, 35.292240>,  <29.650410, 43.915165, 35.106125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526735, 44.002724, 35.292240>,  <29.320612, 44.148655, 35.602428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526735, 44.002724, 35.292240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521651, 0.851453, -0.053932,
		0.679954, -0.376734, 0.629074,
		0.515309, -0.364828, -0.775472,
		29.681328, 43.893276, 35.059597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044260, 44.345924, 35.771713>,  <29.320612, 44.148655, 35.602428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044260, 44.345924, 35.771713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892742, 44.333546, 35.401730>,  <29.801832, 44.326118, 35.179737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892742, 44.333546, 35.401730>,  <30.044260, 44.345924, 35.771713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892742, 44.333546, 35.401730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431304, 0.878370, -0.206016,
		0.818835, -0.476979, -0.319375,
		-0.378795, -0.030945, -0.924963,
		29.779104, 44.324261, 35.124241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486458, 44.348621, 35.149311>,  <30.044260, 44.345924, 35.771713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486458, 44.348621, 35.149311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142900, 44.538879, 35.073353>,  <29.936766, 44.653034, 35.027779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142900, 44.538879, 35.073353>,  <30.486458, 44.348621, 35.149311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142900, 44.538879, 35.073353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510786, 0.822616, -0.249801,
		0.037390, -0.311547, -0.949495,
		-0.858895, 0.475648, -0.189891,
		29.885233, 44.681576, 35.016384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786413, 44.863564, 35.604774>,  <30.486458, 44.348621, 35.149311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786413, 44.863564, 35.604774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933855, 44.715862, 35.946014>,  <31.022320, 44.627239, 36.150761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933855, 44.715862, 35.946014>,  <30.786413, 44.863564, 35.604774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933855, 44.715862, 35.946014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805108, -0.331942, -0.491544,
		0.464686, 0.868024, 0.174935,
		0.368603, -0.369255, 0.853101,
		31.044436, 44.605087, 36.201946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509478, 44.994274, 35.673893>,  <30.786413, 44.863564, 35.604774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509478, 44.994274, 35.673893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462151, 44.673470, 35.908081>,  <31.433754, 44.480988, 36.048595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462151, 44.673470, 35.908081>,  <31.509478, 44.994274, 35.673893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462151, 44.673470, 35.908081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857460, -0.379867, -0.347078,
		0.500762, 0.460951, 0.732641,
		-0.118320, -0.802014, 0.585470,
		31.426655, 44.432865, 36.083721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176846, 44.815952, 35.900501>,  <31.509478, 44.994274, 35.673893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176846, 44.815952, 35.900501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915001, 44.513954, 35.915825>,  <31.757895, 44.332756, 35.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915001, 44.513954, 35.915825>,  <32.176846, 44.815952, 35.900501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915001, 44.513954, 35.915825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649496, -0.587618, -0.482556,
		0.386840, -0.291003, 0.875027,
		-0.654607, -0.754998, 0.038309,
		31.718618, 44.287457, 35.927319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487896, 44.277458, 36.325947>,  <32.176846, 44.815952, 35.900501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487896, 44.277458, 36.325947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237656, 44.098465, 36.070328>,  <32.087513, 43.991070, 35.916954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237656, 44.098465, 36.070328>,  <32.487896, 44.277458, 36.325947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237656, 44.098465, 36.070328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717140, -0.652356, -0.245240,
		-0.307147, -0.611710, 0.729021,
		-0.625597, -0.447485, -0.639051,
		32.049976, 43.964218, 35.878613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855959, 44.050129, 36.418034>,  <32.487896, 44.277458, 36.325947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855959, 44.050129, 36.418034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680241, 44.371063, 36.579666>,  <31.574810, 44.563625, 36.676643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680241, 44.371063, 36.579666>,  <31.855959, 44.050129, 36.418034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680241, 44.371063, 36.579666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437552, 0.583940, -0.683786,
		-0.784582, -0.123579, -0.607585,
		-0.439294, 0.802336, 0.404077,
		31.548452, 44.611763, 36.700890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564493, 43.681553, 37.076408>,  <31.855959, 44.050129, 36.418034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564493, 43.681553, 37.076408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297230, 43.550274, 37.343498>,  <31.136871, 43.471508, 37.503750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297230, 43.550274, 37.343498>,  <31.564493, 43.681553, 37.076408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297230, 43.550274, 37.343498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230049, -0.944606, -0.234086,
		0.707560, -0.002798, 0.706648,
		-0.668159, -0.328193, 0.667722,
		31.096783, 43.451817, 37.543816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918434, 43.110161, 37.324577>,  <31.564493, 43.681553, 37.076408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918434, 43.110161, 37.324577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531044, 43.071224, 37.416298>,  <31.298611, 43.047863, 37.471329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531044, 43.071224, 37.416298>,  <31.918434, 43.110161, 37.324577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531044, 43.071224, 37.416298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026474, -0.955494, -0.293822,
		0.247696, -0.278489, 0.927950,
		-0.968476, -0.097345, 0.229299,
		31.240501, 43.042019, 37.485088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929522, 42.448875, 37.579338>,  <31.918434, 43.110161, 37.324577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929522, 42.448875, 37.579338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544613, 42.540596, 37.520752>,  <31.313667, 42.595631, 37.485600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544613, 42.540596, 37.520752>,  <31.929522, 42.448875, 37.579338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544613, 42.540596, 37.520752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175296, -0.934163, -0.310823,
		-0.208094, -0.273422, 0.939115,
		-0.962272, 0.229304, -0.146464,
		31.255932, 42.609386, 37.476814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612453, 41.984814, 37.949871>,  <31.929522, 42.448875, 37.579338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612453, 41.984814, 37.949871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351713, 42.118752, 37.677704>,  <31.195269, 42.199116, 37.514404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351713, 42.118752, 37.677704>,  <31.612453, 41.984814, 37.949871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351713, 42.118752, 37.677704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166313, -0.938517, -0.302531,
		-0.739886, -0.084042, 0.667462,
		-0.651850, 0.334846, -0.680419,
		31.156158, 42.219204, 37.473579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123133, 41.464062, 37.958416>,  <31.612453, 41.984814, 37.949871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123133, 41.464062, 37.958416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070709, 41.657681, 37.612347>,  <31.039255, 41.773853, 37.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070709, 41.657681, 37.612347>,  <31.123133, 41.464062, 37.958416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070709, 41.657681, 37.612347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260709, -0.858808, -0.440997,
		-0.956480, 0.167760, 0.238751,
		-0.131060, 0.484050, -0.865170,
		31.031391, 41.802895, 37.352795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656752, 41.149197, 37.657921>,  <31.123133, 41.464062, 37.958416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656752, 41.149197, 37.657921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773932, 41.327301, 37.319469>,  <30.844238, 41.434162, 37.116398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773932, 41.327301, 37.319469>,  <30.656752, 41.149197, 37.657921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773932, 41.327301, 37.319469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335402, -0.780857, -0.527036,
		-0.895370, 0.438186, -0.079411,
		0.292948, 0.445258, -0.846124,
		30.861816, 41.460880, 37.065632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155849, 41.011444, 37.220314>,  <30.656752, 41.149197, 37.657921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155849, 41.011444, 37.220314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447279, 41.120762, 36.969078>,  <30.622137, 41.186352, 36.818336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447279, 41.120762, 36.969078>,  <30.155849, 41.011444, 37.220314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447279, 41.120762, 36.969078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174094, -0.812964, -0.555681,
		-0.662474, 0.514201, -0.544725,
		0.728574, 0.273291, -0.628086,
		30.665852, 41.202751, 36.780651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891447, 40.965534, 36.537220>,  <30.155849, 41.011444, 37.220314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891447, 40.965534, 36.537220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287502, 40.963600, 36.481220>,  <30.525135, 40.962440, 36.447620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287502, 40.963600, 36.481220>,  <29.891447, 40.965534, 36.537220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287502, 40.963600, 36.481220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084640, -0.817007, -0.570382,
		-0.111619, 0.576607, -0.809361,
		0.990140, -0.004839, -0.139998,
		30.584545, 40.962147, 36.439220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030184, 40.823353, 35.836090>,  <29.891447, 40.965534, 36.537220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030184, 40.823353, 35.836090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394495, 40.742535, 35.980122>,  <30.613083, 40.694042, 36.066540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394495, 40.742535, 35.980122>,  <30.030184, 40.823353, 35.836090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394495, 40.742535, 35.980122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046896, -0.815823, -0.576397,
		0.410222, 0.541857, -0.733559,
		0.910779, -0.202050, 0.360080,
		30.667728, 40.681919, 36.088146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562006, 40.787964, 35.253639>,  <30.030184, 40.823353, 35.836090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562006, 40.787964, 35.253639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669827, 40.581539, 35.578854>,  <30.734518, 40.457684, 35.773983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669827, 40.581539, 35.578854>,  <30.562006, 40.787964, 35.253639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669827, 40.581539, 35.578854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108654, -0.822595, -0.558150,
		0.956837, 0.238789, -0.165659,
		0.269551, -0.516059, 0.813035,
		30.750692, 40.426720, 35.822765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162674, 40.466125, 35.018867>,  <30.562006, 40.787964, 35.253639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162674, 40.466125, 35.018867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998707, 40.256634, 35.317577>,  <30.900326, 40.130939, 35.496803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998707, 40.256634, 35.317577>,  <31.162674, 40.466125, 35.018867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998707, 40.256634, 35.317577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019802, -0.823638, -0.566770,
		0.911907, -0.217542, 0.347995,
		-0.409918, -0.523733, 0.746774,
		30.875731, 40.099514, 35.541611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474491, 39.829384, 35.132317>,  <31.162674, 40.466125, 35.018867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474491, 39.829384, 35.132317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119787, 39.773235, 35.308475>,  <30.906965, 39.739548, 35.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119787, 39.773235, 35.308475>,  <31.474491, 39.829384, 35.132317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119787, 39.773235, 35.308475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083321, -0.888625, -0.451003,
		0.454659, -0.436626, 0.776301,
		-0.886760, -0.140371, 0.440402,
		30.853760, 39.731125, 35.440598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527420, 39.114216, 35.444031>,  <31.474491, 39.829384, 35.132317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527420, 39.114216, 35.444031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130707, 39.162941, 35.459656>,  <30.892679, 39.192177, 35.469032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130707, 39.162941, 35.459656>,  <31.527420, 39.114216, 35.444031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130707, 39.162941, 35.459656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127895, -0.950110, -0.284487,
		0.002462, -0.287146, 0.957884,
		-0.991785, 0.121808, 0.039064,
		30.833172, 39.199482, 35.471375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283657, 38.613789, 35.912323>,  <31.527420, 39.114216, 35.444031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283657, 38.613789, 35.912323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967314, 38.710003, 35.687222>,  <30.777508, 38.767731, 35.552162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967314, 38.710003, 35.687222>,  <31.283657, 38.613789, 35.912323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967314, 38.710003, 35.687222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097213, -0.957226, -0.272523,
		-0.604229, -0.160821, 0.780413,
		-0.790858, 0.240532, -0.562750,
		30.730057, 38.782162, 35.518398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728609, 38.260490, 36.203205>,  <31.283657, 38.613789, 35.912323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728609, 38.260490, 36.203205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684732, 38.334892, 35.812641>,  <30.658407, 38.379532, 35.578304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684732, 38.334892, 35.812641>,  <30.728609, 38.260490, 36.203205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684732, 38.334892, 35.812641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340826, -0.929818, -0.138840,
		-0.933705, 0.317556, 0.165385,
		-0.109689, 0.186004, -0.976407,
		30.651825, 38.390694, 35.519718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124350, 37.978024, 36.082439>,  <30.728609, 38.260490, 36.203205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124350, 37.978024, 36.082439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276947, 38.000481, 35.713371>,  <30.368505, 38.013954, 35.491932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276947, 38.000481, 35.713371>,  <30.124350, 37.978024, 36.082439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276947, 38.000481, 35.713371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405911, -0.886596, -0.221775,
		-0.830482, 0.459126, -0.315441,
		0.381492, 0.056139, -0.922666,
		30.391394, 38.017323, 35.436573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788881, 37.457901, 35.759716>,  <30.124350, 37.978024, 36.082439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788881, 37.457901, 35.759716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032890, 37.567604, 35.462353>,  <30.179296, 37.633427, 35.283936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032890, 37.567604, 35.462353>,  <29.788881, 37.457901, 35.759716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032890, 37.567604, 35.462353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140340, -0.885964, -0.442010,
		-0.779858, 0.373966, -0.501968,
		0.610022, 0.274259, -0.743408,
		30.215897, 37.649883, 35.239330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472887, 37.235802, 35.138939>,  <29.788881, 37.457901, 35.759716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472887, 37.235802, 35.138939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853529, 37.278984, 35.023846>,  <30.081915, 37.304893, 34.954788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853529, 37.278984, 35.023846>,  <29.472887, 37.235802, 35.138939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853529, 37.278984, 35.023846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010046, -0.924847, -0.380206,
		-0.307157, 0.364697, -0.879006,
		0.951606, 0.107952, -0.287737,
		30.139011, 37.311371, 34.937523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429531, 36.854179, 34.490562>,  <29.472887, 37.235802, 35.138939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429531, 36.854179, 34.490562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822733, 36.883957, 34.557690>,  <30.058653, 36.901825, 34.597965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822733, 36.883957, 34.557690>,  <29.429531, 36.854179, 34.490562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822733, 36.883957, 34.557690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148918, -0.857926, -0.491718,
		0.107373, 0.508352, -0.854429,
		0.983003, 0.074442, 0.167821,
		30.117634, 36.906288, 34.608036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876366, 36.880180, 33.821613>,  <29.429531, 36.854179, 34.490562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876366, 36.880180, 33.821613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078577, 36.733696, 34.134109>,  <30.199903, 36.645805, 34.321606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078577, 36.733696, 34.134109>,  <29.876366, 36.880180, 33.821613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078577, 36.733696, 34.134109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263699, -0.796556, -0.544024,
		0.821524, 0.481032, -0.306115,
		0.505531, -0.366206, 0.781237,
		30.230236, 36.623833, 34.368481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432280, 36.553196, 33.510490>,  <29.876366, 36.880180, 33.821613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432280, 36.553196, 33.510490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414314, 36.381084, 33.871120>,  <30.403534, 36.277817, 34.087498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414314, 36.381084, 33.871120>,  <30.432280, 36.553196, 33.510490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414314, 36.381084, 33.871120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124347, -0.897878, -0.422318,
		0.991222, 0.093140, 0.093831,
		-0.044914, -0.430279, 0.901578,
		30.400841, 36.251999, 34.141594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993742, 35.997982, 33.509708>,  <30.432280, 36.553196, 33.510490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993742, 35.997982, 33.509708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741381, 35.915146, 33.808796>,  <30.589964, 35.865444, 33.988247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741381, 35.915146, 33.808796>,  <30.993742, 35.997982, 33.509708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741381, 35.915146, 33.808796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050290, -0.950778, -0.305766,
		0.774232, -0.230511, 0.589432,
		-0.630901, -0.207091, 0.747715,
		30.552111, 35.853020, 34.033112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124296, 35.412426, 33.882133>,  <30.993742, 35.997982, 33.509708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124296, 35.412426, 33.882133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727684, 35.420795, 33.933411>,  <30.489717, 35.425816, 33.964176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727684, 35.420795, 33.933411>,  <31.124296, 35.412426, 33.882133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727684, 35.420795, 33.933411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054563, -0.962730, -0.264903,
		0.117875, -0.269653, 0.955716,
		-0.991528, 0.020922, 0.128195,
		30.430225, 35.427071, 33.971870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648354, 35.906151, 34.021782>,  <31.124296, 35.412426, 33.882133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648354, 35.906151, 34.021782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894964, 36.214222, 34.087166>,  <32.042931, 36.399067, 34.126396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894964, 36.214222, 34.087166>,  <31.648354, 35.906151, 34.021782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894964, 36.214222, 34.087166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068433, -0.154406, 0.985635,
		0.784355, -0.618855, -0.042490,
		0.616526, 0.770180, 0.163459,
		32.079922, 36.445274, 34.136204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126286, 35.672367, 34.555977>,  <31.648354, 35.906151, 34.021782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126286, 35.672367, 34.555977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081223, 36.069157, 34.578949>,  <32.054184, 36.307228, 34.592731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081223, 36.069157, 34.578949>,  <32.126286, 35.672367, 34.555977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081223, 36.069157, 34.578949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050252, -0.063415, 0.996721,
		0.992362, 0.109406, 0.056993,
		-0.112662, 0.991972, 0.057433,
		32.047424, 36.366749, 34.596180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103043, 35.752441, 35.249073>,  <32.126286, 35.672367, 34.555977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103043, 35.752441, 35.249073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010483, 36.112541, 35.101559>,  <31.954947, 36.328602, 35.013050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010483, 36.112541, 35.101559>,  <32.103043, 35.752441, 35.249073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010483, 36.112541, 35.101559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145908, 0.342669, 0.928056,
		0.961855, 0.268560, 0.052060,
		-0.231400, 0.900252, -0.368783,
		31.941063, 36.382618, 34.990925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412399, 36.226337, 35.748421>,  <32.103043, 35.752441, 35.249073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412399, 36.226337, 35.748421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111977, 36.382095, 35.535145>,  <31.931723, 36.475548, 35.407181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111977, 36.382095, 35.535145>,  <32.412399, 36.226337, 35.748421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111977, 36.382095, 35.535145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402033, 0.370864, 0.837156,
		0.523721, 0.843110, -0.121992,
		-0.751057, 0.389391, -0.533187,
		31.886660, 36.498913, 35.375187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374844, 36.985367, 35.879890>,  <32.412399, 36.226337, 35.748421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374844, 36.985367, 35.879890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026222, 36.802654, 35.808620>,  <31.817049, 36.693027, 35.765858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026222, 36.802654, 35.808620>,  <32.374844, 36.985367, 35.879890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026222, 36.802654, 35.808620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337930, 0.296336, 0.893302,
		-0.355249, 0.838768, -0.412634,
		-0.871551, -0.456786, -0.178172,
		31.764757, 36.665619, 35.755169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756363, 37.462517, 35.641094>,  <32.374844, 36.985367, 35.879890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756363, 37.462517, 35.641094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647804, 37.141048, 35.852928>,  <31.582668, 36.948170, 35.980030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647804, 37.141048, 35.852928>,  <31.756363, 37.462517, 35.641094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647804, 37.141048, 35.852928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524345, 0.584875, 0.618857,
		-0.807097, -0.109729, -0.580133,
		-0.271398, -0.803667, 0.529587,
		31.566385, 36.899948, 36.011803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956299, 37.459625, 35.763042>,  <31.756363, 37.462517, 35.641094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956299, 37.459625, 35.763042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124641, 37.249374, 36.058773>,  <31.225647, 37.123226, 36.236210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124641, 37.249374, 36.058773>,  <30.956299, 37.459625, 35.763042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124641, 37.249374, 36.058773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527840, 0.520936, 0.670828,
		-0.737744, -0.672566, -0.058206,
		0.420855, -0.525623, 0.739325,
		31.250898, 37.091686, 36.280571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393402, 37.311642, 36.291840>,  <30.956299, 37.459625, 35.763042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393402, 37.311642, 36.291840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733988, 37.302361, 36.501400>,  <30.938339, 37.296791, 36.627136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733988, 37.302361, 36.501400>,  <30.393402, 37.311642, 36.291840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733988, 37.302361, 36.501400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447942, 0.487286, 0.749600,
		-0.272682, -0.872934, 0.404513,
		0.851465, -0.023204, 0.523898,
		30.989428, 37.295399, 36.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169405, 37.287720, 36.977329>,  <30.393402, 37.311642, 36.291840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169405, 37.287720, 36.977329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556479, 37.386028, 36.999897>,  <30.788723, 37.445011, 37.013439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556479, 37.386028, 36.999897>,  <30.169405, 37.287720, 36.977329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556479, 37.386028, 36.999897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193916, 0.582270, 0.789530,
		0.161190, -0.774958, 0.611112,
		0.967685, 0.245769, 0.056420,
		30.846785, 37.459759, 37.016823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314125, 37.228580, 37.710796>,  <30.169405, 37.287720, 36.977329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314125, 37.228580, 37.710796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610331, 37.459476, 37.573143>,  <30.788054, 37.598015, 37.490551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610331, 37.459476, 37.573143>,  <30.314125, 37.228580, 37.710796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610331, 37.459476, 37.573143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008386, 0.504098, 0.863606,
		0.671989, -0.642398, 0.368450,
		0.740514, 0.577244, -0.344135,
		30.832485, 37.632648, 37.469902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846830, 37.229172, 38.237453>,  <30.314125, 37.228580, 37.710796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846830, 37.229172, 38.237453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911072, 37.550201, 38.007641>,  <30.949617, 37.742817, 37.869755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911072, 37.550201, 38.007641>,  <30.846830, 37.229172, 38.237453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911072, 37.550201, 38.007641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213679, 0.540010, 0.814082,
		0.963611, -0.253511, -0.084764,
		0.160605, 0.802571, -0.574530,
		30.959253, 37.790974, 37.835281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488243, 37.480267, 38.438271>,  <30.846830, 37.229172, 38.237453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488243, 37.480267, 38.438271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257690, 37.773548, 38.293941>,  <31.119358, 37.949516, 38.207344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257690, 37.773548, 38.293941>,  <31.488243, 37.480267, 38.438271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257690, 37.773548, 38.293941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217381, 0.563209, 0.797208,
		0.787736, 0.381061, -0.484009,
		-0.576383, 0.733204, -0.360825,
		31.084776, 37.993511, 38.185696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796200, 38.107391, 38.712959>,  <31.488243, 37.480267, 38.438271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796200, 38.107391, 38.712959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448257, 38.252209, 38.578930>,  <31.239492, 38.339100, 38.498512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448257, 38.252209, 38.578930>,  <31.796200, 38.107391, 38.712959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448257, 38.252209, 38.578930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016787, 0.657123, 0.753596,
		0.493017, 0.661147, -0.565526,
		-0.869858, 0.362042, -0.335071,
		31.187300, 38.360821, 38.478409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827208, 38.784977, 38.940483>,  <31.796200, 38.107391, 38.712959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827208, 38.784977, 38.940483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442116, 38.738049, 38.843002>,  <31.211061, 38.709892, 38.784515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442116, 38.738049, 38.843002>,  <31.827208, 38.784977, 38.940483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442116, 38.738049, 38.843002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261061, 0.638644, 0.723866,
		0.070718, 0.760507, -0.645467,
		-0.962728, -0.117316, -0.243702,
		31.153297, 38.702854, 38.769890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510086, 39.419022, 38.950687>,  <31.827208, 38.784977, 38.940483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510086, 39.419022, 38.950687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201366, 39.172428, 39.013008>,  <31.016134, 39.024471, 39.050400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201366, 39.172428, 39.013008>,  <31.510086, 39.419022, 38.950687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201366, 39.172428, 39.013008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267667, 0.537241, 0.799829,
		-0.576784, 0.575605, -0.579655,
		-0.771800, -0.616483, 0.155801,
		30.969826, 38.987484, 39.059750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944515, 39.845238, 39.165726>,  <31.510086, 39.419022, 38.950687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944515, 39.845238, 39.165726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813715, 39.482540, 39.272224>,  <30.735235, 39.264923, 39.336124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813715, 39.482540, 39.272224>,  <30.944515, 39.845238, 39.165726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813715, 39.482540, 39.272224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413109, 0.390549, 0.822686,
		-0.849948, 0.159029, -0.502293,
		-0.327001, -0.906742, 0.266250,
		30.715614, 39.210518, 39.352100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134359, 39.820187, 39.186142>,  <30.944515, 39.845238, 39.165726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134359, 39.820187, 39.186142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299099, 39.544411, 39.424484>,  <30.397943, 39.378944, 39.567490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299099, 39.544411, 39.424484>,  <30.134359, 39.820187, 39.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299099, 39.544411, 39.424484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439887, 0.422240, 0.792599,
		-0.798048, -0.588542, -0.129378,
		0.411849, -0.689443, 0.595859,
		30.422653, 39.337578, 39.603241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760157, 39.890205, 39.770164>,  <30.134359, 39.820187, 39.186142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760157, 39.890205, 39.770164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047623, 39.645672, 39.902706>,  <30.220102, 39.498951, 39.982231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047623, 39.645672, 39.902706>,  <29.760157, 39.890205, 39.770164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047623, 39.645672, 39.902706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251913, 0.215255, 0.943507,
		-0.648118, -0.761539, 0.000695,
		0.718667, -0.611329, 0.331352,
		30.263224, 39.462273, 40.002113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481781, 39.386707, 40.268562>,  <29.760157, 39.890205, 39.770164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481781, 39.386707, 40.268562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867620, 39.381699, 40.373936>,  <30.099123, 39.378693, 40.437160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867620, 39.381699, 40.373936>,  <29.481781, 39.386707, 40.268562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867620, 39.381699, 40.373936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262828, 0.036756, 0.964142,
		-0.021756, -0.999246, 0.032164,
		0.964597, -0.012522, 0.263429,
		30.157000, 39.377941, 40.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537924, 38.842567, 40.727703>,  <29.481781, 39.386707, 40.268562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537924, 38.842567, 40.727703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821198, 39.120571, 40.777393>,  <29.991161, 39.287373, 40.807209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821198, 39.120571, 40.777393>,  <29.537924, 38.842567, 40.727703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821198, 39.120571, 40.777393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316544, 0.155281, 0.935782,
		0.631090, -0.702029, 0.329970,
		0.708184, 0.695013, 0.124227,
		30.033653, 39.329075, 40.814663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785683, 38.719246, 41.333694>,  <29.537924, 38.842567, 40.727703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785683, 38.719246, 41.333694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892548, 39.102623, 41.293663>,  <29.956667, 39.332649, 41.269642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892548, 39.102623, 41.293663>,  <29.785683, 38.719246, 41.333694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892548, 39.102623, 41.293663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321592, 0.186578, 0.928314,
		0.908407, -0.215823, 0.358073,
		0.267160, 0.958441, -0.100081,
		29.972696, 39.390156, 41.263638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044888, 38.895412, 41.916477>,  <29.785683, 38.719246, 41.333694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044888, 38.895412, 41.916477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972422, 39.269409, 41.794518>,  <29.928942, 39.493809, 41.721340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972422, 39.269409, 41.794518>,  <30.044888, 38.895412, 41.916477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972422, 39.269409, 41.794518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423900, 0.205511, 0.882085,
		0.887406, 0.289048, 0.359114,
		-0.181163, 0.934996, -0.304899,
		29.918074, 39.549908, 41.703049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386959, 39.295925, 42.423115>,  <30.044888, 38.895412, 41.916477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386959, 39.295925, 42.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162569, 39.581081, 42.254784>,  <30.027935, 39.752174, 42.153786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162569, 39.581081, 42.254784>,  <30.386959, 39.295925, 42.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162569, 39.581081, 42.254784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320308, 0.281838, 0.904417,
		0.763355, 0.642149, 0.070240,
		-0.560974, 0.712890, -0.420828,
		29.994276, 39.794949, 42.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474123, 39.863991, 42.844360>,  <30.386959, 39.295925, 42.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474123, 39.863991, 42.844360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134720, 39.930386, 42.643368>,  <29.931078, 39.970222, 42.522774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134720, 39.930386, 42.643368>,  <30.474123, 39.863991, 42.844360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134720, 39.930386, 42.643368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438664, 0.310485, 0.843311,
		0.295988, 0.935975, -0.190638,
		-0.848507, 0.165984, -0.502478,
		29.880167, 39.980179, 42.492622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247351, 40.589428, 42.973331>,  <30.474123, 39.863991, 42.844360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247351, 40.589428, 42.973331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937799, 40.355263, 42.876663>,  <29.752069, 40.214764, 42.818661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937799, 40.355263, 42.876663>,  <30.247351, 40.589428, 42.973331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937799, 40.355263, 42.876663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493377, 0.317985, 0.809608,
		-0.397107, 0.745772, -0.534911,
		-0.773877, -0.585413, -0.241673,
		29.705637, 40.179638, 42.804161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610336, 41.050995, 43.073914>,  <30.247351, 40.589428, 42.973331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610336, 41.050995, 43.073914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502462, 40.665817, 43.074280>,  <29.437738, 40.434711, 43.074497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502462, 40.665817, 43.074280>,  <29.610336, 41.050995, 43.073914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502462, 40.665817, 43.074280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446078, 0.125768, 0.886113,
		-0.853396, 0.238564, -0.463468,
		-0.269684, -0.962949, 0.000912,
		29.421556, 40.376934, 43.074554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896671, 41.046871, 43.405136>,  <29.610336, 41.050995, 43.073914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896671, 41.046871, 43.405136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046907, 40.677448, 43.436073>,  <29.137049, 40.455795, 43.454636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046907, 40.677448, 43.436073>,  <28.896671, 41.046871, 43.405136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046907, 40.677448, 43.436073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506969, -0.134879, 0.851346,
		-0.775831, -0.358968, -0.518872,
		0.375591, -0.923553, 0.077343,
		29.159584, 40.400383, 43.459274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375723, 40.677578, 43.690578>,  <28.896671, 41.046871, 43.405136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375723, 40.677578, 43.690578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676086, 40.430618, 43.784351>,  <28.856304, 40.282444, 43.840614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676086, 40.430618, 43.784351>,  <28.375723, 40.677578, 43.690578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676086, 40.430618, 43.784351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500039, -0.299660, 0.812505,
		-0.431390, -0.727340, -0.533741,
		0.750908, -0.617398, 0.234428,
		28.901360, 40.245399, 43.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110626, 39.955746, 43.836758>,  <28.375723, 40.677578, 43.690578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110626, 39.955746, 43.836758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457623, 40.007080, 44.029003>,  <28.665821, 40.037880, 44.144352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457623, 40.007080, 44.029003>,  <28.110626, 39.955746, 43.836758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457623, 40.007080, 44.029003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470378, -0.102776, 0.876460,
		0.161878, -0.986391, -0.028791,
		0.867491, 0.128337, 0.480613,
		28.717871, 40.045582, 44.173187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921783, 39.582806, 44.537373>,  <28.110626, 39.955746, 43.836758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921783, 39.582806, 44.537373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264254, 39.784065, 44.584366>,  <28.469736, 39.904819, 44.612560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264254, 39.784065, 44.584366>,  <27.921783, 39.582806, 44.537373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264254, 39.784065, 44.584366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063299, -0.123516, 0.990322,
		0.512789, -0.855328, -0.073903,
		0.856178, 0.503148, 0.117479,
		28.521107, 39.935009, 44.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236452, 39.197590, 45.145771>,  <27.921783, 39.582806, 44.537373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236452, 39.197590, 45.145771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397795, 39.562996, 45.124596>,  <28.494600, 39.782238, 45.111893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397795, 39.562996, 45.124596>,  <28.236452, 39.197590, 45.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397795, 39.562996, 45.124596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085789, 0.019842, 0.996116,
		0.911013, -0.406330, -0.070366,
		0.403355, 0.913511, -0.052935,
		28.518801, 39.837048, 45.108715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764656, 39.300156, 45.704021>,  <28.236452, 39.197590, 45.145771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764656, 39.300156, 45.704021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666239, 39.677753, 45.616070>,  <28.607189, 39.904312, 45.563297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666239, 39.677753, 45.616070>,  <28.764656, 39.300156, 45.704021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666239, 39.677753, 45.616070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063865, 0.210569, 0.975490,
		0.967153, 0.254053, 0.008479,
		-0.246041, 0.943990, -0.219878,
		28.592426, 39.960949, 45.550106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181423, 39.763184, 46.119041>,  <28.764656, 39.300156, 45.704021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181423, 39.763184, 46.119041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892801, 40.021427, 46.019001>,  <28.719627, 40.176373, 45.958977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892801, 40.021427, 46.019001>,  <29.181423, 39.763184, 46.119041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892801, 40.021427, 46.019001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039094, 0.322660, 0.945707,
		0.691253, 0.692157, -0.207577,
		-0.721554, 0.645608, -0.250098,
		28.676334, 40.215111, 45.943970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371555, 40.444386, 46.413776>,  <29.181423, 39.763184, 46.119041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371555, 40.444386, 46.413776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978209, 40.443970, 46.341122>,  <28.742201, 40.443722, 46.297527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978209, 40.443970, 46.341122>,  <29.371555, 40.444386, 46.413776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978209, 40.443970, 46.341122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175541, 0.262397, 0.948859,
		0.046673, 0.964959, -0.258215,
		-0.983365, -0.001041, -0.181637,
		28.683199, 40.443657, 46.286633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145264, 41.012352, 46.721878>,  <29.371555, 40.444386, 46.413776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145264, 41.012352, 46.721878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802769, 40.811417, 46.673695>,  <28.597271, 40.690853, 46.644783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802769, 40.811417, 46.673695>,  <29.145264, 41.012352, 46.721878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802769, 40.811417, 46.673695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462763, 0.642255, 0.611031,
		-0.229583, 0.578931, -0.782388,
		-0.856237, -0.502343, -0.120457,
		28.545898, 40.660713, 46.637558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581264, 41.518581, 46.603813>,  <29.145264, 41.012352, 46.721878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581264, 41.518581, 46.603813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433807, 41.174145, 46.743881>,  <28.345333, 40.967484, 46.827923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433807, 41.174145, 46.743881>,  <28.581264, 41.518581, 46.603813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433807, 41.174145, 46.743881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470876, 0.497779, 0.728349,
		-0.801485, 0.103612, -0.588971,
		-0.368643, -0.861093, 0.350174,
		28.323214, 40.915817, 46.848934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817427, 41.645004, 46.823055>,  <28.581264, 41.518581, 46.603813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817427, 41.645004, 46.823055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951702, 41.327000, 47.025154>,  <28.032267, 41.136196, 47.146412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951702, 41.327000, 47.025154>,  <27.817427, 41.645004, 46.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951702, 41.327000, 47.025154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425913, 0.350310, 0.834195,
		-0.840186, -0.495220, -0.221010,
		0.335688, -0.795009, 0.505246,
		28.052408, 41.088497, 47.176727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347612, 41.580051, 47.419735>,  <27.817427, 41.645004, 46.823055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347612, 41.580051, 47.419735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654488, 41.346699, 47.526386>,  <27.838614, 41.206688, 47.590378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654488, 41.346699, 47.526386>,  <27.347612, 41.580051, 47.419735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654488, 41.346699, 47.526386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194384, 0.184682, 0.963383,
		-0.611260, -0.790925, 0.028287,
		0.767188, -0.583379, 0.266631,
		27.884644, 41.171684, 47.606377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042625, 41.065083, 47.849606>,  <27.347612, 41.580051, 47.419735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042625, 41.065083, 47.849606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426523, 41.072868, 47.961681>,  <27.656862, 41.077541, 48.028927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426523, 41.072868, 47.961681>,  <27.042625, 41.065083, 47.849606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426523, 41.072868, 47.961681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280488, 0.014596, 0.959747,
		0.014596, -0.999704, 0.019469,
		-0.959747, -0.019469, -0.280192,
		27.714447, 41.078709, 48.045738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235899, 40.535633, 48.367100>,  <27.042625, 41.065083, 47.849606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235899, 40.535633, 48.367100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518816, 40.810535, 48.433327>,  <27.688566, 40.975479, 48.473061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518816, 40.810535, 48.433327>,  <27.235899, 40.535633, 48.367100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518816, 40.810535, 48.433327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069406, -0.165563, 0.983754,
		0.703505, -0.707293, -0.069402,
		0.707293, 0.687259, 0.165565,
		27.731005, 41.016712, 48.482998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560266, 40.249348, 48.794956>,  <27.235899, 40.535633, 48.367100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560266, 40.249348, 48.794956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658236, 40.634972, 48.836128>,  <27.717016, 40.866348, 48.860832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658236, 40.634972, 48.836128>,  <27.560266, 40.249348, 48.794956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658236, 40.634972, 48.836128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055133, -0.092146, 0.994218,
		0.967974, -0.249179, 0.030584,
		0.244920, 0.964064, 0.102933,
		27.731712, 40.924191, 48.867008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068771, 40.233730, 49.308811>,  <27.560266, 40.249348, 48.794956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068771, 40.233730, 49.308811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900108, 40.596115, 49.293652>,  <27.798910, 40.813545, 49.284557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900108, 40.596115, 49.293652>,  <28.068771, 40.233730, 49.308811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900108, 40.596115, 49.293652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022280, 0.031427, 0.999258,
		0.906481, 0.422190, 0.006933,
		-0.421658, 0.905963, -0.037894,
		27.773611, 40.867905, 49.282284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506222, 40.611214, 49.717812>,  <28.068771, 40.233730, 49.308811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506222, 40.611214, 49.717812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163429, 40.816639, 49.700691>,  <27.957754, 40.939896, 49.690418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163429, 40.816639, 49.700691>,  <28.506222, 40.611214, 49.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163429, 40.816639, 49.700691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009666, 0.099057, 0.995035,
		0.515253, 0.852315, -0.089854,
		-0.856984, 0.513563, -0.042801,
		27.906334, 40.970707, 49.687851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541039, 41.288578, 49.979885>,  <28.506222, 40.611214, 49.717812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541039, 41.288578, 49.979885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152733, 41.206608, 50.029881>,  <27.919748, 41.157425, 50.059879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152733, 41.206608, 50.029881>,  <28.541039, 41.288578, 49.979885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152733, 41.206608, 50.029881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099870, 0.128679, 0.986645,
		-0.218268, 0.970283, -0.104452,
		-0.970765, -0.204921, 0.124989,
		27.861504, 41.145130, 50.067379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483093, 41.736931, 50.551739>,  <28.541039, 41.288578, 49.979885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483093, 41.736931, 50.551739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165909, 41.493900, 50.533573>,  <27.975599, 41.348080, 50.522675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165909, 41.493900, 50.533573>,  <28.483093, 41.736931, 50.551739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165909, 41.493900, 50.533573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021173, -0.047007, 0.998670,
		-0.608906, 0.792866, 0.024410,
		-0.792959, -0.607580, -0.045410,
		27.928020, 41.311626, 50.519951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857740, 42.173054, 50.886074>,  <28.483093, 41.736931, 50.551739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857740, 42.173054, 50.886074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858095, 41.773918, 50.912373>,  <27.858309, 41.534439, 50.928154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858095, 41.773918, 50.912373>,  <27.857740, 42.173054, 50.886074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858095, 41.773918, 50.912373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094622, 0.065370, 0.993365,
		-0.995513, -0.007103, -0.094359,
		0.000887, -0.997836, 0.065748,
		27.858362, 41.474567, 50.932098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269943, 41.904293, 51.255405>,  <27.857740, 42.173054, 50.886074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269943, 41.904293, 51.255405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582233, 41.659260, 51.304733>,  <27.769608, 41.512241, 51.334328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582233, 41.659260, 51.304733>,  <27.269943, 41.904293, 51.255405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582233, 41.659260, 51.304733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150003, 0.007846, 0.988654,
		-0.606601, -0.790367, -0.085764,
		0.780727, -0.612583, 0.123316,
		27.816452, 41.475487, 51.341728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147905, 41.183792, 51.566502>,  <27.269943, 41.904293, 51.255405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147905, 41.183792, 51.566502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506485, 41.328686, 51.668613>,  <27.721632, 41.415623, 51.729881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506485, 41.328686, 51.668613>,  <27.147905, 41.183792, 51.566502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506485, 41.328686, 51.668613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273150, -0.001941, 0.961970,
		0.348954, -0.932085, 0.097205,
		0.896448, 0.362235, 0.255276,
		27.775419, 41.437355, 51.745197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335665, 40.839985, 52.209835>,  <27.147905, 41.183792, 51.566502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335665, 40.839985, 52.209835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557261, 41.172794, 52.198311>,  <27.690218, 41.372482, 52.191395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557261, 41.172794, 52.198311>,  <27.335665, 40.839985, 52.209835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557261, 41.172794, 52.198311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093420, 0.096517, 0.990937,
		0.827267, -0.546276, 0.131197,
		0.553988, 0.832026, -0.028812,
		27.723457, 41.422401, 52.189667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709965, 40.795856, 52.791313>,  <27.335665, 40.839985, 52.209835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709965, 40.795856, 52.791313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722002, 41.188927, 52.718166>,  <27.729225, 41.424770, 52.674278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722002, 41.188927, 52.718166>,  <27.709965, 40.795856, 52.791313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722002, 41.188927, 52.718166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216463, 0.185012, 0.958600,
		0.975827, 0.010736, 0.218281,
		0.030093, 0.982678, -0.182864,
		27.731030, 41.483730, 52.663307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154785, 41.029613, 53.203552>,  <27.709965, 40.795856, 52.791313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154785, 41.029613, 53.203552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888102, 41.314201, 53.114735>,  <27.728092, 41.484955, 53.061443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888102, 41.314201, 53.114735>,  <28.154785, 41.029613, 53.203552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888102, 41.314201, 53.114735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202473, 0.113826, 0.972650,
		0.717288, 0.693434, 0.068165,
		-0.666710, 0.711472, -0.222048,
		27.688089, 41.527641, 53.048119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516733, 41.485229, 52.650604>,  <28.154785, 41.029613, 53.203552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516733, 41.485229, 52.650604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475271, 41.839031, 52.832554>,  <28.450394, 42.051311, 52.941723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475271, 41.839031, 52.832554>,  <28.516733, 41.485229, 52.650604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475271, 41.839031, 52.832554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439163, -0.369640, 0.818842,
		0.892408, 0.284640, -0.350126,
		-0.103654, 0.884503, 0.454873,
		28.444176, 42.104382, 52.969017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199959, 41.515617, 52.908104>,  <28.516733, 41.485229, 52.650604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199959, 41.515617, 52.908104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443596, 41.212566, 53.001923>,  <29.589777, 41.030735, 53.058216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443596, 41.212566, 53.001923>,  <29.199959, 41.515617, 52.908104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443596, 41.212566, 53.001923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686687, -0.355807, 0.633926,
		-0.396825, -0.547180, -0.736970,
		0.609090, -0.757625, 0.234548,
		29.626324, 40.985279, 53.072289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853703, 40.920105, 52.931992>,  <29.199959, 41.515617, 52.908104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853703, 40.920105, 52.931992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168787, 40.879276, 53.175003>,  <29.357838, 40.854778, 53.320808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168787, 40.879276, 53.175003>,  <28.853703, 40.920105, 52.931992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168787, 40.879276, 53.175003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589108, -0.413235, 0.694398,
		0.180175, -0.904886, -0.385640,
		0.787712, -0.102070, 0.607530,
		29.405100, 40.848656, 53.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436682, 40.359940, 52.503647>,  <28.853703, 40.920105, 52.931992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436682, 40.359940, 52.503647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140541, 40.178947, 52.702499>,  <27.962856, 40.070351, 52.821812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140541, 40.178947, 52.702499>,  <28.436682, 40.359940, 52.503647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140541, 40.178947, 52.702499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055462, -0.778133, -0.625646,
		0.669926, -0.435627, 0.601189,
		-0.740353, -0.452479, 0.497131,
		27.918434, 40.043205, 52.851639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733162, 39.662098, 52.696922>,  <28.436682, 40.359940, 52.503647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733162, 39.662098, 52.696922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339058, 39.698212, 52.638798>,  <28.102596, 39.719879, 52.603924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339058, 39.698212, 52.638798>,  <28.733162, 39.662098, 52.696922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339058, 39.698212, 52.638798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001932, -0.843468, -0.537176,
		-0.171062, -0.529538, 0.830860,
		-0.985259, 0.090285, -0.145308,
		28.043480, 39.725296, 52.595203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416502, 38.975891, 52.892048>,  <28.733162, 39.662098, 52.696922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416502, 38.975891, 52.892048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231297, 39.210979, 52.626656>,  <28.120173, 39.352032, 52.467422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231297, 39.210979, 52.626656>,  <28.416502, 38.975891, 52.892048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231297, 39.210979, 52.626656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015494, -0.753803, -0.656918,
		-0.886216, -0.293881, 0.358127,
		-0.463013, 0.587720, -0.663478,
		28.092392, 39.387295, 52.427612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032679, 38.481567, 52.486671>,  <28.416502, 38.975891, 52.892048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032679, 38.481567, 52.486671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105980, 38.822102, 52.290039>,  <28.149961, 39.026421, 52.172058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105980, 38.822102, 52.290039>,  <28.032679, 38.481567, 52.486671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105980, 38.822102, 52.290039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166399, -0.519697, -0.837990,
		-0.968880, 0.071768, -0.236898,
		0.183256, 0.851331, -0.491582,
		28.160957, 39.077499, 52.142563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821955, 38.378284, 51.865158>,  <28.032679, 38.481567, 52.486671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821955, 38.378284, 51.865158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069090, 38.684757, 51.794453>,  <28.217371, 38.868641, 51.752029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069090, 38.684757, 51.794453>,  <27.821955, 38.378284, 51.865158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069090, 38.684757, 51.794453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223192, -0.386445, -0.894900,
		-0.753964, 0.513451, -0.409765,
		0.617839, 0.766178, -0.176767,
		28.254442, 38.914612, 51.741421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611910, 38.523590, 51.264145>,  <27.821955, 38.378284, 51.865158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611910, 38.523590, 51.264145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986670, 38.655910, 51.309383>,  <28.211525, 38.735302, 51.336529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986670, 38.655910, 51.309383>,  <27.611910, 38.523590, 51.264145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986670, 38.655910, 51.309383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274814, -0.496908, -0.823140,
		-0.216092, 0.802281, -0.556461,
		0.936900, 0.330797, 0.113100,
		28.267740, 38.755150, 51.343315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775101, 38.863201, 50.641907>,  <27.611910, 38.523590, 51.264145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775101, 38.863201, 50.641907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105640, 38.735371, 50.827385>,  <28.303965, 38.658672, 50.938671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105640, 38.735371, 50.827385>,  <27.775101, 38.863201, 50.641907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105640, 38.735371, 50.827385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405412, -0.233919, -0.883699,
		0.390877, 0.918233, -0.063740,
		0.826351, -0.319577, 0.463696,
		28.353546, 38.639496, 50.966496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316921, 39.020061, 50.099121>,  <27.775101, 38.863201, 50.641907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316921, 39.020061, 50.099121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534836, 38.817005, 50.366108>,  <28.665585, 38.695171, 50.526299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534836, 38.817005, 50.366108>,  <28.316921, 39.020061, 50.099121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534836, 38.817005, 50.366108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642717, -0.258486, -0.721180,
		0.538632, 0.821878, 0.185452,
		0.544785, -0.507644, 0.667463,
		28.698271, 38.664711, 50.566345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969082, 39.288918, 50.002968>,  <28.316921, 39.020061, 50.099121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969082, 39.288918, 50.002968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991636, 38.923870, 50.164925>,  <29.005169, 38.704842, 50.262100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991636, 38.923870, 50.164925>,  <28.969082, 39.288918, 50.002968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991636, 38.923870, 50.164925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488872, -0.328363, -0.808197,
		0.870532, 0.243512, 0.427641,
		0.056384, -0.912622, 0.404897,
		29.008551, 38.650082, 50.286392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666601, 39.136833, 49.850399>,  <28.969082, 39.288918, 50.002968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666601, 39.136833, 49.850399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509026, 38.776897, 49.925339>,  <29.414480, 38.560936, 49.970303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509026, 38.776897, 49.925339>,  <29.666601, 39.136833, 49.850399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509026, 38.776897, 49.925339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609771, -0.408372, -0.679273,
		0.687745, -0.153353, 0.709570,
		-0.393937, -0.899842, 0.187346,
		29.390844, 38.506947, 49.981541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206974, 38.574005, 49.802185>,  <29.666601, 39.136833, 49.850399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206974, 38.574005, 49.802185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864244, 38.372204, 49.759613>,  <29.658607, 38.251122, 49.734070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864244, 38.372204, 49.759613>,  <30.206974, 38.574005, 49.802185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864244, 38.372204, 49.759613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432998, -0.591980, -0.679759,
		0.279942, -0.628516, 0.725673,
		-0.856823, -0.504508, -0.106426,
		29.607197, 38.220852, 49.727684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457045, 37.901859, 49.706596>,  <30.206974, 38.574005, 49.802185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457045, 37.901859, 49.706596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078342, 37.892105, 49.578186>,  <29.851120, 37.886253, 49.501141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078342, 37.892105, 49.578186>,  <30.457045, 37.901859, 49.706596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078342, 37.892105, 49.578186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282140, -0.543130, -0.790827,
		-0.155075, -0.839295, 0.521091,
		-0.946757, -0.024383, -0.321024,
		29.794315, 37.884789, 49.481880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303364, 37.284245, 49.542454>,  <30.457045, 37.901859, 49.706596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303364, 37.284245, 49.542454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047068, 37.507648, 49.331734>,  <29.893290, 37.641693, 49.205303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047068, 37.507648, 49.331734>,  <30.303364, 37.284245, 49.542454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047068, 37.507648, 49.331734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240690, -0.505434, -0.828616,
		-0.729053, -0.657723, 0.189424,
		-0.640741, 0.558513, -0.526796,
		29.854845, 37.675201, 49.173695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935503, 36.799370, 49.109539>,  <30.303364, 37.284245, 49.542454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935503, 36.799370, 49.109539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858757, 37.152061, 48.937149>,  <29.812710, 37.363678, 48.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858757, 37.152061, 48.937149>,  <29.935503, 36.799370, 49.109539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858757, 37.152061, 48.937149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167893, -0.403171, -0.899591,
		-0.966954, -0.244956, -0.070683,
		-0.191863, 0.881731, -0.430975,
		29.801199, 37.416580, 48.807858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508642, 36.665176, 48.388115>,  <29.935503, 36.799370, 49.109539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508642, 36.665176, 48.388115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641287, 37.041656, 48.362251>,  <29.720875, 37.267544, 48.346733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641287, 37.041656, 48.362251>,  <29.508642, 36.665176, 48.388115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641287, 37.041656, 48.362251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077418, -0.095455, -0.992419,
		-0.940233, 0.324094, -0.104520,
		0.331614, 0.941197, -0.064660,
		29.740770, 37.324017, 48.342854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079231, 37.120174, 47.862366>,  <29.508642, 36.665176, 48.388115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079231, 37.120174, 47.862366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437222, 37.295689, 47.894588>,  <29.652016, 37.400997, 47.913921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437222, 37.295689, 47.894588>,  <29.079231, 37.120174, 47.862366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437222, 37.295689, 47.894588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076181, 0.027608, -0.996712,
		-0.439563, 0.898169, -0.008718,
		0.894975, 0.438782, 0.080559,
		29.705713, 37.427322, 47.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112665, 37.644417, 47.371449>,  <29.079231, 37.120174, 47.862366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112665, 37.644417, 47.371449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492916, 37.554977, 47.457527>,  <29.721067, 37.501312, 47.509174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492916, 37.554977, 47.457527>,  <29.112665, 37.644417, 47.371449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492916, 37.554977, 47.457527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234887, 0.065217, -0.969832,
		0.202821, 0.972496, 0.114518,
		0.950627, -0.223602, 0.215199,
		29.778105, 37.487896, 47.522087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451956, 38.208801, 47.063049>,  <29.112665, 37.644417, 47.371449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451956, 38.208801, 47.063049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729176, 37.926464, 47.121658>,  <29.895508, 37.757061, 47.156826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729176, 37.926464, 47.121658>,  <29.451956, 38.208801, 47.063049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729176, 37.926464, 47.121658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259389, 0.054520, -0.964233,
		0.672607, 0.706268, 0.220873,
		0.693049, -0.705842, 0.146527,
		29.937090, 37.714710, 47.165615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077513, 38.409409, 46.835903>,  <29.451956, 38.208801, 47.063049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077513, 38.409409, 46.835903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134670, 38.014381, 46.809727>,  <30.168964, 37.777363, 46.794022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134670, 38.014381, 46.809727>,  <30.077513, 38.409409, 46.835903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134670, 38.014381, 46.809727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301782, 0.106443, -0.947416,
		0.942608, 0.115630, 0.313242,
		0.142892, -0.987573, -0.065438,
		30.177538, 37.718109, 46.790096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722240, 38.250015, 46.493706>,  <30.077513, 38.409409, 46.835903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722240, 38.250015, 46.493706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506006, 37.917507, 46.441921>,  <30.376266, 37.718002, 46.410851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506006, 37.917507, 46.441921>,  <30.722240, 38.250015, 46.493706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506006, 37.917507, 46.441921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094580, 0.092861, -0.991177,
		0.835956, -0.548060, 0.028422,
		-0.540585, -0.831268, -0.129463,
		30.343830, 37.668125, 46.403084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095764, 37.898285, 45.990704>,  <30.722240, 38.250015, 46.493706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095764, 37.898285, 45.990704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717442, 37.770229, 45.968925>,  <30.490448, 37.693398, 45.955856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717442, 37.770229, 45.968925>,  <31.095764, 37.898285, 45.990704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717442, 37.770229, 45.968925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059653, -0.006470, -0.998198,
		0.319209, -0.947349, 0.025216,
		-0.945805, -0.320138, -0.054447,
		30.433701, 37.674187, 45.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042046, 37.676270, 45.250004>,  <31.095764, 37.898285, 45.990704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042046, 37.676270, 45.250004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657625, 37.677410, 45.360546>,  <30.426973, 37.678093, 45.426872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657625, 37.677410, 45.360546>,  <31.042046, 37.676270, 45.250004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657625, 37.677410, 45.360546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269400, -0.232800, -0.934467,
		0.061675, -0.972521, 0.224499,
		-0.961051, 0.002847, 0.276355,
		30.369310, 37.678265, 45.443451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760397, 37.055519, 44.979523>,  <31.042046, 37.676270, 45.250004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760397, 37.055519, 44.979523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464060, 37.315292, 45.048096>,  <30.286257, 37.471157, 45.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464060, 37.315292, 45.048096>,  <30.760397, 37.055519, 44.979523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464060, 37.315292, 45.048096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393652, -0.213003, -0.894241,
		-0.544233, -0.729978, 0.413452,
		-0.740843, 0.649433, 0.171434,
		30.241806, 37.510120, 45.099525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216114, 36.783188, 44.671844>,  <30.760397, 37.055519, 44.979523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216114, 36.783188, 44.671844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092714, 37.162575, 44.700817>,  <30.018675, 37.390205, 44.718201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092714, 37.162575, 44.700817>,  <30.216114, 36.783188, 44.671844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092714, 37.162575, 44.700817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274379, -0.015817, -0.961492,
		-0.910793, -0.316493, 0.265118,
		-0.308498, 0.948463, 0.072433,
		30.000164, 37.447113, 44.722546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489384, 36.775173, 44.389252>,  <30.216114, 36.783188, 44.671844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489384, 36.775173, 44.389252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660664, 37.135891, 44.365898>,  <29.763432, 37.352322, 44.351887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660664, 37.135891, 44.365898>,  <29.489384, 36.775173, 44.389252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660664, 37.135891, 44.365898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313578, 0.087680, -0.945506,
		-0.847534, 0.423173, 0.320328,
		0.428199, 0.901796, -0.058386,
		29.789124, 37.406429, 44.348381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030659, 37.026722, 44.043095>,  <29.489384, 36.775173, 44.389252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030659, 37.026722, 44.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349743, 37.263935, 43.999325>,  <29.541193, 37.406261, 43.973064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349743, 37.263935, 43.999325>,  <29.030659, 37.026722, 44.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349743, 37.263935, 43.999325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181631, 0.063243, -0.981331,
		-0.575041, 0.802691, 0.158163,
		0.797708, 0.593032, -0.109426,
		29.589056, 37.441845, 43.966496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800926, 37.390137, 43.465805>,  <29.030659, 37.026722, 44.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800926, 37.390137, 43.465805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194321, 37.456615, 43.494457>,  <29.430357, 37.496502, 43.511646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194321, 37.456615, 43.494457>,  <28.800926, 37.390137, 43.465805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194321, 37.456615, 43.494457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066297, 0.037406, -0.997099,
		-0.168399, 0.985382, 0.025770,
		0.983487, 0.166202, 0.071627,
		29.489367, 37.506477, 43.515945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054953, 38.017620, 43.060875>,  <28.800926, 37.390137, 43.465805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054953, 38.017620, 43.060875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369202, 37.775860, 43.113781>,  <29.557751, 37.630802, 43.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369202, 37.775860, 43.113781>,  <29.054953, 38.017620, 43.060875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369202, 37.775860, 43.113781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152602, -0.017883, -0.988126,
		0.599589, 0.796480, 0.078183,
		0.785625, -0.604400, 0.132267,
		29.604889, 37.594540, 43.153461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476341, 38.198593, 42.448246>,  <29.054953, 38.017620, 43.060875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476341, 38.198593, 42.448246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614357, 37.864033, 42.618599>,  <29.697166, 37.663296, 42.720810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614357, 37.864033, 42.618599>,  <29.476341, 38.198593, 42.448246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614357, 37.864033, 42.618599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388649, -0.285701, -0.875972,
		0.854342, 0.467763, 0.226490,
		0.345039, -0.836405, 0.425882,
		29.717869, 37.613110, 42.746365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243000, 38.108063, 42.286869>,  <29.476341, 38.198593, 42.448246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243000, 38.108063, 42.286869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100283, 37.742561, 42.364586>,  <30.014652, 37.523262, 42.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100283, 37.742561, 42.364586>,  <30.243000, 38.108063, 42.286869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100283, 37.742561, 42.364586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429521, -0.345153, -0.834495,
		0.829584, -0.214292, 0.515626,
		-0.356795, -0.913755, 0.194291,
		29.993244, 37.468433, 42.422874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783926, 37.734802, 42.073402>,  <30.243000, 38.108063, 42.286869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783926, 37.734802, 42.073402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473949, 37.485252, 42.113892>,  <30.287964, 37.335522, 42.138184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473949, 37.485252, 42.113892>,  <30.783926, 37.734802, 42.073402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473949, 37.485252, 42.113892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366787, -0.574339, -0.731849,
		0.514718, -0.530013, 0.673908,
		-0.774940, -0.623876, 0.101221,
		30.241467, 37.298088, 42.144257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216576, 37.174007, 42.094105>,  <30.783926, 37.734802, 42.073402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216576, 37.174007, 42.094105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836649, 37.080551, 42.010910>,  <30.608692, 37.024479, 41.960995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836649, 37.080551, 42.010910>,  <31.216576, 37.174007, 42.094105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836649, 37.080551, 42.010910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310173, -0.617453, -0.722872,
		0.040469, -0.751109, 0.658936,
		-0.949818, -0.233638, -0.207986,
		30.551702, 37.010460, 41.948513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166574, 36.449135, 42.035038>,  <31.216576, 37.174007, 42.094105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166574, 36.449135, 42.035038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848860, 36.596081, 41.841480>,  <30.658232, 36.684250, 41.725346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848860, 36.596081, 41.841480>,  <31.166574, 36.449135, 42.035038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848860, 36.596081, 41.841480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118702, -0.687288, -0.716620,
		-0.595833, -0.626641, 0.502298,
		-0.794287, 0.367362, -0.483893,
		30.610575, 36.706291, 41.696312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897598, 35.830120, 41.689556>,  <31.166574, 36.449135, 42.035038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897598, 35.830120, 41.689556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703566, 36.112675, 41.483364>,  <30.587145, 36.282207, 41.359650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703566, 36.112675, 41.483364>,  <30.897598, 35.830120, 41.689556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703566, 36.112675, 41.483364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176686, -0.498146, -0.848901,
		-0.856433, -0.502865, 0.116834,
		-0.485083, 0.706384, -0.515478,
		30.558041, 36.324589, 41.328720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239466, 35.664330, 41.389603>,  <30.897598, 35.830120, 41.689556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239466, 35.664330, 41.389603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345388, 35.973366, 41.158783>,  <30.408941, 36.158787, 41.020290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345388, 35.973366, 41.158783>,  <30.239466, 35.664330, 41.389603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345388, 35.973366, 41.158783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097601, -0.616809, -0.781039,
		-0.959350, 0.150504, -0.238740,
		0.264806, 0.772590, -0.577046,
		30.424829, 36.205143, 40.985668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763359, 35.714272, 40.804100>,  <30.239466, 35.664330, 41.389603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763359, 35.714272, 40.804100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082283, 35.919117, 40.676327>,  <30.273638, 36.042023, 40.599663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082283, 35.919117, 40.676327>,  <29.763359, 35.714272, 40.804100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082283, 35.919117, 40.676327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095506, -0.629614, -0.771016,
		-0.595964, 0.584233, -0.550908,
		0.797312, 0.512112, -0.319429,
		30.321476, 36.072750, 40.580498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587294, 35.546925, 40.195843>,  <29.763359, 35.714272, 40.804100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587294, 35.546925, 40.195843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953955, 35.706413, 40.184753>,  <30.173952, 35.802105, 40.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953955, 35.706413, 40.184753>,  <29.587294, 35.546925, 40.195843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953955, 35.706413, 40.184753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203071, -0.524358, -0.826928,
		-0.344248, 0.752377, -0.561624,
		0.916654, 0.398718, -0.027723,
		30.228951, 35.826027, 40.176437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685638, 35.866165, 39.545681>,  <29.587294, 35.546925, 40.195843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685638, 35.866165, 39.545681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056814, 35.795448, 39.676937>,  <30.279520, 35.753017, 39.755692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056814, 35.795448, 39.676937>,  <29.685638, 35.866165, 39.545681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056814, 35.795448, 39.676937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285609, -0.228395, -0.930732,
		0.239491, 0.957382, -0.161444,
		0.927939, -0.176792, 0.328136,
		30.335196, 35.742413, 39.775379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224258, 36.242802, 39.083729>,  <29.685638, 35.866165, 39.545681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224258, 36.242802, 39.083729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414005, 35.939575, 39.262753>,  <30.527853, 35.757637, 39.370167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414005, 35.939575, 39.262753>,  <30.224258, 36.242802, 39.083729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414005, 35.939575, 39.262753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421528, -0.250732, -0.871463,
		0.772846, 0.602051, 0.200608,
		0.474366, -0.758069, 0.447559,
		30.556314, 35.712154, 39.397018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889587, 36.226494, 38.770195>,  <30.224258, 36.242802, 39.083729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889587, 36.226494, 38.770195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880054, 35.875576, 38.961937>,  <30.874334, 35.665024, 39.076981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880054, 35.875576, 38.961937>,  <30.889587, 36.226494, 38.770195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880054, 35.875576, 38.961937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653478, -0.376543, -0.656644,
		0.756570, 0.297598, 0.582269,
		-0.023833, -0.877297, 0.479355,
		30.872904, 35.612389, 39.105743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585449, 36.121204, 38.794289>,  <30.889587, 36.226494, 38.770195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585449, 36.121204, 38.794289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400187, 35.772213, 38.856613>,  <31.289030, 35.562820, 38.894009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400187, 35.772213, 38.856613>,  <31.585449, 36.121204, 38.794289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400187, 35.772213, 38.856613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684236, -0.463738, -0.562821,
		0.563300, -0.154065, 0.811762,
		-0.463156, -0.872474, 0.155807,
		31.261240, 35.510471, 38.903355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143356, 35.689163, 38.683659>,  <31.585449, 36.121204, 38.794289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143356, 35.689163, 38.683659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822100, 35.452805, 38.653160>,  <31.629347, 35.310989, 38.634861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822100, 35.452805, 38.653160>,  <32.143356, 35.689163, 38.683659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822100, 35.452805, 38.653160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542658, -0.672666, -0.503034,
		0.245955, -0.445379, 0.860897,
		-0.803137, -0.590896, -0.076243,
		31.581158, 35.275536, 38.630287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406979, 35.011719, 38.886086>,  <32.143356, 35.689163, 38.683659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406979, 35.011719, 38.886086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098564, 34.990490, 38.632256>,  <31.913515, 34.977753, 38.479958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098564, 34.990490, 38.632256>,  <32.406979, 35.011719, 38.886086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098564, 34.990490, 38.632256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503999, -0.659945, -0.557187,
		-0.389209, -0.749437, 0.535593,
		-0.771039, -0.053076, -0.634573,
		31.867252, 34.974567, 38.441883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271023, 34.390018, 38.608456>,  <32.406979, 35.011719, 38.886086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271023, 34.390018, 38.608456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078838, 34.598484, 38.326305>,  <31.963530, 34.723564, 38.157017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078838, 34.598484, 38.326305>,  <32.271023, 34.390018, 38.608456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078838, 34.598484, 38.326305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409569, -0.577859, -0.705926,
		-0.775509, -0.628065, 0.064184,
		-0.480457, 0.521165, -0.705371,
		31.934702, 34.754833, 38.114693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947079, 34.158344, 38.871555>,  <32.271023, 34.390018, 38.608456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947079, 34.158344, 38.871555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103886, 34.520958, 38.808926>,  <33.197971, 34.738525, 38.771347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103886, 34.520958, 38.808926>,  <32.947079, 34.158344, 38.871555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103886, 34.520958, 38.808926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097417, 0.210147, 0.972804,
		0.914786, -0.366102, 0.170693,
		0.392017, 0.906536, -0.156575,
		33.221489, 34.792919, 38.761951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523594, 34.191517, 39.346348>,  <32.947079, 34.158344, 38.871555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523594, 34.191517, 39.346348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409477, 34.558395, 39.235088>,  <33.341007, 34.778522, 39.168335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409477, 34.558395, 39.235088>,  <33.523594, 34.191517, 39.346348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409477, 34.558395, 39.235088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105519, 0.318500, 0.942032,
		0.952614, 0.239405, -0.187647,
		-0.285292, 0.917193, -0.278146,
		33.323891, 34.833553, 39.151646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057430, 34.643353, 39.530743>,  <33.523594, 34.191517, 39.346348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057430, 34.643353, 39.530743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723480, 34.862888, 39.513977>,  <33.523109, 34.994610, 39.503918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723480, 34.862888, 39.513977>,  <34.057430, 34.643353, 39.530743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723480, 34.862888, 39.513977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192738, 0.362806, 0.911714,
		0.515590, 0.753091, -0.408681,
		-0.834876, 0.548839, -0.041910,
		33.473019, 35.027538, 39.501404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269718, 35.271458, 39.692955>,  <34.057430, 34.643353, 39.530743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269718, 35.271458, 39.692955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877964, 35.259834, 39.772923>,  <33.642914, 35.252861, 39.820904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877964, 35.259834, 39.772923>,  <34.269718, 35.271458, 39.692955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877964, 35.259834, 39.772923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177911, 0.344761, 0.921676,
		-0.095702, 0.938241, -0.332484,
		-0.979382, -0.029054, 0.199918,
		33.584148, 35.251118, 39.832897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184097, 35.952579, 40.033314>,  <34.269718, 35.271458, 39.692955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184097, 35.952579, 40.033314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860630, 35.729717, 40.108818>,  <33.666550, 35.596001, 40.154121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860630, 35.729717, 40.108818>,  <34.184097, 35.952579, 40.033314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860630, 35.729717, 40.108818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016148, 0.299738, 0.953885,
		-0.588042, 0.774426, -0.233392,
		-0.808669, -0.557155, 0.188764,
		33.618031, 35.562572, 40.165447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824951, 36.389889, 40.517979>,  <34.184097, 35.952579, 40.033314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824951, 36.389889, 40.517979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662479, 36.026287, 40.555340>,  <33.564999, 35.808125, 40.577755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662479, 36.026287, 40.555340>,  <33.824951, 36.389889, 40.517979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662479, 36.026287, 40.555340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072605, 0.133992, 0.988319,
		-0.910905, 0.394652, -0.120423,
		-0.406178, -0.909008, 0.093400,
		33.540627, 35.753586, 40.583359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240959, 36.478828, 40.887909>,  <33.824951, 36.389889, 40.517979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240959, 36.478828, 40.887909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388367, 36.110798, 40.941048>,  <33.476810, 35.889980, 40.972931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388367, 36.110798, 40.941048>,  <33.240959, 36.478828, 40.887909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388367, 36.110798, 40.941048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012341, 0.138053, 0.990348,
		-0.929538, -0.366602, 0.039520,
		0.368519, -0.920078, 0.132850,
		33.498924, 35.834774, 40.980904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870472, 36.149097, 41.418701>,  <33.240959, 36.478828, 40.887909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870472, 36.149097, 41.418701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197819, 35.921364, 41.387383>,  <33.394226, 35.784721, 41.368591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197819, 35.921364, 41.387383>,  <32.870472, 36.149097, 41.418701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197819, 35.921364, 41.387383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154656, 0.086965, 0.984134,
		-0.553496, -0.817491, 0.159221,
		0.818367, -0.569338, -0.078295,
		33.443329, 35.750561, 41.363895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680511, 35.653839, 41.939037>,  <32.870472, 36.149097, 41.418701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680511, 35.653839, 41.939037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074814, 35.617771, 41.882263>,  <33.311398, 35.596130, 41.848198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074814, 35.617771, 41.882263>,  <32.680511, 35.653839, 41.939037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074814, 35.617771, 41.882263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139284, -0.035126, 0.989629,
		-0.094223, -0.995306, -0.022066,
		0.985760, -0.090173, -0.141940,
		33.370541, 35.590721, 41.839680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866760, 35.108139, 42.289352>,  <32.680511, 35.653839, 41.939037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866760, 35.108139, 42.289352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222389, 35.284378, 42.239674>,  <33.435768, 35.390121, 42.209866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222389, 35.284378, 42.239674>,  <32.866760, 35.108139, 42.289352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222389, 35.284378, 42.239674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224093, -0.182335, 0.957359,
		0.399168, -0.878991, -0.260844,
		0.889071, 0.440601, -0.124193,
		33.489109, 35.416557, 42.202415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464783, 34.616138, 42.499134>,  <32.866760, 35.108139, 42.289352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464783, 34.616138, 42.499134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558529, 35.000786, 42.556202>,  <33.614777, 35.231575, 42.590443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558529, 35.000786, 42.556202>,  <33.464783, 34.616138, 42.499134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558529, 35.000786, 42.556202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147825, -0.180300, 0.972440,
		0.960843, -0.206819, -0.184408,
		0.234368, 0.961623, 0.142667,
		33.628838, 35.289272, 42.599003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124821, 34.691887, 42.840202>,  <33.464783, 34.616138, 42.499134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124821, 34.691887, 42.840202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882832, 34.994282, 42.940201>,  <33.737640, 35.175716, 43.000198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882832, 34.994282, 42.940201>,  <34.124821, 34.691887, 42.840202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882832, 34.994282, 42.940201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132904, -0.213691, 0.967819,
		0.785078, 0.618727, 0.028803,
		-0.604971, 0.755985, 0.249995,
		33.701340, 35.221077, 43.015198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957928, 34.647800, 43.574203>,  <34.124821, 34.691887, 42.840202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957928, 34.647800, 43.574203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874123, 35.033379, 43.508572>,  <33.823841, 35.264725, 43.469193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874123, 35.033379, 43.508572>,  <33.957928, 34.647800, 43.574203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874123, 35.033379, 43.508572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152989, 0.133426, 0.979179,
		0.965764, 0.230250, 0.119518,
		-0.209509, 0.963941, -0.164083,
		33.811272, 35.322559, 43.459347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422146, 35.056053, 43.963135>,  <33.957928, 34.647800, 43.574203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422146, 35.056053, 43.963135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093948, 35.276859, 43.903717>,  <33.897030, 35.409344, 43.868065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093948, 35.276859, 43.903717>,  <34.422146, 35.056053, 43.963135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093948, 35.276859, 43.903717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073901, 0.155247, 0.985108,
		0.566853, 0.819256, -0.086585,
		-0.820498, 0.552012, -0.148546,
		33.847797, 35.442463, 43.859154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466221, 35.568127, 44.421520>,  <34.422146, 35.056053, 43.963135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466221, 35.568127, 44.421520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082016, 35.590687, 44.312538>,  <33.851494, 35.604221, 44.247150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082016, 35.590687, 44.312538>,  <34.466221, 35.568127, 44.421520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082016, 35.590687, 44.312538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264048, 0.123898, 0.956519,
		0.087702, 0.990691, -0.104114,
		-0.960514, 0.056398, -0.272456,
		33.793861, 35.607605, 44.230801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148216, 36.070412, 44.824745>,  <34.466221, 35.568127, 44.421520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148216, 36.070412, 44.824745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801003, 35.907108, 44.711720>,  <33.592674, 35.809124, 44.643906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801003, 35.907108, 44.711720>,  <34.148216, 36.070412, 44.824745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801003, 35.907108, 44.711720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423494, 0.311712, 0.850582,
		-0.259182, 0.857996, -0.443472,
		-0.868031, -0.408263, -0.282566,
		33.540592, 35.784630, 44.626949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689217, 36.563675, 44.846008>,  <34.148216, 36.070412, 44.824745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689217, 36.563675, 44.846008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469757, 36.229317, 44.839596>,  <33.338081, 36.028702, 44.835747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469757, 36.229317, 44.839596>,  <33.689217, 36.563675, 44.846008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469757, 36.229317, 44.839596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447177, 0.277200, 0.850408,
		-0.706409, 0.473747, -0.525880,
		-0.548652, -0.835897, -0.016032,
		33.305161, 35.978546, 44.834785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074139, 36.780079, 45.049789>,  <33.689217, 36.563675, 44.846008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074139, 36.780079, 45.049789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094528, 36.391075, 45.140678>,  <33.106762, 36.157673, 45.195213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094528, 36.391075, 45.140678>,  <33.074139, 36.780079, 45.049789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094528, 36.391075, 45.140678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372112, 0.192643, 0.907976,
		-0.926787, -0.130838, -0.352062,
		0.050975, -0.972507, 0.227225,
		33.109821, 36.099323, 45.208847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466778, 36.508270, 45.389130>,  <33.074139, 36.780079, 45.049789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466778, 36.508270, 45.389130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723824, 36.233746, 45.525375>,  <32.878052, 36.069031, 45.607124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723824, 36.233746, 45.525375>,  <32.466778, 36.508270, 45.389130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723824, 36.233746, 45.525375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383189, 0.097087, 0.918553,
		-0.663487, -0.720795, -0.200600,
		0.642613, -0.686316, 0.340617,
		32.916607, 36.027851, 45.627560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132332, 36.092228, 45.873924>,  <32.466778, 36.508270, 45.389130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132332, 36.092228, 45.873924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502491, 35.985153, 45.981239>,  <32.724586, 35.920906, 46.045628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502491, 35.985153, 45.981239>,  <32.132332, 36.092228, 45.873924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502491, 35.985153, 45.981239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274408, 0.015015, 0.961496,
		-0.261412, -0.963388, -0.059561,
		0.925399, -0.267690, 0.268286,
		32.780109, 35.904846, 46.061726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061577, 35.580673, 46.421974>,  <32.132332, 36.092228, 45.873924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061577, 35.580673, 46.421974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409252, 35.775925, 46.453564>,  <32.617859, 35.893078, 46.472519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409252, 35.775925, 46.453564>,  <32.061577, 35.580673, 46.421974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409252, 35.775925, 46.453564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212405, 0.224343, 0.951081,
		0.446535, -0.843444, 0.298678,
		0.869190, 0.488131, 0.078975,
		32.670010, 35.922363, 46.477257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202320, 35.439716, 47.090927>,  <32.061577, 35.580673, 46.421974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202320, 35.439716, 47.090927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395111, 35.762295, 46.953903>,  <32.510784, 35.955841, 46.871689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395111, 35.762295, 46.953903>,  <32.202320, 35.439716, 47.090927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395111, 35.762295, 46.953903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200648, 0.482164, 0.852794,
		0.852903, -0.342290, 0.394202,
		0.481973, 0.806446, -0.342559,
		32.539703, 36.004227, 46.851135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577209, 35.642727, 47.703804>,  <32.202320, 35.439716, 47.090927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577209, 35.642727, 47.703804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564884, 35.946690, 47.444080>,  <32.557491, 36.129066, 47.288246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564884, 35.946690, 47.444080>,  <32.577209, 35.642727, 47.703804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564884, 35.946690, 47.444080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256357, 0.621876, 0.739967,
		0.966091, 0.189253, 0.175646,
		-0.030811, 0.759903, -0.649306,
		32.555641, 36.174660, 47.249290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956684, 36.138920, 47.980465>,  <32.577209, 35.642727, 47.703804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956684, 36.138920, 47.980465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705242, 36.301914, 47.715496>,  <32.554375, 36.399712, 47.556515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705242, 36.301914, 47.715496>,  <32.956684, 36.138920, 47.980465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705242, 36.301914, 47.715496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267526, 0.686477, 0.676150,
		0.730262, 0.602249, -0.322511,
		-0.628607, 0.407487, -0.662426,
		32.516659, 36.424160, 47.516769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202934, 36.833794, 48.009449>,  <32.956684, 36.138920, 47.980465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202934, 36.833794, 48.009449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821941, 36.842346, 47.887913>,  <32.593346, 36.847477, 47.814991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821941, 36.842346, 47.887913>,  <33.202934, 36.833794, 48.009449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821941, 36.842346, 47.887913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180314, 0.764378, 0.619042,
		0.245483, 0.644414, -0.724202,
		-0.952484, 0.021381, -0.303838,
		32.536198, 36.848759, 47.796761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005733, 37.527519, 47.837395>,  <33.202934, 36.833794, 48.009449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005733, 37.527519, 47.837395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666286, 37.332047, 47.918430>,  <32.462620, 37.214764, 47.967052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666286, 37.332047, 47.918430>,  <33.005733, 37.527519, 47.837395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666286, 37.332047, 47.918430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248326, 0.706125, 0.663115,
		-0.467103, 0.512423, -0.720581,
		-0.848616, -0.488683, 0.202585,
		32.411701, 37.185440, 47.979206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476032, 38.038723, 47.932934>,  <33.005733, 37.527519, 47.837395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476032, 38.038723, 47.932934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294922, 37.731606, 48.114262>,  <32.186256, 37.547337, 48.223057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294922, 37.731606, 48.114262>,  <32.476032, 38.038723, 47.932934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294922, 37.731606, 48.114262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244405, 0.595815, 0.765030,
		-0.857475, 0.235593, -0.457421,
		-0.452773, -0.767790, 0.453316,
		32.159088, 37.501270, 48.250256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885941, 38.429180, 48.238556>,  <32.476032, 38.038723, 47.932934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885941, 38.429180, 48.238556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888382, 38.063263, 48.400105>,  <31.889847, 37.843712, 48.497032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888382, 38.063263, 48.400105>,  <31.885941, 38.429180, 48.238556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888382, 38.063263, 48.400105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158286, 0.397904, 0.903669,
		-0.987374, -0.069445, -0.142370,
		0.006105, -0.914795, 0.403872,
		31.890213, 37.788826, 48.521267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287329, 38.311600, 48.582207>,  <31.885941, 38.429180, 48.238556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287329, 38.311600, 48.582207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573322, 38.084927, 48.745998>,  <31.744919, 37.948925, 48.844273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573322, 38.084927, 48.745998>,  <31.287329, 38.311600, 48.582207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573322, 38.084927, 48.745998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144294, 0.453471, 0.879513,
		-0.684090, -0.687922, 0.242455,
		0.714983, -0.566681, 0.409478,
		31.787817, 37.914921, 48.868843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992781, 38.166569, 49.201775>,  <31.287329, 38.311600, 48.582207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992781, 38.166569, 49.201775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383667, 38.094952, 49.247364>,  <31.618198, 38.051979, 49.274719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383667, 38.094952, 49.247364>,  <30.992781, 38.166569, 49.201775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383667, 38.094952, 49.247364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016623, 0.470794, 0.882087,
		-0.211593, -0.863884, 0.457092,
		0.977216, -0.179045, 0.113977,
		31.676832, 38.041237, 49.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133257, 37.935455, 49.950535>,  <30.992781, 38.166569, 49.201775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133257, 37.935455, 49.950535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491831, 38.049587, 49.814892>,  <31.706974, 38.118065, 49.733505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491831, 38.049587, 49.814892>,  <31.133257, 37.935455, 49.950535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491831, 38.049587, 49.814892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132223, 0.558133, 0.819149,
		0.422995, -0.779150, 0.462602,
		0.896433, 0.285329, -0.339110,
		31.760761, 38.135185, 49.713158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648338, 37.909554, 50.630699>,  <31.133257, 37.935455, 49.950535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648338, 37.909554, 50.630699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835022, 38.122322, 50.348072>,  <31.947033, 38.249985, 50.178497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835022, 38.122322, 50.348072>,  <31.648338, 37.909554, 50.630699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835022, 38.122322, 50.348072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320840, 0.642660, 0.695737,
		0.824163, -0.551402, 0.129273,
		0.466709, 0.531924, -0.706569,
		31.975035, 38.281898, 50.136101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332981, 37.998764, 50.784962>,  <31.648338, 37.909554, 50.630699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332981, 37.998764, 50.784962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209873, 38.317070, 50.576332>,  <32.136009, 38.508053, 50.451153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209873, 38.317070, 50.576332>,  <32.332981, 37.998764, 50.784962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209873, 38.317070, 50.576332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377741, 0.605326, 0.700637,
		0.873263, 0.018616, -0.486894,
		-0.307772, 0.795760, -0.521576,
		32.117542, 38.555798, 50.419861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948601, 38.497997, 50.792809>,  <32.332981, 37.998764, 50.784962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948601, 38.497997, 50.792809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602154, 38.674255, 50.698433>,  <32.394287, 38.780010, 50.641808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602154, 38.674255, 50.698433>,  <32.948601, 38.497997, 50.792809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602154, 38.674255, 50.698433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080366, 0.588662, 0.804375,
		0.493336, 0.677722, -0.545264,
		-0.866118, 0.440648, -0.235942,
		32.342319, 38.806450, 50.627651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090900, 39.121422, 50.801373>,  <32.948601, 38.497997, 50.792809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090900, 39.121422, 50.801373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695873, 39.101353, 50.860950>,  <32.458855, 39.089310, 50.896698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695873, 39.101353, 50.860950>,  <33.090900, 39.121422, 50.801373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695873, 39.101353, 50.860950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074802, 0.683425, 0.726178,
		-0.138229, 0.728294, -0.671178,
		-0.987571, -0.050174, 0.148947,
		32.399601, 39.086300, 50.905636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975845, 39.710361, 51.041168>,  <33.090900, 39.121422, 50.801373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975845, 39.710361, 51.041168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644192, 39.509335, 51.139114>,  <32.445198, 39.388718, 51.197884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644192, 39.509335, 51.139114>,  <32.975845, 39.710361, 51.041168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644192, 39.509335, 51.139114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163326, 0.636660, 0.753650,
		-0.534659, 0.584884, -0.609959,
		-0.829135, -0.502568, 0.244869,
		32.395451, 39.358562, 51.212574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622803, 40.262665, 51.168774>,  <32.975845, 39.710361, 51.041168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622803, 40.262665, 51.168774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422630, 39.960072, 51.337204>,  <32.302528, 39.778515, 51.438263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422630, 39.960072, 51.337204>,  <32.622803, 40.262665, 51.168774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422630, 39.960072, 51.337204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140633, 0.550922, 0.822622,
		-0.854279, 0.352447, -0.382084,
		-0.500430, -0.756482, 0.421075,
		32.272503, 39.733128, 51.463528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018776, 40.522453, 51.355259>,  <32.622803, 40.262665, 51.168774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018776, 40.522453, 51.355259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077633, 40.195599, 51.578201>,  <32.112946, 39.999485, 51.711967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077633, 40.195599, 51.578201>,  <32.018776, 40.522453, 51.355259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077633, 40.195599, 51.578201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047269, 0.568651, 0.821220,
		-0.987986, -0.094487, 0.122295,
		0.147138, -0.817134, 0.557352,
		32.121773, 39.950459, 51.745407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562317, 41.115566, 51.048500>,  <32.018776, 40.522453, 51.355259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562317, 41.115566, 51.048500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822903, 41.417809, 51.021221>,  <32.979256, 41.599155, 51.004852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822903, 41.417809, 51.021221>,  <32.562317, 41.115566, 51.048500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822903, 41.417809, 51.021221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237503, -0.288487, -0.927560,
		-0.720542, 0.588079, -0.367398,
		0.651468, 0.755605, -0.068197,
		33.018345, 41.644489, 51.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407860, 41.432964, 50.358479>,  <32.562317, 41.115566, 51.048500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407860, 41.432964, 50.358479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783993, 41.481594, 50.485600>,  <33.009674, 41.510773, 50.561871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783993, 41.481594, 50.485600>,  <32.407860, 41.432964, 50.358479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783993, 41.481594, 50.485600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340247, -0.343692, -0.875276,
		0.002818, 0.931180, -0.364549,
		0.940332, 0.121571, 0.317800,
		33.066093, 41.518066, 50.580940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711159, 41.813801, 49.896347>,  <32.407860, 41.432964, 50.358479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711159, 41.813801, 49.896347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029797, 41.658779, 50.081924>,  <33.220978, 41.565765, 50.193272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029797, 41.658779, 50.081924>,  <32.711159, 41.813801, 49.896347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029797, 41.658779, 50.081924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379155, -0.277438, -0.882762,
		0.470833, 0.879108, -0.074062,
		0.796591, -0.387552, 0.463946,
		33.268772, 41.542515, 50.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225056, 42.028496, 49.451241>,  <32.711159, 41.813801, 49.896347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225056, 42.028496, 49.451241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357166, 41.705524, 49.646786>,  <33.436432, 41.511742, 49.764111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357166, 41.705524, 49.646786>,  <33.225056, 42.028496, 49.451241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357166, 41.705524, 49.646786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432505, -0.330892, -0.838719,
		0.838964, 0.488439, 0.239931,
		0.330272, -0.807426, 0.488859,
		33.456249, 41.463295, 49.793442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939098, 42.037548, 49.246452>,  <33.225056, 42.028496, 49.451241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939098, 42.037548, 49.246452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829884, 41.673618, 49.371460>,  <33.764355, 41.455261, 49.446465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829884, 41.673618, 49.371460>,  <33.939098, 42.037548, 49.246452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829884, 41.673618, 49.371460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397698, -0.402553, -0.824492,
		0.875950, -0.100828, 0.471748,
		-0.273036, -0.909827, 0.312516,
		33.747974, 41.400669, 49.465214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398750, 41.594418, 48.873459>,  <33.939098, 42.037548, 49.246452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398750, 41.594418, 48.873459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135345, 41.326317, 49.010353>,  <33.977303, 41.165455, 49.092487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135345, 41.326317, 49.010353>,  <34.398750, 41.594418, 48.873459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135345, 41.326317, 49.010353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253974, -0.625998, -0.737309,
		0.708421, -0.398608, 0.582453,
		-0.658511, -0.670253, 0.342234,
		33.937794, 41.125240, 49.113022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793766, 40.896248, 48.954105>,  <34.398750, 41.594418, 48.873459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793766, 40.896248, 48.954105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401791, 40.877281, 48.876678>,  <34.166603, 40.865902, 48.830223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401791, 40.877281, 48.876678>,  <34.793766, 40.896248, 48.954105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401791, 40.877281, 48.876678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185719, -0.569573, -0.800684,
		-0.072289, -0.820572, 0.566953,
		-0.979940, -0.047413, -0.193570,
		34.107807, 40.863056, 48.818607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750889, 40.277332, 48.751652>,  <34.793766, 40.896248, 48.954105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750889, 40.277332, 48.751652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396206, 40.392834, 48.607224>,  <34.183395, 40.462135, 48.520565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396206, 40.392834, 48.607224>,  <34.750889, 40.277332, 48.751652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396206, 40.392834, 48.607224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181480, -0.500922, -0.846252,
		-0.425224, -0.815905, 0.391769,
		-0.886707, 0.288748, -0.361074,
		34.130196, 40.479458, 48.498901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320618, 39.681496, 48.444103>,  <34.750889, 40.277332, 48.751652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320618, 39.681496, 48.444103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163174, 40.009674, 48.278240>,  <34.068707, 40.206581, 48.178722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163174, 40.009674, 48.278240>,  <34.320618, 39.681496, 48.444103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163174, 40.009674, 48.278240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070583, -0.476715, -0.876220,
		-0.916563, -0.315623, 0.245551,
		-0.393613, 0.820442, -0.414661,
		34.045090, 40.255806, 48.153843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647335, 39.360653, 48.288960>,  <34.320618, 39.681496, 48.444103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647335, 39.360653, 48.288960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709084, 39.689934, 48.070415>,  <33.746132, 39.887501, 47.939289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709084, 39.689934, 48.070415>,  <33.647335, 39.360653, 48.288960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709084, 39.689934, 48.070415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269113, -0.497048, -0.824937,
		-0.950656, 0.274379, 0.144804,
		0.154371, 0.823200, -0.546362,
		33.755394, 39.936893, 47.906506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055801, 39.386723, 47.795300>,  <33.647335, 39.360653, 48.288960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055801, 39.386723, 47.795300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339718, 39.634151, 47.660496>,  <33.510067, 39.782608, 47.579613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339718, 39.634151, 47.660496>,  <33.055801, 39.386723, 47.795300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339718, 39.634151, 47.660496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189509, -0.293099, -0.937112,
		-0.678445, 0.729016, -0.090814,
		0.709788, 0.618569, -0.337007,
		33.552654, 39.819721, 47.559395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802456, 39.629883, 47.162846>,  <33.055801, 39.386723, 47.795300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802456, 39.629883, 47.162846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199291, 39.669186, 47.131588>,  <33.437393, 39.692768, 47.112835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199291, 39.669186, 47.131588>,  <32.802456, 39.629883, 47.162846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199291, 39.669186, 47.131588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029098, -0.425523, -0.904480,
		-0.122124, 0.899597, -0.419297,
		0.992088, 0.098258, -0.078143,
		33.496918, 39.698662, 47.108147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936527, 39.841721, 46.441139>,  <32.802456, 39.629883, 47.162846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936527, 39.841721, 46.441139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315327, 39.765800, 46.544800>,  <33.542606, 39.720249, 46.606998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315327, 39.765800, 46.544800>,  <32.936527, 39.841721, 46.441139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315327, 39.765800, 46.544800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167728, -0.395884, -0.902853,
		0.273956, 0.898472, -0.343068,
		0.947003, -0.189800, 0.259154,
		33.599426, 39.708862, 46.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345051, 40.235615, 45.999359>,  <32.936527, 39.841721, 46.441139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345051, 40.235615, 45.999359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540581, 39.912403, 46.130898>,  <33.657898, 39.718475, 46.209820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540581, 39.912403, 46.130898>,  <33.345051, 40.235615, 45.999359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540581, 39.912403, 46.130898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216589, -0.252739, -0.942981,
		0.845068, 0.532176, 0.051465,
		0.488825, -0.808029, 0.328845,
		33.687229, 39.669994, 46.229549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862453, 40.159832, 45.514378>,  <33.345051, 40.235615, 45.999359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862453, 40.159832, 45.514378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863750, 39.804970, 45.698963>,  <33.864529, 39.592052, 45.809715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863750, 39.804970, 45.698963>,  <33.862453, 40.159832, 45.514378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863750, 39.804970, 45.698963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213868, -0.450173, -0.866951,
		0.976857, 0.101506, 0.188273,
		0.003245, -0.887153, 0.461464,
		33.864723, 39.538822, 45.837402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489704, 39.830639, 45.197651>,  <33.862453, 40.159832, 45.514378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489704, 39.830639, 45.197651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222973, 39.569248, 45.340931>,  <34.062935, 39.412415, 45.426899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222973, 39.569248, 45.340931>,  <34.489704, 39.830639, 45.197651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222973, 39.569248, 45.340931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163968, -0.597548, -0.784889,
		0.726949, -0.464653, 0.505611,
		-0.666828, -0.653479, 0.358199,
		34.022926, 39.373203, 45.448391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789989, 39.121548, 45.123390>,  <34.489704, 39.830639, 45.197651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789989, 39.121548, 45.123390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391750, 39.084389, 45.128494>,  <34.152809, 39.062092, 45.131557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391750, 39.084389, 45.128494>,  <34.789989, 39.121548, 45.123390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391750, 39.084389, 45.128494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045634, -0.598860, -0.799553,
		0.081922, -0.795447, 0.600460,
		-0.995593, -0.092902, 0.012760,
		34.093071, 39.056519, 45.132320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644127, 38.393669, 45.191738>,  <34.789989, 39.121548, 45.123390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644127, 38.393669, 45.191738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317352, 38.556366, 45.028194>,  <34.121288, 38.653984, 44.930069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317352, 38.556366, 45.028194>,  <34.644127, 38.393669, 45.191738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317352, 38.556366, 45.028194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082529, -0.784092, -0.615133,
		-0.570787, -0.468784, 0.674125,
		-0.816940, 0.406745, -0.408862,
		34.072269, 38.678391, 44.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289452, 37.730553, 45.013752>,  <34.644127, 38.393669, 45.191738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289452, 37.730553, 45.013752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108635, 38.027119, 44.815372>,  <34.000145, 38.205059, 44.696342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108635, 38.027119, 44.815372>,  <34.289452, 37.730553, 45.013752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108635, 38.027119, 44.815372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117513, -0.600654, -0.790826,
		-0.884224, -0.299202, 0.358644,
		-0.452038, 0.741413, -0.495952,
		33.973022, 38.249542, 44.666588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784752, 37.379154, 44.533543>,  <34.289452, 37.730553, 45.013752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784752, 37.379154, 44.533543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837273, 37.759430, 44.421154>,  <33.868786, 37.987595, 44.353722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837273, 37.759430, 44.421154>,  <33.784752, 37.379154, 44.533543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837273, 37.759430, 44.421154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387405, -0.310094, -0.868193,
		-0.912511, 0.005148, -0.409019,
		0.131304, 0.950692, -0.280970,
		33.876663, 38.044636, 44.336864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477928, 37.416897, 43.840454>,  <33.784752, 37.379154, 44.533543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477928, 37.416897, 43.840454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745132, 37.712700, 43.873680>,  <33.905453, 37.890182, 43.893616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745132, 37.712700, 43.873680>,  <33.477928, 37.416897, 43.840454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745132, 37.712700, 43.873680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368154, -0.231414, -0.900506,
		-0.646706, 0.632124, -0.426838,
		0.668008, 0.739504, 0.083062,
		33.945534, 37.934551, 43.898598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439167, 37.884430, 43.149136>,  <33.477928, 37.416897, 43.840454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439167, 37.884430, 43.149136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786934, 37.974518, 43.325043>,  <33.995594, 38.028572, 43.430588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786934, 37.974518, 43.325043>,  <33.439167, 37.884430, 43.149136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786934, 37.974518, 43.325043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465101, -0.072710, -0.882266,
		-0.166729, 0.971591, -0.167965,
		0.869415, 0.225220, 0.439765,
		34.047760, 38.042084, 43.456974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790691, 38.002995, 42.548412>,  <33.439167, 37.884430, 43.149136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790691, 38.002995, 42.548412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065731, 38.025043, 42.838013>,  <34.230755, 38.038273, 43.011772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065731, 38.025043, 42.838013>,  <33.790691, 38.002995, 42.548412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065731, 38.025043, 42.838013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713917, -0.233173, -0.660267,
		0.132420, 0.970872, -0.199683,
		0.687595, 0.055125, 0.723999,
		34.272011, 38.041580, 43.055214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396580, 38.579590, 42.463223>,  <33.790691, 38.002995, 42.548412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396580, 38.579590, 42.463223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525383, 38.255367, 42.658897>,  <34.602665, 38.060833, 42.776302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525383, 38.255367, 42.658897>,  <34.396580, 38.579590, 42.463223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525383, 38.255367, 42.658897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729529, -0.116890, -0.673887,
		0.603407, 0.573873, 0.553688,
		0.322005, -0.810560, 0.489189,
		34.621986, 38.012199, 42.805653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144978, 38.666168, 42.529152>,  <34.396580, 38.579590, 42.463223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144978, 38.666168, 42.529152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090618, 38.282078, 42.626720>,  <35.058002, 38.051624, 42.685261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090618, 38.282078, 42.626720>,  <35.144978, 38.666168, 42.529152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090618, 38.282078, 42.626720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852147, -0.238880, -0.465599,
		0.505347, 0.144580, 0.850718,
		-0.135903, -0.960226, 0.243920,
		35.049847, 37.994011, 42.699898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808571, 38.337746, 42.804699>,  <35.144978, 38.666168, 42.529152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808571, 38.337746, 42.804699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600315, 38.031139, 42.654297>,  <35.475361, 37.847176, 42.564056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600315, 38.031139, 42.654297>,  <35.808571, 38.337746, 42.804699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600315, 38.031139, 42.654297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823354, -0.334265, -0.458645,
		0.225873, -0.548379, 0.805147,
		-0.520644, -0.766516, -0.376009,
		35.444122, 37.801186, 42.541492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304188, 37.742092, 42.699783>,  <35.808571, 38.337746, 42.804699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304188, 37.742092, 42.699783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987675, 37.651764, 42.472492>,  <35.797768, 37.597565, 42.336117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987675, 37.651764, 42.472492>,  <36.304188, 37.742092, 42.699783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987675, 37.651764, 42.472492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599475, -0.469565, -0.648181,
		-0.120445, -0.853529, 0.506933,
		-0.791279, -0.225823, -0.568226,
		35.750290, 37.584019, 42.302025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376308, 37.078846, 42.462929>,  <36.304188, 37.742092, 42.699783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376308, 37.078846, 42.462929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124916, 37.242867, 42.198544>,  <35.974079, 37.341278, 42.039913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124916, 37.242867, 42.198544>,  <36.376308, 37.078846, 42.462929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124916, 37.242867, 42.198544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566997, -0.340191, -0.750189,
		-0.532470, -0.846242, -0.018696,
		-0.628482, 0.410054, -0.660959,
		35.936371, 37.365883, 42.000256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196316, 36.587479, 42.065208>,  <36.376308, 37.078846, 42.462929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196316, 36.587479, 42.065208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132397, 36.917755, 41.848801>,  <36.094048, 37.115921, 41.718956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132397, 36.917755, 41.848801>,  <36.196316, 36.587479, 42.065208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132397, 36.917755, 41.848801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622170, -0.341265, -0.704586,
		-0.766401, -0.449197, -0.459186,
		-0.159793, 0.825688, -0.541023,
		36.084457, 37.165462, 41.686493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367496, 36.371231, 41.459759>,  <36.196316, 36.587479, 42.065208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367496, 36.371231, 41.459759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351040, 36.766762, 41.402439>,  <36.341167, 37.004078, 41.368046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351040, 36.766762, 41.402439>,  <36.367496, 36.371231, 41.459759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351040, 36.766762, 41.402439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570157, -0.094543, -0.816078,
		-0.820505, -0.115277, -0.559895,
		-0.041141, 0.988824, -0.143299,
		36.338699, 37.063408, 41.359451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257442, 36.485516, 40.675026>,  <36.367496, 36.371231, 41.459759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257442, 36.485516, 40.675026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391613, 36.839615, 40.803913>,  <36.472115, 37.052074, 40.881245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391613, 36.839615, 40.803913>,  <36.257442, 36.485516, 40.675026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391613, 36.839615, 40.803913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621445, 0.049139, -0.781915,
		-0.708024, 0.462513, -0.533651,
		0.335423, 0.885249, 0.322218,
		36.492241, 37.105190, 40.900578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239719, 36.900040, 40.074196>,  <36.257442, 36.485516, 40.675026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239719, 36.900040, 40.074196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498562, 37.068962, 40.328098>,  <36.653866, 37.170315, 40.480442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498562, 37.068962, 40.328098>,  <36.239719, 36.900040, 40.074196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498562, 37.068962, 40.328098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626534, 0.179835, -0.758363,
		-0.434410, 0.888437, -0.148215,
		0.647104, 0.422302, 0.634758,
		36.692692, 37.195652, 40.518524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464706, 37.500061, 39.734234>,  <36.239719, 36.900040, 40.074196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464706, 37.500061, 39.734234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747456, 37.457542, 40.013954>,  <36.917107, 37.432030, 40.181786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747456, 37.457542, 40.013954>,  <36.464706, 37.500061, 39.734234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747456, 37.457542, 40.013954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696400, 0.277764, -0.661721,
		-0.123903, 0.954750, 0.270371,
		0.706877, -0.106297, 0.699304,
		36.959518, 37.425652, 40.223743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825726, 38.097088, 39.648785>,  <36.464706, 37.500061, 39.734234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825726, 38.097088, 39.648785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085217, 37.851212, 39.828255>,  <37.240910, 37.703686, 39.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085217, 37.851212, 39.828255>,  <36.825726, 38.097088, 39.648785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085217, 37.851212, 39.828255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715893, 0.292904, -0.633801,
		0.258170, 0.732369, 0.630066,
		0.648726, -0.614689, 0.448679,
		37.279835, 37.666805, 39.962860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549587, 38.477413, 39.717930>,  <36.825726, 38.097088, 39.648785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549587, 38.477413, 39.717930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596439, 38.081043, 39.744293>,  <37.624550, 37.843220, 39.760109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596439, 38.081043, 39.744293>,  <37.549587, 38.477413, 39.717930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596439, 38.081043, 39.744293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727410, 0.040425, -0.685011,
		0.676131, 0.128179, 0.725546,
		0.117134, -0.990927, 0.065906,
		37.631580, 37.783764, 39.764065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276424, 38.371143, 39.600056>,  <37.549587, 38.477413, 39.717930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276424, 38.371143, 39.600056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148380, 37.996193, 39.545124>,  <38.071552, 37.771225, 39.512165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148380, 37.996193, 39.545124>,  <38.276424, 38.371143, 39.600056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148380, 37.996193, 39.545124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709606, -0.141196, -0.690306,
		0.627684, -0.318426, 0.710364,
		-0.320112, -0.937373, -0.137330,
		38.052345, 37.714981, 39.503925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899288, 38.015118, 39.611839>,  <38.276424, 38.371143, 39.600056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899288, 38.015118, 39.611839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642605, 37.755333, 39.448669>,  <38.488594, 37.599461, 39.350765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642605, 37.755333, 39.448669>,  <38.899288, 38.015118, 39.611839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642605, 37.755333, 39.448669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669737, -0.215357, -0.710685,
		0.373714, -0.729258, 0.573167,
		-0.641708, -0.649464, -0.407929,
		38.450092, 37.560493, 39.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315186, 37.325241, 39.472588>,  <38.899288, 38.015118, 39.611839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315186, 37.325241, 39.472588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986523, 37.365852, 39.248241>,  <38.789326, 37.390221, 39.113632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986523, 37.365852, 39.248241>,  <39.315186, 37.325241, 39.472588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986523, 37.365852, 39.248241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551649, -0.105933, -0.827322,
		-0.143409, -0.989177, 0.031034,
		-0.821656, 0.101526, -0.560870,
		38.740025, 37.396309, 39.079979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254356, 36.709404, 39.116726>,  <39.315186, 37.325241, 39.472588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254356, 36.709404, 39.116726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066051, 37.011433, 38.934189>,  <38.953068, 37.192650, 38.824669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066051, 37.011433, 38.934189>,  <39.254356, 36.709404, 39.116726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066051, 37.011433, 38.934189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526277, -0.174804, -0.832151,
		-0.708104, -0.631910, -0.315085,
		-0.470767, 0.755072, -0.456339,
		38.924820, 37.237953, 38.797287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793789, 36.590202, 38.481205>,  <39.254356, 36.709404, 39.116726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793789, 36.590202, 38.481205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986691, 36.939594, 38.507904>,  <39.102432, 37.149231, 38.523922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986691, 36.939594, 38.507904>,  <38.793789, 36.590202, 38.481205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986691, 36.939594, 38.507904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619202, -0.285987, -0.731300,
		-0.619690, 0.394005, -0.678782,
		0.482258, 0.873483, 0.066745,
		39.131367, 37.201637, 38.527927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954586, 36.837948, 37.800995>,  <38.793789, 36.590202, 38.481205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954586, 36.837948, 37.800995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225922, 37.024487, 38.028111>,  <39.388721, 37.136410, 38.164379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225922, 37.024487, 38.028111>,  <38.954586, 36.837948, 37.800995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225922, 37.024487, 38.028111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684028, -0.118681, -0.719736,
		-0.268260, 0.876605, -0.399499,
		0.678338, 0.466345, 0.567786,
		39.429424, 37.164391, 38.198444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099045, 37.423752, 37.651943>,  <38.954586, 36.837948, 37.800995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099045, 37.423752, 37.651943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431522, 37.274826, 37.817116>,  <39.631008, 37.185471, 37.916218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431522, 37.274826, 37.817116>,  <39.099045, 37.423752, 37.651943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431522, 37.274826, 37.817116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483118, 0.116067, -0.867828,
		0.275174, 0.920822, 0.276343,
		0.831190, -0.372310, 0.412928,
		39.680878, 37.163132, 37.940994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675232, 37.830578, 37.558895>,  <39.099045, 37.423752, 37.651943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675232, 37.830578, 37.558895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839127, 37.472198, 37.627476>,  <39.937466, 37.257172, 37.668625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839127, 37.472198, 37.627476>,  <39.675232, 37.830578, 37.558895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839127, 37.472198, 37.627476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519219, 0.074533, -0.851385,
		0.750017, 0.437864, 0.495732,
		0.409739, -0.895946, 0.171447,
		39.962048, 37.203415, 37.678909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317829, 37.890816, 37.623745>,  <39.675232, 37.830578, 37.558895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317829, 37.890816, 37.623745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283226, 37.518700, 37.481152>,  <40.262463, 37.295429, 37.395596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283226, 37.518700, 37.481152>,  <40.317829, 37.890816, 37.623745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283226, 37.518700, 37.481152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642151, 0.221504, -0.733879,
		0.761681, -0.292403, 0.578223,
		-0.086510, -0.930288, -0.356482,
		40.257275, 37.239613, 37.374207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067383, 37.514904, 37.478737>,  <40.317829, 37.890816, 37.623745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067383, 37.514904, 37.478737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778934, 37.364651, 37.245880>,  <40.605865, 37.274498, 37.106167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778934, 37.364651, 37.245880>,  <41.067383, 37.514904, 37.478737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778934, 37.364651, 37.245880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427954, 0.419268, -0.800668,
		0.544833, -0.826505, -0.141587,
		-0.721119, -0.375638, -0.582137,
		40.562599, 37.251961, 37.071239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386353, 37.290443, 36.788380>,  <41.067383, 37.514904, 37.478737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386353, 37.290443, 36.788380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998329, 37.355415, 36.716141>,  <40.765514, 37.394398, 36.672798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998329, 37.355415, 36.716141>,  <41.386353, 37.290443, 36.788380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998329, 37.355415, 36.716141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238639, 0.498826, -0.833201,
		-0.045249, -0.851346, -0.522649,
		-0.970054, 0.162426, -0.180593,
		40.707314, 37.404144, 36.661964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882294, 37.883965, 36.587376>,  <41.386353, 37.290443, 36.788380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882294, 37.883965, 36.587376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178822, 37.657936, 36.732227>,  <42.356739, 37.522320, 36.819138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178822, 37.657936, 36.732227>,  <41.882294, 37.883965, 36.587376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178822, 37.657936, 36.732227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637598, -0.761418, 0.117098,
		0.209565, -0.317701, -0.924742,
		0.741318, -0.565074, 0.362132,
		42.401218, 37.488415, 36.840866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944710, 37.343647, 36.126488>,  <41.882294, 37.883965, 36.587376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944710, 37.343647, 36.126488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080929, 37.216282, 36.480354>,  <42.162659, 37.139862, 36.692677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080929, 37.216282, 36.480354>,  <41.944710, 37.343647, 36.126488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080929, 37.216282, 36.480354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639179, -0.768451, -0.030542,
		0.689550, -0.555061, -0.465217,
		0.340544, -0.318417, 0.884670,
		42.183090, 37.120758, 36.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073418, 36.598724, 36.142780>,  <41.944710, 37.343647, 36.126488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073418, 36.598724, 36.142780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007610, 36.687080, 36.527309>,  <41.968124, 36.740093, 36.758026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007610, 36.687080, 36.527309>,  <42.073418, 36.598724, 36.142780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007610, 36.687080, 36.527309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619213, -0.781760, 0.073662,
		0.767794, -0.583145, 0.265395,
		-0.164519, 0.220893, 0.961322,
		41.958256, 36.753349, 36.815704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719982, 35.980724, 36.244709>,  <42.073418, 36.598724, 36.142780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719982, 35.980724, 36.244709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682743, 36.165253, 36.597641>,  <41.660400, 36.275970, 36.809402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682743, 36.165253, 36.597641>,  <41.719982, 35.980724, 36.244709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682743, 36.165253, 36.597641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494215, -0.790717, 0.361274,
		0.864340, -0.402427, 0.301610,
		-0.093102, 0.461323, 0.882333,
		41.654812, 36.303650, 36.862343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935890, 35.439045, 36.710594>,  <41.719982, 35.980724, 36.244709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935890, 35.439045, 36.710594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737041, 35.697166, 36.942612>,  <41.617733, 35.852039, 37.081821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737041, 35.697166, 36.942612>,  <41.935890, 35.439045, 36.710594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737041, 35.697166, 36.942612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377894, -0.762790, 0.524736,
		0.781066, 0.041663, 0.623057,
		-0.497123, 0.645303, 0.580045,
		41.587906, 35.890759, 37.116627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146938, 35.305748, 37.468483>,  <41.935890, 35.439045, 36.710594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146938, 35.305748, 37.468483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792042, 35.488152, 37.440586>,  <41.579105, 35.597591, 37.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792042, 35.488152, 37.440586>,  <42.146938, 35.305748, 37.468483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792042, 35.488152, 37.440586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393056, -0.668141, 0.631739,
		0.241480, 0.587916, 0.772038,
		-0.887240, 0.456006, -0.069741,
		41.525871, 35.624954, 37.419662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878151, 35.508575, 38.151321>,  <42.146938, 35.305748, 37.468483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878151, 35.508575, 38.151321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552998, 35.512024, 37.918377>,  <41.357906, 35.514091, 37.778610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552998, 35.512024, 37.918377>,  <41.878151, 35.508575, 38.151321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552998, 35.512024, 37.918377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536875, -0.398719, 0.743498,
		-0.225790, 0.917032, 0.328739,
		-0.812886, 0.008617, -0.582359,
		41.309132, 35.514610, 37.743668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334198, 35.573338, 38.611328>,  <41.878151, 35.508575, 38.151321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334198, 35.573338, 38.611328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147747, 35.446033, 38.281132>,  <41.035877, 35.369652, 38.083015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147747, 35.446033, 38.281132>,  <41.334198, 35.573338, 38.611328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147747, 35.446033, 38.281132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713686, -0.416157, 0.563441,
		-0.522853, 0.851778, -0.033154,
		-0.466129, -0.318258, -0.825491,
		41.007908, 35.350555, 38.033485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591572, 35.781216, 38.648651>,  <41.334198, 35.573338, 38.611328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591572, 35.781216, 38.648651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619019, 35.467937, 38.401459>,  <40.635487, 35.279972, 38.253143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619019, 35.467937, 38.401459>,  <40.591572, 35.781216, 38.648651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619019, 35.467937, 38.401459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640616, -0.509452, 0.574518,
		-0.764790, 0.356464, -0.536685,
		0.068620, -0.783194, -0.617980,
		40.639606, 35.232979, 38.216064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875416, 35.478958, 38.514645>,  <40.591572, 35.781216, 38.648651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875416, 35.478958, 38.514645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070290, 35.157883, 38.377048>,  <40.187214, 34.965237, 38.294491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070290, 35.157883, 38.377048>,  <39.875416, 35.478958, 38.514645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070290, 35.157883, 38.377048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732605, -0.590057, 0.339299,
		-0.475329, 0.086709, -0.875525,
		0.487189, -0.802692, -0.343995,
		40.216446, 34.917076, 38.273849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389980, 35.052128, 38.258312>,  <39.875416, 35.478958, 38.514645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389980, 35.052128, 38.258312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711182, 34.839165, 38.365448>,  <39.903900, 34.711388, 38.429729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711182, 34.839165, 38.365448>,  <39.389980, 35.052128, 38.258312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711182, 34.839165, 38.365448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595765, -0.704982, 0.384792,
		-0.016046, -0.468555, -0.883289,
		0.802999, -0.532406, 0.267837,
		39.952080, 34.679443, 38.445801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145477, 34.390289, 38.351402>,  <39.389980, 35.052128, 38.258312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145477, 34.390289, 38.351402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504333, 34.305710, 38.506538>,  <39.719646, 34.254963, 38.599621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504333, 34.305710, 38.506538>,  <39.145477, 34.390289, 38.351402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504333, 34.305710, 38.506538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372842, -0.833330, 0.408106,
		0.236907, -0.510734, -0.826454,
		0.897142, -0.211453, 0.387845,
		39.773476, 34.242275, 38.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391922, 33.714500, 38.018650>,  <39.145477, 34.390289, 38.351402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391922, 33.714500, 38.018650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565361, 33.776340, 38.373749>,  <39.669426, 33.813446, 38.586807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565361, 33.776340, 38.373749>,  <39.391922, 33.714500, 38.018650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565361, 33.776340, 38.373749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346909, -0.880598, 0.322802,
		0.831652, -0.447933, -0.328194,
		0.433601, 0.154605, 0.887743,
		39.695442, 33.822723, 38.640072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493176, 33.102329, 38.282425>,  <39.391922, 33.714500, 38.018650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493176, 33.102329, 38.282425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506123, 33.320866, 38.617199>,  <39.513889, 33.451988, 38.818062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506123, 33.320866, 38.617199>,  <39.493176, 33.102329, 38.282425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506123, 33.320866, 38.617199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324021, -0.786412, 0.525896,
		0.945496, -0.288206, 0.151573,
		0.032367, 0.546345, 0.836934,
		39.515831, 33.484768, 38.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905949, 32.739414, 38.718334>,  <39.493176, 33.102329, 38.282425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905949, 32.739414, 38.718334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702400, 32.979843, 38.964836>,  <39.580273, 33.124100, 39.112736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702400, 32.979843, 38.964836>,  <39.905949, 32.739414, 38.718334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702400, 32.979843, 38.964836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159923, -0.769412, 0.618409,
		0.845860, 0.216135, 0.487654,
		-0.508867, 0.601074, 0.616250,
		39.549740, 33.160164, 39.149712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024788, 32.413040, 39.425488>,  <39.905949, 32.739414, 38.718334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024788, 32.413040, 39.425488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713112, 32.656925, 39.483601>,  <39.526104, 32.803257, 39.518467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713112, 32.656925, 39.483601>,  <40.024788, 32.413040, 39.425488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713112, 32.656925, 39.483601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362917, -0.627859, 0.688538,
		0.511026, 0.483780, 0.710499,
		-0.779194, 0.609713, 0.145281,
		39.479355, 32.839840, 39.527184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972660, 32.607780, 40.148739>,  <40.024788, 32.413040, 39.425488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972660, 32.607780, 40.148739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603794, 32.678551, 40.011154>,  <39.382473, 32.721012, 39.928604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603794, 32.678551, 40.011154>,  <39.972660, 32.607780, 40.148739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603794, 32.678551, 40.011154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383188, -0.539099, 0.750026,
		-0.052736, 0.823451, 0.564931,
		-0.922164, 0.176921, -0.343966,
		39.327145, 32.731628, 39.907963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590492, 32.830742, 40.757645>,  <39.972660, 32.607780, 40.148739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590492, 32.830742, 40.757645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321487, 32.718113, 40.483875>,  <39.160084, 32.650536, 40.319614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321487, 32.718113, 40.483875>,  <39.590492, 32.830742, 40.757645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321487, 32.718113, 40.483875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444729, -0.585446, 0.677841,
		-0.591556, 0.760243, 0.268498,
		-0.672516, -0.281572, -0.684427,
		39.119732, 32.633640, 40.278549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882683, 32.907658, 41.087864>,  <39.590492, 32.830742, 40.757645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882683, 32.907658, 41.087864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870380, 32.652012, 40.780468>,  <38.862999, 32.498623, 40.596031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870380, 32.652012, 40.780468>,  <38.882683, 32.907658, 41.087864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870380, 32.652012, 40.780468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456774, -0.674890, 0.579552,
		-0.889051, 0.368853, -0.271175,
		-0.030756, -0.639117, -0.768494,
		38.861153, 32.460278, 40.549919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181042, 32.617409, 41.053486>,  <38.882683, 32.907658, 41.087864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181042, 32.617409, 41.053486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420788, 32.368000, 40.852692>,  <38.564636, 32.218353, 40.732216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420788, 32.368000, 40.852692>,  <38.181042, 32.617409, 41.053486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420788, 32.368000, 40.852692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414701, -0.778252, 0.471536,
		-0.684682, -0.074448, -0.725030,
		0.599361, -0.623523, -0.501982,
		38.600597, 32.180943, 40.702099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743721, 32.103420, 40.713928>,  <38.181042, 32.617409, 41.053486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743721, 32.103420, 40.713928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114731, 31.960138, 40.756615>,  <38.337337, 31.874170, 40.782227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114731, 31.960138, 40.756615>,  <37.743721, 32.103420, 40.713928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114731, 31.960138, 40.756615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367387, -0.821258, 0.436535,
		-0.068728, -0.444103, -0.893336,
		0.927526, -0.358202, 0.106714,
		38.392990, 31.852678, 40.788628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726406, 31.398983, 40.312569>,  <37.743721, 32.103420, 40.713928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726406, 31.398983, 40.312569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996311, 31.426830, 40.606468>,  <38.158253, 31.443539, 40.782806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996311, 31.426830, 40.606468>,  <37.726406, 31.398983, 40.312569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996311, 31.426830, 40.606468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351925, -0.844720, 0.403234,
		0.648729, -0.530662, -0.545481,
		0.674759, 0.069621, 0.734747,
		38.198738, 31.447716, 40.826893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202175, 30.741678, 40.230297>,  <37.726406, 31.398983, 40.312569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202175, 30.741678, 40.230297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118031, 30.873632, 40.598412>,  <38.067543, 30.952805, 40.819279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118031, 30.873632, 40.598412>,  <38.202175, 30.741678, 40.230297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118031, 30.873632, 40.598412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273359, -0.923648, 0.268607,
		0.938629, -0.195065, 0.284473,
		-0.210357, 0.329885, 0.920286,
		38.054924, 30.972599, 40.874496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404358, 30.222397, 40.765415>,  <38.202175, 30.741678, 40.230297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404358, 30.222397, 40.765415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091347, 30.413841, 40.924706>,  <37.903542, 30.528708, 41.020279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091347, 30.413841, 40.924706>,  <38.404358, 30.222397, 40.765415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091347, 30.413841, 40.924706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455116, -0.876173, 0.158715,
		0.424881, -0.057042, 0.903450,
		-0.782526, 0.478610, 0.398230,
		37.856590, 30.557425, 41.044174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667183, 29.926580, 41.437672>,  <38.404358, 30.222397, 40.765415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667183, 29.926580, 41.437672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685894, 30.293938, 41.594830>,  <38.697121, 30.514353, 41.689125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685894, 30.293938, 41.594830>,  <38.667183, 29.926580, 41.437672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685894, 30.293938, 41.594830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380752, -0.380022, 0.842977,
		0.923493, 0.110159, -0.367459,
		0.046781, 0.918394, 0.392891,
		38.699928, 30.569456, 41.712696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291992, 30.089891, 41.751724>,  <38.667183, 29.926580, 41.437672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291992, 30.089891, 41.751724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447903, 29.725080, 41.700684>,  <39.541447, 29.506193, 41.670059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447903, 29.725080, 41.700684>,  <39.291992, 30.089891, 41.751724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447903, 29.725080, 41.700684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499923, 0.325917, -0.802406,
		0.773405, 0.248964, 0.582977,
		0.389772, -0.912028, -0.127603,
		39.564835, 29.451471, 41.662403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087021, 30.032349, 41.801846>,  <39.291992, 30.089891, 41.751724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087021, 30.032349, 41.801846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906582, 29.802263, 41.528893>,  <39.798317, 29.664211, 41.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906582, 29.802263, 41.528893>,  <40.087021, 30.032349, 41.801846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906582, 29.802263, 41.528893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610150, 0.359231, -0.706166,
		0.651327, -0.734903, 0.188919,
		-0.451098, -0.575214, -0.682378,
		39.771252, 29.629700, 41.324181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647625, 29.577442, 41.547459>,  <40.087021, 30.032349, 41.801846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647625, 29.577442, 41.547459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330334, 29.675961, 41.324699>,  <40.139961, 29.735071, 41.191044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330334, 29.675961, 41.324699>,  <40.647625, 29.577442, 41.547459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330334, 29.675961, 41.324699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602299, 0.451912, -0.658036,
		0.089597, -0.857389, -0.506811,
		-0.793226, 0.246294, -0.556894,
		40.092365, 29.749849, 41.157631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520451, 29.357248, 40.813957>,  <40.647625, 29.577442, 41.547459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520451, 29.357248, 40.813957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335819, 29.709528, 40.856506>,  <40.225040, 29.920895, 40.882034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335819, 29.709528, 40.856506>,  <40.520451, 29.357248, 40.813957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335819, 29.709528, 40.856506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681533, 0.428817, -0.592983,
		-0.567853, -0.201213, -0.798158,
		-0.461579, 0.880698, 0.106372,
		40.197346, 29.973738, 40.888416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451023, 29.635729, 40.108154>,  <40.520451, 29.357248, 40.813957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451023, 29.635729, 40.108154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455524, 29.920738, 40.388779>,  <40.458225, 30.091743, 40.557152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455524, 29.920738, 40.388779>,  <40.451023, 29.635729, 40.108154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455524, 29.920738, 40.388779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759383, 0.450365, -0.469584,
		-0.650547, 0.538037, -0.536009,
		0.011254, 0.712523, 0.701559,
		40.458900, 30.134495, 40.599247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739174, 30.258152, 39.939911>,  <40.451023, 29.635729, 40.108154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739174, 30.258152, 39.939911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580837, 30.493656, 40.221809>,  <40.485836, 30.634958, 40.390949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580837, 30.493656, 40.221809>,  <40.739174, 30.258152, 39.939911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580837, 30.493656, 40.221809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456569, 0.792041, -0.405236,
		-0.796775, 0.161355, -0.582335,
		-0.395846, 0.588758, 0.704748,
		40.462082, 30.670284, 40.433235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894180, 30.746225, 39.442825>,  <40.739174, 30.258152, 39.939911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894180, 30.746225, 39.442825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820751, 30.903625, 39.803150>,  <40.776695, 30.998066, 40.019344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820751, 30.903625, 39.803150>,  <40.894180, 30.746225, 39.442825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820751, 30.903625, 39.803150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551747, 0.799666, -0.236877,
		-0.813558, 0.453535, -0.363908,
		-0.183573, 0.393498, 0.900811,
		40.765678, 31.021675, 40.073395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659016, 31.437254, 39.304424>,  <40.894180, 30.746225, 39.442825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659016, 31.437254, 39.304424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809700, 31.411646, 39.674068>,  <40.900112, 31.396280, 39.895855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809700, 31.411646, 39.674068>,  <40.659016, 31.437254, 39.304424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809700, 31.411646, 39.674068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668202, 0.709702, -0.223226,
		-0.641554, 0.701587, 0.310134,
		0.376715, -0.064021, 0.924114,
		40.922714, 31.392439, 39.951302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656895, 32.063740, 39.468658>,  <40.659016, 31.437254, 39.304424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656895, 32.063740, 39.468658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918713, 31.872038, 39.702545>,  <41.075802, 31.757017, 39.842876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918713, 31.872038, 39.702545>,  <40.656895, 32.063740, 39.468658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918713, 31.872038, 39.702545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681163, 0.709390, -0.181062,
		-0.328016, 0.516798, 0.790775,
		0.654540, -0.479255, 0.584715,
		41.115074, 31.728262, 39.877960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941833, 32.634018, 39.833385>,  <40.656895, 32.063740, 39.468658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941833, 32.634018, 39.833385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205135, 32.340378, 39.900078>,  <41.363117, 32.164196, 39.940094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205135, 32.340378, 39.900078>,  <40.941833, 32.634018, 39.833385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205135, 32.340378, 39.900078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726438, 0.561350, -0.396453,
		0.197441, 0.382086, 0.902788,
		0.658259, -0.734096, 0.166728,
		41.402615, 32.120148, 39.950096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491196, 32.887371, 40.270596>,  <40.941833, 32.634018, 39.833385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491196, 32.887371, 40.270596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656452, 32.575329, 40.082661>,  <41.755608, 32.388103, 39.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656452, 32.575329, 40.082661>,  <41.491196, 32.887371, 40.270596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656452, 32.575329, 40.082661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637979, 0.616098, -0.461958,
		0.649842, -0.108892, 0.752229,
		0.413143, -0.780106, -0.469837,
		41.780396, 32.341297, 39.941711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267197, 32.925625, 40.333443>,  <41.491196, 32.887371, 40.270596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267197, 32.925625, 40.333443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202732, 32.678329, 40.025726>,  <42.164055, 32.529953, 39.841095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202732, 32.678329, 40.025726>,  <42.267197, 32.925625, 40.333443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202732, 32.678329, 40.025726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677309, 0.497662, -0.541835,
		0.717830, -0.608371, 0.338534,
		-0.161161, -0.618237, -0.769292,
		42.154385, 32.492859, 39.794937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900887, 32.724739, 40.140930>,  <42.267197, 32.925625, 40.333443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900887, 32.724739, 40.140930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673420, 32.663181, 39.817711>,  <42.536942, 32.626247, 39.623779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673420, 32.663181, 39.817711>,  <42.900887, 32.724739, 40.140930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673420, 32.663181, 39.817711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587349, 0.611775, -0.529861,
		0.575884, -0.775918, -0.257505,
		-0.568664, -0.153894, -0.808046,
		42.502819, 32.617012, 39.575298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353985, 32.790646, 39.596191>,  <42.900887, 32.724739, 40.140930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353985, 32.790646, 39.596191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017422, 32.797081, 39.380123>,  <42.815483, 32.800941, 39.250484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017422, 32.797081, 39.380123>,  <43.353985, 32.790646, 39.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017422, 32.797081, 39.380123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498331, 0.409782, -0.764032,
		0.209056, -0.912042, -0.352811,
		-0.841405, 0.016091, -0.540166,
		42.764999, 32.801907, 39.218075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519337, 32.408192, 38.920971>,  <43.353985, 32.790646, 39.596191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519337, 32.408192, 38.920971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217896, 32.668034, 38.880772>,  <43.037033, 32.823940, 38.856651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217896, 32.668034, 38.880772>,  <43.519337, 32.408192, 38.920971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217896, 32.668034, 38.880772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455028, 0.405197, -0.792947,
		-0.474379, -0.643297, -0.600944,
		-0.753601, 0.649604, -0.100501,
		42.991814, 32.862915, 38.850620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501896, 32.557278, 38.274918>,  <43.519337, 32.408192, 38.920971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501896, 32.557278, 38.274918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274925, 32.859287, 38.406353>,  <43.138744, 33.040493, 38.485214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274925, 32.859287, 38.406353>,  <43.501896, 32.557278, 38.274918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274925, 32.859287, 38.406353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414940, 0.606861, -0.677897,
		-0.711236, -0.248310, -0.657637,
		-0.567423, 0.755024, 0.328588,
		43.104698, 33.085796, 38.504929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240402, 32.819378, 37.679035>,  <43.501896, 32.557278, 38.274918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240402, 32.819378, 37.679035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223701, 33.117416, 37.945297>,  <43.213680, 33.296238, 38.105053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223701, 33.117416, 37.945297>,  <43.240402, 32.819378, 37.679035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223701, 33.117416, 37.945297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409050, 0.620587, -0.668992,
		-0.911556, 0.244352, -0.330691,
		-0.041753, 0.745093, 0.665652,
		43.211174, 33.340946, 38.144993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779282, 33.396889, 37.441944>,  <43.240402, 32.819378, 37.679035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779282, 33.396889, 37.441944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041241, 33.550262, 37.702435>,  <43.198414, 33.642288, 37.858727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041241, 33.550262, 37.702435>,  <42.779282, 33.396889, 37.441944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041241, 33.550262, 37.702435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360232, 0.599138, -0.715029,
		-0.664339, 0.702860, 0.254247,
		0.654894, 0.383434, 0.651224,
		43.237709, 33.665291, 37.897800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829514, 34.041088, 37.116943>,  <42.779282, 33.396889, 37.441944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829514, 34.041088, 37.116943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099834, 34.034241, 37.411697>,  <43.262028, 34.030132, 37.588551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099834, 34.034241, 37.411697>,  <42.829514, 34.041088, 37.116943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099834, 34.034241, 37.411697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583057, 0.624029, -0.520224,
		-0.450932, 0.781214, 0.431701,
		0.675800, -0.017121, 0.736887,
		43.302574, 34.029106, 37.632763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912758, 34.673714, 37.207726>,  <42.829514, 34.041088, 37.116943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912758, 34.673714, 37.207726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240047, 34.476871, 37.326618>,  <43.436420, 34.358765, 37.397953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240047, 34.476871, 37.326618>,  <42.912758, 34.673714, 37.207726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240047, 34.476871, 37.326618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574792, 0.689937, -0.440002,
		0.011457, 0.530865, 0.847379,
		0.818219, -0.492108, 0.297232,
		43.485512, 34.329239, 37.415787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253075, 35.063400, 37.696533>,  <42.912758, 34.673714, 37.207726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253075, 35.063400, 37.696533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540913, 34.826759, 37.551102>,  <43.713615, 34.684776, 37.463844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540913, 34.826759, 37.551102>,  <43.253075, 35.063400, 37.696533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540913, 34.826759, 37.551102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542476, 0.805800, -0.237500,
		0.433475, -0.026326, 0.900781,
		0.719597, -0.591603, -0.363575,
		43.756790, 34.649277, 37.442028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846554, 35.335060, 37.935005>,  <43.253075, 35.063400, 37.696533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846554, 35.335060, 37.935005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966042, 35.121017, 37.618923>,  <44.037735, 34.992592, 37.429272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966042, 35.121017, 37.618923>,  <43.846554, 35.335060, 37.935005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966042, 35.121017, 37.618923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630470, 0.732251, -0.257521,
		0.716431, -0.421274, 0.556108,
		0.298723, -0.535105, -0.790207,
		44.055660, 34.960487, 37.381863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509136, 35.578655, 37.783302>,  <43.846554, 35.335060, 37.935005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509136, 35.578655, 37.783302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472809, 35.369545, 37.444256>,  <44.451012, 35.244080, 37.240829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472809, 35.369545, 37.444256>,  <44.509136, 35.578655, 37.783302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472809, 35.369545, 37.444256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562184, 0.675631, -0.476941,
		0.822010, -0.519834, 0.232534,
		-0.090823, -0.522777, -0.847618,
		44.445560, 35.212711, 37.189972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208908, 35.475742, 37.525661>,  <44.509136, 35.578655, 37.783302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208908, 35.475742, 37.525661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977741, 35.403622, 37.207291>,  <44.839039, 35.360352, 37.016270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977741, 35.403622, 37.207291>,  <45.208908, 35.475742, 37.525661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977741, 35.403622, 37.207291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623575, 0.531600, -0.573197,
		0.526458, -0.827584, -0.194799,
		-0.577924, -0.180293, -0.795926,
		44.804363, 35.349533, 36.968513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672684, 35.493263, 36.934353>,  <45.208908, 35.475742, 37.525661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672684, 35.493263, 36.934353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306698, 35.565388, 36.789951>,  <45.087105, 35.608662, 36.703312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306698, 35.565388, 36.789951>,  <45.672684, 35.493263, 36.934353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306698, 35.565388, 36.789951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385051, 0.657718, -0.647413,
		0.120702, -0.731366, -0.671219,
		-0.914968, 0.180310, -0.361002,
		45.032207, 35.619480, 36.681652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763271, 35.588322, 36.134277>,  <45.672684, 35.493263, 36.934353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763271, 35.588322, 36.134277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404781, 35.738052, 36.229492>,  <45.189686, 35.827888, 36.286621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404781, 35.738052, 36.229492>,  <45.763271, 35.588322, 36.134277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404781, 35.738052, 36.229492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260974, 0.878837, -0.399421,
		-0.358708, -0.295850, -0.885325,
		-0.896226, 0.374322, 0.238037,
		45.135914, 35.850349, 36.300903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527985, 36.047928, 35.525600>,  <45.763271, 35.588322, 36.134277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527985, 36.047928, 35.525600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328518, 36.153572, 35.855831>,  <45.208836, 36.216961, 36.053970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328518, 36.153572, 35.855831>,  <45.527985, 36.047928, 35.525600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328518, 36.153572, 35.855831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209721, 0.960912, -0.180733,
		-0.841038, 0.083014, -0.534569,
		-0.498670, 0.264114, 0.825574,
		45.178917, 36.232807, 36.103504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127689, 35.638565, 35.301338>,  <45.527985, 36.047928, 35.525600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127689, 35.638565, 35.301338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086655, 35.254555, 35.197170>,  <46.062035, 35.024147, 35.134670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086655, 35.254555, 35.197170>,  <46.127689, 35.638565, 35.301338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086655, 35.254555, 35.197170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744758, 0.247678, -0.619670,
		0.659401, 0.130376, -0.740400,
		-0.102590, -0.960030, -0.260418,
		46.055878, 34.966545, 35.119045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747948, 35.707687, 34.956062>,  <46.127689, 35.638565, 35.301338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747948, 35.707687, 34.956062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829922, 35.425701, 35.227657>,  <46.879108, 35.256508, 35.390614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829922, 35.425701, 35.227657>,  <46.747948, 35.707687, 34.956062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829922, 35.425701, 35.227657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670535, -0.404226, -0.622081,
		0.713010, 0.582771, 0.389864,
		0.204938, -0.704967, 0.678986,
		46.891403, 35.214211, 35.431355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522099, 35.665768, 35.069588>,  <46.747948, 35.707687, 34.956062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522099, 35.665768, 35.069588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314674, 35.328487, 35.126312>,  <47.190220, 35.126118, 35.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314674, 35.328487, 35.126312>,  <47.522099, 35.665768, 35.069588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.314674, 35.328487, 35.126312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537559, -0.450473, -0.712814,
		0.664927, -0.293405, 0.686867,
		-0.518559, -0.843201, 0.141809,
		47.159107, 35.075527, 35.168854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.051487, 35.040253, 35.120628>,  <47.522099, 35.665768, 35.069588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.051487, 35.040253, 35.120628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685356, 34.966274, 34.977531>,  <47.465679, 34.921886, 34.891674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685356, 34.966274, 34.977531>,  <48.051487, 35.040253, 35.120628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685356, 34.966274, 34.977531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401521, -0.487606, -0.775256,
		-0.031054, -0.853250, 0.520577,
		-0.915324, -0.184948, -0.357739,
		47.410759, 34.910789, 34.870209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.443207, 41.733120, 44.790585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.053848, 41.788849, 44.717815>,  <31.820234, 41.822289, 44.674152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.053848, 41.788849, 44.717815>,  <32.443207, 41.733120, 44.790585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053848, 41.788849, 44.717815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160630, -0.151316, -0.975347,
		-0.163434, -0.978615, 0.124907,
		-0.973390, 0.139341, -0.181925,
		31.761831, 41.830647, 44.663239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324570, 41.249107, 44.390007>,  <32.443207, 41.733120, 44.790585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324570, 41.249107, 44.390007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989328, 41.447262, 44.298634>,  <31.788183, 41.566154, 44.243809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989328, 41.447262, 44.298634>,  <32.324570, 41.249107, 44.390007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989328, 41.447262, 44.298634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039870, -0.362005, -0.931323,
		-0.544057, -0.789650, 0.283645,
		-0.838100, 0.495384, -0.228435,
		31.737898, 41.595879, 44.230103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939426, 40.748390, 44.108234>,  <32.324570, 41.249107, 44.390007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939426, 40.748390, 44.108234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834406, 41.121857, 44.010796>,  <31.771393, 41.345936, 43.952332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834406, 41.121857, 44.010796>,  <31.939426, 40.748390, 44.108234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834406, 41.121857, 44.010796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016709, -0.248015, -0.968612,
		-0.964773, -0.258381, 0.049517,
		-0.262552, 0.933664, -0.243595,
		31.755640, 41.401955, 43.937717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374395, 40.632313, 43.646412>,  <31.939426, 40.748390, 44.108234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374395, 40.632313, 43.646412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.533026, 40.992332, 43.574139>,  <31.628204, 41.208344, 43.530773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.533026, 40.992332, 43.574139>,  <31.374395, 40.632313, 43.646412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533026, 40.992332, 43.574139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008221, -0.200295, -0.979701,
		-0.917964, 0.387042, -0.086832,
		0.396578, 0.900045, -0.180682,
		31.651999, 41.262344, 43.519936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029938, 40.885868, 43.046558>,  <31.374395, 40.632313, 43.646412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029938, 40.885868, 43.046558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.361853, 41.109028, 43.052227>,  <31.561003, 41.242924, 43.055626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.361853, 41.109028, 43.052227>,  <31.029938, 40.885868, 43.046558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361853, 41.109028, 43.052227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048139, -0.046264, -0.997769,
		-0.555996, 0.828620, -0.065246,
		0.829789, 0.557897, 0.014167,
		31.610790, 41.276398, 43.056477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997532, 41.232533, 42.490028>,  <31.029938, 40.885868, 43.046558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997532, 41.232533, 42.490028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381464, 41.307953, 42.573139>,  <31.611824, 41.353207, 42.623005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381464, 41.307953, 42.573139>,  <30.997532, 41.232533, 42.490028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381464, 41.307953, 42.573139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205770, 0.030376, -0.978129,
		-0.190741, 0.981593, -0.009643,
		0.959832, 0.188554, 0.207777,
		31.669413, 41.364517, 42.635471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149611, 41.604027, 41.969059>,  <30.997532, 41.232533, 42.490028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149611, 41.604027, 41.969059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.471786, 41.426220, 42.125862>,  <31.665092, 41.319538, 42.219944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.471786, 41.426220, 42.125862>,  <31.149611, 41.604027, 41.969059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471786, 41.426220, 42.125862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373366, -0.133118, -0.918084,
		0.460285, 0.885825, 0.058748,
		0.805441, -0.444515, 0.392009,
		31.713419, 41.292866, 42.243465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667255, 42.078621, 41.766197>,  <31.149611, 41.604027, 41.969059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667255, 42.078621, 41.766197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818699, 41.713329, 41.826416>,  <31.909565, 41.494156, 41.862549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818699, 41.713329, 41.826416>,  <31.667255, 42.078621, 41.766197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818699, 41.713329, 41.826416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474345, 0.051780, -0.878815,
		0.794765, 0.404140, 0.452791,
		0.378610, -0.913230, 0.150549,
		31.932281, 41.439362, 41.871582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047318, 42.085804, 41.170441>,  <31.667255, 42.078621, 41.766197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047318, 42.085804, 41.170441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.090397, 41.713558, 41.310356>,  <32.116245, 41.490211, 41.394306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.090397, 41.713558, 41.310356>,  <32.047318, 42.085804, 41.170441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090397, 41.713558, 41.310356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525200, -0.245478, -0.814804,
		0.844136, 0.271459, 0.462325,
		0.107695, -0.930619, 0.349787,
		32.122704, 41.434372, 41.415291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765575, 41.914516, 41.261192>,  <32.047318, 42.085804, 41.170441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765575, 41.914516, 41.261192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544689, 41.586536, 41.200863>,  <32.412159, 41.389748, 41.164665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544689, 41.586536, 41.200863>,  <32.765575, 41.914516, 41.261192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544689, 41.586536, 41.200863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529398, -0.205110, -0.823206,
		0.644048, -0.534433, 0.547342,
		-0.552214, -0.819946, -0.150827,
		32.379025, 41.340553, 41.155613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258598, 41.415627, 41.071724>,  <32.765575, 41.914516, 41.261192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258598, 41.415627, 41.071724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.912682, 41.286572, 40.917820>,  <32.705132, 41.209141, 40.825478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.912682, 41.286572, 40.917820>,  <33.258598, 41.415627, 41.071724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912682, 41.286572, 40.917820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501767, -0.526082, -0.686634,
		0.019114, -0.786858, 0.616839,
		-0.864792, -0.322633, -0.384764,
		32.653244, 41.189781, 40.802391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348801, 40.750172, 41.037254>,  <33.258598, 41.415627, 41.071724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348801, 40.750172, 41.037254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.032749, 40.817268, 40.801437>,  <32.843121, 40.857525, 40.659946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.032749, 40.817268, 40.801437>,  <33.348801, 40.750172, 41.037254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032749, 40.817268, 40.801437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333584, -0.689230, -0.643183,
		-0.514221, -0.704859, 0.488622,
		-0.790126, 0.167741, -0.589546,
		32.795712, 40.867592, 40.624573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187458, 40.119221, 40.827129>,  <33.348801, 40.750172, 41.037254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187458, 40.119221, 40.827129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.998199, 40.338398, 40.551189>,  <32.884644, 40.469906, 40.385624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.998199, 40.338398, 40.551189>,  <33.187458, 40.119221, 40.827129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998199, 40.338398, 40.551189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360359, -0.594166, -0.719102,
		-0.803912, -0.588833, 0.083670,
		-0.473145, 0.547944, -0.689849,
		32.856255, 40.502781, 40.344234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907780, 39.600498, 40.362480>,  <33.187458, 40.119221, 40.827129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907780, 39.600498, 40.362480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.923710, 39.941357, 40.153767>,  <32.933270, 40.145874, 40.028538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.923710, 39.941357, 40.153767>,  <32.907780, 39.600498, 40.362480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923710, 39.941357, 40.153767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445917, -0.482467, -0.753912,
		-0.894188, -0.202646, -0.399203,
		0.039825, 0.852150, -0.521779,
		32.935658, 40.197002, 39.997234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700474, 39.339451, 39.682030>,  <32.907780, 39.600498, 40.362480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700474, 39.339451, 39.682030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861340, 39.699387, 39.614437>,  <32.957859, 39.915348, 39.573883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861340, 39.699387, 39.614437>,  <32.700474, 39.339451, 39.682030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861340, 39.699387, 39.614437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452913, -0.355921, -0.817429,
		-0.795697, 0.252209, -0.550687,
		0.402165, 0.899839, -0.168977,
		32.981987, 39.969337, 39.563744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512314, 39.475628, 38.883747>,  <32.700474, 39.339451, 39.682030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512314, 39.475628, 38.883747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817856, 39.697659, 39.015450>,  <33.001183, 39.830875, 39.094471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817856, 39.697659, 39.015450>,  <32.512314, 39.475628, 38.883747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817856, 39.697659, 39.015450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561049, -0.318973, -0.763859,
		-0.318973, 0.768212, -0.555074,
		0.763859, 0.555074, 0.329260,
		33.047012, 39.864182, 39.114227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696873, 39.842205, 38.292198>,  <32.512314, 39.475628, 38.883747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696873, 39.842205, 38.292198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015240, 39.834259, 38.534229>,  <33.206261, 39.829491, 38.679447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015240, 39.834259, 38.534229>,  <32.696873, 39.842205, 38.292198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015240, 39.834259, 38.534229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573199, -0.296896, -0.763738,
		0.194813, 0.954703, -0.224921,
		0.795922, -0.019862, 0.605074,
		33.254017, 39.828300, 38.715752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154552, 39.732441, 37.851395>,  <32.696873, 39.842205, 38.292198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154552, 39.732441, 37.851395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352367, 39.704258, 38.197914>,  <33.471054, 39.687347, 38.405827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352367, 39.704258, 38.197914>,  <33.154552, 39.732441, 37.851395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352367, 39.704258, 38.197914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686169, -0.580128, -0.438889,
		0.533485, 0.811472, -0.238549,
		0.494535, -0.070456, 0.866297,
		33.500729, 39.683121, 38.457802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889992, 39.881889, 37.760548>,  <33.154552, 39.732441, 37.851395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889992, 39.881889, 37.760548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879089, 39.664734, 38.096294>,  <33.872547, 39.534443, 38.297741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879089, 39.664734, 38.096294>,  <33.889992, 39.881889, 37.760548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879089, 39.664734, 38.096294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774145, -0.542691, -0.325861,
		0.632421, 0.640908, 0.435065,
		-0.027259, -0.542884, 0.839365,
		33.870911, 39.501869, 38.348103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517910, 39.825432, 38.021458>,  <33.889992, 39.881889, 37.760548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517910, 39.825432, 38.021458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.360630, 39.501938, 38.196430>,  <34.266262, 39.307842, 38.301414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.360630, 39.501938, 38.196430>,  <34.517910, 39.825432, 38.021458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360630, 39.501938, 38.196430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695289, -0.572832, -0.434092,
		0.601638, 0.133456, 0.787541,
		-0.393197, -0.808735, 0.437428,
		34.242672, 39.259315, 38.327660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079239, 39.555470, 38.400471>,  <34.517910, 39.825432, 38.021458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079239, 39.555470, 38.400471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.818821, 39.260876, 38.327015>,  <34.662571, 39.084118, 38.282940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.818821, 39.260876, 38.327015>,  <35.079239, 39.555470, 38.400471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818821, 39.260876, 38.327015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755862, -0.606942, -0.245549,
		0.069384, -0.298671, 0.951830,
		-0.651045, -0.736489, -0.183642,
		34.623508, 39.039928, 38.271923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225899, 38.987705, 38.731087>,  <35.079239, 39.555470, 38.400471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225899, 38.987705, 38.731087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031658, 38.836327, 38.415878>,  <34.915115, 38.745499, 38.226753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031658, 38.836327, 38.415878>,  <35.225899, 38.987705, 38.731087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031658, 38.836327, 38.415878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547858, -0.834195, 0.063015,
		-0.681207, -0.401121, 0.612421,
		-0.485601, -0.378446, -0.788016,
		34.885979, 38.722794, 38.179474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743279, 38.678513, 38.230858>,  <35.225899, 38.987705, 38.731087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743279, 38.678513, 38.230858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126404, 38.791779, 38.250500>,  <36.356277, 38.859737, 38.262287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126404, 38.791779, 38.250500>,  <35.743279, 38.678513, 38.230858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126404, 38.791779, 38.250500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237819, 0.685004, 0.688630,
		0.161356, -0.671258, 0.723448,
		0.957813, 0.283164, 0.049108,
		36.413750, 38.876728, 38.265232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832939, 38.680668, 38.937012>,  <35.743279, 38.678513, 38.230858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832939, 38.680668, 38.937012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128529, 38.895794, 38.774693>,  <36.305882, 39.024872, 38.677299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128529, 38.895794, 38.774693>,  <35.832939, 38.680668, 38.937012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128529, 38.895794, 38.774693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118721, 0.696835, 0.707338,
		0.663195, -0.474524, 0.578791,
		0.738970, 0.537817, -0.405801,
		36.350220, 39.057140, 38.652954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342236, 38.696156, 39.439934>,  <35.832939, 38.680668, 38.937012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342236, 38.696156, 39.439934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395588, 39.017761, 39.208153>,  <36.427597, 39.210724, 39.069084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395588, 39.017761, 39.208153>,  <36.342236, 38.696156, 39.439934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395588, 39.017761, 39.208153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018958, 0.582499, 0.812610,
		0.990884, -0.119370, 0.062449,
		0.133378, 0.804018, -0.579452,
		36.435600, 39.258968, 39.034317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848415, 39.090351, 39.812080>,  <36.342236, 38.696156, 39.439934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848415, 39.090351, 39.812080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680557, 39.347179, 39.555443>,  <36.579842, 39.501274, 39.401459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680557, 39.347179, 39.555443>,  <36.848415, 39.090351, 39.812080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680557, 39.347179, 39.555443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048264, 0.690063, 0.722139,
		0.906403, 0.334010, -0.258594,
		-0.419647, 0.642068, -0.641596,
		36.554665, 39.539799, 39.362965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047211, 39.744007, 40.094749>,  <36.848415, 39.090351, 39.812080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047211, 39.744007, 40.094749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716911, 39.805618, 39.877708>,  <36.518734, 39.842587, 39.747482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716911, 39.805618, 39.877708>,  <37.047211, 39.744007, 40.094749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716911, 39.805618, 39.877708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316346, 0.669971, 0.671612,
		0.466977, 0.726232, -0.504499,
		-0.825746, 0.154031, -0.542602,
		36.469189, 39.851826, 39.714928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998344, 40.454582, 40.129635>,  <37.047211, 39.744007, 40.094749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998344, 40.454582, 40.129635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639877, 40.309258, 40.027748>,  <36.424797, 40.222061, 39.966618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639877, 40.309258, 40.027748>,  <36.998344, 40.454582, 40.129635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639877, 40.309258, 40.027748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424424, 0.534512, 0.730863,
		-0.129387, 0.763085, -0.633214,
		-0.896171, -0.363315, -0.254713,
		36.371025, 40.200264, 39.951336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607204, 40.997379, 40.255463>,  <36.998344, 40.454582, 40.129635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607204, 40.997379, 40.255463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359463, 40.683750, 40.239338>,  <36.210819, 40.495571, 40.229664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359463, 40.683750, 40.239338>,  <36.607204, 40.997379, 40.255463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359463, 40.683750, 40.239338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471640, 0.330523, 0.817503,
		-0.627661, 0.525335, -0.574512,
		-0.619353, -0.784077, -0.040312,
		36.173656, 40.448528, 40.227245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942101, 41.281086, 40.351711>,  <36.607204, 40.997379, 40.255463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942101, 41.281086, 40.351711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902813, 40.890217, 40.427067>,  <35.879242, 40.655697, 40.472279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902813, 40.890217, 40.427067>,  <35.942101, 41.281086, 40.351711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902813, 40.890217, 40.427067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506101, 0.212040, 0.836003,
		-0.856863, -0.013232, -0.515374,
		-0.098218, -0.977171, 0.188387,
		35.873348, 40.597065, 40.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209827, 41.134815, 40.479450>,  <35.942101, 41.281086, 40.351711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209827, 41.134815, 40.479450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430004, 40.858566, 40.667091>,  <35.562111, 40.692818, 40.779675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430004, 40.858566, 40.667091>,  <35.209827, 41.134815, 40.479450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430004, 40.858566, 40.667091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357621, 0.312680, 0.879965,
		-0.754402, -0.652129, -0.074869,
		0.550440, -0.690623, 0.469101,
		35.595135, 40.651379, 40.807823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826843, 40.836472, 41.018456>,  <35.209827, 41.134815, 40.479450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826843, 40.836472, 41.018456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189186, 40.734585, 41.153835>,  <35.406590, 40.673450, 41.235062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189186, 40.734585, 41.153835>,  <34.826843, 40.836472, 41.018456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189186, 40.734585, 41.153835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329705, 0.077636, 0.940886,
		-0.265939, -0.963893, -0.013656,
		0.905854, -0.254721, 0.338447,
		35.460941, 40.658169, 41.255371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744205, 40.309410, 41.568226>,  <34.826843, 40.836472, 41.018456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744205, 40.309410, 41.568226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105690, 40.473064, 41.618702>,  <35.322578, 40.571255, 41.648987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105690, 40.473064, 41.618702>,  <34.744205, 40.309410, 41.568226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105690, 40.473064, 41.618702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216504, 0.182418, 0.959088,
		0.369376, -0.894055, 0.253432,
		0.903708, 0.409133, 0.126185,
		35.376801, 40.595802, 41.656559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999897, 40.039108, 42.187901>,  <34.744205, 40.309410, 41.568226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999897, 40.039108, 42.187901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199532, 40.381443, 42.133560>,  <35.319313, 40.586845, 42.100956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199532, 40.381443, 42.133560>,  <34.999897, 40.039108, 42.187901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199532, 40.381443, 42.133560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200686, 0.266669, 0.942662,
		0.842993, -0.443206, 0.304845,
		0.499086, 0.855837, -0.135855,
		35.349258, 40.638195, 42.092804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436344, 40.107319, 42.793278>,  <34.999897, 40.039108, 42.187901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436344, 40.107319, 42.793278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392433, 40.479424, 42.653240>,  <35.366085, 40.702686, 42.569218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392433, 40.479424, 42.653240>,  <35.436344, 40.107319, 42.793278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392433, 40.479424, 42.653240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152867, 0.332228, 0.930729,
		0.982130, 0.155695, 0.105734,
		-0.109782, 0.930260, -0.350092,
		35.359497, 40.758503, 42.548214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827751, 40.510380, 43.256695>,  <35.436344, 40.107319, 42.793278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827751, 40.510380, 43.256695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580185, 40.756546, 43.061474>,  <35.431644, 40.904247, 42.944340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580185, 40.756546, 43.061474>,  <35.827751, 40.510380, 43.256695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580185, 40.756546, 43.061474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143370, 0.522412, 0.840554,
		0.772258, 0.590208, -0.235098,
		-0.618920, 0.615419, -0.488055,
		35.394508, 40.941174, 42.915058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131302, 41.074413, 43.533775>,  <35.827751, 40.510380, 43.256695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131302, 41.074413, 43.533775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785004, 41.179214, 43.363205>,  <35.577225, 41.242096, 43.260860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785004, 41.179214, 43.363205>,  <36.131302, 41.074413, 43.533775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785004, 41.179214, 43.363205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272092, 0.468730, 0.840392,
		0.420062, 0.843593, -0.334513,
		-0.865745, 0.261998, -0.426430,
		35.525280, 41.257812, 43.235275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999630, 41.775673, 43.737671>,  <36.131302, 41.074413, 43.533775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999630, 41.775673, 43.737671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635025, 41.630997, 43.659370>,  <35.416260, 41.544189, 43.612389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635025, 41.630997, 43.659370>,  <35.999630, 41.775673, 43.737671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635025, 41.630997, 43.659370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356914, 0.459223, 0.813466,
		-0.204331, 0.811353, -0.547682,
		-0.911516, -0.361692, -0.195750,
		35.361568, 41.522488, 43.600647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608112, 42.293541, 43.672466>,  <35.999630, 41.775673, 43.737671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608112, 42.293541, 43.672466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333229, 42.022163, 43.776348>,  <35.168297, 41.859337, 43.838676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333229, 42.022163, 43.776348>,  <35.608112, 42.293541, 43.672466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333229, 42.022163, 43.776348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231953, 0.543709, 0.806584,
		-0.688432, 0.494053, -0.531011,
		-0.687211, -0.678449, 0.259709,
		35.127068, 41.818630, 43.854259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080994, 42.698547, 43.950508>,  <35.608112, 42.293541, 43.672466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080994, 42.698547, 43.950508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972027, 42.329384, 44.059345>,  <34.906647, 42.107887, 44.124645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972027, 42.329384, 44.059345>,  <35.080994, 42.698547, 43.950508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972027, 42.329384, 44.059345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487344, 0.376178, 0.788027,
		-0.829629, 0.082071, -0.552250,
		-0.272419, -0.922906, 0.272091,
		34.890301, 42.052513, 44.140972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.379776, 42.766510, 44.046341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462322, 42.424419, 44.236500>,  <34.511852, 42.219166, 44.350594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462322, 42.424419, 44.236500>,  <34.379776, 42.766510, 44.046341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462322, 42.424419, 44.236500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653351, 0.241232, 0.717593,
		-0.728385, -0.458686, -0.508981,
		0.206368, -0.855228, 0.475393,
		34.524231, 42.167850, 44.379116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701057, 42.480503, 44.328472>,  <34.379776, 42.766510, 44.046341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701057, 42.480503, 44.328472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981018, 42.314682, 44.561119>,  <34.148994, 42.215191, 44.700706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981018, 42.314682, 44.561119>,  <33.701057, 42.480503, 44.328472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981018, 42.314682, 44.561119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596549, 0.108502, 0.795208,
		-0.392762, -0.903534, -0.171359,
		0.699905, -0.414552, 0.581618,
		34.190990, 42.190315, 44.735603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299179, 42.059231, 44.759483>,  <33.701057, 42.480503, 44.328472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299179, 42.059231, 44.759483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652637, 42.130600, 44.932610>,  <33.864712, 42.173420, 45.036484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652637, 42.130600, 44.932610>,  <33.299179, 42.059231, 44.759483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652637, 42.130600, 44.932610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448950, 0.060924, 0.891478,
		0.132690, -0.982066, 0.133937,
		0.883650, 0.178421, 0.432814,
		33.917732, 42.184124, 45.062454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329750, 41.613602, 45.363445>,  <33.299179, 42.059231, 44.759483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329750, 41.613602, 45.363445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624878, 41.860447, 45.472847>,  <33.801952, 42.008553, 45.538486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624878, 41.860447, 45.472847>,  <33.329750, 41.613602, 45.363445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624878, 41.860447, 45.472847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386875, 0.054574, 0.920516,
		0.553134, -0.784982, 0.279010,
		0.737815, 0.617110, 0.273503,
		33.846222, 42.045582, 45.554897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463921, 41.415890, 46.062817>,  <33.329750, 41.613602, 45.363445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463921, 41.415890, 46.062817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647633, 41.770870, 46.047356>,  <33.757862, 41.983856, 46.038078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647633, 41.770870, 46.047356>,  <33.463921, 41.415890, 46.062817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647633, 41.770870, 46.047356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356445, 0.223983, 0.907072,
		0.813638, -0.402824, 0.419198,
		0.459283, 0.887449, -0.038657,
		33.785419, 42.037106, 46.035759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842430, 41.461887, 46.614422>,  <33.463921, 41.415890, 46.062817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842430, 41.461887, 46.614422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764610, 41.834766, 46.492329>,  <33.717918, 42.058495, 46.419075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764610, 41.834766, 46.492329>,  <33.842430, 41.461887, 46.614422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764610, 41.834766, 46.492329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232853, 0.258390, 0.937557,
		0.952853, 0.253478, 0.166794,
		-0.194552, 0.932193, -0.305230,
		33.706245, 42.114426, 46.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079227, 41.848793, 47.173897>,  <33.842430, 41.461887, 46.614422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079227, 41.848793, 47.173897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848450, 42.100864, 46.966049>,  <33.709984, 42.252110, 46.841339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848450, 42.100864, 46.966049>,  <34.079227, 41.848793, 47.173897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848450, 42.100864, 46.966049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518840, 0.208574, 0.829036,
		0.630822, 0.747910, 0.206626,
		-0.576948, 0.630180, -0.519619,
		33.675365, 42.289917, 46.810165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119541, 42.528816, 47.506828>,  <34.079227, 41.848793, 47.173897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119541, 42.528816, 47.506828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779858, 42.523495, 47.295670>,  <33.576050, 42.520302, 47.168976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779858, 42.523495, 47.295670>,  <34.119541, 42.528816, 47.506828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779858, 42.523495, 47.295670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491955, 0.383227, 0.781740,
		0.191906, 0.923559, -0.331981,
		-0.849207, -0.013299, -0.527892,
		33.525097, 42.519505, 47.137302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880829, 43.261116, 47.667507>,  <34.119541, 42.528816, 47.506828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880829, 43.261116, 47.667507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596352, 43.017590, 47.526909>,  <33.425667, 42.871475, 47.442551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596352, 43.017590, 47.526909>,  <33.880829, 43.261116, 47.667507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596352, 43.017590, 47.526909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614279, 0.295048, 0.731853,
		-0.341857, 0.736403, -0.583818,
		-0.711193, -0.608816, -0.351493,
		33.382992, 42.834946, 47.421459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177666, 43.672581, 47.634274>,  <33.880829, 43.261116, 47.667507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177666, 43.672581, 47.634274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098091, 43.280872, 47.649487>,  <33.050346, 43.045845, 47.658615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098091, 43.280872, 47.649487>,  <33.177666, 43.672581, 47.634274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098091, 43.280872, 47.649487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578751, 0.148716, 0.801829,
		-0.790866, 0.137504, -0.596341,
		-0.198940, -0.979273, 0.038034,
		33.038410, 42.987091, 47.660896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412716, 43.607883, 47.617409>,  <33.177666, 43.672581, 47.634274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412716, 43.607883, 47.617409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.560642, 43.275856, 47.784370>,  <32.649399, 43.076641, 47.884548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.560642, 43.275856, 47.784370>,  <32.412716, 43.607883, 47.617409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560642, 43.275856, 47.784370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587606, 0.139040, 0.797112,
		-0.719693, -0.540050, -0.436335,
		0.369812, -0.830069, 0.417403,
		32.671585, 43.026836, 47.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811920, 43.126453, 47.774471>,  <32.412716, 43.607883, 47.617409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811920, 43.126453, 47.774471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133701, 43.066746, 48.004452>,  <32.326771, 43.030922, 48.142441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.133701, 43.066746, 48.004452>,  <31.811920, 43.126453, 47.774471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133701, 43.066746, 48.004452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551159, 0.173409, 0.816182,
		-0.221530, -0.973473, 0.057231,
		0.804455, -0.149266, 0.574954,
		32.375038, 43.021965, 48.176937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403778, 42.983803, 48.418648>,  <31.811920, 43.126453, 47.774471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403778, 42.983803, 48.418648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.792597, 42.993065, 48.512108>,  <32.025887, 42.998623, 48.568184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.792597, 42.993065, 48.512108>,  <31.403778, 42.983803, 48.418648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792597, 42.993065, 48.512108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231134, -0.080677, 0.969571,
		0.041306, -0.996471, -0.073068,
		0.972045, 0.023160, 0.233650,
		32.084209, 43.000011, 48.582203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420336, 42.421364, 48.756790>,  <31.403778, 42.983803, 48.418648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420336, 42.421364, 48.756790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709852, 42.659756, 48.895893>,  <31.883562, 42.802792, 48.979355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709852, 42.659756, 48.895893>,  <31.420336, 42.421364, 48.756790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709852, 42.659756, 48.895893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252480, -0.240286, 0.937292,
		0.642169, -0.766205, -0.023444,
		0.723791, 0.595981, 0.347755,
		31.926991, 42.838551, 49.000221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556503, 42.083130, 49.414688>,  <31.420336, 42.421364, 48.756790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556503, 42.083130, 49.414688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739164, 42.436256, 49.458691>,  <31.848761, 42.648132, 49.485092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739164, 42.436256, 49.458691>,  <31.556503, 42.083130, 49.414688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739164, 42.436256, 49.458691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124092, -0.059230, 0.990501,
		0.880947, -0.465967, 0.082503,
		0.456654, 0.882817, 0.110002,
		31.876162, 42.701103, 49.491692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990614, 42.003357, 49.936264>,  <31.556503, 42.083130, 49.414688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990614, 42.003357, 49.936264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921122, 42.397041, 49.922668>,  <31.879427, 42.633251, 49.914513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921122, 42.397041, 49.922668>,  <31.990614, 42.003357, 49.936264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921122, 42.397041, 49.922668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049181, 0.043139, 0.997858,
		0.983564, 0.171686, -0.055899,
		-0.173730, 0.984207, -0.033987,
		31.869003, 42.692303, 49.912472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413277, 42.370152, 50.445404>,  <31.990614, 42.003357, 49.936264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413277, 42.370152, 50.445404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111660, 42.624737, 50.380482>,  <31.930691, 42.777489, 50.341526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111660, 42.624737, 50.380482>,  <32.413277, 42.370152, 50.445404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111660, 42.624737, 50.380482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074035, 0.163177, 0.983815,
		0.652645, 0.753851, -0.075921,
		-0.754038, 0.636461, -0.162308,
		31.885448, 42.815674, 50.331791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576744, 42.872978, 50.905788>,  <32.413277, 42.370152, 50.445404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576744, 42.872978, 50.905788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190414, 42.926971, 50.817284>,  <31.958616, 42.959366, 50.764183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190414, 42.926971, 50.817284>,  <32.576744, 42.872978, 50.905788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190414, 42.926971, 50.817284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202029, 0.142669, 0.968932,
		0.162356, 0.980523, -0.110523,
		-0.965828, 0.134983, -0.221257,
		31.900665, 42.967464, 50.750908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457569, 43.449280, 51.208660>,  <32.576744, 42.872978, 50.905788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457569, 43.449280, 51.208660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087143, 43.309361, 51.152042>,  <31.864885, 43.225410, 51.118073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087143, 43.309361, 51.152042>,  <32.457569, 43.449280, 51.208660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087143, 43.309361, 51.152042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242097, 0.263033, 0.933918,
		-0.289453, 0.899141, -0.328272,
		-0.926070, -0.349799, -0.141544,
		31.809322, 43.204422, 51.109581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059998, 43.886528, 51.535904>,  <32.457569, 43.449280, 51.208660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059998, 43.886528, 51.535904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838703, 43.553360, 51.530579>,  <31.705927, 43.353458, 51.527382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838703, 43.553360, 51.530579>,  <32.059998, 43.886528, 51.535904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838703, 43.553360, 51.530579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179641, 0.103682, 0.978253,
		-0.813426, 0.543593, -0.206987,
		-0.553233, -0.832920, -0.013315,
		31.672733, 43.303482, 51.526585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503420, 44.059978, 51.904392>,  <32.059998, 43.886528, 51.535904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503420, 44.059978, 51.904392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.458645, 43.662537, 51.910362>,  <31.431780, 43.424072, 51.913944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.458645, 43.662537, 51.910362>,  <31.503420, 44.059978, 51.904392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458645, 43.662537, 51.910362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209369, 0.038267, 0.977088,
		-0.971409, 0.106248, -0.212313,
		-0.111938, -0.993603, 0.014928,
		31.425064, 43.364456, 51.914841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833778, 43.904911, 52.149273>,  <31.503420, 44.059978, 51.904392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833778, 43.904911, 52.149273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044340, 43.577652, 52.241821>,  <31.170677, 43.381298, 52.297352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044340, 43.577652, 52.241821>,  <30.833778, 43.904911, 52.149273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044340, 43.577652, 52.241821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267399, 0.099015, 0.958485,
		-0.807092, -0.566418, -0.166650,
		0.526403, -0.818148, 0.231374,
		31.202261, 43.332207, 52.311234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478067, 43.184849, 52.481045>,  <30.833778, 43.904911, 52.149273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478067, 43.184849, 52.481045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858809, 43.211735, 52.600681>,  <31.087254, 43.227867, 52.672462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858809, 43.211735, 52.600681>,  <30.478067, 43.184849, 52.481045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858809, 43.211735, 52.600681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293980, -0.076399, 0.952753,
		0.086896, -0.994809, -0.052959,
		0.951853, 0.067222, 0.299092,
		31.144365, 43.231899, 52.690411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835281, 43.144634, 52.124741>,  <30.478067, 43.184849, 52.481045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835281, 43.144634, 52.124741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655209, 43.394638, 52.379833>,  <29.547165, 43.544640, 52.532890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655209, 43.394638, 52.379833>,  <29.835281, 43.144634, 52.124741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655209, 43.394638, 52.379833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892906, 0.309094, 0.327383,
		0.007498, 0.716816, -0.697222,
		-0.450180, 0.625009, 0.637732,
		29.520155, 43.582142, 52.571152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491026, 43.647358, 51.891106>,  <29.835281, 43.144634, 52.124741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491026, 43.647358, 51.891106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136284, 43.828175, 51.852859>,  <28.923439, 43.936665, 51.829910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136284, 43.828175, 51.852859>,  <29.491026, 43.647358, 51.891106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136284, 43.828175, 51.852859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050348, -0.300257, -0.952529,
		-0.459295, -0.839942, 0.289044,
		-0.886856, 0.452044, -0.095617,
		28.870228, 43.963787, 51.824173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965733, 43.232372, 51.589672>,  <29.491026, 43.647358, 51.891106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965733, 43.232372, 51.589672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832901, 43.595615, 51.487637>,  <28.753202, 43.813560, 51.426414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832901, 43.595615, 51.487637>,  <28.965733, 43.232372, 51.589672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832901, 43.595615, 51.487637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100707, -0.303022, -0.947648,
		-0.937860, -0.289007, 0.192080,
		-0.332081, 0.908104, -0.255087,
		28.733276, 43.868046, 51.411110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532175, 43.095284, 51.105518>,  <28.965733, 43.232372, 51.589672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532175, 43.095284, 51.105518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561489, 43.488075, 51.035835>,  <28.579077, 43.723751, 50.994026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561489, 43.488075, 51.035835>,  <28.532175, 43.095284, 51.105518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561489, 43.488075, 51.035835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176443, -0.184684, -0.966830,
		-0.981579, 0.040116, -0.186798,
		0.073284, 0.981979, -0.174204,
		28.583475, 43.782669, 50.983574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030714, 43.229557, 50.646114>,  <28.532175, 43.095284, 51.105518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030714, 43.229557, 50.646114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291746, 43.530895, 50.613575>,  <28.448366, 43.711697, 50.594051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291746, 43.530895, 50.613575>,  <28.030714, 43.229557, 50.646114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291746, 43.530895, 50.613575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031179, -0.133961, -0.990496,
		-0.757078, 0.643841, -0.110908,
		0.652580, 0.753341, -0.081344,
		28.487520, 43.756897, 50.589172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960157, 43.467625, 50.000381>,  <28.030714, 43.229557, 50.646114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960157, 43.467625, 50.000381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.324976, 43.604893, 50.090187>,  <28.543867, 43.687252, 50.144070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.324976, 43.604893, 50.090187>,  <27.960157, 43.467625, 50.000381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324976, 43.604893, 50.090187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320683, -0.255599, -0.912048,
		-0.255599, 0.903828, -0.343167,
		0.912048, 0.343167, 0.224511,
		28.598591, 43.707844, 50.157539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206621, 43.818565, 49.429173>,  <27.960157, 43.467625, 50.000381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206621, 43.818565, 49.429173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.543434, 43.761917, 49.637375>,  <28.745522, 43.727928, 49.762295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.543434, 43.761917, 49.637375>,  <28.206621, 43.818565, 49.429173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543434, 43.761917, 49.637375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507429, -0.119447, -0.853375,
		0.183025, 0.982689, -0.028718,
		0.842032, -0.141617, 0.520506,
		28.796043, 43.719433, 49.793526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794060, 44.251881, 49.124664>,  <28.206621, 43.818565, 49.429173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794060, 44.251881, 49.124664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975578, 43.953209, 49.319202>,  <29.084490, 43.774006, 49.435925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975578, 43.953209, 49.319202>,  <28.794060, 44.251881, 49.124664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975578, 43.953209, 49.319202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571102, -0.175262, -0.801952,
		0.684041, 0.641677, 0.346898,
		0.453796, -0.746682, 0.486349,
		29.111717, 43.729206, 49.465107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471907, 44.331314, 48.948589>,  <28.794060, 44.251881, 49.124664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471907, 44.331314, 48.948589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413296, 43.948978, 49.050495>,  <29.378130, 43.719578, 49.111637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413296, 43.948978, 49.050495>,  <29.471907, 44.331314, 48.948589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413296, 43.948978, 49.050495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527939, -0.293361, -0.797007,
		0.836547, 0.017716, 0.547609,
		-0.146527, -0.955838, 0.254763,
		29.369337, 43.662228, 49.126923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054945, 44.055363, 48.751183>,  <29.471907, 44.331314, 48.948589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054945, 44.055363, 48.751183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821783, 43.734661, 48.803974>,  <29.681887, 43.542240, 48.835651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821783, 43.734661, 48.803974>,  <30.054945, 44.055363, 48.751183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821783, 43.734661, 48.803974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492373, -0.477743, -0.727551,
		0.646369, -0.359107, 0.673238,
		-0.582903, -0.801751, 0.131984,
		29.646912, 43.494137, 48.843571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493456, 43.500057, 48.800060>,  <30.054945, 44.055363, 48.751183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493456, 43.500057, 48.800060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146244, 43.347977, 48.672329>,  <29.937916, 43.256729, 48.595692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146244, 43.347977, 48.672329>,  <30.493456, 43.500057, 48.800060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146244, 43.347977, 48.672329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477907, -0.465378, -0.745003,
		0.134642, -0.799294, 0.585663,
		-0.868030, -0.380201, -0.319328,
		29.885836, 43.233917, 48.576530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744080, 42.868385, 48.735889>,  <30.493456, 43.500057, 48.800060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744080, 42.868385, 48.735889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.416971, 42.909843, 48.509438>,  <30.220705, 42.934719, 48.373566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.416971, 42.909843, 48.509438>,  <30.744080, 42.868385, 48.735889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416971, 42.909843, 48.509438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494797, -0.375827, -0.783537,
		-0.293976, -0.920875, 0.256059,
		-0.817774, 0.103644, -0.566130,
		30.171638, 42.940937, 48.339600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615501, 42.214828, 48.412159>,  <30.744080, 42.868385, 48.735889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615501, 42.214828, 48.412159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412411, 42.488041, 48.202137>,  <30.290556, 42.651970, 48.076126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412411, 42.488041, 48.202137>,  <30.615501, 42.214828, 48.412159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412411, 42.488041, 48.202137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470986, -0.290246, -0.833024,
		-0.721377, -0.670241, -0.174333,
		-0.507727, 0.683033, -0.525051,
		30.260092, 42.692951, 48.044621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547647, 41.882637, 47.848156>,  <30.615501, 42.214828, 48.412159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547647, 41.882637, 47.848156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458838, 42.252052, 47.723076>,  <30.405552, 42.473701, 47.648026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458838, 42.252052, 47.723076>,  <30.547647, 41.882637, 47.848156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458838, 42.252052, 47.723076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347279, -0.224776, -0.910425,
		-0.911099, -0.310734, -0.270819,
		-0.222026, 0.923537, -0.312704,
		30.392229, 42.529114, 47.629265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147907, 41.775185, 47.197182>,  <30.547647, 41.882637, 47.848156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147907, 41.775185, 47.197182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308542, 42.141502, 47.194172>,  <30.404922, 42.361294, 47.192364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308542, 42.141502, 47.194172>,  <30.147907, 41.775185, 47.197182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308542, 42.141502, 47.194172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404603, -0.184786, -0.895628,
		-0.821598, 0.356628, -0.444739,
		0.401588, 0.915790, -0.007527,
		30.429018, 42.416241, 47.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922678, 41.847149, 46.584732>,  <30.147907, 41.775185, 47.197182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922678, 41.847149, 46.584732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199656, 42.125862, 46.659576>,  <30.365843, 42.293091, 46.704483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199656, 42.125862, 46.659576>,  <29.922678, 41.847149, 46.584732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199656, 42.125862, 46.659576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426993, -0.186740, -0.884763,
		-0.581549, 0.692544, -0.426830,
		0.692443, 0.696786, 0.187114,
		30.407389, 42.334900, 46.715710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002525, 42.229729, 45.953590>,  <29.922678, 41.847149, 46.584732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002525, 42.229729, 45.953590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.338852, 42.350842, 46.133080>,  <30.540648, 42.423508, 46.240772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.338852, 42.350842, 46.133080>,  <30.002525, 42.229729, 45.953590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338852, 42.350842, 46.133080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444490, 0.086937, -0.891555,
		-0.308956, 0.949087, -0.061485,
		0.840818, 0.302781, 0.448719,
		30.591097, 42.441677, 46.267696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147228, 42.757992, 45.575653>,  <30.002525, 42.229729, 45.953590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147228, 42.757992, 45.575653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475866, 42.587677, 45.727280>,  <30.673048, 42.485489, 45.818256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475866, 42.587677, 45.727280>,  <30.147228, 42.757992, 45.575653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475866, 42.587677, 45.727280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368965, -0.109716, -0.922945,
		0.434566, 0.898147, 0.066958,
		0.821594, -0.425786, 0.379064,
		30.722345, 42.459942, 45.841000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735167, 43.003193, 45.196518>,  <30.147228, 42.757992, 45.575653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735167, 43.003193, 45.196518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869757, 42.665268, 45.362930>,  <30.950510, 42.462513, 45.462776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869757, 42.665268, 45.362930>,  <30.735167, 43.003193, 45.196518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869757, 42.665268, 45.362930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605377, -0.144353, -0.782740,
		0.721321, 0.515227, 0.462857,
		0.336474, -0.844809, 0.416032,
		30.970699, 42.411823, 45.487740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456331, 43.039299, 45.239998>,  <30.735167, 43.003193, 45.196518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456331, 43.039299, 45.239998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412558, 42.643494, 45.277691>,  <31.386293, 42.406010, 45.300304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412558, 42.643494, 45.277691>,  <31.456331, 43.039299, 45.239998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412558, 42.643494, 45.277691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392451, -0.130109, -0.910524,
		0.913240, -0.062661, 0.402575,
		-0.109433, -0.989518, 0.094229,
		31.379728, 42.346638, 45.305958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116680, 42.599728, 45.035625>,  <31.456331, 43.039299, 45.239998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116680, 42.599728, 45.035625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828447, 42.322796, 45.020390>,  <31.655508, 42.156639, 45.011250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828447, 42.322796, 45.020390>,  <32.116680, 42.599728, 45.035625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828447, 42.322796, 45.020390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322653, -0.286184, -0.902216,
		0.613729, -0.662405, 0.429599,
		-0.720577, -0.692328, -0.038087,
		31.612274, 42.115097, 45.008965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.574947, 31.276037, 40.719337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230270, 31.473360, 40.766891>,  <39.023464, 31.591755, 40.795425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230270, 31.473360, 40.766891>,  <39.574947, 31.276037, 40.719337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230270, 31.473360, 40.766891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265701, 0.638241, -0.722531,
		-0.432309, -0.591012, -0.681039,
		-0.861691, 0.493309, 0.118885,
		38.971764, 31.621353, 40.802555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205002, 31.279482, 40.018089>,  <39.574947, 31.276037, 40.719337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205002, 31.279482, 40.018089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066071, 31.570377, 40.254898>,  <38.982712, 31.744915, 40.396984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066071, 31.570377, 40.254898>,  <39.205002, 31.279482, 40.018089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066071, 31.570377, 40.254898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046363, 0.643867, -0.763731,
		-0.936597, -0.237818, -0.257350,
		-0.347329, 0.727240, 0.592018,
		38.961872, 31.788549, 40.432503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720818, 31.598579, 39.609848>,  <39.205002, 31.279482, 40.018089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720818, 31.598579, 39.609848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776089, 31.865341, 39.902737>,  <38.809250, 32.025398, 40.078468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776089, 31.865341, 39.902737>,  <38.720818, 31.598579, 39.609848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776089, 31.865341, 39.902737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004273, 0.739706, -0.672917,
		-0.990399, 0.089853, 0.105059,
		0.138176, 0.666905, 0.732220,
		38.817543, 32.065411, 40.122402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357399, 32.217934, 39.358509>,  <38.720818, 31.598579, 39.609848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357399, 32.217934, 39.358509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601776, 32.342503, 39.649647>,  <38.748402, 32.417244, 39.824329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601776, 32.342503, 39.649647>,  <38.357399, 32.217934, 39.358509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601776, 32.342503, 39.649647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240016, 0.803244, -0.545153,
		-0.754411, 0.507754, 0.415992,
		0.610947, 0.311425, 0.727845,
		38.785061, 32.435928, 39.868000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195023, 32.971302, 39.412888>,  <38.357399, 32.217934, 39.358509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195023, 32.971302, 39.412888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563541, 32.874699, 39.534790>,  <38.784653, 32.816738, 39.607933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563541, 32.874699, 39.534790>,  <38.195023, 32.971302, 39.412888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563541, 32.874699, 39.534790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354754, 0.842965, -0.404426,
		-0.159230, 0.480712, 0.862300,
		0.921301, -0.241507, 0.304760,
		38.839931, 32.802246, 39.626217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436634, 33.590462, 39.607910>,  <38.195023, 32.971302, 39.412888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436634, 33.590462, 39.607910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740795, 33.335773, 39.556740>,  <38.923294, 33.182961, 39.526039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740795, 33.335773, 39.556740>,  <38.436634, 33.590462, 39.607910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740795, 33.335773, 39.556740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553646, 0.738503, -0.384824,
		0.339497, 0.221799, 0.914083,
		0.760406, -0.636725, -0.127922,
		38.968918, 33.144756, 39.518364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911049, 33.945877, 39.950047>,  <38.436634, 33.590462, 39.607910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911049, 33.945877, 39.950047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077755, 33.699306, 39.682816>,  <39.177780, 33.551365, 39.522476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077755, 33.699306, 39.682816>,  <38.911049, 33.945877, 39.950047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077755, 33.699306, 39.682816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631622, 0.724921, -0.274852,
		0.653726, -0.307420, 0.691473,
		0.416769, -0.616427, -0.668073,
		39.202785, 33.514378, 39.482395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586178, 34.152908, 39.992542>,  <38.911049, 33.945877, 39.950047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586178, 34.152908, 39.992542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.589550, 33.941818, 39.652794>,  <39.591572, 33.815163, 39.448944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.589550, 33.941818, 39.652794>,  <39.586178, 34.152908, 39.992542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589550, 33.941818, 39.652794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615075, 0.672448, -0.411699,
		0.788424, -0.518958, 0.330258,
		0.008427, -0.527727, -0.849372,
		39.592079, 33.783501, 39.397984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283798, 34.056755, 39.800507>,  <39.586178, 34.152908, 39.992542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283798, 34.056755, 39.800507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104282, 33.983467, 39.450645>,  <39.996574, 33.939495, 39.240726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104282, 33.983467, 39.450645>,  <40.283798, 34.056755, 39.800507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104282, 33.983467, 39.450645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480567, 0.775705, -0.409068,
		0.753425, -0.603914, -0.260075,
		-0.448783, -0.183219, -0.874657,
		39.969646, 33.928501, 39.188248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852592, 34.083282, 39.292534>,  <40.283798, 34.056755, 39.800507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852592, 34.083282, 39.292534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531269, 34.113510, 39.056236>,  <40.338474, 34.131645, 38.914459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531269, 34.113510, 39.056236>,  <40.852592, 34.083282, 39.292534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531269, 34.113510, 39.056236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461326, 0.706277, -0.536983,
		0.376652, -0.703891, -0.602222,
		-0.803313, 0.075565, -0.590744,
		40.290276, 34.136181, 38.879013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082130, 33.995552, 38.650936>,  <40.852592, 34.083282, 39.292534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082130, 33.995552, 38.650936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738674, 34.193913, 38.599060>,  <40.532600, 34.312931, 38.567932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738674, 34.193913, 38.599060>,  <41.082130, 33.995552, 38.650936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738674, 34.193913, 38.599060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447133, 0.600917, -0.662549,
		-0.250625, -0.626880, -0.737705,
		-0.858638, 0.495903, -0.129694,
		40.481083, 34.342682, 38.560150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007576, 33.944389, 37.939579>,  <41.082130, 33.995552, 38.650936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007576, 33.944389, 37.939579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.758785, 34.238609, 38.046993>,  <40.609512, 34.415142, 38.111443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.758785, 34.238609, 38.046993>,  <41.007576, 33.944389, 37.939579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758785, 34.238609, 38.046993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271444, 0.524214, -0.807167,
		-0.734485, -0.429142, -0.525708,
		-0.621972, 0.735552, 0.268539,
		40.572193, 34.459274, 38.127556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658806, 34.214317, 37.429882>,  <41.007576, 33.944389, 37.939579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658806, 34.214317, 37.429882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659241, 34.531799, 37.673203>,  <40.659504, 34.722290, 37.819195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659241, 34.531799, 37.673203>,  <40.658806, 34.214317, 37.429882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659241, 34.531799, 37.673203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373151, 0.564040, -0.736626,
		-0.927770, 0.227789, -0.295558,
		0.001089, 0.793707, 0.608299,
		40.659569, 34.769913, 37.855694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401306, 34.813469, 37.051056>,  <40.658806, 34.214317, 37.429882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401306, 34.813469, 37.051056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633720, 34.958717, 37.342407>,  <40.773170, 35.045868, 37.517220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633720, 34.958717, 37.342407>,  <40.401306, 34.813469, 37.051056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633720, 34.958717, 37.342407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463062, 0.588478, -0.662772,
		-0.669303, 0.722381, 0.173780,
		0.581040, 0.363124, 0.728377,
		40.808033, 35.067654, 37.560921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296551, 35.601131, 36.945206>,  <40.401306, 34.813469, 37.051056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296551, 35.601131, 36.945206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604980, 35.559689, 37.196510>,  <40.790039, 35.534824, 37.347294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604980, 35.559689, 37.196510>,  <40.296551, 35.601131, 36.945206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604980, 35.559689, 37.196510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392483, 0.854283, -0.340820,
		-0.501404, 0.509379, 0.699376,
		0.771071, -0.103604, 0.628264,
		40.836304, 35.528606, 37.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365353, 36.255421, 37.382973>,  <40.296551, 35.601131, 36.945206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365353, 36.255421, 37.382973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711494, 36.054996, 37.378849>,  <40.919178, 35.934742, 37.376377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711494, 36.054996, 37.378849>,  <40.365353, 36.255421, 37.382973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711494, 36.054996, 37.378849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480261, 0.834958, -0.268690,
		0.143235, 0.227561, 0.963172,
		0.865351, -0.501060, -0.010307,
		40.971100, 35.904678, 37.375755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887291, 36.723213, 37.839069>,  <40.365353, 36.255421, 37.382973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887291, 36.723213, 37.839069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112915, 36.466469, 37.631283>,  <41.248291, 36.312424, 37.506611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112915, 36.466469, 37.631283>,  <40.887291, 36.723213, 37.839069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112915, 36.466469, 37.631283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639472, 0.737562, -0.216973,
		0.522408, -0.209801, 0.826483,
		0.564061, -0.641861, -0.519470,
		41.282135, 36.273911, 37.475441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527016, 36.997448, 37.905769>,  <40.887291, 36.723213, 37.839069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527016, 36.997448, 37.905769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575546, 36.769222, 37.580872>,  <41.604664, 36.632286, 37.385933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575546, 36.769222, 37.580872>,  <41.527016, 36.997448, 37.905769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575546, 36.769222, 37.580872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582261, 0.703623, -0.407292,
		0.803898, -0.423521, 0.417585,
		0.121326, -0.570565, -0.812241,
		41.611942, 36.598053, 37.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083019, 36.725250, 38.049412>,  <41.527016, 36.997448, 37.905769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083019, 36.725250, 38.049412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028522, 36.744141, 37.653591>,  <41.995827, 36.755474, 37.416100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028522, 36.744141, 37.653591>,  <42.083019, 36.725250, 38.049412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028522, 36.744141, 37.653591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667991, 0.742017, -0.056554,
		0.731592, -0.668715, -0.132639,
		-0.136238, 0.047227, -0.989550,
		41.987652, 36.758308, 37.356728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790630, 36.618828, 37.802776>,  <42.083019, 36.725250, 38.049412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790630, 36.618828, 37.802776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.574181, 36.799210, 37.518852>,  <42.444313, 36.907436, 37.348499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.574181, 36.799210, 37.518852>,  <42.790630, 36.618828, 37.802776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574181, 36.799210, 37.518852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683251, 0.727839, -0.058468,
		0.490261, -0.516617, -0.701963,
		-0.541121, 0.450952, -0.709810,
		42.411842, 36.934494, 37.305908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335175, 36.692299, 37.269341>,  <42.790630, 36.618828, 37.802776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335175, 36.692299, 37.269341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042282, 36.935360, 37.146313>,  <42.866547, 37.081196, 37.072498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042282, 36.935360, 37.146313>,  <43.335175, 36.692299, 37.269341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042282, 36.935360, 37.146313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679844, 0.625206, -0.383314,
		-0.040630, -0.489771, -0.870904,
		-0.732230, 0.607653, -0.307566,
		42.822613, 37.117657, 37.054043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492867, 36.902756, 36.563980>,  <43.335175, 36.692299, 37.269341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492867, 36.902756, 36.563980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268738, 37.175030, 36.752747>,  <43.134262, 37.338394, 36.866005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268738, 37.175030, 36.752747>,  <43.492867, 36.902756, 36.563980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268738, 37.175030, 36.752747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604686, 0.725541, -0.328551,
		-0.566033, 0.101265, -0.818139,
		-0.560323, 0.680688, 0.471913,
		43.100639, 37.379234, 36.894321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005959, 36.417286, 36.560036>,  <43.492867, 36.902756, 36.563980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005959, 36.417286, 36.560036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352100, 36.233677, 36.479576>,  <44.559784, 36.123512, 36.431301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352100, 36.233677, 36.479576>,  <44.005959, 36.417286, 36.560036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352100, 36.233677, 36.479576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414004, -0.880935, 0.229245,
		-0.282429, -0.115101, -0.952358,
		0.865352, -0.459026, -0.201150,
		44.611706, 36.095970, 36.419231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800877, 35.807388, 36.252941>,  <44.005959, 36.417286, 36.560036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800877, 35.807388, 36.252941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.178909, 35.753952, 36.372257>,  <44.405727, 35.721889, 36.443848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.178909, 35.753952, 36.372257>,  <43.800877, 35.807388, 36.252941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178909, 35.753952, 36.372257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251940, -0.879155, 0.404491,
		0.208211, -0.457428, -0.864528,
		0.945079, -0.133590, 0.298294,
		44.462433, 35.713875, 36.461746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059330, 35.201916, 35.950432>,  <43.800877, 35.807388, 36.252941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059330, 35.201916, 35.950432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271049, 35.266705, 36.283562>,  <44.398083, 35.305580, 36.483440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271049, 35.266705, 36.283562>,  <44.059330, 35.201916, 35.950432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271049, 35.266705, 36.283562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276561, -0.895054, 0.349845,
		0.802093, -0.415502, -0.428958,
		0.529302, 0.161976, 0.832828,
		44.429840, 35.315296, 36.533409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504292, 34.606228, 36.128849>,  <44.059330, 35.201916, 35.950432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504292, 34.606228, 36.128849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429558, 34.795837, 36.473034>,  <44.384716, 34.909603, 36.679546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429558, 34.795837, 36.473034>,  <44.504292, 34.606228, 36.128849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429558, 34.795837, 36.473034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307366, -0.860118, 0.407092,
		0.933070, -0.188418, 0.306398,
		-0.186835, 0.474021, 0.860463,
		44.373508, 34.938046, 36.731174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363155, 34.034687, 36.452038>,  <44.504292, 34.606228, 36.128849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363155, 34.034687, 36.452038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.297279, 34.327946, 36.715973>,  <44.257755, 34.503899, 36.874332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.297279, 34.327946, 36.715973>,  <44.363155, 34.034687, 36.452038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297279, 34.327946, 36.715973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387269, -0.663310, 0.640346,
		0.907139, -0.150075, 0.393163,
		-0.164689, 0.733142, 0.659834,
		44.247871, 34.547890, 36.913921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674789, 33.832821, 37.050861>,  <44.363155, 34.034687, 36.452038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674789, 33.832821, 37.050861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405109, 34.090771, 37.194855>,  <44.243301, 34.245541, 37.281250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405109, 34.090771, 37.194855>,  <44.674789, 33.832821, 37.050861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405109, 34.090771, 37.194855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320943, -0.694814, 0.643607,
		0.665171, 0.318382, 0.675411,
		-0.674198, 0.644877, 0.359987,
		44.202850, 34.284233, 37.302853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564449, 33.701038, 37.749210>,  <44.674789, 33.832821, 37.050861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564449, 33.701038, 37.749210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241760, 33.929298, 37.687832>,  <44.048145, 34.066254, 37.651005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241760, 33.929298, 37.687832>,  <44.564449, 33.701038, 37.749210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241760, 33.929298, 37.687832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467836, -0.458146, 0.755798,
		0.360999, 0.681510, 0.636571,
		-0.806727, 0.570654, -0.153445,
		43.999741, 34.100494, 37.641800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310143, 33.866886, 38.420689>,  <44.564449, 33.701038, 37.749210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310143, 33.866886, 38.420689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992054, 33.933739, 38.187557>,  <43.801201, 33.973850, 38.047680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992054, 33.933739, 38.187557>,  <44.310143, 33.866886, 38.420689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992054, 33.933739, 38.187557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591577, -0.424528, 0.685429,
		-0.132868, 0.889855, 0.436467,
		-0.795225, 0.167132, -0.582824,
		43.753487, 33.983879, 38.012711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765614, 34.181541, 38.946743>,  <44.310143, 33.866886, 38.420689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765614, 34.181541, 38.946743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595554, 34.044601, 38.611591>,  <43.493519, 33.962437, 38.410500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595554, 34.044601, 38.611591>,  <43.765614, 34.181541, 38.946743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595554, 34.044601, 38.611591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715187, -0.440311, 0.542801,
		-0.554756, 0.830013, -0.057646,
		-0.425150, -0.342350, -0.837881,
		43.468010, 33.941898, 38.360226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018951, 34.299522, 39.034733>,  <43.765614, 34.181541, 38.946743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018951, 34.299522, 39.034733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.076794, 34.011665, 38.763084>,  <43.111500, 33.838951, 38.600094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.076794, 34.011665, 38.763084>,  <43.018951, 34.299522, 39.034733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076794, 34.011665, 38.763084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625962, -0.598077, 0.500476,
		-0.766330, 0.352736, -0.536950,
		0.144602, -0.719640, -0.679124,
		43.120174, 33.795773, 38.559349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388245, 34.112999, 38.793770>,  <43.018951, 34.299522, 39.034733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388245, 34.112999, 38.793770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603088, 33.782169, 38.727482>,  <42.731995, 33.583672, 38.687710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603088, 33.782169, 38.727482>,  <42.388245, 34.112999, 38.793770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603088, 33.782169, 38.727482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738860, -0.556084, 0.380599,
		-0.406936, -0.081982, -0.909770,
		0.537111, -0.827073, -0.165717,
		42.764221, 33.534046, 38.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915417, 33.604786, 38.528961>,  <42.388245, 34.112999, 38.793770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915417, 33.604786, 38.528961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.221031, 33.369652, 38.635323>,  <42.404400, 33.228573, 38.699139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.221031, 33.369652, 38.635323>,  <41.915417, 33.604786, 38.528961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221031, 33.369652, 38.635323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645159, -0.692876, 0.322014,
		-0.005051, -0.417581, -0.908626,
		0.764032, -0.587834, 0.265906,
		42.450241, 33.193302, 38.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637661, 33.038475, 38.707020>,  <41.915417, 33.604786, 38.528961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637661, 33.038475, 38.707020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996689, 32.966125, 38.867847>,  <42.212105, 32.922718, 38.964344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996689, 32.966125, 38.867847>,  <41.637661, 33.038475, 38.707020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996689, 32.966125, 38.867847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414938, -0.654770, 0.631746,
		0.149001, -0.733868, -0.662749,
		0.897566, -0.180869, 0.402071,
		42.265961, 32.911865, 38.988468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740021, 32.365452, 38.555084>,  <41.637661, 33.038475, 38.707020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740021, 32.365452, 38.555084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.979198, 32.440487, 38.866795>,  <42.122707, 32.485508, 39.053822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.979198, 32.440487, 38.866795>,  <41.740021, 32.365452, 38.555084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979198, 32.440487, 38.866795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452149, -0.723830, 0.521182,
		0.661832, -0.663987, -0.347992,
		0.597946, 0.187591, 0.779275,
		42.158581, 32.496765, 39.100578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009995, 31.673353, 38.753777>,  <41.740021, 32.365452, 38.555084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009995, 31.673353, 38.753777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065620, 31.918201, 39.065151>,  <42.098995, 32.065109, 39.251976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065620, 31.918201, 39.065151>,  <42.009995, 31.673353, 38.753777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065620, 31.918201, 39.065151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378153, -0.693684, 0.613028,
		0.915238, -0.379621, 0.135007,
		0.139066, 0.612120, 0.778441,
		42.107342, 32.101837, 39.298683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099579, 31.254768, 39.297653>,  <42.009995, 31.673353, 38.753777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099579, 31.254768, 39.297653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.021450, 31.594059, 39.494576>,  <41.974575, 31.797634, 39.612728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.021450, 31.594059, 39.494576>,  <42.099579, 31.254768, 39.297653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021450, 31.594059, 39.494576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433930, -0.524907, 0.732241,
		0.879520, -0.070605, 0.470595,
		-0.195318, 0.848227, 0.492303,
		41.962856, 31.848526, 39.642265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158134, 31.052143, 40.011032>,  <42.099579, 31.254768, 39.297653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158134, 31.052143, 40.011032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930138, 31.380676, 40.001907>,  <41.793339, 31.577797, 39.996433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930138, 31.380676, 40.001907>,  <42.158134, 31.052143, 40.011032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930138, 31.380676, 40.001907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592961, -0.391973, 0.703388,
		0.568774, 0.414452, 0.710440,
		-0.569994, 0.821332, -0.022810,
		41.759140, 31.627075, 39.995064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059822, 31.367306, 40.683357>,  <42.158134, 31.052143, 40.011032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059822, 31.367306, 40.683357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753662, 31.466335, 40.445747>,  <41.569965, 31.525753, 40.303181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753662, 31.466335, 40.445747>,  <42.059822, 31.367306, 40.683357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753662, 31.466335, 40.445747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617098, -0.544266, 0.568300,
		-0.182610, 0.801550, 0.569360,
		-0.765404, 0.247574, -0.594023,
		41.524040, 31.540607, 40.267540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398296, 31.605194, 41.132072>,  <42.059822, 31.367306, 40.683357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398296, 31.605194, 41.132072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266258, 31.489986, 40.772499>,  <41.187035, 31.420862, 40.556755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266258, 31.489986, 40.772499>,  <41.398296, 31.605194, 41.132072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266258, 31.489986, 40.772499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768799, -0.470528, 0.433072,
		-0.547706, 0.834055, -0.066109,
		-0.330100, -0.288020, -0.898932,
		41.167229, 31.403580, 40.502819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753151, 31.785955, 41.122673>,  <41.398296, 31.605194, 41.132072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753151, 31.785955, 41.122673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792603, 31.494732, 40.851318>,  <40.816273, 31.319998, 40.688507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792603, 31.494732, 40.851318>,  <40.753151, 31.785955, 41.122673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792603, 31.494732, 40.851318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799420, -0.463943, 0.381687,
		-0.592621, 0.504668, -0.627782,
		0.098630, -0.728057, -0.678384,
		40.822193, 31.276314, 40.647804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.227119, 41.589577, 41.930168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937088, 41.318310, 41.978085>,  <35.763069, 41.155548, 42.006836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937088, 41.318310, 41.978085>,  <36.227119, 41.589577, 41.930168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937088, 41.318310, 41.978085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341182, -0.504845, -0.792923,
		0.598209, -0.534062, 0.597431,
		-0.725080, -0.678166, 0.119790,
		35.719563, 41.114861, 42.014023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620228, 40.930527, 41.753662>,  <36.227119, 41.589577, 41.930168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620228, 40.930527, 41.753662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230042, 40.843010, 41.743912>,  <35.995930, 40.790501, 41.738060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230042, 40.843010, 41.743912>,  <36.620228, 40.930527, 41.753662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230042, 40.843010, 41.743912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156134, -0.609501, -0.777258,
		0.155204, -0.761995, 0.628709,
		-0.975466, -0.218796, -0.024376,
		35.937401, 40.777370, 41.736599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622505, 40.241879, 41.417274>,  <36.620228, 40.930527, 41.753662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622505, 40.241879, 41.417274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243793, 40.368240, 41.392582>,  <36.016567, 40.444057, 41.377766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243793, 40.368240, 41.392582>,  <36.622505, 40.241879, 41.417274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243793, 40.368240, 41.392582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095549, -0.458974, -0.883297,
		-0.307372, -0.830390, 0.464732,
		-0.946780, 0.315905, -0.061733,
		35.959759, 40.463013, 41.374062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246044, 39.618118, 41.359005>,  <36.622505, 40.241879, 41.417274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246044, 39.618118, 41.359005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043575, 39.918934, 41.190140>,  <35.922092, 40.099422, 41.088821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043575, 39.918934, 41.190140>,  <36.246044, 39.618118, 41.359005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043575, 39.918934, 41.190140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075339, -0.449079, -0.890310,
		-0.859135, -0.482457, 0.170654,
		-0.506173, 0.752039, -0.422168,
		35.891724, 40.144547, 41.063488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790619, 39.358017, 40.800442>,  <36.246044, 39.618118, 41.359005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790619, 39.358017, 40.800442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800205, 39.743359, 40.693581>,  <35.805958, 39.974564, 40.629463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800205, 39.743359, 40.693581>,  <35.790619, 39.358017, 40.800442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800205, 39.743359, 40.693581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074243, -0.268207, -0.960496,
		-0.996952, 0.003187, -0.077951,
		0.023968, 0.963356, -0.267153,
		35.807396, 40.032364, 40.613434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334663, 39.460102, 40.215836>,  <35.790619, 39.358017, 40.800442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334663, 39.460102, 40.215836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584103, 39.772572, 40.203827>,  <35.733765, 39.960052, 40.196621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584103, 39.772572, 40.203827>,  <35.334663, 39.460102, 40.215836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584103, 39.772572, 40.203827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262103, -0.245104, -0.933395,
		-0.736500, 0.574191, -0.357592,
		0.623594, 0.781172, -0.030022,
		35.771179, 40.006924, 40.194820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054043, 39.977257, 39.636868>,  <35.334663, 39.460102, 40.215836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054043, 39.977257, 39.636868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445183, 39.997833, 39.718025>,  <35.679867, 40.010178, 39.766720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445183, 39.997833, 39.718025>,  <35.054043, 39.977257, 39.636868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445183, 39.997833, 39.718025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204814, -0.035208, -0.978168,
		-0.043176, 0.998055, -0.044965,
		0.977848, 0.051442, 0.202895,
		35.738537, 40.013268, 39.778893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410484, 40.264477, 39.097324>,  <35.054043, 39.977257, 39.636868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410484, 40.264477, 39.097324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734745, 40.107151, 39.270832>,  <35.929302, 40.012756, 39.374935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734745, 40.107151, 39.270832>,  <35.410484, 40.264477, 39.097324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734745, 40.107151, 39.270832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322576, -0.318262, -0.891434,
		0.488667, 0.862561, -0.131123,
		0.810647, -0.393317, 0.433765,
		35.977940, 39.989155, 39.400963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808628, 40.276340, 38.592598>,  <35.410484, 40.264477, 39.097324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808628, 40.276340, 38.592598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047386, 40.067059, 38.835899>,  <36.190639, 39.941490, 38.981880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047386, 40.067059, 38.835899>,  <35.808628, 40.276340, 38.592598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047386, 40.067059, 38.835899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412839, -0.449765, -0.792007,
		0.687956, 0.723854, -0.052460,
		0.596892, -0.523208, 0.608254,
		36.226456, 39.910095, 39.018375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440731, 40.279762, 38.237625>,  <35.808628, 40.276340, 38.592598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440731, 40.279762, 38.237625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449825, 39.961678, 38.479984>,  <36.455280, 39.770824, 38.625401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449825, 39.961678, 38.479984>,  <36.440731, 40.279762, 38.237625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449825, 39.961678, 38.479984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343270, -0.563002, -0.751794,
		0.938962, 0.225077, 0.260176,
		0.022732, -0.795216, 0.605900,
		36.456646, 39.723114, 38.661755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149113, 39.942719, 38.085606>,  <36.440731, 40.279762, 38.237625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149113, 39.942719, 38.085606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899696, 39.678852, 38.253429>,  <36.750046, 39.520531, 38.354126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899696, 39.678852, 38.253429>,  <37.149113, 39.942719, 38.085606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899696, 39.678852, 38.253429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331131, -0.709006, -0.622625,
		0.708197, -0.249305, 0.660533,
		-0.623545, -0.659664, 0.419564,
		36.712631, 39.480953, 38.379299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578564, 39.435154, 38.350197>,  <37.149113, 39.942719, 38.085606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578564, 39.435154, 38.350197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221985, 39.303493, 38.225624>,  <37.008038, 39.224499, 38.150879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221985, 39.303493, 38.225624>,  <37.578564, 39.435154, 38.350197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221985, 39.303493, 38.225624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453086, -0.637813, -0.622822,
		0.006364, -0.696316, 0.717707,
		-0.891444, -0.329147, -0.311433,
		36.954552, 39.204750, 38.132195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673485, 38.710617, 38.557087>,  <37.578564, 39.435154, 38.350197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673485, 38.710617, 38.557087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374722, 38.764587, 38.296650>,  <37.195461, 38.796970, 38.140388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374722, 38.764587, 38.296650>,  <37.673485, 38.710617, 38.557087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374722, 38.764587, 38.296650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405821, -0.683165, -0.607120,
		-0.526720, -0.717690, 0.455507,
		-0.746911, 0.134927, -0.651091,
		37.150650, 38.805065, 38.101322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230099, 38.065159, 38.367023>,  <37.673485, 38.710617, 38.557087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230099, 38.065159, 38.367023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234501, 38.333359, 38.070290>,  <37.237144, 38.494278, 37.892250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234501, 38.333359, 38.070290>,  <37.230099, 38.065159, 38.367023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234501, 38.333359, 38.070290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249154, -0.720317, -0.647352,
		-0.968401, -0.177705, -0.174986,
		0.011008, 0.670495, -0.741832,
		37.237804, 38.534508, 37.847740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956795, 37.975086, 38.275326>,  <37.230099, 38.065159, 38.367023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956795, 37.975086, 38.275326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232700, 37.699444, 38.364193>,  <38.398243, 37.534058, 38.417515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232700, 37.699444, 38.364193>,  <37.956795, 37.975086, 38.275326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232700, 37.699444, 38.364193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415989, -0.126039, 0.900593,
		-0.592600, -0.713618, -0.373597,
		0.689767, -0.689104, 0.222166,
		38.439629, 37.492714, 38.430843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611713, 37.414677, 38.409328>,  <37.956795, 37.975086, 38.275326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611713, 37.414677, 38.409328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970341, 37.382454, 38.583534>,  <38.185516, 37.363121, 38.688057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970341, 37.382454, 38.583534>,  <37.611713, 37.414677, 38.409328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970341, 37.382454, 38.583534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442899, -0.164060, 0.881434,
		0.000442, -0.983155, -0.182771,
		0.896572, -0.080559, 0.435511,
		38.239311, 37.358284, 38.714188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552547, 36.794018, 38.767250>,  <37.611713, 37.414677, 38.409328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552547, 36.794018, 38.767250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839386, 37.017616, 38.933769>,  <38.011490, 37.151775, 39.033680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839386, 37.017616, 38.933769>,  <37.552547, 36.794018, 38.767250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839386, 37.017616, 38.933769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396294, -0.164337, 0.903296,
		0.573350, -0.812724, 0.103681,
		0.717091, 0.558993, 0.416301,
		38.054512, 37.185314, 39.058659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723499, 36.470490, 39.348476>,  <37.552547, 36.794018, 38.767250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723499, 36.470490, 39.348476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821484, 36.853733, 39.407841>,  <37.880272, 37.083679, 39.443459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821484, 36.853733, 39.407841>,  <37.723499, 36.470490, 39.348476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821484, 36.853733, 39.407841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390537, -0.042600, 0.919601,
		0.887399, -0.283223, 0.363742,
		0.244957, 0.958108, 0.148412,
		37.894970, 37.141167, 39.452366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048550, 36.539566, 39.944855>,  <37.723499, 36.470490, 39.348476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048550, 36.539566, 39.944855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878223, 36.893147, 39.867592>,  <37.776028, 37.105297, 39.821236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878223, 36.893147, 39.867592>,  <38.048550, 36.539566, 39.944855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878223, 36.893147, 39.867592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349688, 0.036113, 0.936170,
		0.834506, 0.466178, 0.293730,
		-0.425815, 0.883953, -0.193154,
		37.750481, 37.158333, 39.809647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119881, 36.898266, 40.482754>,  <38.048550, 36.539566, 39.944855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119881, 36.898266, 40.482754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821083, 37.115921, 40.329956>,  <37.641804, 37.246513, 40.238277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821083, 37.115921, 40.329956>,  <38.119881, 36.898266, 40.482754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821083, 37.115921, 40.329956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424310, 0.052140, 0.904015,
		0.511828, 0.837373, 0.191936,
		-0.746990, 0.544140, -0.381992,
		37.596985, 37.279163, 40.215359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854992, 37.177780, 41.085743>,  <38.119881, 36.898266, 40.482754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854992, 37.177780, 41.085743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585999, 37.264439, 40.802666>,  <37.424603, 37.316433, 40.632820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585999, 37.264439, 40.802666>,  <37.854992, 37.177780, 41.085743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585999, 37.264439, 40.802666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692503, 0.153234, 0.704953,
		0.261167, 0.964150, 0.046980,
		-0.672482, 0.216645, -0.707696,
		37.384254, 37.329433, 40.590359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532215, 37.782623, 41.348888>,  <37.854992, 37.177780, 41.085743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532215, 37.782623, 41.348888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272945, 37.603390, 41.102608>,  <37.117382, 37.495850, 40.954838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272945, 37.603390, 41.102608>,  <37.532215, 37.782623, 41.348888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272945, 37.603390, 41.102608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724296, 0.113163, 0.680139,
		-0.235086, 0.886800, -0.397896,
		-0.648174, -0.448085, -0.615702,
		37.078491, 37.468964, 40.917896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974842, 38.227386, 41.361618>,  <37.532215, 37.782623, 41.348888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974842, 38.227386, 41.361618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808395, 37.893139, 41.218178>,  <36.708527, 37.692593, 41.132114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808395, 37.893139, 41.218178>,  <36.974842, 38.227386, 41.361618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808395, 37.893139, 41.218178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781898, 0.127492, 0.610231,
		-0.464200, 0.534315, -0.706418,
		-0.416118, -0.835615, -0.358598,
		36.683559, 37.642456, 41.110600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328995, 38.393620, 41.315182>,  <36.974842, 38.227386, 41.361618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328995, 38.393620, 41.315182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320545, 37.993938, 41.301655>,  <36.315475, 37.754128, 41.293537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320545, 37.993938, 41.301655>,  <36.328995, 38.393620, 41.315182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320545, 37.993938, 41.301655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846319, -0.000137, 0.532677,
		-0.532258, 0.039872, -0.845643,
		-0.021123, -0.999205, -0.033817,
		36.314209, 37.694176, 41.291508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668739, 38.229401, 40.991211>,  <36.328995, 38.393620, 41.315182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668739, 38.229401, 40.991211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792812, 37.913181, 41.202423>,  <35.867256, 37.723450, 41.329151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792812, 37.913181, 41.202423>,  <35.668739, 38.229401, 40.991211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792812, 37.913181, 41.202423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781080, 0.104708, 0.615590,
		-0.541943, -0.603381, -0.585003,
		0.310181, -0.790549, 0.528035,
		35.885868, 37.676018, 41.360832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045506, 37.867905, 41.270462>,  <35.668739, 38.229401, 40.991211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045506, 37.867905, 41.270462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331196, 37.716156, 41.505737>,  <35.502609, 37.625107, 41.646900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331196, 37.716156, 41.505737>,  <35.045506, 37.867905, 41.270462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331196, 37.716156, 41.505737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647051, -0.037493, 0.761524,
		-0.266846, -0.924486, -0.272250,
		0.714225, -0.379369, 0.588184,
		35.545464, 37.602345, 41.682194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788380, 37.241898, 41.499306>,  <35.045506, 37.867905, 41.270462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788380, 37.241898, 41.499306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064861, 37.364578, 41.761047>,  <35.230751, 37.438187, 41.918091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064861, 37.364578, 41.761047>,  <34.788380, 37.241898, 41.499306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064861, 37.364578, 41.761047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672659, -0.057917, 0.737683,
		0.264147, -0.950042, 0.166274,
		0.691199, 0.306702, 0.654352,
		35.272221, 37.456589, 41.957352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566044, 36.989243, 42.114960>,  <34.788380, 37.241898, 41.499306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566044, 36.989243, 42.114960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850430, 37.247742, 42.225880>,  <35.021061, 37.402843, 42.292431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850430, 37.247742, 42.225880>,  <34.566044, 36.989243, 42.114960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850430, 37.247742, 42.225880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486277, 0.166935, 0.857711,
		0.508006, -0.744642, 0.432941,
		0.710960, 0.646251, 0.277298,
		35.063717, 37.441616, 42.309071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121319, 36.527191, 42.608166>,  <34.566044, 36.989243, 42.114960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121319, 36.527191, 42.608166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024086, 36.139202, 42.611504>,  <33.965748, 35.906410, 42.613506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024086, 36.139202, 42.611504>,  <34.121319, 36.527191, 42.608166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024086, 36.139202, 42.611504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055186, -0.022419, -0.998224,
		0.968436, -0.242186, 0.058978,
		-0.243078, -0.969971, 0.008346,
		33.951164, 35.848209, 42.614006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563107, 36.173481, 42.152069>,  <34.121319, 36.527191, 42.608166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563107, 36.173481, 42.152069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232590, 35.948189, 42.151531>,  <34.034279, 35.813011, 42.151207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232590, 35.948189, 42.151531>,  <34.563107, 36.173481, 42.152069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232590, 35.948189, 42.151531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026379, -0.036315, -0.998992,
		0.562619, -0.825498, 0.044864,
		-0.826296, -0.563236, -0.001345,
		33.984699, 35.779217, 42.151127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664387, 35.594604, 41.563717>,  <34.563107, 36.173481, 42.152069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664387, 35.594604, 41.563717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277626, 35.564911, 41.661358>,  <34.045570, 35.547096, 41.719944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277626, 35.564911, 41.661358>,  <34.664387, 35.594604, 41.563717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277626, 35.564911, 41.661358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228182, -0.176446, -0.957497,
		0.114149, -0.981507, 0.153667,
		-0.966904, -0.074233, 0.244104,
		33.987556, 35.542641, 41.734589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408424, 34.861946, 41.331146>,  <34.664387, 35.594604, 41.563717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408424, 34.861946, 41.331146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099400, 35.114754, 41.355507>,  <33.913986, 35.266438, 41.370125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099400, 35.114754, 41.355507>,  <34.408424, 34.861946, 41.331146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099400, 35.114754, 41.355507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300111, -0.278940, -0.912209,
		-0.559543, -0.723013, 0.405173,
		-0.772558, 0.632017, 0.060905,
		33.867634, 35.304359, 41.373779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816189, 34.578518, 41.021206>,  <34.408424, 34.861946, 41.331146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816189, 34.578518, 41.021206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715515, 34.965523, 41.011669>,  <33.655109, 35.197727, 41.005947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715515, 34.965523, 41.011669>,  <33.816189, 34.578518, 41.021206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715515, 34.965523, 41.011669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426443, -0.132982, -0.894685,
		-0.868792, -0.215015, 0.446060,
		-0.251688, 0.967514, -0.023842,
		33.640007, 35.255775, 41.004517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094303, 34.548866, 40.728806>,  <33.816189, 34.578518, 41.021206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094303, 34.548866, 40.728806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190746, 34.934505, 40.684288>,  <33.248611, 35.165890, 40.657578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190746, 34.934505, 40.684288>,  <33.094303, 34.548866, 40.728806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190746, 34.934505, 40.684288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340652, -0.023313, -0.939900,
		-0.908749, 0.264529, 0.322800,
		0.241105, 0.964096, -0.111298,
		33.263077, 35.223736, 40.650898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465252, 34.914516, 40.488613>,  <33.094303, 34.548866, 40.728806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465252, 34.914516, 40.488613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804920, 35.090343, 40.371529>,  <33.008720, 35.195839, 40.301277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804920, 35.090343, 40.371529>,  <32.465252, 34.914516, 40.488613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804920, 35.090343, 40.371529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344438, 0.040830, -0.937921,
		-0.400331, 0.897280, 0.186077,
		0.849175, 0.439571, -0.292711,
		33.059673, 35.222214, 40.283714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316219, 35.381622, 39.930679>,  <32.465252, 34.914516, 40.488613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316219, 35.381622, 39.930679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713665, 35.344036, 39.905720>,  <32.952133, 35.321484, 39.890743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713665, 35.344036, 39.905720>,  <32.316219, 35.381622, 39.930679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713665, 35.344036, 39.905720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054065, 0.088784, -0.994583,
		0.099000, 0.991609, 0.083137,
		0.993618, -0.093969, -0.062401,
		33.011749, 35.315845, 39.887001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496120, 35.838482, 39.485493>,  <32.316219, 35.381622, 39.930679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496120, 35.838482, 39.485493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791855, 35.569183, 39.481213>,  <32.969296, 35.407604, 39.478645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791855, 35.569183, 39.481213>,  <32.496120, 35.838482, 39.485493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791855, 35.569183, 39.481213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054195, -0.043653, -0.997576,
		0.671149, 0.738126, -0.068761,
		0.739339, -0.673249, -0.010705,
		33.013657, 35.367210, 39.478001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979000, 36.056526, 39.016750>,  <32.496120, 35.838482, 39.485493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979000, 36.056526, 39.016750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061558, 35.667904, 39.063194>,  <33.111092, 35.434731, 39.091061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061558, 35.667904, 39.063194>,  <32.979000, 36.056526, 39.016750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061558, 35.667904, 39.063194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049895, -0.108057, -0.992892,
		0.977195, 0.210724, 0.026173,
		0.206398, -0.971555, 0.116106,
		33.123478, 35.376438, 39.098026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605427, 36.031570, 38.550781>,  <32.979000, 36.056526, 39.016750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605427, 36.031570, 38.550781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466766, 35.659653, 38.600281>,  <33.383572, 35.436501, 38.629978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466766, 35.659653, 38.600281>,  <33.605427, 36.031570, 38.550781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466766, 35.659653, 38.600281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072993, -0.158266, -0.984695,
		0.935150, -0.332313, 0.122731,
		-0.346651, -0.929796, 0.123746,
		33.362770, 35.380714, 38.637405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970734, 35.517330, 38.243397>,  <33.605427, 36.031570, 38.550781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970734, 35.517330, 38.243397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610004, 35.347351, 38.212044>,  <33.393566, 35.245365, 38.193233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610004, 35.347351, 38.212044>,  <33.970734, 35.517330, 38.243397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610004, 35.347351, 38.212044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168364, -0.178499, -0.969428,
		0.397963, -0.887446, 0.232520,
		-0.901820, -0.424945, -0.078378,
		33.339458, 35.219868, 38.188530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.962051, 35.509472, 46.416550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593349, 35.624241, 46.312202>,  <33.372128, 35.693100, 46.249596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593349, 35.624241, 46.312202>,  <33.962051, 35.509472, 46.416550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593349, 35.624241, 46.312202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093217, -0.489049, -0.867261,
		-0.376410, -0.823717, 0.424036,
		-0.921752, 0.286918, -0.260867,
		33.316826, 35.710316, 46.233940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651104, 34.990231, 45.933056>,  <33.962051, 35.509472, 46.416550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651104, 34.990231, 45.933056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422688, 35.308697, 45.853027>,  <33.285637, 35.499779, 45.805008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422688, 35.308697, 45.853027>,  <33.651104, 34.990231, 45.933056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422688, 35.308697, 45.853027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000344, -0.243486, -0.969905,
		-0.820924, -0.553921, 0.138765,
		-0.571037, 0.796170, -0.200074,
		33.251377, 35.547546, 45.793007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023430, 34.827839, 45.489105>,  <33.651104, 34.990231, 45.933056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023430, 34.827839, 45.489105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.076523, 35.214970, 45.403610>,  <33.108379, 35.447250, 45.352314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.076523, 35.214970, 45.403610>,  <33.023430, 34.827839, 45.489105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076523, 35.214970, 45.403610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027445, -0.211975, -0.976890,
		-0.990771, 0.135535, -0.001575,
		0.132737, 0.967831, -0.213739,
		33.116344, 35.505318, 45.339489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561504, 34.929134, 44.936352>,  <33.023430, 34.827839, 45.489105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561504, 34.929134, 44.936352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809254, 35.243046, 44.927364>,  <32.957905, 35.431393, 44.921970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809254, 35.243046, 44.927364>,  <32.561504, 34.929134, 44.936352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809254, 35.243046, 44.927364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131205, -0.131688, -0.982570,
		-0.774055, 0.605630, -0.184531,
		0.619374, 0.784774, -0.022472,
		32.995068, 35.478477, 44.920624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516022, 35.109337, 44.322151>,  <32.561504, 34.929134, 44.936352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516022, 35.109337, 44.322151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.855362, 35.301983, 44.410103>,  <33.058968, 35.417568, 44.462875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.855362, 35.301983, 44.410103>,  <32.516022, 35.109337, 44.322151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855362, 35.301983, 44.410103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207185, 0.080186, -0.975010,
		-0.487209, 0.872708, -0.031757,
		0.848352, 0.481613, 0.219879,
		33.109867, 35.446468, 44.476067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628662, 35.616749, 43.789146>,  <32.516022, 35.109337, 44.322151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628662, 35.616749, 43.789146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.993034, 35.621681, 43.954102>,  <33.211658, 35.624641, 44.053074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.993034, 35.621681, 43.954102>,  <32.628662, 35.616749, 43.789146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993034, 35.621681, 43.954102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398080, 0.236304, -0.886393,
		-0.108378, 0.971601, 0.210347,
		0.910926, 0.012331, 0.412385,
		33.266312, 35.625381, 44.077816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914806, 36.315891, 43.638336>,  <32.628662, 35.616749, 43.789146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914806, 36.315891, 43.638336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.183323, 36.027065, 43.705257>,  <33.344433, 35.853771, 43.745411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.183323, 36.027065, 43.705257>,  <32.914806, 36.315891, 43.638336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183323, 36.027065, 43.705257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417977, 0.182379, -0.889962,
		0.612096, 0.667355, 0.424235,
		0.671293, -0.722063, 0.167306,
		33.384712, 35.810448, 43.755447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564178, 36.592693, 43.393742>,  <32.914806, 36.315891, 43.638336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564178, 36.592693, 43.393742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573273, 36.192940, 43.383076>,  <33.578728, 35.953087, 43.376675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573273, 36.192940, 43.383076>,  <33.564178, 36.592693, 43.393742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573273, 36.192940, 43.383076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515137, 0.034572, -0.856411,
		0.856807, 0.005732, 0.515606,
		0.022735, -0.999386, -0.026669,
		33.580093, 35.893124, 43.375076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227650, 36.401787, 43.360519>,  <33.564178, 36.592693, 43.393742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227650, 36.401787, 43.360519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014561, 36.098759, 43.209629>,  <33.886707, 35.916943, 43.119095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014561, 36.098759, 43.209629>,  <34.227650, 36.401787, 43.360519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014561, 36.098759, 43.209629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482517, 0.094300, -0.870795,
		0.695257, -0.645911, 0.315303,
		-0.532723, -0.757566, -0.377226,
		33.854744, 35.871490, 43.096462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703480, 36.757381, 42.938934>,  <34.227650, 36.401787, 43.360519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703480, 36.757381, 42.938934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838623, 37.125233, 42.858795>,  <34.919708, 37.345943, 42.810711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838623, 37.125233, 42.858795>,  <34.703480, 36.757381, 42.938934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838623, 37.125233, 42.858795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443429, 0.343290, 0.827963,
		0.830194, -0.190894, 0.523772,
		0.337860, 0.919626, -0.200350,
		34.939980, 37.401119, 42.798691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060093, 37.029587, 43.541927>,  <34.703480, 36.757381, 42.938934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060093, 37.029587, 43.541927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924835, 37.344254, 43.335316>,  <34.843681, 37.533054, 43.211349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924835, 37.344254, 43.335316>,  <35.060093, 37.029587, 43.541927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924835, 37.344254, 43.335316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390461, 0.382116, 0.837572,
		0.856269, 0.484908, 0.177953,
		-0.338146, 0.786671, -0.516532,
		34.823391, 37.580254, 43.180355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244568, 37.579689, 43.841343>,  <35.060093, 37.029587, 43.541927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244568, 37.579689, 43.841343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950764, 37.723137, 43.610901>,  <34.774483, 37.809204, 43.472637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950764, 37.723137, 43.610901>,  <35.244568, 37.579689, 43.841343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950764, 37.723137, 43.610901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278713, 0.614623, 0.737941,
		0.618723, 0.702591, -0.351494,
		-0.734507, 0.358616, -0.576103,
		34.730412, 37.830723, 43.438068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132195, 38.351315, 44.085896>,  <35.244568, 37.579689, 43.841343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132195, 38.351315, 44.085896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.800308, 38.247948, 43.887993>,  <34.601177, 38.185928, 43.769249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.800308, 38.247948, 43.887993>,  <35.132195, 38.351315, 44.085896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800308, 38.247948, 43.887993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552969, 0.501417, 0.665437,
		0.076119, 0.825712, -0.558933,
		-0.829717, -0.258420, -0.494761,
		34.551392, 38.170422, 43.739563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759033, 38.987267, 43.859272>,  <35.132195, 38.351315, 44.085896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759033, 38.987267, 43.859272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.520630, 38.669823, 43.908195>,  <34.377586, 38.479355, 43.937550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.520630, 38.669823, 43.908195>,  <34.759033, 38.987267, 43.859272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520630, 38.669823, 43.908195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489358, 0.479751, 0.728264,
		-0.636635, 0.374197, -0.674294,
		-0.596007, -0.793609, 0.122310,
		34.341827, 38.431740, 43.944889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103039, 39.229904, 43.857986>,  <34.759033, 38.987267, 43.859272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103039, 39.229904, 43.857986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025330, 38.871399, 44.017471>,  <33.978706, 38.656296, 44.113163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025330, 38.871399, 44.017471>,  <34.103039, 39.229904, 43.857986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025330, 38.871399, 44.017471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497487, 0.440327, 0.747408,
		-0.845438, -0.053154, -0.531422,
		-0.194271, -0.896263, 0.398713,
		33.967049, 38.602520, 44.137085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363476, 39.154152, 44.075466>,  <34.103039, 39.229904, 43.857986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363476, 39.154152, 44.075466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.585274, 38.896976, 44.286812>,  <33.718353, 38.742672, 44.413620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.585274, 38.896976, 44.286812>,  <33.363476, 39.154152, 44.075466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585274, 38.896976, 44.286812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296097, 0.440936, 0.847291,
		-0.777730, -0.626264, 0.054124,
		0.554493, -0.642938, 0.528364,
		33.751621, 38.704094, 44.445320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894024, 39.105576, 44.629417>,  <33.363476, 39.154152, 44.075466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894024, 39.105576, 44.629417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.256195, 38.964855, 44.724438>,  <33.473499, 38.880421, 44.781452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.256195, 38.964855, 44.724438>,  <32.894024, 39.105576, 44.629417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256195, 38.964855, 44.724438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094058, 0.379438, 0.920424,
		-0.413946, -0.855722, 0.310464,
		0.905429, -0.351804, 0.237554,
		33.527824, 38.859314, 44.795704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844830, 38.794415, 45.320976>,  <32.894024, 39.105576, 44.629417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844830, 38.794415, 45.320976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.235413, 38.845249, 45.251251>,  <33.469761, 38.875748, 45.209415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.235413, 38.845249, 45.251251>,  <32.844830, 38.794415, 45.320976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235413, 38.845249, 45.251251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107937, 0.411797, 0.904861,
		0.186773, -0.902371, 0.388385,
		0.976455, 0.127083, -0.174312,
		33.528351, 38.883373, 45.198959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107059, 38.639668, 45.949978>,  <32.844830, 38.794415, 45.320976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107059, 38.639668, 45.949978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402897, 38.848888, 45.780552>,  <33.580399, 38.974422, 45.678894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402897, 38.848888, 45.780552>,  <33.107059, 38.639668, 45.949978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402897, 38.848888, 45.780552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211932, 0.416328, 0.884169,
		0.638814, -0.743696, 0.197062,
		0.739596, 0.523056, -0.423569,
		33.624775, 39.005806, 45.653481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659107, 38.382912, 46.340286>,  <33.107059, 38.639668, 45.949978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659107, 38.382912, 46.340286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752930, 38.737392, 46.180470>,  <33.809223, 38.950081, 46.084579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752930, 38.737392, 46.180470>,  <33.659107, 38.382912, 46.340286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752930, 38.737392, 46.180470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225402, 0.350224, 0.909141,
		0.945610, -0.303299, -0.117606,
		0.234553, 0.886202, -0.399539,
		33.823296, 39.003254, 46.060608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194485, 38.644958, 46.814499>,  <33.659107, 38.382912, 46.340286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194485, 38.644958, 46.814499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073105, 38.975033, 46.623928>,  <34.000278, 39.173077, 46.509586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073105, 38.975033, 46.623928>,  <34.194485, 38.644958, 46.814499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073105, 38.975033, 46.623928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109336, 0.526855, 0.842893,
		0.946554, 0.203685, -0.250097,
		-0.303450, 0.825188, -0.476427,
		33.982071, 39.222588, 46.480999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726566, 39.194084, 46.756397>,  <34.194485, 38.644958, 46.814499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726566, 39.194084, 46.756397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366344, 39.367882, 46.750393>,  <34.150211, 39.472160, 46.746788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366344, 39.367882, 46.750393>,  <34.726566, 39.194084, 46.756397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366344, 39.367882, 46.750393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247530, 0.540825, 0.803889,
		0.357404, 0.720226, -0.594590,
		-0.900551, 0.434492, -0.015015,
		34.096180, 39.498230, 46.745888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828068, 39.838997, 47.030251>,  <34.726566, 39.194084, 46.756397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828068, 39.838997, 47.030251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428741, 39.818501, 47.041187>,  <34.189148, 39.806202, 47.047749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428741, 39.818501, 47.041187>,  <34.828068, 39.838997, 47.030251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428741, 39.818501, 47.041187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007879, 0.585880, 0.810360,
		-0.057547, 0.808776, -0.585294,
		-0.998312, -0.051245, 0.027343,
		34.129250, 39.803127, 47.049389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.686243, 40.975315, 45.614697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.994722, 40.735481, 45.700256>,  <28.179810, 40.591583, 45.751591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.994722, 40.735481, 45.700256>,  <27.686243, 40.975315, 45.614697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994722, 40.735481, 45.700256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245877, -0.029381, -0.968856,
		0.587192, 0.799775, 0.124764,
		0.771201, -0.599581, 0.213899,
		28.226082, 40.555607, 45.764427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326130, 41.231300, 45.293941>,  <27.686243, 40.975315, 45.614697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326130, 41.231300, 45.293941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.390160, 40.841858, 45.359009>,  <28.428577, 40.608192, 45.398048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.390160, 40.841858, 45.359009>,  <28.326130, 41.231300, 45.293941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390160, 40.841858, 45.359009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355599, -0.096854, -0.929607,
		0.920829, 0.206654, 0.330710,
		0.160076, -0.973609, 0.162672,
		28.438183, 40.549774, 45.407810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975433, 41.069698, 44.991802>,  <28.326130, 41.231300, 45.293941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975433, 41.069698, 44.991802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.844667, 40.693279, 45.026585>,  <28.766209, 40.467430, 45.047455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.844667, 40.693279, 45.026585>,  <28.975433, 41.069698, 44.991802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844667, 40.693279, 45.026585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425413, -0.228695, -0.875627,
		0.843891, -0.249262, 0.475097,
		-0.326912, -0.941046, 0.086954,
		28.746593, 40.410965, 45.052670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533705, 40.691238, 44.774807>,  <28.975433, 41.069698, 44.991802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533705, 40.691238, 44.774807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.238586, 40.422058, 44.753647>,  <29.061516, 40.260551, 44.740952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.238586, 40.422058, 44.753647>,  <29.533705, 40.691238, 44.774807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238586, 40.422058, 44.753647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328607, -0.289607, -0.898969,
		0.589641, -0.680637, 0.434806,
		-0.737794, -0.672950, -0.052898,
		29.017248, 40.220173, 44.737778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848993, 39.971474, 44.688946>,  <29.533705, 40.691238, 44.774807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848993, 39.971474, 44.688946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.484838, 40.023426, 44.531807>,  <29.266346, 40.054600, 44.437523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.484838, 40.023426, 44.531807>,  <29.848993, 39.971474, 44.688946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484838, 40.023426, 44.531807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359123, -0.223510, -0.906131,
		-0.205482, -0.966011, 0.156842,
		-0.910389, 0.129868, -0.392844,
		29.211723, 40.062389, 44.413952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854282, 39.461304, 44.225353>,  <29.848993, 39.971474, 44.688946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854282, 39.461304, 44.225353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.563171, 39.708820, 44.107071>,  <29.388504, 39.857330, 44.036102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.563171, 39.708820, 44.107071>,  <29.854282, 39.461304, 44.225353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563171, 39.708820, 44.107071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278029, -0.127945, -0.952014,
		-0.626929, -0.775069, -0.078926,
		-0.727778, 0.618788, -0.295704,
		29.344837, 39.894455, 44.018360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647810, 39.221889, 43.556923>,  <29.854282, 39.461304, 44.225353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647810, 39.221889, 43.556923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.481825, 39.585106, 43.534084>,  <29.382235, 39.803036, 43.520382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.481825, 39.585106, 43.534084>,  <29.647810, 39.221889, 43.556923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481825, 39.585106, 43.534084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195590, 0.027740, -0.980294,
		-0.888567, -0.417953, -0.189115,
		-0.414963, 0.908045, -0.057099,
		29.357336, 39.857521, 43.516956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121498, 39.085320, 43.025303>,  <29.647810, 39.221889, 43.556923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121498, 39.085320, 43.025303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.169765, 39.482296, 43.034256>,  <29.198725, 39.720482, 43.039627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.169765, 39.482296, 43.034256>,  <29.121498, 39.085320, 43.025303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169765, 39.482296, 43.034256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314378, -0.016821, -0.949149,
		-0.941598, 0.121566, -0.314031,
		0.120667, 0.992441, 0.022379,
		29.205965, 39.780029, 43.040970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659601, 39.522892, 42.448238>,  <29.121498, 39.085320, 43.025303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659601, 39.522892, 42.448238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.979530, 39.738159, 42.554562>,  <29.171488, 39.867321, 42.618355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.979530, 39.738159, 42.554562>,  <28.659601, 39.522892, 42.448238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979530, 39.738159, 42.554562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256477, 0.093954, -0.961973,
		-0.542680, 0.837582, -0.062882,
		0.799824, 0.538171, 0.265807,
		29.219477, 39.899612, 42.634304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704273, 40.049744, 41.913681>,  <28.659601, 39.522892, 42.448238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704273, 40.049744, 41.913681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.068413, 40.047131, 42.079197>,  <29.286896, 40.045563, 42.178505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.068413, 40.047131, 42.079197>,  <28.704273, 40.049744, 41.913681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068413, 40.047131, 42.079197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413827, 0.022499, -0.910077,
		-0.003362, 0.999725, 0.023186,
		0.910349, -0.006535, 0.413789,
		29.341518, 40.045170, 42.203335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118998, 40.526871, 41.442352>,  <28.704273, 40.049744, 41.913681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118998, 40.526871, 41.442352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.383400, 40.306728, 41.646381>,  <29.542042, 40.174641, 41.768799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.383400, 40.306728, 41.646381>,  <29.118998, 40.526871, 41.442352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383400, 40.306728, 41.646381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583770, -0.049932, -0.810383,
		0.471471, 0.833433, 0.288278,
		0.661005, -0.550360, 0.510074,
		29.581701, 40.141621, 41.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787785, 40.769058, 41.323837>,  <29.118998, 40.526871, 41.442352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787785, 40.769058, 41.323837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.821781, 40.384956, 41.430191>,  <29.842180, 40.154495, 41.494003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.821781, 40.384956, 41.430191>,  <29.787785, 40.769058, 41.323837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821781, 40.384956, 41.430191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570230, -0.171947, -0.803288,
		0.817077, 0.219886, 0.532950,
		0.084993, -0.960252, 0.265880,
		29.847279, 40.096882, 41.509956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470228, 40.606247, 41.259079>,  <29.787785, 40.769058, 41.323837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470228, 40.606247, 41.259079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.298735, 40.245010, 41.268967>,  <30.195839, 40.028267, 41.274899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.298735, 40.245010, 41.268967>,  <30.470228, 40.606247, 41.259079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298735, 40.245010, 41.268967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650298, -0.327487, -0.685467,
		0.627137, -0.277804, 0.727684,
		-0.428733, -0.903093, 0.024723,
		30.170115, 39.974083, 41.276382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998140, 40.186806, 41.086067>,  <30.470228, 40.606247, 41.259079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998140, 40.186806, 41.086067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718065, 39.912563, 41.006386>,  <30.550020, 39.748016, 40.958576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718065, 39.912563, 41.006386>,  <30.998140, 40.186806, 41.086067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718065, 39.912563, 41.006386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489005, -0.257231, -0.833490,
		0.520205, -0.681010, 0.515375,
		-0.700186, -0.685607, -0.199205,
		30.508009, 39.706882, 40.946625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798023, 40.172359, 41.118965>,  <30.998140, 40.186806, 41.086067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798023, 40.172359, 41.118965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961800, 40.537193, 41.127510>,  <32.060066, 40.756092, 41.132637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961800, 40.537193, 41.127510>,  <31.798023, 40.172359, 41.118965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961800, 40.537193, 41.127510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122014, 0.031535, 0.992027,
		0.904140, -0.408785, 0.124199,
		0.409442, 0.912086, 0.021365,
		32.084633, 40.810818, 41.133919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289307, 40.148228, 41.681923>,  <31.798023, 40.172359, 41.118965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289307, 40.148228, 41.681923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221668, 40.538311, 41.624825>,  <32.181084, 40.772362, 41.590565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221668, 40.538311, 41.624825>,  <32.289307, 40.148228, 41.681923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221668, 40.538311, 41.624825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010791, 0.142990, 0.989665,
		0.985540, 0.168889, -0.013655,
		-0.169097, 0.975208, -0.142745,
		32.170940, 40.830872, 41.582001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539997, 40.264282, 42.238949>,  <32.289307, 40.148228, 41.681923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539997, 40.264282, 42.238949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387390, 40.618664, 42.133472>,  <32.295826, 40.831291, 42.070187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387390, 40.618664, 42.133472>,  <32.539997, 40.264282, 42.238949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387390, 40.618664, 42.133472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101428, 0.243426, 0.964602,
		0.918780, 0.394759, -0.003012,
		-0.381519, 0.885951, -0.263694,
		32.272934, 40.884449, 42.054363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741913, 40.717819, 42.720112>,  <32.539997, 40.264282, 42.238949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741913, 40.717819, 42.720112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434284, 40.927170, 42.573357>,  <32.249706, 41.052780, 42.485302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434284, 40.927170, 42.573357>,  <32.741913, 40.717819, 42.720112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434284, 40.927170, 42.573357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149630, 0.410635, 0.899439,
		0.621402, 0.746629, -0.237494,
		-0.769071, 0.523377, -0.366888,
		32.203564, 41.084183, 42.463291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900711, 41.402927, 42.851730>,  <32.741913, 40.717819, 42.720112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900711, 41.402927, 42.851730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505455, 41.394653, 42.790863>,  <32.268303, 41.389690, 42.754341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505455, 41.394653, 42.790863>,  <32.900711, 41.402927, 42.851730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505455, 41.394653, 42.790863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147822, 0.396621, 0.906002,
		0.041611, 0.917749, -0.394975,
		-0.988138, -0.020686, -0.152167,
		32.209015, 41.388447, 42.745213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655579, 41.976830, 43.097401>,  <32.900711, 41.402927, 42.851730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655579, 41.976830, 43.097401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314251, 41.770618, 43.066235>,  <32.109455, 41.646893, 43.047535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314251, 41.770618, 43.066235>,  <32.655579, 41.976830, 43.097401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314251, 41.770618, 43.066235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323840, 0.406950, 0.854119,
		-0.408618, 0.754069, -0.514209,
		-0.853322, -0.515530, -0.077911,
		32.058254, 41.615959, 43.042862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062199, 42.457630, 43.223053>,  <32.655579, 41.976830, 43.097401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062199, 42.457630, 43.223053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.911079, 42.100780, 43.322155>,  <31.820408, 41.886669, 43.381615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.911079, 42.100780, 43.322155>,  <32.062199, 42.457630, 43.223053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911079, 42.100780, 43.322155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246357, 0.354796, 0.901903,
		-0.892510, 0.279705, -0.353824,
		-0.377802, -0.892124, 0.247751,
		31.797739, 41.833145, 43.396481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451006, 42.596947, 43.528080>,  <32.062199, 42.457630, 43.223053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451006, 42.596947, 43.528080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.558393, 42.232689, 43.653721>,  <31.622826, 42.014133, 43.729103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.558393, 42.232689, 43.653721>,  <31.451006, 42.596947, 43.528080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558393, 42.232689, 43.653721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316988, 0.224394, 0.921502,
		-0.909639, -0.346959, -0.228420,
		0.268467, -0.910641, 0.314100,
		31.638933, 41.959496, 43.747952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834721, 42.437370, 43.918236>,  <31.451006, 42.596947, 43.528080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834721, 42.437370, 43.918236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084894, 42.149387, 44.038559>,  <31.234999, 41.976597, 44.110752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084894, 42.149387, 44.038559>,  <30.834721, 42.437370, 43.918236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084894, 42.149387, 44.038559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329155, 0.106090, 0.938297,
		-0.707451, -0.685857, -0.170626,
		0.625436, -0.719961, 0.300807,
		31.272526, 41.933399, 44.128799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486101, 42.089191, 44.503784>,  <30.834721, 42.437370, 43.918236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486101, 42.089191, 44.503784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.869368, 41.982101, 44.544266>,  <31.099327, 41.917847, 44.568554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.869368, 41.982101, 44.544266>,  <30.486101, 42.089191, 44.503784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869368, 41.982101, 44.544266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104869, 0.000620, 0.994486,
		-0.266311, -0.963495, -0.027482,
		0.958166, -0.267724, 0.101206,
		31.156816, 41.901783, 44.574627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591585, 41.388611, 44.931351>,  <30.486101, 42.089191, 44.503784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591585, 41.388611, 44.931351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.916145, 41.622292, 44.938663>,  <31.110882, 41.762501, 44.943050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.916145, 41.622292, 44.938663>,  <30.591585, 41.388611, 44.931351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916145, 41.622292, 44.938663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067155, 0.062112, 0.995807,
		0.580621, -0.809225, 0.089630,
		0.811399, 0.584206, 0.018280,
		31.159565, 41.797554, 44.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008526, 41.166637, 45.597843>,  <30.591585, 41.388611, 44.931351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008526, 41.166637, 45.597843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113104, 41.533234, 45.476723>,  <31.175852, 41.753193, 45.404053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113104, 41.533234, 45.476723>,  <31.008526, 41.166637, 45.597843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113104, 41.533234, 45.476723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134110, 0.345160, 0.928913,
		0.955856, -0.202253, 0.213151,
		0.261446, 0.916493, -0.302799,
		31.191538, 41.808182, 45.385883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540594, 41.449722, 46.117725>,  <31.008526, 41.166637, 45.597843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540594, 41.449722, 46.117725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344387, 41.743397, 45.929958>,  <31.226662, 41.919601, 45.817299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344387, 41.743397, 45.929958>,  <31.540594, 41.449722, 46.117725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344387, 41.743397, 45.929958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202928, 0.427632, 0.880881,
		0.847474, 0.527347, -0.060774,
		-0.490519, 0.734191, -0.469420,
		31.197231, 41.963654, 45.789131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859638, 42.032604, 46.353336>,  <31.540594, 41.449722, 46.117725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859638, 42.032604, 46.353336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504086, 42.148472, 46.211361>,  <31.290754, 42.217995, 46.126175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504086, 42.148472, 46.211361>,  <31.859638, 42.032604, 46.353336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504086, 42.148472, 46.211361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200439, 0.450775, 0.869843,
		0.411967, 0.844330, -0.342624,
		-0.888880, 0.289671, -0.354941,
		31.237421, 42.235374, 46.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413990, 42.654449, 46.512035>,  <31.859638, 42.032604, 46.353336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413990, 42.654449, 46.512035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769524, 42.625790, 46.693069>,  <32.982845, 42.608593, 46.801689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769524, 42.625790, 46.693069>,  <32.413990, 42.654449, 46.512035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769524, 42.625790, 46.693069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436132, -0.170712, -0.883542,
		0.140572, 0.982712, -0.120484,
		0.888835, -0.071654, 0.452590,
		33.036175, 42.604294, 46.828846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852371, 43.026924, 46.118179>,  <32.413990, 42.654449, 46.512035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852371, 43.026924, 46.118179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117355, 42.820133, 46.335022>,  <33.276348, 42.696060, 46.465126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117355, 42.820133, 46.335022>,  <32.852371, 43.026924, 46.118179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117355, 42.820133, 46.335022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600302, -0.066506, -0.797003,
		0.448086, 0.853412, 0.266284,
		0.662463, -0.516977, 0.542105,
		33.316093, 42.665039, 46.497654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564716, 43.338638, 46.039017>,  <32.852371, 43.026924, 46.118179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564716, 43.338638, 46.039017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599495, 42.952225, 46.136364>,  <33.620361, 42.720379, 46.194771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599495, 42.952225, 46.136364>,  <33.564716, 43.338638, 46.039017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599495, 42.952225, 46.136364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667196, -0.124949, -0.734328,
		0.739791, 0.226218, 0.633667,
		0.086942, -0.966030, 0.243368,
		33.625576, 42.662415, 46.209373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211536, 43.262005, 45.919273>,  <33.564716, 43.338638, 46.039017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211536, 43.262005, 45.919273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.095551, 42.881294, 45.959339>,  <34.025959, 42.652866, 45.983379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.095551, 42.881294, 45.959339>,  <34.211536, 43.262005, 45.919273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095551, 42.881294, 45.959339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791315, -0.297305, -0.534257,
		0.538276, -0.075650, 0.839366,
		-0.289965, -0.951781, 0.100169,
		34.008560, 42.595760, 45.989391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765400, 42.820423, 46.019604>,  <34.211536, 43.262005, 45.919273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765400, 42.820423, 46.019604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.468323, 42.603104, 45.863018>,  <34.290077, 42.472713, 45.769066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.468323, 42.603104, 45.863018>,  <34.765400, 42.820423, 46.019604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468323, 42.603104, 45.863018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627936, -0.361977, -0.688962,
		0.232610, -0.757497, 0.609992,
		-0.742690, -0.543296, -0.391460,
		34.245514, 42.440117, 45.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071182, 42.233505, 45.730324>,  <34.765400, 42.820423, 46.019604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071182, 42.233505, 45.730324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713585, 42.226803, 45.551216>,  <34.499027, 42.222782, 45.443752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713585, 42.226803, 45.551216>,  <35.071182, 42.233505, 45.730324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713585, 42.226803, 45.551216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413326, -0.416722, -0.809633,
		-0.173029, -0.908880, 0.379472,
		-0.893993, -0.016756, -0.447768,
		34.445389, 42.221775, 45.416885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956680, 41.502247, 45.516853>,  <35.071182, 42.233505, 45.730324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956680, 41.502247, 45.516853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730358, 41.723637, 45.272388>,  <34.594563, 41.856472, 45.125710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730358, 41.723637, 45.272388>,  <34.956680, 41.502247, 45.516853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730358, 41.723637, 45.272388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435296, -0.429000, -0.791503,
		-0.700270, -0.713876, 0.001805,
		-0.565809, 0.553480, -0.611163,
		34.560616, 41.889679, 45.089039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966549, 41.104374, 44.982117>,  <34.956680, 41.502247, 45.516853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966549, 41.104374, 44.982117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.812836, 41.426594, 44.801708>,  <34.720608, 41.619926, 44.693462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.812836, 41.426594, 44.801708>,  <34.966549, 41.104374, 44.982117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812836, 41.426594, 44.801708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269681, -0.369276, -0.889330,
		-0.882949, -0.463385, -0.075335,
		-0.384283, 0.805549, -0.451018,
		34.697552, 41.668259, 44.666405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498493, 40.842991, 44.515823>,  <34.966549, 41.104374, 44.982117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498493, 40.842991, 44.515823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611568, 41.211445, 44.408791>,  <34.679413, 41.432518, 44.344570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611568, 41.211445, 44.408791>,  <34.498493, 40.842991, 44.515823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611568, 41.211445, 44.408791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213418, -0.332369, -0.918686,
		-0.935169, 0.202592, -0.290543,
		0.282685, 0.921134, -0.267584,
		34.696373, 41.487785, 44.328514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122597, 41.048340, 43.985706>,  <34.498493, 40.842991, 44.515823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122597, 41.048340, 43.985706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.463013, 41.253319, 43.939880>,  <34.667263, 41.376305, 43.912384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.463013, 41.253319, 43.939880>,  <34.122597, 41.048340, 43.985706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463013, 41.253319, 43.939880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073583, -0.332416, -0.940258,
		-0.519914, 0.791770, -0.320608,
		0.851043, 0.512445, -0.114567,
		34.718327, 41.407051, 43.905510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195541, 41.065285, 43.300377>,  <34.122597, 41.048340, 43.985706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195541, 41.065285, 43.300377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.554417, 41.219921, 43.385796>,  <34.769741, 41.312702, 43.437046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.554417, 41.219921, 43.385796>,  <34.195541, 41.065285, 43.300377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554417, 41.219921, 43.385796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316908, -0.226743, -0.920954,
		-0.307609, 0.893945, -0.325944,
		0.897188, 0.386588, 0.213550,
		34.823574, 41.335899, 43.449860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370956, 41.568398, 42.763367>,  <34.195541, 41.065285, 43.300377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370956, 41.568398, 42.763367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740700, 41.495018, 42.897179>,  <34.962547, 41.450993, 42.977467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740700, 41.495018, 42.897179>,  <34.370956, 41.568398, 42.763367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740700, 41.495018, 42.897179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282113, -0.261656, -0.923011,
		0.256854, 0.947567, -0.190111,
		0.924358, -0.183446, 0.334529,
		35.018005, 41.439983, 42.997536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804626, 41.949284, 42.344246>,  <34.370956, 41.568398, 42.763367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804626, 41.949284, 42.344246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992195, 41.630447, 42.496433>,  <35.104736, 41.439144, 42.587746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992195, 41.630447, 42.496433>,  <34.804626, 41.949284, 42.344246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992195, 41.630447, 42.496433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286155, -0.270426, -0.919230,
		0.835601, 0.539918, 0.101284,
		0.468919, -0.797093, 0.380469,
		35.132870, 41.391319, 42.610573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407848, 41.960464, 42.045338>,  <34.804626, 41.949284, 42.344246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407848, 41.960464, 42.045338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383610, 41.592171, 42.199520>,  <35.369068, 41.371197, 42.292030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383610, 41.592171, 42.199520>,  <35.407848, 41.960464, 42.045338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383610, 41.592171, 42.199520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362721, -0.380082, -0.850865,
		0.929926, 0.088258, 0.357000,
		-0.060594, -0.920732, 0.385461,
		35.365433, 41.315952, 42.315159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.278475, 42.860802, 36.143032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.219683, 42.820587, 35.749424>,  <29.184408, 42.796459, 35.513260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.219683, 42.820587, 35.749424>,  <29.278475, 42.860802, 36.143032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219683, 42.820587, 35.749424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785451, -0.592809, 0.177886,
		-0.601218, 0.799043, 0.008167,
		-0.146980, -0.100534, -0.984017,
		29.175589, 42.790428, 35.454220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615122, 42.883858, 36.075615>,  <29.278475, 42.860802, 36.143032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615122, 42.883858, 36.075615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707727, 42.737625, 35.715004>,  <28.763290, 42.649887, 35.498638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707727, 42.737625, 35.715004>,  <28.615122, 42.883858, 36.075615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707727, 42.737625, 35.715004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662977, -0.737477, 0.128800,
		-0.711944, 0.567874, -0.413105,
		0.231513, -0.365577, -0.901529,
		28.777182, 42.627953, 35.444546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993666, 42.733387, 35.731007>,  <28.615122, 42.883858, 36.075615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993666, 42.733387, 35.731007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279497, 42.501842, 35.573883>,  <28.450996, 42.362915, 35.479610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279497, 42.501842, 35.573883>,  <27.993666, 42.733387, 35.731007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279497, 42.501842, 35.573883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592528, -0.799318, 0.100003,
		-0.371866, 0.161290, -0.914167,
		0.714581, -0.578858, -0.392808,
		28.493872, 42.328186, 35.456039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539526, 42.152863, 35.380611>,  <27.993666, 42.733387, 35.731007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539526, 42.152863, 35.380611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914324, 42.015732, 35.407490>,  <28.139202, 41.933453, 35.423615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914324, 42.015732, 35.407490>,  <27.539526, 42.152863, 35.380611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914324, 42.015732, 35.407490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346165, -0.937026, 0.046384,
		0.047060, -0.066721, -0.996661,
		0.936992, -0.342827, 0.067193,
		28.195421, 41.912884, 35.427647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612581, 41.682919, 34.802299>,  <27.539526, 42.152863, 35.380611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612581, 41.682919, 34.802299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.870304, 41.573261, 35.087875>,  <28.024939, 41.507465, 35.259220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.870304, 41.573261, 35.087875>,  <27.612581, 41.682919, 34.802299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870304, 41.573261, 35.087875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435558, -0.898885, 0.047918,
		0.628614, -0.341836, -0.698565,
		0.644309, -0.274143, 0.713941,
		28.063597, 41.491020, 35.302059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861357, 41.039410, 34.533810>,  <27.612581, 41.682919, 34.802299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861357, 41.039410, 34.533810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.963406, 41.061783, 34.919926>,  <28.024635, 41.075207, 35.151596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.963406, 41.061783, 34.919926>,  <27.861357, 41.039410, 34.533810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963406, 41.061783, 34.919926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217154, -0.969508, 0.113569,
		0.942209, -0.238590, -0.235196,
		0.255121, 0.055932, 0.965290,
		28.039942, 41.078564, 35.209511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253593, 40.441719, 34.662571>,  <27.861357, 41.039410, 34.533810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253593, 40.441719, 34.662571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163769, 40.522717, 35.043846>,  <28.109875, 40.571316, 35.272610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163769, 40.522717, 35.043846>,  <28.253593, 40.441719, 34.662571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163769, 40.522717, 35.043846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226264, -0.962272, 0.151118,
		0.947828, -0.181737, 0.261904,
		-0.224559, 0.202493, 0.953189,
		28.096401, 40.583466, 35.329803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636477, 39.925407, 35.104271>,  <28.253593, 40.441719, 34.662571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636477, 39.925407, 35.104271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344170, 40.053135, 35.345604>,  <28.168785, 40.129772, 35.490406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344170, 40.053135, 35.345604>,  <28.636477, 39.925407, 35.104271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344170, 40.053135, 35.345604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071851, -0.914918, 0.397193,
		0.678833, 0.246906, 0.691537,
		-0.730769, 0.319315, 0.603337,
		28.124939, 40.148930, 35.526604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853666, 39.726421, 35.845825>,  <28.636477, 39.925407, 35.104271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853666, 39.726421, 35.845825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.459560, 39.790710, 35.822418>,  <28.223097, 39.829285, 35.808376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.459560, 39.790710, 35.822418>,  <28.853666, 39.726421, 35.845825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459560, 39.790710, 35.822418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170840, -0.941263, 0.291269,
		-0.008265, 0.296973, 0.954850,
		-0.985264, 0.160719, -0.058515,
		28.163980, 39.838924, 35.804863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647394, 39.474689, 36.423504>,  <28.853666, 39.726421, 35.845825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647394, 39.474689, 36.423504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296412, 39.461197, 36.232117>,  <28.085821, 39.453102, 36.117283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296412, 39.461197, 36.232117>,  <28.647394, 39.474689, 36.423504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296412, 39.461197, 36.232117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098675, -0.963492, 0.248891,
		-0.469396, 0.265604, 0.842094,
		-0.877457, -0.033735, -0.478468,
		28.033175, 39.451077, 36.088577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201792, 39.123039, 36.908470>,  <28.647394, 39.474689, 36.423504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201792, 39.123039, 36.908470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030186, 39.103870, 36.547661>,  <27.927221, 39.092369, 36.331177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030186, 39.103870, 36.547661>,  <28.201792, 39.123039, 36.908470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030186, 39.103870, 36.547661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210605, -0.965765, 0.151473,
		-0.878402, 0.254955, 0.404237,
		-0.429017, -0.047920, -0.902024,
		27.901480, 39.089493, 36.277054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505560, 38.760498, 37.008793>,  <28.201792, 39.123039, 36.908470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505560, 38.760498, 37.008793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581165, 38.706341, 36.619755>,  <27.626530, 38.673847, 36.386333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581165, 38.706341, 36.619755>,  <27.505560, 38.760498, 37.008793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581165, 38.706341, 36.619755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256359, -0.962906, 0.084219,
		-0.947920, 0.233416, -0.216711,
		0.189015, -0.135388, -0.972597,
		27.637871, 38.665726, 36.327976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848867, 38.317848, 36.711952>,  <27.505560, 38.760498, 37.008793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848867, 38.317848, 36.711952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128218, 38.308720, 36.425804>,  <27.295828, 38.303242, 36.254116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128218, 38.308720, 36.425804>,  <26.848867, 38.317848, 36.711952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128218, 38.308720, 36.425804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296382, -0.918991, -0.260027,
		-0.651481, 0.393618, -0.648565,
		0.698376, -0.022820, -0.715367,
		27.337730, 38.301872, 36.211193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534149, 38.019676, 36.062984>,  <26.848867, 38.317848, 36.711952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534149, 38.019676, 36.062984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925100, 37.936329, 36.048454>,  <27.159670, 37.886322, 36.039738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925100, 37.936329, 36.048454>,  <26.534149, 38.019676, 36.062984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925100, 37.936329, 36.048454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211509, -0.962088, -0.172195,
		0.000932, 0.175982, -0.984393,
		0.977375, -0.208368, -0.036325,
		27.218313, 37.873817, 36.037556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605942, 37.421539, 35.684425>,  <26.534149, 38.019676, 36.062984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605942, 37.421539, 35.684425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.000761, 37.438965, 35.746178>,  <27.237654, 37.449421, 35.783230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.000761, 37.438965, 35.746178>,  <26.605942, 37.421539, 35.684425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000761, 37.438965, 35.746178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078969, -0.969678, -0.231277,
		0.139628, 0.240474, -0.960560,
		0.987050, 0.043562, 0.154384,
		27.296877, 37.452034, 35.792492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889771, 37.173061, 35.056709>,  <26.605942, 37.421539, 35.684425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889771, 37.173061, 35.056709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122753, 37.130363, 35.379040>,  <27.262543, 37.104744, 35.572437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122753, 37.130363, 35.379040>,  <26.889771, 37.173061, 35.056709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122753, 37.130363, 35.379040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085232, -0.977856, -0.191137,
		0.808383, 0.180011, -0.560458,
		0.582454, -0.106742, 0.805825,
		27.297489, 37.098339, 35.620789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571859, 36.768272, 34.837650>,  <26.889771, 37.173061, 35.056709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571859, 36.768272, 34.837650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511133, 36.680428, 35.223133>,  <27.474697, 36.627720, 35.454422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511133, 36.680428, 35.223133>,  <27.571859, 36.768272, 34.837650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511133, 36.680428, 35.223133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029686, -0.975577, -0.217642,
		0.987963, -0.004432, 0.154625,
		-0.151813, -0.219612, 0.963703,
		27.465590, 36.614544, 35.512245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032459, 36.246769, 34.955387>,  <27.571859, 36.768272, 34.837650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032459, 36.246769, 34.955387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793520, 36.216934, 35.274788>,  <27.650156, 36.199032, 35.466431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793520, 36.216934, 35.274788>,  <28.032459, 36.246769, 34.955387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793520, 36.216934, 35.274788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140978, -0.989928, 0.012990,
		0.789493, 0.120331, 0.601848,
		-0.597349, -0.074592, 0.798505,
		27.614315, 36.194557, 35.514339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315994, 35.680164, 35.382946>,  <28.032459, 36.246769, 34.955387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315994, 35.680164, 35.382946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.944345, 35.723564, 35.524345>,  <27.721355, 35.749603, 35.609184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.944345, 35.723564, 35.524345>,  <28.315994, 35.680164, 35.382946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944345, 35.723564, 35.524345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109765, -0.993820, 0.016543,
		0.353108, -0.023431, 0.935289,
		-0.929122, 0.108503, 0.353497,
		27.665609, 35.756115, 35.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145700, 35.866680, 35.354897>,  <28.315994, 35.680164, 35.382946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145700, 35.866680, 35.354897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256165, 35.490559, 35.434452>,  <29.322443, 35.264885, 35.482185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256165, 35.490559, 35.434452>,  <29.145700, 35.866680, 35.354897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256165, 35.490559, 35.434452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822261, -0.124009, 0.555435,
		-0.497615, -0.316929, -0.807425,
		0.276161, -0.940307, 0.198890,
		29.339012, 35.208466, 35.494118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729506, 35.509201, 35.075043>,  <29.145700, 35.866680, 35.354897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729506, 35.509201, 35.075043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.961740, 35.627125, 34.771461>,  <30.101082, 35.697880, 34.589314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.961740, 35.627125, 34.771461>,  <29.729506, 35.509201, 35.075043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961740, 35.627125, 34.771461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139825, 0.882195, 0.449645,
		0.802101, -0.367179, 0.470971,
		0.580588, 0.294807, -0.758951,
		30.135916, 35.715569, 34.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404629, 35.620461, 35.312550>,  <29.729506, 35.509201, 35.075043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404629, 35.620461, 35.312550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.375566, 35.821663, 34.968060>,  <30.358130, 35.942383, 34.761364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.375566, 35.821663, 34.968060>,  <30.404629, 35.620461, 35.312550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375566, 35.821663, 34.968060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043705, 0.861071, 0.506603,
		0.996399, 0.074448, -0.040578,
		-0.072656, 0.503005, -0.861224,
		30.353769, 35.972565, 34.709694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040821, 36.135201, 35.277363>,  <30.404629, 35.620461, 35.312550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040821, 36.135201, 35.277363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789797, 36.288631, 35.006355>,  <30.639183, 36.380692, 34.843750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789797, 36.288631, 35.006355>,  <31.040821, 36.135201, 35.277363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789797, 36.288631, 35.006355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128328, 0.909275, 0.395918,
		0.767918, 0.161517, -0.619849,
		-0.627561, 0.383577, -0.677522,
		30.601528, 36.403706, 34.803101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369093, 36.789028, 35.084843>,  <31.040821, 36.135201, 35.277363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369093, 36.789028, 35.084843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991917, 36.818726, 34.955009>,  <30.765612, 36.836544, 34.877110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991917, 36.818726, 34.955009>,  <31.369093, 36.789028, 35.084843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991917, 36.818726, 34.955009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023046, 0.987039, 0.158820,
		0.332162, 0.142278, -0.932430,
		-0.942941, 0.074242, -0.324578,
		30.709034, 36.841000, 34.857635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366474, 37.343357, 34.591511>,  <31.369093, 36.789028, 35.084843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366474, 37.343357, 34.591511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.987064, 37.315964, 34.715191>,  <30.759418, 37.299530, 34.789398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.987064, 37.315964, 34.715191>,  <31.366474, 37.343357, 34.591511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987064, 37.315964, 34.715191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066073, 0.997648, 0.018261,
		-0.309728, -0.003109, -0.950820,
		-0.948527, -0.068480, 0.309205,
		30.702507, 37.295422, 34.807953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982351, 37.887981, 34.251564>,  <31.366474, 37.343357, 34.591511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982351, 37.887981, 34.251564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763048, 37.819450, 34.578995>,  <30.631466, 37.778332, 34.775452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763048, 37.819450, 34.578995>,  <30.982351, 37.887981, 34.251564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763048, 37.819450, 34.578995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166686, 0.981539, 0.093796,
		-0.819530, -0.085020, -0.566694,
		-0.548257, -0.171329, 0.818572,
		30.598572, 37.768051, 34.824566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481026, 38.219669, 34.118999>,  <30.982351, 37.887981, 34.251564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481026, 38.219669, 34.118999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482895, 38.175507, 34.516548>,  <30.484016, 38.149010, 34.755077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482895, 38.175507, 34.516548>,  <30.481026, 38.219669, 34.118999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482895, 38.175507, 34.516548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224330, 0.968440, 0.108633,
		-0.974502, -0.223464, -0.020242,
		0.004672, -0.110404, 0.993876,
		30.484297, 38.142387, 34.814713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085293, 38.740944, 34.345451>,  <30.481026, 38.219669, 34.118999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085293, 38.740944, 34.345451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233498, 38.631477, 34.700489>,  <30.322420, 38.565800, 34.913513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233498, 38.631477, 34.700489>,  <30.085293, 38.740944, 34.345451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233498, 38.631477, 34.700489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023472, 0.958064, 0.285591,
		-0.928531, -0.084981, 0.361398,
		0.370513, -0.273663, 0.887597,
		30.344652, 38.549377, 34.966766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699476, 39.145752, 34.873127>,  <30.085293, 38.740944, 34.345451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699476, 39.145752, 34.873127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993296, 39.029835, 35.118553>,  <30.169588, 38.960285, 35.265808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993296, 39.029835, 35.118553>,  <29.699476, 39.145752, 34.873127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993296, 39.029835, 35.118553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027166, 0.890933, 0.453320,
		-0.678013, -0.349654, 0.646561,
		0.734548, -0.289793, 0.613563,
		30.213659, 38.942898, 35.302624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595108, 39.485962, 35.434010>,  <29.699476, 39.145752, 34.873127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595108, 39.485962, 35.434010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980913, 39.382339, 35.454414>,  <30.212397, 39.320168, 35.466656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980913, 39.382339, 35.454414>,  <29.595108, 39.485962, 35.434010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980913, 39.382339, 35.454414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206861, 0.861489, 0.463729,
		-0.164078, -0.436721, 0.884507,
		0.964514, -0.259058, 0.051010,
		30.270267, 39.304623, 35.469719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815310, 39.496208, 36.207668>,  <29.595108, 39.485962, 35.434010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815310, 39.496208, 36.207668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122339, 39.561459, 35.959728>,  <30.306557, 39.600609, 35.810963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122339, 39.561459, 35.959728>,  <29.815310, 39.496208, 36.207668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122339, 39.561459, 35.959728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228238, 0.834123, 0.502141,
		0.598945, -0.526906, 0.603022,
		0.767575, 0.163122, -0.619854,
		30.352612, 39.610394, 35.773773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514709, 39.544640, 36.692345>,  <29.815310, 39.496208, 36.207668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514709, 39.544640, 36.692345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603222, 39.693661, 36.331848>,  <30.656330, 39.783073, 36.115551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603222, 39.693661, 36.331848>,  <30.514709, 39.544640, 36.692345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603222, 39.693661, 36.331848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392974, 0.811733, 0.432043,
		0.892528, -0.449768, 0.033217,
		0.221283, 0.372556, -0.901241,
		30.669607, 39.805428, 36.061478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197176, 39.744339, 36.828247>,  <30.514709, 39.544640, 36.692345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197176, 39.744339, 36.828247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.065664, 39.949532, 36.511070>,  <30.986757, 40.072647, 36.320766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.065664, 39.949532, 36.511070>,  <31.197176, 39.744339, 36.828247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065664, 39.949532, 36.511070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347319, 0.846453, 0.403593,
		0.878221, -0.142709, -0.456466,
		-0.328781, 0.512983, -0.792939,
		30.967030, 40.103428, 36.273190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668991, 40.201424, 36.774559>,  <31.197176, 39.744339, 36.828247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668991, 40.201424, 36.774559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.355705, 40.351215, 36.576027>,  <31.167734, 40.441090, 36.456905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.355705, 40.351215, 36.576027>,  <31.668991, 40.201424, 36.774559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355705, 40.351215, 36.576027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245713, 0.919717, 0.306178,
		0.571142, 0.117847, -0.812348,
		-0.783212, 0.374476, -0.496333,
		31.120741, 40.463558, 36.427128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876635, 40.820179, 36.349281>,  <31.668991, 40.201424, 36.774559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876635, 40.820179, 36.349281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.479263, 40.864391, 36.361153>,  <31.240841, 40.890919, 36.368275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.479263, 40.864391, 36.361153>,  <31.876635, 40.820179, 36.349281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479263, 40.864391, 36.361153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114374, 0.968066, 0.223085,
		-0.004076, 0.225014, -0.974347,
		-0.993429, 0.110531, 0.029682,
		31.181234, 40.897552, 36.370056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694796, 41.479107, 36.018463>,  <31.876635, 40.820179, 36.349281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694796, 41.479107, 36.018463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.377569, 41.403687, 36.250153>,  <31.187233, 41.358433, 36.389164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.377569, 41.403687, 36.250153>,  <31.694796, 41.479107, 36.018463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377569, 41.403687, 36.250153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046433, 0.929408, 0.366122,
		-0.607363, 0.317254, -0.728327,
		-0.793066, -0.188551, 0.579219,
		31.139648, 41.347122, 36.423920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303406, 42.084286, 36.025627>,  <31.694796, 41.479107, 36.018463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303406, 42.084286, 36.025627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.147499, 41.893379, 36.340664>,  <31.053955, 41.778835, 36.529686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.147499, 41.893379, 36.340664>,  <31.303406, 42.084286, 36.025627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147499, 41.893379, 36.340664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110134, 0.873245, 0.474672,
		-0.914303, 0.098272, -0.392927,
		-0.389769, -0.477269, 0.787588,
		31.030569, 41.750198, 36.576939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780266, 42.440216, 36.214622>,  <31.303406, 42.084286, 36.025627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780266, 42.440216, 36.214622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853472, 42.233723, 36.549290>,  <30.897394, 42.109825, 36.750088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853472, 42.233723, 36.549290>,  <30.780266, 42.440216, 36.214622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853472, 42.233723, 36.549290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124747, 0.831966, 0.540620,
		-0.975164, -0.203313, 0.087863,
		0.183014, -0.516233, 0.836666,
		30.908377, 42.078854, 36.800289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196136, 42.572208, 36.616154>,  <30.780266, 42.440216, 36.214622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196136, 42.572208, 36.616154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505861, 42.471466, 36.848366>,  <30.691696, 42.411022, 36.987694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505861, 42.471466, 36.848366>,  <30.196136, 42.572208, 36.616154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505861, 42.471466, 36.848366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216692, 0.756396, 0.617179,
		-0.594547, -0.603684, 0.531112,
		0.774312, -0.251854, 0.580526,
		30.738155, 42.395908, 37.022522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931572, 42.663334, 37.276028>,  <30.196136, 42.572208, 36.616154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931572, 42.663334, 37.276028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.331064, 42.673664, 37.293320>,  <30.570759, 42.679863, 37.303696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.331064, 42.673664, 37.293320>,  <29.931572, 42.663334, 37.276028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331064, 42.673664, 37.293320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045567, 0.828876, 0.557574,
		-0.021439, -0.558836, 0.829001,
		0.998731, 0.025821, 0.043235,
		30.630684, 42.681412, 37.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002808, 43.033340, 37.870831>,  <29.931572, 42.663334, 37.276028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002808, 43.033340, 37.870831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378706, 43.026089, 37.734276>,  <30.604244, 43.021736, 37.652344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378706, 43.026089, 37.734276>,  <30.002808, 43.033340, 37.870831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378706, 43.026089, 37.734276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192409, 0.853473, 0.484316,
		0.282587, -0.520821, 0.805537,
		0.939746, -0.018131, -0.341391,
		30.660629, 43.020649, 37.631859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335693, 43.094170, 38.469845>,  <30.002808, 43.033340, 37.870831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335693, 43.094170, 38.469845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.568035, 43.212769, 38.166611>,  <30.707439, 43.283928, 37.984669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.568035, 43.212769, 38.166611>,  <30.335693, 43.094170, 38.469845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568035, 43.212769, 38.166611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108123, 0.894948, 0.432870,
		0.806795, -0.333401, 0.487776,
		0.580854, 0.296498, -0.758089,
		30.742290, 43.301720, 37.939182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.474808, 40.580120, 47.040314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201942, 40.331936, 47.195068>,  <34.038223, 40.183025, 47.287922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201942, 40.331936, 47.195068>,  <34.474808, 40.580120, 47.040314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201942, 40.331936, 47.195068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092942, 0.598403, 0.795786,
		-0.725267, 0.506899, -0.465876,
		-0.682165, -0.620457, 0.386890,
		33.997292, 40.145798, 47.311134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003628, 41.017204, 47.204227>,  <34.474808, 40.580120, 47.040314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003628, 41.017204, 47.204227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940434, 40.687424, 47.421600>,  <33.902515, 40.489555, 47.552025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940434, 40.687424, 47.421600>,  <34.003628, 41.017204, 47.204227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940434, 40.687424, 47.421600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034040, 0.554566, 0.831443,
		-0.986854, 0.112861, -0.115679,
		-0.157989, -0.824451, 0.543434,
		33.893036, 40.440090, 47.584629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476074, 41.285812, 47.714691>,  <34.003628, 41.017204, 47.204227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476074, 41.285812, 47.714691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644859, 40.943726, 47.835056>,  <33.746132, 40.738472, 47.907276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644859, 40.943726, 47.835056>,  <33.476074, 41.285812, 47.714691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644859, 40.943726, 47.835056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019834, 0.340534, 0.940023,
		-0.906395, -0.390689, 0.160656,
		0.421965, -0.855218, 0.300910,
		33.771450, 40.687160, 47.925331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009190, 41.066303, 48.114548>,  <33.476074, 41.285812, 47.714691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009190, 41.066303, 48.114548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349705, 40.887810, 48.224953>,  <33.554016, 40.780712, 48.291195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349705, 40.887810, 48.224953>,  <33.009190, 41.066303, 48.114548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349705, 40.887810, 48.224953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082400, 0.405812, 0.910234,
		-0.518185, -0.797617, 0.308694,
		0.851290, -0.446233, 0.276009,
		33.605091, 40.753941, 48.307755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859535, 40.557888, 48.718731>,  <33.009190, 41.066303, 48.114548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859535, 40.557888, 48.718731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244247, 40.662392, 48.751549>,  <33.475075, 40.725094, 48.771240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244247, 40.662392, 48.751549>,  <32.859535, 40.557888, 48.718731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244247, 40.662392, 48.751549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150840, 0.255401, 0.954996,
		0.228540, -0.930869, 0.285046,
		0.961778, 0.261251, 0.082042,
		33.532780, 40.740768, 48.776161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982235, 40.318260, 49.476349>,  <32.859535, 40.557888, 48.718731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982235, 40.318260, 49.476349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286762, 40.557671, 49.376617>,  <33.469479, 40.701317, 49.316776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286762, 40.557671, 49.376617>,  <32.982235, 40.318260, 49.476349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286762, 40.557671, 49.376617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015770, 0.367339, 0.929953,
		0.648188, -0.711922, 0.270223,
		0.761317, 0.598522, -0.249332,
		33.515156, 40.737228, 49.301819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553577, 40.168488, 49.888283>,  <32.982235, 40.318260, 49.476349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553577, 40.168488, 49.888283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603180, 40.545696, 49.764782>,  <33.632942, 40.772022, 49.690681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603180, 40.545696, 49.764782>,  <33.553577, 40.168488, 49.888283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603180, 40.545696, 49.764782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028986, 0.314468, 0.948825,
		0.991858, -0.108708, 0.066330,
		0.124003, 0.943023, -0.308757,
		33.640381, 40.828602, 49.672153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915474, 40.431217, 50.375912>,  <33.553577, 40.168488, 49.888283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915474, 40.431217, 50.375912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782352, 40.765232, 50.200657>,  <33.702480, 40.965641, 50.095505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782352, 40.765232, 50.200657>,  <33.915474, 40.431217, 50.375912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782352, 40.765232, 50.200657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155409, 0.409699, 0.898885,
		0.930102, 0.367242, -0.006578,
		-0.332803, 0.835033, -0.438134,
		33.682510, 41.015743, 50.069218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285244, 40.984444, 50.784237>,  <33.915474, 40.431217, 50.375912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285244, 40.984444, 50.784237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971943, 41.161739, 50.609859>,  <33.783962, 41.268116, 50.505234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971943, 41.161739, 50.609859>,  <34.285244, 40.984444, 50.784237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971943, 41.161739, 50.609859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261263, 0.401622, 0.877748,
		0.564141, 0.801396, -0.198769,
		-0.783254, 0.443243, -0.435946,
		33.736965, 41.294712, 50.479076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315788, 41.666161, 51.008373>,  <34.285244, 40.984444, 50.784237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315788, 41.666161, 51.008373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947220, 41.636147, 50.855873>,  <33.726078, 41.618137, 50.764374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947220, 41.636147, 50.855873>,  <34.315788, 41.666161, 51.008373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947220, 41.636147, 50.855873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368702, 0.478527, 0.796913,
		0.122642, 0.874861, -0.468591,
		-0.921422, -0.075035, -0.381251,
		33.670792, 41.613636, 50.741497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043930, 42.418880, 50.940121>,  <34.315788, 41.666161, 51.008373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043930, 42.418880, 50.940121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771008, 42.131687, 50.995193>,  <33.607254, 41.959370, 51.028236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771008, 42.131687, 50.995193>,  <34.043930, 42.418880, 50.940121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771008, 42.131687, 50.995193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328532, 0.469380, 0.819603,
		-0.653087, 0.513988, -0.556142,
		-0.682308, -0.717982, 0.137685,
		33.566315, 41.916294, 51.036499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376846, 42.782024, 51.139843>,  <34.043930, 42.418880, 50.940121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376846, 42.782024, 51.139843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387917, 42.401451, 51.262486>,  <33.394558, 42.173107, 51.336071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387917, 42.401451, 51.262486>,  <33.376846, 42.782024, 51.139843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387917, 42.401451, 51.262486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055389, 0.304793, 0.950806,
		-0.998081, -0.043301, -0.044262,
		0.027680, -0.951434, 0.306607,
		33.396221, 42.116020, 51.354469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996334, 42.787533, 51.733482>,  <33.376846, 42.782024, 51.139843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996334, 42.787533, 51.733482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160877, 42.424850, 51.770721>,  <33.259605, 42.207241, 51.793064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160877, 42.424850, 51.770721>,  <32.996334, 42.787533, 51.733482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160877, 42.424850, 51.770721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156362, 0.030422, 0.987231,
		-0.897961, -0.420664, -0.129260,
		0.411360, -0.906706, 0.093094,
		33.284286, 42.152840, 51.798649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432621, 42.827663, 52.325703>,  <32.996334, 42.787533, 51.733482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432621, 42.827663, 52.325703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088043, 42.838058, 52.528576>,  <31.881296, 42.844296, 52.650299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088043, 42.838058, 52.528576>,  <32.432621, 42.827663, 52.325703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088043, 42.838058, 52.528576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505922, 0.042948, -0.861510,
		-0.044171, -0.998739, -0.023849,
		-0.861448, 0.025988, 0.507181,
		31.829609, 42.845856, 52.680729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968313, 42.201836, 52.309982>,  <32.432621, 42.827663, 52.325703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968313, 42.201836, 52.309982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786846, 42.557259, 52.337257>,  <31.677967, 42.770512, 52.353622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786846, 42.557259, 52.337257>,  <31.968313, 42.201836, 52.309982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786846, 42.557259, 52.337257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212938, -0.033780, -0.976482,
		-0.865358, -0.457517, 0.204532,
		-0.453666, 0.888559, 0.068191,
		31.650745, 42.823826, 52.357716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393517, 42.058861, 51.933434>,  <31.968313, 42.201836, 52.309982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393517, 42.058861, 51.933434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.450302, 42.454796, 51.930286>,  <31.484373, 42.692356, 51.928398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.450302, 42.454796, 51.930286>,  <31.393517, 42.058861, 51.933434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450302, 42.454796, 51.930286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089145, 0.004872, -0.996007,
		-0.985849, 0.142100, 0.088931,
		0.141966, 0.989840, -0.007865,
		31.492891, 42.751747, 51.927929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902163, 42.287971, 51.539139>,  <31.393517, 42.058861, 51.933434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902163, 42.287971, 51.539139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156141, 42.596687, 51.525368>,  <31.308529, 42.781918, 51.517105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156141, 42.596687, 51.525368>,  <30.902163, 42.287971, 51.539139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156141, 42.596687, 51.525368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148340, 0.078063, -0.985851,
		-0.758181, 0.631069, 0.164053,
		0.634946, 0.771789, -0.034427,
		31.346624, 42.828224, 51.515041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590164, 42.708630, 51.015781>,  <30.902163, 42.287971, 51.539139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590164, 42.708630, 51.015781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971878, 42.824448, 51.045460>,  <31.200907, 42.893940, 51.063267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971878, 42.824448, 51.045460>,  <30.590164, 42.708630, 51.015781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971878, 42.824448, 51.045460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049347, 0.092195, -0.994518,
		-0.294801, 0.952713, 0.073692,
		0.954284, 0.289548, 0.074193,
		31.258163, 42.911312, 51.067719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632448, 43.204987, 50.485695>,  <30.590164, 42.708630, 51.015781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632448, 43.204987, 50.485695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013866, 43.131069, 50.580864>,  <31.242718, 43.086720, 50.637966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013866, 43.131069, 50.580864>,  <30.632448, 43.204987, 50.485695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013866, 43.131069, 50.580864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249474, 0.041681, -0.967484,
		0.168864, 0.981894, 0.085845,
		0.953545, -0.184789, 0.237919,
		31.299931, 43.075634, 50.652241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007441, 43.708424, 50.172649>,  <30.632448, 43.204987, 50.485695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007441, 43.708424, 50.172649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250601, 43.393387, 50.212975>,  <31.396498, 43.204365, 50.237167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250601, 43.393387, 50.212975>,  <31.007441, 43.708424, 50.172649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250601, 43.393387, 50.212975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155679, -0.006272, -0.987788,
		0.778602, 0.616170, 0.118798,
		0.607901, -0.787588, 0.100808,
		31.432970, 43.157112, 50.243217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628571, 43.973694, 49.842789>,  <31.007441, 43.708424, 50.172649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628571, 43.973694, 49.842789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720995, 43.585743, 49.873653>,  <31.776449, 43.352974, 49.892174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720995, 43.585743, 49.873653>,  <31.628571, 43.973694, 49.842789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720995, 43.585743, 49.873653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565724, 0.069403, -0.821669,
		0.791560, 0.233508, 0.564718,
		0.231059, -0.969875, 0.077164,
		31.790312, 43.294781, 49.896801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389866, 43.896877, 49.682407>,  <31.628571, 43.973694, 49.842789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389866, 43.896877, 49.682407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222984, 43.538101, 49.623833>,  <32.122856, 43.322838, 49.588688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222984, 43.538101, 49.623833>,  <32.389866, 43.896877, 49.682407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222984, 43.538101, 49.623833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472774, -0.076588, -0.877849,
		0.776161, -0.435474, 0.456002,
		-0.417204, -0.896938, -0.146436,
		32.097824, 43.269020, 49.579903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964382, 43.497677, 49.415745>,  <32.389866, 43.896877, 49.682407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964382, 43.497677, 49.415745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633598, 43.304363, 49.300808>,  <32.435127, 43.188374, 49.231846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633598, 43.304363, 49.300808>,  <32.964382, 43.497677, 49.415745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633598, 43.304363, 49.300808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422001, -0.195787, -0.885202,
		0.371546, -0.853290, 0.365855,
		-0.826964, -0.483284, -0.287345,
		32.385509, 43.159378, 49.214603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287060, 43.080563, 48.911167>,  <32.964382, 43.497677, 49.415745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287060, 43.080563, 48.911167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902580, 42.998997, 48.836849>,  <32.671894, 42.950058, 48.792259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902580, 42.998997, 48.836849>,  <33.287060, 43.080563, 48.911167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902580, 42.998997, 48.836849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264674, -0.491843, -0.829480,
		0.077760, -0.846469, 0.526729,
		-0.961197, -0.203912, -0.185793,
		32.614220, 42.937824, 48.781113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218731, 42.273479, 48.773212>,  <33.287060, 43.080563, 48.911167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218731, 42.273479, 48.773212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928192, 42.485413, 48.598080>,  <32.753868, 42.612572, 48.493000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928192, 42.485413, 48.598080>,  <33.218731, 42.273479, 48.773212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928192, 42.485413, 48.598080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194958, -0.452029, -0.870437,
		-0.659099, -0.717598, 0.225034,
		-0.726347, 0.529832, -0.437834,
		32.710289, 42.644363, 48.466728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902344, 41.787819, 48.363541>,  <33.218731, 42.273479, 48.773212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902344, 41.787819, 48.363541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841129, 42.157578, 48.223789>,  <32.804401, 42.379433, 48.139938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841129, 42.157578, 48.223789>,  <32.902344, 41.787819, 48.363541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841129, 42.157578, 48.223789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304495, -0.292230, -0.906578,
		-0.940139, -0.245126, -0.236752,
		-0.153040, 0.924400, -0.349376,
		32.795216, 42.434898, 48.118977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565933, 41.791637, 47.697891>,  <32.902344, 41.787819, 48.363541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565933, 41.791637, 47.697891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715328, 42.162689, 47.699047>,  <32.804966, 42.385323, 47.699741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715328, 42.162689, 47.699047>,  <32.565933, 41.791637, 47.697891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715328, 42.162689, 47.699047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320248, -0.126019, -0.938915,
		-0.870603, 0.351596, -0.344138,
		0.373487, 0.927631, 0.002886,
		32.827374, 42.440979, 47.699913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353642, 42.164398, 47.078522>,  <32.565933, 41.791637, 47.697891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353642, 42.164398, 47.078522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685966, 42.359886, 47.185036>,  <32.885361, 42.477180, 47.248943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685966, 42.359886, 47.185036>,  <32.353642, 42.164398, 47.078522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685966, 42.359886, 47.185036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336611, -0.060204, -0.939717,
		-0.443226, 0.870362, -0.214526,
		0.830809, 0.488719, 0.266289,
		32.935207, 42.506500, 47.264923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662281, 42.492855, 46.939972>,  <32.353642, 42.164398, 47.078522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662281, 42.492855, 46.939972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319075, 42.473732, 46.735413>,  <31.113152, 42.462257, 46.612679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.319075, 42.473732, 46.735413>,  <31.662281, 42.492855, 46.939972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319075, 42.473732, 46.735413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491683, 0.364365, 0.790877,
		0.148521, 0.930028, -0.336138,
		-0.858015, -0.047812, -0.511395,
		31.061670, 42.459389, 46.581993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358877, 43.195728, 46.953117>,  <31.662281, 42.492855, 46.939972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358877, 43.195728, 46.953117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057129, 42.946812, 46.869518>,  <30.876080, 42.797462, 46.819359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057129, 42.946812, 46.869518>,  <31.358877, 43.195728, 46.953117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057129, 42.946812, 46.869518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541019, 0.409053, 0.734830,
		-0.371785, 0.667407, -0.645247,
		-0.754371, -0.622289, -0.209000,
		30.830818, 42.760124, 46.806820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865587, 43.625317, 47.081646>,  <31.358877, 43.195728, 46.953117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865587, 43.625317, 47.081646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711750, 43.256973, 47.107265>,  <30.619448, 43.035965, 47.122639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711750, 43.256973, 47.107265>,  <30.865587, 43.625317, 47.081646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711750, 43.256973, 47.107265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526683, 0.275893, 0.804045,
		-0.758085, 0.275495, -0.591108,
		-0.384593, -0.920861, 0.064052,
		30.596373, 42.980717, 47.126480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197536, 43.750912, 47.300091>,  <30.865587, 43.625317, 47.081646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197536, 43.750912, 47.300091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.224297, 43.364590, 47.400291>,  <30.240353, 43.132797, 47.460411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.224297, 43.364590, 47.400291>,  <30.197536, 43.750912, 47.300091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224297, 43.364590, 47.400291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674671, 0.141182, 0.724490,
		-0.735080, -0.217476, -0.642154,
		0.066899, -0.965801, 0.250505,
		30.244366, 43.074848, 47.475445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510338, 43.543324, 47.428116>,  <30.197536, 43.750912, 47.300091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510338, 43.543324, 47.428116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736547, 43.268902, 47.611206>,  <29.872274, 43.104248, 47.721062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736547, 43.268902, 47.611206>,  <29.510338, 43.543324, 47.428116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736547, 43.268902, 47.611206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626839, 0.003121, 0.779143,
		-0.535962, -0.727545, -0.428279,
		0.565525, -0.686053, 0.457727,
		29.906204, 43.063087, 47.748524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050095, 43.074944, 47.670517>,  <29.510338, 43.543324, 47.428116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050095, 43.074944, 47.670517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.389269, 43.038059, 47.879322>,  <29.592773, 43.015930, 48.004604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.389269, 43.038059, 47.879322>,  <29.050095, 43.074944, 47.670517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389269, 43.038059, 47.879322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519986, 0.046714, 0.852896,
		-0.103034, -0.994643, -0.008340,
		0.847937, -0.092214, 0.522014,
		29.643650, 43.010395, 48.035927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824028, 42.635212, 48.328209>,  <29.050095, 43.074944, 47.670517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824028, 42.635212, 48.328209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.171513, 42.815315, 48.410778>,  <29.380003, 42.923378, 48.460320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.171513, 42.815315, 48.410778>,  <28.824028, 42.635212, 48.328209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171513, 42.815315, 48.410778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354809, 0.274874, 0.893619,
		0.345619, -0.849537, 0.398541,
		0.868711, 0.450257, 0.206422,
		29.432127, 42.950390, 48.472706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597300, 41.911633, 48.369656>,  <28.824028, 42.635212, 48.328209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597300, 41.911633, 48.369656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.338840, 41.613205, 48.434002>,  <28.183765, 41.434151, 48.472610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.338840, 41.613205, 48.434002>,  <28.597300, 41.911633, 48.369656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338840, 41.613205, 48.434002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254517, -0.409346, -0.876161,
		0.719523, -0.525187, 0.454384,
		-0.646149, -0.746066, 0.160865,
		28.144997, 41.389385, 48.482262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942814, 41.202229, 48.277523>,  <28.597300, 41.911633, 48.369656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942814, 41.202229, 48.277523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.552120, 41.151833, 48.208111>,  <28.317703, 41.121593, 48.166462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.552120, 41.151833, 48.208111>,  <28.942814, 41.202229, 48.277523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552120, 41.151833, 48.208111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210186, -0.401951, -0.891211,
		0.042536, -0.906952, 0.419082,
		-0.976736, -0.125994, -0.173531,
		28.259100, 41.114033, 48.156052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854429, 40.498074, 48.080704>,  <28.942814, 41.202229, 48.277523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854429, 40.498074, 48.080704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.551071, 40.699993, 47.915771>,  <28.369057, 40.821144, 47.816814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.551071, 40.699993, 47.915771>,  <28.854429, 40.498074, 48.080704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551071, 40.699993, 47.915771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110005, -0.524399, -0.844337,
		-0.642443, -0.685700, 0.342172,
		-0.758397, 0.504798, -0.412327,
		28.323551, 40.851433, 47.792072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333746, 40.023117, 47.753307>,  <28.854429, 40.498074, 48.080704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333746, 40.023117, 47.753307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.234690, 40.370548, 47.581612>,  <28.175255, 40.579006, 47.478592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.234690, 40.370548, 47.581612>,  <28.333746, 40.023117, 47.753307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234690, 40.370548, 47.581612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075031, -0.458905, -0.885312,
		-0.965942, -0.187034, 0.178814,
		-0.247642, 0.868576, -0.429242,
		28.160397, 40.631123, 47.452839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773891, 39.822918, 47.235359>,  <28.333746, 40.023117, 47.753307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773891, 39.822918, 47.235359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.930706, 40.166771, 47.104305>,  <28.024796, 40.373081, 47.025673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.930706, 40.166771, 47.104305>,  <27.773891, 39.822918, 47.235359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930706, 40.166771, 47.104305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077049, -0.324209, -0.942842,
		-0.916717, 0.394872, -0.060868,
		0.392037, 0.859630, -0.327632,
		28.048317, 40.424660, 47.006016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459906, 39.875610, 46.606331>,  <27.773891, 39.822918, 47.235359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459906, 39.875610, 46.606331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770630, 40.127281, 46.616871>,  <27.957066, 40.278286, 46.623196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770630, 40.127281, 46.616871>,  <27.459906, 39.875610, 46.606331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770630, 40.127281, 46.616871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231078, -0.245874, -0.941355,
		-0.585804, 0.737345, -0.336388,
		0.776812, 0.629181, 0.026351,
		28.003674, 40.316036, 46.624775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400774, 40.422531, 46.140408>,  <27.459906, 39.875610, 46.606331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400774, 40.422531, 46.140408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.797787, 40.411385, 46.187920>,  <28.035994, 40.404697, 46.216427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.797787, 40.411385, 46.187920>,  <27.400774, 40.422531, 46.140408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797787, 40.411385, 46.187920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115591, -0.096681, -0.988580,
		0.039028, 0.994925, -0.092738,
		0.992530, -0.027863, 0.118778,
		28.095545, 40.403027, 46.223553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.614218, 38.819508, 52.175716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.806787, 39.091541, 51.954552>,  <31.922329, 39.254761, 51.821854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.806787, 39.091541, 51.954552>,  <31.614218, 38.819508, 52.175716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806787, 39.091541, 51.954552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263994, -0.489025, -0.831362,
		-0.835785, 0.546205, -0.055891,
		0.481426, 0.680085, -0.552914,
		31.951216, 39.295567, 51.788677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185806, 38.973167, 51.531467>,  <31.614218, 38.819508, 52.175716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185806, 38.973167, 51.531467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566133, 39.079491, 51.467854>,  <31.794329, 39.143284, 51.429688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566133, 39.079491, 51.467854>,  <31.185806, 38.973167, 51.531467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566133, 39.079491, 51.467854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089836, -0.254705, -0.962837,
		-0.296440, 0.929769, -0.218298,
		0.950817, 0.265812, -0.159031,
		31.851379, 39.159233, 51.420143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135094, 39.298698, 50.955524>,  <31.185806, 38.973167, 51.531467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135094, 39.298698, 50.955524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.529284, 39.230999, 50.949886>,  <31.765797, 39.190380, 50.946503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.529284, 39.230999, 50.949886>,  <31.135094, 39.298698, 50.955524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529284, 39.230999, 50.949886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037771, -0.137523, -0.989778,
		0.165583, 0.975931, -0.141918,
		0.985472, -0.169251, -0.014091,
		31.824924, 39.180225, 50.945660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364023, 39.559216, 50.309177>,  <31.135094, 39.298698, 50.955524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364023, 39.559216, 50.309177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671112, 39.317516, 50.394489>,  <31.855366, 39.172497, 50.445675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671112, 39.317516, 50.394489>,  <31.364023, 39.559216, 50.309177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671112, 39.317516, 50.394489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031075, -0.297338, -0.954266,
		0.640030, 0.739238, -0.209496,
		0.767721, -0.604249, 0.213277,
		31.901428, 39.136242, 50.458473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809105, 39.585407, 49.723373>,  <31.364023, 39.559216, 50.309177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809105, 39.585407, 49.723373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.896149, 39.254108, 49.929932>,  <31.948376, 39.055328, 50.053867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.896149, 39.254108, 49.929932>,  <31.809105, 39.585407, 49.723373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896149, 39.254108, 49.929932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073476, -0.513668, -0.854837,
		0.973267, 0.223963, -0.050923,
		0.217609, -0.828243, 0.516392,
		31.961432, 39.005634, 50.084850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458271, 39.222343, 49.378254>,  <31.809105, 39.585407, 49.723373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458271, 39.222343, 49.378254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271538, 38.946381, 49.599560>,  <32.159500, 38.780804, 49.732342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271538, 38.946381, 49.599560>,  <32.458271, 39.222343, 49.378254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271538, 38.946381, 49.599560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148273, -0.677819, -0.720122,
		0.871829, -0.254141, 0.418720,
		-0.466829, -0.689908, 0.553261,
		32.131489, 38.739407, 49.765537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829807, 38.705177, 49.243500>,  <32.458271, 39.222343, 49.378254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829807, 38.705177, 49.243500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492264, 38.536201, 49.375832>,  <32.289738, 38.434814, 49.455231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492264, 38.536201, 49.375832>,  <32.829807, 38.705177, 49.243500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492264, 38.536201, 49.375832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065610, -0.693178, -0.717774,
		0.532547, -0.583990, 0.612658,
		-0.843854, -0.422445, 0.330834,
		32.239109, 38.409470, 49.475082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970955, 37.905552, 49.368988>,  <32.829807, 38.705177, 49.243500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970955, 37.905552, 49.368988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571125, 37.906830, 49.380539>,  <32.331226, 37.907597, 49.387470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571125, 37.906830, 49.380539>,  <32.970955, 37.905552, 49.368988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571125, 37.906830, 49.380539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020461, -0.783076, -0.621589,
		0.020622, -0.621917, 0.782811,
		-0.999578, 0.003199, 0.028873,
		32.271252, 37.907791, 49.389202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722725, 37.205757, 49.403828>,  <32.970955, 37.905552, 49.368988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722725, 37.205757, 49.403828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.430470, 37.420475, 49.235058>,  <32.255116, 37.549305, 49.133797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.430470, 37.420475, 49.235058>,  <32.722725, 37.205757, 49.403828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430470, 37.420475, 49.235058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162436, -0.736885, -0.656213,
		-0.663162, -0.410918, 0.625590,
		-0.730637, 0.536794, -0.421926,
		32.211277, 37.581512, 49.108479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205833, 36.727974, 49.242287>,  <32.722725, 37.205757, 49.403828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205833, 36.727974, 49.242287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114956, 37.038452, 49.007030>,  <32.060429, 37.224739, 48.865879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114956, 37.038452, 49.007030>,  <32.205833, 36.727974, 49.242287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114956, 37.038452, 49.007030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146695, -0.624314, -0.767276,
		-0.962739, -0.088039, 0.255701,
		-0.227189, 0.776196, -0.588137,
		32.046799, 37.271313, 48.830589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697510, 36.428009, 48.794968>,  <32.205833, 36.727974, 49.242287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697510, 36.428009, 48.794968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830444, 36.757645, 48.611477>,  <31.910204, 36.955425, 48.501385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830444, 36.757645, 48.611477>,  <31.697510, 36.428009, 48.794968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830444, 36.757645, 48.611477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083268, -0.458833, -0.884612,
		-0.939478, 0.332185, -0.083866,
		0.332336, 0.824090, -0.458724,
		31.930145, 37.004871, 48.473858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219629, 36.626389, 48.145000>,  <31.697510, 36.428009, 48.794968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219629, 36.626389, 48.145000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.594082, 36.763817, 48.115032>,  <31.818754, 36.846275, 48.097050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.594082, 36.763817, 48.115032>,  <31.219629, 36.626389, 48.145000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594082, 36.763817, 48.115032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071666, -0.394991, -0.915885,
		-0.344267, 0.852021, -0.394387,
		0.936132, 0.343573, -0.074921,
		31.874922, 36.866890, 48.092556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884245, 37.043259, 47.905636>,  <31.219629, 36.626389, 48.145000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884245, 37.043259, 47.905636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.552227, 37.219761, 47.769211>,  <30.353016, 37.325661, 47.687355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.552227, 37.219761, 47.769211>,  <30.884245, 37.043259, 47.905636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552227, 37.219761, 47.769211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237556, 0.273553, 0.932060,
		0.504571, 0.854672, -0.122240,
		-0.830045, 0.441252, -0.341060,
		30.303213, 37.352135, 47.666893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925268, 37.833931, 48.182072>,  <30.884245, 37.043259, 47.905636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925268, 37.833931, 48.182072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551605, 37.722954, 48.092297>,  <30.327408, 37.656368, 48.038429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551605, 37.722954, 48.092297>,  <30.925268, 37.833931, 48.182072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551605, 37.722954, 48.092297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312728, 0.333500, 0.889370,
		-0.171897, 0.901002, -0.398306,
		-0.934159, -0.277441, -0.224441,
		30.271358, 37.639721, 48.024963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392187, 38.472004, 48.325775>,  <30.925268, 37.833931, 48.182072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392187, 38.472004, 48.325775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.177086, 38.134792, 48.330231>,  <30.048025, 37.932465, 48.332905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.177086, 38.134792, 48.330231>,  <30.392187, 38.472004, 48.325775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177086, 38.134792, 48.330231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433961, 0.288097, 0.853626,
		-0.722840, 0.454208, -0.520766,
		-0.537755, -0.843028, 0.011139,
		30.015759, 37.881886, 48.333572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571478, 38.608131, 48.306225>,  <30.392187, 38.472004, 48.325775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571478, 38.608131, 48.306225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640869, 38.247761, 48.465340>,  <29.682505, 38.031540, 48.560810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640869, 38.247761, 48.465340>,  <29.571478, 38.608131, 48.306225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640869, 38.247761, 48.465340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532523, 0.253962, 0.807417,
		-0.828447, -0.351901, -0.435708,
		0.173478, -0.900927, 0.397789,
		29.692913, 37.977482, 48.584675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941238, 38.466557, 48.559750>,  <29.571478, 38.608131, 48.306225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941238, 38.466557, 48.559750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192654, 38.212322, 48.739071>,  <29.343502, 38.059780, 48.846664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192654, 38.212322, 48.739071>,  <28.941238, 38.466557, 48.559750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192654, 38.212322, 48.739071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482360, 0.133616, 0.865722,
		-0.610140, -0.760381, -0.222598,
		0.628536, -0.635585, 0.448302,
		29.381214, 38.021648, 48.873562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610050, 37.982651, 48.933121>,  <28.941238, 38.466557, 48.559750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610050, 37.982651, 48.933121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.969658, 37.960510, 49.106880>,  <29.185423, 37.947227, 49.211136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.969658, 37.960510, 49.106880>,  <28.610050, 37.982651, 48.933121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969658, 37.960510, 49.106880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430622, 0.068520, 0.899928,
		-0.079576, -0.996113, 0.037766,
		0.899018, -0.055350, 0.434400,
		29.239363, 37.943905, 49.237202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576023, 37.469242, 49.456879>,  <28.610050, 37.982651, 48.933121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576023, 37.469242, 49.456879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885696, 37.695496, 49.570507>,  <29.071501, 37.831249, 49.638683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885696, 37.695496, 49.570507>,  <28.576023, 37.469242, 49.456879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885696, 37.695496, 49.570507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419499, 0.122452, 0.899459,
		0.473980, -0.815514, 0.332083,
		0.774185, 0.565634, 0.284068,
		29.117952, 37.865185, 49.655727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713804, 37.289799, 50.181553>,  <28.576023, 37.469242, 49.456879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713804, 37.289799, 50.181553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900192, 37.638916, 50.123444>,  <29.012026, 37.848385, 50.088577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900192, 37.638916, 50.123444>,  <28.713804, 37.289799, 50.181553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900192, 37.638916, 50.123444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451953, 0.375940, 0.808955,
		0.760664, -0.311292, 0.569638,
		0.465970, 0.872793, -0.145275,
		29.039984, 37.900753, 50.079861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087910, 37.430088, 50.715309>,  <28.713804, 37.289799, 50.181553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087910, 37.430088, 50.715309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.039097, 37.805344, 50.585690>,  <29.009809, 38.030499, 50.507919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.039097, 37.805344, 50.585690>,  <29.087910, 37.430088, 50.715309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039097, 37.805344, 50.585690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346815, 0.265600, 0.899542,
		0.929961, 0.222157, 0.292949,
		-0.122032, 0.938138, -0.324045,
		29.002487, 38.086784, 50.488476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235081, 37.722637, 51.285748>,  <29.087910, 37.430088, 50.715309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235081, 37.722637, 51.285748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.077784, 38.019917, 51.069221>,  <28.983406, 38.198284, 50.939308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.077784, 38.019917, 51.069221>,  <29.235081, 37.722637, 51.285748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077784, 38.019917, 51.069221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374838, 0.408009, 0.832482,
		0.839558, 0.530271, 0.118133,
		-0.393241, 0.743197, -0.541313,
		28.959812, 38.242874, 50.906826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509098, 38.312771, 51.576061>,  <29.235081, 37.722637, 51.285748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509098, 38.312771, 51.576061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192492, 38.441845, 51.368454>,  <29.002527, 38.519291, 51.243889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192492, 38.441845, 51.368454>,  <29.509098, 38.312771, 51.576061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192492, 38.441845, 51.368454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295570, 0.541204, 0.787234,
		0.534924, 0.776512, -0.332994,
		-0.791514, 0.322687, -0.519017,
		28.955038, 38.538651, 51.212749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453545, 39.106541, 51.635246>,  <29.509098, 38.312771, 51.576061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453545, 39.106541, 51.635246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086195, 39.015484, 51.505772>,  <28.865786, 38.960850, 51.428089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086195, 39.015484, 51.505772>,  <29.453545, 39.106541, 51.635246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086195, 39.015484, 51.505772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386950, 0.687837, 0.614125,
		0.082841, 0.689245, -0.719777,
		-0.918372, -0.227643, -0.323685,
		28.810684, 38.947189, 51.408665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182915, 39.722767, 51.429264>,  <29.453545, 39.106541, 51.635246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182915, 39.722767, 51.429264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.890291, 39.470814, 51.533627>,  <28.714718, 39.319641, 51.596245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.890291, 39.470814, 51.533627>,  <29.182915, 39.722767, 51.429264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890291, 39.470814, 51.533627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332682, 0.663828, 0.669817,
		-0.595103, 0.403211, -0.695179,
		-0.731557, -0.629884, 0.260905,
		28.670824, 39.281849, 51.611897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555752, 40.120922, 51.487411>,  <29.182915, 39.722767, 51.429264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555752, 40.120922, 51.487411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.463593, 39.798309, 51.705193>,  <28.408297, 39.604744, 51.835861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.463593, 39.798309, 51.705193>,  <28.555752, 40.120922, 51.487411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463593, 39.798309, 51.705193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401502, 0.588449, 0.701801,
		-0.886405, -0.056906, -0.459399,
		-0.230397, -0.806529, 0.544452,
		28.394474, 39.556351, 51.868526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099384, 40.307510, 51.058216>,  <28.555752, 40.120922, 51.487411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099384, 40.307510, 51.058216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.786448, 40.544544, 51.134941>,  <27.598686, 40.686764, 51.180977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.786448, 40.544544, 51.134941>,  <28.099384, 40.307510, 51.058216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786448, 40.544544, 51.134941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048564, 0.248985, -0.967289,
		-0.620955, -0.766064, -0.166013,
		-0.782341, 0.592580, 0.191812,
		27.551744, 40.722317, 51.192486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334824, 40.226032, 50.734455>,  <28.099384, 40.307510, 51.058216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334824, 40.226032, 50.734455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.395237, 40.616245, 50.798355>,  <27.431484, 40.850372, 50.836693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.395237, 40.616245, 50.798355>,  <27.334824, 40.226032, 50.734455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395237, 40.616245, 50.798355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139427, 0.181008, -0.973548,
		-0.978647, 0.124764, 0.163354,
		0.151032, 0.975536, 0.159747,
		27.440546, 40.908905, 50.846279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824284, 40.595539, 50.310612>,  <27.334824, 40.226032, 50.734455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824284, 40.595539, 50.310612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.099455, 40.875572, 50.387177>,  <27.264557, 41.043591, 50.433117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.099455, 40.875572, 50.387177>,  <26.824284, 40.595539, 50.310612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099455, 40.875572, 50.387177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054458, 0.312779, -0.948263,
		-0.723733, 0.641913, 0.253294,
		0.687928, 0.700083, 0.191411,
		27.305834, 41.085598, 50.444599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613638, 41.281651, 50.076298>,  <26.824284, 40.595539, 50.310612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613638, 41.281651, 50.076298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.013203, 41.263020, 50.077168>,  <27.252941, 41.251842, 50.077690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.013203, 41.263020, 50.077168>,  <26.613638, 41.281651, 50.076298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013203, 41.263020, 50.077168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012781, 0.228622, -0.973431,
		0.044838, 0.972401, 0.228968,
		0.998913, -0.046573, 0.002177,
		27.312876, 41.249046, 50.077820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908623, 41.819164, 49.626064>,  <26.613638, 41.281651, 50.076298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908623, 41.819164, 49.626064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.195934, 41.541191, 49.639576>,  <27.368320, 41.374405, 49.647682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.195934, 41.541191, 49.639576>,  <26.908623, 41.819164, 49.626064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195934, 41.541191, 49.639576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135056, 0.091633, -0.986592,
		0.682521, 0.713210, 0.159673,
		0.718279, -0.694935, 0.033782,
		27.411417, 41.332710, 49.649712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540714, 42.139744, 49.342007>,  <26.908623, 41.819164, 49.626064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540714, 42.139744, 49.342007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.567955, 41.742126, 49.307968>,  <27.584299, 41.503555, 49.287544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.567955, 41.742126, 49.307968>,  <27.540714, 42.139744, 49.342007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567955, 41.742126, 49.307968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400769, 0.105365, -0.910100,
		0.913644, 0.027875, 0.405557,
		0.068100, -0.994043, -0.085095,
		27.588385, 41.443913, 49.282440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259613, 42.055309, 49.102467>,  <27.540714, 42.139744, 49.342007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259613, 42.055309, 49.102467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.096714, 41.700268, 49.016392>,  <27.998976, 41.487244, 48.964748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.096714, 41.700268, 49.016392>,  <28.259613, 42.055309, 49.102467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096714, 41.700268, 49.016392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473828, -0.003907, -0.880609,
		0.780793, -0.460587, 0.422164,
		-0.407246, -0.887606, -0.215188,
		27.974541, 41.433987, 48.951836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912409, 42.405167, 48.988056>,  <28.259613, 42.055309, 49.102467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912409, 42.405167, 48.988056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.135166, 42.733124, 48.934929>,  <29.268822, 42.929897, 48.903053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.135166, 42.733124, 48.934929>,  <28.912409, 42.405167, 48.988056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135166, 42.733124, 48.934929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230729, 0.306329, 0.923540,
		0.797893, -0.483669, 0.359766,
		0.556894, 0.819895, -0.132821,
		29.302235, 42.979092, 48.895084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283865, 42.463760, 49.534302>,  <28.912409, 42.405167, 48.988056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283865, 42.463760, 49.534302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.290508, 42.844398, 49.411533>,  <29.294495, 43.072781, 49.337872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.290508, 42.844398, 49.411533>,  <29.283865, 42.463760, 49.534302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290508, 42.844398, 49.411533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111845, 0.306801, 0.945179,
		0.993587, 0.018629, 0.111527,
		0.016609, 0.951591, -0.306917,
		29.295490, 43.129875, 49.319458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644306, 42.709522, 50.102306>,  <29.283865, 42.463760, 49.534302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644306, 42.709522, 50.102306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.490404, 43.017551, 49.898758>,  <29.398062, 43.202370, 49.776627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.490404, 43.017551, 49.898758>,  <29.644306, 42.709522, 50.102306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490404, 43.017551, 49.898758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193031, 0.471994, 0.860209,
		0.902608, 0.429201, -0.032956,
		-0.384757, 0.770070, -0.508875,
		29.374977, 43.248573, 49.746094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891710, 43.379002, 50.418819>,  <29.644306, 42.709522, 50.102306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891710, 43.379002, 50.418819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.575649, 43.513935, 50.214127>,  <29.386013, 43.594894, 50.091312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.575649, 43.513935, 50.214127>,  <29.891710, 43.379002, 50.418819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575649, 43.513935, 50.214127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317576, 0.488770, 0.812558,
		0.524221, 0.804556, -0.279073,
		-0.790151, 0.337333, -0.511731,
		29.338604, 43.615135, 50.060608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788237, 44.100868, 50.440952>,  <29.891710, 43.379002, 50.418819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788237, 44.100868, 50.440952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.419838, 43.969906, 50.356510>,  <29.198799, 43.891327, 50.305843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.419838, 43.969906, 50.356510>,  <29.788237, 44.100868, 50.440952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419838, 43.969906, 50.356510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369885, 0.564865, 0.737639,
		-0.122260, 0.757451, -0.641343,
		-0.920998, -0.327407, -0.211110,
		29.143539, 43.871685, 50.293179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329329, 44.747311, 50.452637>,  <29.788237, 44.100868, 50.440952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329329, 44.747311, 50.452637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.082338, 44.435730, 50.496376>,  <28.934145, 44.248779, 50.522617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.082338, 44.435730, 50.496376>,  <29.329329, 44.747311, 50.452637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082338, 44.435730, 50.496376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386954, 0.421838, 0.819951,
		-0.684831, 0.463985, -0.561893,
		-0.617473, -0.778954, 0.109347,
		28.897097, 44.202045, 50.529179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654503, 45.015774, 50.765465>,  <29.329329, 44.747311, 50.452637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654503, 45.015774, 50.765465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.630491, 44.621826, 50.830482>,  <28.616083, 44.385456, 50.869492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.630491, 44.621826, 50.830482>,  <28.654503, 45.015774, 50.765465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630491, 44.621826, 50.830482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184206, 0.170970, 0.967904,
		-0.981053, 0.028163, -0.191683,
		-0.060031, -0.984874, 0.162543,
		28.612482, 44.326363, 50.879246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122959, 44.966022, 51.217411>,  <28.654503, 45.015774, 50.765465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122959, 44.966022, 51.217411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.328974, 44.629223, 51.281639>,  <28.452581, 44.427143, 51.320175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.328974, 44.629223, 51.281639>,  <28.122959, 44.966022, 51.217411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328974, 44.629223, 51.281639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243551, 0.035861, 0.969225,
		-0.821840, -0.538293, -0.186599,
		0.515035, -0.841994, 0.160574,
		28.483484, 44.376625, 51.329811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733080, 44.571957, 51.700165>,  <28.122959, 44.966022, 51.217411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733080, 44.571957, 51.700165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.086229, 44.387211, 51.734142>,  <28.298119, 44.276363, 51.754528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.086229, 44.387211, 51.734142>,  <27.733080, 44.571957, 51.700165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086229, 44.387211, 51.734142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083316, 0.023969, 0.996235,
		-0.462161, -0.886627, -0.017319,
		0.882874, -0.461864, 0.084948,
		28.351091, 44.248653, 51.759628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.052540, 38.357651, 37.368980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300659, 38.422325, 37.675987>,  <34.449532, 38.461132, 37.860191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300659, 38.422325, 37.675987>,  <34.052540, 38.357651, 37.368980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300659, 38.422325, 37.675987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741716, 0.439193, 0.506920,
		-0.255126, -0.883723, 0.392358,
		0.620297, 0.161690, 0.767521,
		34.486748, 38.470833, 37.906242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674026, 38.169743, 38.020683>,  <34.052540, 38.357651, 37.368980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674026, 38.169743, 38.020683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968025, 38.423935, 38.115284>,  <34.144424, 38.576450, 38.172043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968025, 38.423935, 38.115284>,  <33.674026, 38.169743, 38.020683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968025, 38.423935, 38.115284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649802, 0.560479, 0.513439,
		0.193730, -0.531057, 0.824893,
		0.735001, 0.635485, 0.236500,
		34.188526, 38.614582, 38.186234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625309, 38.257957, 38.830662>,  <33.674026, 38.169743, 38.020683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625309, 38.257957, 38.830662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798351, 38.566288, 38.643612>,  <33.902176, 38.751286, 38.531384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798351, 38.566288, 38.643612>,  <33.625309, 38.257957, 38.830662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798351, 38.566288, 38.643612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613940, 0.631697, 0.473325,
		0.660250, 0.082330, 0.746519,
		0.432606, 0.770831, -0.467624,
		33.928135, 38.797539, 38.503326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785629, 38.728653, 39.418945>,  <33.625309, 38.257957, 38.830662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785629, 38.728653, 39.418945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789677, 38.950367, 39.086040>,  <33.792107, 39.083397, 38.886295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789677, 38.950367, 39.086040>,  <33.785629, 38.728653, 39.418945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789677, 38.950367, 39.086040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555649, 0.695096, 0.456175,
		0.831356, 0.457832, 0.315020,
		0.010118, 0.554285, -0.832266,
		33.792713, 39.116653, 38.836361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126987, 39.371944, 39.584503>,  <33.785629, 38.728653, 39.418945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126987, 39.371944, 39.584503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911102, 39.445686, 39.255936>,  <33.781570, 39.489929, 39.058796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911102, 39.445686, 39.255936>,  <34.126987, 39.371944, 39.584503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911102, 39.445686, 39.255936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383516, 0.814754, 0.434846,
		0.749418, 0.549718, -0.369030,
		-0.539712, 0.184353, -0.821417,
		33.749187, 39.500992, 39.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316422, 39.945202, 39.509720>,  <34.126987, 39.371944, 39.584503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316422, 39.945202, 39.509720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998631, 39.898922, 39.271252>,  <33.807957, 39.871155, 39.128170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998631, 39.898922, 39.271252>,  <34.316422, 39.945202, 39.509720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998631, 39.898922, 39.271252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497569, 0.686836, 0.529793,
		0.348173, 0.717544, -0.603246,
		-0.794481, -0.115697, -0.596166,
		33.760284, 39.864212, 39.092403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070778, 40.623089, 39.422020>,  <34.316422, 39.945202, 39.509720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070778, 40.623089, 39.422020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755650, 40.416225, 39.288227>,  <33.566570, 40.292107, 39.207951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755650, 40.416225, 39.288227>,  <34.070778, 40.623089, 39.422020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755650, 40.416225, 39.288227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612632, 0.602153, 0.511951,
		-0.063349, 0.608244, -0.791218,
		-0.787826, -0.517157, -0.334484,
		33.519302, 40.261078, 39.187881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549755, 41.059452, 39.240234>,  <34.070778, 40.623089, 39.422020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549755, 41.059452, 39.240234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343719, 40.730839, 39.338017>,  <33.220097, 40.533672, 39.396687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343719, 40.730839, 39.338017>,  <33.549755, 41.059452, 39.240234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343719, 40.730839, 39.338017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625019, 0.555171, 0.548759,
		-0.586540, 0.129871, -0.799440,
		-0.515094, -0.821534, 0.244458,
		33.189190, 40.484379, 39.411354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984840, 41.251587, 39.279640>,  <33.549755, 41.059452, 39.240234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984840, 41.251587, 39.279640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945122, 40.918854, 39.498070>,  <32.921291, 40.719215, 39.629128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945122, 40.918854, 39.498070>,  <32.984840, 41.251587, 39.279640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945122, 40.918854, 39.498070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589906, 0.491160, 0.640915,
		-0.801344, -0.258493, -0.539472,
		-0.099295, -0.831831, 0.546075,
		32.915333, 40.669304, 39.661892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385986, 41.369816, 39.527374>,  <32.984840, 41.251587, 39.279640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385986, 41.369816, 39.527374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532547, 41.079365, 39.760094>,  <32.620483, 40.905094, 39.899723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532547, 41.079365, 39.760094>,  <32.385986, 41.369816, 39.527374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532547, 41.079365, 39.760094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589675, 0.302464, 0.748865,
		-0.719743, -0.617459, -0.317355,
		0.366405, -0.726126, 0.581797,
		32.642467, 40.861526, 39.934631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748451, 41.108978, 39.877251>,  <32.385986, 41.369816, 39.527374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748451, 41.108978, 39.877251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070488, 41.020103, 40.097237>,  <32.263710, 40.966778, 40.229225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070488, 41.020103, 40.097237>,  <31.748451, 41.108978, 39.877251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070488, 41.020103, 40.097237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521570, 0.176359, 0.834783,
		-0.282472, -0.958921, 0.026097,
		0.805093, -0.222191, 0.549960,
		32.312016, 40.953445, 40.262226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642782, 40.542076, 40.387268>,  <31.748451, 41.108978, 39.877251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642782, 40.542076, 40.387268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955965, 40.740788, 40.537033>,  <32.143875, 40.860016, 40.626892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955965, 40.740788, 40.537033>,  <31.642782, 40.542076, 40.387268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955965, 40.740788, 40.537033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556110, 0.289237, 0.779155,
		0.278765, -0.818268, 0.502721,
		0.782963, 0.496769, 0.374418,
		32.190853, 40.889820, 40.649357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318634, 39.837788, 40.477917>,  <31.642782, 40.542076, 40.387268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318634, 39.837788, 40.477917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962130, 39.659832, 40.513092>,  <30.748228, 39.553059, 40.534195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962130, 39.659832, 40.513092>,  <31.318634, 39.837788, 40.477917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962130, 39.659832, 40.513092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194686, -0.550482, -0.811829,
		0.409579, -0.706431, 0.577235,
		-0.891259, -0.444888, 0.087934,
		30.694752, 39.526367, 40.539471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328857, 38.994438, 40.480629>,  <31.318634, 39.837788, 40.477917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328857, 38.994438, 40.480629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971800, 39.109970, 40.342201>,  <30.757565, 39.179287, 40.259144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971800, 39.109970, 40.342201>,  <31.328857, 38.994438, 40.480629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971800, 39.109970, 40.342201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108896, -0.606836, -0.787332,
		-0.437411, -0.740494, 0.510236,
		-0.892644, 0.288825, -0.346073,
		30.704006, 39.196617, 40.238380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802454, 38.322701, 40.347076>,  <31.328857, 38.994438, 40.480629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802454, 38.322701, 40.347076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702847, 38.638992, 40.123386>,  <30.643082, 38.828770, 39.989174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702847, 38.638992, 40.123386>,  <30.802454, 38.322701, 40.347076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702847, 38.638992, 40.123386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012728, -0.574690, -0.818272,
		-0.968415, -0.210884, 0.133045,
		-0.249020, 0.790734, -0.559222,
		30.628139, 38.876213, 39.955620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344595, 38.071518, 39.826363>,  <30.802454, 38.322701, 40.347076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344595, 38.071518, 39.826363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463940, 38.422741, 39.676704>,  <30.535547, 38.633476, 39.586910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463940, 38.422741, 39.676704>,  <30.344595, 38.071518, 39.826363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463940, 38.422741, 39.676704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018519, -0.386605, -0.922059,
		-0.954273, 0.282036, -0.099088,
		0.298362, 0.878061, -0.374150,
		30.553448, 38.686161, 39.564461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007805, 38.118874, 39.158020>,  <30.344595, 38.071518, 39.826363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007805, 38.118874, 39.158020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294865, 38.395889, 39.128719>,  <30.467100, 38.562099, 39.111137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294865, 38.395889, 39.128719>,  <30.007805, 38.118874, 39.158020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294865, 38.395889, 39.128719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142260, -0.248758, -0.958061,
		-0.681718, 0.677132, -0.277042,
		0.717650, 0.692540, -0.073254,
		30.510160, 38.603653, 39.106743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828159, 38.607674, 38.630070>,  <30.007805, 38.118874, 39.158020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828159, 38.607674, 38.630070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226042, 38.599834, 38.670418>,  <30.464771, 38.595131, 38.694626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226042, 38.599834, 38.670418>,  <29.828159, 38.607674, 38.630070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226042, 38.599834, 38.670418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094563, -0.209499, -0.973226,
		0.040203, 0.977613, -0.206537,
		0.994707, -0.019596, 0.100868,
		30.524454, 38.593956, 38.700680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124996, 38.836582, 37.975582>,  <29.828159, 38.607674, 38.630070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124996, 38.836582, 37.975582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441504, 38.672623, 38.157074>,  <30.631409, 38.574245, 38.265968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441504, 38.672623, 38.157074>,  <30.124996, 38.836582, 37.975582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441504, 38.672623, 38.157074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242144, -0.471323, -0.848069,
		0.561478, 0.780921, -0.273690,
		0.791271, -0.409900, 0.453732,
		30.678885, 38.549652, 38.293194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615467, 38.964657, 37.501682>,  <30.124996, 38.836582, 37.975582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615467, 38.964657, 37.501682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771719, 38.669807, 37.722252>,  <30.865471, 38.492897, 37.854591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771719, 38.669807, 37.722252>,  <30.615467, 38.964657, 37.501682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771719, 38.669807, 37.722252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273328, -0.479125, -0.834105,
		0.879034, 0.476544, 0.014315,
		0.390629, -0.737119, 0.551420,
		30.888908, 38.448673, 37.887676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203066, 38.823227, 37.091789>,  <30.615467, 38.964657, 37.501682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203066, 38.823227, 37.091789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137932, 38.513416, 37.336277>,  <31.098852, 38.327530, 37.482971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137932, 38.513416, 37.336277>,  <31.203066, 38.823227, 37.091789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137932, 38.513416, 37.336277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291784, -0.629583, -0.720061,
		0.942522, 0.061095, 0.328512,
		-0.162833, -0.774528, 0.611222,
		31.089083, 38.281059, 37.519642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776072, 38.417130, 37.067345>,  <31.203066, 38.823227, 37.091789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776072, 38.417130, 37.067345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481453, 38.169884, 37.177200>,  <31.304682, 38.021534, 37.243114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481453, 38.169884, 37.177200>,  <31.776072, 38.417130, 37.067345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481453, 38.169884, 37.177200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317390, -0.674406, -0.666663,
		0.597294, -0.403862, 0.692918,
		-0.736548, -0.618119, 0.274637,
		31.260489, 37.984447, 37.259590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051731, 37.823418, 37.023666>,  <31.776072, 38.417130, 37.067345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051731, 37.823418, 37.023666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669533, 37.705769, 37.032780>,  <31.440214, 37.635181, 37.038246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669533, 37.705769, 37.032780>,  <32.051731, 37.823418, 37.023666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669533, 37.705769, 37.032780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229707, -0.790240, -0.568116,
		0.185096, -0.537600, 0.822633,
		-0.955497, -0.294121, 0.022780,
		31.382883, 37.617531, 37.039612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135498, 37.059910, 37.155167>,  <32.051731, 37.823418, 37.023666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135498, 37.059910, 37.155167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778315, 37.120426, 36.985588>,  <31.564005, 37.156738, 36.883839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778315, 37.120426, 36.985588>,  <32.135498, 37.059910, 37.155167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778315, 37.120426, 36.985588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124144, -0.822524, -0.555016,
		-0.432679, -0.548237, 0.715698,
		-0.892959, 0.151294, -0.423949,
		31.510427, 37.165813, 36.858402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776997, 36.401031, 37.201290>,  <32.135498, 37.059910, 37.155167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776997, 36.401031, 37.201290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603498, 36.602978, 36.902767>,  <31.499399, 36.724148, 36.723656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603498, 36.602978, 36.902767>,  <31.776997, 36.401031, 37.201290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603498, 36.602978, 36.902767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049075, -0.813809, -0.579056,
		-0.899698, -0.287788, 0.328210,
		-0.433746, 0.504869, -0.746306,
		31.473375, 36.754440, 36.678875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209587, 35.949787, 36.886829>,  <31.776997, 36.401031, 37.201290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209587, 35.949787, 36.886829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328939, 36.218403, 36.615532>,  <31.400551, 36.379570, 36.452755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328939, 36.218403, 36.615532>,  <31.209587, 35.949787, 36.886829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328939, 36.218403, 36.615532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228299, -0.740199, -0.632444,
		-0.926740, 0.033869, -0.374173,
		0.298382, 0.671534, -0.678240,
		31.418453, 36.419865, 36.412060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725719, 35.615925, 37.286369>,  <31.209587, 35.949787, 36.886829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725719, 35.615925, 37.286369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755724, 35.223461, 37.357586>,  <31.773727, 34.987984, 37.400314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755724, 35.223461, 37.357586>,  <31.725719, 35.615925, 37.286369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755724, 35.223461, 37.357586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413916, 0.131798, 0.900724,
		-0.907219, -0.141257, -0.396231,
		0.075011, -0.981160, 0.178038,
		31.778227, 34.929111, 37.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083057, 35.281483, 37.409973>,  <31.725719, 35.615925, 37.286369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083057, 35.281483, 37.409973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352015, 35.066517, 37.613567>,  <31.513390, 34.937538, 37.735725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352015, 35.066517, 37.613567>,  <31.083057, 35.281483, 37.409973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352015, 35.066517, 37.613567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448011, 0.251897, 0.857807,
		-0.589215, -0.804816, -0.071396,
		0.672392, -0.537419, 0.508988,
		31.553732, 34.905293, 37.766262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797592, 34.736523, 37.734783>,  <31.083057, 35.281483, 37.409973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797592, 34.736523, 37.734783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112143, 34.813789, 37.969494>,  <31.300873, 34.860149, 38.110321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112143, 34.813789, 37.969494>,  <30.797592, 34.736523, 37.734783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112143, 34.813789, 37.969494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611426, 0.107805, 0.783924,
		0.088158, -0.975229, 0.202872,
		0.786376, 0.193151, 0.586776,
		31.348055, 34.871742, 38.145527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595982, 34.512028, 38.393181>,  <30.797592, 34.736523, 37.734783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595982, 34.512028, 38.393181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913536, 34.733650, 38.493397>,  <31.104069, 34.866623, 38.553524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913536, 34.733650, 38.493397>,  <30.595982, 34.512028, 38.393181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913536, 34.733650, 38.493397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491811, 0.342772, 0.800393,
		0.357594, -0.758631, 0.544615,
		0.793882, 0.554063, 0.250530,
		31.151701, 34.899868, 38.568558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626804, 34.425785, 39.043678>,  <30.595982, 34.512028, 38.393181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626804, 34.425785, 39.043678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850388, 34.755005, 39.003365>,  <30.984537, 34.952538, 38.979176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850388, 34.755005, 39.003365>,  <30.626804, 34.425785, 39.043678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850388, 34.755005, 39.003365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333205, 0.334252, 0.881618,
		0.759301, -0.459205, 0.461077,
		0.558959, 0.823047, -0.100788,
		31.018076, 35.001919, 38.973129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066704, 34.470268, 39.661243>,  <30.626804, 34.425785, 39.043678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066704, 34.470268, 39.661243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005978, 34.834053, 39.506413>,  <30.969542, 35.052326, 39.413513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005978, 34.834053, 39.506413>,  <31.066704, 34.470268, 39.661243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005978, 34.834053, 39.506413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134567, 0.368948, 0.919657,
		0.979206, 0.191704, 0.066372,
		-0.151814, 0.909465, -0.387073,
		30.960434, 35.106892, 39.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352715, 34.890587, 40.124920>,  <31.066704, 34.470268, 39.661243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352715, 34.890587, 40.124920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134838, 35.136051, 39.896278>,  <31.004112, 35.283329, 39.759094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134838, 35.136051, 39.896278>,  <31.352715, 34.890587, 40.124920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134838, 35.136051, 39.896278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107067, 0.625128, 0.773144,
		0.831776, 0.482324, -0.274797,
		-0.544689, 0.613661, -0.571607,
		30.971432, 35.320148, 39.724796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514921, 35.575714, 40.212978>,  <31.352715, 34.890587, 40.124920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514921, 35.575714, 40.212978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150911, 35.633640, 40.057606>,  <30.932505, 35.668396, 39.964382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150911, 35.633640, 40.057606>,  <31.514921, 35.575714, 40.212978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150911, 35.633640, 40.057606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200132, 0.667103, 0.717580,
		0.363041, 0.730755, -0.578099,
		-0.910026, 0.144815, -0.388433,
		30.877903, 35.677086, 39.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508554, 36.250069, 40.171799>,  <31.514921, 35.575714, 40.212978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508554, 36.250069, 40.171799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126535, 36.131596, 40.166721>,  <30.897324, 36.060513, 40.163677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126535, 36.131596, 40.166721>,  <31.508554, 36.250069, 40.171799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126535, 36.131596, 40.166721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234566, 0.728793, 0.643304,
		-0.181289, 0.617361, -0.765506,
		-0.955046, -0.296186, -0.012690,
		30.840021, 36.042740, 40.162914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140331, 36.857826, 40.004356>,  <31.508554, 36.250069, 40.171799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140331, 36.857826, 40.004356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908430, 36.612923, 40.219402>,  <30.769289, 36.465981, 40.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908430, 36.612923, 40.219402>,  <31.140331, 36.857826, 40.004356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908430, 36.612923, 40.219402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111743, 0.713323, 0.691870,
		-0.807095, 0.341038, -0.481965,
		-0.579751, -0.612261, 0.537611,
		30.734505, 36.429245, 40.380684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675892, 37.294140, 40.347477>,  <31.140331, 36.857826, 40.004356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675892, 37.294140, 40.347477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590786, 36.954838, 40.541466>,  <30.539722, 36.751259, 40.657860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590786, 36.954838, 40.541466>,  <30.675892, 37.294140, 40.347477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590786, 36.954838, 40.541466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299509, 0.529065, 0.793968,
		-0.930067, 0.023675, -0.366626,
		-0.212766, -0.848251, 0.484975,
		30.526957, 36.700363, 40.686958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138233, 37.419014, 40.693787>,  <30.675892, 37.294140, 40.347477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138233, 37.419014, 40.693787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257551, 37.095718, 40.896870>,  <30.329142, 36.901741, 41.018719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257551, 37.095718, 40.896870>,  <30.138233, 37.419014, 40.693787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257551, 37.095718, 40.896870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411578, 0.371005, 0.832441,
		-0.861176, -0.457272, -0.221987,
		0.298293, -0.808244, 0.507704,
		30.347038, 36.853245, 41.049179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586445, 37.203609, 41.083469>,  <30.138233, 37.419014, 40.693787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586445, 37.203609, 41.083469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889069, 37.019943, 41.269714>,  <30.070642, 36.909744, 41.381462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889069, 37.019943, 41.269714>,  <29.586445, 37.203609, 41.083469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889069, 37.019943, 41.269714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398660, 0.240547, 0.884990,
		-0.518354, -0.855166, -0.001061,
		0.756558, -0.459161, 0.465609,
		30.116035, 36.882195, 41.409397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316187, 36.703827, 41.568466>,  <29.586445, 37.203609, 41.083469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316187, 36.703827, 41.568466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680964, 36.785442, 41.710865>,  <29.899830, 36.834412, 41.796303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680964, 36.785442, 41.710865>,  <29.316187, 36.703827, 41.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680964, 36.785442, 41.710865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406797, 0.336086, 0.849448,
		0.053676, -0.919464, 0.389494,
		0.911940, 0.204040, 0.355995,
		29.954546, 36.846657, 41.817665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343521, 36.422535, 42.302517>,  <29.316187, 36.703827, 41.568466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343521, 36.422535, 42.302517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646128, 36.677895, 42.245754>,  <29.827692, 36.831108, 42.211697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646128, 36.677895, 42.245754>,  <29.343521, 36.422535, 42.302517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646128, 36.677895, 42.245754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077359, 0.302821, 0.949903,
		0.649385, -0.707638, 0.278474,
		0.756515, 0.638395, -0.141905,
		29.873083, 36.869411, 42.203182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931330, 36.285347, 42.823780>,  <29.343521, 36.422535, 42.302517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931330, 36.285347, 42.823780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958570, 36.665932, 42.703728>,  <29.974915, 36.894283, 42.631699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958570, 36.665932, 42.703728>,  <29.931330, 36.285347, 42.823780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958570, 36.665932, 42.703728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095594, 0.293218, 0.951255,
		0.993088, -0.093473, -0.070985,
		0.068103, 0.951465, -0.300126,
		29.979002, 36.951370, 42.613689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387112, 36.526283, 43.219913>,  <29.931330, 36.285347, 42.823780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387112, 36.526283, 43.219913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182295, 36.842010, 43.084393>,  <30.059404, 37.031448, 43.003082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182295, 36.842010, 43.084393>,  <30.387112, 36.526283, 43.219913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182295, 36.842010, 43.084393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141688, 0.311412, 0.939652,
		0.847193, 0.529146, -0.047619,
		-0.512043, 0.789320, -0.338800,
		30.028683, 37.078808, 42.982754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785608, 37.118752, 43.350071>,  <30.387112, 36.526283, 43.219913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785608, 37.118752, 43.350071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406071, 37.232296, 43.294762>,  <30.178349, 37.300423, 43.261578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406071, 37.232296, 43.294762>,  <30.785608, 37.118752, 43.350071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406071, 37.232296, 43.294762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031626, 0.350276, 0.936113,
		0.314157, 0.892598, -0.323380,
		-0.948844, 0.283859, -0.138271,
		30.121418, 37.317455, 43.253281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742395, 37.859280, 43.689037>,  <30.785608, 37.118752, 43.350071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742395, 37.859280, 43.689037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378744, 37.697430, 43.649521>,  <30.160553, 37.600319, 43.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378744, 37.697430, 43.649521>,  <30.742395, 37.859280, 43.689037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378744, 37.697430, 43.649521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272147, 0.397513, 0.876310,
		-0.315308, 0.823565, -0.471509,
		-0.909130, -0.404627, -0.098792,
		30.106005, 37.576042, 43.619884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455513, 38.398293, 43.873680>,  <30.742395, 37.859280, 43.689037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455513, 38.398293, 43.873680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196432, 38.094521, 43.898140>,  <30.040983, 37.912258, 43.912815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196432, 38.094521, 43.898140>,  <30.455513, 38.398293, 43.873680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196432, 38.094521, 43.898140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086279, 0.152860, 0.984474,
		-0.756992, 0.632371, -0.164531,
		-0.647703, -0.759434, 0.061153,
		30.002121, 37.866692, 43.916485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047590, 38.639240, 44.289433>,  <30.455513, 38.398293, 43.873680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047590, 38.639240, 44.289433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965464, 38.248276, 44.309498>,  <29.916187, 38.013699, 44.321537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965464, 38.248276, 44.309498>,  <30.047590, 38.639240, 44.289433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965464, 38.248276, 44.309498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248109, 0.101564, 0.963393,
		-0.946725, 0.185353, -0.263357,
		-0.205315, -0.977409, 0.050166,
		29.903870, 37.955051, 44.324547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482716, 38.639118, 44.714870>,  <30.047590, 38.639240, 44.289433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482716, 38.639118, 44.714870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647665, 38.274868, 44.725555>,  <29.746635, 38.056320, 44.731968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647665, 38.274868, 44.725555>,  <29.482716, 38.639118, 44.714870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647665, 38.274868, 44.725555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137204, -0.033089, 0.989990,
		-0.900624, -0.411910, -0.138586,
		0.412373, -0.910623, 0.026715,
		29.771378, 38.001682, 44.733570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184660, 38.285801, 45.185867>,  <29.482716, 38.639118, 44.714870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184660, 38.285801, 45.185867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511127, 38.056107, 45.160191>,  <29.707008, 37.918289, 45.144783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511127, 38.056107, 45.160191>,  <29.184660, 38.285801, 45.185867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511127, 38.056107, 45.160191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002177, -0.108037, 0.994144,
		-0.577809, -0.811530, -0.086926,
		0.816169, -0.574236, -0.064192,
		29.755978, 37.883835, 45.140934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107729, 37.646450, 45.665665>,  <29.184660, 38.285801, 45.185867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107729, 37.646450, 45.665665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500463, 37.669827, 45.593460>,  <29.736105, 37.683853, 45.550137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500463, 37.669827, 45.593460>,  <29.107729, 37.646450, 45.665665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500463, 37.669827, 45.593460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188028, -0.426994, 0.884490,
		-0.025388, -0.902364, -0.430226,
		0.981836, 0.058439, -0.180510,
		29.795013, 37.687359, 45.539307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268497, 37.121037, 45.989670>,  <29.107729, 37.646450, 45.665665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268497, 37.121037, 45.989670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628380, 37.292721, 45.957886>,  <29.844309, 37.395729, 45.938816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628380, 37.292721, 45.957886>,  <29.268497, 37.121037, 45.989670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628380, 37.292721, 45.957886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225402, -0.300935, 0.926624,
		0.373802, -0.851598, -0.367496,
		0.899704, 0.429208, -0.079462,
		29.898291, 37.421482, 45.934048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632231, 36.666508, 46.332016>,  <29.268497, 37.121037, 45.989670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632231, 36.666508, 46.332016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867180, 36.990234, 46.331104>,  <30.008148, 37.184471, 46.330559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867180, 36.990234, 46.331104>,  <29.632231, 36.666508, 46.332016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867180, 36.990234, 46.331104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318593, -0.228636, 0.919904,
		0.743972, -0.541050, -0.392136,
		0.587371, 0.809315, -0.002276,
		30.043390, 37.233028, 46.330421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181931, 36.422699, 46.754585>,  <29.632231, 36.666508, 46.332016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181931, 36.422699, 46.754585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190561, 36.822079, 46.775108>,  <30.195740, 37.061707, 46.787422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190561, 36.822079, 46.775108>,  <30.181931, 36.422699, 46.754585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190561, 36.822079, 46.775108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146445, -0.053921, 0.987748,
		0.988984, -0.013797, -0.147382,
		0.021575, 0.998450, 0.051307,
		30.197033, 37.121613, 46.790501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678627, 36.642132, 47.269352>,  <30.181931, 36.422699, 46.754585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678627, 36.642132, 47.269352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433371, 36.955605, 47.229542>,  <30.286217, 37.143688, 47.205654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433371, 36.955605, 47.229542>,  <30.678627, 36.642132, 47.269352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433371, 36.955605, 47.229542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123419, 0.029409, 0.991919,
		0.780274, 0.620469, 0.078690,
		-0.613140, 0.783680, -0.099525,
		30.249428, 37.190708, 47.199684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402866, 36.806843, 47.191311>,  <30.678627, 36.642132, 47.269352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402866, 36.806843, 47.191311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747042, 36.852211, 47.390018>,  <31.953547, 36.879433, 47.509243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747042, 36.852211, 47.390018>,  <31.402866, 36.806843, 47.191311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747042, 36.852211, 47.390018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506050, -0.304302, -0.807040,
		0.059634, 0.945799, -0.319230,
		0.860440, 0.113420, 0.496769,
		32.005173, 36.886238, 47.539047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809250, 37.213188, 46.730225>,  <31.402866, 36.806843, 47.191311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809250, 37.213188, 46.730225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019375, 36.972370, 46.970757>,  <32.145451, 36.827881, 47.115074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019375, 36.972370, 46.970757>,  <31.809250, 37.213188, 46.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019375, 36.972370, 46.970757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321307, -0.514025, -0.795324,
		0.787916, 0.611003, -0.076582,
		0.525310, -0.602042, 0.601328,
		32.176968, 36.791759, 47.151154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503784, 37.208366, 46.547974>,  <31.809250, 37.213188, 46.730225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503784, 37.208366, 46.547974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521442, 36.889198, 46.788433>,  <32.532036, 36.697697, 46.932709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521442, 36.889198, 46.788433>,  <32.503784, 37.208366, 46.547974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521442, 36.889198, 46.788433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504619, -0.501519, -0.702736,
		0.862213, 0.334374, 0.380504,
		0.044146, -0.797918, 0.601147,
		32.534687, 36.649822, 46.968777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195675, 37.046032, 46.492191>,  <32.503784, 37.208366, 46.547974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195675, 37.046032, 46.492191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991554, 36.723000, 46.610447>,  <32.869083, 36.529179, 46.681400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991554, 36.723000, 46.610447>,  <33.195675, 37.046032, 46.492191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991554, 36.723000, 46.610447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420837, -0.534290, -0.733097,
		0.749994, -0.249683, 0.612509,
		-0.510299, -0.807585, 0.295639,
		32.838463, 36.480724, 46.699139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722656, 36.630852, 46.626469>,  <33.195675, 37.046032, 46.492191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722656, 36.630852, 46.626469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387962, 36.429569, 46.540062>,  <33.187145, 36.308800, 46.488220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387962, 36.429569, 46.540062>,  <33.722656, 36.630852, 46.626469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387962, 36.429569, 46.540062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463371, -0.440388, -0.768990,
		0.291830, -0.743534, 0.601658,
		-0.836733, -0.503205, -0.216014,
		33.136944, 36.278606, 46.475258>
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
