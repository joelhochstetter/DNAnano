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
	<24.650110, 34.791027, 34.758545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508011, 34.827744, 35.130646>,  <24.422750, 34.849773, 35.353905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508011, 34.827744, 35.130646>,  <24.650110, 34.791027, 34.758545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508011, 34.827744, 35.130646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215938, 0.976309, -0.013874,
		-0.909488, 0.195949, -0.366655,
		-0.355250, 0.091793, 0.930254,
		24.401436, 34.855282, 35.409721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.045183, 35.288776, 34.829937>,  <24.650110, 34.791027, 34.758545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.045183, 35.288776, 34.829937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302763, 35.263027, 35.134880>,  <24.457310, 35.247578, 35.317844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302763, 35.263027, 35.134880>,  <24.045183, 35.288776, 34.829937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302763, 35.263027, 35.134880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306864, 0.934521, -0.180292,
		-0.700831, 0.350039, 0.621537,
		0.643948, -0.064373, 0.762356,
		24.495947, 35.243713, 35.363586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424837, 35.815357, 35.227962>,  <24.045183, 35.288776, 34.829937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424837, 35.815357, 35.227962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761156, 35.857155, 35.440430>,  <24.962948, 35.882233, 35.567909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761156, 35.857155, 35.440430>,  <24.424837, 35.815357, 35.227962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761156, 35.857155, 35.440430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282226, -0.921912, -0.265381,
		0.461962, 0.373042, -0.804631,
		0.840797, 0.104491, 0.531170,
		25.013395, 35.888504, 35.599781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398626, 36.520721, 35.251770>,  <24.424837, 35.815357, 35.227962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398626, 36.520721, 35.251770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796333, 36.507359, 35.292404>,  <25.034958, 36.499340, 35.316784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796333, 36.507359, 35.292404>,  <24.398626, 36.520721, 35.251770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796333, 36.507359, 35.292404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055984, 0.971991, -0.228253,
		-0.091117, 0.232632, 0.968287,
		0.994265, -0.033410, 0.101588,
		25.094612, 36.497334, 35.322880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616444, 37.065617, 35.721664>,  <24.398626, 36.520721, 35.251770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616444, 37.065617, 35.721664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909081, 36.976982, 35.463776>,  <25.084663, 36.923801, 35.309040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909081, 36.976982, 35.463776>,  <24.616444, 37.065617, 35.721664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909081, 36.976982, 35.463776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002066, 0.944979, -0.327124,
		0.681738, 0.240654, 0.690883,
		0.731594, -0.221586, -0.644725,
		25.128559, 36.910507, 35.270359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956991, 37.603138, 35.700901>,  <24.616444, 37.065617, 35.721664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956991, 37.603138, 35.700901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111546, 37.434917, 35.372551>,  <25.204279, 37.333984, 35.175541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111546, 37.434917, 35.372551>,  <24.956991, 37.603138, 35.700901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111546, 37.434917, 35.372551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361839, 0.887768, -0.284500,
		0.848397, -0.187099, 0.495194,
		0.386388, -0.420549, -0.820879,
		25.227463, 37.308754, 35.126286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725925, 37.750473, 35.685886>,  <24.956991, 37.603138, 35.700901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725925, 37.750473, 35.685886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583363, 37.701523, 35.315372>,  <25.497826, 37.672153, 35.093063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583363, 37.701523, 35.315372>,  <25.725925, 37.750473, 35.685886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583363, 37.701523, 35.315372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333276, 0.909519, -0.248399,
		0.872869, -0.397239, -0.283374,
		-0.356407, -0.122378, -0.926281,
		25.476440, 37.664810, 35.037487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150385, 38.106285, 35.329330>,  <25.725925, 37.750473, 35.685886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150385, 38.106285, 35.329330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913614, 38.051224, 35.011669>,  <25.771551, 38.018188, 34.821072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913614, 38.051224, 35.011669>,  <26.150385, 38.106285, 35.329330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913614, 38.051224, 35.011669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379401, 0.821732, -0.425220,
		0.711110, -0.553001, -0.434181,
		-0.591927, -0.137650, -0.794150,
		25.736036, 38.009930, 34.773422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542709, 38.305477, 34.799244>,  <26.150385, 38.106285, 35.329330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542709, 38.305477, 34.799244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177090, 38.340122, 34.640743>,  <25.957718, 38.360909, 34.545643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177090, 38.340122, 34.640743>,  <26.542709, 38.305477, 34.799244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177090, 38.340122, 34.640743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267096, 0.863740, -0.427332,
		0.305247, -0.496439, -0.812633,
		-0.914048, 0.086609, -0.396251,
		25.902876, 38.366104, 34.521870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687481, 38.318047, 34.165794>,  <26.542709, 38.305477, 34.799244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687481, 38.318047, 34.165794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329573, 38.487972, 34.220814>,  <26.114828, 38.589928, 34.253826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329573, 38.487972, 34.220814>,  <26.687481, 38.318047, 34.165794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329573, 38.487972, 34.220814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324420, 0.830134, -0.453463,
		-0.306819, -0.361122, -0.880598,
		-0.894770, 0.424815, 0.137546,
		26.061142, 38.615417, 34.262077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478159, 38.678398, 33.493530>,  <26.687481, 38.318047, 34.165794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478159, 38.678398, 33.493530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269682, 38.851837, 33.787563>,  <26.144596, 38.955902, 33.963982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269682, 38.851837, 33.787563>,  <26.478159, 38.678398, 33.493530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269682, 38.851837, 33.787563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342832, 0.895141, -0.284935,
		-0.781551, 0.103503, -0.615195,
		-0.521194, 0.433600, 0.735083,
		26.113323, 38.981918, 34.008087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076960, 39.271053, 33.165504>,  <26.478159, 38.678398, 33.493530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076960, 39.271053, 33.165504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063711, 39.357262, 33.555878>,  <26.055761, 39.408989, 33.790104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063711, 39.357262, 33.555878>,  <26.076960, 39.271053, 33.165504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063711, 39.357262, 33.555878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175836, 0.962498, -0.206588,
		-0.983862, 0.164762, -0.069776,
		-0.033122, 0.215523, 0.975937,
		26.053774, 39.421917, 33.848660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543396, 39.851475, 33.330067>,  <26.076960, 39.271053, 33.165504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543396, 39.851475, 33.330067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807703, 39.824539, 33.629093>,  <25.966288, 39.808380, 33.808510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807703, 39.824539, 33.629093>,  <25.543396, 39.851475, 33.330067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807703, 39.824539, 33.629093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189935, 0.978553, -0.079741,
		-0.726160, 0.194679, 0.659387,
		0.660769, -0.067336, 0.747562,
		26.005934, 39.804337, 33.853363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507578, 40.508408, 33.718525>,  <25.543396, 39.851475, 33.330067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507578, 40.508408, 33.718525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858503, 40.347134, 33.822651>,  <26.069059, 40.250370, 33.885128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858503, 40.347134, 33.822651>,  <25.507578, 40.508408, 33.718525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858503, 40.347134, 33.822651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438435, 0.893932, -0.093060,
		-0.195182, 0.195774, 0.961029,
		0.877313, -0.403185, 0.260314,
		26.121696, 40.226177, 33.900745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728811, 40.994041, 34.093407>,  <25.507578, 40.508408, 33.718525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728811, 40.994041, 34.093407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052589, 40.789440, 33.978054>,  <26.246857, 40.666679, 33.908840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052589, 40.789440, 33.978054>,  <25.728811, 40.994041, 34.093407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052589, 40.789440, 33.978054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517427, 0.853512, -0.061529,
		0.277611, -0.099414, 0.955536,
		0.809445, -0.511501, -0.288384,
		26.295424, 40.635990, 33.891541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322836, 41.368183, 34.427803>,  <25.728811, 40.994041, 34.093407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322836, 41.368183, 34.427803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494648, 41.160225, 34.132450>,  <26.597734, 41.035450, 33.955238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494648, 41.160225, 34.132450>,  <26.322836, 41.368183, 34.427803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494648, 41.160225, 34.132450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478842, 0.824363, -0.301888,
		0.765647, -0.223900, 0.603037,
		0.429528, -0.519899, -0.738384,
		26.623507, 41.004257, 33.910934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112020, 41.483356, 34.467075>,  <26.322836, 41.368183, 34.427803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112020, 41.483356, 34.467075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000858, 41.349030, 34.107075>,  <26.934162, 41.268433, 33.891075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000858, 41.349030, 34.107075>,  <27.112020, 41.483356, 34.467075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000858, 41.349030, 34.107075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596050, 0.674449, -0.435709,
		0.753322, -0.657529, 0.012732,
		-0.277904, -0.335818, -0.899998,
		26.917486, 41.248283, 33.837074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699558, 41.500103, 34.162354>,  <27.112020, 41.483356, 34.467075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699558, 41.500103, 34.162354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459915, 41.474663, 33.843098>,  <27.316130, 41.459400, 33.651543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459915, 41.474663, 33.843098>,  <27.699558, 41.500103, 34.162354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459915, 41.474663, 33.843098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500166, 0.748683, -0.435095,
		0.625225, -0.659871, -0.416731,
		-0.599106, -0.063597, -0.798140,
		27.280184, 41.455585, 33.603657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105055, 41.315956, 33.599075>,  <27.699558, 41.500103, 34.162354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105055, 41.315956, 33.599075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773394, 41.493397, 33.463005>,  <27.574396, 41.599861, 33.381363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773394, 41.493397, 33.463005>,  <28.105055, 41.315956, 33.599075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773394, 41.493397, 33.463005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558941, 0.647749, -0.517693,
		-0.009305, -0.619385, -0.785033,
		-0.829155, 0.443604, -0.340173,
		27.524647, 41.626476, 33.360954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302683, 41.460800, 33.044983>,  <28.105055, 41.315956, 33.599075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302683, 41.460800, 33.044983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998068, 41.705009, 33.132004>,  <27.815300, 41.851536, 33.184216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998068, 41.705009, 33.132004>,  <28.302683, 41.460800, 33.044983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998068, 41.705009, 33.132004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496096, 0.765089, -0.410521,
		-0.417076, -0.204702, -0.885520,
		-0.761536, 0.610521, 0.217549,
		27.769608, 41.888165, 33.197269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249002, 41.888725, 32.501678>,  <28.302683, 41.460800, 33.044983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249002, 41.888725, 32.501678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030630, 42.093552, 32.766933>,  <27.899607, 42.216446, 32.926086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030630, 42.093552, 32.766933>,  <28.249002, 41.888725, 32.501678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030630, 42.093552, 32.766933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421358, 0.851918, -0.310956,
		-0.724167, 0.109658, -0.680850,
		-0.545930, 0.512066, 0.663136,
		27.866852, 42.247169, 32.965874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921820, 42.538254, 32.118370>,  <28.249002, 41.888725, 32.501678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921820, 42.538254, 32.118370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931759, 42.619293, 32.509949>,  <27.937721, 42.667915, 32.744896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931759, 42.619293, 32.509949>,  <27.921820, 42.538254, 32.118370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931759, 42.619293, 32.509949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482360, 0.855286, -0.189249,
		-0.875621, 0.476907, -0.076475,
		0.024846, 0.202599, 0.978947,
		27.939213, 42.680073, 32.803635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715849, 43.252228, 32.140614>,  <27.921820, 42.538254, 32.118370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715849, 43.252228, 32.140614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896418, 43.150333, 32.482685>,  <28.004759, 43.089195, 32.687927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896418, 43.150333, 32.482685>,  <27.715849, 43.252228, 32.140614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896418, 43.150333, 32.482685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549986, 0.834125, -0.041854,
		-0.702662, 0.489228, 0.516645,
		0.451422, -0.254738, 0.855176,
		28.031845, 43.073914, 32.739239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773527, 43.862717, 32.528618>,  <27.715849, 43.252228, 32.140614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773527, 43.862717, 32.528618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034655, 43.616379, 32.705055>,  <28.191330, 43.468575, 32.810917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034655, 43.616379, 32.705055>,  <27.773527, 43.862717, 32.528618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034655, 43.616379, 32.705055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705561, 0.706258, -0.058166,
		-0.275706, 0.349191, 0.895573,
		0.652817, -0.615845, 0.441095,
		28.230499, 43.431625, 32.837383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079382, 44.122040, 33.078377>,  <27.773527, 43.862717, 32.528618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079382, 44.122040, 33.078377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331617, 43.855728, 32.918831>,  <28.482960, 43.695942, 32.823105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331617, 43.855728, 32.918831>,  <28.079382, 44.122040, 33.078377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331617, 43.855728, 32.918831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700107, 0.709775, -0.077903,
		0.334970, -0.230123, 0.913695,
		0.630591, -0.665780, -0.398864,
		28.520794, 43.655994, 32.799171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698809, 44.418869, 33.218136>,  <28.079382, 44.122040, 33.078377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698809, 44.418869, 33.218136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809139, 44.135777, 32.957973>,  <28.875338, 43.965919, 32.801876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809139, 44.135777, 32.957973>,  <28.698809, 44.418869, 33.218136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809139, 44.135777, 32.957973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755354, 0.578064, -0.308678,
		0.594440, -0.406148, 0.694035,
		0.275828, -0.707733, -0.650410,
		28.891888, 43.923458, 32.762852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456116, 44.556278, 33.190594>,  <28.698809, 44.418869, 33.218136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456116, 44.556278, 33.190594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346462, 44.344906, 32.869194>,  <29.280670, 44.218082, 32.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346462, 44.344906, 32.869194>,  <29.456116, 44.556278, 33.190594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346462, 44.344906, 32.869194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684589, 0.479564, -0.548960,
		0.675417, -0.700555, 0.230294,
		-0.274136, -0.528434, -0.803497,
		29.264221, 44.186375, 32.628143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125578, 44.280651, 33.334198>,  <29.456116, 44.556278, 33.190594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125578, 44.280651, 33.334198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916407, 44.592655, 33.471676>,  <29.790903, 44.779858, 33.554161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916407, 44.592655, 33.471676>,  <30.125578, 44.280651, 33.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916407, 44.592655, 33.471676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779814, 0.274998, 0.562375,
		0.344145, 0.562100, -0.752069,
		-0.522928, 0.780013, 0.343694,
		29.759527, 44.826660, 33.574783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536444, 44.899899, 33.264450>,  <30.125578, 44.280651, 33.334198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536444, 44.899899, 33.264450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279884, 44.935692, 33.569241>,  <30.125948, 44.957169, 33.752113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279884, 44.935692, 33.569241>,  <30.536444, 44.899899, 33.264450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279884, 44.935692, 33.569241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739682, 0.335770, 0.583206,
		-0.203662, 0.937684, -0.281549,
		-0.641399, 0.089480, 0.761972,
		30.087465, 44.962536, 33.797832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152880, 45.073795, 32.933693>,  <30.536444, 44.899899, 33.264450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152880, 45.073795, 32.933693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477531, 44.921165, 32.756760>,  <31.672323, 44.829586, 32.650600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477531, 44.921165, 32.756760>,  <31.152880, 45.073795, 32.933693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477531, 44.921165, 32.756760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121993, -0.851210, 0.510449,
		-0.571293, -0.360334, -0.737417,
		0.811629, -0.381576, -0.442332,
		31.721020, 44.806694, 32.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971382, 44.480270, 32.405548>,  <31.152880, 45.073795, 32.933693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971382, 44.480270, 32.405548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298666, 44.482769, 32.635502>,  <31.495037, 44.484268, 32.773476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298666, 44.482769, 32.635502>,  <30.971382, 44.480270, 32.405548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298666, 44.482769, 32.635502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438589, -0.639731, 0.631177,
		0.371712, -0.768573, -0.520697,
		0.818211, 0.006245, 0.574883,
		31.544130, 44.484642, 32.807968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276873, 43.806961, 32.647488>,  <30.971382, 44.480270, 32.405548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276873, 43.806961, 32.647488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406677, 44.065563, 32.923668>,  <31.484560, 44.220726, 33.089375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406677, 44.065563, 32.923668>,  <31.276873, 43.806961, 32.647488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406677, 44.065563, 32.923668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390285, -0.573401, 0.720339,
		0.861609, -0.503231, 0.066245,
		0.324512, 0.646505, 0.690451,
		31.504030, 44.259514, 33.130802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682554, 43.379066, 33.099670>,  <31.276873, 43.806961, 32.647488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682554, 43.379066, 33.099670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514120, 43.691715, 33.283737>,  <31.413059, 43.879303, 33.394176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514120, 43.691715, 33.283737>,  <31.682554, 43.379066, 33.099670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514120, 43.691715, 33.283737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395596, -0.614810, 0.682285,
		0.816204, 0.105260, 0.568094,
		-0.421087, 0.781619, 0.460170,
		31.387794, 43.926201, 33.421787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937750, 43.370564, 33.758724>,  <31.682554, 43.379066, 33.099670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937750, 43.370564, 33.758724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573017, 43.529800, 33.718563>,  <31.354177, 43.625343, 33.694466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573017, 43.529800, 33.718563>,  <31.937750, 43.370564, 33.758724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573017, 43.529800, 33.718563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372641, -0.699832, 0.609405,
		0.172337, 0.593089, 0.786476,
		-0.911833, 0.398097, -0.100403,
		31.299467, 43.649231, 33.688442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679592, 43.562675, 34.382465>,  <31.937750, 43.370564, 33.758724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679592, 43.562675, 34.382465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361927, 43.507576, 34.145710>,  <31.171328, 43.474518, 34.003654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361927, 43.507576, 34.145710>,  <31.679592, 43.562675, 34.382465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361927, 43.507576, 34.145710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364385, -0.671530, 0.645191,
		-0.486346, 0.728061, 0.483109,
		-0.794161, -0.137748, -0.591891,
		31.123678, 43.466251, 33.968143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939054, 43.761169, 34.712276>,  <31.679592, 43.562675, 34.382465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939054, 43.761169, 34.712276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920095, 43.470116, 34.438545>,  <30.908720, 43.295483, 34.274307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920095, 43.470116, 34.438545>,  <30.939054, 43.761169, 34.712276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920095, 43.470116, 34.438545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558529, -0.548684, 0.622086,
		-0.828130, 0.411703, -0.380397,
		-0.047397, -0.727631, -0.684330,
		30.905876, 43.251827, 34.233246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294537, 43.501259, 34.674915>,  <30.939054, 43.761169, 34.712276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294537, 43.501259, 34.674915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527220, 43.205643, 34.539009>,  <30.666830, 43.028275, 34.457466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527220, 43.205643, 34.539009>,  <30.294537, 43.501259, 34.674915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527220, 43.205643, 34.539009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608763, -0.672594, 0.420744,
		-0.539467, -0.037915, -0.841152,
		0.581707, -0.739040, -0.339761,
		30.701731, 42.983932, 34.437080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802500, 42.937836, 34.450809>,  <30.294537, 43.501259, 34.674915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802500, 42.937836, 34.450809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146797, 42.734493, 34.461369>,  <30.353376, 42.612488, 34.467705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146797, 42.734493, 34.461369>,  <29.802500, 42.937836, 34.450809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146797, 42.734493, 34.461369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507043, -0.851635, 0.132762,
		-0.045011, -0.127658, -0.990797,
		0.860745, -0.508352, 0.026395,
		30.405020, 42.581989, 34.469288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687445, 42.414772, 34.053005>,  <29.802500, 42.937836, 34.450809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687445, 42.414772, 34.053005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999022, 42.307274, 34.279644>,  <30.185968, 42.242775, 34.415627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999022, 42.307274, 34.279644>,  <29.687445, 42.414772, 34.053005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999022, 42.307274, 34.279644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473429, -0.844522, 0.250295,
		0.411236, -0.463206, -0.785064,
		0.778942, -0.268742, 0.566593,
		30.232704, 42.226650, 34.449623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786007, 41.708084, 33.829494>,  <29.687445, 42.414772, 34.053005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786007, 41.708084, 33.829494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971756, 41.729420, 34.183109>,  <30.083204, 41.742222, 34.395279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971756, 41.729420, 34.183109>,  <29.786007, 41.708084, 33.829494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971756, 41.729420, 34.183109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348430, -0.906687, 0.237732,
		0.814222, -0.418419, -0.402453,
		0.464370, 0.053340, 0.884034,
		30.111067, 41.745422, 34.448318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153034, 41.146439, 33.885471>,  <29.786007, 41.708084, 33.829494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153034, 41.146439, 33.885471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109539, 41.238949, 34.272190>,  <30.083441, 41.294456, 34.504219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109539, 41.238949, 34.272190>,  <30.153034, 41.146439, 33.885471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109539, 41.238949, 34.272190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282893, -0.939546, 0.192939,
		0.952968, -0.252518, 0.167593,
		-0.108740, 0.231276, 0.966792,
		30.076918, 41.308331, 34.562229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473684, 40.555996, 34.247757>,  <30.153034, 41.146439, 33.885471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473684, 40.555996, 34.247757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239296, 40.749435, 34.507839>,  <30.098663, 40.865498, 34.663891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239296, 40.749435, 34.507839>,  <30.473684, 40.555996, 34.247757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239296, 40.749435, 34.507839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538849, -0.831827, 0.133064,
		0.605210, -0.272393, 0.748012,
		-0.585971, 0.483598, 0.650209,
		30.063505, 40.894516, 34.702900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510925, 40.137825, 34.810326>,  <30.473684, 40.555996, 34.247757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510925, 40.137825, 34.810326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187204, 40.361115, 34.883442>,  <29.992971, 40.495090, 34.927311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187204, 40.361115, 34.883442>,  <30.510925, 40.137825, 34.810326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187204, 40.361115, 34.883442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503081, -0.819361, 0.274876,
		0.303219, 0.130497, 0.943943,
		-0.809300, 0.558228, 0.182795,
		29.944414, 40.528584, 34.938282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248310, 39.878284, 35.541512>,  <30.510925, 40.137825, 34.810326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248310, 39.878284, 35.541512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944918, 40.071186, 35.366177>,  <29.762882, 40.186928, 35.260975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944918, 40.071186, 35.366177>,  <30.248310, 39.878284, 35.541512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944918, 40.071186, 35.366177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598206, -0.782069, 0.174694,
		-0.258565, 0.394719, 0.881669,
		-0.758481, 0.482250, -0.438339,
		29.717373, 40.215862, 35.234676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668404, 39.964619, 35.984558>,  <30.248310, 39.878284, 35.541512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668404, 39.964619, 35.984558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490791, 39.997864, 35.627701>,  <29.384224, 40.017811, 35.413586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490791, 39.997864, 35.627701>,  <29.668404, 39.964619, 35.984558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490791, 39.997864, 35.627701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708315, -0.642353, 0.292698,
		-0.548749, 0.761889, 0.344093,
		-0.444033, 0.083109, -0.892148,
		29.357582, 40.022797, 35.360058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970356, 39.980068, 36.105629>,  <29.668404, 39.964619, 35.984558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970356, 39.980068, 36.105629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995724, 39.897976, 35.714966>,  <29.010944, 39.848721, 35.480568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995724, 39.897976, 35.714966>,  <28.970356, 39.980068, 36.105629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995724, 39.897976, 35.714966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701033, -0.705684, 0.102771,
		-0.710303, 0.678151, -0.188628,
		0.063418, -0.205233, -0.976656,
		29.014750, 39.836407, 35.421970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322344, 39.985435, 35.879402>,  <28.970356, 39.980068, 36.105629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322344, 39.985435, 35.879402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536348, 39.757404, 35.629997>,  <28.664751, 39.620586, 35.480354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536348, 39.757404, 35.629997>,  <28.322344, 39.985435, 35.879402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536348, 39.757404, 35.629997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645078, -0.752230, 0.134255,
		-0.545563, 0.330388, -0.770198,
		0.535009, -0.570082, -0.623515,
		28.696852, 39.586380, 35.442944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803762, 39.648041, 35.541481>,  <28.322344, 39.985435, 35.879402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803762, 39.648041, 35.541481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122492, 39.413521, 35.483070>,  <28.313728, 39.272808, 35.448025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122492, 39.413521, 35.483070>,  <27.803762, 39.648041, 35.541481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122492, 39.413521, 35.483070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598895, -0.798393, -0.062396,
		-0.080002, 0.137171, -0.987311,
		0.796822, -0.586304, -0.146024,
		28.361538, 39.237629, 35.439262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512751, 39.104107, 35.181828>,  <27.803762, 39.648041, 35.541481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512751, 39.104107, 35.181828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856529, 38.951511, 35.317955>,  <28.062796, 38.859955, 35.399632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856529, 38.951511, 35.317955>,  <27.512751, 39.104107, 35.181828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856529, 38.951511, 35.317955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422680, -0.904712, 0.053270,
		0.287571, -0.189630, -0.938799,
		0.859445, -0.381492, 0.340322,
		28.114363, 38.837063, 35.420052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601698, 38.472874, 34.782188>,  <27.512751, 39.104107, 35.181828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601698, 38.472874, 34.782188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833540, 38.426422, 35.104820>,  <27.972645, 38.398552, 35.298401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833540, 38.426422, 35.104820>,  <27.601698, 38.472874, 34.782188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833540, 38.426422, 35.104820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352477, -0.928139, 0.119655,
		0.734723, -0.353653, -0.578888,
		0.579605, -0.116131, 0.806580,
		28.007421, 38.391582, 35.346794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934662, 37.873016, 34.691143>,  <27.601698, 38.472874, 34.782188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934662, 37.873016, 34.691143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938124, 37.912682, 35.089157>,  <27.940201, 37.936481, 35.327965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938124, 37.912682, 35.089157>,  <27.934662, 37.873016, 34.691143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938124, 37.912682, 35.089157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215879, -0.971420, 0.098692,
		0.976382, -0.215661, 0.013000,
		0.008655, 0.099167, 0.995033,
		27.940720, 37.942432, 35.387669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383373, 37.340321, 34.958672>,  <27.934662, 37.873016, 34.691143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383373, 37.340321, 34.958672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140162, 37.449379, 35.256924>,  <27.994234, 37.514816, 35.435875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140162, 37.449379, 35.256924>,  <28.383373, 37.340321, 34.958672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140162, 37.449379, 35.256924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236826, -0.958710, 0.157445,
		0.757768, -0.080853, 0.647495,
		-0.608030, 0.272651, 0.745628,
		27.957752, 37.531174, 35.480614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515892, 36.868565, 35.483555>,  <28.383373, 37.340321, 34.958672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515892, 36.868565, 35.483555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175152, 37.031300, 35.615513>,  <27.970707, 37.128941, 35.694687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175152, 37.031300, 35.615513>,  <28.515892, 36.868565, 35.483555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175152, 37.031300, 35.615513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300203, -0.895348, 0.328983,
		0.429216, 0.181208, 0.884838,
		-0.851852, 0.406835, 0.329899,
		27.919596, 37.153351, 35.714481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368673, 36.516762, 36.200836>,  <28.515892, 36.868565, 35.483555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368673, 36.516762, 36.200836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022335, 36.662090, 36.063251>,  <27.814533, 36.749287, 35.980701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022335, 36.662090, 36.063251>,  <28.368673, 36.516762, 36.200836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022335, 36.662090, 36.063251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435415, -0.885832, 0.160361,
		-0.246430, 0.288614, 0.925189,
		-0.865844, 0.363324, -0.343962,
		27.762583, 36.771088, 35.960064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950121, 36.441181, 36.682457>,  <28.368673, 36.516762, 36.200836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950121, 36.441181, 36.682457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750298, 36.420750, 36.336548>,  <27.630404, 36.408489, 36.129002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750298, 36.420750, 36.336548>,  <27.950121, 36.441181, 36.682457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750298, 36.420750, 36.336548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575751, -0.726299, 0.375499,
		-0.647266, 0.685477, 0.333417,
		-0.499557, -0.051083, -0.864774,
		27.600430, 36.405426, 36.077114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320297, 36.267761, 36.885677>,  <27.950121, 36.441181, 36.682457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320297, 36.267761, 36.885677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308300, 36.176659, 36.496376>,  <27.301102, 36.121998, 36.262794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308300, 36.176659, 36.496376>,  <27.320297, 36.267761, 36.885677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308300, 36.176659, 36.496376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595614, -0.777874, 0.200390,
		-0.802711, 0.585695, -0.112326,
		-0.029992, -0.227758, -0.973256,
		27.299303, 36.108330, 36.204399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768127, 36.339256, 37.507923>,  <27.320297, 36.267761, 36.885677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768127, 36.339256, 37.507923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114531, 36.212860, 37.352909>,  <28.322372, 36.137024, 37.259903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114531, 36.212860, 37.352909>,  <27.768127, 36.339256, 37.507923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114531, 36.212860, 37.352909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418839, 0.881749, 0.217006,
		0.273134, -0.350242, 0.895951,
		0.866009, -0.315988, -0.387531,
		28.374332, 36.118065, 37.236649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255186, 36.558178, 37.987137>,  <27.768127, 36.339256, 37.507923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255186, 36.558178, 37.987137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467398, 36.483727, 37.656345>,  <28.594725, 36.439056, 37.457870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467398, 36.483727, 37.656345>,  <28.255186, 36.558178, 37.987137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467398, 36.483727, 37.656345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591506, 0.780096, 0.203889,
		0.607173, -0.597332, 0.523960,
		0.530529, -0.186129, -0.826979,
		28.626556, 36.427887, 37.408253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966614, 36.594666, 38.098305>,  <28.255186, 36.558178, 37.987137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966614, 36.594666, 38.098305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982307, 36.661877, 37.704304>,  <28.991724, 36.702206, 37.467903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982307, 36.661877, 37.704304>,  <28.966614, 36.594666, 38.098305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982307, 36.661877, 37.704304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784777, 0.605016, 0.134467,
		0.618536, -0.778281, -0.108128,
		0.039234, 0.168029, -0.985001,
		28.994078, 36.712284, 37.408802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600706, 36.450344, 37.903000>,  <28.966614, 36.594666, 38.098305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600706, 36.450344, 37.903000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415413, 36.731781, 37.687458>,  <29.304237, 36.900642, 37.558132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415413, 36.731781, 37.687458>,  <29.600706, 36.450344, 37.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415413, 36.731781, 37.687458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853749, 0.517404, -0.058351,
		0.237752, -0.487080, -0.840373,
		-0.463234, 0.703595, -0.538858,
		29.276443, 36.942860, 37.525799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855736, 36.546230, 37.235912>,  <29.600706, 36.450344, 37.903000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855736, 36.546230, 37.235912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701212, 36.874756, 37.403820>,  <29.608498, 37.071873, 37.504566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701212, 36.874756, 37.403820>,  <29.855736, 36.546230, 37.235912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701212, 36.874756, 37.403820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919445, 0.379106, 0.104404,
		-0.073388, 0.426286, -0.901606,
		-0.386311, 0.821315, 0.419768,
		29.585320, 37.121151, 37.529751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175243, 37.128513, 36.987705>,  <29.855736, 36.546230, 37.235912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175243, 37.128513, 36.987705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040396, 37.268436, 37.337330>,  <29.959486, 37.352390, 37.547104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040396, 37.268436, 37.337330>,  <30.175243, 37.128513, 36.987705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040396, 37.268436, 37.337330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801163, 0.594196, 0.071200,
		-0.494456, 0.724268, -0.480572,
		-0.337121, 0.349811, 0.874060,
		29.939259, 37.373379, 37.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877571, 36.936497, 37.275692>,  <30.175243, 37.128513, 36.987705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877571, 36.936497, 37.275692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894896, 36.555504, 37.396297>,  <30.905291, 36.326908, 37.468658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894896, 36.555504, 37.396297>,  <30.877571, 36.936497, 37.275692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894896, 36.555504, 37.396297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498732, 0.282115, 0.819559,
		-0.865673, 0.114877, 0.487251,
		0.043313, -0.952478, 0.301512,
		30.907890, 36.269760, 37.486752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903263, 36.982975, 38.031792>,  <30.877571, 36.936497, 37.275692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903263, 36.982975, 38.031792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050329, 36.624790, 37.931416>,  <31.138569, 36.409878, 37.871189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050329, 36.624790, 37.931416>,  <30.903263, 36.982975, 38.031792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050329, 36.624790, 37.931416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665009, 0.064541, 0.744041,
		-0.650064, -0.440435, 0.619220,
		0.367667, -0.895461, -0.250938,
		31.160629, 36.356152, 37.856133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039656, 36.554138, 38.619659>,  <30.903263, 36.982975, 38.031792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039656, 36.554138, 38.619659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274403, 36.389004, 38.341045>,  <31.415251, 36.289925, 38.173878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274403, 36.389004, 38.341045>,  <31.039656, 36.554138, 38.619659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274403, 36.389004, 38.341045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733437, -0.093387, 0.673312,
		-0.343012, -0.906007, 0.247981,
		0.586867, -0.412832, -0.696532,
		31.450462, 36.265156, 38.132084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196934, 35.915440, 38.928635>,  <31.039656, 36.554138, 38.619659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196934, 35.915440, 38.928635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480261, 35.981052, 38.654007>,  <31.650257, 36.020420, 38.489231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480261, 35.981052, 38.654007>,  <31.196934, 35.915440, 38.928635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480261, 35.981052, 38.654007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701508, -0.055331, 0.710511,
		0.078557, -0.984902, -0.154260,
		0.708319, 0.164030, -0.686570,
		31.692757, 36.030262, 38.448036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710606, 35.382153, 38.996433>,  <31.196934, 35.915440, 38.928635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710606, 35.382153, 38.996433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893824, 35.700943, 38.838943>,  <32.003754, 35.892216, 38.744450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893824, 35.700943, 38.838943>,  <31.710606, 35.382153, 38.996433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893824, 35.700943, 38.838943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565446, 0.080539, 0.820844,
		0.685904, -0.598616, -0.413757,
		0.458047, 0.796977, -0.393727,
		32.031239, 35.940037, 38.720825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490955, 35.180172, 38.938019>,  <31.710606, 35.382153, 38.996433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490955, 35.180172, 38.938019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454487, 35.578453, 38.931564>,  <32.432606, 35.817421, 38.927692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454487, 35.578453, 38.931564>,  <32.490955, 35.180172, 38.938019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454487, 35.578453, 38.931564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755182, 0.079693, 0.650653,
		0.649144, 0.047136, -0.759203,
		-0.091172, 0.995704, -0.016136,
		32.427135, 35.877163, 38.926723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146019, 35.398102, 39.040386>,  <32.490955, 35.180172, 38.938019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146019, 35.398102, 39.040386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912083, 35.715561, 39.107426>,  <32.771721, 35.906036, 39.147648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912083, 35.715561, 39.107426>,  <33.146019, 35.398102, 39.040386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912083, 35.715561, 39.107426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534002, 0.221180, 0.816040,
		0.610577, 0.566751, -0.553163,
		-0.584840, 0.793645, 0.167598,
		32.736629, 35.953655, 39.157703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628120, 35.942841, 39.176743>,  <33.146019, 35.398102, 39.040386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628120, 35.942841, 39.176743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269806, 36.039268, 39.326118>,  <33.054817, 36.097126, 39.415745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269806, 36.039268, 39.326118>,  <33.628120, 35.942841, 39.176743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269806, 36.039268, 39.326118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435055, 0.303302, 0.847782,
		0.091107, 0.921897, -0.376571,
		-0.895783, 0.241068, 0.373443,
		33.001072, 36.111588, 39.438152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819740, 36.424358, 39.650959>,  <33.628120, 35.942841, 39.176743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819740, 36.424358, 39.650959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446800, 36.340725, 39.768944>,  <33.223034, 36.290546, 39.839733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446800, 36.340725, 39.768944>,  <33.819740, 36.424358, 39.650959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446800, 36.340725, 39.768944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239793, 0.252974, 0.937285,
		-0.270588, 0.944610, -0.185724,
		-0.932353, -0.209083, 0.294962,
		33.167095, 36.278000, 39.857433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638462, 37.013111, 40.007359>,  <33.819740, 36.424358, 39.650959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638462, 37.013111, 40.007359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429180, 36.694580, 40.128765>,  <33.303612, 36.503464, 40.201607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429180, 36.694580, 40.128765>,  <33.638462, 37.013111, 40.007359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429180, 36.694580, 40.128765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235882, 0.206914, 0.949498,
		-0.818909, 0.568380, 0.079579,
		-0.523209, -0.796323, 0.303514,
		33.272217, 36.455685, 40.219818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345490, 37.236477, 40.598083>,  <33.638462, 37.013111, 40.007359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345490, 37.236477, 40.598083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286289, 36.844639, 40.652473>,  <33.250771, 36.609535, 40.685108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286289, 36.844639, 40.652473>,  <33.345490, 37.236477, 40.598083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286289, 36.844639, 40.652473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195237, 0.105846, 0.975028,
		-0.969525, 0.170852, 0.175588,
		-0.148000, -0.979595, 0.135977,
		33.241890, 36.550762, 40.693268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944214, 37.179413, 41.149403>,  <33.345490, 37.236477, 40.598083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944214, 37.179413, 41.149403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085445, 36.805187, 41.146221>,  <33.170185, 36.580654, 41.144310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085445, 36.805187, 41.146221>,  <32.944214, 37.179413, 41.149403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085445, 36.805187, 41.146221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043770, 0.008023, 0.999010,
		-0.934571, -0.353073, 0.043783,
		0.353075, -0.935561, -0.007956,
		33.191368, 36.524517, 41.143833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600666, 36.900158, 41.737762>,  <32.944214, 37.179413, 41.149403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600666, 36.900158, 41.737762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907024, 36.648415, 41.685127>,  <33.090839, 36.497368, 41.653545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907024, 36.648415, 41.685127>,  <32.600666, 36.900158, 41.737762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907024, 36.648415, 41.685127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009399, -0.193672, 0.981021,
		-0.642898, -0.752595, -0.142417,
		0.765894, -0.629359, -0.131585,
		33.136791, 36.459606, 41.645653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365978, 36.245323, 42.039330>,  <32.600666, 36.900158, 41.737762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365978, 36.245323, 42.039330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765484, 36.234798, 42.022495>,  <33.005188, 36.228481, 42.012394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765484, 36.234798, 42.022495>,  <32.365978, 36.245323, 42.039330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765484, 36.234798, 42.022495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024276, -0.480505, 0.876656,
		-0.043290, -0.876597, -0.479274,
		0.998768, -0.026316, -0.042082,
		33.065113, 36.226902, 42.009872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483673, 35.594856, 42.288506>,  <32.365978, 36.245323, 42.039330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483673, 35.594856, 42.288506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811218, 35.819195, 42.337357>,  <33.007744, 35.953796, 42.366669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811218, 35.819195, 42.337357>,  <32.483673, 35.594856, 42.288506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811218, 35.819195, 42.337357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136096, -0.396416, 0.907927,
		0.557621, -0.726847, -0.400940,
		0.818863, 0.560845, 0.122129,
		33.056877, 35.987450, 42.373997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916252, 35.152832, 42.599838>,  <32.483673, 35.594856, 42.288506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916252, 35.152832, 42.599838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120705, 35.492378, 42.653759>,  <33.243378, 35.696106, 42.686111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120705, 35.492378, 42.653759>,  <32.916252, 35.152832, 42.599838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120705, 35.492378, 42.653759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303997, -0.325248, 0.895432,
		0.803947, -0.416703, -0.424297,
		0.511131, 0.848865, 0.134805,
		33.274044, 35.747036, 42.694202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624599, 34.984512, 42.940403>,  <32.916252, 35.152832, 42.599838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624599, 34.984512, 42.940403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494495, 35.350822, 43.034695>,  <33.416435, 35.570606, 43.091270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494495, 35.350822, 43.034695>,  <33.624599, 34.984512, 42.940403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494495, 35.350822, 43.034695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107996, -0.211683, 0.971353,
		0.939439, 0.341397, -0.030049,
		-0.325256, 0.915772, 0.235733,
		33.396919, 35.625553, 43.105415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726238, 34.954670, 43.591320>,  <33.624599, 34.984512, 42.940403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726238, 34.954670, 43.591320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506031, 35.288578, 43.587532>,  <33.373909, 35.488922, 43.585258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506031, 35.288578, 43.587532>,  <33.726238, 34.954670, 43.591320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506031, 35.288578, 43.587532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110194, -0.061414, 0.992011,
		0.827522, 0.547159, 0.125796,
		-0.550514, 0.834773, -0.009472,
		33.340878, 35.539009, 43.584690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894913, 35.263184, 44.209171>,  <33.726238, 34.954670, 43.591320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894913, 35.263184, 44.209171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556854, 35.462372, 44.131454>,  <33.354019, 35.581886, 44.084824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556854, 35.462372, 44.131454>,  <33.894913, 35.263184, 44.209171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556854, 35.462372, 44.131454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171978, 0.090847, 0.980903,
		0.506112, 0.862422, 0.008861,
		-0.845148, 0.497970, -0.194297,
		33.303310, 35.611763, 44.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840076, 35.879959, 44.681328>,  <33.894913, 35.263184, 44.209171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840076, 35.879959, 44.681328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459404, 35.810844, 44.579781>,  <33.230999, 35.769375, 44.518852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459404, 35.810844, 44.579781>,  <33.840076, 35.879959, 44.681328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459404, 35.810844, 44.579781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258346, 0.003551, 0.966046,
		-0.166015, 0.984954, -0.048018,
		-0.951681, -0.172783, -0.253869,
		33.173901, 35.759010, 44.503620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442860, 36.303692, 45.154747>,  <33.840076, 35.879959, 44.681328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442860, 36.303692, 45.154747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215591, 36.006180, 45.013908>,  <33.079231, 35.827671, 44.929405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215591, 36.006180, 45.013908>,  <33.442860, 36.303692, 45.154747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215591, 36.006180, 45.013908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507457, -0.020154, 0.861441,
		-0.647820, 0.668119, -0.365987,
		-0.568169, -0.743782, -0.352098,
		33.045139, 35.783047, 44.908279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832047, 36.420940, 45.460945>,  <33.442860, 36.303692, 45.154747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832047, 36.420940, 45.460945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788357, 36.042160, 45.340050>,  <32.762142, 35.814892, 45.267513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788357, 36.042160, 45.340050>,  <32.832047, 36.420940, 45.460945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788357, 36.042160, 45.340050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485938, -0.214377, 0.847294,
		-0.867141, 0.239417, -0.436745,
		-0.109229, -0.946954, -0.302237,
		32.755589, 35.758072, 45.249378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146152, 36.360481, 45.557293>,  <32.832047, 36.420940, 45.460945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146152, 36.360481, 45.557293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337254, 36.009808, 45.579834>,  <32.451912, 35.799404, 45.593357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337254, 36.009808, 45.579834>,  <32.146152, 36.360481, 45.557293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337254, 36.009808, 45.579834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432656, -0.178981, 0.883615,
		-0.764569, -0.446526, -0.464812,
		0.477749, -0.876687, 0.056349,
		32.480579, 35.746803, 45.596737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642323, 35.891003, 45.922276>,  <32.146152, 36.360481, 45.557293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642323, 35.891003, 45.922276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988670, 35.693237, 45.952793>,  <32.196480, 35.574577, 45.971104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988670, 35.693237, 45.952793>,  <31.642323, 35.891003, 45.922276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988670, 35.693237, 45.952793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266325, -0.326475, 0.906910,
		-0.423486, -0.805583, -0.414361,
		0.865870, -0.494418, 0.076290,
		32.248432, 35.544910, 45.975681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541328, 35.203701, 45.984406>,  <31.642323, 35.891003, 45.922276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541328, 35.203701, 45.984406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902309, 35.260696, 46.147022>,  <32.118896, 35.294891, 46.244591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902309, 35.260696, 46.147022>,  <31.541328, 35.203701, 45.984406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902309, 35.260696, 46.147022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299207, -0.471631, 0.829482,
		0.309927, -0.870208, -0.382992,
		0.902452, 0.142485, 0.406543,
		32.173046, 35.303440, 46.268986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517540, 34.637012, 46.469868>,  <31.541328, 35.203701, 45.984406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517540, 34.637012, 46.469868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855959, 34.824280, 46.571861>,  <32.059010, 34.936642, 46.633057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855959, 34.824280, 46.571861>,  <31.517540, 34.637012, 46.469868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855959, 34.824280, 46.571861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126404, -0.288490, 0.949102,
		0.517903, -0.835218, -0.184898,
		0.846049, 0.468172, 0.254985,
		32.109772, 34.964729, 46.648357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002586, 34.160755, 46.840385>,  <31.517540, 34.637012, 46.469868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002586, 34.160755, 46.840385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106709, 34.534195, 46.938877>,  <32.169182, 34.758259, 46.997971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106709, 34.534195, 46.938877>,  <32.002586, 34.160755, 46.840385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106709, 34.534195, 46.938877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114707, -0.223309, 0.967975,
		0.958687, -0.280217, 0.048961,
		0.260310, 0.933601, 0.246226,
		32.184803, 34.814274, 47.012745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634262, 34.091927, 47.301098>,  <32.002586, 34.160755, 46.840385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634262, 34.091927, 47.301098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454227, 34.445156, 47.354160>,  <32.346207, 34.657093, 47.385998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454227, 34.445156, 47.354160>,  <32.634262, 34.091927, 47.301098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454227, 34.445156, 47.354160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165167, -0.228316, 0.959475,
		0.877577, 0.409938, 0.248618,
		-0.450088, 0.883076, 0.132656,
		32.319202, 34.710079, 47.393959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838341, 34.339199, 47.923996>,  <32.634262, 34.091927, 47.301098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838341, 34.339199, 47.923996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487892, 34.523273, 47.866535>,  <32.277622, 34.633717, 47.832058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487892, 34.523273, 47.866535>,  <32.838341, 34.339199, 47.923996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487892, 34.523273, 47.866535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300174, -0.287572, 0.909504,
		0.377230, 0.839959, 0.390084,
		-0.876124, 0.460185, -0.143653,
		32.225056, 34.661327, 47.823441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738598, 34.680855, 48.483067>,  <32.838341, 34.339199, 47.923996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738598, 34.680855, 48.483067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372513, 34.690304, 48.322155>,  <32.152863, 34.695972, 48.225609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372513, 34.690304, 48.322155>,  <32.738598, 34.680855, 48.483067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372513, 34.690304, 48.322155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402812, -0.025242, 0.914935,
		0.011462, 0.999402, 0.032619,
		-0.915211, 0.023626, -0.402282,
		32.097950, 34.697392, 48.201469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272625, 35.316093, 48.755451>,  <32.738598, 34.680855, 48.483067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272625, 35.316093, 48.755451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048576, 35.015587, 48.615822>,  <31.914146, 34.835281, 48.532043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048576, 35.015587, 48.615822>,  <32.272625, 35.316093, 48.755451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048576, 35.015587, 48.615822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479527, -0.049573, 0.876126,
		-0.675513, 0.658129, -0.332488,
		-0.560122, -0.751271, -0.349078,
		31.880539, 34.790207, 48.511097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632919, 35.494156, 48.932846>,  <32.272625, 35.316093, 48.755451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632919, 35.494156, 48.932846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589500, 35.105175, 48.850334>,  <31.563450, 34.871788, 48.800827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589500, 35.105175, 48.850334>,  <31.632919, 35.494156, 48.932846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589500, 35.105175, 48.850334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543652, -0.115660, 0.831304,
		-0.832262, 0.202381, -0.516121,
		-0.108546, -0.972453, -0.206284,
		31.556936, 34.813438, 48.788448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954622, 35.332455, 49.170906>,  <31.632919, 35.494156, 48.932846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954622, 35.332455, 49.170906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155022, 34.986462, 49.159588>,  <31.275261, 34.778866, 49.152798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155022, 34.986462, 49.159588>,  <30.954622, 35.332455, 49.170906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155022, 34.986462, 49.159588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513266, -0.323290, 0.795010,
		-0.696821, -0.383773, -0.605936,
		0.500997, -0.864986, -0.028298,
		31.305321, 34.726967, 49.151100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493338, 34.908577, 49.419250>,  <30.954622, 35.332455, 49.170906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493338, 34.908577, 49.419250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837334, 34.712425, 49.475739>,  <31.043732, 34.594734, 49.509632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837334, 34.712425, 49.475739>,  <30.493338, 34.908577, 49.419250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837334, 34.712425, 49.475739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328738, -0.320707, 0.888301,
		-0.390320, -0.810352, -0.437012,
		0.859989, -0.490384, 0.141215,
		31.095331, 34.565311, 49.518105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339685, 34.313927, 49.784103>,  <30.493338, 34.908577, 49.419250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339685, 34.313927, 49.784103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732475, 34.336334, 49.856316>,  <30.968149, 34.349777, 49.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732475, 34.336334, 49.856316>,  <30.339685, 34.313927, 49.784103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732475, 34.336334, 49.856316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139583, -0.429109, 0.892402,
		0.127456, -0.901514, -0.413555,
		0.981973, 0.056017, 0.180529,
		31.027067, 34.353138, 49.910473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627893, 33.633789, 50.112083>,  <30.339685, 34.313927, 49.784103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627893, 33.633789, 50.112083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865143, 33.936062, 50.223190>,  <31.007492, 34.117424, 50.289856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865143, 33.936062, 50.223190>,  <30.627893, 33.633789, 50.112083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865143, 33.936062, 50.223190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096432, -0.275840, 0.956354,
		0.799315, -0.594022, -0.090735,
		0.593124, 0.755678, 0.277766,
		31.043079, 34.162766, 50.306519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190517, 33.510265, 50.576756>,  <30.627893, 33.633789, 50.112083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190517, 33.510265, 50.576756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088570, 33.890820, 50.645924>,  <31.027401, 34.119152, 50.687424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088570, 33.890820, 50.645924>,  <31.190517, 33.510265, 50.576756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088570, 33.890820, 50.645924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146604, -0.214774, 0.965598,
		0.955798, 0.220749, 0.194217,
		-0.254868, 0.951390, 0.172918,
		31.012110, 34.176235, 50.697800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413006, 33.538280, 51.193287>,  <31.190517, 33.510265, 50.576756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413006, 33.538280, 51.193287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193851, 33.870197, 51.150826>,  <31.062359, 34.069347, 51.125351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193851, 33.870197, 51.150826>,  <31.413006, 33.538280, 51.193287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193851, 33.870197, 51.150826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197308, -0.004868, 0.980330,
		0.812953, 0.558051, 0.166391,
		-0.547884, 0.829792, -0.106151,
		31.029486, 34.119137, 51.118980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700649, 33.997894, 51.627361>,  <31.413006, 33.538280, 51.193287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700649, 33.997894, 51.627361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324833, 34.116798, 51.559357>,  <31.099344, 34.188141, 51.518555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324833, 34.116798, 51.559357>,  <31.700649, 33.997894, 51.627361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324833, 34.116798, 51.559357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163446, 0.046998, 0.985432,
		0.300918, 0.953640, 0.004429,
		-0.939539, 0.297258, -0.170011,
		31.042971, 34.205975, 51.508354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600729, 34.536446, 52.128754>,  <31.700649, 33.997894, 51.627361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600729, 34.536446, 52.128754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232309, 34.443611, 52.003662>,  <31.011257, 34.387909, 51.928608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232309, 34.443611, 52.003662>,  <31.600729, 34.536446, 52.128754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232309, 34.443611, 52.003662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347784, 0.128823, 0.928682,
		-0.175248, 0.964127, -0.199369,
		-0.921051, -0.232087, -0.312732,
		30.955994, 34.373985, 51.909843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234591, 35.070969, 52.558857>,  <31.600729, 34.536446, 52.128754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234591, 35.070969, 52.558857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981222, 34.783710, 52.443588>,  <30.829201, 34.611355, 52.374428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981222, 34.783710, 52.443588>,  <31.234591, 35.070969, 52.558857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981222, 34.783710, 52.443588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308942, -0.106734, 0.945073,
		-0.709459, 0.687657, -0.154259,
		-0.633421, -0.718148, -0.288169,
		30.791195, 34.568268, 52.357136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602184, 35.191422, 52.992893>,  <31.234591, 35.070969, 52.558857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602184, 35.191422, 52.992893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583427, 34.811954, 52.867779>,  <30.572174, 34.584274, 52.792709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583427, 34.811954, 52.867779>,  <30.602184, 35.191422, 52.992893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583427, 34.811954, 52.867779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479255, -0.253373, 0.840307,
		-0.876422, 0.189310, -0.442771,
		-0.046893, -0.948664, -0.312789,
		30.569359, 34.527355, 52.773941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959854, 34.972351, 52.956669>,  <30.602184, 35.191422, 52.992893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959854, 34.972351, 52.956669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171362, 34.644474, 53.044765>,  <30.298265, 34.447746, 53.097622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171362, 34.644474, 53.044765>,  <29.959854, 34.972351, 52.956669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171362, 34.644474, 53.044765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466532, -0.063919, 0.882192,
		-0.709050, -0.569224, -0.416212,
		0.528768, -0.819694, 0.220239,
		30.329992, 34.398567, 53.110836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578581, 34.378418, 53.013161>,  <29.959854, 34.972351, 52.956669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578581, 34.378418, 53.013161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900112, 34.296040, 53.236389>,  <30.093031, 34.246613, 53.370327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900112, 34.296040, 53.236389>,  <29.578581, 34.378418, 53.013161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900112, 34.296040, 53.236389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578919, -0.055097, 0.813521,
		-0.136794, -0.977011, -0.163515,
		0.803828, -0.205947, 0.558073,
		30.141260, 34.234257, 53.403812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874331, 34.346359, 53.201912>,  <29.578581, 34.378418, 53.013161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874331, 34.346359, 53.201912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797997, 33.996902, 53.380947>,  <28.752195, 33.787228, 53.488369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797997, 33.996902, 53.380947>,  <28.874331, 34.346359, 53.201912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797997, 33.996902, 53.380947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978414, -0.132455, 0.158627,
		-0.079299, 0.468195, 0.880060,
		-0.190837, -0.873641, 0.447585,
		28.740746, 33.734810, 53.515224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371855, 34.303249, 53.697731>,  <28.874331, 34.346359, 53.201912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371855, 34.303249, 53.697731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214121, 33.945511, 53.613220>,  <29.119480, 33.730865, 53.562515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214121, 33.945511, 53.613220>,  <29.371855, 34.303249, 53.697731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214121, 33.945511, 53.613220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842994, -0.443578, 0.304302,
		-0.365869, -0.058107, 0.928850,
		-0.394336, -0.894350, -0.211275,
		29.095819, 33.677204, 53.549839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299843, 33.766182, 54.294155>,  <29.371855, 34.303249, 53.697731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299843, 33.766182, 54.294155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351746, 33.556362, 53.957581>,  <29.382887, 33.430470, 53.755634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351746, 33.556362, 53.957581>,  <29.299843, 33.766182, 54.294155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351746, 33.556362, 53.957581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569051, -0.655552, 0.496421,
		-0.812000, -0.543233, 0.213432,
		0.129756, -0.524547, -0.841435,
		29.390673, 33.398998, 53.705151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221851, 33.049599, 54.493034>,  <29.299843, 33.766182, 54.294155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221851, 33.049599, 54.493034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435835, 33.056843, 54.155163>,  <29.564226, 33.061188, 53.952438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435835, 33.056843, 54.155163>,  <29.221851, 33.049599, 54.493034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435835, 33.056843, 54.155163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578199, -0.736823, 0.350395,
		-0.616038, -0.675843, -0.404641,
		0.534961, 0.018107, -0.844683,
		29.596323, 33.062275, 53.901756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000854, 32.350731, 54.174278>,  <29.221851, 33.049599, 54.493034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000854, 32.350731, 54.174278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029449, 31.954546, 54.221394>,  <29.046606, 31.716835, 54.249664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029449, 31.954546, 54.221394>,  <29.000854, 32.350731, 54.174278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029449, 31.954546, 54.221394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810015, -0.011259, -0.586301,
		0.582035, 0.137324, 0.801484,
		0.071489, -0.990462, 0.117788,
		29.050896, 31.657408, 54.256729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681873, 32.159794, 54.382637>,  <29.000854, 32.350731, 54.174278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681873, 32.159794, 54.382637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545120, 31.852703, 54.165855>,  <29.463068, 31.668449, 54.035786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545120, 31.852703, 54.165855>,  <29.681873, 32.159794, 54.382637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545120, 31.852703, 54.165855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872059, -0.044286, -0.487392,
		0.350183, -0.639247, 0.684643,
		-0.341884, -0.767725, -0.541953,
		29.442554, 31.622385, 54.003269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137243, 31.528872, 54.363117>,  <29.681873, 32.159794, 54.382637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137243, 31.528872, 54.363117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941345, 31.550211, 54.015026>,  <29.823807, 31.563015, 53.806171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941345, 31.550211, 54.015026>,  <30.137243, 31.528872, 54.363117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941345, 31.550211, 54.015026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832119, -0.269333, -0.484807,
		-0.260243, -0.961569, 0.087517,
		-0.489747, 0.053343, -0.870232,
		29.794422, 31.566216, 53.753956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572199, 31.280853, 53.799889>,  <30.137243, 31.528872, 54.363117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572199, 31.280853, 53.799889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254210, 31.385981, 53.581184>,  <30.063416, 31.449057, 53.449963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254210, 31.385981, 53.581184>,  <30.572199, 31.280853, 53.799889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254210, 31.385981, 53.581184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536593, -0.115796, -0.835858,
		-0.282991, -0.957872, -0.048971,
		-0.794974, 0.262818, -0.546756,
		30.015717, 31.464827, 53.417156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411386, 30.756191, 53.293015>,  <30.572199, 31.280853, 53.799889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411386, 30.756191, 53.293015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354431, 31.131584, 53.167175>,  <30.320259, 31.356821, 53.091671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354431, 31.131584, 53.167175>,  <30.411386, 30.756191, 53.293015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354431, 31.131584, 53.167175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571556, -0.181538, -0.800230,
		-0.808115, -0.293754, -0.510547,
		-0.142387, 0.938484, -0.314601,
		30.311714, 31.413130, 53.072796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246447, 30.683403, 52.564079>,  <30.411386, 30.756191, 53.293015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246447, 30.683403, 52.564079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380728, 31.055330, 52.624405>,  <30.461296, 31.278486, 52.660599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380728, 31.055330, 52.624405>,  <30.246447, 30.683403, 52.564079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380728, 31.055330, 52.624405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659202, -0.117530, -0.742725,
		-0.672873, 0.348751, -0.652392,
		0.335702, 0.929817, 0.150814,
		30.481438, 31.334276, 52.669647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638144, 30.819298, 52.086765>,  <30.246447, 30.683403, 52.564079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638144, 30.819298, 52.086765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741243, 31.168192, 52.253029>,  <30.803104, 31.377529, 52.352787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741243, 31.168192, 52.253029>,  <30.638144, 30.819298, 52.086765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741243, 31.168192, 52.253029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826128, 0.024150, -0.562965,
		-0.501077, 0.488490, -0.714353,
		0.257751, 0.872236, 0.415656,
		30.818569, 31.429863, 52.377728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605562, 31.258352, 51.554199>,  <30.638144, 30.819298, 52.086765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605562, 31.258352, 51.554199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864017, 31.403587, 51.822727>,  <31.019091, 31.490728, 51.983845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864017, 31.403587, 51.822727>,  <30.605562, 31.258352, 51.554199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864017, 31.403587, 51.822727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736338, -0.065167, -0.673468,
		-0.200780, 0.929473, -0.309462,
		0.646137, 0.363088, 0.671323,
		31.057859, 31.512514, 52.024124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892492, 31.984337, 51.326984>,  <30.605562, 31.258352, 51.554199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892492, 31.984337, 51.326984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149389, 31.808558, 51.578194>,  <31.303528, 31.703091, 51.728920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149389, 31.808558, 51.578194>,  <30.892492, 31.984337, 51.326984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149389, 31.808558, 51.578194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699771, 0.001790, -0.714365,
		0.312803, 0.898266, 0.308663,
		0.642242, -0.439449, 0.628020,
		31.342062, 31.676723, 51.766602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439299, 32.471542, 51.419796>,  <30.892492, 31.984337, 51.326984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439299, 32.471542, 51.419796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588869, 32.110294, 51.504223>,  <31.678612, 31.893545, 51.554878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588869, 32.110294, 51.504223>,  <31.439299, 32.471542, 51.419796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588869, 32.110294, 51.504223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671588, 0.106709, -0.733200,
		0.639646, 0.415913, 0.646428,
		0.373927, -0.903122, 0.211066,
		31.701048, 31.839357, 51.567543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281380, 32.510361, 51.362701>,  <31.439299, 32.471542, 51.419796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281380, 32.510361, 51.362701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195469, 32.119720, 51.358162>,  <32.143921, 31.885338, 51.355438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195469, 32.119720, 51.358162>,  <32.281380, 32.510361, 51.362701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195469, 32.119720, 51.358162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576027, -0.117281, -0.808973,
		0.788709, -0.180291, 0.587736,
		-0.214781, -0.976596, -0.011352,
		32.131035, 31.826742, 51.354755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829277, 32.169117, 50.969444>,  <32.281380, 32.510361, 51.362701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829277, 32.169117, 50.969444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605949, 31.838329, 50.995975>,  <32.471951, 31.639856, 51.011894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605949, 31.838329, 50.995975>,  <32.829277, 32.169117, 50.969444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605949, 31.838329, 50.995975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270265, -0.256888, -0.927882,
		0.784369, -0.500130, 0.366927,
		-0.558321, -0.826969, 0.066328,
		32.438454, 31.590239, 51.015873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299507, 31.587318, 50.764801>,  <32.829277, 32.169117, 50.969444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299507, 31.587318, 50.764801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908985, 31.510275, 50.725353>,  <32.674671, 31.464048, 50.701683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908985, 31.510275, 50.725353>,  <33.299507, 31.587318, 50.764801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908985, 31.510275, 50.725353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133331, -0.176477, -0.975233,
		0.170434, -0.965276, 0.197976,
		-0.976307, -0.192609, -0.098624,
		32.616093, 31.452492, 50.695766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348263, 31.019373, 50.459400>,  <33.299507, 31.587318, 50.764801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348263, 31.019373, 50.459400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976116, 31.121815, 50.354454>,  <32.752831, 31.183279, 50.291489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976116, 31.121815, 50.354454>,  <33.348263, 31.019373, 50.459400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976116, 31.121815, 50.354454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147711, -0.393123, -0.907544,
		-0.335565, -0.883100, 0.327919,
		-0.930364, 0.256103, -0.262362,
		32.697006, 31.198647, 50.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992031, 30.361095, 50.104500>,  <33.348263, 31.019373, 50.459400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992031, 30.361095, 50.104500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831120, 30.703279, 49.974049>,  <32.734573, 30.908590, 49.895779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831120, 30.703279, 49.974049>,  <32.992031, 30.361095, 50.104500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831120, 30.703279, 49.974049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102175, -0.312047, -0.944556,
		-0.909799, -0.413294, 0.038122,
		-0.402275, 0.855462, -0.326129,
		32.710438, 30.959919, 49.876209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700665, 30.164080, 49.479015>,  <32.992031, 30.361095, 50.104500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700665, 30.164080, 49.479015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698383, 30.563751, 49.462959>,  <32.697014, 30.803555, 49.453323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698383, 30.563751, 49.462959>,  <32.700665, 30.164080, 49.479015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698383, 30.563751, 49.462959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227729, -0.037791, -0.972991,
		-0.973708, -0.014692, -0.227326,
		-0.005704, 0.999178, -0.040143,
		32.696671, 30.863504, 49.450916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351017, 30.192915, 48.988094>,  <32.700665, 30.164080, 49.479015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351017, 30.192915, 48.988094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463211, 30.576420, 48.969734>,  <32.530529, 30.806522, 48.958717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463211, 30.576420, 48.969734>,  <32.351017, 30.192915, 48.988094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463211, 30.576420, 48.969734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019421, -0.042144, -0.998923,
		-0.959662, 0.281073, 0.006799,
		0.280484, 0.958760, -0.045903,
		32.547356, 30.864048, 48.955963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923353, 30.536999, 48.566395>,  <32.351017, 30.192915, 48.988094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923353, 30.536999, 48.566395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250973, 30.766378, 48.573502>,  <32.447544, 30.904005, 48.577766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250973, 30.766378, 48.573502>,  <31.923353, 30.536999, 48.566395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250973, 30.766378, 48.573502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055170, -0.047896, -0.997327,
		-0.571064, 0.817841, -0.070866,
		0.819049, 0.573448, 0.017768,
		32.496689, 30.938414, 48.578831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764011, 31.102520, 48.077522>,  <31.923353, 30.536999, 48.566395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764011, 31.102520, 48.077522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157078, 31.048122, 48.127914>,  <32.392918, 31.015484, 48.158150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157078, 31.048122, 48.127914>,  <31.764011, 31.102520, 48.077522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157078, 31.048122, 48.127914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124196, -0.021534, -0.992024,
		0.137620, 0.990476, -0.004271,
		0.982668, -0.135992, 0.125977,
		32.451878, 31.007324, 48.165707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061890, 31.618124, 47.692287>,  <31.764011, 31.102520, 48.077522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061890, 31.618124, 47.692287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359306, 31.350857, 47.702866>,  <32.537758, 31.190496, 47.709213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359306, 31.350857, 47.702866>,  <32.061890, 31.618124, 47.692287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359306, 31.350857, 47.702866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244950, 0.235351, -0.940537,
		0.622212, 0.705806, 0.338660,
		0.743540, -0.668168, 0.026449,
		32.582367, 31.150406, 47.710800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584888, 31.970842, 47.413879>,  <32.061890, 31.618124, 47.692287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584888, 31.970842, 47.413879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695900, 31.586878, 47.398125>,  <32.762508, 31.356499, 47.388672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695900, 31.586878, 47.398125>,  <32.584888, 31.970842, 47.413879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695900, 31.586878, 47.398125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440972, 0.163700, -0.882466,
		0.853534, 0.227545, 0.468725,
		0.277531, -0.959909, -0.039383,
		32.779160, 31.298904, 47.386311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113293, 31.988392, 47.021954>,  <32.584888, 31.970842, 47.413879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113293, 31.988392, 47.021954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012089, 31.602516, 46.992672>,  <32.951366, 31.370991, 46.975105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012089, 31.602516, 46.992672>,  <33.113293, 31.988392, 47.021954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012089, 31.602516, 46.992672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101309, 0.048828, -0.993656,
		0.962145, -0.258821, 0.085378,
		-0.253010, -0.964691, -0.073201,
		32.936188, 31.313108, 46.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639606, 31.690081, 46.517178>,  <33.113293, 31.988392, 47.021954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639606, 31.690081, 46.517178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332199, 31.435961, 46.547569>,  <33.147755, 31.283489, 46.565804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332199, 31.435961, 46.547569>,  <33.639606, 31.690081, 46.517178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332199, 31.435961, 46.547569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046607, -0.174024, -0.983638,
		0.638128, -0.752403, 0.163350,
		-0.768519, -0.635300, 0.075982,
		33.101643, 31.245371, 46.570362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881371, 31.017014, 46.198677>,  <33.639606, 31.690081, 46.517178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881371, 31.017014, 46.198677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484554, 31.055319, 46.165966>,  <33.246464, 31.078302, 46.146339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484554, 31.055319, 46.165966>,  <33.881371, 31.017014, 46.198677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484554, 31.055319, 46.165966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066834, -0.150022, -0.986421,
		-0.106726, -0.984034, 0.142428,
		-0.992040, 0.095758, -0.081778,
		33.186943, 31.084047, 46.141434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702358, 30.809948, 45.549950>,  <33.881371, 31.017014, 46.198677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702358, 30.809948, 45.549950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331528, 30.938032, 45.627911>,  <33.109028, 31.014883, 45.674686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331528, 30.938032, 45.627911>,  <33.702358, 30.809948, 45.549950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331528, 30.938032, 45.627911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221194, -0.047515, -0.974072,
		-0.302647, -0.946154, 0.114879,
		-0.927080, 0.320210, 0.194904,
		33.053402, 31.034096, 45.686382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228252, 30.474407, 45.034328>,  <33.702358, 30.809948, 45.549950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228252, 30.474407, 45.034328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035976, 30.793047, 45.180954>,  <32.920612, 30.984230, 45.268929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035976, 30.793047, 45.180954>,  <33.228252, 30.474407, 45.034328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035976, 30.793047, 45.180954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387890, 0.181747, -0.903609,
		-0.786436, -0.576541, 0.221629,
		-0.480687, 0.796598, 0.366567,
		32.891769, 31.032026, 45.290924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443390, 30.432430, 44.881123>,  <33.228252, 30.474407, 45.034328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443390, 30.432430, 44.881123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553856, 30.816410, 44.900009>,  <32.620136, 31.046799, 44.911343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553856, 30.816410, 44.900009>,  <32.443390, 30.432430, 44.881123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553856, 30.816410, 44.900009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271875, 0.125146, -0.954161,
		-0.921855, 0.250671, 0.295547,
		0.276167, 0.959949, 0.047215,
		32.636707, 31.104395, 44.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992140, 30.762472, 44.411201>,  <32.443390, 30.432430, 44.881123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992140, 30.762472, 44.411201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255783, 31.056746, 44.473610>,  <32.413971, 31.233311, 44.511055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255783, 31.056746, 44.473610>,  <31.992140, 30.762472, 44.411201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255783, 31.056746, 44.473610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206261, 0.376341, -0.903229,
		-0.723208, 0.563147, 0.399794,
		0.659110, 0.735685, 0.156018,
		32.453518, 31.277451, 44.520416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634960, 31.397728, 44.277630>,  <31.992140, 30.762472, 44.411201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634960, 31.397728, 44.277630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025764, 31.468769, 44.230461>,  <32.260246, 31.511395, 44.202160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025764, 31.468769, 44.230461>,  <31.634960, 31.397728, 44.277630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025764, 31.468769, 44.230461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198897, 0.560252, -0.804088,
		-0.076742, 0.809057, 0.582698,
		0.977011, 0.177604, -0.117924,
		32.318867, 31.522051, 44.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643587, 32.063206, 44.143299>,  <31.634960, 31.397728, 44.277630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643587, 32.063206, 44.143299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992203, 31.911070, 44.019512>,  <32.201370, 31.819790, 43.945240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992203, 31.911070, 44.019512>,  <31.643587, 32.063206, 44.143299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992203, 31.911070, 44.019512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093237, 0.491071, -0.866115,
		0.481384, 0.783705, 0.392525,
		0.871537, -0.380336, -0.309464,
		32.253662, 31.796968, 43.926674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914745, 32.628239, 43.690189>,  <31.643587, 32.063206, 44.143299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914745, 32.628239, 43.690189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150097, 32.313080, 43.617489>,  <32.291309, 32.123985, 43.573868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150097, 32.313080, 43.617489>,  <31.914745, 32.628239, 43.690189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150097, 32.313080, 43.617489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298340, 0.420452, -0.856862,
		0.751534, 0.449936, 0.482446,
		0.588379, -0.787894, -0.181750,
		32.326611, 32.076710, 43.562965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483521, 32.962723, 43.534531>,  <31.914745, 32.628239, 43.690189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483521, 32.962723, 43.534531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493004, 32.608517, 43.348927>,  <32.498695, 32.395992, 43.237564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493004, 32.608517, 43.348927>,  <32.483521, 32.962723, 43.534531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493004, 32.608517, 43.348927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370815, 0.438820, -0.818494,
		0.928404, -0.152653, 0.338767,
		0.023713, -0.885513, -0.464008,
		32.500118, 32.342861, 43.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094753, 32.890194, 43.123756>,  <32.483521, 32.962723, 43.534531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094753, 32.890194, 43.123756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846390, 32.620869, 42.963200>,  <32.697372, 32.459274, 42.866867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846390, 32.620869, 42.963200>,  <33.094753, 32.890194, 43.123756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846390, 32.620869, 42.963200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143119, 0.406076, -0.902563,
		0.770706, -0.617857, -0.155773,
		-0.620910, -0.673317, -0.401392,
		32.660118, 32.418873, 42.842781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405056, 32.668678, 42.467300>,  <33.094753, 32.890194, 43.123756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405056, 32.668678, 42.467300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022961, 32.552948, 42.442616>,  <32.793705, 32.483509, 42.427803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022961, 32.552948, 42.442616>,  <33.405056, 32.668678, 42.467300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022961, 32.552948, 42.442616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039419, 0.082264, -0.995831,
		0.293200, -0.953688, -0.067176,
		-0.955238, -0.289329, -0.061713,
		32.736389, 32.466148, 42.424103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276608, 32.108723, 41.943806>,  <33.405056, 32.668678, 42.467300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276608, 32.108723, 41.943806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921394, 32.283051, 42.002403>,  <32.708267, 32.387646, 42.037563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921394, 32.283051, 42.002403>,  <33.276608, 32.108723, 41.943806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921394, 32.283051, 42.002403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200679, -0.080725, -0.976326,
		-0.413675, -0.896407, 0.159146,
		-0.888032, 0.435819, 0.146496,
		32.654984, 32.413795, 42.046352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822647, 31.774597, 41.444603>,  <33.276608, 32.108723, 41.943806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822647, 31.774597, 41.444603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651814, 32.115532, 41.565350>,  <32.549313, 32.320091, 41.637798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651814, 32.115532, 41.565350>,  <32.822647, 31.774597, 41.444603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651814, 32.115532, 41.565350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201972, 0.235489, -0.950659,
		-0.881368, -0.466976, 0.071576,
		-0.427080, 0.852337, 0.301868,
		32.523689, 32.371231, 41.655910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238148, 31.765312, 41.050804>,  <32.822647, 31.774597, 41.444603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238148, 31.765312, 41.050804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306225, 32.135754, 41.185482>,  <32.347069, 32.358017, 41.266289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306225, 32.135754, 41.185482>,  <32.238148, 31.765312, 41.050804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306225, 32.135754, 41.185482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187306, 0.365856, -0.911628,
		-0.967446, 0.092085, 0.235730,
		0.170191, 0.926105, 0.336698,
		32.357281, 32.413586, 41.286491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618317, 32.125771, 40.865250>,  <32.238148, 31.765312, 41.050804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618317, 32.125771, 40.865250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887714, 32.418194, 40.908985>,  <32.049355, 32.593647, 40.935226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887714, 32.418194, 40.908985>,  <31.618317, 32.125771, 40.865250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887714, 32.418194, 40.908985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356834, 0.451087, -0.818040,
		-0.647361, 0.511928, 0.564672,
		0.673494, 0.731062, 0.109343,
		32.089764, 32.637512, 40.941788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277384, 32.663189, 40.673813>,  <31.618317, 32.125771, 40.865250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277384, 32.663189, 40.673813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666340, 32.745113, 40.629066>,  <31.899714, 32.794266, 40.602219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666340, 32.745113, 40.629066>,  <31.277384, 32.663189, 40.673813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666340, 32.745113, 40.629066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169966, 0.293066, -0.940863,
		-0.159914, 0.933898, 0.319785,
		0.972389, 0.204809, -0.111865,
		31.958055, 32.806557, 40.595509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323347, 33.393360, 40.431042>,  <31.277384, 32.663189, 40.673813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323347, 33.393360, 40.431042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676987, 33.226997, 40.345825>,  <31.889170, 33.127178, 40.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676987, 33.226997, 40.345825>,  <31.323347, 33.393360, 40.431042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676987, 33.226997, 40.345825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020111, 0.421616, -0.906551,
		0.466867, 0.805766, 0.364386,
		0.884099, -0.415911, -0.213043,
		31.942217, 33.102222, 40.281914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591745, 33.902157, 40.111210>,  <31.323347, 33.393360, 40.431042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591745, 33.902157, 40.111210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836033, 33.607635, 39.994675>,  <31.982605, 33.430923, 39.924755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836033, 33.607635, 39.994675>,  <31.591745, 33.902157, 40.111210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836033, 33.607635, 39.994675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188111, 0.492293, -0.849860,
		0.769181, 0.464220, 0.439159,
		0.610717, -0.736307, -0.291337,
		32.019249, 33.386742, 39.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997988, 34.194962, 39.756130>,  <31.591745, 33.902157, 40.111210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997988, 34.194962, 39.756130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137589, 33.834698, 39.652588>,  <32.221348, 33.618538, 39.590462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137589, 33.834698, 39.652588>,  <31.997988, 34.194962, 39.756130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137589, 33.834698, 39.652588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429483, 0.399232, -0.810036,
		0.832913, 0.171528, 0.526151,
		0.349000, -0.900662, -0.258857,
		32.242287, 33.564499, 39.574932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687962, 34.267189, 39.533119>,  <31.997988, 34.194962, 39.756130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687962, 34.267189, 39.533119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541500, 33.933720, 39.367752>,  <32.453621, 33.733639, 39.268532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541500, 33.933720, 39.367752>,  <32.687962, 34.267189, 39.533119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541500, 33.933720, 39.367752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344482, 0.291276, -0.892463,
		0.864442, -0.469199, 0.180533,
		-0.366158, -0.833673, -0.413421,
		32.431652, 33.683617, 39.243725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232182, 34.058407, 39.134861>,  <32.687962, 34.267189, 39.533119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232182, 34.058407, 39.134861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922653, 33.864262, 38.972073>,  <32.736935, 33.747776, 38.874401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922653, 33.864262, 38.972073>,  <33.232182, 34.058407, 39.134861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922653, 33.864262, 38.972073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382314, 0.154369, -0.911047,
		0.505009, -0.860579, 0.066105,
		-0.773823, -0.485359, -0.406969,
		32.690506, 33.718655, 38.849983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530750, 33.515831, 38.592476>,  <33.232182, 34.058407, 39.134861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530750, 33.515831, 38.592476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149147, 33.585011, 38.494534>,  <32.920185, 33.626518, 38.435768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149147, 33.585011, 38.494534>,  <33.530750, 33.515831, 38.592476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149147, 33.585011, 38.494534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286194, 0.282353, -0.915625,
		-0.089224, -0.943591, -0.318866,
		-0.954008, 0.172953, -0.244857,
		32.862946, 33.636898, 38.421078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704182, 33.362724, 39.258339>,  <33.530750, 33.515831, 38.592476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704182, 33.362724, 39.258339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090733, 33.338860, 39.158298>,  <34.322662, 33.324543, 39.098274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090733, 33.338860, 39.158298>,  <33.704182, 33.362724, 39.258339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090733, 33.338860, 39.158298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199704, -0.438506, 0.876260,
		-0.161946, -0.896746, -0.411850,
		0.966381, -0.059659, -0.250098,
		34.380646, 33.320961, 39.083271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925682, 32.751335, 39.485687>,  <33.704182, 33.362724, 39.258339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925682, 32.751335, 39.485687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267414, 32.957245, 39.457047>,  <34.472454, 33.080791, 39.439861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267414, 32.957245, 39.457047>,  <33.925682, 32.751335, 39.485687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267414, 32.957245, 39.457047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310777, -0.395561, 0.864262,
		0.416580, -0.760616, -0.497920,
		0.854330, 0.514776, -0.071599,
		34.523712, 33.111679, 39.435566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382618, 32.233570, 39.687019>,  <33.925682, 32.751335, 39.485687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382618, 32.233570, 39.687019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587948, 32.575012, 39.722469>,  <34.711143, 32.779877, 39.743740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587948, 32.575012, 39.722469>,  <34.382618, 32.233570, 39.687019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587948, 32.575012, 39.722469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437596, -0.349174, 0.828605,
		0.738249, -0.386560, -0.552774,
		0.513320, 0.853609, 0.088620,
		34.741943, 32.831097, 39.749054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101276, 32.079803, 39.896255>,  <34.382618, 32.233570, 39.687019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101276, 32.079803, 39.896255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086250, 32.472267, 39.972065>,  <35.077236, 32.707745, 40.017551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086250, 32.472267, 39.972065>,  <35.101276, 32.079803, 39.896255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086250, 32.472267, 39.972065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208199, -0.177808, 0.961788,
		0.977365, 0.075588, -0.197597,
		-0.037565, 0.981158, 0.189521,
		35.074982, 32.766613, 40.028923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778233, 32.316471, 40.210972>,  <35.101276, 32.079803, 39.896255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778233, 32.316471, 40.210972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506226, 32.579540, 40.340611>,  <35.343021, 32.737381, 40.418392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506226, 32.579540, 40.340611>,  <35.778233, 32.316471, 40.210972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506226, 32.579540, 40.340611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301483, -0.152119, 0.941259,
		0.668341, 0.737785, -0.094833,
		-0.680021, 0.657672, 0.324097,
		35.302219, 32.776840, 40.437840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072144, 32.576729, 40.778641>,  <35.778233, 32.316471, 40.210972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072144, 32.576729, 40.778641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697823, 32.700535, 40.846142>,  <35.473232, 32.774818, 40.886642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697823, 32.700535, 40.846142>,  <36.072144, 32.576729, 40.778641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697823, 32.700535, 40.846142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197529, 0.063894, 0.978212,
		0.291993, 0.948744, -0.120931,
		-0.935800, 0.309519, 0.168748,
		35.417084, 32.793392, 40.896767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191929, 33.036617, 41.344788>,  <36.072144, 32.576729, 40.778641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191929, 33.036617, 41.344788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793114, 33.006042, 41.348011>,  <35.553825, 32.987698, 41.349945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793114, 33.006042, 41.348011>,  <36.191929, 33.036617, 41.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793114, 33.006042, 41.348011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014490, 0.289862, 0.956959,
		-0.075486, 0.954011, -0.290112,
		-0.997042, -0.076441, 0.008057,
		35.493999, 32.983109, 41.350430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902870, 33.663357, 41.562485>,  <36.191929, 33.036617, 41.344788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902870, 33.663357, 41.562485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661053, 33.353561, 41.636982>,  <35.515961, 33.167683, 41.681683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661053, 33.353561, 41.636982>,  <35.902870, 33.663357, 41.562485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661053, 33.353561, 41.636982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200274, 0.078517, 0.976589,
		-0.770984, 0.627692, 0.107643,
		-0.604545, -0.774492, 0.186245,
		35.479691, 33.121212, 41.692856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583950, 33.795311, 42.277397>,  <35.902870, 33.663357, 41.562485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583950, 33.795311, 42.277397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552528, 33.400772, 42.219501>,  <35.533676, 33.164047, 42.184765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552528, 33.400772, 42.219501>,  <35.583950, 33.795311, 42.277397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552528, 33.400772, 42.219501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189410, -0.157307, 0.969215,
		-0.978750, 0.048726, 0.199182,
		-0.078559, -0.986347, -0.144736,
		35.528961, 33.104870, 42.176083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456821, 33.656307, 42.916279>,  <35.583950, 33.795311, 42.277397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456821, 33.656307, 42.916279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572136, 33.315308, 42.741859>,  <35.641323, 33.110710, 42.637207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572136, 33.315308, 42.741859>,  <35.456821, 33.656307, 42.916279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572136, 33.315308, 42.741859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368748, -0.321425, 0.872188,
		-0.883694, -0.412234, 0.221693,
		0.288287, -0.852496, -0.436052,
		35.658623, 33.059559, 42.611042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245735, 33.144619, 43.396461>,  <35.456821, 33.656307, 42.916279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245735, 33.144619, 43.396461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521801, 32.967766, 43.167309>,  <35.687439, 32.861652, 43.029819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521801, 32.967766, 43.167309>,  <35.245735, 33.144619, 43.396461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521801, 32.967766, 43.167309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288622, -0.557775, 0.778193,
		-0.663605, -0.702426, -0.257345,
		0.690164, -0.442137, -0.572877,
		35.728851, 32.835125, 42.995445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178177, 32.483250, 43.489510>,  <35.245735, 33.144619, 43.396461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178177, 32.483250, 43.489510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551094, 32.464241, 43.346081>,  <35.774845, 32.452835, 43.260025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551094, 32.464241, 43.346081>,  <35.178177, 32.483250, 43.489510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551094, 32.464241, 43.346081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175021, -0.808287, 0.562174,
		-0.316539, -0.586868, -0.745244,
		0.932293, -0.047517, -0.358568,
		35.830784, 32.449986, 43.238510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374725, 31.802610, 43.119820>,  <35.178177, 32.483250, 43.489510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374725, 31.802610, 43.119820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682182, 31.993122, 43.290627>,  <35.866657, 32.107430, 43.393108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682182, 31.993122, 43.290627>,  <35.374725, 31.802610, 43.119820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682182, 31.993122, 43.290627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103017, -0.751003, 0.652213,
		0.631326, -0.457330, -0.626320,
		0.768645, 0.476280, 0.427015,
		35.912777, 32.136005, 43.418732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682674, 31.230286, 43.314228>,  <35.374725, 31.802610, 43.119820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682674, 31.230286, 43.314228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841309, 31.532831, 43.522316>,  <35.936489, 31.714359, 43.647167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841309, 31.532831, 43.522316>,  <35.682674, 31.230286, 43.314228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841309, 31.532831, 43.522316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011567, -0.570764, 0.821033,
		0.917924, -0.319594, -0.235106,
		0.396588, 0.756365, 0.520221,
		35.960285, 31.759741, 43.678383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382866, 30.974161, 43.713123>,  <35.682674, 31.230286, 43.314228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382866, 30.974161, 43.713123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211491, 31.288809, 43.890965>,  <36.108665, 31.477598, 43.997669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211491, 31.288809, 43.890965>,  <36.382866, 30.974161, 43.713123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211491, 31.288809, 43.890965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017932, -0.499357, 0.866211,
		0.903395, 0.363141, 0.228047,
		-0.428434, 0.786620, 0.444605,
		36.082962, 31.524796, 44.024345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769573, 31.209183, 44.251911>,  <36.382866, 30.974161, 43.713123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769573, 31.209183, 44.251911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404846, 31.341318, 44.349453>,  <36.186008, 31.420599, 44.407978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404846, 31.341318, 44.349453>,  <36.769573, 31.209183, 44.251911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404846, 31.341318, 44.349453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054696, -0.490894, 0.869501,
		0.406935, 0.806164, 0.429538,
		-0.911818, 0.330336, 0.243856,
		36.131302, 31.440418, 44.422611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796352, 31.551977, 44.931068>,  <36.769573, 31.209183, 44.251911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796352, 31.551977, 44.931068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411465, 31.455650, 44.880249>,  <36.180531, 31.397854, 44.849758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411465, 31.455650, 44.880249>,  <36.796352, 31.551977, 44.931068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411465, 31.455650, 44.880249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060618, -0.265441, 0.962220,
		-0.265441, 0.933568, 0.240815,
		-0.962220, -0.240815, -0.127050,
		36.122799, 31.383406, 44.842133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542057, 31.619396, 45.533184>,  <36.796352, 31.551977, 44.931068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542057, 31.619396, 45.533184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253658, 31.399250, 45.364773>,  <36.080620, 31.267162, 45.263725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253658, 31.399250, 45.364773>,  <36.542057, 31.619396, 45.533184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253658, 31.399250, 45.364773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251471, -0.358359, 0.899078,
		-0.645700, 0.754107, 0.119974,
		-0.720995, -0.550364, -0.421029,
		36.037361, 31.234140, 45.238464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052685, 31.701286, 45.996590>,  <36.542057, 31.619396, 45.533184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052685, 31.701286, 45.996590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934410, 31.377235, 45.794098>,  <35.863445, 31.182806, 45.672604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934410, 31.377235, 45.794098>,  <36.052685, 31.701286, 45.996590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934410, 31.377235, 45.794098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286844, -0.430172, 0.855963,
		-0.911202, 0.398306, -0.105183,
		-0.295689, -0.810126, -0.506225,
		35.845703, 31.134197, 45.642231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440533, 31.458866, 46.336514>,  <36.052685, 31.701286, 45.996590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440533, 31.458866, 46.336514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586109, 31.145435, 46.135101>,  <35.673454, 30.957376, 46.014252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586109, 31.145435, 46.135101>,  <35.440533, 31.458866, 46.336514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586109, 31.145435, 46.135101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075302, -0.563594, 0.822613,
		-0.928371, -0.261469, -0.264123,
		0.363945, -0.783579, -0.503535,
		35.695293, 30.910362, 45.984039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966572, 30.900398, 46.435513>,  <35.440533, 31.458866, 46.336514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966572, 30.900398, 46.435513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328114, 30.754099, 46.346718>,  <35.545036, 30.666319, 46.293442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328114, 30.754099, 46.346718>,  <34.966572, 30.900398, 46.435513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328114, 30.754099, 46.346718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091032, -0.671367, 0.735513,
		-0.418048, -0.644588, -0.640112,
		0.903852, -0.365750, -0.221985,
		35.599270, 30.644375, 46.280121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892700, 30.184065, 46.310463>,  <34.966572, 30.900398, 46.435513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892700, 30.184065, 46.310463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260262, 30.263783, 46.446640>,  <35.480797, 30.311613, 46.528347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260262, 30.263783, 46.446640>,  <34.892700, 30.184065, 46.310463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260262, 30.263783, 46.446640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211495, -0.479617, 0.851609,
		0.333002, -0.854547, -0.398572,
		0.918901, 0.199292, 0.340446,
		35.535931, 30.323570, 46.548775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221588, 29.536127, 46.690140>,  <34.892700, 30.184065, 46.310463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221588, 29.536127, 46.690140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409271, 29.867579, 46.812267>,  <35.521881, 30.066450, 46.885544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409271, 29.867579, 46.812267>,  <35.221588, 29.536127, 46.690140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409271, 29.867579, 46.812267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226283, -0.221378, 0.948571,
		0.853604, -0.514165, 0.083633,
		0.469207, 0.828629, 0.305316,
		35.550034, 30.116167, 46.903862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583313, 29.317919, 47.297157>,  <35.221588, 29.536127, 46.690140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583313, 29.317919, 47.297157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545246, 29.715031, 47.326359>,  <35.522408, 29.953299, 47.343880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545246, 29.715031, 47.326359>,  <35.583313, 29.317919, 47.297157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545246, 29.715031, 47.326359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226862, -0.093034, 0.969473,
		0.969266, 0.075700, 0.234078,
		-0.095166, 0.992781, 0.073001,
		35.516697, 30.012865, 47.348259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711124, 29.320957, 47.958118>,  <35.583313, 29.317919, 47.297157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711124, 29.320957, 47.958118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607216, 29.699856, 47.883026>,  <35.544868, 29.927195, 47.837971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607216, 29.699856, 47.883026>,  <35.711124, 29.320957, 47.958118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607216, 29.699856, 47.883026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187653, 0.141184, 0.972036,
		0.947261, 0.287740, 0.141077,
		-0.259775, 0.947245, -0.187733,
		35.529282, 29.984030, 47.826706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146923, 29.858576, 48.288395>,  <35.711124, 29.320957, 47.958118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146923, 29.858576, 48.288395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781719, 30.008911, 48.224957>,  <35.562595, 30.099113, 48.186893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781719, 30.008911, 48.224957>,  <36.146923, 29.858576, 48.288395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781719, 30.008911, 48.224957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127028, 0.107502, 0.986056,
		0.387648, 0.920428, -0.050409,
		-0.913013, 0.375839, -0.158593,
		35.507816, 30.121662, 48.177380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060680, 30.318827, 48.759888>,  <36.146923, 29.858576, 48.288395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060680, 30.318827, 48.759888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683811, 30.238316, 48.652714>,  <35.457687, 30.190008, 48.588409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683811, 30.238316, 48.652714>,  <36.060680, 30.318827, 48.759888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683811, 30.238316, 48.652714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257725, -0.075826, 0.963238,
		-0.214195, 0.976595, 0.019567,
		-0.942177, -0.201278, -0.267934,
		35.401157, 30.177933, 48.572334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704063, 30.552565, 49.267849>,  <36.060680, 30.318827, 48.759888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704063, 30.552565, 49.267849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419483, 30.337488, 49.086861>,  <35.248737, 30.208443, 48.978268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419483, 30.337488, 49.086861>,  <35.704063, 30.552565, 49.267849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419483, 30.337488, 49.086861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320862, -0.324287, 0.889880,
		-0.625212, 0.778283, 0.058188,
		-0.711448, -0.537693, -0.452469,
		35.206047, 30.176180, 48.951118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017906, 30.774832, 49.525112>,  <35.704063, 30.552565, 49.267849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017906, 30.774832, 49.525112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992874, 30.406015, 49.372314>,  <34.977856, 30.184725, 49.280636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992874, 30.406015, 49.372314>,  <35.017906, 30.774832, 49.525112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992874, 30.406015, 49.372314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429652, -0.320577, 0.844174,
		-0.900824, 0.216954, -0.376095,
		-0.062580, -0.922042, -0.381998,
		34.974102, 30.129402, 49.257713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395405, 30.538500, 49.805916>,  <35.017906, 30.774832, 49.525112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395405, 30.538500, 49.805916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570877, 30.198400, 49.689548>,  <34.676163, 29.994341, 49.619728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570877, 30.198400, 49.689548>,  <34.395405, 30.538500, 49.805916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570877, 30.198400, 49.689548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270471, -0.433647, 0.859533,
		-0.856972, -0.298378, -0.420201,
		0.438684, -0.850248, -0.290921,
		34.702484, 29.943327, 49.602272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888493, 29.926077, 49.781540>,  <34.395405, 30.538500, 49.805916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888493, 29.926077, 49.781540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248260, 29.756113, 49.822510>,  <34.464123, 29.654135, 49.847092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248260, 29.756113, 49.822510>,  <33.888493, 29.926077, 49.781540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248260, 29.756113, 49.822510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267830, -0.350610, 0.897407,
		-0.345383, -0.834592, -0.429147,
		0.899432, -0.424887, 0.102435,
		34.518089, 29.628641, 49.853237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672989, 29.257589, 50.165321>,  <33.888493, 29.926077, 49.781540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672989, 29.257589, 50.165321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068272, 29.309223, 50.198284>,  <34.305439, 29.340204, 50.218060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068272, 29.309223, 50.198284>,  <33.672989, 29.257589, 50.165321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068272, 29.309223, 50.198284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043227, -0.281073, 0.958712,
		0.146919, -0.950965, -0.272177,
		0.988204, 0.129087, 0.082403,
		34.364731, 29.347950, 50.223003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876797, 28.669060, 50.479916>,  <33.672989, 29.257589, 50.165321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876797, 28.669060, 50.479916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161774, 28.937727, 50.561192>,  <34.332760, 29.098928, 50.609959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161774, 28.937727, 50.561192>,  <33.876797, 28.669060, 50.479916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161774, 28.937727, 50.561192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106428, -0.182781, 0.977376,
		0.693613, -0.717949, -0.058737,
		0.712442, 0.671669, 0.203189,
		34.375507, 29.139227, 50.622147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314938, 28.342545, 51.000088>,  <33.876797, 28.669060, 50.479916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314938, 28.342545, 51.000088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350025, 28.739954, 51.028980>,  <34.371078, 28.978399, 51.046318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350025, 28.739954, 51.028980>,  <34.314938, 28.342545, 51.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350025, 28.739954, 51.028980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148984, -0.058614, 0.987101,
		0.984941, -0.097352, 0.142877,
		0.087721, 0.993522, 0.072236,
		34.376343, 29.038012, 51.050652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813126, 28.452766, 51.606838>,  <34.314938, 28.342545, 51.000088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813126, 28.452766, 51.606838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602966, 28.788219, 51.549358>,  <34.476871, 28.989492, 51.514870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602966, 28.788219, 51.549358>,  <34.813126, 28.452766, 51.606838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602966, 28.788219, 51.549358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208903, 0.036571, 0.977252,
		0.824812, 0.543466, 0.155979,
		-0.525399, 0.838634, -0.143696,
		34.445347, 29.039810, 51.506248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947292, 28.948967, 52.160244>,  <34.813126, 28.452766, 51.606838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947292, 28.948967, 52.160244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606968, 29.089205, 52.003674>,  <34.402775, 29.173347, 51.909733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606968, 29.089205, 52.003674>,  <34.947292, 28.948967, 52.160244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606968, 29.089205, 52.003674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380683, 0.102235, 0.919037,
		0.362227, 0.930930, 0.046484,
		-0.850806, 0.350596, -0.391422,
		34.351727, 29.194384, 51.886246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832012, 29.654585, 52.480797>,  <34.947292, 28.948967, 52.160244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832012, 29.654585, 52.480797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475090, 29.489269, 52.408142>,  <34.260937, 29.390079, 52.364548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475090, 29.489269, 52.408142>,  <34.832012, 29.654585, 52.480797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475090, 29.489269, 52.408142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236009, 0.084070, 0.968107,
		-0.384835, 0.906712, -0.172556,
		-0.892301, -0.413287, -0.181639,
		34.207401, 29.365284, 52.353649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666496, 30.379269, 52.627499>,  <34.832012, 29.654585, 52.480797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666496, 30.379269, 52.627499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724854, 30.709564, 52.845444>,  <34.759869, 30.907742, 52.976212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724854, 30.709564, 52.845444>,  <34.666496, 30.379269, 52.627499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724854, 30.709564, 52.845444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421684, 0.446311, -0.789297,
		-0.894929, 0.344909, -0.283089,
		0.145890, 0.825739, 0.544859,
		34.768620, 30.957287, 53.008900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486801, 30.913105, 52.190155>,  <34.666496, 30.379269, 52.627499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486801, 30.913105, 52.190155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747551, 31.020403, 52.473873>,  <34.904003, 31.084782, 52.644104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747551, 31.020403, 52.473873>,  <34.486801, 30.913105, 52.190155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747551, 31.020403, 52.473873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549767, 0.477069, -0.685683,
		-0.522315, 0.836928, 0.163518,
		0.651877, 0.268246, 0.709296,
		34.943115, 31.100876, 52.686661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670715, 31.582497, 52.094948>,  <34.486801, 30.913105, 52.190155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670715, 31.582497, 52.094948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 31.442331, 52.315254>,  <35.155540, 31.358232, 52.447437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 31.442331, 52.315254>,  <34.670715, 31.582497, 52.094948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973732, 31.442331, 52.315254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651159, 0.465254, -0.599609,
		-0.046138, 0.812865, 0.580621,
		0.757538, -0.350412, 0.550770,
		35.200993, 31.337208, 52.480484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121731, 32.112808, 52.254108>,  <34.670715, 31.582497, 52.094948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121731, 32.112808, 52.254108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352142, 31.787329, 52.285301>,  <35.490387, 31.592039, 52.304016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352142, 31.787329, 52.285301>,  <35.121731, 32.112808, 52.254108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352142, 31.787329, 52.285301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583209, 0.342256, -0.736701,
		0.572766, 0.469839, 0.671708,
		0.576027, -0.813703, 0.077982,
		35.524952, 31.543219, 52.308697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759575, 32.270508, 52.229641>,  <35.121731, 32.112808, 52.254108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759575, 32.270508, 52.229641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815205, 31.885178, 52.137848>,  <35.848583, 31.653980, 52.082771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815205, 31.885178, 52.137848>,  <35.759575, 32.270508, 52.229641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815205, 31.885178, 52.137848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683124, 0.261099, -0.682033,
		0.716937, -0.061910, 0.694384,
		0.139078, -0.963325, -0.229483,
		35.856930, 31.596180, 52.069004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564709, 32.155293, 52.270645>,  <35.759575, 32.270508, 52.229641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564709, 32.155293, 52.270645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388794, 31.859724, 52.066456>,  <36.283245, 31.682383, 51.943943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388794, 31.859724, 52.066456>,  <36.564709, 32.155293, 52.270645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388794, 31.859724, 52.066456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703973, 0.069325, -0.706836,
		0.557684, -0.670217, 0.489692,
		-0.439786, -0.738921, -0.510476,
		36.256859, 31.638048, 51.913315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105484, 31.820229, 52.051151>,  <36.564709, 32.155293, 52.270645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105484, 31.820229, 52.051151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827324, 31.686180, 51.796871>,  <36.660427, 31.605751, 51.644302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827324, 31.686180, 51.796871>,  <37.105484, 31.820229, 52.051151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827324, 31.686180, 51.796871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637827, 0.119697, -0.760821,
		0.331058, -0.934541, 0.130512,
		-0.695397, -0.335120, -0.635703,
		36.618706, 31.585644, 51.606159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443722, 31.306890, 51.659153>,  <37.105484, 31.820229, 52.051151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443722, 31.306890, 51.659153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135582, 31.441822, 51.442719>,  <36.950699, 31.522781, 51.312859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135582, 31.441822, 51.442719>,  <37.443722, 31.306890, 51.659153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135582, 31.441822, 51.442719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547314, -0.085552, -0.832543,
		-0.327133, -0.937491, -0.118721,
		-0.770345, 0.337330, -0.541089,
		36.904480, 31.543020, 51.280392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719131, 31.108881, 51.045918>,  <37.443722, 31.306890, 51.659153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719131, 31.108881, 51.045918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403824, 31.332918, 50.943989>,  <37.214642, 31.467340, 50.882832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403824, 31.332918, 50.943989>,  <37.719131, 31.108881, 51.045918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403824, 31.332918, 50.943989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327719, 0.031631, -0.944245,
		-0.520803, -0.827827, -0.208486,
		-0.788266, 0.560091, -0.254822,
		37.167343, 31.500946, 50.867542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439819, 30.793598, 50.377254>,  <37.719131, 31.108881, 51.045918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439819, 30.793598, 50.377254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319260, 31.174995, 50.376122>,  <37.246925, 31.403833, 50.375443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319260, 31.174995, 50.376122>,  <37.439819, 30.793598, 50.377254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319260, 31.174995, 50.376122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200079, 0.060345, -0.977920,
		-0.932270, -0.295310, -0.208962,
		-0.301399, 0.953494, -0.002828,
		37.228840, 31.461044, 50.375275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924648, 31.007553, 49.764091>,  <37.439819, 30.793598, 50.377254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924648, 31.007553, 49.764091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118618, 31.336504, 49.883121>,  <37.235001, 31.533875, 49.954540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118618, 31.336504, 49.883121>,  <36.924648, 31.007553, 49.764091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118618, 31.336504, 49.883121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341490, 0.135191, -0.930112,
		-0.805131, 0.552648, -0.215276,
		0.484921, 0.822376, 0.297570,
		37.264095, 31.583218, 49.972393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921658, 31.356745, 49.119671>,  <36.924648, 31.007553, 49.764091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921658, 31.356745, 49.119671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188904, 31.549480, 49.346458>,  <37.349251, 31.665121, 49.482529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188904, 31.549480, 49.346458>,  <36.921658, 31.356745, 49.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188904, 31.549480, 49.346458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391073, 0.420850, -0.818503,
		-0.632994, 0.768581, 0.092743,
		0.668117, 0.481838, 0.566967,
		37.389339, 31.694033, 49.516548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891975, 32.077240, 48.879700>,  <36.921658, 31.356745, 49.119671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891975, 32.077240, 48.879700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249859, 32.012535, 49.046234>,  <37.464588, 31.973713, 49.146152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249859, 32.012535, 49.046234>,  <36.891975, 32.077240, 48.879700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249859, 32.012535, 49.046234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446342, 0.358557, -0.819887,
		-0.016653, 0.919386, 0.393004,
		0.894707, -0.161761, 0.416332,
		37.518272, 31.964006, 49.171135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245300, 32.694214, 48.677425>,  <36.891975, 32.077240, 48.879700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245300, 32.694214, 48.677425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509796, 32.406406, 48.762329>,  <37.668491, 32.233723, 48.813271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509796, 32.406406, 48.762329>,  <37.245300, 32.694214, 48.677425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509796, 32.406406, 48.762329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474317, 0.181793, -0.861380,
		0.581196, 0.670253, 0.461490,
		0.661237, -0.719523, 0.212255,
		37.708168, 32.190548, 48.826004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823193, 32.947506, 48.532764>,  <37.245300, 32.694214, 48.677425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823193, 32.947506, 48.532764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924191, 32.560474, 48.535255>,  <37.984787, 32.328255, 48.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924191, 32.560474, 48.535255>,  <37.823193, 32.947506, 48.532764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924191, 32.560474, 48.535255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385697, 0.094743, -0.917748,
		0.887404, 0.234126, 0.397114,
		0.252492, -0.967579, 0.006227,
		37.999939, 32.270203, 48.537125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574669, 32.837940, 48.359215>,  <37.823193, 32.947506, 48.532764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574669, 32.837940, 48.359215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385326, 32.495632, 48.275696>,  <38.271721, 32.290249, 48.225586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385326, 32.495632, 48.275696>,  <38.574669, 32.837940, 48.359215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385326, 32.495632, 48.275696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450710, -0.031645, -0.892110,
		0.756830, -0.516393, 0.400682,
		-0.473359, -0.855767, -0.208794,
		38.243320, 32.238903, 48.213058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034912, 32.510723, 47.896572>,  <38.574669, 32.837940, 48.359215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034912, 32.510723, 47.896572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672764, 32.348129, 47.847454>,  <38.455475, 32.250572, 47.817982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672764, 32.348129, 47.847454>,  <39.034912, 32.510723, 47.896572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672764, 32.348129, 47.847454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113461, 0.047093, -0.992426,
		0.409186, -0.912444, 0.003484,
		-0.905369, -0.406482, -0.122797,
		38.401154, 32.226185, 47.810616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203938, 31.985487, 47.349236>,  <39.034912, 32.510723, 47.896572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203938, 31.985487, 47.349236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813419, 32.069954, 47.368244>,  <38.579109, 32.120636, 47.379650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813419, 32.069954, 47.368244>,  <39.203938, 31.985487, 47.349236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813419, 32.069954, 47.368244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019865, 0.131202, -0.991157,
		-0.215536, -0.968604, -0.123897,
		-0.976294, 0.211168, 0.047520,
		38.520531, 32.133305, 47.382500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998562, 31.631083, 46.686138>,  <39.203938, 31.985487, 47.349236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998562, 31.631083, 46.686138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661495, 31.818003, 46.793125>,  <38.459255, 31.930155, 46.857315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661495, 31.818003, 46.793125>,  <38.998562, 31.631083, 46.686138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661495, 31.818003, 46.793125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339503, -0.075593, -0.937562,
		-0.417903, -0.880861, 0.222350,
		-0.842671, 0.467299, 0.267465,
		38.408695, 31.958193, 46.873363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371834, 31.337702, 46.320530>,  <38.998562, 31.631083, 46.686138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371834, 31.337702, 46.320530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274895, 31.717318, 46.401119>,  <38.216732, 31.945087, 46.449471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274895, 31.717318, 46.401119>,  <38.371834, 31.337702, 46.320530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274895, 31.717318, 46.401119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255090, 0.138025, -0.957015,
		-0.936055, -0.283320, 0.208641,
		-0.242344, 0.949041, 0.201471,
		38.202190, 32.002029, 46.461559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691704, 31.436909, 45.916069>,  <38.371834, 31.337702, 46.320530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691704, 31.436909, 45.916069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869816, 31.787184, 45.990791>,  <37.976681, 31.997349, 46.035625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869816, 31.787184, 45.990791>,  <37.691704, 31.436909, 45.916069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869816, 31.787184, 45.990791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155075, 0.280903, -0.947125,
		-0.881861, 0.392764, 0.260877,
		0.445278, 0.875688, 0.186809,
		38.003399, 32.049889, 46.046833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275982, 31.974653, 45.610016>,  <37.691704, 31.436909, 45.916069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275982, 31.974653, 45.610016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652374, 32.108032, 45.633244>,  <37.878208, 32.188061, 45.647182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652374, 32.108032, 45.633244>,  <37.275982, 31.974653, 45.610016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652374, 32.108032, 45.633244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013614, 0.208724, -0.977880,
		-0.338191, 0.919374, 0.200944,
		0.940979, 0.333446, 0.058072,
		37.934669, 32.208065, 45.650665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271965, 32.599167, 45.177090>,  <37.275982, 31.974653, 45.610016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271965, 32.599167, 45.177090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664787, 32.533207, 45.213711>,  <37.900478, 32.493629, 45.235683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664787, 32.533207, 45.213711>,  <37.271965, 32.599167, 45.177090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664787, 32.533207, 45.213711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126392, 0.215100, -0.968379,
		0.139993, 0.962570, 0.232081,
		0.982053, -0.164899, 0.091549,
		37.959404, 32.483738, 45.241177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619877, 33.221226, 44.909672>,  <37.271965, 32.599167, 45.177090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619877, 33.221226, 44.909672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878387, 32.918518, 44.870422>,  <38.033493, 32.736893, 44.846870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878387, 32.918518, 44.870422>,  <37.619877, 33.221226, 44.909672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878387, 32.918518, 44.870422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214591, 0.303627, -0.928311,
		0.732311, 0.578887, 0.358622,
		0.646275, -0.756770, -0.098125,
		38.072269, 32.691486, 44.840984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067989, 33.591949, 44.638424>,  <37.619877, 33.221226, 44.909672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067989, 33.591949, 44.638424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154228, 33.204941, 44.585625>,  <38.205971, 32.972736, 44.553944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154228, 33.204941, 44.585625>,  <38.067989, 33.591949, 44.638424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154228, 33.204941, 44.585625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266486, 0.188346, -0.945257,
		0.939417, 0.168616, 0.298437,
		0.215594, -0.967520, -0.132001,
		38.218906, 32.914684, 44.546024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584076, 33.596970, 44.206120>,  <38.067989, 33.591949, 44.638424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584076, 33.596970, 44.206120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421070, 33.233017, 44.175003>,  <38.323265, 33.014645, 44.156334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421070, 33.233017, 44.175003>,  <38.584076, 33.596970, 44.206120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421070, 33.233017, 44.175003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196328, -0.004102, -0.980530,
		0.891845, -0.414852, 0.180306,
		-0.407514, -0.909880, -0.077789,
		38.298817, 32.960052, 44.151665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147278, 33.333626, 43.875534>,  <38.584076, 33.596970, 44.206120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147278, 33.333626, 43.875534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827854, 33.097012, 43.831013>,  <38.636200, 32.955044, 43.804298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827854, 33.097012, 43.831013>,  <39.147278, 33.333626, 43.875534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827854, 33.097012, 43.831013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195965, -0.080659, -0.977288,
		0.569121, -0.802235, 0.180331,
		-0.798560, -0.591534, -0.111305,
		38.588287, 32.919552, 43.797623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374950, 32.721107, 43.607044>,  <39.147278, 33.333626, 43.875534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374950, 32.721107, 43.607044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993534, 32.726006, 43.486633>,  <38.764687, 32.728943, 43.414387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993534, 32.726006, 43.486633>,  <39.374950, 32.721107, 43.607044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993534, 32.726006, 43.486633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301264, 0.048639, -0.952299,
		0.002979, -0.998741, -0.050069,
		-0.953536, 0.012247, -0.301030,
		38.707474, 32.729679, 43.396324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373169, 32.359425, 42.904903>,  <39.374950, 32.721107, 43.607044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373169, 32.359425, 42.904903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029552, 32.563736, 42.918530>,  <38.823383, 32.686321, 42.926704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029552, 32.563736, 42.918530>,  <39.373169, 32.359425, 42.904903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029552, 32.563736, 42.918530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051017, 0.151631, -0.987120,
		-0.509361, -0.846237, -0.156315,
		-0.859039, 0.510775, 0.034063,
		38.771839, 32.716969, 42.928749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029388, 32.185734, 42.246140>,  <39.373169, 32.359425, 42.904903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029388, 32.185734, 42.246140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857712, 32.527195, 42.364174>,  <38.754707, 32.732071, 42.434994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857712, 32.527195, 42.364174>,  <39.029388, 32.185734, 42.246140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857712, 32.527195, 42.364174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012075, 0.332105, -0.943165,
		-0.903133, -0.401234, -0.152844,
		-0.429190, 0.853650, 0.295090,
		38.728954, 32.783291, 42.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460522, 32.362106, 41.778961>,  <39.029388, 32.185734, 42.246140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460522, 32.362106, 41.778961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561382, 32.709858, 41.948952>,  <38.621899, 32.918510, 42.050945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561382, 32.709858, 41.948952>,  <38.460522, 32.362106, 41.778961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561382, 32.709858, 41.948952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048985, 0.450066, -0.891651,
		-0.966448, 0.204010, 0.156069,
		0.252147, 0.869379, 0.424972,
		38.637028, 32.970673, 42.076443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132973, 32.945953, 41.422779>,  <38.460522, 32.362106, 41.778961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132973, 32.945953, 41.422779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449177, 33.098309, 41.614620>,  <38.638901, 33.189720, 41.729725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449177, 33.098309, 41.614620>,  <38.132973, 32.945953, 41.422779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449177, 33.098309, 41.614620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362170, 0.340774, -0.867586,
		-0.493887, 0.859534, 0.131440,
		0.790511, 0.380886, 0.479602,
		38.686329, 33.212574, 41.758499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201515, 33.611172, 41.103336>,  <38.132973, 32.945953, 41.422779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201515, 33.611172, 41.103336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546581, 33.551758, 41.296722>,  <38.753620, 33.516109, 41.412754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546581, 33.551758, 41.296722>,  <38.201515, 33.611172, 41.103336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546581, 33.551758, 41.296722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499558, 0.399597, -0.768612,
		-0.079024, 0.904577, 0.418923,
		0.862668, -0.148537, 0.483467,
		38.805382, 33.507198, 41.441761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573322, 34.317295, 41.118267>,  <38.201515, 33.611172, 41.103336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573322, 34.317295, 41.118267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828747, 34.014297, 41.172596>,  <38.982002, 33.832500, 41.205193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828747, 34.014297, 41.172596>,  <38.573322, 34.317295, 41.118267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828747, 34.014297, 41.172596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565434, 0.342085, -0.750508,
		0.522042, 0.556042, 0.646753,
		0.638558, -0.757493, 0.135822,
		39.020313, 33.787048, 41.213341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239052, 34.634510, 41.040489>,  <38.573322, 34.317295, 41.118267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239052, 34.634510, 41.040489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326370, 34.246807, 40.995083>,  <39.378761, 34.014187, 40.967838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326370, 34.246807, 40.995083>,  <39.239052, 34.634510, 41.040489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326370, 34.246807, 40.995083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475271, 0.207191, -0.855096,
		0.852328, 0.132714, 0.505889,
		0.218299, -0.969257, -0.113520,
		39.391861, 33.956032, 40.961025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949268, 34.551517, 41.008694>,  <39.239052, 34.634510, 41.040489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949268, 34.551517, 41.008694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839439, 34.208710, 40.834282>,  <39.773540, 34.003025, 40.729633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839439, 34.208710, 40.834282>,  <39.949268, 34.551517, 41.008694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839439, 34.208710, 40.834282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487893, 0.266584, -0.831200,
		0.828595, -0.440962, 0.344938,
		-0.274573, -0.857021, -0.436033,
		39.757069, 33.951603, 40.703472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480839, 34.358509, 40.677547>,  <39.949268, 34.551517, 41.008694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480839, 34.358509, 40.677547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177856, 34.180634, 40.486340>,  <39.996067, 34.073906, 40.371616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177856, 34.180634, 40.486340>,  <40.480839, 34.358509, 40.677547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177856, 34.180634, 40.486340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366068, 0.316977, -0.874940,
		0.540600, -0.837720, -0.077310,
		-0.757460, -0.444692, -0.478021,
		39.950619, 34.047226, 40.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775085, 34.137012, 40.111206>,  <40.480839, 34.358509, 40.677547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775085, 34.137012, 40.111206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393517, 34.133175, 39.991241>,  <40.164577, 34.130875, 39.919262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393517, 34.133175, 39.991241>,  <40.775085, 34.137012, 40.111206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393517, 34.133175, 39.991241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279206, 0.337742, -0.898874,
		0.109912, -0.941190, -0.319501,
		-0.953920, -0.009591, -0.299908,
		40.107342, 34.130299, 39.901268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947880, 34.029163, 39.420990>,  <40.775085, 34.137012, 40.111206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947880, 34.029163, 39.420990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551773, 34.084332, 39.413536>,  <40.314110, 34.117432, 39.409065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551773, 34.084332, 39.413536>,  <40.947880, 34.029163, 39.420990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551773, 34.084332, 39.413536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046030, 0.198242, -0.979072,
		-0.131337, -0.970401, -0.202661,
		-0.990269, 0.137917, -0.018631,
		40.254692, 34.125706, 39.407948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724037, 33.756058, 38.807419>,  <40.947880, 34.029163, 39.420990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724037, 33.756058, 38.807419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448036, 34.023628, 38.918007>,  <40.282436, 34.184170, 38.984360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448036, 34.023628, 38.918007>,  <40.724037, 33.756058, 38.807419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448036, 34.023628, 38.918007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057031, 0.330539, -0.942068,
		-0.721558, -0.665795, -0.189923,
		-0.690001, 0.668925, 0.276474,
		40.241035, 34.224304, 39.000950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425808, 33.824589, 38.169590>,  <40.724037, 33.756058, 38.807419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425808, 33.824589, 38.169590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282719, 34.127766, 38.387783>,  <40.196865, 34.309673, 38.518700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282719, 34.127766, 38.387783>,  <40.425808, 33.824589, 38.169590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282719, 34.127766, 38.387783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315328, 0.451787, -0.834540,
		-0.878977, -0.470544, 0.077384,
		-0.357727, 0.757943, 0.545486,
		40.175400, 34.355148, 38.551430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185139, 33.969536, 38.012871>,  <40.425808, 33.824589, 38.169590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185139, 33.969536, 38.012871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254757, 33.813217, 37.651321>,  <41.296528, 33.719425, 37.434391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254757, 33.813217, 37.651321>,  <41.185139, 33.969536, 38.012871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254757, 33.813217, 37.651321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812658, 0.575386, -0.092294,
		0.556143, -0.718475, 0.417730,
		0.174045, -0.390800, -0.903871,
		41.306969, 33.695976, 37.380161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867249, 33.843567, 37.961704>,  <41.185139, 33.969536, 38.012871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867249, 33.843567, 37.961704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708488, 33.925236, 37.603760>,  <41.613232, 33.974239, 37.388992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708488, 33.925236, 37.603760>,  <41.867249, 33.843567, 37.961704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708488, 33.925236, 37.603760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615641, 0.782333, -0.094557,
		0.680776, -0.588445, -0.436207,
		-0.396901, 0.204175, -0.894864,
		41.589417, 33.986488, 37.335300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368153, 33.978893, 37.520283>,  <41.867249, 33.843567, 37.961704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368153, 33.978893, 37.520283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024136, 34.182007, 37.500362>,  <41.817726, 34.303875, 37.488411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024136, 34.182007, 37.500362>,  <42.368153, 33.978893, 37.520283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024136, 34.182007, 37.500362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491915, 0.851144, 0.183230,
		0.135425, 0.133090, -0.981808,
		-0.860046, 0.507780, -0.049797,
		41.766121, 34.334339, 37.485424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494690, 34.579517, 37.183250>,  <42.368153, 33.978893, 37.520283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494690, 34.579517, 37.183250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200771, 34.649834, 37.445297>,  <42.024422, 34.692024, 37.602524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200771, 34.649834, 37.445297>,  <42.494690, 34.579517, 37.183250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200771, 34.649834, 37.445297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469514, 0.828866, 0.304200,
		-0.489528, 0.531111, -0.691581,
		-0.734792, 0.175793, 0.655117,
		41.980335, 34.702572, 37.641830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974960, 35.070232, 37.244373>,  <42.494690, 34.579517, 37.183250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974960, 35.070232, 37.244373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138691, 34.705944, 37.266457>,  <43.236927, 34.487373, 37.279709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138691, 34.705944, 37.266457>,  <42.974960, 35.070232, 37.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138691, 34.705944, 37.266457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644926, -0.331605, -0.688555,
		0.645388, 0.246233, -0.723079,
		0.409322, -0.910718, 0.055212,
		43.261486, 34.432728, 37.283020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362064, 34.896492, 36.696194>,  <42.974960, 35.070232, 37.244373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362064, 34.896492, 36.696194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196827, 34.564484, 36.846088>,  <43.097687, 34.365280, 36.936024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196827, 34.564484, 36.846088>,  <43.362064, 34.896492, 36.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196827, 34.564484, 36.846088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604764, -0.057636, -0.794316,
		0.680895, -0.554752, -0.478156,
		-0.413089, -0.830017, 0.374738,
		43.072899, 34.315479, 36.958511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007576, 35.343483, 36.580643>,  <43.362064, 34.896492, 36.696194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007576, 35.343483, 36.580643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185741, 35.399734, 36.226959>,  <44.292641, 35.433483, 36.014748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185741, 35.399734, 36.226959>,  <44.007576, 35.343483, 36.580643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185741, 35.399734, 36.226959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891169, 0.164665, -0.422733,
		0.086152, 0.976274, 0.198665,
		0.445416, 0.140625, -0.884211,
		44.319366, 35.441921, 35.961697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743420, 36.063332, 36.274780>,  <44.007576, 35.343483, 36.580643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743420, 36.063332, 36.274780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818874, 35.791233, 35.991463>,  <43.864147, 35.627975, 35.821472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818874, 35.791233, 35.991463>,  <43.743420, 36.063332, 36.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818874, 35.791233, 35.991463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917024, 0.136070, -0.374902,
		0.351404, 0.720243, -0.598135,
		0.188632, -0.680247, -0.708296,
		43.875465, 35.587158, 35.778973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461338, 36.383339, 35.648453>,  <43.743420, 36.063332, 36.274780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461338, 36.383339, 35.648453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489643, 36.001888, 35.531433>,  <43.506626, 35.773018, 35.461220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489643, 36.001888, 35.531433>,  <43.461338, 36.383339, 35.648453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489643, 36.001888, 35.531433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731539, 0.149771, -0.665146,
		0.678118, 0.261075, -0.687019,
		0.070758, -0.953629, -0.292549,
		43.510872, 35.715801, 35.443668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579723, 36.439884, 34.962784>,  <43.461338, 36.383339, 35.648453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579723, 36.439884, 34.962784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428497, 36.072128, 35.006214>,  <43.337761, 35.851475, 35.032272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428497, 36.072128, 35.006214>,  <43.579723, 36.439884, 34.962784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428497, 36.072128, 35.006214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718216, 0.217276, -0.661027,
		0.584150, -0.327896, -0.742465,
		-0.378068, -0.919389, 0.108578,
		43.315079, 35.796310, 35.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347168, 36.367352, 34.350727>,  <43.579723, 36.439884, 34.962784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347168, 36.367352, 34.350727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164448, 36.052326, 34.516171>,  <43.054817, 35.863312, 34.615437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164448, 36.052326, 34.516171>,  <43.347168, 36.367352, 34.350727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164448, 36.052326, 34.516171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801471, 0.162630, -0.575497,
		0.385976, -0.594384, -0.705500,
		-0.456801, -0.787566, 0.413610,
		43.027409, 35.816055, 34.640255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156422, 36.051113, 33.786572>,  <43.347168, 36.367352, 34.350727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156422, 36.051113, 33.786572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928219, 35.929607, 34.091793>,  <42.791298, 35.856705, 34.274925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928219, 35.929607, 34.091793>,  <43.156422, 36.051113, 33.786572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928219, 35.929607, 34.091793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819269, 0.145257, -0.554706,
		0.057659, -0.941610, -0.331731,
		-0.570503, -0.303761, 0.763057,
		42.757069, 35.838478, 34.320709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702461, 35.476425, 33.506924>,  <43.156422, 36.051113, 33.786572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702461, 35.476425, 33.506924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522263, 35.579865, 33.848724>,  <42.414143, 35.641930, 34.053806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522263, 35.579865, 33.848724>,  <42.702461, 35.476425, 33.506924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522263, 35.579865, 33.848724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892137, -0.166715, -0.419878,
		0.033879, -0.951489, 0.305812,
		-0.450493, 0.258601, 0.854507,
		42.387115, 35.657444, 34.105076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226128, 35.006596, 33.680256>,  <42.702461, 35.476425, 33.506924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226128, 35.006596, 33.680256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122101, 35.347210, 33.862358>,  <42.059685, 35.551579, 33.971619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122101, 35.347210, 33.862358>,  <42.226128, 35.006596, 33.680256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122101, 35.347210, 33.862358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933100, -0.100352, -0.345332,
		-0.248376, -0.514609, 0.820662,
		-0.260066, 0.851532, 0.455257,
		42.044083, 35.602669, 33.998936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646706, 34.823593, 33.920494>,  <42.226128, 35.006596, 33.680256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646706, 34.823593, 33.920494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632549, 35.222748, 33.898685>,  <41.624054, 35.462238, 33.885601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632549, 35.222748, 33.898685>,  <41.646706, 34.823593, 33.920494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632549, 35.222748, 33.898685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925239, -0.053341, -0.375616,
		-0.377730, 0.037154, 0.925170,
		-0.035394, 0.997885, -0.054525,
		41.621933, 35.522114, 33.882328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048180, 35.013237, 34.064594>,  <41.646706, 34.823593, 33.920494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048180, 35.013237, 34.064594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145996, 35.366032, 33.903450>,  <41.204685, 35.577709, 33.806763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145996, 35.366032, 33.903450>,  <41.048180, 35.013237, 34.064594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145996, 35.366032, 33.903450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887713, 0.036491, -0.458949,
		-0.390086, 0.469859, 0.791875,
		0.244538, 0.881987, -0.402865,
		41.219357, 35.630627, 33.782589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470360, 35.414463, 34.156082>,  <41.048180, 35.013237, 34.064594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470360, 35.414463, 34.156082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679531, 35.607025, 33.874714>,  <40.805035, 35.722561, 33.705894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679531, 35.607025, 33.874714>,  <40.470360, 35.414463, 34.156082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679531, 35.607025, 33.874714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852343, 0.287821, -0.436659,
		-0.007750, 0.827895, 0.560829,
		0.522926, 0.481403, -0.703420,
		40.836411, 35.751446, 33.663689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244087, 36.164082, 34.047031>,  <40.470360, 35.414463, 34.156082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244087, 36.164082, 34.047031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406223, 36.036694, 33.704273>,  <40.503506, 35.960258, 33.498619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406223, 36.036694, 33.704273>,  <40.244087, 36.164082, 34.047031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406223, 36.036694, 33.704273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840101, 0.239832, -0.486530,
		0.360459, 0.917091, -0.170337,
		0.405340, -0.318474, -0.856898,
		40.527824, 35.941151, 33.447205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031017, 36.617443, 33.496693>,  <40.244087, 36.164082, 34.047031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031017, 36.617443, 33.496693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145908, 36.297310, 33.286182>,  <40.214844, 36.105228, 33.159874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145908, 36.297310, 33.286182>,  <40.031017, 36.617443, 33.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145908, 36.297310, 33.286182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719508, 0.182421, -0.670098,
		0.632306, 0.571129, -0.523451,
		0.287224, -0.800334, -0.526278,
		40.232075, 36.057209, 33.128300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966022, 36.829082, 32.877804>,  <40.031017, 36.617443, 33.496693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966022, 36.829082, 32.877804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948570, 36.429970, 32.857681>,  <39.938099, 36.190502, 32.845608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948570, 36.429970, 32.857681>,  <39.966022, 36.829082, 32.877804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948570, 36.429970, 32.857681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691127, 0.066507, -0.719667,
		0.721415, 0.003368, -0.692495,
		-0.043632, -0.997781, -0.050307,
		39.935482, 36.130634, 32.842590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979645, 36.670654, 32.215401>,  <39.966022, 36.829082, 32.877804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979645, 36.670654, 32.215401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846931, 36.323742, 32.363857>,  <39.767303, 36.115597, 32.452930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846931, 36.323742, 32.363857>,  <39.979645, 36.670654, 32.215401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846931, 36.323742, 32.363857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671091, -0.059503, -0.738983,
		0.662989, -0.494254, -0.562281,
		-0.331788, -0.867279, 0.371139,
		39.747395, 36.063557, 32.475201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980309, 36.200230, 31.727322>,  <39.979645, 36.670654, 32.215401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980309, 36.200230, 31.727322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718380, 36.052139, 31.990879>,  <39.561222, 35.963284, 32.149014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718380, 36.052139, 31.990879>,  <39.980309, 36.200230, 31.727322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718380, 36.052139, 31.990879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741520, 0.146142, -0.654822,
		0.146142, -0.917373, -0.370228,
		0.654822, 0.370228, -0.658893,
		39.521935, 35.941071, 32.188545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549599, 35.744488, 31.289476>,  <39.980309, 36.200230, 31.727322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549599, 35.744488, 31.289476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312241, 35.700836, 31.608467>,  <39.169827, 35.674644, 31.799862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312241, 35.700836, 31.608467>,  <39.549599, 35.744488, 31.289476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312241, 35.700836, 31.608467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802641, 0.154541, -0.576095,
		-0.060374, -0.981941, -0.179296,
		-0.593399, -0.109129, 0.797476,
		39.134220, 35.668098, 31.847710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990555, 35.249138, 31.054621>,  <39.549599, 35.744488, 31.289476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990555, 35.249138, 31.054621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859325, 35.484184, 31.350479>,  <38.780590, 35.625214, 31.527994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859325, 35.484184, 31.350479>,  <38.990555, 35.249138, 31.054621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859325, 35.484184, 31.350479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800496, 0.242800, -0.547955,
		-0.501574, -0.771851, 0.390729,
		-0.328071, 0.587617, 0.739646,
		38.760902, 35.660469, 31.572372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228664, 35.046360, 31.154854>,  <38.990555, 35.249138, 31.054621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228664, 35.046360, 31.154854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277325, 35.411839, 31.309959>,  <38.306522, 35.631126, 31.403023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277325, 35.411839, 31.309959>,  <38.228664, 35.046360, 31.154854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277325, 35.411839, 31.309959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931380, 0.240131, -0.273621,
		-0.343120, -0.327867, 0.880211,
		0.121655, 0.913696, 0.387762,
		38.313820, 35.685947, 31.426289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545345, 35.204876, 31.480879>,  <38.228664, 35.046360, 31.154854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545345, 35.204876, 31.480879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743481, 35.547970, 31.425842>,  <37.862362, 35.753826, 31.392820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743481, 35.547970, 31.425842>,  <37.545345, 35.204876, 31.480879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743481, 35.547970, 31.425842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769499, 0.359737, -0.527693,
		-0.403122, 0.367266, 0.838217,
		0.495342, 0.857732, -0.137593,
		37.892082, 35.805290, 31.384565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122082, 35.705082, 31.771967>,  <37.545345, 35.204876, 31.480879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122082, 35.705082, 31.771967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360970, 35.904404, 31.520565>,  <37.504303, 36.023994, 31.369724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360970, 35.904404, 31.520565>,  <37.122082, 35.705082, 31.771967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360970, 35.904404, 31.520565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801982, 0.359079, -0.477374,
		-0.012193, 0.789151, 0.614079,
		0.597223, 0.498301, -0.628507,
		37.540138, 36.053894, 31.332012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851639, 36.393047, 31.727007>,  <37.122082, 35.705082, 31.771967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851639, 36.393047, 31.727007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116146, 36.407730, 31.427305>,  <37.274849, 36.416542, 31.247484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116146, 36.407730, 31.427305>,  <36.851639, 36.393047, 31.727007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116146, 36.407730, 31.427305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631718, 0.565896, -0.529806,
		0.404549, 0.823659, 0.397399,
		0.661266, 0.036712, -0.749253,
		37.314526, 36.418743, 31.202530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070908, 37.024151, 31.601103>,  <36.851639, 36.393047, 31.727007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070908, 37.024151, 31.601103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077835, 36.819897, 31.257254>,  <37.081993, 36.697346, 31.050943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077835, 36.819897, 31.257254>,  <37.070908, 37.024151, 31.601103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077835, 36.819897, 31.257254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566352, 0.703516, -0.429314,
		0.823982, 0.494286, -0.277012,
		0.017322, -0.510633, -0.859625,
		37.083031, 36.666706, 30.999367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376831, 37.386806, 31.076773>,  <37.070908, 37.024151, 31.601103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376831, 37.386806, 31.076773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091362, 37.136044, 30.951765>,  <36.920082, 36.985588, 30.876760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091362, 37.136044, 30.951765>,  <37.376831, 37.386806, 31.076773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091362, 37.136044, 30.951765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627891, 0.770296, -0.111340,
		0.310530, 0.116767, -0.943364,
		-0.713669, -0.626905, -0.312517,
		36.877262, 36.947971, 30.858009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309479, 37.518314, 30.416962>,  <37.376831, 37.386806, 31.076773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309479, 37.518314, 30.416962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960777, 37.383179, 30.558895>,  <36.751556, 37.302097, 30.644054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960777, 37.383179, 30.558895>,  <37.309479, 37.518314, 30.416962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960777, 37.383179, 30.558895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392462, 0.915056, -0.092985,
		-0.293279, -0.220319, -0.930294,
		-0.871758, -0.337835, 0.354834,
		36.699249, 37.281830, 30.665344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442570, 37.396778, 29.762329>,  <37.309479, 37.518314, 30.416962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442570, 37.396778, 29.762329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711487, 37.618210, 29.958929>,  <37.872837, 37.751068, 30.076889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711487, 37.618210, 29.958929>,  <37.442570, 37.396778, 29.762329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711487, 37.618210, 29.958929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733524, -0.408622, -0.543112,
		-0.099819, 0.725657, -0.680778,
		0.672294, 0.553580, 0.491498,
		37.913174, 37.784283, 30.106379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998196, 37.296116, 29.298138>,  <37.442570, 37.396778, 29.762329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998196, 37.296116, 29.298138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181614, 37.346481, 29.650019>,  <38.291664, 37.376701, 29.861147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181614, 37.346481, 29.650019>,  <37.998196, 37.296116, 29.298138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181614, 37.346481, 29.650019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841014, -0.381302, -0.383803,
		0.287106, 0.915835, -0.280743,
		0.458548, 0.125917, 0.879704,
		38.319180, 37.384258, 29.913929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615993, 37.704357, 29.275232>,  <37.998196, 37.296116, 29.298138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615993, 37.704357, 29.275232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673210, 37.455780, 29.583347>,  <38.707539, 37.306633, 29.768217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673210, 37.455780, 29.583347>,  <38.615993, 37.704357, 29.275232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673210, 37.455780, 29.583347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781895, -0.406201, -0.472906,
		0.606777, 0.669931, 0.427801,
		0.143041, -0.621444, 0.770290,
		38.716122, 37.269348, 29.814434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357815, 37.833286, 29.525478>,  <38.615993, 37.704357, 29.275232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357815, 37.833286, 29.525478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214188, 37.466621, 29.595684>,  <39.128010, 37.246624, 29.637808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214188, 37.466621, 29.595684>,  <39.357815, 37.833286, 29.525478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214188, 37.466621, 29.595684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750089, -0.395332, -0.530169,
		0.555371, -0.058717, 0.829527,
		-0.359069, -0.916660, 0.175513,
		39.106468, 37.191624, 29.648338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149757, 37.871601, 29.394855>,  <39.357815, 37.833286, 29.525478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149757, 37.871601, 29.394855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947044, 38.208836, 29.466835>,  <39.825417, 38.411175, 29.510023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947044, 38.208836, 29.466835>,  <40.149757, 37.871601, 29.394855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947044, 38.208836, 29.466835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779501, 0.359003, 0.513317,
		0.368167, 0.400412, -0.839121,
		-0.506785, 0.843082, 0.179949,
		39.795010, 38.461761, 29.520819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548866, 38.458878, 29.051857>,  <40.149757, 37.871601, 29.394855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548866, 38.458878, 29.051857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327637, 38.524971, 29.378490>,  <40.194901, 38.564625, 29.574471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327637, 38.524971, 29.378490>,  <40.548866, 38.458878, 29.051857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327637, 38.524971, 29.378490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831039, 0.178858, 0.526672,
		-0.059031, 0.969902, -0.236233,
		-0.553072, 0.165229, 0.816585,
		40.161716, 38.574539, 29.623466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044804, 38.817352, 29.442574>,  <40.548866, 38.458878, 29.051857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044804, 38.817352, 29.442574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749794, 38.761047, 29.706770>,  <40.572788, 38.727264, 29.865288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749794, 38.761047, 29.706770>,  <41.044804, 38.817352, 29.442574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749794, 38.761047, 29.706770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636307, 0.182773, 0.749472,
		-0.226218, 0.973026, -0.045230,
		-0.737522, -0.140764, 0.660489,
		40.528538, 38.718819, 29.904917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101376, 39.356186, 29.980091>,  <41.044804, 38.817352, 29.442574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101376, 39.356186, 29.980091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921204, 39.020840, 30.102894>,  <40.813099, 38.819633, 30.176577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921204, 39.020840, 30.102894>,  <41.101376, 39.356186, 29.980091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921204, 39.020840, 30.102894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527107, 0.027828, 0.849343,
		-0.720603, 0.544398, 0.429374,
		-0.450432, -0.838365, 0.307009,
		40.786076, 38.769329, 30.194996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825901, 39.459393, 30.608843>,  <41.101376, 39.356186, 29.980091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825901, 39.459393, 30.608843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905556, 39.067661, 30.594683>,  <40.953346, 38.832623, 30.586187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905556, 39.067661, 30.594683>,  <40.825901, 39.459393, 30.608843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905556, 39.067661, 30.594683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505542, 0.071715, 0.859817,
		-0.839508, -0.189114, 0.509374,
		0.199134, -0.979333, -0.035400,
		40.965298, 38.773861, 30.584063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974728, 39.341496, 31.265381>,  <40.825901, 39.459393, 30.608843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974728, 39.341496, 31.265381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104790, 39.002171, 31.098219>,  <41.182827, 38.798576, 30.997923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104790, 39.002171, 31.098219>,  <40.974728, 39.341496, 31.265381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104790, 39.002171, 31.098219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586670, -0.165642, 0.792705,
		-0.741683, -0.502923, 0.443819,
		0.325154, -0.848311, -0.417903,
		41.202335, 38.747677, 30.972847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865646, 38.889095, 31.815460>,  <40.974728, 39.341496, 31.265381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865646, 38.889095, 31.815460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129669, 38.743935, 31.552361>,  <41.288082, 38.656837, 31.394501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129669, 38.743935, 31.552361>,  <40.865646, 38.889095, 31.815460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129669, 38.743935, 31.552361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637690, -0.192153, 0.745941,
		-0.397089, -0.911802, 0.104586,
		0.660054, -0.362898, -0.657749,
		41.327686, 38.635067, 31.355036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974201, 38.212845, 31.982130>,  <40.865646, 38.889095, 31.815460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974201, 38.212845, 31.982130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301315, 38.326096, 31.781702>,  <41.497585, 38.394047, 31.661446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301315, 38.326096, 31.781702>,  <40.974201, 38.212845, 31.982130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301315, 38.326096, 31.781702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574374, -0.456546, 0.679456,
		-0.036390, -0.843449, -0.535976,
		0.817784, 0.283125, -0.501069,
		41.546650, 38.411034, 31.631382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467606, 37.723644, 32.008400>,  <40.974201, 38.212845, 31.982130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467606, 37.723644, 32.008400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731556, 37.994473, 31.878082>,  <41.889927, 38.156967, 31.799891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731556, 37.994473, 31.878082>,  <41.467606, 37.723644, 32.008400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731556, 37.994473, 31.878082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660982, -0.316889, 0.680208,
		0.357305, -0.664199, -0.656637,
		0.659875, 0.677067, -0.325798,
		41.929520, 38.197594, 31.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125523, 37.352684, 31.944431>,  <41.467606, 37.723644, 32.008400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125523, 37.352684, 31.944431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239613, 37.735985, 31.952351>,  <42.308067, 37.965965, 31.957102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239613, 37.735985, 31.952351>,  <42.125523, 37.352684, 31.944431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239613, 37.735985, 31.952351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802787, -0.250131, 0.541265,
		0.523622, -0.138489, -0.840619,
		0.285224, 0.958256, 0.019797,
		42.325180, 38.023460, 31.958290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902645, 37.372353, 31.710398>,  <42.125523, 37.352684, 31.944431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902645, 37.372353, 31.710398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850483, 37.726471, 31.888945>,  <42.819187, 37.938942, 31.996073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850483, 37.726471, 31.888945>,  <42.902645, 37.372353, 31.710398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850483, 37.726471, 31.888945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820792, -0.156145, 0.549472,
		0.556144, 0.438028, -0.706283,
		-0.130402, 0.885297, 0.446369,
		42.811363, 37.992062, 32.022854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470276, 37.601391, 31.792017>,  <42.902645, 37.372353, 31.710398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470276, 37.601391, 31.792017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273075, 37.804520, 32.074596>,  <43.154755, 37.926395, 32.244144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273075, 37.804520, 32.074596>,  <43.470276, 37.601391, 31.792017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273075, 37.804520, 32.074596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770671, -0.121921, 0.625461,
		0.403752, 0.852792, -0.331255,
		-0.493001, 0.507820, 0.706448,
		43.125175, 37.956867, 32.286530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880836, 38.047150, 31.987038>,  <43.470276, 37.601391, 31.792017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880836, 38.047150, 31.987038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633968, 38.067879, 32.301086>,  <43.485847, 38.080318, 32.489517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633968, 38.067879, 32.301086>,  <43.880836, 38.047150, 31.987038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633968, 38.067879, 32.301086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740114, -0.300471, 0.601622,
		0.267086, 0.952382, 0.147084,
		-0.617168, 0.051826, 0.785122,
		43.448818, 38.083427, 32.536625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204681, 38.362034, 32.512886>,  <43.880836, 38.047150, 31.987038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204681, 38.362034, 32.512886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915394, 38.162724, 32.704166>,  <43.741821, 38.043137, 32.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915394, 38.162724, 32.704166>,  <44.204681, 38.362034, 32.512886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915394, 38.162724, 32.704166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690619, -0.522249, 0.500302,
		0.000450, 0.692081, 0.721820,
		-0.723219, -0.498277, 0.478199,
		43.698429, 38.013241, 32.847626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414349, 38.391361, 33.327187>,  <44.204681, 38.362034, 32.512886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414349, 38.391361, 33.327187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154972, 38.090733, 33.278740>,  <43.999348, 37.910355, 33.249672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154972, 38.090733, 33.278740>,  <44.414349, 38.391361, 33.327187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154972, 38.090733, 33.278740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443111, -0.501995, 0.742734,
		-0.619015, 0.427951, 0.658542,
		-0.648439, -0.751571, -0.121113,
		43.960442, 37.865261, 33.242405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436192, 38.089081, 33.947197>,  <44.414349, 38.391361, 33.327187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436192, 38.089081, 33.947197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262997, 37.803787, 33.726719>,  <44.159081, 37.632610, 33.594433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262997, 37.803787, 33.726719>,  <44.436192, 38.089081, 33.947197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262997, 37.803787, 33.726719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409105, -0.700372, 0.584904,
		-0.803217, 0.027758, 0.595040,
		-0.432985, -0.713238, -0.551195,
		44.133102, 37.589817, 33.561359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157749, 37.674820, 34.403931>,  <44.436192, 38.089081, 33.947197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157749, 37.674820, 34.403931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213585, 37.472382, 34.063488>,  <44.247086, 37.350918, 33.859222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213585, 37.472382, 34.063488>,  <44.157749, 37.674820, 34.403931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213585, 37.472382, 34.063488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563201, -0.666373, 0.488621,
		-0.814445, -0.547548, 0.192019,
		0.139587, -0.506100, -0.851104,
		44.255463, 37.320553, 33.808155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116646, 36.973705, 34.635998>,  <44.157749, 37.674820, 34.403931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116646, 36.973705, 34.635998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299171, 36.954285, 34.280602>,  <44.408688, 36.942635, 34.067364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299171, 36.954285, 34.280602>,  <44.116646, 36.973705, 34.635998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299171, 36.954285, 34.280602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548275, -0.771102, 0.323721,
		-0.700834, -0.634858, -0.325250,
		0.456318, -0.048548, -0.888492,
		44.436066, 36.939720, 34.014053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163742, 36.267017, 34.427067>,  <44.116646, 36.973705, 34.635998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163742, 36.267017, 34.427067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452583, 36.454369, 34.223423>,  <44.625889, 36.566780, 34.101238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452583, 36.454369, 34.223423>,  <44.163742, 36.267017, 34.427067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452583, 36.454369, 34.223423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612433, -0.775055, 0.155611,
		-0.321701, -0.424161, -0.846520,
		0.722104, 0.468377, -0.509106,
		44.669216, 36.594883, 34.070690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463577, 35.754860, 33.914532>,  <44.163742, 36.267017, 34.427067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463577, 35.754860, 33.914532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.745678, 36.031422, 33.977257>,  <44.914936, 36.197357, 34.014893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.745678, 36.031422, 33.977257>,  <44.463577, 35.754860, 33.914532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745678, 36.031422, 33.977257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654192, -0.719892, 0.231922,
		0.273238, -0.060978, -0.960012,
		0.705247, 0.691402, 0.156810,
		44.957253, 36.238842, 34.024300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037262, 35.517159, 33.674553>,  <44.463577, 35.754860, 33.914532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037262, 35.517159, 33.674553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165718, 35.810604, 33.914112>,  <45.242790, 35.986671, 34.057850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165718, 35.810604, 33.914112>,  <45.037262, 35.517159, 33.674553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165718, 35.810604, 33.914112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702574, -0.608603, 0.368770,
		0.635028, 0.302347, -0.710862,
		0.321136, 0.733613, 0.598902,
		45.262058, 36.030689, 34.093784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762836, 35.401047, 33.663017>,  <45.037262, 35.517159, 33.674553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762836, 35.401047, 33.663017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664799, 35.619904, 33.983158>,  <45.605976, 35.751217, 34.175243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664799, 35.619904, 33.983158>,  <45.762836, 35.401047, 33.663017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664799, 35.619904, 33.983158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547019, -0.603534, 0.580101,
		0.800436, 0.579990, -0.151372,
		-0.245095, 0.547137, 0.800356,
		45.591270, 35.784046, 34.223267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401196, 35.624702, 33.915813>,  <45.762836, 35.401047, 33.663017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401196, 35.624702, 33.915813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143909, 35.701435, 34.212318>,  <45.989536, 35.747475, 34.390221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143909, 35.701435, 34.212318>,  <46.401196, 35.624702, 33.915813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143909, 35.701435, 34.212318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676902, -0.310032, 0.667596,
		0.357882, 0.931172, 0.069567,
		-0.643214, 0.191830, 0.741267,
		45.950947, 35.758984, 34.434700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670330, 36.201275, 34.454292>,  <46.401196, 35.624702, 33.915813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670330, 36.201275, 34.454292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419724, 35.925816, 34.600300>,  <46.269360, 35.760540, 34.687904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419724, 35.925816, 34.600300>,  <46.670330, 36.201275, 34.454292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419724, 35.925816, 34.600300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754123, -0.417281, 0.507124,
		-0.196912, 0.592995, 0.780758,
		-0.626517, -0.688646, 0.365024,
		46.231770, 35.719223, 34.709808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781799, 36.223911, 35.219856>,  <46.670330, 36.201275, 34.454292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781799, 36.223911, 35.219856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651875, 35.877449, 35.067928>,  <46.573917, 35.669571, 34.976772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651875, 35.877449, 35.067928>,  <46.781799, 36.223911, 35.219856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651875, 35.877449, 35.067928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799993, -0.465832, 0.378168,
		-0.504486, -0.181017, 0.844232,
		-0.324815, -0.866160, -0.379818,
		46.554428, 35.617599, 34.953983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814625, 35.584274, 35.729565>,  <46.781799, 36.223911, 35.219856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814625, 35.584274, 35.729565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875465, 35.496506, 35.344086>,  <46.911968, 35.443844, 35.112797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875465, 35.496506, 35.344086>,  <46.814625, 35.584274, 35.729565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875465, 35.496506, 35.344086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880704, -0.412448, 0.232910,
		-0.448582, -0.884161, 0.130512,
		0.152101, -0.219422, -0.963701,
		46.921097, 35.430679, 35.054974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041615, 34.827251, 35.525829>,  <46.814625, 35.584274, 35.729565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041615, 34.827251, 35.525829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190186, 35.080711, 35.254379>,  <47.279327, 35.232788, 35.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190186, 35.080711, 35.254379>,  <47.041615, 34.827251, 35.525829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.190186, 35.080711, 35.254379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925966, -0.199258, 0.320755,
		0.068025, -0.747520, -0.660747,
		0.371430, 0.633648, -0.678623,
		47.301613, 35.270805, 35.050793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522007, 34.469727, 35.055756>,  <47.041615, 34.827251, 35.525829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522007, 34.469727, 35.055756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604286, 34.861172, 35.056515>,  <47.653652, 35.096039, 35.056973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604286, 34.861172, 35.056515>,  <47.522007, 34.469727, 35.055756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.604286, 34.861172, 35.056515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964641, -0.203083, 0.168003,
		0.164796, -0.032724, -0.985785,
		0.205693, 0.978615, 0.001900,
		47.665993, 35.154755, 35.057083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.918175, 35.928265, 47.230854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550407, 36.084778, 47.246689>,  <35.329746, 36.178688, 47.256191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550407, 36.084778, 47.246689>,  <35.918175, 35.928265, 47.230854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550407, 36.084778, 47.246689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004402, 0.110899, -0.993822,
		-0.393260, -0.913563, -0.103685,
		-0.919417, 0.391286, 0.039590,
		35.274582, 36.202164, 47.258568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681293, 35.715214, 46.590504>,  <35.918175, 35.928265, 47.230854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681293, 35.715214, 46.590504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389923, 35.968102, 46.696098>,  <35.215099, 36.119835, 46.759457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389923, 35.968102, 46.696098>,  <35.681293, 35.715214, 46.590504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389923, 35.968102, 46.696098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162552, 0.214835, -0.963028,
		-0.665556, -0.744411, -0.053725,
		-0.728431, 0.632216, 0.263991,
		35.171394, 36.157768, 46.775295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000984, 35.533398, 46.318577>,  <35.681293, 35.715214, 46.590504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000984, 35.533398, 46.318577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013844, 35.930595, 46.364056>,  <35.021557, 36.168915, 46.391342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013844, 35.930595, 46.364056>,  <35.000984, 35.533398, 46.318577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013844, 35.930595, 46.364056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326383, 0.117944, -0.937850,
		-0.944691, -0.006961, 0.327888,
		0.032144, 0.992996, 0.113693,
		35.023487, 36.228493, 46.398163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406075, 35.806072, 45.920387>,  <35.000984, 35.533398, 46.318577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406075, 35.806072, 45.920387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643539, 36.126129, 45.954636>,  <34.786018, 36.318165, 45.975185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643539, 36.126129, 45.954636>,  <34.406075, 35.806072, 45.920387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643539, 36.126129, 45.954636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284778, 0.308412, -0.907625,
		-0.752637, 0.514443, 0.410957,
		0.593665, 0.800144, 0.085620,
		34.821640, 36.366173, 45.980320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009342, 36.386505, 45.695961>,  <34.406075, 35.806072, 45.920387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009342, 36.386505, 45.695961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.394787, 36.486137, 45.657154>,  <34.626053, 36.545918, 45.633869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.394787, 36.486137, 45.657154>,  <34.009342, 36.386505, 45.695961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394787, 36.486137, 45.657154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187094, 0.369222, -0.910314,
		-0.190922, 0.895339, 0.402388,
		0.963610, 0.249084, -0.097020,
		34.683868, 36.560863, 45.628048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978512, 37.037609, 45.561569>,  <34.009342, 36.386505, 45.695961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978512, 37.037609, 45.561569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325783, 36.905109, 45.413761>,  <34.534145, 36.825607, 45.325077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325783, 36.905109, 45.413761>,  <33.978512, 37.037609, 45.561569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325783, 36.905109, 45.413761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207686, 0.433744, -0.876774,
		0.450712, 0.837936, 0.307769,
		0.868173, -0.331254, -0.369521,
		34.586235, 36.805733, 45.302906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202026, 37.512066, 45.023933>,  <33.978512, 37.037609, 45.561569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202026, 37.512066, 45.023933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.491257, 37.250206, 44.935753>,  <34.664795, 37.093090, 44.882843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.491257, 37.250206, 44.935753>,  <34.202026, 37.512066, 45.023933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491257, 37.250206, 44.935753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019027, 0.337893, -0.940992,
		0.690510, 0.676211, 0.256778,
		0.723072, -0.654650, -0.220453,
		34.708179, 37.053810, 44.869617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732399, 37.860172, 44.510326>,  <34.202026, 37.512066, 45.023933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732399, 37.860172, 44.510326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799465, 37.466362, 44.489964>,  <34.839703, 37.230076, 44.477745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799465, 37.466362, 44.489964>,  <34.732399, 37.860172, 44.510326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799465, 37.466362, 44.489964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344627, 0.106912, -0.932632,
		0.923646, 0.138822, 0.357221,
		0.167661, -0.984529, -0.050907,
		34.849762, 37.171001, 44.474689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436245, 37.618538, 44.398888>,  <34.732399, 37.860172, 44.510326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436245, 37.618538, 44.398888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222542, 37.317944, 44.244053>,  <35.094318, 37.137589, 44.151150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222542, 37.317944, 44.244053>,  <35.436245, 37.618538, 44.398888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222542, 37.317944, 44.244053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486247, 0.101377, -0.867921,
		0.691472, -0.651915, 0.311246,
		-0.534257, -0.751485, -0.387091,
		35.062263, 37.092499, 44.127926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933411, 37.428066, 43.975449>,  <35.436245, 37.618538, 44.398888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933411, 37.428066, 43.975449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598782, 37.257519, 43.837837>,  <35.398003, 37.155190, 43.755272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598782, 37.257519, 43.837837>,  <35.933411, 37.428066, 43.975449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598782, 37.257519, 43.837837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337603, 0.093355, -0.936648,
		0.431472, -0.899720, 0.065844,
		-0.836574, -0.426367, -0.344028,
		35.347809, 37.129608, 43.734631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173130, 36.812252, 43.670486>,  <35.933411, 37.428066, 43.975449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173130, 36.812252, 43.670486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.820175, 36.902767, 43.505474>,  <35.608402, 36.957077, 43.406467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.820175, 36.902767, 43.505474>,  <36.173130, 36.812252, 43.670486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820175, 36.902767, 43.505474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378386, -0.179843, -0.908009,
		-0.279660, -0.957315, 0.073069,
		-0.882392, 0.226285, -0.412529,
		35.555458, 36.970654, 43.381714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037849, 36.304527, 43.128319>,  <36.173130, 36.812252, 43.670486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037849, 36.304527, 43.128319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.791985, 36.605930, 43.035007>,  <35.644466, 36.786774, 42.979019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.791985, 36.605930, 43.035007>,  <36.037849, 36.304527, 43.128319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791985, 36.605930, 43.035007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223770, -0.117021, -0.967591,
		-0.756387, -0.646939, -0.096685,
		-0.614659, 0.753509, -0.233278,
		35.607586, 36.831982, 42.965023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751068, 36.022659, 42.625027>,  <36.037849, 36.304527, 43.128319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751068, 36.022659, 42.625027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722942, 36.421391, 42.610115>,  <35.706066, 36.660629, 42.601170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722942, 36.421391, 42.610115>,  <35.751068, 36.022659, 42.625027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722942, 36.421391, 42.610115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403560, -0.005746, -0.914935,
		-0.912247, -0.079378, -0.401875,
		-0.070317, 0.996828, -0.037276,
		35.701847, 36.720440, 42.598934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638123, 36.135941, 41.854469>,  <35.751068, 36.022659, 42.625027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638123, 36.135941, 41.854469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742485, 36.482388, 42.025009>,  <35.805103, 36.690254, 42.127335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742485, 36.482388, 42.025009>,  <35.638123, 36.135941, 41.854469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742485, 36.482388, 42.025009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380748, 0.313518, -0.869906,
		-0.887106, 0.389297, -0.247972,
		0.260908, 0.866114, 0.426348,
		35.820759, 36.742222, 42.152912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374500, 36.648254, 41.410084>,  <35.638123, 36.135941, 41.854469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374500, 36.648254, 41.410084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666790, 36.834538, 41.609745>,  <35.842163, 36.946308, 41.729542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666790, 36.834538, 41.609745>,  <35.374500, 36.648254, 41.410084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666790, 36.834538, 41.609745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438732, 0.239823, -0.866025,
		-0.523021, 0.851824, -0.029074,
		0.730728, 0.465705, 0.499155,
		35.886009, 36.974247, 41.759491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559212, 37.399212, 41.138485>,  <35.374500, 36.648254, 41.410084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559212, 37.399212, 41.138485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886345, 37.257107, 41.319569>,  <36.082623, 37.171844, 41.428219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886345, 37.257107, 41.319569>,  <35.559212, 37.399212, 41.138485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886345, 37.257107, 41.319569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554757, 0.277604, -0.784334,
		0.152971, 0.892594, 0.424118,
		0.817829, -0.355263, 0.452708,
		36.131695, 37.150528, 41.455379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034649, 37.867371, 40.971390>,  <35.559212, 37.399212, 41.138485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034649, 37.867371, 40.971390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267563, 37.566849, 41.095634>,  <36.407310, 37.386536, 41.170181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267563, 37.566849, 41.095634>,  <36.034649, 37.867371, 40.971390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267563, 37.566849, 41.095634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646954, 0.196838, -0.736685,
		0.492336, 0.629914, 0.600678,
		0.582284, -0.751308, 0.310615,
		36.442249, 37.341457, 41.188820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714703, 38.142181, 41.011463>,  <36.034649, 37.867371, 40.971390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714703, 38.142181, 41.011463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773136, 37.746529, 41.004818>,  <36.808197, 37.509136, 41.000832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773136, 37.746529, 41.004818>,  <36.714703, 38.142181, 41.011463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773136, 37.746529, 41.004818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687080, 0.113525, -0.717658,
		0.711745, 0.093423, 0.696198,
		0.146082, -0.989133, -0.016612,
		36.816959, 37.449787, 40.999836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412296, 38.109142, 41.058918>,  <36.714703, 38.142181, 41.011463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412296, 38.109142, 41.058918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286381, 37.764709, 40.899197>,  <37.210831, 37.558048, 40.803364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286381, 37.764709, 40.899197>,  <37.412296, 38.109142, 41.058918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286381, 37.764709, 40.899197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613033, 0.136728, -0.778136,
		0.724637, -0.489732, 0.484833,
		-0.314788, -0.861085, -0.399301,
		37.191944, 37.506386, 40.779408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981018, 37.809128, 40.927734>,  <37.412296, 38.109142, 41.058918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981018, 37.809128, 40.927734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716606, 37.622509, 40.692661>,  <37.557961, 37.510540, 40.551617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716606, 37.622509, 40.692661>,  <37.981018, 37.809128, 40.927734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716606, 37.622509, 40.692661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630023, 0.080315, -0.772412,
		0.407565, -0.880844, 0.240843,
		-0.661031, -0.466545, -0.587686,
		37.518295, 37.482544, 40.516357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411186, 37.300686, 40.532501>,  <37.981018, 37.809128, 40.927734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411186, 37.300686, 40.532501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073578, 37.351479, 40.324078>,  <37.871014, 37.381954, 40.199024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073578, 37.351479, 40.324078>,  <38.411186, 37.300686, 40.532501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073578, 37.351479, 40.324078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532174, 0.077925, -0.843041,
		-0.066446, -0.988840, -0.133345,
		-0.844024, 0.126979, -0.521057,
		37.820370, 37.389572, 40.167759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932915, 36.866196, 40.254150>,  <38.411186, 37.300686, 40.532501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932915, 36.866196, 40.254150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231136, 36.602375, 40.292400>,  <39.410069, 36.444084, 40.315350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231136, 36.602375, 40.292400>,  <38.932915, 36.866196, 40.254150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231136, 36.602375, 40.292400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245328, -0.138196, 0.959539,
		-0.619647, -0.738849, -0.264839,
		0.745554, -0.659549, 0.095627,
		39.454803, 36.404510, 40.321087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745064, 36.230598, 40.645626>,  <38.932915, 36.866196, 40.254150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745064, 36.230598, 40.645626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142159, 36.256794, 40.686008>,  <39.380413, 36.272511, 40.710239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142159, 36.256794, 40.686008>,  <38.745064, 36.230598, 40.645626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142159, 36.256794, 40.686008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100167, -0.015256, 0.994854,
		0.066691, -0.997737, -0.008585,
		0.992733, 0.065488, 0.100957,
		39.439980, 36.276440, 40.716297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879307, 35.753956, 41.182220>,  <38.745064, 36.230598, 40.645626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879307, 35.753956, 41.182220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217522, 35.966835, 41.165131>,  <39.420452, 36.094563, 41.154877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217522, 35.966835, 41.165131>,  <38.879307, 35.753956, 41.182220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217522, 35.966835, 41.165131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017877, 0.108188, 0.993970,
		0.533615, -0.839676, 0.100992,
		0.845539, 0.532202, -0.042720,
		39.471184, 36.126495, 41.152313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378277, 35.432770, 41.656940>,  <38.879307, 35.753956, 41.182220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378277, 35.432770, 41.656940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 35.816456, 41.615345>,  <39.546501, 36.046669, 41.590385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 35.816456, 41.615345>,  <39.378277, 35.432770, 41.656940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483418, 35.816456, 41.615345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061547, 0.090894, 0.993957,
		0.962871, -0.267665, -0.035145,
		0.262853, 0.959215, -0.103993,
		39.562275, 36.104221, 41.584148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928703, 35.450748, 42.032913>,  <39.378277, 35.432770, 41.656940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928703, 35.450748, 42.032913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844738, 35.837914, 41.977673>,  <39.794357, 36.070213, 41.944530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844738, 35.837914, 41.977673>,  <39.928703, 35.450748, 42.032913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844738, 35.837914, 41.977673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138837, 0.169324, 0.975733,
		0.967812, 0.185649, -0.169926,
		-0.209917, 0.967917, -0.138099,
		39.781761, 36.128288, 41.936241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403835, 35.732018, 42.416985>,  <39.928703, 35.450748, 42.032913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403835, 35.732018, 42.416985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117245, 36.002251, 42.347420>,  <39.945290, 36.164391, 42.305679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117245, 36.002251, 42.347420>,  <40.403835, 35.732018, 42.416985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117245, 36.002251, 42.347420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019304, 0.268402, 0.963113,
		0.697345, 0.686690, -0.205345,
		-0.716476, 0.675586, -0.173913,
		39.902302, 36.204926, 42.295246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614376, 36.392895, 42.761574>,  <40.403835, 35.732018, 42.416985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614376, 36.392895, 42.761574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217667, 36.415028, 42.715401>,  <39.979641, 36.428307, 42.687695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217667, 36.415028, 42.715401>,  <40.614376, 36.392895, 42.761574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217667, 36.415028, 42.715401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099639, 0.232448, 0.967491,
		0.080370, 0.971033, -0.225022,
		-0.991772, 0.055336, -0.115435,
		39.920135, 36.431629, 42.680771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429401, 36.922474, 43.190098>,  <40.614376, 36.392895, 42.761574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429401, 36.922474, 43.190098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108402, 36.691608, 43.129601>,  <39.915802, 36.553089, 43.093304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108402, 36.691608, 43.129601>,  <40.429401, 36.922474, 43.190098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108402, 36.691608, 43.129601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167952, -0.024716, 0.985485,
		-0.572529, 0.816251, -0.077103,
		-0.802498, -0.577168, -0.151242,
		39.867653, 36.518459, 43.084229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873840, 37.335991, 43.558456>,  <40.429401, 36.922474, 43.190098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873840, 37.335991, 43.558456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715462, 36.970695, 43.520039>,  <39.620434, 36.751518, 43.496986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715462, 36.970695, 43.520039>,  <39.873840, 37.335991, 43.558456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715462, 36.970695, 43.520039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291394, 0.025771, 0.956256,
		-0.870813, 0.406614, -0.276316,
		-0.395948, -0.913237, -0.096044,
		39.596676, 36.696724, 43.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161934, 37.302299, 43.901875>,  <39.873840, 37.335991, 43.558456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161934, 37.302299, 43.901875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270710, 36.918171, 43.877106>,  <39.335976, 36.687695, 43.862244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270710, 36.918171, 43.877106>,  <39.161934, 37.302299, 43.901875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270710, 36.918171, 43.877106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300982, -0.145997, 0.942388,
		-0.914034, -0.237637, -0.328741,
		0.271942, -0.960319, -0.061921,
		39.352291, 36.630074, 43.858528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546688, 36.883701, 43.995445>,  <39.161934, 37.302299, 43.901875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546688, 36.883701, 43.995445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850475, 36.637901, 44.080853>,  <39.032749, 36.490421, 44.132095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850475, 36.637901, 44.080853>,  <38.546688, 36.883701, 43.995445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850475, 36.637901, 44.080853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473207, -0.296619, 0.829514,
		-0.446406, -0.731029, -0.516060,
		0.759471, -0.614503, 0.213515,
		39.078316, 36.453552, 44.144909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167385, 36.211960, 44.191338>,  <38.546688, 36.883701, 43.995445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167385, 36.211960, 44.191338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540802, 36.163795, 44.326397>,  <38.764851, 36.134895, 44.407433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540802, 36.163795, 44.326397>,  <38.167385, 36.211960, 44.191338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540802, 36.163795, 44.326397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356972, -0.398389, 0.844901,
		0.032780, -0.909279, -0.414895,
		0.933540, -0.120410, 0.337646,
		38.820866, 36.127674, 44.427692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203373, 35.531448, 44.337421>,  <38.167385, 36.211960, 44.191338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203373, 35.531448, 44.337421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494465, 35.699780, 44.554054>,  <38.669121, 35.800777, 44.684032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494465, 35.699780, 44.554054>,  <38.203373, 35.531448, 44.337421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494465, 35.699780, 44.554054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371237, -0.422278, 0.826961,
		0.576706, -0.802861, -0.151078,
		0.727732, 0.420828, 0.541582,
		38.712784, 35.826027, 44.716530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512897, 34.980000, 44.725151>,  <38.203373, 35.531448, 44.337421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512897, 34.980000, 44.725151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576630, 35.321457, 44.923504>,  <38.614868, 35.526333, 45.042515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576630, 35.321457, 44.923504>,  <38.512897, 34.980000, 44.725151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576630, 35.321457, 44.923504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246640, -0.451952, 0.857268,
		0.955920, -0.258893, 0.138534,
		0.159330, 0.853647, 0.495884,
		38.624428, 35.577553, 45.072269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763863, 34.710499, 45.297581>,  <38.512897, 34.980000, 44.725151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763863, 34.710499, 45.297581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654308, 35.086086, 45.380844>,  <38.588573, 35.311440, 45.430801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654308, 35.086086, 45.380844>,  <38.763863, 34.710499, 45.297581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654308, 35.086086, 45.380844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427660, -0.312760, 0.848108,
		0.861447, 0.143268, 0.487220,
		-0.273890, 0.938965, 0.208157,
		38.572140, 35.367775, 45.443291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007263, 34.889797, 45.994373>,  <38.763863, 34.710499, 45.297581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007263, 34.889797, 45.994373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695927, 35.135136, 45.940723>,  <38.509125, 35.282337, 45.908531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695927, 35.135136, 45.940723>,  <39.007263, 34.889797, 45.994373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695927, 35.135136, 45.940723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311660, -0.191992, 0.930595,
		0.545025, 0.766123, 0.340591,
		-0.778342, 0.613346, -0.134130,
		38.462425, 35.319141, 45.900486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895767, 35.075920, 46.697845>,  <39.007263, 34.889797, 45.994373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895767, 35.075920, 46.697845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560619, 35.197464, 46.516453>,  <38.359531, 35.270390, 46.407616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560619, 35.197464, 46.516453>,  <38.895767, 35.075920, 46.697845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560619, 35.197464, 46.516453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498286, -0.086489, 0.862688,
		0.222914, 0.948783, 0.223875,
		-0.837866, 0.303859, -0.453486,
		38.309258, 35.288620, 46.380405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722992, 35.445869, 47.151596>,  <38.895767, 35.075920, 46.697845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722992, 35.445869, 47.151596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394012, 35.401905, 46.928345>,  <38.196625, 35.375526, 46.794395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394012, 35.401905, 46.928345>,  <38.722992, 35.445869, 47.151596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394012, 35.401905, 46.928345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543501, -0.137766, 0.828026,
		-0.167902, 0.984347, 0.053567,
		-0.822445, -0.109913, -0.558125,
		38.147278, 35.368931, 46.760906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164032, 35.968185, 47.378227>,  <38.722992, 35.445869, 47.151596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164032, 35.968185, 47.378227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996635, 35.649395, 47.204014>,  <37.896198, 35.458118, 47.099487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996635, 35.649395, 47.204014>,  <38.164032, 35.968185, 47.378227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996635, 35.649395, 47.204014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582604, -0.132305, 0.801915,
		-0.696733, 0.589338, -0.408955,
		-0.418492, -0.796980, -0.435532,
		37.871086, 35.410301, 47.073353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.496407, 36.013447, 47.635536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525356, 35.642414, 47.488918>,  <37.542728, 35.419796, 47.400948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525356, 35.642414, 47.488918>,  <37.496407, 36.013447, 47.635536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525356, 35.642414, 47.488918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554726, -0.342860, 0.758107,
		-0.828879, 0.148464, -0.539368,
		0.072376, -0.927580, -0.366546,
		37.547070, 35.364140, 47.378956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883804, 35.667881, 47.649380>,  <37.496407, 36.013447, 47.635536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883804, 35.667881, 47.649380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120560, 35.345528, 47.643436>,  <37.262611, 35.152115, 47.639870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120560, 35.345528, 47.643436>,  <36.883804, 35.667881, 47.649380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120560, 35.345528, 47.643436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609190, -0.459342, 0.646446,
		-0.527789, -0.373567, -0.762815,
		0.591883, -0.805887, -0.014863,
		37.298126, 35.103764, 47.638977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491123, 35.094780, 47.512390>,  <36.883804, 35.667881, 47.649380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491123, 35.094780, 47.512390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821384, 34.960629, 47.693863>,  <37.019539, 34.880138, 47.802746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821384, 34.960629, 47.693863>,  <36.491123, 35.094780, 47.512390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821384, 34.960629, 47.693863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563992, -0.511542, 0.648258,
		0.014668, -0.791106, -0.611503,
		0.825650, -0.335374, 0.453681,
		37.069080, 34.860016, 47.829967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229176, 34.459072, 47.707165>,  <36.491123, 35.094780, 47.512390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229176, 34.459072, 47.707165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567669, 34.516140, 47.912506>,  <36.770767, 34.550381, 48.035709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567669, 34.516140, 47.912506>,  <36.229176, 34.459072, 47.707165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567669, 34.516140, 47.912506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467010, -0.265207, 0.843544,
		0.256490, -0.953578, -0.157801,
		0.846236, 0.142666, 0.513353,
		36.821541, 34.558941, 48.066513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210304, 34.001854, 48.231781>,  <36.229176, 34.459072, 47.707165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210304, 34.001854, 48.231781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493176, 34.240376, 48.383736>,  <36.662899, 34.383488, 48.474907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493176, 34.240376, 48.383736>,  <36.210304, 34.001854, 48.231781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493176, 34.240376, 48.383736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383682, -0.127641, 0.914601,
		0.593870, -0.792546, 0.138526,
		0.707182, 0.596304, 0.379888,
		36.705330, 34.419266, 48.497704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295506, 33.582668, 48.933823>,  <36.210304, 34.001854, 48.231781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295506, 33.582668, 48.933823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483856, 33.934227, 48.964325>,  <36.596867, 34.145161, 48.982624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483856, 33.934227, 48.964325>,  <36.295506, 33.582668, 48.933823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483856, 33.934227, 48.964325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153639, -0.003414, 0.988121,
		0.868717, -0.477000, 0.133425,
		0.470878, 0.878897, 0.076251,
		36.625118, 34.197895, 48.987202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916840, 33.578354, 49.535030>,  <36.295506, 33.582668, 48.933823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916840, 33.578354, 49.535030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746605, 33.933975, 49.467545>,  <36.644463, 34.147346, 49.427052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746605, 33.933975, 49.467545>,  <36.916840, 33.578354, 49.535030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746605, 33.933975, 49.467545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295574, 0.039646, 0.954497,
		0.855284, 0.456092, 0.245907,
		-0.425589, 0.889049, -0.168717,
		36.618927, 34.200691, 49.416931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048782, 33.983086, 50.150116>,  <36.916840, 33.578354, 49.535030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048782, 33.983086, 50.150116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754330, 34.176590, 49.960766>,  <36.577660, 34.292690, 49.847153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754330, 34.176590, 49.960766>,  <37.048782, 33.983086, 50.150116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754330, 34.176590, 49.960766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486068, 0.108865, 0.867114,
		0.471007, 0.868405, 0.154999,
		-0.736132, 0.483757, -0.473380,
		36.533489, 34.321716, 49.818752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873135, 34.532276, 50.550053>,  <37.048782, 33.983086, 50.150116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873135, 34.532276, 50.550053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544598, 34.494682, 50.324997>,  <36.347473, 34.472126, 50.189964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544598, 34.494682, 50.324997>,  <36.873135, 34.532276, 50.550053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544598, 34.494682, 50.324997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561671, -0.038944, 0.826443,
		-0.099582, 0.994812, -0.020801,
		-0.821346, -0.093982, -0.562635,
		36.298195, 34.466488, 50.156208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426846, 35.068214, 50.863674>,  <36.873135, 34.532276, 50.550053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426846, 35.068214, 50.863674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.198341, 34.815342, 50.654289>,  <36.061241, 34.663620, 50.528660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.198341, 34.815342, 50.654289>,  <36.426846, 35.068214, 50.863674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198341, 34.815342, 50.654289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625050, -0.078274, 0.776651,
		-0.531958, 0.770856, -0.350430,
		-0.571256, -0.632182, -0.523462,
		36.026966, 34.625687, 50.497250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718235, 35.176586, 51.184521>,  <36.426846, 35.068214, 50.863674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718235, 35.176586, 51.184521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700470, 34.830116, 50.985416>,  <35.689812, 34.622234, 50.865955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700470, 34.830116, 50.985416>,  <35.718235, 35.176586, 51.184521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700470, 34.830116, 50.985416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571002, -0.386837, 0.724096,
		-0.819747, 0.316380, -0.477409,
		-0.044410, -0.866176, -0.497762,
		35.687145, 34.570263, 50.836086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063293, 34.980179, 51.201309>,  <35.718235, 35.176586, 51.184521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063293, 34.980179, 51.201309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.237061, 34.631245, 51.111591>,  <35.341320, 34.421883, 51.057758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.237061, 34.631245, 51.111591>,  <35.063293, 34.980179, 51.201309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237061, 34.631245, 51.111591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533309, -0.449792, 0.716427,
		-0.725855, -0.191605, -0.660622,
		0.434414, -0.872339, -0.224299,
		35.367386, 34.369545, 51.044300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567162, 34.565067, 50.887543>,  <35.063293, 34.980179, 51.201309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567162, 34.565067, 50.887543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852966, 34.354668, 51.072063>,  <35.024448, 34.228428, 51.182777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852966, 34.354668, 51.072063>,  <34.567162, 34.565067, 50.887543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852966, 34.354668, 51.072063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662096, -0.295312, 0.688781,
		-0.226071, -0.797567, -0.559266,
		0.714507, -0.526001, 0.461305,
		35.067318, 34.196865, 51.210453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135021, 34.160912, 51.308689>,  <34.567162, 34.565067, 50.887543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135021, 34.160912, 51.308689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493904, 34.083214, 51.467327>,  <34.709232, 34.036594, 51.562511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493904, 34.083214, 51.467327>,  <34.135021, 34.160912, 51.308689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493904, 34.083214, 51.467327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441603, -0.388665, 0.808657,
		-0.002936, -0.900670, -0.434494,
		0.897205, -0.194248, 0.396597,
		34.763065, 34.024940, 51.586308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162663, 33.498829, 51.576172>,  <34.135021, 34.160912, 51.308689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162663, 33.498829, 51.576172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461861, 33.677856, 51.772202>,  <34.641380, 33.785275, 51.889820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461861, 33.677856, 51.772202>,  <34.162663, 33.498829, 51.576172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461861, 33.677856, 51.772202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266712, -0.473451, 0.839469,
		0.607751, -0.758632, -0.234768,
		0.747999, 0.447573, 0.490076,
		34.686260, 33.812130, 51.919224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310848, 32.976086, 52.107304>,  <34.162663, 33.498829, 51.576172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310848, 32.976086, 52.107304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476555, 33.320705, 52.224689>,  <34.575977, 33.527477, 52.295120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476555, 33.320705, 52.224689>,  <34.310848, 32.976086, 52.107304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476555, 33.320705, 52.224689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156320, -0.250295, 0.955467,
		0.896632, -0.441692, 0.030988,
		0.414266, 0.861546, 0.293467,
		34.600834, 33.579170, 52.312729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773193, 32.783028, 52.646706>,  <34.310848, 32.976086, 52.107304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773193, 32.783028, 52.646706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741486, 33.176430, 52.711731>,  <34.722462, 33.412472, 52.750744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741486, 33.176430, 52.711731>,  <34.773193, 32.783028, 52.646706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741486, 33.176430, 52.711731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265226, -0.178004, 0.947613,
		0.960922, 0.032002, 0.274962,
		-0.079269, 0.983509, 0.162560,
		34.717705, 33.471481, 52.760498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143955, 32.984989, 53.282154>,  <34.773193, 32.783028, 52.646706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143955, 32.984989, 53.282154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866745, 33.266815, 53.221100>,  <34.700417, 33.435909, 53.184467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866745, 33.266815, 53.221100>,  <35.143955, 32.984989, 53.282154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866745, 33.266815, 53.221100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298531, -0.087761, 0.950356,
		0.656193, 0.704191, 0.271155,
		-0.693030, 0.704566, -0.152635,
		34.658836, 33.478184, 53.175308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313316, 33.458931, 53.831959>,  <35.143955, 32.984989, 53.282154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313316, 33.458931, 53.831959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937817, 33.509861, 53.703876>,  <34.712517, 33.540421, 53.627026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937817, 33.509861, 53.703876>,  <35.313316, 33.458931, 53.831959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937817, 33.509861, 53.703876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344155, -0.299536, 0.889851,
		0.017386, 0.945551, 0.325009,
		-0.938752, 0.127325, -0.320209,
		34.656193, 33.548058, 53.607815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970753, 33.725666, 54.344238>,  <35.313316, 33.458931, 53.831959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970753, 33.725666, 54.344238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655640, 33.606033, 54.128853>,  <34.466572, 33.534252, 53.999622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655640, 33.606033, 54.128853>,  <34.970753, 33.725666, 54.344238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655640, 33.606033, 54.128853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520467, -0.144291, 0.841602,
		-0.329403, 0.943255, -0.041992,
		-0.787787, -0.299082, -0.538463,
		34.419304, 33.516308, 53.967316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390934, 34.079163, 54.577618>,  <34.970753, 33.725666, 54.344238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390934, 34.079163, 54.577618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227783, 33.772591, 54.379135>,  <34.129890, 33.588646, 54.260048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227783, 33.772591, 54.379135>,  <34.390934, 34.079163, 54.577618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227783, 33.772591, 54.379135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596235, -0.187999, 0.780487,
		-0.691475, 0.614199, -0.380292,
		-0.407880, -0.766431, -0.496203,
		34.105419, 33.542660, 54.230274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653564, 34.151604, 54.647148>,  <34.390934, 34.079163, 54.577618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653564, 34.151604, 54.647148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726254, 33.768620, 54.557480>,  <33.769867, 33.538830, 54.503681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726254, 33.768620, 54.557480>,  <33.653564, 34.151604, 54.647148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726254, 33.768620, 54.557480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637462, -0.288279, 0.714519,
		-0.748745, 0.013055, -0.662730,
		0.181723, -0.957457, -0.224169,
		33.780769, 33.481380, 54.490231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957642, 34.400925, 54.796005>,  <33.653564, 34.151604, 54.647148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957642, 34.400925, 54.796005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.052155, 34.735126, 54.994442>,  <33.108864, 34.935646, 55.113503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.052155, 34.735126, 54.994442>,  <32.957642, 34.400925, 54.796005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052155, 34.735126, 54.994442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681389, 0.221505, -0.697599,
		-0.692732, 0.502862, -0.516964,
		0.236286, 0.835503, 0.496088,
		33.123039, 34.985779, 55.143269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607960, 35.060944, 54.462936>,  <32.957642, 34.400925, 54.796005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607960, 35.060944, 54.462936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967804, 35.044228, 54.636810>,  <33.183712, 35.034199, 54.741135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967804, 35.044228, 54.636810>,  <32.607960, 35.060944, 54.462936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967804, 35.044228, 54.636810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420733, 0.349595, -0.837118,
		-0.116981, 0.935969, 0.332082,
		0.899611, -0.041791, 0.434689,
		33.237686, 35.031689, 54.767216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075588, 35.554417, 54.615826>,  <32.607960, 35.060944, 54.462936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075588, 35.554417, 54.615826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881523, 35.894081, 54.532360>,  <31.765083, 36.097881, 54.482281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881523, 35.894081, 54.532360>,  <32.075588, 35.554417, 54.615826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881523, 35.894081, 54.532360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229797, -0.106429, -0.967402,
		-0.843687, -0.517301, -0.143499,
		-0.485166, 0.849160, -0.208667,
		31.735973, 36.148830, 54.469761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605972, 35.368481, 54.057796>,  <32.075588, 35.554417, 54.615826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605972, 35.368481, 54.057796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.698061, 35.757652, 54.049759>,  <31.753313, 35.991158, 54.044937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.698061, 35.757652, 54.049759>,  <31.605972, 35.368481, 54.057796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698061, 35.757652, 54.049759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276242, -0.085140, -0.957309,
		-0.933107, 0.214840, -0.288365,
		0.230220, 0.972931, -0.020097,
		31.767126, 36.049530, 54.043732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165512, 35.617916, 53.490070>,  <31.605972, 35.368481, 54.057796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165512, 35.617916, 53.490070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448872, 35.895061, 53.543903>,  <31.618887, 36.061348, 53.576202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448872, 35.895061, 53.543903>,  <31.165512, 35.617916, 53.490070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448872, 35.895061, 53.543903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193895, -0.007691, -0.980992,
		-0.678658, 0.721028, -0.139791,
		0.708398, 0.692863, 0.134585,
		31.661390, 36.102921, 53.584278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057816, 36.133339, 52.977085>,  <31.165512, 35.617916, 53.490070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057816, 36.133339, 52.977085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439001, 36.204353, 53.075348>,  <31.667711, 36.246964, 53.134304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439001, 36.204353, 53.075348>,  <31.057816, 36.133339, 52.977085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439001, 36.204353, 53.075348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265904, -0.100727, -0.958723,
		-0.145463, 0.978946, -0.143196,
		0.952962, 0.177535, 0.245654,
		31.724890, 36.257614, 53.149044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352657, 36.714046, 52.556145>,  <31.057816, 36.133339, 52.977085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352657, 36.714046, 52.556145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.670547, 36.509712, 52.687267>,  <31.861282, 36.387112, 52.765942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.670547, 36.509712, 52.687267>,  <31.352657, 36.714046, 52.556145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670547, 36.509712, 52.687267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298203, -0.141793, -0.943912,
		0.528661, 0.847906, 0.039645,
		0.794728, -0.510832, 0.327809,
		31.908966, 36.356464, 52.785610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929157, 37.057224, 52.207005>,  <31.352657, 36.714046, 52.556145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929157, 37.057224, 52.207005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083431, 36.705250, 52.317970>,  <32.175995, 36.494064, 52.384548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083431, 36.705250, 52.317970>,  <31.929157, 37.057224, 52.207005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083431, 36.705250, 52.317970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488832, -0.060115, -0.870304,
		0.782489, 0.471272, 0.406956,
		0.385686, -0.879937, 0.277412,
		32.199139, 36.441269, 52.401196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683342, 36.961903, 51.974964>,  <31.929157, 37.057224, 52.207005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683342, 36.961903, 51.974964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.572262, 36.583447, 52.041534>,  <32.505611, 36.356373, 52.081478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.572262, 36.583447, 52.041534>,  <32.683342, 36.961903, 51.974964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572262, 36.583447, 52.041534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473697, -0.285581, -0.833099,
		0.835759, -0.152517, 0.527490,
		-0.277703, -0.946141, 0.166430,
		32.488953, 36.299603, 52.091465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269142, 36.646946, 51.911755>,  <32.683342, 36.961903, 51.974964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269142, 36.646946, 51.911755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987938, 36.366814, 51.862247>,  <32.819218, 36.198734, 51.832542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987938, 36.366814, 51.862247>,  <33.269142, 36.646946, 51.911755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987938, 36.366814, 51.862247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497949, -0.360464, -0.788741,
		0.507766, -0.616120, 0.602138,
		-0.703008, -0.700330, -0.123764,
		32.777035, 36.156715, 51.825119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554451, 35.958782, 51.865692>,  <33.269142, 36.646946, 51.911755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554451, 35.958782, 51.865692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202702, 35.886463, 51.689507>,  <32.991650, 35.843071, 51.583794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202702, 35.886463, 51.689507>,  <33.554451, 35.958782, 51.865692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202702, 35.886463, 51.689507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475253, -0.277342, -0.834994,
		0.028804, -0.943607, 0.329812,
		-0.879377, -0.180796, -0.440463,
		32.938889, 35.832226, 51.557369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629410, 35.316078, 51.578304>,  <33.554451, 35.958782, 51.865692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629410, 35.316078, 51.578304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310902, 35.446236, 51.374313>,  <33.119797, 35.524330, 51.251919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310902, 35.446236, 51.374313>,  <33.629410, 35.316078, 51.578304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310902, 35.446236, 51.374313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451541, -0.241315, -0.858998,
		-0.402575, -0.914269, 0.045225,
		-0.796269, 0.325390, -0.509977,
		33.072021, 35.543854, 51.221321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537582, 34.815315, 51.036217>,  <33.629410, 35.316078, 51.578304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537582, 34.815315, 51.036217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364357, 35.154381, 50.913624>,  <33.260422, 35.357819, 50.840069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364357, 35.154381, 50.913624>,  <33.537582, 34.815315, 51.036217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364357, 35.154381, 50.913624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438661, -0.098839, -0.893201,
		-0.787424, -0.521250, -0.329033,
		-0.433060, 0.847661, -0.306481,
		33.234440, 35.408680, 50.821678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360123, 34.638687, 50.292255>,  <33.537582, 34.815315, 51.036217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360123, 34.638687, 50.292255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330624, 35.035988, 50.328045>,  <33.312923, 35.274368, 50.349518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330624, 35.035988, 50.328045>,  <33.360123, 34.638687, 50.292255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330624, 35.035988, 50.328045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505605, 0.114567, -0.855124,
		-0.859608, -0.017822, -0.510644,
		-0.073743, 0.993256, 0.089472,
		33.308502, 35.333965, 50.354885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133987, 34.929115, 49.657352>,  <33.360123, 34.638687, 50.292255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133987, 34.929115, 49.657352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317055, 35.234097, 49.840313>,  <33.426895, 35.417084, 49.950089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317055, 35.234097, 49.840313>,  <33.133987, 34.929115, 49.657352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317055, 35.234097, 49.840313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481101, 0.220267, -0.848543,
		-0.747721, 0.608403, -0.266006,
		0.457664, 0.762449, 0.457401,
		33.454353, 35.462830, 49.977531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231647, 35.333092, 49.025227>,  <33.133987, 34.929115, 49.657352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231647, 35.333092, 49.025227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452904, 35.508049, 49.308838>,  <33.585655, 35.613026, 49.479004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452904, 35.508049, 49.308838>,  <33.231647, 35.333092, 49.025227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452904, 35.508049, 49.308838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646474, 0.311453, -0.696469,
		-0.525463, 0.843611, -0.110490,
		0.553137, 0.437398, 0.709030,
		33.618843, 35.639267, 49.521545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259201, 36.049316, 48.900547>,  <33.231647, 35.333092, 49.025227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259201, 36.049316, 48.900547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589264, 35.963379, 49.109528>,  <33.787304, 35.911816, 49.234917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589264, 35.963379, 49.109528>,  <33.259201, 36.049316, 48.900547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589264, 35.963379, 49.109528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563589, 0.250150, -0.787269,
		0.038446, 0.944070, 0.327495,
		0.825160, -0.214840, 0.522451,
		33.836811, 35.898926, 49.266262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621059, 36.636600, 48.785591>,  <33.259201, 36.049316, 48.900547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621059, 36.636600, 48.785591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872936, 36.356922, 48.921005>,  <34.024063, 36.189114, 49.002254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872936, 36.356922, 48.921005>,  <33.621059, 36.636600, 48.785591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872936, 36.356922, 48.921005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674238, 0.275451, -0.685222,
		0.385858, 0.659733, 0.644877,
		0.629695, -0.699199, 0.338533,
		34.061844, 36.147163, 49.022564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276989, 36.984482, 48.742004>,  <33.621059, 36.636600, 48.785591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276989, 36.984482, 48.742004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391682, 36.602798, 48.776104>,  <34.460499, 36.373787, 48.796562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391682, 36.602798, 48.776104>,  <34.276989, 36.984482, 48.742004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391682, 36.602798, 48.776104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636068, 0.123085, -0.761753,
		0.716380, 0.272644, 0.642235,
		0.286737, -0.954209, 0.085244,
		34.477703, 36.316536, 48.801678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996620, 37.048107, 48.657112>,  <34.276989, 36.984482, 48.742004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996620, 37.048107, 48.657112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916599, 36.666996, 48.565727>,  <34.868587, 36.438328, 48.510899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916599, 36.666996, 48.565727>,  <34.996620, 37.048107, 48.657112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916599, 36.666996, 48.565727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470360, 0.111157, -0.875446,
		0.859501, -0.282592, 0.425911,
		-0.200051, -0.952778, -0.228460,
		34.856583, 36.381165, 48.497189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543987, 36.810669, 48.372887>,  <34.996620, 37.048107, 48.657112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543987, 36.810669, 48.372887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260395, 36.562443, 48.238873>,  <35.090240, 36.413509, 48.158466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260395, 36.562443, 48.238873>,  <35.543987, 36.810669, 48.372887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260395, 36.562443, 48.238873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328570, 0.129692, -0.935533,
		0.624007, -0.773359, 0.111949,
		-0.708984, -0.620562, -0.335031,
		35.047699, 36.376274, 48.138363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852516, 36.419102, 47.901482>,  <35.543987, 36.810669, 48.372887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852516, 36.419102, 47.901482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.474979, 36.343185, 47.793297>,  <35.248459, 36.297634, 47.728386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.474979, 36.343185, 47.793297>,  <35.852516, 36.419102, 47.901482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474979, 36.343185, 47.793297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265289, 0.052645, -0.962731,
		0.196957, -0.980412, 0.000661,
		-0.943838, -0.189792, -0.270461,
		35.191830, 36.286247, 47.712158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.035789, 36.281345, 30.139032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821640, 36.332939, 30.472916>,  <37.693150, 36.363895, 30.673246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821640, 36.332939, 30.472916>,  <38.035789, 36.281345, 30.139032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821640, 36.332939, 30.472916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844360, 0.106040, 0.525177,
		-0.020773, 0.985961, -0.165680,
		-0.535373, 0.128984, 0.834709,
		37.661030, 36.371635, 30.723328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378952, 36.641762, 30.552668>,  <38.035789, 36.281345, 30.139032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378952, 36.641762, 30.552668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110374, 36.478168, 30.799860>,  <37.949230, 36.380013, 30.948175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110374, 36.478168, 30.799860>,  <38.378952, 36.641762, 30.552668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110374, 36.478168, 30.799860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725437, -0.192424, 0.660844,
		-0.151360, 0.892023, 0.425893,
		-0.671440, -0.408984, 0.617981,
		37.908943, 36.355473, 30.985254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384995, 36.952126, 31.247147>,  <38.378952, 36.641762, 30.552668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384995, 36.952126, 31.247147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247040, 36.577740, 31.275482>,  <38.164268, 36.353107, 31.292484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247040, 36.577740, 31.275482>,  <38.384995, 36.952126, 31.247147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247040, 36.577740, 31.275482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670558, -0.192867, 0.716348,
		-0.656816, 0.294560, 0.694138,
		-0.344884, -0.935968, 0.070841,
		38.143574, 36.296947, 31.296734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232353, 36.818462, 31.992298>,  <38.384995, 36.952126, 31.247147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232353, 36.818462, 31.992298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.284866, 36.462502, 31.817556>,  <38.316372, 36.248924, 31.712711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.284866, 36.462502, 31.817556>,  <38.232353, 36.818462, 31.992298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284866, 36.462502, 31.817556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834035, -0.139054, 0.533900,
		-0.535865, -0.434443, 0.723953,
		0.131281, -0.889901, -0.436855,
		38.324249, 36.195530, 31.686501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191341, 36.273430, 32.577744>,  <38.232353, 36.818462, 31.992298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191341, 36.273430, 32.577744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368816, 36.077869, 32.277313>,  <38.475304, 35.960533, 32.097057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368816, 36.077869, 32.277313>,  <38.191341, 36.273430, 32.577744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368816, 36.077869, 32.277313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668882, -0.377108, 0.640613,
		-0.596434, -0.786614, 0.159700,
		0.443691, -0.488904, -0.751073,
		38.501923, 35.931198, 32.051991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290642, 35.672035, 32.690643>,  <38.191341, 36.273430, 32.577744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290642, 35.672035, 32.690643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595467, 35.735458, 32.439526>,  <38.778362, 35.773514, 32.288857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595467, 35.735458, 32.439526>,  <38.290642, 35.672035, 32.690643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595467, 35.735458, 32.439526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627524, -0.419864, 0.655689,
		-0.159624, -0.893630, -0.419459,
		0.762059, 0.158556, -0.627795,
		38.824085, 35.783024, 32.251186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729259, 35.281116, 33.020081>,  <38.290642, 35.672035, 32.690643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729259, 35.281116, 33.020081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967125, 35.480453, 32.767723>,  <39.109844, 35.600056, 32.616306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967125, 35.480453, 32.767723>,  <38.729259, 35.281116, 33.020081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967125, 35.480453, 32.767723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803430, -0.339426, 0.489173,
		0.029633, -0.797774, -0.602228,
		0.594661, 0.498343, -0.630898,
		39.145523, 35.629955, 32.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306160, 34.964165, 33.022743>,  <38.729259, 35.281116, 33.020081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306160, 34.964165, 33.022743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.454163, 35.279797, 32.826599>,  <39.542965, 35.469173, 32.708912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.454163, 35.279797, 32.826599>,  <39.306160, 34.964165, 33.022743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454163, 35.279797, 32.826599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905398, -0.187983, 0.380679,
		0.208205, -0.584825, -0.783984,
		0.370006, 0.789077, -0.490360,
		39.565163, 35.516521, 32.679489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903736, 34.795456, 32.685680>,  <39.306160, 34.964165, 33.022743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903736, 34.795456, 32.685680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.913502, 35.189907, 32.751350>,  <39.919361, 35.426579, 32.790752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.913502, 35.189907, 32.751350>,  <39.903736, 34.795456, 32.685680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913502, 35.189907, 32.751350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877880, -0.099717, 0.468383,
		0.478258, 0.132694, -0.868137,
		0.024416, 0.986128, 0.164180,
		39.920826, 35.485744, 32.800606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643097, 35.100327, 32.431641>,  <39.903736, 34.795456, 32.685680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643097, 35.100327, 32.431641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498192, 35.402061, 32.650635>,  <40.411251, 35.583103, 32.782032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498192, 35.402061, 32.650635>,  <40.643097, 35.100327, 32.431641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498192, 35.402061, 32.650635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929885, 0.252222, 0.267763,
		0.063895, 0.606102, -0.792816,
		-0.362258, 0.754337, 0.547490,
		40.389515, 35.628361, 32.814880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190235, 35.527927, 32.382923>,  <40.643097, 35.100327, 32.431641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190235, 35.527927, 32.382923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972866, 35.664021, 32.689892>,  <40.842445, 35.745674, 32.874073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972866, 35.664021, 32.689892>,  <41.190235, 35.527927, 32.382923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972866, 35.664021, 32.689892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835453, 0.308388, 0.454879,
		-0.081900, 0.888336, -0.451831,
		-0.543425, 0.340229, 0.767420,
		40.809837, 35.766090, 32.920116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350086, 36.249092, 32.594265>,  <41.190235, 35.527927, 32.382923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350086, 36.249092, 32.594265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200245, 36.122257, 32.942776>,  <41.110340, 36.046154, 33.151882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200245, 36.122257, 32.942776>,  <41.350086, 36.249092, 32.594265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200245, 36.122257, 32.942776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863051, 0.224174, 0.452647,
		-0.338849, 0.921520, 0.189690,
		-0.374600, -0.317091, 0.871280,
		41.087864, 36.027130, 33.204159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599136, 36.680347, 33.138424>,  <41.350086, 36.249092, 32.594265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599136, 36.680347, 33.138424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480427, 36.355759, 33.339790>,  <41.409199, 36.161003, 33.460609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480427, 36.355759, 33.339790>,  <41.599136, 36.680347, 33.138424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480427, 36.355759, 33.339790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691382, 0.181054, 0.699436,
		-0.658721, 0.555631, 0.507307,
		-0.296779, -0.811476, 0.503417,
		41.391392, 36.112316, 33.490814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729801, 36.821301, 33.887619>,  <41.599136, 36.680347, 33.138424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729801, 36.821301, 33.887619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.688080, 36.424042, 33.908703>,  <41.663048, 36.185688, 33.921352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.688080, 36.424042, 33.908703>,  <41.729801, 36.821301, 33.887619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688080, 36.424042, 33.908703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708160, -0.036958, 0.705085,
		-0.698305, 0.110870, 0.707162,
		-0.104308, -0.993148, 0.052706,
		41.656788, 36.126099, 33.924515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673172, 36.622646, 34.637039>,  <41.729801, 36.821301, 33.887619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673172, 36.622646, 34.637039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.788368, 36.299072, 34.432030>,  <41.857487, 36.104927, 34.309025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.788368, 36.299072, 34.432030>,  <41.673172, 36.622646, 34.637039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788368, 36.299072, 34.432030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803061, -0.087557, 0.589430,
		-0.521686, -0.581339, 0.624410,
		0.287987, -0.808937, -0.512528,
		41.874763, 36.056393, 34.278271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863281, 36.201233, 35.140366>,  <41.673172, 36.622646, 34.637039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863281, 36.201233, 35.140366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019665, 36.026329, 34.816402>,  <42.113495, 35.921387, 34.622025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019665, 36.026329, 34.816402>,  <41.863281, 36.201233, 35.140366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019665, 36.026329, 34.816402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807215, -0.259890, 0.529964,
		-0.442221, -0.860964, 0.251360,
		0.390954, -0.437262, -0.809912,
		42.136951, 35.895149, 34.573429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070961, 35.479446, 35.394245>,  <41.863281, 36.201233, 35.140366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070961, 35.479446, 35.394245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282978, 35.594185, 35.075054>,  <42.410191, 35.663029, 34.883537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282978, 35.594185, 35.075054>,  <42.070961, 35.479446, 35.394245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282978, 35.594185, 35.075054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813617, -0.437174, 0.383285,
		-0.238913, -0.852408, -0.465103,
		0.530046, 0.286844, -0.797980,
		42.441990, 35.680237, 34.835659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317677, 34.910034, 35.318752>,  <42.070961, 35.479446, 35.394245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317677, 34.910034, 35.318752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532215, 35.189533, 35.129402>,  <42.660938, 35.357231, 35.015793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532215, 35.189533, 35.129402>,  <42.317677, 34.910034, 35.318752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532215, 35.189533, 35.129402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840369, -0.390180, 0.376217,
		0.078177, -0.599594, -0.796477,
		0.536347, 0.698746, -0.473377,
		42.693119, 35.399158, 34.987389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918610, 34.612061, 35.008633>,  <42.317677, 34.910034, 35.318752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918610, 34.612061, 35.008633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.033054, 34.993259, 35.048492>,  <43.101719, 35.221981, 35.072407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.033054, 34.993259, 35.048492>,  <42.918610, 34.612061, 35.008633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033054, 34.993259, 35.048492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812534, -0.296421, 0.501919,
		0.507868, -0.062633, -0.859155,
		0.286108, 0.953001, 0.099651,
		43.118885, 35.279160, 35.078388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571213, 34.446327, 35.267391>,  <42.918610, 34.612061, 35.008633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571213, 34.446327, 35.267391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547535, 34.844063, 35.302685>,  <43.533329, 35.082703, 35.323860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547535, 34.844063, 35.302685>,  <43.571213, 34.446327, 35.267391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547535, 34.844063, 35.302685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901041, 0.015180, 0.433468,
		0.429675, 0.105160, -0.896839,
		-0.059197, 0.994340, 0.088231,
		43.529778, 35.142365, 35.329155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105564, 34.755306, 34.800842>,  <43.571213, 34.446327, 35.267391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105564, 34.755306, 34.800842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030991, 34.987377, 35.117989>,  <43.986248, 35.126621, 35.308277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030991, 34.987377, 35.117989>,  <44.105564, 34.755306, 34.800842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030991, 34.987377, 35.117989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970830, -0.015058, 0.239295,
		0.150772, 0.814351, -0.560446,
		-0.186430, 0.580177, 0.792867,
		43.975063, 35.161430, 35.355850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676636, 35.249454, 34.887260>,  <44.105564, 34.755306, 34.800842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676636, 35.249454, 34.887260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474815, 35.203175, 35.229496>,  <44.353722, 35.175407, 35.434837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474815, 35.203175, 35.229496>,  <44.676636, 35.249454, 34.887260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474815, 35.203175, 35.229496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856560, -0.191379, 0.479248,
		0.108296, 0.974674, 0.195662,
		-0.504556, -0.115695, 0.855592,
		44.323448, 35.168465, 35.486176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026989, 35.908939, 35.272060>,  <44.676636, 35.249454, 34.887260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026989, 35.908939, 35.272060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356339, 35.893730, 35.045570>,  <45.553947, 35.884605, 34.909676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356339, 35.893730, 35.045570>,  <45.026989, 35.908939, 35.272060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356339, 35.893730, 35.045570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366297, 0.726476, -0.581429,
		0.433453, 0.686140, 0.584235,
		0.823374, -0.038018, -0.566224,
		45.603352, 35.882324, 34.875702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217587, 36.602829, 35.110497>,  <45.026989, 35.908939, 35.272060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217587, 36.602829, 35.110497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339169, 36.345505, 34.829422>,  <45.412117, 36.191113, 34.660778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339169, 36.345505, 34.829422>,  <45.217587, 36.602829, 35.110497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339169, 36.345505, 34.829422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317348, 0.627088, -0.711373,
		0.898276, 0.439223, -0.013544,
		0.303958, -0.643307, -0.702684,
		45.430355, 36.152512, 34.618618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700287, 36.961071, 34.771137>,  <45.217587, 36.602829, 35.110497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700287, 36.961071, 34.771137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550579, 36.671108, 34.539818>,  <45.460754, 36.497131, 34.401028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550579, 36.671108, 34.539818>,  <45.700287, 36.961071, 34.771137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550579, 36.671108, 34.539818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400528, 0.688823, -0.604235,
		0.836359, 0.005475, -0.548154,
		-0.374273, -0.724909, -0.578296,
		45.438297, 36.453636, 34.366329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797428, 37.214046, 34.091461>,  <45.700287, 36.961071, 34.771137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797428, 37.214046, 34.091461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541283, 36.908375, 34.060551>,  <45.387596, 36.724972, 34.042004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.541283, 36.908375, 34.060551>,  <45.797428, 37.214046, 34.091461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541283, 36.908375, 34.060551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606130, 0.564576, -0.560232,
		0.471742, -0.311915, -0.824724,
		-0.640364, -0.764174, -0.077273,
		45.349174, 36.679123, 34.037369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652809, 37.109463, 33.317017>,  <45.797428, 37.214046, 34.091461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652809, 37.109463, 33.317017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.367943, 36.975910, 33.564030>,  <45.197021, 36.895779, 33.712238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.367943, 36.975910, 33.564030>,  <45.652809, 37.109463, 33.317017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367943, 36.975910, 33.564030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695475, 0.455325, -0.555872,
		-0.095579, -0.825349, -0.556475,
		-0.712165, -0.333884, 0.617529,
		45.154293, 36.875744, 33.749287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135296, 36.837322, 32.844429>,  <45.652809, 37.109463, 33.317017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135296, 36.837322, 32.844429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.953209, 36.897770, 33.195412>,  <44.843956, 36.934040, 33.406002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.953209, 36.897770, 33.195412>,  <45.135296, 36.837322, 32.844429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953209, 36.897770, 33.195412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829842, 0.285164, -0.479629,
		-0.322703, -0.946490, -0.004404,
		-0.455220, 0.151123, 0.877460,
		44.816643, 36.943108, 33.458649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440983, 36.602566, 32.742699>,  <45.135296, 36.837322, 32.844429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440983, 36.602566, 32.742699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374477, 36.825684, 33.067963>,  <44.334572, 36.959553, 33.263119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374477, 36.825684, 33.067963>,  <44.440983, 36.602566, 32.742699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374477, 36.825684, 33.067963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782524, 0.427137, -0.453000,
		-0.600009, -0.711635, 0.365465,
		-0.166267, 0.557790, 0.813158,
		44.324596, 36.993019, 33.311909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714344, 36.750038, 32.684273>,  <44.440983, 36.602566, 32.742699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714344, 36.750038, 32.684273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828384, 37.010315, 32.965790>,  <43.896809, 37.166481, 33.134701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828384, 37.010315, 32.965790>,  <43.714344, 36.750038, 32.684273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828384, 37.010315, 32.965790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716166, 0.632622, -0.294782,
		-0.637045, -0.419989, 0.646361,
		0.285098, 0.650691, 0.703790,
		43.913914, 37.205521, 33.176926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092403, 36.918724, 33.040184>,  <43.714344, 36.750038, 32.684273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092403, 36.918724, 33.040184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366028, 37.199841, 33.118309>,  <43.530201, 37.368511, 33.165184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366028, 37.199841, 33.118309>,  <43.092403, 36.918724, 33.040184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366028, 37.199841, 33.118309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629917, 0.704173, -0.327634,
		-0.367793, 0.101091, 0.924397,
		0.684056, 0.702795, 0.195311,
		43.571243, 37.410679, 33.176903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722168, 37.355579, 33.433605>,  <43.092403, 36.918724, 33.040184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722168, 37.355579, 33.433605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023052, 37.541096, 33.246387>,  <43.203583, 37.652405, 33.134056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023052, 37.541096, 33.246387>,  <42.722168, 37.355579, 33.433605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023052, 37.541096, 33.246387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636944, 0.693717, -0.336242,
		0.168746, 0.551047, 0.817235,
		0.752215, 0.463793, -0.468048,
		43.248718, 37.680233, 33.105972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621258, 38.023869, 33.537224>,  <42.722168, 37.355579, 33.433605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621258, 38.023869, 33.537224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853935, 38.009354, 33.212185>,  <42.993542, 38.000645, 33.017162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853935, 38.009354, 33.212185>,  <42.621258, 38.023869, 33.537224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853935, 38.009354, 33.212185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595963, 0.660889, -0.456130,
		0.553586, 0.749606, 0.362812,
		0.581696, -0.036284, -0.812596,
		43.028442, 37.998466, 32.968407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580505, 38.728359, 33.195190>,  <42.621258, 38.023869, 33.537224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580505, 38.728359, 33.195190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728703, 38.458752, 32.939556>,  <42.817623, 38.296986, 32.786175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728703, 38.458752, 32.939556>,  <42.580505, 38.728359, 33.195190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728703, 38.458752, 32.939556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455369, 0.467883, -0.757446,
		0.809551, 0.571651, -0.133579,
		0.370495, -0.674018, -0.639087,
		42.839851, 38.256546, 32.747829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533314, 39.117771, 32.577473>,  <42.580505, 38.728359, 33.195190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533314, 39.117771, 32.577473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623508, 38.774826, 32.392395>,  <42.677624, 38.569057, 32.281349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623508, 38.774826, 32.392395>,  <42.533314, 39.117771, 32.577473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623508, 38.774826, 32.392395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503483, 0.304040, -0.808742,
		0.834063, 0.415320, -0.363110,
		0.225487, -0.857362, -0.462695,
		42.691154, 38.517616, 32.253586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642109, 39.315361, 31.933891>,  <42.533314, 39.117771, 32.577473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642109, 39.315361, 31.933891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553635, 38.925354, 31.925766>,  <42.500549, 38.691349, 31.920891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553635, 38.925354, 31.925766>,  <42.642109, 39.315361, 31.933891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553635, 38.925354, 31.925766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643279, 0.161524, -0.748400,
		0.732986, -0.152470, -0.662936,
		-0.221188, -0.975020, -0.020314,
		42.487278, 38.632847, 31.919672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683270, 39.181622, 31.253757>,  <42.642109, 39.315361, 31.933891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683270, 39.181622, 31.253757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453106, 38.900574, 31.421204>,  <42.315010, 38.731945, 31.521671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453106, 38.900574, 31.421204>,  <42.683270, 39.181622, 31.253757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453106, 38.900574, 31.421204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629112, 0.053174, -0.775494,
		0.522615, -0.709580, -0.472621,
		-0.575406, -0.702616, 0.418615,
		42.280483, 38.689789, 31.546787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402660, 38.827385, 30.744602>,  <42.683270, 39.181622, 31.253757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402660, 38.827385, 30.744602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163177, 38.647835, 31.009951>,  <42.019485, 38.540104, 31.169159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163177, 38.647835, 31.009951>,  <42.402660, 38.827385, 30.744602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163177, 38.647835, 31.009951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708811, -0.088770, -0.699790,
		0.373004, -0.889175, -0.265018,
		-0.598711, -0.448873, 0.663369,
		41.983562, 38.513172, 31.208961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174732, 38.141373, 30.453344>,  <42.402660, 38.827385, 30.744602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174732, 38.141373, 30.453344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.896931, 38.268124, 30.711727>,  <41.730251, 38.344173, 30.866756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.896931, 38.268124, 30.711727>,  <42.174732, 38.141373, 30.453344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896931, 38.268124, 30.711727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719350, -0.323630, -0.614654,
		0.014284, -0.891546, 0.452704,
		-0.694501, 0.316873, 0.645956,
		41.688580, 38.363186, 30.905514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647617, 37.615730, 30.497663>,  <42.174732, 38.141373, 30.453344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647617, 37.615730, 30.497663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481503, 37.959507, 30.616920>,  <41.381832, 38.165775, 30.688475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481503, 37.959507, 30.616920>,  <41.647617, 37.615730, 30.497663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481503, 37.959507, 30.616920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797609, -0.186411, -0.573647,
		-0.437441, -0.476032, 0.762915,
		-0.415290, 0.859444, 0.298143,
		41.356915, 38.217339, 30.706364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992386, 37.481068, 30.400175>,  <41.647617, 37.615730, 30.497663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992386, 37.481068, 30.400175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990318, 37.876823, 30.458248>,  <40.989079, 38.114277, 30.493092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990318, 37.876823, 30.458248>,  <40.992386, 37.481068, 30.400175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990318, 37.876823, 30.458248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850210, 0.072079, -0.521486,
		-0.526418, -0.126130, 0.840818,
		-0.005170, 0.989392, 0.145181,
		40.988766, 38.173641, 30.501802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277245, 37.589520, 30.558960>,  <40.992386, 37.481068, 30.400175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277245, 37.589520, 30.558960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463558, 37.927383, 30.453432>,  <40.575348, 38.130100, 30.390116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463558, 37.927383, 30.453432>,  <40.277245, 37.589520, 30.558960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463558, 37.927383, 30.453432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707842, 0.176727, -0.683906,
		-0.531041, 0.505297, 0.680199,
		0.465785, 0.844655, -0.263821,
		40.603294, 38.180779, 30.374287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.698521, 36.382393, 45.407459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402477, 36.212608, 45.198814>,  <39.224854, 36.110737, 45.073627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402477, 36.212608, 45.198814>,  <39.698521, 36.382393, 45.407459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402477, 36.212608, 45.198814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477134, 0.215158, -0.852086,
		0.473905, -0.879512, 0.043285,
		-0.740106, -0.424461, -0.521609,
		39.180447, 36.085270, 45.042332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026741, 35.927505, 44.850620>,  <39.698521, 36.382393, 45.407459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026741, 35.927505, 44.850620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654255, 35.982563, 44.715633>,  <39.430763, 36.015598, 44.634640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654255, 35.982563, 44.715633>,  <40.026741, 35.927505, 44.850620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654255, 35.982563, 44.715633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358592, 0.180552, -0.915867,
		-0.065130, -0.973887, -0.217491,
		-0.931219, 0.137641, -0.337469,
		39.374889, 36.023853, 44.614391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116161, 35.766693, 44.198654>,  <40.026741, 35.927505, 44.850620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116161, 35.766693, 44.198654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748131, 35.923359, 44.201553>,  <39.527313, 36.017361, 44.203293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748131, 35.923359, 44.201553>,  <40.116161, 35.766693, 44.198654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748131, 35.923359, 44.201553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020270, -0.029115, -0.999371,
		-0.391212, -0.919645, 0.034727,
		-0.920077, 0.391669, 0.007251,
		39.472107, 36.040859, 44.203728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584866, 35.394897, 43.740780>,  <40.116161, 35.766693, 44.198654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584866, 35.394897, 43.740780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500286, 35.784264, 43.775982>,  <39.449539, 36.017883, 43.797104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500286, 35.784264, 43.775982>,  <39.584866, 35.394897, 43.740780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500286, 35.784264, 43.775982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121269, 0.063221, -0.990604,
		-0.969837, -0.220134, 0.104678,
		-0.211448, 0.973419, 0.088010,
		39.436852, 36.076290, 43.802383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145168, 35.479336, 43.280582>,  <39.584866, 35.394897, 43.740780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145168, 35.479336, 43.280582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260590, 35.857376, 43.341923>,  <39.329842, 36.084202, 43.378727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260590, 35.857376, 43.341923>,  <39.145168, 35.479336, 43.280582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260590, 35.857376, 43.341923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035526, 0.170619, -0.984696,
		-0.956806, 0.278685, 0.082808,
		0.288549, 0.945105, 0.153349,
		39.347153, 36.140907, 43.387928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754570, 35.894279, 42.891926>,  <39.145168, 35.479336, 43.280582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754570, 35.894279, 42.891926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083889, 36.111515, 42.957935>,  <39.281483, 36.241856, 42.997543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083889, 36.111515, 42.957935>,  <38.754570, 35.894279, 42.891926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083889, 36.111515, 42.957935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040025, 0.234472, -0.971299,
		-0.566192, 0.806276, 0.171304,
		0.823301, 0.543085, 0.165027,
		39.330879, 36.274441, 43.007442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632710, 36.557804, 42.539124>,  <38.754570, 35.894279, 42.891926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632710, 36.557804, 42.539124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031219, 36.546566, 42.571716>,  <39.270325, 36.539822, 42.591270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031219, 36.546566, 42.571716>,  <38.632710, 36.557804, 42.539124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031219, 36.546566, 42.571716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085045, 0.166824, -0.982312,
		0.014005, 0.985586, 0.168593,
		0.996279, -0.028095, 0.081483,
		39.330105, 36.538139, 42.596161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901524, 37.056557, 42.103783>,  <38.632710, 36.557804, 42.539124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901524, 37.056557, 42.103783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235764, 36.848995, 42.175903>,  <39.436310, 36.724461, 42.219177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235764, 36.848995, 42.175903>,  <38.901524, 37.056557, 42.103783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235764, 36.848995, 42.175903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251565, 0.069684, -0.965329,
		0.488345, 0.851990, 0.188765,
		0.835604, -0.518900, 0.180301,
		39.486446, 36.693325, 42.229992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451141, 37.412785, 41.824680>,  <38.901524, 37.056557, 42.103783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451141, 37.412785, 41.824680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549625, 37.026184, 41.853695>,  <39.608715, 36.794224, 41.871105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549625, 37.026184, 41.853695>,  <39.451141, 37.412785, 41.824680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549625, 37.026184, 41.853695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278526, -0.001127, -0.960428,
		0.928333, 0.256674, 0.268917,
		0.246214, -0.966497, 0.072537,
		39.623489, 36.736237, 41.875458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015419, 37.302948, 41.426979>,  <39.451141, 37.412785, 41.824680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015419, 37.302948, 41.426979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860588, 36.934841, 41.449902>,  <39.767689, 36.713978, 41.463654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860588, 36.934841, 41.449902>,  <40.015419, 37.302948, 41.426979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860588, 36.934841, 41.449902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262299, -0.169480, -0.949987,
		0.883952, -0.352687, 0.306987,
		-0.387076, -0.920266, 0.057303,
		39.744465, 36.658760, 41.467091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539494, 36.812817, 41.283867>,  <40.015419, 37.302948, 41.426979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539494, 36.812817, 41.283867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206345, 36.606903, 41.202560>,  <40.006454, 36.483353, 41.153778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206345, 36.606903, 41.202560>,  <40.539494, 36.812817, 41.283867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206345, 36.606903, 41.202560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336085, -0.178620, -0.924739,
		0.439737, -0.838504, 0.321780,
		-0.832873, -0.514787, -0.203263,
		39.956482, 36.452469, 41.141582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724987, 36.288452, 40.781002>,  <40.539494, 36.812817, 41.283867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724987, 36.288452, 40.781002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325546, 36.304203, 40.766918>,  <40.085880, 36.313652, 40.758469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325546, 36.304203, 40.766918>,  <40.724987, 36.288452, 40.781002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325546, 36.304203, 40.766918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032136, -0.076043, -0.996587,
		-0.041909, -0.996327, 0.074672,
		-0.998604, 0.039367, -0.035205,
		40.025967, 36.316013, 40.756355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496876, 35.859844, 40.239254>,  <40.724987, 36.288452, 40.781002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496876, 35.859844, 40.239254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207615, 36.127197, 40.308895>,  <40.034058, 36.287609, 40.350681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207615, 36.127197, 40.308895>,  <40.496876, 35.859844, 40.239254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207615, 36.127197, 40.308895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082822, 0.166340, -0.982584,
		-0.685703, -0.724980, -0.064932,
		-0.723154, 0.668383, 0.174104,
		39.990669, 36.327713, 40.361126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926212, 35.811184, 39.707333>,  <40.496876, 35.859844, 40.239254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926212, 35.811184, 39.707333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966515, 36.180042, 39.856728>,  <39.990696, 36.401360, 39.946365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966515, 36.180042, 39.856728>,  <39.926212, 35.811184, 39.707333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966515, 36.180042, 39.856728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245309, 0.340781, -0.907574,
		-0.964195, 0.183060, -0.191876,
		0.100753, 0.922148, 0.373486,
		39.996738, 36.456688, 39.968773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919506, 35.542229, 39.060802>,  <39.926212, 35.811184, 39.707333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919506, 35.542229, 39.060802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982498, 35.170902, 38.926090>,  <40.020294, 34.948105, 38.845261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982498, 35.170902, 38.926090>,  <39.919506, 35.542229, 39.060802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982498, 35.170902, 38.926090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209461, -0.364679, 0.907268,
		-0.965052, -0.072335, -0.251877,
		0.157481, -0.928319, -0.336783,
		40.029743, 34.892406, 38.825054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341640, 35.106430, 39.292213>,  <39.919506, 35.542229, 39.060802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341640, 35.106430, 39.292213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615307, 34.826313, 39.210720>,  <39.779507, 34.658241, 39.161823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615307, 34.826313, 39.210720>,  <39.341640, 35.106430, 39.292213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615307, 34.826313, 39.210720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139887, -0.400159, 0.905707,
		-0.715786, -0.591154, -0.371737,
		0.684166, -0.700293, -0.203733,
		39.820557, 34.616226, 39.149601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012882, 34.593040, 39.439251>,  <39.341640, 35.106430, 39.292213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012882, 34.593040, 39.439251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383698, 34.445320, 39.413288>,  <39.606186, 34.356689, 39.397709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383698, 34.445320, 39.413288>,  <39.012882, 34.593040, 39.439251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383698, 34.445320, 39.413288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169958, -0.568160, 0.805176,
		-0.334230, -0.735399, -0.589473,
		0.927041, -0.369299, -0.064909,
		39.661808, 34.334530, 39.393814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875591, 33.928501, 39.417709>,  <39.012882, 34.593040, 39.439251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875591, 33.928501, 39.417709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235355, 33.994514, 39.579613>,  <39.451214, 34.034122, 39.676754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235355, 33.994514, 39.579613>,  <38.875591, 33.928501, 39.417709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235355, 33.994514, 39.579613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247309, -0.571401, 0.782521,
		0.360423, -0.803906, -0.473108,
		0.899407, 0.165035, 0.404759,
		39.505177, 34.044025, 39.701042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907654, 33.437229, 39.811314>,  <38.875591, 33.928501, 39.417709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907654, 33.437229, 39.811314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242653, 33.613674, 39.940327>,  <39.443653, 33.719540, 40.017735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242653, 33.613674, 39.940327>,  <38.907654, 33.437229, 39.811314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242653, 33.613674, 39.940327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057475, -0.515851, 0.854748,
		0.543417, -0.734383, -0.406668,
		0.837493, 0.441111, 0.322531,
		39.493900, 33.746006, 40.037086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296967, 32.861191, 40.235535>,  <38.907654, 33.437229, 39.811314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296967, 32.861191, 40.235535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427799, 33.207516, 40.386997>,  <39.506298, 33.415310, 40.477875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427799, 33.207516, 40.386997>,  <39.296967, 32.861191, 40.235535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427799, 33.207516, 40.386997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275985, -0.295712, 0.914542,
		0.903797, -0.403636, 0.142229,
		0.327084, 0.865813, 0.378661,
		39.525925, 33.467258, 40.500595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567108, 32.641212, 40.881866>,  <39.296967, 32.861191, 40.235535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567108, 32.641212, 40.881866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512085, 33.036861, 40.902687>,  <39.479069, 33.274250, 40.915180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512085, 33.036861, 40.902687>,  <39.567108, 32.641212, 40.881866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512085, 33.036861, 40.902687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329139, -0.095211, 0.939469,
		0.934208, 0.112105, 0.338657,
		-0.137563, 0.989125, 0.052049,
		39.470818, 33.333599, 40.918301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872265, 32.851143, 41.496616>,  <39.567108, 32.641212, 40.881866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872265, 32.851143, 41.496616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623249, 33.145123, 41.389061>,  <39.473839, 33.321510, 41.324528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623249, 33.145123, 41.389061>,  <39.872265, 32.851143, 41.496616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623249, 33.145123, 41.389061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425676, -0.029686, 0.904388,
		0.656694, 0.677476, 0.331329,
		-0.622537, 0.734945, -0.268891,
		39.436489, 33.365604, 41.308395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977871, 33.382233, 41.999573>,  <39.872265, 32.851143, 41.496616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977871, 33.382233, 41.999573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615910, 33.400871, 41.830353>,  <39.398731, 33.412056, 41.728821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615910, 33.400871, 41.830353>,  <39.977871, 33.382233, 41.999573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615910, 33.400871, 41.830353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424582, -0.029855, 0.904897,
		0.029534, 0.998468, 0.046800,
		-0.904907, 0.046596, -0.423050,
		39.344437, 33.414848, 41.703438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590179, 33.873337, 42.376949>,  <39.977871, 33.382233, 41.999573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590179, 33.873337, 42.376949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302807, 33.652664, 42.207481>,  <39.130383, 33.520260, 42.105801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302807, 33.652664, 42.207481>,  <39.590179, 33.873337, 42.376949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302807, 33.652664, 42.207481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440871, -0.109981, 0.890807,
		-0.538039, 0.826771, -0.164207,
		-0.718434, -0.551683, -0.423674,
		39.087276, 33.487160, 42.080379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978065, 34.124672, 42.567577>,  <39.590179, 33.873337, 42.376949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978065, 34.124672, 42.567577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907742, 33.749920, 42.446678>,  <38.865547, 33.525070, 42.374138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907742, 33.749920, 42.446678>,  <38.978065, 34.124672, 42.567577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907742, 33.749920, 42.446678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217689, -0.262433, 0.940075,
		-0.960054, 0.231068, -0.157810,
		-0.175806, -0.936876, -0.302251,
		38.855000, 33.468857, 42.356003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354198, 33.953522, 42.929459>,  <38.978065, 34.124672, 42.567577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354198, 33.953522, 42.929459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479851, 33.604744, 42.779240>,  <38.555241, 33.395477, 42.689110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479851, 33.604744, 42.779240>,  <38.354198, 33.953522, 42.929459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479851, 33.604744, 42.779240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221716, -0.452007, 0.864021,
		-0.923128, -0.188149, -0.335312,
		0.314128, -0.871946, -0.375544,
		38.574089, 33.343159, 42.666576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786499, 33.537880, 42.947311>,  <38.354198, 33.953522, 42.929459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786499, 33.537880, 42.947311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102982, 33.293339, 42.941032>,  <38.292870, 33.146614, 42.937263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102982, 33.293339, 42.941032>,  <37.786499, 33.537880, 42.947311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102982, 33.293339, 42.941032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341862, -0.463429, 0.817535,
		-0.507083, -0.641464, -0.575665,
		0.791199, -0.611357, -0.015704,
		38.340343, 33.109932, 42.936321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456879, 32.957294, 43.141846>,  <37.786499, 33.537880, 42.947311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456879, 32.957294, 43.141846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842758, 32.881065, 43.214550>,  <38.074287, 32.835327, 43.258171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842758, 32.881065, 43.214550>,  <37.456879, 32.957294, 43.141846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842758, 32.881065, 43.214550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251073, -0.457223, 0.853176,
		-0.079487, -0.868694, -0.488931,
		0.964699, -0.190574, 0.181762,
		38.132168, 32.823895, 43.269077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050861, 32.446503, 42.784569>,  <37.456879, 32.957294, 43.141846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050861, 32.446503, 42.784569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672913, 32.440880, 42.915428>,  <36.446144, 32.437508, 42.993942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672913, 32.440880, 42.915428>,  <37.050861, 32.446503, 42.784569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672913, 32.440880, 42.915428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270418, 0.596886, -0.755381,
		-0.184650, -0.802203, -0.567781,
		-0.944869, -0.014057, 0.327145,
		36.389450, 32.436665, 43.013573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654373, 32.317165, 42.270947>,  <37.050861, 32.446503, 42.784569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654373, 32.317165, 42.270947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353020, 32.456139, 42.494270>,  <36.172207, 32.539520, 42.628265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353020, 32.456139, 42.494270>,  <36.654373, 32.317165, 42.270947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353020, 32.456139, 42.494270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429479, 0.382971, -0.817852,
		-0.497963, -0.855935, -0.139309,
		-0.753379, 0.347430, 0.558311,
		36.127007, 32.560368, 42.661762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113010, 31.978874, 41.970421>,  <36.654373, 32.317165, 42.270947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113010, 31.978874, 41.970421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942108, 32.280689, 42.169670>,  <35.839569, 32.461777, 42.289219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942108, 32.280689, 42.169670>,  <36.113010, 31.978874, 41.970421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942108, 32.280689, 42.169670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564910, 0.207383, -0.798667,
		-0.705927, -0.622628, 0.337641,
		-0.427251, 0.754538, 0.498126,
		35.813934, 32.507050, 42.319107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361374, 31.900242, 41.882236>,  <36.113010, 31.978874, 41.970421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361374, 31.900242, 41.882236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408669, 32.281746, 41.992775>,  <35.437046, 32.510647, 42.059097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408669, 32.281746, 41.992775>,  <35.361374, 31.900242, 41.882236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408669, 32.281746, 41.992775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615693, 0.288757, -0.733173,
		-0.779066, -0.083456, 0.621363,
		0.118235, 0.953758, 0.276344,
		35.444138, 32.567875, 42.075680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672955, 32.172882, 41.981640>,  <35.361374, 31.900242, 41.882236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672955, 32.172882, 41.981640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943810, 32.446495, 41.873135>,  <35.106323, 32.610664, 41.808029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943810, 32.446495, 41.873135>,  <34.672955, 32.172882, 41.981640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943810, 32.446495, 41.873135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510612, 0.171328, -0.842569,
		-0.529868, 0.709047, 0.465287,
		0.677138, 0.684031, -0.271266,
		35.146950, 32.651703, 41.791756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300449, 32.587845, 41.482620>,  <34.672955, 32.172882, 41.981640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300449, 32.587845, 41.482620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668839, 32.737938, 41.440655>,  <34.889874, 32.827991, 41.415478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668839, 32.737938, 41.440655>,  <34.300449, 32.587845, 41.482620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668839, 32.737938, 41.440655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228011, 0.300718, -0.926056,
		-0.315936, 0.876795, 0.362511,
		0.920975, 0.375231, -0.104911,
		34.945129, 32.850506, 41.409180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278622, 33.264740, 41.166824>,  <34.300449, 32.587845, 41.482620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278622, 33.264740, 41.166824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641861, 33.130733, 41.066322>,  <34.859802, 33.050331, 41.006023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641861, 33.130733, 41.066322>,  <34.278622, 33.264740, 41.166824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641861, 33.130733, 41.066322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148551, 0.303256, -0.941259,
		0.391528, 0.892077, 0.225619,
		0.908096, -0.335013, -0.251253,
		34.914291, 33.030231, 40.990948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579227, 33.741974, 40.914013>,  <34.278622, 33.264740, 41.166824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579227, 33.741974, 40.914013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798420, 33.445999, 40.757957>,  <34.929935, 33.268414, 40.664322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798420, 33.445999, 40.757957>,  <34.579227, 33.741974, 40.914013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798420, 33.445999, 40.757957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127736, 0.386913, -0.913226,
		0.826682, 0.550263, 0.117503,
		0.547978, -0.739938, -0.390143,
		34.962814, 33.224018, 40.640915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947056, 34.049881, 40.437988>,  <34.579227, 33.741974, 40.914013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947056, 34.049881, 40.437988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946827, 33.670799, 40.310329>,  <34.946690, 33.443352, 40.233734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946827, 33.670799, 40.310329>,  <34.947056, 34.049881, 40.437988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946827, 33.670799, 40.310329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021555, 0.319084, -0.947481,
		0.999768, 0.006341, -0.020609,
		-0.000568, -0.947706, -0.319146,
		34.946655, 33.386486, 40.214584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333584, 34.023132, 39.834255>,  <34.947056, 34.049881, 40.437988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333584, 34.023132, 39.834255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170555, 33.658043, 39.822807>,  <35.072739, 33.438988, 39.815941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170555, 33.658043, 39.822807>,  <35.333584, 34.023132, 39.834255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170555, 33.658043, 39.822807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168861, 0.106125, -0.979910,
		0.897426, -0.394549, -0.197377,
		-0.407569, -0.912726, -0.028616,
		35.048283, 33.384224, 39.814224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637077, 33.674595, 39.266396>,  <35.333584, 34.023132, 39.834255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637077, 33.674595, 39.266396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279140, 33.506855, 39.327591>,  <35.064377, 33.406212, 39.364307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279140, 33.506855, 39.327591>,  <35.637077, 33.674595, 39.266396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279140, 33.506855, 39.327591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176117, 0.016746, -0.984227,
		0.410175, -0.907670, -0.088840,
		-0.894841, -0.419351, 0.152987,
		35.010689, 33.381050, 39.373486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633045, 33.135098, 38.712280>,  <35.637077, 33.674595, 39.266396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633045, 33.135098, 38.712280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247646, 33.195801, 38.800495>,  <35.016407, 33.232224, 38.853424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247646, 33.195801, 38.800495>,  <35.633045, 33.135098, 38.712280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247646, 33.195801, 38.800495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190334, 0.190984, -0.962963,
		-0.188260, -0.969790, -0.155128,
		-0.963500, 0.151762, 0.220539,
		34.958595, 33.241329, 38.866657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.595669, 29.917192, 45.910530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291874, 30.155048, 46.016045>,  <36.109596, 30.297762, 46.079353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291874, 30.155048, 46.016045>,  <36.595669, 29.917192, 45.910530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291874, 30.155048, 46.016045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060054, 0.339683, -0.938621,
		-0.647746, -0.728711, -0.222274,
		-0.759486, 0.594639, 0.263790,
		36.064030, 30.333441, 46.095181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142620, 29.887909, 45.309837>,  <36.595669, 29.917192, 45.910530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142620, 29.887909, 45.309837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.987019, 30.197989, 45.508930>,  <35.893658, 30.384035, 45.628387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.987019, 30.197989, 45.508930>,  <36.142620, 29.887909, 45.309837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987019, 30.197989, 45.508930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108214, 0.575004, -0.810963,
		-0.914857, -0.261608, -0.307567,
		-0.389007, 0.775198, 0.497737,
		35.870316, 30.430548, 45.658253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556976, 30.100632, 44.953091>,  <36.142620, 29.887909, 45.309837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556976, 30.100632, 44.953091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653988, 30.418837, 45.175205>,  <35.712196, 30.609760, 45.308472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653988, 30.418837, 45.175205>,  <35.556976, 30.100632, 44.953091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653988, 30.418837, 45.175205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085947, 0.587741, -0.804471,
		-0.966329, 0.147386, 0.210918,
		0.242533, 0.795512, 0.555283,
		35.726749, 30.657490, 45.341789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131363, 30.562252, 44.656349>,  <35.556976, 30.100632, 44.953091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131363, 30.562252, 44.656349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416237, 30.774296, 44.840424>,  <35.587162, 30.901522, 44.950867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416237, 30.774296, 44.840424>,  <35.131363, 30.562252, 44.656349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416237, 30.774296, 44.840424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068995, 0.599515, -0.797385,
		-0.698588, 0.599640, 0.390393,
		0.712190, 0.530108, 0.460186,
		35.629894, 30.933329, 44.978477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891979, 31.215990, 44.695953>,  <35.131363, 30.562252, 44.656349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891979, 31.215990, 44.695953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288830, 31.259928, 44.719994>,  <35.526939, 31.286291, 44.734417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288830, 31.259928, 44.719994>,  <34.891979, 31.215990, 44.695953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288830, 31.259928, 44.719994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045339, 0.762577, -0.645306,
		-0.116714, 0.637503, 0.761556,
		0.992130, 0.109844, 0.060100,
		35.586468, 31.292881, 44.738022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015862, 31.988487, 44.756233>,  <34.891979, 31.215990, 44.695953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015862, 31.988487, 44.756233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363686, 31.819897, 44.653301>,  <35.572380, 31.718742, 44.591541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.363686, 31.819897, 44.653301>,  <35.015862, 31.988487, 44.756233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363686, 31.819897, 44.653301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158586, 0.731836, -0.662772,
		0.467662, 0.535514, 0.703219,
		0.869565, -0.421474, -0.257327,
		35.624554, 31.693455, 44.576103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619839, 32.483009, 44.714622>,  <35.015862, 31.988487, 44.756233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619839, 32.483009, 44.714622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.745567, 32.179951, 44.485825>,  <35.821007, 31.998116, 44.348545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.745567, 32.179951, 44.485825>,  <35.619839, 32.483009, 44.714622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745567, 32.179951, 44.485825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342057, 0.652449, -0.676244,
		0.885549, 0.016906, 0.464238,
		0.314324, -0.757643, -0.571994,
		35.839863, 31.952658, 44.314228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249889, 32.727695, 44.475731>,  <35.619839, 32.483009, 44.714622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249889, 32.727695, 44.475731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176914, 32.420769, 44.229824>,  <36.133129, 32.236614, 44.082279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176914, 32.420769, 44.229824>,  <36.249889, 32.727695, 44.475731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176914, 32.420769, 44.229824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359355, 0.529967, -0.768114,
		0.915194, -0.361053, 0.179053,
		-0.182438, -0.767317, -0.614769,
		36.122181, 32.190575, 44.045395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946507, 32.504143, 44.181652>,  <36.249889, 32.727695, 44.475731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946507, 32.504143, 44.181652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622395, 32.427937, 43.959969>,  <36.427925, 32.382214, 43.826958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622395, 32.427937, 43.959969>,  <36.946507, 32.504143, 44.181652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622395, 32.427937, 43.959969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305137, 0.670224, -0.676529,
		0.500331, -0.717289, -0.484939,
		-0.810284, -0.190516, -0.554205,
		36.379311, 32.370781, 43.793709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442715, 32.305729, 43.569695>,  <36.946507, 32.504143, 44.181652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442715, 32.305729, 43.569695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801407, 32.462826, 43.651306>,  <38.016621, 32.557083, 43.700275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801407, 32.462826, 43.651306>,  <37.442715, 32.305729, 43.569695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801407, 32.462826, 43.651306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096293, -0.276832, 0.956082,
		0.431974, -0.876995, -0.210426,
		0.896731, 0.392739, 0.204032,
		38.070427, 32.580647, 43.712517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975922, 31.774462, 43.893719>,  <37.442715, 32.305729, 43.569695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975922, 31.774462, 43.893719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031025, 32.147579, 44.026936>,  <38.064087, 32.371449, 44.106865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031025, 32.147579, 44.026936>,  <37.975922, 31.774462, 43.893719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031025, 32.147579, 44.026936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035559, -0.331372, 0.942830,
		0.989827, -0.141728, -0.012481,
		0.137762, 0.932794, 0.333040,
		38.072353, 32.427418, 44.126846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500198, 31.617023, 44.348843>,  <37.975922, 31.774462, 43.893719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500198, 31.617023, 44.348843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446629, 32.010574, 44.396259>,  <38.414486, 32.246704, 44.424709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446629, 32.010574, 44.396259>,  <38.500198, 31.617023, 44.348843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446629, 32.010574, 44.396259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208912, -0.088896, 0.973885,
		0.968721, 0.155192, -0.193639,
		-0.133925, 0.983876, 0.118537,
		38.406452, 32.305737, 44.431820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066311, 31.868031, 44.776966>,  <38.500198, 31.617023, 44.348843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066311, 31.868031, 44.776966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770176, 32.136047, 44.798664>,  <38.592495, 32.296856, 44.811684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770176, 32.136047, 44.798664>,  <39.066311, 31.868031, 44.776966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770176, 32.136047, 44.798664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160909, 0.098284, 0.982063,
		0.652693, 0.735787, -0.180579,
		-0.740338, 0.670043, 0.054245,
		38.548073, 32.337059, 44.814938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254715, 32.393101, 45.279545>,  <39.066311, 31.868031, 44.776966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254715, 32.393101, 45.279545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856274, 32.426792, 45.269100>,  <38.617210, 32.447006, 45.262833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856274, 32.426792, 45.269100>,  <39.254715, 32.393101, 45.279545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856274, 32.426792, 45.269100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020444, 0.067421, 0.997515,
		0.085776, 0.994163, -0.065436,
		-0.996105, 0.084225, -0.026108,
		38.557442, 32.452061, 45.261269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053001, 32.916019, 45.762070>,  <39.254715, 32.393101, 45.279545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053001, 32.916019, 45.762070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739468, 32.669727, 45.729851>,  <38.551350, 32.521954, 45.710518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739468, 32.669727, 45.729851>,  <39.053001, 32.916019, 45.762070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739468, 32.669727, 45.729851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036544, -0.083752, 0.995816,
		-0.619899, 0.783495, 0.043146,
		-0.783831, -0.615728, -0.080550,
		38.504318, 32.485008, 45.705685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558075, 33.214291, 46.231083>,  <39.053001, 32.916019, 45.762070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558075, 33.214291, 46.231083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412430, 32.846668, 46.170738>,  <38.325043, 32.626095, 46.134533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412430, 32.846668, 46.170738>,  <38.558075, 33.214291, 46.231083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412430, 32.846668, 46.170738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166247, -0.095239, 0.981474,
		-0.916397, 0.382448, -0.118112,
		-0.364114, -0.919056, -0.150857,
		38.303196, 32.570953, 46.125481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985069, 33.222233, 46.668739>,  <38.558075, 33.214291, 46.231083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985069, 33.222233, 46.668739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005634, 32.827099, 46.610023>,  <38.017971, 32.590019, 46.574795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005634, 32.827099, 46.610023>,  <37.985069, 33.222233, 46.668739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005634, 32.827099, 46.610023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011423, -0.146396, 0.989160,
		-0.998612, -0.052529, 0.003758,
		0.051410, -0.987830, -0.146793,
		38.021057, 32.530750, 46.565987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469345, 32.828678, 47.223957>,  <37.985069, 33.222233, 46.668739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469345, 32.828678, 47.223957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753021, 32.563942, 47.126789>,  <37.923225, 32.405098, 47.068489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753021, 32.563942, 47.126789>,  <37.469345, 32.828678, 47.223957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753021, 32.563942, 47.126789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099430, -0.435013, 0.894918,
		-0.697969, -0.610514, -0.374314,
		0.709192, -0.661843, -0.242922,
		37.965778, 32.365391, 47.053913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249638, 32.174755, 47.385735>,  <37.469345, 32.828678, 47.223957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249638, 32.174755, 47.385735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649464, 32.184105, 47.392921>,  <37.889359, 32.189713, 47.397232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649464, 32.184105, 47.392921>,  <37.249638, 32.174755, 47.385735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649464, 32.184105, 47.392921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007023, -0.403055, 0.915149,
		0.028630, -0.914878, -0.402715,
		0.999565, 0.023372, 0.017964,
		37.949333, 32.191116, 47.398312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384750, 31.501442, 47.674355>,  <37.249638, 32.174755, 47.385735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384750, 31.501442, 47.674355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701004, 31.743557, 47.711281>,  <37.890755, 31.888826, 47.733437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701004, 31.743557, 47.711281>,  <37.384750, 31.501442, 47.674355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701004, 31.743557, 47.711281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160030, -0.349805, 0.923053,
		0.591005, -0.715025, -0.373432,
		0.790635, 0.605289, 0.092311,
		37.938194, 31.925144, 47.738976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944832, 31.068010, 47.959171>,  <37.384750, 31.501442, 47.674355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944832, 31.068010, 47.959171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000046, 31.457462, 48.031822>,  <38.033176, 31.691133, 48.075413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000046, 31.457462, 48.031822>,  <37.944832, 31.068010, 47.959171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000046, 31.457462, 48.031822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041957, -0.188964, 0.981087,
		0.989538, -0.127808, -0.066935,
		0.138039, 0.973631, 0.181625,
		38.041458, 31.749552, 48.086311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348053, 30.927408, 48.549969>,  <37.944832, 31.068010, 47.959171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348053, 30.927408, 48.549969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230709, 31.309542, 48.564247>,  <38.160301, 31.538822, 48.572815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230709, 31.309542, 48.564247>,  <38.348053, 30.927408, 48.549969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230709, 31.309542, 48.564247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017951, -0.031827, 0.999332,
		0.955833, 0.293806, -0.007812,
		-0.293361, 0.955335, 0.035695,
		38.142700, 31.596142, 48.574955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498566, 31.203014, 49.132404>,  <38.348053, 30.927408, 48.549969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498566, 31.203014, 49.132404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249176, 31.503962, 49.047337>,  <38.099541, 31.684530, 48.996296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249176, 31.503962, 49.047337>,  <38.498566, 31.203014, 49.132404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249176, 31.503962, 49.047337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198928, 0.110401, 0.973776,
		0.756115, 0.649428, 0.080835,
		-0.623473, 0.752366, -0.212665,
		38.062134, 31.729671, 48.983536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.076876, 35.278473, 47.566315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426416, 35.105267, 47.654751>,  <31.636141, 35.001343, 47.707813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426416, 35.105267, 47.654751>,  <31.076876, 35.278473, 47.566315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426416, 35.105267, 47.654751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428667, 0.471635, -0.770587,
		0.229405, 0.768152, 0.597759,
		0.873852, -0.433016, 0.221086,
		31.688572, 34.975361, 47.721077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658104, 35.819366, 47.609596>,  <31.076876, 35.278473, 47.566315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658104, 35.819366, 47.609596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869143, 35.488297, 47.533073>,  <31.995766, 35.289654, 47.487160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869143, 35.488297, 47.533073>,  <31.658104, 35.819366, 47.609596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869143, 35.488297, 47.533073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444477, 0.460870, -0.768140,
		0.723937, 0.320237, 0.611035,
		0.527594, -0.827676, -0.191303,
		32.027420, 35.239994, 47.475681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373463, 36.010494, 47.445698>,  <31.658104, 35.819366, 47.609596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373463, 36.010494, 47.445698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312080, 35.642685, 47.300964>,  <32.275253, 35.421997, 47.214127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312080, 35.642685, 47.300964>,  <32.373463, 36.010494, 47.445698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312080, 35.642685, 47.300964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440514, 0.264112, -0.858016,
		0.884533, -0.291057, 0.364536,
		-0.153453, -0.919527, -0.361831,
		32.266045, 35.366825, 47.192413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002293, 35.833916, 47.023830>,  <32.373463, 36.010494, 47.445698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002293, 35.833916, 47.023830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733013, 35.558189, 46.916763>,  <32.571445, 35.392754, 46.852524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733013, 35.558189, 46.916763>,  <33.002293, 35.833916, 47.023830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733013, 35.558189, 46.916763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414243, -0.051704, -0.908697,
		0.612540, -0.722613, 0.320352,
		-0.673199, -0.689317, -0.267667,
		32.531052, 35.351395, 46.836464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396385, 35.334812, 46.655666>,  <33.002293, 35.833916, 47.023830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396385, 35.334812, 46.655666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012348, 35.315289, 46.545513>,  <32.781925, 35.303574, 46.479420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012348, 35.315289, 46.545513>,  <33.396385, 35.334812, 46.655666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012348, 35.315289, 46.545513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276414, -0.015605, -0.960912,
		0.042606, -0.998686, 0.028474,
		-0.960094, -0.048811, -0.275386,
		32.724319, 35.300644, 46.462898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243332, 34.812313, 46.215607>,  <33.396385, 35.334812, 46.655666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243332, 34.812313, 46.215607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917229, 35.025543, 46.125111>,  <32.721565, 35.153481, 46.070812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917229, 35.025543, 46.125111>,  <33.243332, 34.812313, 46.215607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917229, 35.025543, 46.125111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205075, -0.099591, -0.973666,
		-0.541567, -0.840187, -0.028128,
		-0.815260, 0.533074, -0.226236,
		32.672649, 35.185467, 46.057240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970028, 34.557304, 45.582298>,  <33.243332, 34.812313, 46.215607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970028, 34.557304, 45.582298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797256, 34.918060, 45.584393>,  <32.693592, 35.134514, 45.585648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797256, 34.918060, 45.584393>,  <32.970028, 34.557304, 45.582298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797256, 34.918060, 45.584393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360568, 0.177994, -0.915592,
		-0.826695, -0.393589, -0.402074,
		-0.431933, 0.901890, 0.005231,
		32.667675, 35.188629, 45.585960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576698, 34.499950, 44.951935>,  <32.970028, 34.557304, 45.582298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576698, 34.499950, 44.951935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612957, 34.889267, 45.036301>,  <32.634712, 35.122856, 45.086922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612957, 34.889267, 45.036301>,  <32.576698, 34.499950, 44.951935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612957, 34.889267, 45.036301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133262, 0.198031, -0.971095,
		-0.986927, 0.116131, -0.111753,
		0.090643, 0.973292, 0.210918,
		32.640148, 35.181255, 45.099575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233383, 34.887196, 44.397430>,  <32.576698, 34.499950, 44.951935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233383, 34.887196, 44.397430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475212, 35.163944, 44.555321>,  <32.620308, 35.329994, 44.650055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475212, 35.163944, 44.555321>,  <32.233383, 34.887196, 44.397430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475212, 35.163944, 44.555321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350492, 0.213940, -0.911803,
		-0.715295, 0.689601, -0.113152,
		0.604573, 0.691867, 0.394730,
		32.656586, 35.371506, 44.673740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943068, 35.566566, 44.163719>,  <32.233383, 34.887196, 44.397430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943068, 35.566566, 44.163719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329552, 35.598587, 44.261723>,  <32.561443, 35.617802, 44.320526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329552, 35.598587, 44.261723>,  <31.943068, 35.566566, 44.163719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329552, 35.598587, 44.261723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193946, 0.400307, -0.895622,
		-0.169777, 0.912878, 0.371254,
		0.966209, 0.080053, 0.245012,
		32.619415, 35.622604, 44.335228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104069, 36.028889, 43.738537>,  <31.943068, 35.566566, 44.163719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104069, 36.028889, 43.738537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473881, 35.929310, 43.853962>,  <32.695770, 35.869564, 43.923218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473881, 35.929310, 43.853962>,  <32.104069, 36.028889, 43.738537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473881, 35.929310, 43.853962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355235, 0.288708, -0.889076,
		0.138020, 0.924486, 0.355354,
		0.924532, -0.248944, 0.288562,
		32.751240, 35.854626, 43.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604294, 36.568420, 43.638691>,  <32.104069, 36.028889, 43.738537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604294, 36.568420, 43.638691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865776, 36.266209, 43.621540>,  <33.022667, 36.084881, 43.611248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865776, 36.266209, 43.621540>,  <32.604294, 36.568420, 43.638691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865776, 36.266209, 43.621540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305940, 0.315683, -0.898190,
		0.692144, 0.574038, 0.437512,
		0.653710, -0.755529, -0.042877,
		33.061890, 36.039551, 43.608677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906063, 36.847980, 43.134476>,  <32.604294, 36.568420, 43.638691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906063, 36.847980, 43.134476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110481, 36.505035, 43.159031>,  <33.233131, 36.299271, 43.173763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110481, 36.505035, 43.159031>,  <32.906063, 36.847980, 43.134476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110481, 36.505035, 43.159031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395799, 0.171320, -0.902215,
		0.763004, 0.485373, 0.426894,
		0.511046, -0.857358, 0.061393,
		33.263794, 36.247829, 43.177448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679935, 36.931278, 43.019154>,  <32.906063, 36.847980, 43.134476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679935, 36.931278, 43.019154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.571728, 36.561153, 42.912861>,  <33.506805, 36.339077, 42.849087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.571728, 36.561153, 42.912861>,  <33.679935, 36.931278, 43.019154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571728, 36.561153, 42.912861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239944, 0.202509, -0.949430,
		0.932335, -0.320595, 0.167243,
		-0.270514, -0.925316, -0.265732,
		33.490574, 36.283558, 42.833141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271557, 36.596432, 43.238354>,  <33.679935, 36.931278, 43.019154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271557, 36.596432, 43.238354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589806, 36.772701, 43.404625>,  <34.780754, 36.878464, 43.504387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589806, 36.772701, 43.404625>,  <34.271557, 36.596432, 43.238354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589806, 36.772701, 43.404625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328963, -0.261892, 0.907301,
		0.508689, -0.858613, -0.063401,
		0.795625, 0.440678, 0.415674,
		34.828491, 36.904903, 43.529327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476761, 36.030659, 43.765327>,  <34.271557, 36.596432, 43.238354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476761, 36.030659, 43.765327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642105, 36.382248, 43.860435>,  <34.741310, 36.593201, 43.917500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642105, 36.382248, 43.860435>,  <34.476761, 36.030659, 43.765327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642105, 36.382248, 43.860435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059320, -0.286565, 0.956222,
		0.908633, -0.381161, -0.170596,
		0.413361, 0.878975, 0.237772,
		34.766113, 36.645939, 43.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870453, 35.854218, 44.324532>,  <34.476761, 36.030659, 43.765327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870453, 35.854218, 44.324532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880283, 36.251945, 44.365963>,  <34.886181, 36.490582, 44.390823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880283, 36.251945, 44.365963>,  <34.870453, 35.854218, 44.324532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880283, 36.251945, 44.365963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316683, -0.106020, 0.942588,
		0.948213, 0.009635, -0.317489,
		0.024578, 0.994317, 0.103581,
		34.887657, 36.550240, 44.397038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373432, 36.007298, 44.748898>,  <34.870453, 35.854218, 44.324532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373432, 36.007298, 44.748898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.201069, 36.366524, 44.784210>,  <35.097652, 36.582062, 44.805397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.201069, 36.366524, 44.784210>,  <35.373432, 36.007298, 44.748898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201069, 36.366524, 44.784210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235688, 0.017568, 0.971670,
		0.871074, 0.439507, -0.219234,
		-0.430907, 0.898067, 0.088284,
		35.071796, 36.635944, 44.810696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814808, 36.608055, 44.944508>,  <35.373432, 36.007298, 44.748898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814808, 36.608055, 44.944508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445007, 36.673775, 45.082092>,  <35.223129, 36.713207, 45.164642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445007, 36.673775, 45.082092>,  <35.814808, 36.608055, 44.944508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445007, 36.673775, 45.082092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327016, -0.121789, 0.937138,
		0.195859, 0.978864, 0.058867,
		-0.924500, 0.164297, 0.343958,
		35.167656, 36.723064, 45.185280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921478, 36.897472, 45.656487>,  <35.814808, 36.608055, 44.944508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921478, 36.897472, 45.656487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.532856, 36.804729, 45.637196>,  <35.299683, 36.749084, 45.625622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.532856, 36.804729, 45.637196>,  <35.921478, 36.897472, 45.656487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532856, 36.804729, 45.637196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041555, -0.033592, 0.998571,
		-0.233150, 0.972169, 0.023001,
		-0.971552, -0.231861, -0.048230,
		35.241390, 36.735172, 45.622726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603378, 37.370605, 46.096298>,  <35.921478, 36.897472, 45.656487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603378, 37.370605, 46.096298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352970, 37.060604, 46.061710>,  <35.202724, 36.874603, 46.040958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352970, 37.060604, 46.061710>,  <35.603378, 37.370605, 46.096298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352970, 37.060604, 46.061710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062231, -0.060888, 0.996203,
		-0.777322, 0.629021, -0.010112,
		-0.626017, -0.775000, -0.086474,
		35.165165, 36.828106, 46.035767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953423, 37.480236, 46.513096>,  <35.603378, 37.370605, 46.096298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953423, 37.480236, 46.513096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991623, 37.084053, 46.473362>,  <35.014542, 36.846344, 46.449524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991623, 37.084053, 46.473362>,  <34.953423, 37.480236, 46.513096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991623, 37.084053, 46.473362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042515, -0.095639, 0.994508,
		-0.994521, -0.099196, 0.032976,
		0.095497, -0.990461, -0.099333,
		35.020271, 36.786915, 46.443562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556419, 37.227386, 47.146725>,  <34.953423, 37.480236, 46.513096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556419, 37.227386, 47.146725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709122, 36.881844, 47.015263>,  <34.800743, 36.674519, 46.936386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709122, 36.881844, 47.015263>,  <34.556419, 37.227386, 47.146725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709122, 36.881844, 47.015263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095167, -0.390438, 0.915697,
		-0.919350, -0.318297, -0.231263,
		0.381758, -0.863854, -0.328658,
		34.823650, 36.622688, 46.916664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153408, 36.758160, 47.438850>,  <34.556419, 37.227386, 47.146725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153408, 36.758160, 47.438850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504528, 36.581112, 47.365578>,  <34.715199, 36.474884, 47.321613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504528, 36.581112, 47.365578>,  <34.153408, 36.758160, 47.438850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504528, 36.581112, 47.365578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003505, -0.376464, 0.926425,
		-0.479016, -0.813857, -0.328908,
		0.877799, -0.442620, -0.183185,
		34.767868, 36.448326, 47.310623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974674, 36.038368, 47.396999>,  <34.153408, 36.758160, 47.438850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974674, 36.038368, 47.396999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358196, 36.104042, 47.489719>,  <34.588310, 36.143448, 47.545353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358196, 36.104042, 47.489719>,  <33.974674, 36.038368, 47.396999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358196, 36.104042, 47.489719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165895, -0.338759, 0.926132,
		0.230584, -0.926436, -0.297567,
		0.958806, 0.164187, 0.231803,
		34.645840, 36.153297, 47.559261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160397, 35.494312, 47.789654>,  <33.974674, 36.038368, 47.396999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160397, 35.494312, 47.789654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423416, 35.777893, 47.891651>,  <34.581226, 35.948040, 47.952850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423416, 35.777893, 47.891651>,  <34.160397, 35.494312, 47.789654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423416, 35.777893, 47.891651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053020, -0.294069, 0.954313,
		0.751548, -0.641023, -0.155775,
		0.657545, 0.708952, 0.254994,
		34.620678, 35.990578, 47.968151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547222, 35.137558, 48.203373>,  <34.160397, 35.494312, 47.789654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547222, 35.137558, 48.203373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623966, 35.519653, 48.293449>,  <34.670013, 35.748909, 48.347496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623966, 35.519653, 48.293449>,  <34.547222, 35.137558, 48.203373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623966, 35.519653, 48.293449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388111, -0.136902, 0.911388,
		0.901420, -0.262259, 0.344472,
		0.191861, 0.955237, 0.225192,
		34.681526, 35.806225, 48.361008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029156, 35.188927, 48.748188>,  <34.547222, 35.137558, 48.203373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029156, 35.188927, 48.748188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.780266, 35.502052, 48.745834>,  <34.630932, 35.689930, 48.744423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.780266, 35.502052, 48.745834>,  <35.029156, 35.188927, 48.748188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780266, 35.502052, 48.745834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271330, -0.208605, 0.939609,
		0.734316, 0.586242, 0.342201,
		-0.622222, 0.782819, -0.005884,
		34.593597, 35.736897, 48.744068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612309, 35.131489, 49.296726>,  <35.029156, 35.188927, 48.748188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612309, 35.131489, 49.296726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880352, 34.876572, 49.448944>,  <36.041176, 34.723621, 49.540276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880352, 34.876572, 49.448944>,  <35.612309, 35.131489, 49.296726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880352, 34.876572, 49.448944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493599, -0.000307, -0.869690,
		0.554362, 0.770624, 0.314360,
		0.670107, -0.637291, 0.380549,
		36.081383, 34.685383, 49.563110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233143, 35.411953, 49.238483>,  <35.612309, 35.131489, 49.296726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233143, 35.411953, 49.238483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337658, 35.029026, 49.287910>,  <36.400368, 34.799271, 49.317566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337658, 35.029026, 49.287910>,  <36.233143, 35.411953, 49.238483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337658, 35.029026, 49.287910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702950, 0.100982, -0.704034,
		0.661507, 0.270819, 0.699332,
		0.261286, -0.957319, 0.123572,
		36.416042, 34.741829, 49.324982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938133, 35.466042, 49.305244>,  <36.233143, 35.411953, 49.238483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938133, 35.466042, 49.305244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.857132, 35.089050, 49.198864>,  <36.808533, 34.862858, 49.135036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.857132, 35.089050, 49.198864>,  <36.938133, 35.466042, 49.305244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857132, 35.089050, 49.198864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563171, 0.110101, -0.818972,
		0.801144, -0.315620, 0.508480,
		-0.202500, -0.942476, -0.265955,
		36.796383, 34.806309, 49.119076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579636, 35.223091, 49.084423>,  <36.938133, 35.466042, 49.305244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579636, 35.223091, 49.084423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330738, 34.962830, 48.910313>,  <37.181400, 34.806675, 48.805847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330738, 34.962830, 48.910313>,  <37.579636, 35.223091, 49.084423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330738, 34.962830, 48.910313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583456, -0.014766, -0.812011,
		0.521908, -0.759234, 0.388814,
		-0.622247, -0.650651, -0.435272,
		37.144062, 34.767635, 48.779732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993317, 34.802452, 48.711281>,  <37.579636, 35.223091, 49.084423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993317, 34.802452, 48.711281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638695, 34.732437, 48.539986>,  <37.425922, 34.690430, 48.437210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638695, 34.732437, 48.539986>,  <37.993317, 34.802452, 48.711281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638695, 34.732437, 48.539986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391955, 0.207548, -0.896267,
		0.245760, -0.962438, -0.115395,
		-0.886551, -0.175037, -0.428239,
		37.372730, 34.679928, 48.411514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177685, 34.437874, 48.220737>,  <37.993317, 34.802452, 48.711281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177685, 34.437874, 48.220737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.808117, 34.543407, 48.109909>,  <37.586376, 34.606728, 48.043411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.808117, 34.543407, 48.109909>,  <38.177685, 34.437874, 48.220737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808117, 34.543407, 48.109909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347215, 0.274077, -0.896841,
		-0.160678, -0.924810, -0.344832,
		-0.923918, 0.263834, -0.277070,
		37.530941, 34.622559, 48.026787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125813, 34.151535, 47.548973>,  <38.177685, 34.437874, 48.220737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125813, 34.151535, 47.548973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.852013, 34.442245, 47.571823>,  <37.687733, 34.616673, 47.585533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.852013, 34.442245, 47.571823>,  <38.125813, 34.151535, 47.548973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852013, 34.442245, 47.571823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244515, 0.302696, -0.921188,
		-0.686788, -0.616581, -0.384902,
		-0.684496, 0.726775, 0.057125,
		37.646664, 34.660278, 47.588959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706722, 34.081459, 46.990150>,  <38.125813, 34.151535, 47.548973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706722, 34.081459, 46.990150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.682293, 34.464069, 47.104225>,  <37.667637, 34.693634, 47.172672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.682293, 34.464069, 47.104225>,  <37.706722, 34.081459, 46.990150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682293, 34.464069, 47.104225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100463, 0.290164, -0.951689,
		-0.993065, -0.029473, -0.113817,
		-0.061074, 0.956523, 0.285190,
		37.663971, 34.751026, 47.189781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341663, 34.394966, 46.503933>,  <37.706722, 34.081459, 46.990150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341663, 34.394966, 46.503933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.511395, 34.708687, 46.684956>,  <37.613232, 34.896919, 46.793571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.511395, 34.708687, 46.684956>,  <37.341663, 34.394966, 46.503933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511395, 34.708687, 46.684956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134216, 0.439788, -0.888016,
		-0.895506, 0.437551, 0.081348,
		0.424328, 0.784306, 0.452559,
		37.638695, 34.943977, 46.820724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083668, 34.957375, 46.052864>,  <37.341663, 34.394966, 46.503933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083668, 34.957375, 46.052864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399075, 35.098717, 46.254215>,  <37.588318, 35.183521, 46.375027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399075, 35.098717, 46.254215>,  <37.083668, 34.957375, 46.052864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399075, 35.098717, 46.254215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317020, 0.467838, -0.825001,
		-0.527016, 0.810104, 0.256876,
		0.788513, 0.353354, 0.503377,
		37.635628, 35.204723, 46.405228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246567, 35.633327, 45.737240>,  <37.083668, 34.957375, 46.052864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246567, 35.633327, 45.737240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570251, 35.502792, 45.932659>,  <37.764462, 35.424473, 46.049911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570251, 35.502792, 45.932659>,  <37.246567, 35.633327, 45.737240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570251, 35.502792, 45.932659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587422, 0.464184, -0.662924,
		-0.010440, 0.823430, 0.567321,
		0.809213, -0.326336, 0.488548,
		37.813015, 35.404892, 46.079224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690426, 36.331562, 45.775593>,  <37.246567, 35.633327, 45.737240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690426, 36.331562, 45.775593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920422, 36.005096, 45.798424>,  <38.058418, 35.809216, 45.812122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920422, 36.005096, 45.798424>,  <37.690426, 36.331562, 45.775593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920422, 36.005096, 45.798424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550739, 0.334518, -0.764712,
		0.605041, 0.471134, 0.641840,
		0.574988, -0.816168, 0.057075,
		38.092918, 35.760246, 45.815548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362476, 36.570343, 45.851597>,  <37.690426, 36.331562, 45.775593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362476, 36.570343, 45.851597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377632, 36.198334, 45.705379>,  <38.386726, 35.975128, 45.617649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377632, 36.198334, 45.705379>,  <38.362476, 36.570343, 45.851597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377632, 36.198334, 45.705379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811334, 0.242175, -0.532060,
		0.583353, -0.276418, 0.763736,
		0.037887, -0.930024, -0.365541,
		38.389000, 35.919327, 45.595718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057362, 36.586327, 45.770390>,  <38.362476, 36.570343, 45.851597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057362, 36.586327, 45.770390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910179, 36.282211, 45.556259>,  <38.821869, 36.099743, 45.427780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910179, 36.282211, 45.556259>,  <39.057362, 36.586327, 45.770390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910179, 36.282211, 45.556259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689886, 0.162778, -0.705380,
		0.623431, -0.628860, 0.464617,
		-0.367955, -0.760288, -0.535323,
		38.799793, 36.054123, 45.395660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.341696, 42.858883, 32.751518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098028, 43.127869, 32.919666>,  <28.951828, 43.289261, 33.020554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098028, 43.127869, 32.919666>,  <29.341696, 42.858883, 32.751518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098028, 43.127869, 32.919666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658709, -0.724220, 0.203979,
		0.441607, -0.152643, 0.884128,
		-0.609168, 0.672462, 0.420369,
		28.915277, 43.329609, 33.045776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066156, 42.661755, 33.487988>,  <29.341696, 42.858883, 32.751518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066156, 42.661755, 33.487988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806007, 42.901375, 33.301159>,  <28.649918, 43.045147, 33.189060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806007, 42.901375, 33.301159>,  <29.066156, 42.661755, 33.487988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806007, 42.901375, 33.301159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744384, -0.625128, 0.234750,
		-0.151355, 0.500357, 0.852487,
		-0.650372, 0.599048, -0.467074,
		28.610895, 43.081089, 33.161037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553165, 42.683113, 33.959759>,  <29.066156, 42.661755, 33.487988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553165, 42.683113, 33.959759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400007, 42.838326, 33.624420>,  <28.308113, 42.931454, 33.423218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400007, 42.838326, 33.624420>,  <28.553165, 42.683113, 33.959759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400007, 42.838326, 33.624420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788627, -0.609920, 0.077881,
		-0.481101, 0.690961, 0.539550,
		-0.382895, 0.388036, -0.838344,
		28.285139, 42.954735, 33.372917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796400, 42.882942, 34.102287>,  <28.553165, 42.683113, 33.959759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796400, 42.882942, 34.102287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874426, 42.838776, 33.712463>,  <27.921242, 42.812275, 33.478569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874426, 42.838776, 33.712463>,  <27.796400, 42.882942, 34.102287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874426, 42.838776, 33.712463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764884, -0.639094, -0.080685,
		-0.613923, 0.761161, -0.209121,
		0.195062, -0.110419, -0.974555,
		27.932945, 42.805649, 33.420097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119038, 42.910034, 33.809311>,  <27.796400, 42.882942, 34.102287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119038, 42.910034, 33.809311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356380, 42.712032, 33.555416>,  <27.498787, 42.593231, 33.403080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356380, 42.712032, 33.555416>,  <27.119038, 42.910034, 33.809311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356380, 42.712032, 33.555416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710774, -0.692308, -0.124533,
		-0.377792, 0.525051, -0.762624,
		0.593357, -0.495006, -0.634741,
		27.534388, 42.563530, 33.364994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706812, 42.647552, 33.288998>,  <27.119038, 42.910034, 33.809311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706812, 42.647552, 33.288998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.010542, 42.391727, 33.241024>,  <27.192780, 42.238232, 33.212238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.010542, 42.391727, 33.241024>,  <26.706812, 42.647552, 33.288998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010542, 42.391727, 33.241024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650530, -0.750449, -0.116778,
		-0.015320, 0.166695, -0.985890,
		0.759326, -0.639562, -0.119937,
		27.238340, 42.199860, 33.205044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531557, 42.139122, 32.736195>,  <26.706812, 42.647552, 33.288998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531557, 42.139122, 32.736195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836784, 41.979099, 32.939247>,  <27.019920, 41.883087, 33.061077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836784, 41.979099, 32.939247>,  <26.531557, 42.139122, 32.736195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836784, 41.979099, 32.939247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546028, -0.819254, 0.175147,
		0.345807, -0.410827, -0.843587,
		0.763067, -0.400055, 0.507627,
		27.065704, 41.859081, 33.091534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350771, 41.459736, 32.660217>,  <26.531557, 42.139122, 32.736195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350771, 41.459736, 32.660217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638182, 41.465706, 32.938354>,  <26.810627, 41.469288, 33.105236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638182, 41.465706, 32.938354>,  <26.350771, 41.459736, 32.660217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638182, 41.465706, 32.938354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288572, -0.903253, 0.317586,
		0.632809, -0.428849, -0.644702,
		0.718525, 0.014928, 0.695340,
		26.853739, 41.470184, 33.146957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747442, 40.777477, 32.623241>,  <26.350771, 41.459736, 32.660217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747442, 40.777477, 32.623241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.803738, 40.934299, 32.986885>,  <26.837515, 41.028393, 33.205070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.803738, 40.934299, 32.986885>,  <26.747442, 40.777477, 32.623241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803738, 40.934299, 32.986885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076028, -0.911261, 0.404751,
		0.987123, -0.126082, -0.098442,
		0.140738, 0.392055, 0.909113,
		26.845959, 41.051914, 33.259621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261681, 40.366650, 33.001980>,  <26.747442, 40.777477, 32.623241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261681, 40.366650, 33.001980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.075916, 40.557018, 33.300728>,  <26.964458, 40.671242, 33.479977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.075916, 40.557018, 33.300728>,  <27.261681, 40.366650, 33.001980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075916, 40.557018, 33.300728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163788, -0.874941, 0.455689,
		0.870342, 0.089298, 0.484283,
		-0.464411, 0.475925, 0.746872,
		26.936592, 40.699795, 33.524788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428652, 40.032406, 33.589069>,  <27.261681, 40.366650, 33.001980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428652, 40.032406, 33.589069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077108, 40.192841, 33.692402>,  <26.866182, 40.289101, 33.754402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077108, 40.192841, 33.692402>,  <27.428652, 40.032406, 33.589069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077108, 40.192841, 33.692402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246975, -0.845773, 0.472939,
		0.408177, 0.351846, 0.842375,
		-0.878860, 0.401089, 0.258328,
		26.813450, 40.313168, 33.769901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272015, 39.755119, 34.176132>,  <27.428652, 40.032406, 33.589069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272015, 39.755119, 34.176132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911781, 39.907856, 34.093040>,  <26.695641, 39.999496, 34.043186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911781, 39.907856, 34.093040>,  <27.272015, 39.755119, 34.176132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911781, 39.907856, 34.093040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433039, -0.829651, 0.352359,
		-0.037796, 0.407282, 0.912520,
		-0.900583, 0.381839, -0.207727,
		26.641607, 40.022408, 34.030724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822372, 39.607159, 34.836082>,  <27.272015, 39.755119, 34.176132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822372, 39.607159, 34.836082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.565205, 39.686092, 34.540054>,  <26.410904, 39.733452, 34.362438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.565205, 39.686092, 34.540054>,  <26.822372, 39.607159, 34.836082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565205, 39.686092, 34.540054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509009, -0.832088, 0.220316,
		-0.572330, 0.518350, 0.635414,
		-0.642921, 0.197338, -0.740074,
		26.372328, 39.745293, 34.318031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092632, 39.661430, 35.141285>,  <26.822372, 39.607159, 34.836082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092632, 39.661430, 35.141285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073879, 39.592480, 34.747719>,  <26.062628, 39.551109, 34.511578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073879, 39.592480, 34.747719>,  <26.092632, 39.661430, 35.141285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073879, 39.592480, 34.747719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642914, -0.748656, 0.161791,
		-0.764502, 0.640158, -0.075722,
		-0.046882, -0.172373, -0.983915,
		26.059814, 39.540768, 34.452545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403217, 39.641449, 34.966702>,  <26.092632, 39.661430, 35.141285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403217, 39.641449, 34.966702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629787, 39.441788, 34.704399>,  <25.765730, 39.321991, 34.547020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629787, 39.441788, 34.704399>,  <25.403217, 39.641449, 34.966702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629787, 39.441788, 34.704399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548183, -0.822347, 0.152452,
		-0.615354, 0.273121, -0.739422,
		0.566423, -0.499150, -0.655754,
		25.799715, 39.292042, 34.507671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908010, 39.210629, 34.612457>,  <25.403217, 39.641449, 34.966702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908010, 39.210629, 34.612457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247492, 39.022404, 34.515903>,  <25.451181, 38.909470, 34.457970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247492, 39.022404, 34.515903>,  <24.908010, 39.210629, 34.612457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247492, 39.022404, 34.515903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444367, -0.881983, 0.156986,
		-0.286772, -0.025970, -0.957647,
		0.848705, -0.470566, -0.241388,
		25.502104, 38.881233, 34.443485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716969, 38.640564, 34.069027>,  <24.908010, 39.210629, 34.612457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716969, 38.640564, 34.069027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.080488, 38.561039, 34.215755>,  <25.298599, 38.513325, 34.303795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.080488, 38.561039, 34.215755>,  <24.716969, 38.640564, 34.069027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080488, 38.561039, 34.215755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261362, -0.956571, 0.129081,
		0.325231, -0.213182, -0.921292,
		0.908799, -0.198810, 0.366825,
		25.353128, 38.501396, 34.325802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.859949, 37.971321, 33.864994>,  <24.716969, 38.640564, 34.069027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.859949, 37.971321, 33.864994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.149981, 37.984539, 34.140141>,  <25.323999, 37.992470, 34.305229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.149981, 37.984539, 34.140141>,  <24.859949, 37.971321, 33.864994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149981, 37.984539, 34.140141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080098, -0.988021, 0.131901,
		0.683990, -0.150736, -0.713748,
		0.725081, 0.033049, 0.687871,
		25.367504, 37.994453, 34.346500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303308, 37.380875, 33.820732>,  <24.859949, 37.971321, 33.864994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303308, 37.380875, 33.820732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.358751, 37.487278, 34.202312>,  <25.392017, 37.551121, 34.431263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.358751, 37.487278, 34.202312>,  <25.303308, 37.380875, 33.820732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358751, 37.487278, 34.202312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063533, -0.958880, 0.276609,
		0.988307, -0.098948, -0.116008,
		0.138608, 0.266004, 0.953955,
		25.400333, 37.567078, 34.488499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705481, 36.889610, 34.025215>,  <25.303308, 37.380875, 33.820732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705481, 36.889610, 34.025215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.577358, 37.022568, 34.380051>,  <25.500484, 37.102341, 34.592953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.577358, 37.022568, 34.380051>,  <25.705481, 36.889610, 34.025215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577358, 37.022568, 34.380051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073853, -0.942332, 0.326430,
		0.944431, 0.039044, 0.326382,
		-0.320305, 0.332395, 0.887084,
		25.481266, 37.122288, 34.646175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150129, 36.668793, 34.535759>,  <25.705481, 36.889610, 34.025215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150129, 36.668793, 34.535759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.811674, 36.722710, 34.742012>,  <25.608601, 36.755058, 34.865765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.811674, 36.722710, 34.742012>,  <26.150129, 36.668793, 34.535759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811674, 36.722710, 34.742012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026573, -0.955616, 0.293413,
		0.532298, 0.261971, 0.805003,
		-0.846140, 0.134792, 0.515634,
		25.557833, 36.763145, 34.896702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300508, 36.350876, 35.132809>,  <26.150129, 36.668793, 34.535759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300508, 36.350876, 35.132809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.904039, 36.356514, 35.080078>,  <25.666159, 36.359898, 35.048439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.904039, 36.356514, 35.080078>,  <26.300508, 36.350876, 35.132809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904039, 36.356514, 35.080078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045342, -0.970407, 0.237179,
		-0.124578, 0.241062, 0.962481,
		-0.991173, 0.014093, -0.131822,
		25.606688, 36.360741, 35.040531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913151, 36.626682, 34.987217>,  <26.300508, 36.350876, 35.132809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913151, 36.626682, 34.987217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072268, 36.559540, 35.348011>,  <27.167738, 36.519253, 35.564487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072268, 36.559540, 35.348011>,  <26.913151, 36.626682, 34.987217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072268, 36.559540, 35.348011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215746, 0.972667, 0.085863,
		-0.891748, 0.160445, 0.423136,
		0.397794, -0.167858, 0.901989,
		27.191607, 36.509182, 35.618607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588938, 37.062931, 35.547512>,  <26.913151, 36.626682, 34.987217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588938, 37.062931, 35.547512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968952, 36.979427, 35.640339>,  <27.196960, 36.929325, 35.696033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968952, 36.979427, 35.640339>,  <26.588938, 37.062931, 35.547512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968952, 36.979427, 35.640339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212939, 0.977039, 0.007175,
		-0.228235, 0.042600, 0.972674,
		0.950035, -0.208758, 0.232065,
		27.253963, 36.916801, 35.709957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732616, 37.582840, 35.878830>,  <26.588938, 37.062931, 35.547512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732616, 37.582840, 35.878830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105429, 37.447952, 35.825760>,  <27.329115, 37.367020, 35.793919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105429, 37.447952, 35.825760>,  <26.732616, 37.582840, 35.878830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105429, 37.447952, 35.825760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325768, 0.940054, -0.100869,
		0.158736, 0.050791, 0.986013,
		0.932029, -0.337223, -0.132674,
		27.385036, 37.346786, 35.785957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142359, 37.969280, 36.396965>,  <26.732616, 37.582840, 35.878830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142359, 37.969280, 36.396965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392447, 37.829288, 36.117935>,  <27.542500, 37.745293, 35.950516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392447, 37.829288, 36.117935>,  <27.142359, 37.969280, 36.396965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392447, 37.829288, 36.117935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451443, 0.891285, -0.042548,
		0.636630, -0.288315, 0.715246,
		0.625220, -0.349980, -0.697577,
		27.580013, 37.724293, 35.908661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913694, 38.095150, 36.670761>,  <27.142359, 37.969280, 36.396965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913694, 38.095150, 36.670761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914909, 38.044643, 36.273964>,  <27.915638, 38.014339, 36.035885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914909, 38.044643, 36.273964>,  <27.913694, 38.095150, 36.670761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914909, 38.044643, 36.273964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536013, 0.837657, -0.104978,
		0.844204, -0.531402, 0.070221,
		0.003035, -0.126262, -0.991992,
		27.915819, 38.006763, 35.976368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645985, 38.217716, 36.423943>,  <27.913694, 38.095150, 36.670761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645985, 38.217716, 36.423943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399029, 38.279716, 36.115448>,  <28.250854, 38.316917, 35.930351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399029, 38.279716, 36.115448>,  <28.645985, 38.217716, 36.423943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399029, 38.279716, 36.115448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454159, 0.870737, -0.188563,
		0.642317, -0.466680, -0.607979,
		-0.617389, 0.155002, -0.771236,
		28.213812, 38.326218, 35.884079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175577, 38.446819, 36.023438>,  <28.645985, 38.217716, 36.423943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175577, 38.446819, 36.023438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847956, 38.564178, 35.826229>,  <28.651382, 38.634594, 35.707905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847956, 38.564178, 35.826229>,  <29.175577, 38.446819, 36.023438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847956, 38.564178, 35.826229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418226, 0.893594, -0.163025,
		0.392728, -0.339720, -0.854608,
		-0.819055, 0.293395, -0.493019,
		28.602240, 38.652199, 35.678322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437401, 38.517952, 35.286335>,  <29.175577, 38.446819, 36.023438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437401, 38.517952, 35.286335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113710, 38.738762, 35.366753>,  <28.919495, 38.871246, 35.415001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113710, 38.738762, 35.366753>,  <29.437401, 38.517952, 35.286335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113710, 38.738762, 35.366753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425535, 0.786690, -0.447258,
		-0.405056, -0.276384, -0.871517,
		-0.809228, 0.552025, 0.201042,
		28.870941, 38.904369, 35.427067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370432, 38.869144, 34.564327>,  <29.437401, 38.517952, 35.286335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370432, 38.869144, 34.564327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165739, 39.087311, 34.829857>,  <29.042923, 39.218208, 34.989174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165739, 39.087311, 34.829857>,  <29.370432, 38.869144, 34.564327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165739, 39.087311, 34.829857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276376, 0.836086, -0.473894,
		-0.813479, -0.059042, -0.578590,
		-0.511731, 0.545411, 0.663821,
		29.012220, 39.250935, 35.029003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962246, 39.456203, 34.165585>,  <29.370432, 38.869144, 34.564327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962246, 39.456203, 34.165585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018829, 39.554676, 34.549122>,  <29.052778, 39.613762, 34.779243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018829, 39.554676, 34.549122>,  <28.962246, 39.456203, 34.165585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018829, 39.554676, 34.549122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258729, 0.925725, -0.275850,
		-0.955536, 0.287102, 0.067255,
		0.141456, 0.246184, 0.958845,
		29.061266, 39.628532, 34.836777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835762, 40.254196, 34.200027>,  <28.962246, 39.456203, 34.165585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835762, 40.254196, 34.200027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018467, 40.149994, 34.540264>,  <29.128090, 40.087471, 34.744404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018467, 40.149994, 34.540264>,  <28.835762, 40.254196, 34.200027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018467, 40.149994, 34.540264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471164, 0.881880, 0.017080,
		-0.754567, 0.392965, 0.525553,
		0.456763, -0.260509, 0.850589,
		29.155497, 40.071842, 34.795441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767168, 40.877827, 34.611179>,  <28.835762, 40.254196, 34.200027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767168, 40.877827, 34.611179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057718, 40.680328, 34.802425>,  <29.232048, 40.561829, 34.917171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057718, 40.680328, 34.802425>,  <28.767168, 40.877827, 34.611179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057718, 40.680328, 34.802425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526206, 0.847019, 0.075270,
		-0.442134, 0.196910, 0.875068,
		0.726378, -0.493746, 0.478111,
		29.275631, 40.532204, 34.945858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919073, 41.205025, 35.220589>,  <28.767168, 40.877827, 34.611179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919073, 41.205025, 35.220589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242962, 40.992321, 35.121330>,  <29.437296, 40.864697, 35.061775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242962, 40.992321, 35.121330>,  <28.919073, 41.205025, 35.220589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242962, 40.992321, 35.121330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565181, 0.820471, 0.086008,
		0.157862, -0.209891, 0.964897,
		0.809722, -0.531764, -0.248148,
		29.485878, 40.832790, 35.046886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358809, 41.450512, 35.686192>,  <28.919073, 41.205025, 35.220589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358809, 41.450512, 35.686192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569242, 41.292210, 35.385098>,  <29.695503, 41.197227, 35.204441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569242, 41.292210, 35.385098>,  <29.358809, 41.450512, 35.686192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569242, 41.292210, 35.385098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645419, 0.762167, 0.050366,
		0.553777, -0.512326, 0.656394,
		0.526085, -0.395757, -0.752736,
		29.727068, 41.173481, 35.159275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043432, 41.586006, 35.809139>,  <29.358809, 41.450512, 35.686192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043432, 41.586006, 35.809139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020817, 41.531776, 35.413479>,  <30.007248, 41.499241, 35.176083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020817, 41.531776, 35.413479>,  <30.043432, 41.586006, 35.809139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020817, 41.531776, 35.413479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721253, 0.679516, -0.134360,
		0.690360, -0.721027, 0.059360,
		-0.056541, -0.135570, -0.989153,
		30.003855, 41.491104, 35.116734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772781, 41.559856, 35.582687>,  <30.043432, 41.586006, 35.809139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772781, 41.559856, 35.582687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.561085, 41.640129, 35.252930>,  <30.434067, 41.688293, 35.055073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.561085, 41.640129, 35.252930>,  <30.772781, 41.559856, 35.582687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561085, 41.640129, 35.252930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688295, 0.669698, -0.278845,
		0.496137, -0.715004, -0.492561,
		-0.529243, 0.200682, -0.824396,
		30.402311, 41.700333, 35.005611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264059, 41.775459, 35.070835>,  <30.772781, 41.559856, 35.582687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264059, 41.775459, 35.070835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931763, 41.899773, 34.886105>,  <30.732384, 41.974361, 34.775269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931763, 41.899773, 34.886105>,  <31.264059, 41.775459, 35.070835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931763, 41.899773, 34.886105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533934, 0.679489, -0.503199,
		0.157418, -0.664612, -0.730418,
		-0.830743, 0.310782, -0.461823,
		30.682539, 41.993008, 34.747559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477621, 41.897320, 34.337212>,  <31.264059, 41.775459, 35.070835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477621, 41.897320, 34.337212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149214, 42.115242, 34.405464>,  <30.952169, 42.245995, 34.446415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149214, 42.115242, 34.405464>,  <31.477621, 41.897320, 34.337212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149214, 42.115242, 34.405464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317759, 0.684389, -0.656232,
		-0.474297, -0.484560, -0.735013,
		-0.821019, 0.544806, 0.170631,
		30.902908, 42.278683, 34.456654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165611, 42.026424, 33.745270>,  <31.477621, 41.897320, 34.337212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165611, 42.026424, 33.745270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045439, 42.327621, 33.979450>,  <30.973335, 42.508339, 34.119957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045439, 42.327621, 33.979450>,  <31.165611, 42.026424, 33.745270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045439, 42.327621, 33.979450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198197, 0.649691, -0.733907,
		-0.932984, -0.104454, -0.344428,
		-0.300431, 0.752988, 0.585448,
		30.955309, 42.553516, 34.155087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757975, 42.321194, 33.276188>,  <31.165611, 42.026424, 33.745270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757975, 42.321194, 33.276188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849190, 42.589878, 33.558125>,  <30.903919, 42.751091, 33.727287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849190, 42.589878, 33.558125>,  <30.757975, 42.321194, 33.276188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849190, 42.589878, 33.558125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100569, 0.703791, -0.703253,
		-0.968444, 0.231254, 0.092938,
		0.228039, 0.671714, 0.704839,
		30.917601, 42.791393, 33.769577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.704304, 31.732899, 49.687992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341984, 31.798790, 49.531841>,  <38.124592, 31.838324, 49.438148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341984, 31.798790, 49.531841>,  <38.704304, 31.732899, 49.687992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341984, 31.798790, 49.531841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376476, 0.109853, 0.919890,
		0.194415, 0.980203, -0.037489,
		-0.905797, 0.164727, -0.390380,
		38.070244, 31.848207, 49.414726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391487, 32.345875, 50.024487>,  <38.704304, 31.732899, 49.687992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391487, 32.345875, 50.024487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052959, 32.171078, 49.902645>,  <37.849842, 32.066200, 49.829540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052959, 32.171078, 49.902645>,  <38.391487, 32.345875, 50.024487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052959, 32.171078, 49.902645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333034, -0.012222, 0.942836,
		-0.415732, 0.899384, -0.135189,
		-0.846319, -0.436989, -0.304607,
		37.799065, 32.039982, 49.811264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787239, 32.633652, 50.450886>,  <38.391487, 32.345875, 50.024487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787239, 32.633652, 50.450886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638615, 32.301941, 50.283916>,  <37.549442, 32.102913, 50.183735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638615, 32.301941, 50.283916>,  <37.787239, 32.633652, 50.450886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638615, 32.301941, 50.283916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636016, -0.100173, 0.765146,
		-0.676334, 0.549783, -0.490215,
		-0.371558, -0.829279, -0.417421,
		37.527149, 32.053158, 50.158691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073917, 32.715164, 50.336971>,  <37.787239, 32.633652, 50.450886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073917, 32.715164, 50.336971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145107, 32.323257, 50.373608>,  <37.187820, 32.088116, 50.395588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145107, 32.323257, 50.373608>,  <37.073917, 32.715164, 50.336971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145107, 32.323257, 50.373608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673840, -0.053514, 0.736937,
		-0.717123, -0.192869, -0.669728,
		0.177972, -0.979764, 0.091586,
		37.198498, 32.029327, 50.401085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415646, 32.463219, 50.522190>,  <37.073917, 32.715164, 50.336971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415646, 32.463219, 50.522190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655258, 32.171432, 50.654274>,  <36.799026, 31.996361, 50.733524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655258, 32.171432, 50.654274>,  <36.415646, 32.463219, 50.522190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655258, 32.171432, 50.654274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674868, -0.238005, 0.698504,
		-0.430946, -0.641271, -0.634867,
		0.599032, -0.729469, 0.330206,
		36.834969, 31.952593, 50.753338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921429, 31.856770, 50.543087>,  <36.415646, 32.463219, 50.522190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921429, 31.856770, 50.543087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230316, 31.763956, 50.779675>,  <36.415649, 31.708269, 50.921627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230316, 31.763956, 50.779675>,  <35.921429, 31.856770, 50.543087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230316, 31.763956, 50.779675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634655, -0.238127, 0.735193,
		-0.029743, -0.943110, -0.331148,
		0.772223, -0.232032, 0.591467,
		36.461983, 31.694347, 50.957115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767185, 31.187483, 50.745922>,  <35.921429, 31.856770, 50.543087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767185, 31.187483, 50.745922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025810, 31.315794, 51.022781>,  <36.180984, 31.392780, 51.188896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025810, 31.315794, 51.022781>,  <35.767185, 31.187483, 50.745922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025810, 31.315794, 51.022781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672784, -0.187929, 0.715572,
		0.359613, -0.928324, 0.094306,
		0.646560, 0.320776, 0.692143,
		36.219780, 31.412027, 51.230423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694328, 30.682985, 51.294147>,  <35.767185, 31.187483, 50.745922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694328, 30.682985, 51.294147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884632, 30.973354, 51.492821>,  <35.998814, 31.147575, 51.612022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884632, 30.973354, 51.492821>,  <35.694328, 30.682985, 51.294147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884632, 30.973354, 51.492821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459366, -0.276491, 0.844118,
		0.750093, -0.629753, 0.201922,
		0.475756, 0.725923, 0.496681,
		36.027359, 31.191132, 51.641827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870193, 30.365107, 51.876724>,  <35.694328, 30.682985, 51.294147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870193, 30.365107, 51.876724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871643, 30.761080, 51.933319>,  <35.872513, 30.998663, 51.967278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871643, 30.761080, 51.933319>,  <35.870193, 30.365107, 51.876724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871643, 30.761080, 51.933319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441956, -0.125335, 0.888237,
		0.897029, -0.065752, 0.437053,
		0.003626, 0.989933, 0.141488,
		35.872730, 31.058060, 51.975765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119274, 30.400217, 52.616432>,  <35.870193, 30.365107, 51.876724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119274, 30.400217, 52.616432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928215, 30.725845, 52.484287>,  <35.813580, 30.921223, 52.404999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928215, 30.725845, 52.484287>,  <36.119274, 30.400217, 52.616432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928215, 30.725845, 52.484287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397300, 0.135237, 0.907669,
		0.783584, 0.564803, 0.258834,
		-0.477650, 0.814070, -0.330366,
		35.784920, 30.970066, 52.385178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157543, 30.863941, 53.166092>,  <36.119274, 30.400217, 52.616432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157543, 30.863941, 53.166092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855255, 31.006437, 52.946281>,  <35.673882, 31.091934, 52.814396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855255, 31.006437, 52.946281>,  <36.157543, 30.863941, 53.166092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855255, 31.006437, 52.946281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510587, 0.204958, 0.835041,
		0.410103, 0.911639, 0.027000,
		-0.755722, 0.356239, -0.549525,
		35.628540, 31.113308, 52.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806347, 31.435045, 53.601170>,  <36.157543, 30.863941, 53.166092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806347, 31.435045, 53.601170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544529, 31.318104, 53.322289>,  <35.387436, 31.247938, 53.154961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544529, 31.318104, 53.322289>,  <35.806347, 31.435045, 53.601170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544529, 31.318104, 53.322289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694810, -0.130883, 0.707183,
		-0.298000, 0.947311, -0.117461,
		-0.654549, -0.292354, -0.697205,
		35.348164, 31.230398, 53.113129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171173, 31.855326, 53.605854>,  <35.806347, 31.435045, 53.601170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171173, 31.855326, 53.605854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099594, 31.487938, 53.464779>,  <35.056648, 31.267506, 53.380135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099594, 31.487938, 53.464779>,  <35.171173, 31.855326, 53.605854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099594, 31.487938, 53.464779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689617, -0.138586, 0.710790,
		-0.701718, 0.370413, -0.608593,
		-0.178943, -0.918470, -0.352692,
		35.045910, 31.212397, 53.358971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418461, 31.811573, 53.458450>,  <35.171173, 31.855326, 53.605854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418461, 31.811573, 53.458450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612629, 31.475090, 53.553726>,  <34.729130, 31.273199, 53.610893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612629, 31.475090, 53.553726>,  <34.418461, 31.811573, 53.458450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612629, 31.475090, 53.553726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628714, -0.146552, 0.763702,
		-0.607526, -0.520470, -0.600020,
		0.485418, -0.841209, 0.238193,
		34.758255, 31.222727, 53.625183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117661, 32.264488, 53.973259>,  <34.418461, 31.811573, 53.458450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117661, 32.264488, 53.973259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980179, 32.606277, 54.129074>,  <33.897690, 32.811352, 54.222565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980179, 32.606277, 54.129074>,  <34.117661, 32.264488, 53.973259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980179, 32.606277, 54.129074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149378, 0.459279, -0.875642,
		-0.927122, -0.242771, -0.285495,
		-0.343703, 0.854473, 0.389543,
		33.877068, 32.862621, 54.245937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600613, 32.555943, 53.544514>,  <34.117661, 32.264488, 53.973259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600613, 32.555943, 53.544514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753349, 32.853775, 53.763531>,  <33.844990, 33.032475, 53.894939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753349, 32.853775, 53.763531>,  <33.600613, 32.555943, 53.544514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753349, 32.853775, 53.763531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280828, 0.470950, -0.836267,
		-0.880531, 0.473083, -0.029272,
		0.381838, 0.744579, 0.547541,
		33.867901, 33.077148, 53.927792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366703, 33.195652, 53.308914>,  <33.600613, 32.555943, 53.544514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366703, 33.195652, 53.308914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716522, 33.259060, 53.492233>,  <33.926414, 33.297104, 53.602226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716522, 33.259060, 53.492233>,  <33.366703, 33.195652, 53.308914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716522, 33.259060, 53.492233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297200, 0.571579, -0.764833,
		-0.383199, 0.805089, 0.452759,
		0.874546, 0.158523, 0.458301,
		33.978886, 33.306618, 53.629723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430489, 33.851517, 53.192162>,  <33.366703, 33.195652, 53.308914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430489, 33.851517, 53.192162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799622, 33.747314, 53.305664>,  <34.021103, 33.684792, 53.373764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799622, 33.747314, 53.305664>,  <33.430489, 33.851517, 53.192162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799622, 33.747314, 53.305664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382459, 0.531848, -0.755554,
		0.045914, 0.805774, 0.590441,
		0.922831, -0.260510, 0.283756,
		34.076469, 33.669163, 53.390789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776863, 34.433903, 53.127682>,  <33.430489, 33.851517, 53.192162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776863, 34.433903, 53.127682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046463, 34.138432, 53.123928>,  <34.208221, 33.961151, 53.121677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046463, 34.138432, 53.123928>,  <33.776863, 34.433903, 53.127682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046463, 34.138432, 53.123928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408395, 0.383161, -0.828494,
		0.615582, 0.554571, 0.559920,
		0.673998, -0.738674, -0.009383,
		34.248661, 33.916828, 53.121113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448475, 34.710644, 52.871990>,  <33.776863, 34.433903, 53.127682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448475, 34.710644, 52.871990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506939, 34.316219, 52.840191>,  <34.542019, 34.079563, 52.821110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506939, 34.316219, 52.840191>,  <34.448475, 34.710644, 52.871990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506939, 34.316219, 52.840191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531014, 0.146008, -0.834689,
		0.834661, 0.079787, 0.544953,
		0.146165, -0.986061, -0.079500,
		34.550789, 34.020401, 52.816341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146973, 34.717659, 52.759602>,  <34.448475, 34.710644, 52.871990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146973, 34.717659, 52.759602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972263, 34.385086, 52.622231>,  <34.867439, 34.185543, 52.539806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972263, 34.385086, 52.622231>,  <35.146973, 34.717659, 52.759602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972263, 34.385086, 52.622231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535253, 0.066634, -0.842059,
		0.723003, -0.551610, 0.415924,
		-0.436773, -0.831436, -0.343427,
		34.841232, 34.135654, 52.519203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657581, 34.406277, 52.476772>,  <35.146973, 34.717659, 52.759602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657581, 34.406277, 52.476772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350250, 34.212811, 52.309086>,  <35.165852, 34.096729, 52.208473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350250, 34.212811, 52.309086>,  <35.657581, 34.406277, 52.476772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350250, 34.212811, 52.309086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528832, -0.110737, -0.841471,
		0.360568, -0.868220, 0.340860,
		-0.768328, -0.483665, -0.419214,
		35.119751, 34.067711, 52.183323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898769, 33.726353, 52.147724>,  <35.657581, 34.406277, 52.476772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898769, 33.726353, 52.147724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555920, 33.838306, 51.974747>,  <35.350212, 33.905479, 51.870960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555920, 33.838306, 51.974747>,  <35.898769, 33.726353, 52.147724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555920, 33.838306, 51.974747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464873, 0.058656, -0.883433,
		-0.221896, -0.958240, -0.180387,
		-0.857120, 0.279887, -0.432444,
		35.298782, 33.922272, 51.845013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955292, 33.365826, 51.552967>,  <35.898769, 33.726353, 52.147724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955292, 33.365826, 51.552967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679333, 33.643490, 51.470814>,  <35.513760, 33.810089, 51.421524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679333, 33.643490, 51.470814>,  <35.955292, 33.365826, 51.552967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679333, 33.643490, 51.470814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442791, 0.180196, -0.878331,
		-0.572697, -0.696897, -0.431686,
		-0.689895, 0.694164, -0.205382,
		35.472363, 33.851738, 51.409199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968887, 33.269638, 50.814297>,  <35.955292, 33.365826, 51.552967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968887, 33.269638, 50.814297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752823, 33.597664, 50.889896>,  <35.623184, 33.794479, 50.935257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752823, 33.597664, 50.889896>,  <35.968887, 33.269638, 50.814297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752823, 33.597664, 50.889896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214074, 0.351084, -0.911544,
		-0.813880, -0.451919, -0.365196,
		-0.540158, 0.820067, 0.188996,
		35.590775, 33.843685, 50.946594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635803, 33.385578, 50.229305>,  <35.968887, 33.269638, 50.814297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635803, 33.385578, 50.229305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646599, 33.744209, 50.406128>,  <35.653076, 33.959389, 50.512222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646599, 33.744209, 50.406128>,  <35.635803, 33.385578, 50.229305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646599, 33.744209, 50.406128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281586, 0.417492, -0.863950,
		-0.959156, 0.147790, -0.241199,
		0.026985, 0.896582, 0.442055,
		35.654694, 34.013184, 50.538746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249207, 33.833965, 49.817631>,  <35.635803, 33.385578, 50.229305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249207, 33.833965, 49.817631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504227, 34.061348, 50.025623>,  <35.657238, 34.197777, 50.150421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504227, 34.061348, 50.025623>,  <35.249207, 33.833965, 49.817631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504227, 34.061348, 50.025623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386962, 0.347341, -0.854175,
		-0.666177, 0.745793, 0.001474,
		0.637549, 0.568461, 0.519984,
		35.695492, 34.231888, 50.181618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208729, 34.520981, 49.454475>,  <35.249207, 33.833965, 49.817631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208729, 34.520981, 49.454475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542843, 34.479370, 49.670425>,  <35.743313, 34.454403, 49.799995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542843, 34.479370, 49.670425>,  <35.208729, 34.520981, 49.454475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542843, 34.479370, 49.670425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548591, 0.223034, -0.805794,
		-0.036586, 0.969244, 0.243367,
		0.835290, -0.104029, 0.539879,
		35.793430, 34.448162, 49.832390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810722, 35.142132, 49.440498>,  <35.208729, 34.520981, 49.454475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810722, 35.142132, 49.440498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625591, 35.472919, 49.312805>,  <34.514511, 35.671391, 49.236187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625591, 35.472919, 49.312805>,  <34.810722, 35.142132, 49.440498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625591, 35.472919, 49.312805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408156, 0.120878, 0.904874,
		0.786892, 0.549099, 0.281586,
		-0.462828, 0.826970, -0.319236,
		34.486744, 35.721012, 49.217033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910408, 35.698490, 49.902588>,  <34.810722, 35.142132, 49.440498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910408, 35.698490, 49.902588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564060, 35.754284, 49.710415>,  <34.356251, 35.787762, 49.595112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564060, 35.754284, 49.710415>,  <34.910408, 35.698490, 49.902588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564060, 35.754284, 49.710415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495193, -0.102538, 0.862710,
		0.071076, 0.984900, 0.157859,
		-0.865870, 0.139489, -0.480428,
		34.304298, 35.796131, 49.566288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556995, 35.922787, 50.415691>,  <34.910408, 35.698490, 49.902588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556995, 35.922787, 50.415691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256329, 35.874794, 50.156277>,  <34.075928, 35.845997, 50.000629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256329, 35.874794, 50.156277>,  <34.556995, 35.922787, 50.415691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256329, 35.874794, 50.156277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655618, 0.028830, 0.754542,
		-0.071835, 0.992357, -0.100333,
		-0.751668, -0.119982, -0.648536,
		34.030827, 35.838799, 49.961716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025543, 36.474380, 50.522682>,  <34.556995, 35.922787, 50.415691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025543, 36.474380, 50.522682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844681, 36.160946, 50.352249>,  <33.736164, 35.972885, 50.249989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844681, 36.160946, 50.352249>,  <34.025543, 36.474380, 50.522682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844681, 36.160946, 50.352249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579276, -0.105261, 0.808307,
		-0.678229, 0.612300, -0.406319,
		-0.452156, -0.783588, -0.426081,
		33.709034, 35.925869, 50.224426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361488, 36.614883, 50.385181>,  <34.025543, 36.474380, 50.522682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361488, 36.614883, 50.385181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332214, 36.215965, 50.387726>,  <33.314651, 35.976612, 50.389252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332214, 36.215965, 50.387726>,  <33.361488, 36.614883, 50.385181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332214, 36.215965, 50.387726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654650, 0.052846, 0.754083,
		-0.752382, 0.051021, -0.656749,
		-0.073181, -0.997298, 0.006359,
		33.310261, 35.916775, 50.389633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592308, 36.465309, 50.461697>,  <33.361488, 36.614883, 50.385181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592308, 36.465309, 50.461697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773594, 36.118458, 50.544331>,  <32.882366, 35.910347, 50.593910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773594, 36.118458, 50.544331>,  <32.592308, 36.465309, 50.461697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773594, 36.118458, 50.544331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698431, -0.201435, 0.686744,
		-0.553884, -0.455530, -0.696925,
		0.453218, -0.867131, 0.206585,
		32.909561, 35.858318, 50.606308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047440, 35.968307, 50.542534>,  <32.592308, 36.465309, 50.461697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047440, 35.968307, 50.542534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367477, 35.852089, 50.752460>,  <32.559502, 35.782356, 50.878418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367477, 35.852089, 50.752460>,  <32.047440, 35.968307, 50.542534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367477, 35.852089, 50.752460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565315, -0.072526, 0.821681,
		-0.200675, -0.954108, -0.222279,
		0.800093, -0.290548, 0.524817,
		32.607506, 35.764927, 50.909904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031563, 35.083786, 50.395565>,  <32.047440, 35.968307, 50.542534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031563, 35.083786, 50.395565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762402, 34.788761, 50.372952>,  <31.600904, 34.611744, 50.359383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762402, 34.788761, 50.372952>,  <32.031563, 35.083786, 50.395565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762402, 34.788761, 50.372952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151379, -0.062490, -0.986498,
		0.724074, -0.672378, 0.153702,
		-0.672905, -0.737565, -0.056536,
		31.560530, 34.567493, 50.355991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293728, 34.354702, 50.116859>,  <32.031563, 35.083786, 50.395565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293728, 34.354702, 50.116859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898918, 34.350124, 50.052792>,  <31.662033, 34.347378, 50.014351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898918, 34.350124, 50.052792>,  <32.293728, 34.354702, 50.116859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898918, 34.350124, 50.052792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160176, -0.140697, -0.977010,
		-0.011355, -0.989987, 0.140704,
		-0.987023, -0.011443, -0.160170,
		31.602812, 34.346691, 50.004742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252190, 33.925186, 49.599834>,  <32.293728, 34.354702, 50.116859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252190, 33.925186, 49.599834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892679, 34.099239, 49.578453>,  <31.676973, 34.203671, 49.565624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892679, 34.099239, 49.578453>,  <32.252190, 33.925186, 49.599834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892679, 34.099239, 49.578453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125150, 0.137793, -0.982523,
		-0.420166, -0.889758, -0.178303,
		-0.898776, 0.435137, -0.053457,
		31.623047, 34.229782, 49.562416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911404, 33.608829, 49.062447>,  <32.252190, 33.925186, 49.599834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911404, 33.608829, 49.062447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.761446, 33.977089, 49.106007>,  <31.671471, 34.198044, 49.132141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.761446, 33.977089, 49.106007>,  <31.911404, 33.608829, 49.062447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761446, 33.977089, 49.106007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056775, 0.140045, -0.988516,
		-0.925327, -0.364408, -0.104772,
		-0.374896, 0.920649, 0.108899,
		31.648977, 34.253284, 49.138676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441322, 33.505722, 48.533394>,  <31.911404, 33.608829, 49.062447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441322, 33.505722, 48.533394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.454178, 33.895203, 48.623608>,  <31.461891, 34.128891, 48.677734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.454178, 33.895203, 48.623608>,  <31.441322, 33.505722, 48.533394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454178, 33.895203, 48.623608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133059, 0.219474, -0.966502,
		-0.990587, 0.061073, -0.122507,
		0.032140, 0.973705, 0.225534,
		31.463820, 34.187313, 48.691269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115639, 33.892303, 47.977978>,  <31.441322, 33.505722, 48.533394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115639, 33.892303, 47.977978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361794, 34.143299, 48.168793>,  <31.509485, 34.293896, 48.283283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361794, 34.143299, 48.168793>,  <31.115639, 33.892303, 47.977978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361794, 34.143299, 48.168793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410350, 0.261686, -0.873575,
		-0.672989, 0.733337, -0.096451,
		0.615385, 0.627484, 0.477037,
		31.546410, 34.331543, 48.311905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968445, 34.525528, 47.619774>,  <31.115639, 33.892303, 47.977978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968445, 34.525528, 47.619774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318750, 34.578735, 47.805393>,  <31.528934, 34.610661, 47.916763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318750, 34.578735, 47.805393>,  <30.968445, 34.525528, 47.619774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318750, 34.578735, 47.805393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316668, 0.567254, -0.760226,
		-0.364357, 0.812729, 0.454660,
		0.875766, 0.133017, 0.464048,
		31.581480, 34.618641, 47.944607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.092957, 28.781765, 52.285778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.299408, 29.116915, 52.356857>,  <33.423279, 29.318005, 52.399506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.299408, 29.116915, 52.356857>,  <33.092957, 28.781765, 52.285778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299408, 29.116915, 52.356857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427889, -0.072511, -0.900918,
		-0.741972, 0.541024, -0.395943,
		0.516128, 0.837876, 0.177697,
		33.454247, 29.368277, 52.410168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094215, 29.015648, 51.628773>,  <33.092957, 28.781765, 52.285778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094215, 29.015648, 51.628773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400932, 29.193884, 51.813587>,  <33.584961, 29.300825, 51.924477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400932, 29.193884, 51.813587>,  <33.094215, 29.015648, 51.628773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400932, 29.193884, 51.813587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520819, -0.011140, -0.853594,
		-0.375206, 0.895168, -0.240614,
		0.766791, 0.445590, 0.462041,
		33.630970, 29.327560, 51.952198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334599, 29.693649, 51.301754>,  <33.094215, 29.015648, 51.628773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334599, 29.693649, 51.301754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.658669, 29.559010, 51.493721>,  <33.853111, 29.478226, 51.608902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.658669, 29.559010, 51.493721>,  <33.334599, 29.693649, 51.301754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658669, 29.559010, 51.493721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518750, 0.030448, -0.854384,
		0.272972, 0.941156, 0.199279,
		0.810176, -0.336598, 0.479913,
		33.901722, 29.458031, 51.637695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882858, 30.187929, 51.282982>,  <33.334599, 29.693649, 51.301754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882858, 30.187929, 51.282982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043415, 29.828621, 51.354527>,  <34.139751, 29.613035, 51.397453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043415, 29.828621, 51.354527>,  <33.882858, 30.187929, 51.282982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043415, 29.828621, 51.354527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602284, 0.111743, -0.790422,
		0.690026, 0.424998, 0.585867,
		0.401394, -0.898271, 0.178864,
		34.163834, 29.559139, 51.408184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633652, 30.314442, 51.225044>,  <33.882858, 30.187929, 51.282982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633652, 30.314442, 51.225044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.550816, 29.925503, 51.181866>,  <34.501114, 29.692139, 51.155956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.550816, 29.925503, 51.181866>,  <34.633652, 30.314442, 51.225044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550816, 29.925503, 51.181866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433262, 0.007778, -0.901234,
		0.877153, -0.233410, 0.419671,
		-0.207093, -0.972347, -0.107950,
		34.488689, 29.633799, 51.149479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270729, 29.993004, 50.914707>,  <34.633652, 30.314442, 51.225044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270729, 29.993004, 50.914707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.009804, 29.703777, 50.823792>,  <34.853249, 29.530241, 50.769241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.009804, 29.703777, 50.823792>,  <35.270729, 29.993004, 50.914707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009804, 29.703777, 50.823792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365726, -0.037610, -0.929962,
		0.663876, -0.689754, 0.288978,
		-0.652313, -0.723066, -0.227292,
		34.814110, 29.486856, 50.755604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670532, 29.505707, 50.495937>,  <35.270729, 29.993004, 50.914707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670532, 29.505707, 50.495937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287521, 29.464806, 50.388088>,  <35.057716, 29.440266, 50.323380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287521, 29.464806, 50.388088>,  <35.670532, 29.505707, 50.495937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287521, 29.464806, 50.388088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272356, -0.013556, -0.962101,
		0.094723, -0.994666, 0.040830,
		-0.957523, -0.102254, -0.269619,
		35.000263, 29.434130, 50.307201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624283, 28.977665, 49.873161>,  <35.670532, 29.505707, 50.495937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624283, 28.977665, 49.873161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.276688, 29.175547, 49.868671>,  <35.068130, 29.294275, 49.865978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.276688, 29.175547, 49.868671>,  <35.624283, 28.977665, 49.873161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276688, 29.175547, 49.868671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107688, 0.166928, -0.980071,
		-0.482971, -0.852880, -0.198332,
		-0.868989, 0.494704, -0.011223,
		35.015991, 29.323957, 49.865303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355797, 28.854000, 49.212177>,  <35.624283, 28.977665, 49.873161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355797, 28.854000, 49.212177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156364, 29.180763, 49.328159>,  <35.036705, 29.376822, 49.397751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156364, 29.180763, 49.328159>,  <35.355797, 28.854000, 49.212177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156364, 29.180763, 49.328159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028768, 0.318723, -0.947411,
		-0.866365, -0.480704, -0.135409,
		-0.498583, 0.816908, 0.289959,
		35.006790, 29.425837, 49.415146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702740, 28.922709, 48.769485>,  <35.355797, 28.854000, 49.212177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702740, 28.922709, 48.769485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795254, 29.280708, 48.922054>,  <34.850761, 29.495508, 49.013596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795254, 29.280708, 48.922054>,  <34.702740, 28.922709, 48.769485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795254, 29.280708, 48.922054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094546, 0.410873, -0.906777,
		-0.968282, 0.173659, 0.179646,
		0.231281, 0.895001, 0.381422,
		34.864639, 29.549208, 49.036480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307472, 29.393230, 48.415146>,  <34.702740, 28.922709, 48.769485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307472, 29.393230, 48.415146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612896, 29.604265, 48.564083>,  <34.796150, 29.730886, 48.653446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612896, 29.604265, 48.564083>,  <34.307472, 29.393230, 48.415146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612896, 29.604265, 48.564083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029376, 0.547632, -0.836203,
		-0.645075, 0.649425, 0.402649,
		0.763555, 0.527585, 0.372341,
		34.841961, 29.762541, 48.675785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114044, 30.078712, 48.337914>,  <34.307472, 29.393230, 48.415146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114044, 30.078712, 48.337914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.512196, 30.100697, 48.369400>,  <34.751087, 30.113886, 48.388294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.512196, 30.100697, 48.369400>,  <34.114044, 30.078712, 48.337914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512196, 30.100697, 48.369400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039997, 0.508004, -0.860426,
		-0.087278, 0.859600, 0.503459,
		0.995381, 0.054959, 0.078719,
		34.810810, 30.117184, 48.393017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699093, 30.696787, 48.444019>,  <34.114044, 30.078712, 48.337914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699093, 30.696787, 48.444019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337696, 30.821758, 48.326653>,  <33.120857, 30.896742, 48.256233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337696, 30.821758, 48.326653>,  <33.699093, 30.696787, 48.444019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337696, 30.821758, 48.326653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217317, 0.256145, 0.941893,
		0.369433, 0.914756, -0.163529,
		-0.903489, 0.312428, -0.293421,
		33.066650, 30.915487, 48.238625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629623, 31.456579, 48.549408>,  <33.699093, 30.696787, 48.444019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629623, 31.456579, 48.549408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259174, 31.305698, 48.548309>,  <33.036903, 31.215170, 48.547649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259174, 31.305698, 48.548309>,  <33.629623, 31.456579, 48.549408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259174, 31.305698, 48.548309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087421, 0.207554, 0.974309,
		-0.366943, 0.902574, -0.225197,
		-0.926127, -0.377203, -0.002744,
		32.981335, 31.192537, 48.547485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179161, 31.969492, 48.821568>,  <33.629623, 31.456579, 48.549408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179161, 31.969492, 48.821568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985188, 31.625267, 48.883888>,  <32.868805, 31.418732, 48.921280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985188, 31.625267, 48.883888>,  <33.179161, 31.969492, 48.821568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985188, 31.625267, 48.883888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170270, 0.267641, 0.948355,
		-0.857816, 0.433360, -0.276316,
		-0.484932, -0.860562, 0.155798,
		32.839706, 31.367098, 48.930626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768631, 32.187317, 49.312828>,  <33.179161, 31.969492, 48.821568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768631, 32.187317, 49.312828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707008, 31.793795, 49.349472>,  <32.670036, 31.557682, 49.371460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707008, 31.793795, 49.349472>,  <32.768631, 32.187317, 49.312828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707008, 31.793795, 49.349472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346981, 0.140679, 0.927261,
		-0.925133, 0.111060, -0.363034,
		-0.154053, -0.983806, 0.091611,
		32.660793, 31.498653, 49.376957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031979, 32.020744, 49.579361>,  <32.768631, 32.187317, 49.312828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031979, 32.020744, 49.579361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269390, 31.712259, 49.671406>,  <32.411835, 31.527166, 49.726631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269390, 31.712259, 49.671406>,  <32.031979, 32.020744, 49.579361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269390, 31.712259, 49.671406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398427, -0.033136, 0.916601,
		-0.699274, -0.635709, -0.326941,
		0.593525, -0.771217, 0.230112,
		32.447449, 31.480894, 49.740440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506014, 31.719822, 49.995796>,  <32.031979, 32.020744, 49.579361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506014, 31.719822, 49.995796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.862328, 31.557295, 50.077194>,  <32.076115, 31.459780, 50.126034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.862328, 31.557295, 50.077194>,  <31.506014, 31.719822, 49.995796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862328, 31.557295, 50.077194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209835, 0.029431, 0.977294,
		-0.403080, -0.913258, -0.059042,
		0.890784, -0.406316, 0.203496,
		32.129562, 31.435400, 50.138245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328949, 31.220545, 50.443111>,  <31.506014, 31.719822, 49.995796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328949, 31.220545, 50.443111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.716846, 31.280617, 50.520096>,  <31.949585, 31.316660, 50.566288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.716846, 31.280617, 50.520096>,  <31.328949, 31.220545, 50.443111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716846, 31.280617, 50.520096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177922, -0.105026, 0.978424,
		0.167154, -0.983064, -0.075128,
		0.969744, 0.150180, 0.192465,
		32.007771, 31.325670, 50.577835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456371, 30.761564, 51.022316>,  <31.328949, 31.220545, 50.443111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456371, 30.761564, 51.022316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.777447, 30.999952, 51.013260>,  <31.970093, 31.142984, 51.007824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.777447, 30.999952, 51.013260>,  <31.456371, 30.761564, 51.022316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777447, 30.999952, 51.013260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107715, 0.182210, 0.977342,
		0.586592, -0.782061, 0.210452,
		0.802688, 0.595969, -0.022643,
		32.018253, 31.178743, 51.006466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891039, 30.559286, 51.511288>,  <31.456371, 30.761564, 51.022316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891039, 30.559286, 51.511288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.964401, 30.949675, 51.464230>,  <32.008419, 31.183908, 51.435993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.964401, 30.949675, 51.464230>,  <31.891039, 30.559286, 51.511288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964401, 30.949675, 51.464230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267682, 0.164736, 0.949320,
		0.945890, -0.142621, 0.291464,
		0.183408, 0.975972, -0.117645,
		32.019424, 31.242466, 51.428936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136086, 30.729778, 52.117298>,  <31.891039, 30.559286, 51.511288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136086, 30.729778, 52.117298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.001415, 31.062210, 51.940231>,  <31.920614, 31.261669, 51.833992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.001415, 31.062210, 51.940231>,  <32.136086, 30.729778, 52.117298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001415, 31.062210, 51.940231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608457, 0.166774, 0.775865,
		0.718632, 0.530558, 0.449529,
		-0.336671, 0.831081, -0.442671,
		31.900414, 31.311535, 51.807430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237461, 31.225027, 52.629513>,  <32.136086, 30.729778, 52.117298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237461, 31.225027, 52.629513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.950779, 31.345058, 52.377708>,  <31.778769, 31.417078, 52.226627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.950779, 31.345058, 52.377708>,  <32.237461, 31.225027, 52.629513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950779, 31.345058, 52.377708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627297, 0.116970, 0.769946,
		0.304677, 0.946716, 0.104405,
		-0.716708, 0.300078, -0.629510,
		31.735767, 31.435081, 52.188854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978994, 31.846664, 52.892536>,  <32.237461, 31.225027, 52.629513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978994, 31.846664, 52.892536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686417, 31.730635, 52.645687>,  <31.510870, 31.661016, 52.497578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686417, 31.730635, 52.645687>,  <31.978994, 31.846664, 52.892536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686417, 31.730635, 52.645687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676050, 0.190204, 0.711884,
		-0.089121, 0.937912, -0.335229,
		-0.731446, -0.290076, -0.617124,
		31.466982, 31.643612, 52.460548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435308, 32.186382, 53.202705>,  <31.978994, 31.846664, 52.892536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435308, 32.186382, 53.202705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.230583, 31.976210, 52.930832>,  <31.107748, 31.850107, 52.767708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.230583, 31.976210, 52.930832>,  <31.435308, 32.186382, 53.202705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230583, 31.976210, 52.930832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822534, 0.071353, 0.564222,
		-0.247960, 0.847841, -0.468702,
		-0.511814, -0.525428, -0.679685,
		31.077040, 31.818581, 52.726925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814537, 32.591400, 52.893795>,  <31.435308, 32.186382, 53.202705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814537, 32.591400, 52.893795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.726645, 32.203106, 52.855049>,  <30.673908, 31.970129, 52.831802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.726645, 32.203106, 52.855049>,  <30.814537, 32.591400, 52.893795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726645, 32.203106, 52.855049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882353, 0.155402, 0.444188,
		-0.416137, 0.183072, -0.890682,
		-0.219732, -0.970739, -0.096866,
		30.660725, 31.911884, 52.825989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930479, 33.222351, 53.221546>,  <30.814537, 32.591400, 52.893795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930479, 33.222351, 53.221546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.751205, 33.577965, 53.184120>,  <30.643641, 33.791332, 53.161667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.751205, 33.577965, 53.184120>,  <30.930479, 33.222351, 53.221546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751205, 33.577965, 53.184120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172870, -0.016492, -0.984807,
		-0.877067, -0.457549, -0.146295,
		-0.448185, 0.889031, -0.093561,
		30.616751, 33.844673, 53.156052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562496, 33.282238, 52.473850>,  <30.930479, 33.222351, 53.221546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562496, 33.282238, 52.473850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566462, 33.667419, 52.581638>,  <30.568842, 33.898529, 52.646309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566462, 33.667419, 52.581638>,  <30.562496, 33.282238, 52.473850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566462, 33.667419, 52.581638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050418, 0.269620, -0.961646,
		-0.998679, -0.004051, 0.051224,
		0.009915, 0.962958, 0.269468,
		30.569437, 33.956306, 52.662479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052221, 33.566109, 52.035000>,  <30.562496, 33.282238, 52.473850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052221, 33.566109, 52.035000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300962, 33.860729, 52.141426>,  <30.450207, 34.037502, 52.205280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300962, 33.860729, 52.141426>,  <30.052221, 33.566109, 52.035000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300962, 33.860729, 52.141426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093347, 0.267605, -0.958996,
		-0.777553, 0.621189, 0.097656,
		0.621851, 0.736554, 0.266063,
		30.487518, 34.081696, 52.221245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751953, 34.076622, 51.638107>,  <30.052221, 33.566109, 52.035000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751953, 34.076622, 51.638107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.135057, 34.159626, 51.717743>,  <30.364920, 34.209427, 51.765526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.135057, 34.159626, 51.717743>,  <29.751953, 34.076622, 51.638107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135057, 34.159626, 51.717743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109515, 0.376950, -0.919736,
		-0.265896, 0.902690, 0.338303,
		0.957761, 0.207505, 0.199088,
		30.422386, 34.221878, 51.777470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874138, 34.684872, 51.248470>,  <29.751953, 34.076622, 51.638107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874138, 34.684872, 51.248470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.236921, 34.538261, 51.331501>,  <30.454592, 34.450294, 51.381317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.236921, 34.538261, 51.331501>,  <29.874138, 34.684872, 51.248470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236921, 34.538261, 51.331501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346861, 0.370269, -0.861736,
		0.238991, 0.853556, 0.462952,
		0.906957, -0.366527, 0.207574,
		30.509008, 34.428303, 51.393772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315947, 35.197094, 50.935139>,  <29.874138, 34.684872, 51.248470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315947, 35.197094, 50.935139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536264, 34.866776, 50.983612>,  <30.668455, 34.668583, 51.012695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536264, 34.866776, 50.983612>,  <30.315947, 35.197094, 50.935139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536264, 34.866776, 50.983612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477747, 0.192882, -0.857062,
		0.684385, 0.529959, 0.500760,
		0.550795, -0.825797, 0.121181,
		30.701504, 34.619038, 51.019966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075167, 35.404751, 50.883400>,  <30.315947, 35.197094, 50.935139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075167, 35.404751, 50.883400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.024086, 35.018551, 50.792618>,  <30.993439, 34.786831, 50.738148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.024086, 35.018551, 50.792618>,  <31.075167, 35.404751, 50.883400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024086, 35.018551, 50.792618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378752, 0.164015, -0.910849,
		0.916646, -0.202276, 0.344739,
		-0.127700, -0.965496, -0.226956,
		30.985775, 34.728901, 50.724529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783535, 35.495678, 51.079517>,  <31.075167, 35.404751, 50.883400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783535, 35.495678, 51.079517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.143978, 35.611813, 51.208332>,  <32.360245, 35.681496, 51.285622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.143978, 35.611813, 51.208332>,  <31.783535, 35.495678, 51.079517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143978, 35.611813, 51.208332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350040, 0.048814, 0.935462,
		0.255881, -0.955678, 0.145617,
		0.901109, 0.290339, 0.322035,
		32.414310, 35.698914, 51.304943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861868, 35.160412, 51.753025>,  <31.783535, 35.495678, 51.079517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861868, 35.160412, 51.753025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.113464, 35.471371, 51.755131>,  <32.264423, 35.657944, 51.756393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.113464, 35.471371, 51.755131>,  <31.861868, 35.160412, 51.753025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113464, 35.471371, 51.755131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192936, 0.149535, 0.969750,
		0.753090, -0.610982, 0.244043,
		0.628993, 0.777393, 0.005267,
		32.302162, 35.704590, 51.756710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390289, 35.033428, 52.212383>,  <31.861868, 35.160412, 51.753025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390289, 35.033428, 52.212383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.375885, 35.431068, 52.171452>,  <32.367241, 35.669651, 52.146893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.375885, 35.431068, 52.171452>,  <32.390289, 35.033428, 52.212383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375885, 35.431068, 52.171452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156912, 0.095503, 0.982984,
		0.986956, 0.051459, 0.152546,
		-0.036015, 0.994098, -0.102331,
		32.365082, 35.729298, 52.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451370, 35.232502, 52.849609>,  <32.390289, 35.033428, 52.212383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451370, 35.232502, 52.849609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.392487, 35.604912, 52.716026>,  <32.357159, 35.828358, 52.635876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.392487, 35.604912, 52.716026>,  <32.451370, 35.232502, 52.849609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392487, 35.604912, 52.716026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236848, 0.294629, 0.925795,
		0.960330, 0.215380, 0.177140,
		-0.147207, 0.931024, -0.333954,
		32.348324, 35.884220, 52.615841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001534, 35.744835, 53.169758>,  <32.451370, 35.232502, 52.849609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001534, 35.744835, 53.169758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665333, 35.926075, 53.050919>,  <32.463612, 36.034817, 52.979614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665333, 35.926075, 53.050919>,  <33.001534, 35.744835, 53.169758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665333, 35.926075, 53.050919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185450, 0.274639, 0.943494,
		0.509088, 0.848102, -0.146807,
		-0.840499, 0.453096, -0.297096,
		32.413185, 36.062004, 52.961788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981289, 36.438370, 53.418056>,  <33.001534, 35.744835, 53.169758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981289, 36.438370, 53.418056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595329, 36.379055, 53.331348>,  <32.363754, 36.343468, 53.279324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595329, 36.379055, 53.331348>,  <32.981289, 36.438370, 53.418056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595329, 36.379055, 53.331348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249233, 0.256656, 0.933815,
		-0.082832, 0.955060, -0.284603,
		-0.964895, -0.148282, -0.216774,
		32.305862, 36.334572, 53.266315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578636, 37.043083, 53.813587>,  <32.981289, 36.438370, 53.418056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578636, 37.043083, 53.813587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305489, 36.758976, 53.745224>,  <32.141598, 36.588512, 53.704208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305489, 36.758976, 53.745224>,  <32.578636, 37.043083, 53.813587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305489, 36.758976, 53.745224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373324, 0.138191, 0.917351,
		-0.627947, 0.690235, -0.359526,
		-0.682871, -0.710267, -0.170904,
		32.100628, 36.545895, 53.693954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964563, 37.294769, 53.978176>,  <32.578636, 37.043083, 53.813587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964563, 37.294769, 53.978176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935339, 36.897831, 54.017986>,  <31.917805, 36.659668, 54.041874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935339, 36.897831, 54.017986>,  <31.964563, 37.294769, 53.978176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935339, 36.897831, 54.017986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372585, 0.119728, 0.920242,
		-0.925118, 0.030149, -0.378481,
		-0.073059, -0.992349, 0.099530,
		31.913422, 36.600128, 54.047844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387604, 37.337940, 54.256874>,  <31.964563, 37.294769, 53.978176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387604, 37.337940, 54.256874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520775, 36.966572, 54.322845>,  <31.600677, 36.743752, 54.362427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520775, 36.966572, 54.322845>,  <31.387604, 37.337940, 54.256874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520775, 36.966572, 54.322845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398868, 0.019827, 0.916794,
		-0.854438, -0.371008, -0.363715,
		0.332927, -0.928418, 0.164924,
		31.620653, 36.688046, 54.372322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.326729, 38.124149, 39.400845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532291, 37.799252, 39.511238>,  <37.655628, 37.604313, 39.577473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532291, 37.799252, 39.511238>,  <37.326729, 38.124149, 39.400845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532291, 37.799252, 39.511238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689807, -0.200018, 0.695816,
		-0.509969, -0.547958, -0.663079,
		0.513905, -0.812241, 0.275982,
		37.686462, 37.555580, 39.594032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855267, 37.616165, 39.329151>,  <37.326729, 38.124149, 39.400845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855267, 37.616165, 39.329151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132416, 37.531719, 39.604935>,  <37.298706, 37.481052, 39.770405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132416, 37.531719, 39.604935>,  <36.855267, 37.616165, 39.329151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132416, 37.531719, 39.604935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721025, -0.193486, 0.665347,
		-0.007064, -0.958120, -0.286280,
		0.692873, -0.211115, 0.689462,
		37.340279, 37.468384, 39.811771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635769, 36.988850, 39.725975>,  <36.855267, 37.616165, 39.329151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635769, 36.988850, 39.725975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915226, 37.131210, 39.974247>,  <37.082901, 37.216625, 40.123211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915226, 37.131210, 39.974247>,  <36.635769, 36.988850, 39.725975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915226, 37.131210, 39.974247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557575, -0.272783, 0.784028,
		0.448346, -0.893825, 0.007865,
		0.698639, 0.355901, 0.620676,
		37.124817, 37.237980, 40.160450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767879, 36.432259, 40.239693>,  <36.635769, 36.988850, 39.725975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767879, 36.432259, 40.239693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887127, 36.772873, 40.412209>,  <36.958675, 36.977242, 40.515717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887127, 36.772873, 40.412209>,  <36.767879, 36.432259, 40.239693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887127, 36.772873, 40.412209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273235, -0.356798, 0.893329,
		0.914587, -0.384158, 0.126304,
		0.298115, 0.851538, 0.431288,
		36.976562, 37.028336, 40.541595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868092, 36.179214, 40.942898>,  <36.767879, 36.432259, 40.239693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868092, 36.179214, 40.942898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862049, 36.578918, 40.957001>,  <36.858425, 36.818741, 40.965462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862049, 36.578918, 40.957001>,  <36.868092, 36.179214, 40.942898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862049, 36.578918, 40.957001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228584, -0.037775, 0.972791,
		0.973407, 0.006633, 0.228986,
		-0.015102, 0.999264, 0.035255,
		36.857517, 36.878696, 40.967579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192287, 36.350212, 41.577263>,  <36.868092, 36.179214, 40.942898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192287, 36.350212, 41.577263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955357, 36.647972, 41.453968>,  <36.813198, 36.826630, 41.379990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955357, 36.647972, 41.453968>,  <37.192287, 36.350212, 41.577263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955357, 36.647972, 41.453968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343462, 0.112774, 0.932371,
		0.728822, 0.658137, 0.188876,
		-0.592327, 0.744404, -0.308238,
		36.777660, 36.871292, 41.361496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140709, 36.813301, 42.178818>,  <37.192287, 36.350212, 41.577263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140709, 36.813301, 42.178818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822094, 36.890347, 41.949581>,  <36.630924, 36.936573, 41.812038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822094, 36.890347, 41.949581>,  <37.140709, 36.813301, 42.178818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822094, 36.890347, 41.949581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589265, -0.035259, 0.807170,
		0.135265, 0.980641, 0.141585,
		-0.796536, 0.192613, -0.573088,
		36.583134, 36.948132, 41.777653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810146, 37.388439, 42.571976>,  <37.140709, 36.813301, 42.178818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810146, 37.388439, 42.571976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553101, 37.222961, 42.314014>,  <36.398872, 37.123676, 42.159237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553101, 37.222961, 42.314014>,  <36.810146, 37.388439, 42.571976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553101, 37.222961, 42.314014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708056, -0.000946, 0.706156,
		-0.292742, 0.910416, -0.292311,
		-0.642619, -0.413694, -0.644902,
		36.360313, 37.098854, 42.120544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252224, 37.884960, 42.425911>,  <36.810146, 37.388439, 42.571976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252224, 37.884960, 42.425911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109768, 37.514732, 42.374546>,  <36.024296, 37.292595, 42.343727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109768, 37.514732, 42.374546>,  <36.252224, 37.884960, 42.425911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109768, 37.514732, 42.374546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582072, 0.112232, 0.805355,
		-0.730998, 0.361564, -0.578717,
		-0.356138, -0.925567, -0.128415,
		36.002926, 37.237061, 42.336021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495739, 37.998444, 42.387844>,  <36.252224, 37.884960, 42.425911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495739, 37.998444, 42.387844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561867, 37.613068, 42.472187>,  <35.601543, 37.381844, 42.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561867, 37.613068, 42.472187>,  <35.495739, 37.998444, 42.387844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561867, 37.613068, 42.472187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667314, 0.048152, 0.743218,
		-0.726197, -0.263575, -0.634954,
		0.165319, -0.963437, 0.210855,
		35.611462, 37.324036, 42.535442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838039, 37.719891, 42.533821>,  <35.495739, 37.998444, 42.387844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838039, 37.719891, 42.533821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092709, 37.451675, 42.686150>,  <35.245510, 37.290745, 42.777546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092709, 37.451675, 42.686150>,  <34.838039, 37.719891, 42.533821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092709, 37.451675, 42.686150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581946, -0.093769, 0.807803,
		-0.505954, -0.735924, -0.449918,
		0.636671, -0.670539, 0.380825,
		35.283710, 37.250515, 42.800396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371372, 37.261024, 42.925053>,  <34.838039, 37.719891, 42.533821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371372, 37.261024, 42.925053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733250, 37.158207, 43.060966>,  <34.950375, 37.096516, 43.142517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733250, 37.158207, 43.060966>,  <34.371372, 37.261024, 42.925053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733250, 37.158207, 43.060966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369702, -0.077197, 0.925938,
		-0.211779, -0.963311, -0.164870,
		0.904694, -0.257047, 0.339789,
		35.004658, 37.081093, 43.162903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134514, 36.718266, 42.519650>,  <34.371372, 37.261024, 42.925053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134514, 36.718266, 42.519650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816311, 36.478611, 42.483414>,  <33.625389, 36.334816, 42.461674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816311, 36.478611, 42.483414>,  <34.134514, 36.718266, 42.519650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816311, 36.478611, 42.483414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007281, 0.158936, -0.987262,
		0.605906, -0.784710, -0.130797,
		-0.795503, -0.599140, -0.090587,
		33.577660, 36.298870, 42.456238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334991, 36.228642, 42.025799>,  <34.134514, 36.718266, 42.519650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334991, 36.228642, 42.025799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935356, 36.244728, 42.031429>,  <33.695576, 36.254379, 42.034809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935356, 36.244728, 42.031429>,  <34.334991, 36.228642, 42.025799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935356, 36.244728, 42.031429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004451, 0.230072, -0.973163,
		-0.042378, -0.972342, -0.229684,
		-0.999092, 0.040218, 0.014078,
		33.635628, 36.256794, 42.035652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134789, 35.667942, 41.546539>,  <34.334991, 36.228642, 42.025799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134789, 35.667942, 41.546539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822990, 35.917759, 41.565876>,  <33.635910, 36.067650, 41.577480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822990, 35.917759, 41.565876>,  <34.134789, 35.667942, 41.546539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822990, 35.917759, 41.565876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179401, -0.148635, -0.972483,
		-0.600168, -0.766719, 0.227903,
		-0.779495, 0.624540, 0.048344,
		33.589142, 36.105122, 41.580379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537964, 35.267967, 41.241966>,  <34.134789, 35.667942, 41.546539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537964, 35.267967, 41.241966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439362, 35.655159, 41.222980>,  <33.380199, 35.887474, 41.211590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439362, 35.655159, 41.222980>,  <33.537964, 35.267967, 41.241966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439362, 35.655159, 41.222980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375075, -0.140444, -0.916294,
		-0.893620, -0.208065, 0.397684,
		-0.246501, 0.967980, -0.047464,
		33.365410, 35.945553, 41.208740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910053, 35.313671, 40.964439>,  <33.537964, 35.267967, 41.241966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910053, 35.313671, 40.964439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999477, 35.695801, 40.887108>,  <33.053131, 35.925079, 40.840710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999477, 35.695801, 40.887108>,  <32.910053, 35.313671, 40.964439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999477, 35.695801, 40.887108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475167, -0.066360, -0.877390,
		-0.851022, 0.288011, 0.439104,
		0.223559, 0.955325, -0.193327,
		33.066544, 35.982399, 40.829109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386593, 35.444813, 40.512188>,  <32.910053, 35.313671, 40.964439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386593, 35.444813, 40.512188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649597, 35.741020, 40.456604>,  <32.807400, 35.918743, 40.423256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649597, 35.741020, 40.456604>,  <32.386593, 35.444813, 40.512188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649597, 35.741020, 40.456604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298280, 0.086474, -0.950553,
		-0.691886, 0.666450, 0.277740,
		0.657513, 0.740518, -0.138958,
		32.846851, 35.963177, 40.414917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050659, 36.049255, 40.372433>,  <32.386593, 35.444813, 40.512188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050659, 36.049255, 40.372433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409351, 36.107998, 40.205429>,  <32.624565, 36.143246, 40.105228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409351, 36.107998, 40.205429>,  <32.050659, 36.049255, 40.372433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409351, 36.107998, 40.205429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400462, -0.132417, -0.906695,
		-0.188442, 0.980254, -0.059931,
		0.896727, 0.146859, -0.417508,
		32.678368, 36.152054, 40.080177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803951, 36.404861, 39.743359>,  <32.050659, 36.049255, 40.372433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803951, 36.404861, 39.743359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191940, 36.322857, 39.691021>,  <32.424736, 36.273655, 39.659618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191940, 36.322857, 39.691021>,  <31.803951, 36.404861, 39.743359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191940, 36.322857, 39.691021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111772, 0.102049, -0.988480,
		0.216000, 0.973425, 0.076071,
		0.969975, -0.205009, -0.130845,
		32.482933, 36.261353, 39.651768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916117, 36.976421, 39.391251>,  <31.803951, 36.404861, 39.743359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916117, 36.976421, 39.391251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177605, 36.682831, 39.317566>,  <32.334499, 36.506676, 39.273357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177605, 36.682831, 39.317566>,  <31.916117, 36.976421, 39.391251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177605, 36.682831, 39.317566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171279, 0.093594, -0.980767,
		0.737097, 0.672699, -0.064530,
		0.653721, -0.733973, -0.184207,
		32.373722, 36.462639, 39.262302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232231, 37.181084, 38.808716>,  <31.916117, 36.976421, 39.391251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232231, 37.181084, 38.808716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270077, 36.783951, 38.837902>,  <32.292786, 36.545670, 38.855415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270077, 36.783951, 38.837902>,  <32.232231, 37.181084, 38.808716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270077, 36.783951, 38.837902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215052, -0.091951, -0.972264,
		0.972008, 0.076303, -0.222211,
		0.094619, -0.992836, 0.072968,
		32.298462, 36.486099, 38.859791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631794, 36.953503, 38.218109>,  <32.232231, 37.181084, 38.808716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631794, 36.953503, 38.218109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433823, 36.633732, 38.354324>,  <32.315041, 36.441872, 38.436054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433823, 36.633732, 38.354324>,  <32.631794, 36.953503, 38.218109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433823, 36.633732, 38.354324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320569, -0.196276, -0.926667,
		0.807639, -0.567800, -0.159128,
		-0.494929, -0.799424, 0.340540,
		32.285343, 36.393906, 38.456486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646969, 36.459152, 37.666569>,  <32.631794, 36.953503, 38.218109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646969, 36.459152, 37.666569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351784, 36.339764, 37.908669>,  <32.174671, 36.268131, 38.053928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351784, 36.339764, 37.908669>,  <32.646969, 36.459152, 37.666569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351784, 36.339764, 37.908669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556006, -0.239367, -0.795965,
		0.382448, -0.923915, 0.010693,
		-0.737964, -0.298470, 0.605248,
		32.130394, 36.250221, 38.090244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356121, 35.781078, 37.417782>,  <32.646969, 36.459152, 37.666569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356121, 35.781078, 37.417782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056244, 35.916840, 37.645031>,  <31.876318, 35.998295, 37.781380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056244, 35.916840, 37.645031>,  <32.356121, 35.781078, 37.417782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056244, 35.916840, 37.645031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618267, -0.053030, -0.784177,
		-0.236025, -0.939145, 0.249598,
		-0.749692, 0.339404, 0.568126,
		31.831337, 36.018661, 37.815468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784584, 35.342419, 37.332134>,  <32.356121, 35.781078, 37.417782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784584, 35.342419, 37.332134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625687, 35.674530, 37.488510>,  <31.530348, 35.873798, 37.582336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625687, 35.674530, 37.488510>,  <31.784584, 35.342419, 37.332134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625687, 35.674530, 37.488510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621183, 0.070301, -0.780506,
		-0.675520, -0.552898, 0.487828,
		-0.397245, 0.830278, 0.390940,
		31.506514, 35.923615, 37.605793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336716, 34.750576, 37.497894>,  <31.784584, 35.342419, 37.332134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336716, 34.750576, 37.497894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474453, 34.377075, 37.536957>,  <32.557095, 34.152977, 37.560394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474453, 34.377075, 37.536957>,  <32.336716, 34.750576, 37.497894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474453, 34.377075, 37.536957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410711, -0.056288, 0.910027,
		-0.844241, -0.353473, -0.402884,
		0.344347, -0.933750, 0.097655,
		32.577759, 34.096951, 37.566254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927507, 34.550774, 38.019661>,  <32.336716, 34.750576, 37.497894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927507, 34.550774, 38.019661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161152, 34.226707, 37.999920>,  <32.301338, 34.032265, 37.988075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161152, 34.226707, 37.999920>,  <31.927507, 34.550774, 38.019661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161152, 34.226707, 37.999920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299091, -0.271367, 0.914825,
		-0.754557, -0.519600, -0.400824,
		0.584113, -0.810171, -0.049354,
		32.336388, 33.983658, 37.985115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610964, 33.928867, 38.062164>,  <31.927507, 34.550774, 38.019661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610964, 33.928867, 38.062164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982698, 33.832016, 38.173668>,  <32.205738, 33.773907, 38.240570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982698, 33.832016, 38.173668>,  <31.610964, 33.928867, 38.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982698, 33.832016, 38.173668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352546, -0.357481, 0.864823,
		-0.109746, -0.901988, -0.417582,
		0.929337, -0.242127, 0.278760,
		32.261501, 33.759377, 38.257298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558998, 33.219158, 38.349060>,  <31.610964, 33.928867, 38.062164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558998, 33.219158, 38.349060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903685, 33.358162, 38.496944>,  <32.110497, 33.441563, 38.585674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903685, 33.358162, 38.496944>,  <31.558998, 33.219158, 38.349060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903685, 33.358162, 38.496944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134744, -0.545765, 0.827034,
		0.489176, -0.762483, -0.423469,
		0.861714, 0.347505, 0.369715,
		32.162197, 33.462414, 38.607861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010159, 32.610275, 38.673328>,  <31.558998, 33.219158, 38.349060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010159, 32.610275, 38.673328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150093, 32.937138, 38.856571>,  <32.234055, 33.133255, 38.966518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150093, 32.937138, 38.856571>,  <32.010159, 32.610275, 38.673328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150093, 32.937138, 38.856571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026296, -0.480250, 0.876738,
		0.936440, -0.318765, -0.146523,
		0.349840, 0.817160, 0.458107,
		32.255047, 33.182285, 38.994003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384869, 32.387814, 39.155830>,  <32.010159, 32.610275, 38.673328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384869, 32.387814, 39.155830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359989, 32.768272, 39.276794>,  <32.345062, 32.996548, 39.349373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359989, 32.768272, 39.276794>,  <32.384869, 32.387814, 39.155830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359989, 32.768272, 39.276794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049862, -0.305583, 0.950859,
		0.996817, 0.044066, 0.066434,
		-0.062202, 0.951145, 0.302414,
		32.341328, 33.053616, 39.367519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798458, 32.347031, 39.717449>,  <32.384869, 32.387814, 39.155830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798458, 32.347031, 39.717449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567513, 32.672546, 39.743980>,  <32.428944, 32.867855, 39.759899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567513, 32.672546, 39.743980>,  <32.798458, 32.347031, 39.717449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567513, 32.672546, 39.743980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023768, -0.097959, 0.994907,
		0.816140, 0.572847, 0.075900,
		-0.577365, 0.813788, 0.066333,
		32.394302, 32.916683, 39.763882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181740, 32.730927, 40.129532>,  <32.798458, 32.347031, 39.717449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181740, 32.730927, 40.129532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796970, 32.837753, 40.152748>,  <32.566109, 32.901852, 40.166679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796970, 32.837753, 40.152748>,  <33.181740, 32.730927, 40.129532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796970, 32.837753, 40.152748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019046, -0.146350, 0.989049,
		0.272640, 0.952499, 0.135691,
		-0.961928, 0.267070, 0.058042,
		32.508392, 32.917873, 40.170162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195244, 33.271904, 40.531681>,  <33.181740, 32.730927, 40.129532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195244, 33.271904, 40.531681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825809, 33.119427, 40.548107>,  <32.604149, 33.027939, 40.557964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825809, 33.119427, 40.548107>,  <33.195244, 33.271904, 40.531681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825809, 33.119427, 40.548107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067569, -0.056395, 0.996120,
		-0.377398, 0.922774, 0.077843,
		-0.923583, -0.381193, 0.041067,
		32.548737, 33.005070, 40.560429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986202, 33.597160, 41.127243>,  <33.195244, 33.271904, 40.531681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986202, 33.597160, 41.127243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716045, 33.306118, 41.079197>,  <32.553951, 33.131493, 41.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716045, 33.306118, 41.079197>,  <32.986202, 33.597160, 41.127243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716045, 33.306118, 41.079197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010628, -0.153252, 0.988130,
		-0.737380, 0.668654, 0.095773,
		-0.675394, -0.727610, -0.120111,
		32.513428, 33.087833, 41.043163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399372, 33.651875, 41.597107>,  <32.986202, 33.597160, 41.127243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399372, 33.651875, 41.597107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404686, 33.260807, 41.513218>,  <32.407875, 33.026165, 41.462887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404686, 33.260807, 41.513218>,  <32.399372, 33.651875, 41.597107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404686, 33.260807, 41.513218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005681, -0.209660, 0.977758,
		-0.999896, -0.014181, 0.002769,
		0.013285, -0.977672, -0.209719,
		32.408672, 32.967506, 41.450302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799274, 33.351879, 41.935425>,  <32.399372, 33.651875, 41.597107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799274, 33.351879, 41.935425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052490, 33.054821, 41.848026>,  <32.204418, 32.876587, 41.795586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052490, 33.054821, 41.848026>,  <31.799274, 33.351879, 41.935425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052490, 33.054821, 41.848026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167758, -0.407153, 0.897822,
		-0.755725, -0.531701, -0.382327,
		0.633038, -0.742645, -0.218498,
		32.242401, 32.832027, 41.782478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478041, 32.809944, 42.307674>,  <31.799274, 33.351879, 41.935425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478041, 32.809944, 42.307674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842363, 32.680542, 42.205086>,  <32.060955, 32.602901, 42.143532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842363, 32.680542, 42.205086>,  <31.478041, 32.809944, 42.307674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842363, 32.680542, 42.205086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011648, -0.600859, 0.799270,
		-0.412672, -0.730966, -0.543498,
		0.910805, -0.323506, -0.256472,
		32.115604, 32.583488, 42.128143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422695, 32.087097, 42.412334>,  <31.478041, 32.809944, 42.307674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422695, 32.087097, 42.412334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813498, 32.172382, 42.412746>,  <32.047977, 32.223553, 42.412994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813498, 32.172382, 42.412746>,  <31.422695, 32.087097, 42.412334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813498, 32.172382, 42.412746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095761, -0.443128, 0.891329,
		0.190503, -0.870734, -0.453356,
		0.977005, 0.213215, 0.001035,
		32.106598, 32.236347, 42.413055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864374, 31.465626, 42.586990>,  <31.422695, 32.087097, 42.412334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864374, 31.465626, 42.586990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130379, 31.759644, 42.639858>,  <32.289982, 31.936054, 42.671581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130379, 31.759644, 42.639858>,  <31.864374, 31.465626, 42.586990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130379, 31.759644, 42.639858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283735, -0.412371, 0.865705,
		0.690835, -0.538203, -0.482789,
		0.665013, 0.735043, 0.132173,
		32.329884, 31.980156, 42.679512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532463, 31.137159, 42.703110>,  <31.864374, 31.465626, 42.586990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532463, 31.137159, 42.703110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532661, 31.505030, 42.860180>,  <32.532780, 31.725752, 42.954422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532661, 31.505030, 42.860180>,  <32.532463, 31.137159, 42.703110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532661, 31.505030, 42.860180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202233, -0.384653, 0.900635,
		0.979337, 0.078963, -0.186181,
		0.000498, 0.919678, 0.392674,
		32.532810, 31.780933, 42.977982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050968, 31.130386, 43.137054>,  <32.532463, 31.137159, 42.703110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050968, 31.130386, 43.137054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815693, 31.426634, 43.266991>,  <32.674530, 31.604382, 43.344952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815693, 31.426634, 43.266991>,  <33.050968, 31.130386, 43.137054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815693, 31.426634, 43.266991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255344, -0.211050, 0.943534,
		0.767357, 0.637920, -0.064975,
		-0.588187, 0.740618, 0.324840,
		32.639236, 31.648819, 43.364441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492474, 31.370012, 43.642994>,  <33.050968, 31.130386, 43.137054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492474, 31.370012, 43.642994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114319, 31.482944, 43.708153>,  <32.887428, 31.550705, 43.747250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114319, 31.482944, 43.708153>,  <33.492474, 31.370012, 43.642994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114319, 31.482944, 43.708153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087617, -0.261247, 0.961287,
		0.313959, 0.923059, 0.222242,
		-0.945385, 0.282332, 0.162896,
		32.830704, 31.567644, 43.757023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590530, 31.763023, 44.205898>,  <33.492474, 31.370012, 43.642994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590530, 31.763023, 44.205898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194374, 31.713673, 44.180901>,  <32.956680, 31.684061, 44.165901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194374, 31.713673, 44.180901>,  <33.590530, 31.763023, 44.205898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194374, 31.713673, 44.180901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048675, -0.112035, 0.992511,
		-0.129457, 0.986015, 0.104953,
		-0.990390, -0.123379, -0.062498,
		32.897259, 31.676659, 44.162151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355938, 32.179459, 44.710205>,  <33.590530, 31.763023, 44.205898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355938, 32.179459, 44.710205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065536, 31.909067, 44.659657>,  <32.891296, 31.746832, 44.629330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065536, 31.909067, 44.659657>,  <33.355938, 32.179459, 44.710205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065536, 31.909067, 44.659657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012516, -0.196717, 0.980381,
		-0.687574, 0.710181, 0.151278,
		-0.726007, -0.675977, -0.126369,
		32.847736, 31.706274, 44.621746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845230, 32.348351, 45.078945>,  <33.355938, 32.179459, 44.710205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845230, 32.348351, 45.078945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772812, 31.957253, 45.036545>,  <32.729362, 31.722593, 45.011105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772812, 31.957253, 45.036545>,  <32.845230, 32.348351, 45.078945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772812, 31.957253, 45.036545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169752, -0.075094, 0.982622,
		-0.968715, 0.195890, -0.152379,
		-0.181043, -0.977746, -0.105998,
		32.718498, 31.663929, 45.004745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304794, 32.120071, 45.676388>,  <32.845230, 32.348351, 45.078945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304794, 32.120071, 45.676388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497746, 31.790659, 45.556992>,  <32.613518, 31.593010, 45.485355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497746, 31.790659, 45.556992>,  <32.304794, 32.120071, 45.676388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497746, 31.790659, 45.556992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057521, -0.310243, 0.948915,
		-0.874070, -0.474910, -0.102285,
		0.482383, -0.823535, -0.298491,
		32.642460, 31.543598, 45.467445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983477, 31.621649, 46.037537>,  <32.304794, 32.120071, 45.676388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983477, 31.621649, 46.037537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336517, 31.463638, 45.935577>,  <32.548340, 31.368832, 45.874401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336517, 31.463638, 45.935577>,  <31.983477, 31.621649, 46.037537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336517, 31.463638, 45.935577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101930, -0.368507, 0.924020,
		-0.458943, -0.841521, -0.284979,
		0.882599, -0.395025, -0.254900,
		32.601295, 31.345131, 45.859108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888758, 30.852119, 46.127834>,  <31.983477, 31.621649, 46.037537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888758, 30.852119, 46.127834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272404, 30.962889, 46.151203>,  <32.502590, 31.029350, 46.165226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272404, 30.962889, 46.151203>,  <31.888758, 30.852119, 46.127834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272404, 30.962889, 46.151203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082065, -0.469680, 0.879014,
		0.270861, -0.838280, -0.473202,
		0.959114, 0.276924, 0.058424,
		32.560139, 31.045965, 46.168732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024555, 30.487520, 46.703983>,  <31.888758, 30.852119, 46.127834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024555, 30.487520, 46.703983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350044, 30.707018, 46.627319>,  <32.545338, 30.838717, 46.581322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350044, 30.707018, 46.627319>,  <32.024555, 30.487520, 46.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350044, 30.707018, 46.627319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320192, -0.147980, 0.935724,
		0.485111, -0.822788, -0.296119,
		0.813722, 0.548745, -0.191663,
		32.594162, 30.871641, 46.569820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606480, 30.069990, 46.807392>,  <32.024555, 30.487520, 46.703983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606480, 30.069990, 46.807392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700935, 30.453241, 46.872169>,  <32.757610, 30.683193, 46.911034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700935, 30.453241, 46.872169>,  <32.606480, 30.069990, 46.807392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700935, 30.453241, 46.872169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240376, -0.219073, 0.945635,
		0.941518, -0.184377, -0.282044,
		0.236142, 0.958129, 0.161942,
		32.771778, 30.740681, 46.920753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014843, 30.031694, 47.310417>,  <32.606480, 30.069990, 46.807392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014843, 30.031694, 47.310417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983154, 30.430368, 47.317783>,  <32.964142, 30.669573, 47.322201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983154, 30.430368, 47.317783>,  <33.014843, 30.031694, 47.310417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983154, 30.430368, 47.317783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092101, -0.011074, 0.995688,
		0.992593, 0.080578, -0.090918,
		-0.079224, 0.996687, 0.018413,
		32.959389, 30.729374, 47.323307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556797, 30.349184, 47.750496>,  <33.014843, 30.031694, 47.310417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556797, 30.349184, 47.750496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240971, 30.593733, 47.729290>,  <33.051476, 30.740461, 47.716568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240971, 30.593733, 47.729290>,  <33.556797, 30.349184, 47.750496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240971, 30.593733, 47.729290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001006, 0.087677, 0.996148,
		0.613664, 0.786472, -0.069842,
		-0.789567, 0.611371, -0.053013,
		33.004101, 30.777143, 47.713387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333050, 30.635990, 47.915203>,  <33.556797, 30.349184, 47.750496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333050, 30.635990, 47.915203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694878, 30.479244, 47.982372>,  <34.911976, 30.385197, 48.022675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694878, 30.479244, 47.982372>,  <34.333050, 30.635990, 47.915203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694878, 30.479244, 47.982372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302728, 0.313062, -0.900193,
		0.300183, 0.865122, 0.401814,
		0.904569, -0.391864, 0.167921,
		34.966248, 30.361685, 48.032749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826256, 31.069016, 47.554699>,  <34.333050, 30.635990, 47.915203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826256, 31.069016, 47.554699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060223, 30.754517, 47.634384>,  <35.200603, 30.565817, 47.682194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060223, 30.754517, 47.634384>,  <34.826256, 31.069016, 47.554699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060223, 30.754517, 47.634384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426357, 0.089113, -0.900155,
		0.689994, 0.611450, 0.387346,
		0.584917, -0.786249, 0.199208,
		35.235699, 30.518642, 47.694145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536484, 31.295977, 47.602394>,  <34.826256, 31.069016, 47.554699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536484, 31.295977, 47.602394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530743, 30.910671, 47.495129>,  <35.527298, 30.679487, 47.430767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530743, 30.910671, 47.495129>,  <35.536484, 31.295977, 47.602394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530743, 30.910671, 47.495129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428735, 0.236362, -0.871963,
		0.903316, -0.127483, 0.409594,
		-0.014348, -0.963266, -0.268166,
		35.526440, 30.621691, 47.414680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148640, 31.190699, 47.390087>,  <35.536484, 31.295977, 47.602394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148640, 31.190699, 47.390087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929283, 30.895014, 47.233715>,  <35.797668, 30.717602, 47.139893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929283, 30.895014, 47.233715>,  <36.148640, 31.190699, 47.390087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929283, 30.895014, 47.233715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429932, 0.151736, -0.890019,
		0.717233, -0.656154, 0.234601,
		-0.548392, -0.739214, -0.390932,
		35.764767, 30.673250, 47.116436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620724, 30.721703, 46.966087>,  <36.148640, 31.190699, 47.390087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620724, 30.721703, 46.966087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244358, 30.695568, 46.833176>,  <36.018539, 30.679888, 46.753429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244358, 30.695568, 46.833176>,  <36.620724, 30.721703, 46.966087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244358, 30.695568, 46.833176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307431, 0.246627, -0.919055,
		0.141996, -0.966905, -0.211969,
		-0.940917, -0.065337, -0.332277,
		35.962082, 30.675966, 46.733494>
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
