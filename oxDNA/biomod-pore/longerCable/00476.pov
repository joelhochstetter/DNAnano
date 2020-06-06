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
	<24.170229, 35.096024, 35.300812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499411, 35.081444, 35.527588>,  <24.696920, 35.072697, 35.663654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499411, 35.081444, 35.527588>,  <24.170229, 35.096024, 35.300812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499411, 35.081444, 35.527588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002224, 0.998139, 0.060937,
		-0.568103, -0.048888, 0.821504,
		0.822954, -0.036446, 0.566938,
		24.746298, 35.070511, 35.697670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131310, 35.469238, 35.906017>,  <24.170229, 35.096024, 35.300812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131310, 35.469238, 35.906017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524023, 35.464001, 35.830196>,  <24.759651, 35.460857, 35.784702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524023, 35.464001, 35.830196>,  <24.131310, 35.469238, 35.906017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524023, 35.464001, 35.830196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049986, 0.980278, 0.191197,
		0.183310, -0.197189, 0.963075,
		0.981784, -0.013092, -0.189551,
		24.818558, 35.460072, 35.773331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460667, 35.725475, 36.502819>,  <24.131310, 35.469238, 35.906017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460667, 35.725475, 36.502819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697628, 35.784847, 36.186081>,  <24.839806, 35.820469, 35.996037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697628, 35.784847, 36.186081>,  <24.460667, 35.725475, 36.502819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.697628, 35.784847, 36.186081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186314, 0.930997, 0.313898,
		0.783801, -0.333487, 0.523872,
		0.592405, 0.148429, -0.791850,
		24.875349, 35.829376, 35.948524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130075, 36.062096, 36.761829>,  <24.460667, 35.725475, 36.502819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130075, 36.062096, 36.761829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157927, 36.104343, 36.365044>,  <25.174637, 36.129692, 36.126972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157927, 36.104343, 36.365044>,  <25.130075, 36.062096, 36.761829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157927, 36.104343, 36.365044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290004, 0.949291, 0.121429,
		0.954489, -0.296129, 0.035469,
		0.069629, 0.105617, -0.991966,
		25.178816, 36.136028, 36.067455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862167, 36.312607, 36.448727>,  <25.130075, 36.062096, 36.761829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862167, 36.312607, 36.448727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534622, 36.424332, 36.248150>,  <25.338095, 36.491367, 36.127804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534622, 36.424332, 36.248150>,  <25.862167, 36.312607, 36.448727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534622, 36.424332, 36.248150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282294, 0.956631, 0.071877,
		0.499772, -0.082697, -0.862200,
		-0.818864, 0.279316, -0.501442,
		25.288963, 36.508125, 36.097717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048174, 36.736221, 35.857174>,  <25.862167, 36.312607, 36.448727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048174, 36.736221, 35.857174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673975, 36.807224, 35.979378>,  <25.449455, 36.849827, 36.052700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673975, 36.807224, 35.979378>,  <26.048174, 36.736221, 35.857174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673975, 36.807224, 35.979378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232835, 0.960059, 0.155161,
		-0.265761, 0.216285, -0.939463,
		-0.935499, 0.177505, 0.305505,
		25.393326, 36.860477, 36.071030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891270, 37.340824, 35.690128>,  <26.048174, 36.736221, 35.857174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891270, 37.340824, 35.690128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612671, 37.311817, 35.975681>,  <25.445511, 37.294415, 36.147015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612671, 37.311817, 35.975681>,  <25.891270, 37.340824, 35.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612671, 37.311817, 35.975681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217291, 0.926855, 0.306144,
		-0.683867, 0.368350, -0.629797,
		-0.696499, -0.072513, 0.713885,
		25.403721, 37.290062, 36.189846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604927, 37.915161, 35.691696>,  <25.891270, 37.340824, 35.690128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604927, 37.915161, 35.691696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470190, 37.778358, 36.042595>,  <25.389349, 37.696278, 36.253136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470190, 37.778358, 36.042595>,  <25.604927, 37.915161, 35.691696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470190, 37.778358, 36.042595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059915, 0.937594, 0.342531,
		-0.939653, 0.062818, -0.336312,
		-0.336841, -0.342010, 0.877250,
		25.369137, 37.675755, 36.305771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993889, 38.339195, 35.893074>,  <25.604927, 37.915161, 35.691696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993889, 38.339195, 35.893074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163445, 38.147427, 36.200443>,  <25.265177, 38.032368, 36.384865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163445, 38.147427, 36.200443>,  <24.993889, 38.339195, 35.893074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163445, 38.147427, 36.200443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054661, 0.860413, 0.506658,
		-0.904064, -0.172763, 0.390923,
		0.423887, -0.479420, 0.768425,
		25.290611, 38.003601, 36.430969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725777, 38.603542, 36.560051>,  <24.993889, 38.339195, 35.893074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725777, 38.603542, 36.560051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057810, 38.410614, 36.672001>,  <25.257029, 38.294857, 36.739170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057810, 38.410614, 36.672001>,  <24.725777, 38.603542, 36.560051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057810, 38.410614, 36.672001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248793, 0.769494, 0.588202,
		-0.499067, -0.418623, 0.758740,
		0.830081, -0.482321, 0.279878,
		25.306833, 38.265919, 36.755966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737818, 38.662628, 37.331951>,  <24.725777, 38.603542, 36.560051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737818, 38.662628, 37.331951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106564, 38.603424, 37.188698>,  <25.327810, 38.567902, 37.102745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106564, 38.603424, 37.188698>,  <24.737818, 38.662628, 37.331951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106564, 38.603424, 37.188698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343452, 0.740070, 0.578219,
		0.179464, -0.656042, 0.733077,
		0.921864, -0.148007, -0.358135,
		25.383123, 38.559021, 37.081257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208633, 38.751518, 37.823593>,  <24.737818, 38.662628, 37.331951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208633, 38.751518, 37.823593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417116, 38.847881, 37.496105>,  <25.542206, 38.905701, 37.299610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417116, 38.847881, 37.496105>,  <25.208633, 38.751518, 37.823593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417116, 38.847881, 37.496105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243968, 0.877239, 0.413439,
		0.817814, -0.415230, 0.398453,
		0.521210, 0.240906, -0.818721,
		25.573479, 38.920155, 37.250488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027826, 39.299667, 38.199406>,  <25.208633, 38.751518, 37.823593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027826, 39.299667, 38.199406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412592, 39.408401, 38.210892>,  <25.643452, 39.473644, 38.217781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412592, 39.408401, 38.210892>,  <25.027826, 39.299667, 38.199406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412592, 39.408401, 38.210892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210210, -0.668485, -0.713400,
		-0.174735, 0.692265, -0.700169,
		0.961914, 0.271839, 0.028713,
		25.701166, 39.489952, 38.219505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420513, 39.719872, 37.597935>,  <25.027826, 39.299667, 38.199406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420513, 39.719872, 37.597935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666605, 39.479481, 37.802017>,  <25.814260, 39.335247, 37.924469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666605, 39.479481, 37.802017>,  <25.420513, 39.719872, 37.597935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666605, 39.479481, 37.802017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105187, -0.578822, -0.808641,
		0.781298, 0.551169, -0.292894,
		0.615232, -0.600981, 0.510208,
		25.851175, 39.299187, 37.955078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933588, 39.465874, 37.070843>,  <25.420513, 39.719872, 37.597935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933588, 39.465874, 37.070843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940065, 39.188454, 37.358932>,  <25.943953, 39.022003, 37.531788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940065, 39.188454, 37.358932>,  <25.933588, 39.465874, 37.070843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940065, 39.188454, 37.358932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012096, -0.720133, -0.693731,
		0.999796, 0.019947, -0.003274,
		0.016195, -0.693550, 0.720227,
		25.944923, 38.980389, 37.575001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462814, 38.971123, 36.822166>,  <25.933588, 39.465874, 37.070843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462814, 38.971123, 36.822166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194941, 38.818947, 37.077286>,  <26.034216, 38.727642, 37.230358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194941, 38.818947, 37.077286>,  <26.462814, 38.971123, 36.822166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194941, 38.818947, 37.077286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281886, -0.664334, -0.692243,
		0.687069, -0.643371, 0.337653,
		-0.669684, -0.380439, 0.637801,
		25.994036, 38.704815, 37.268627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649145, 38.281391, 36.923134>,  <26.462814, 38.971123, 36.822166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649145, 38.281391, 36.923134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261763, 38.342258, 37.002064>,  <26.029333, 38.378780, 37.049423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261763, 38.342258, 37.002064>,  <26.649145, 38.281391, 36.923134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261763, 38.342258, 37.002064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237302, -0.804812, -0.544027,
		0.076027, -0.573692, 0.815535,
		-0.968456, 0.152167, 0.197326,
		25.971226, 38.387909, 37.061260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435488, 37.656643, 37.108673>,  <26.649145, 38.281391, 36.923134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435488, 37.656643, 37.108673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098307, 37.848415, 37.011040>,  <25.895998, 37.963478, 36.952457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098307, 37.848415, 37.011040>,  <26.435488, 37.656643, 37.108673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098307, 37.848415, 37.011040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378294, -0.850811, -0.364712,
		-0.382526, -0.215099, 0.898558,
		-0.842952, 0.479431, -0.244086,
		25.845421, 37.992245, 36.937813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850985, 37.404690, 37.463650>,  <26.435488, 37.656643, 37.108673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850985, 37.404690, 37.463650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691900, 37.592663, 37.148438>,  <25.596449, 37.705448, 36.959312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691900, 37.592663, 37.148438>,  <25.850985, 37.404690, 37.463650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691900, 37.592663, 37.148438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526066, -0.820473, -0.223784,
		-0.751718, 0.325552, 0.573529,
		-0.397712, 0.469937, -0.788026,
		25.572586, 37.733643, 36.912029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034590, 37.194454, 37.461277>,  <25.850985, 37.404690, 37.463650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034590, 37.194454, 37.461277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124910, 37.333862, 37.097397>,  <25.179104, 37.417507, 36.879070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124910, 37.333862, 37.097397>,  <25.034590, 37.194454, 37.461277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124910, 37.333862, 37.097397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360230, -0.837753, -0.410370,
		-0.905123, 0.420363, -0.063620,
		0.225802, 0.348517, -0.909697,
		25.192652, 37.438419, 36.824486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597147, 36.645588, 37.690197>,  <25.034590, 37.194454, 37.461277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597147, 36.645588, 37.690197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353258, 36.910217, 37.864807>,  <24.206924, 37.068996, 37.969574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353258, 36.910217, 37.864807>,  <24.597147, 36.645588, 37.690197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353258, 36.910217, 37.864807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704457, 0.199890, 0.681017,
		0.363286, 0.722746, -0.587929,
		-0.609723, 0.661575, 0.436527,
		24.170341, 37.108688, 37.995766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487005, 37.034313, 37.045876>,  <24.597147, 36.645588, 37.690197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487005, 37.034313, 37.045876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.766119, 37.122009, 36.773102>,  <24.933588, 37.174625, 36.609440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.766119, 37.122009, 36.773102>,  <24.487005, 37.034313, 37.045876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.766119, 37.122009, 36.773102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195984, -0.857249, -0.476146,
		-0.688974, 0.465896, -0.555209,
		0.697786, 0.219240, -0.681930,
		24.975454, 37.187782, 36.568523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.147247, 37.157246, 36.358139>,  <24.487005, 37.034313, 37.045876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.147247, 37.157246, 36.358139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523041, 37.038925, 36.289009>,  <24.748518, 36.967934, 36.247532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523041, 37.038925, 36.289009>,  <24.147247, 37.157246, 36.358139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523041, 37.038925, 36.289009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341369, -0.765742, -0.545075,
		0.028892, 0.571088, -0.820381,
		0.939485, -0.295801, -0.172828,
		24.804886, 36.950184, 36.237160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.229912, 36.986420, 35.653511>,  <24.147247, 37.157246, 36.358139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.229912, 36.986420, 35.653511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522688, 36.786007, 35.838215>,  <24.698355, 36.665760, 35.949039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522688, 36.786007, 35.838215>,  <24.229912, 36.986420, 35.653511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.522688, 36.786007, 35.838215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181828, -0.796753, -0.576302,
		0.656658, 0.337858, -0.674279,
		0.731942, -0.501036, 0.461762,
		24.742270, 36.635696, 35.976742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202084, 36.351570, 35.325630>,  <24.229912, 36.986420, 35.653511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202084, 36.351570, 35.325630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469418, 36.268131, 35.611237>,  <24.629818, 36.218067, 35.782600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469418, 36.268131, 35.611237>,  <24.202084, 36.351570, 35.325630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469418, 36.268131, 35.611237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015547, -0.955750, -0.293770,
		0.743698, 0.207437, -0.635518,
		0.668335, -0.208596, 0.714014,
		24.669918, 36.205551, 35.825439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730959, 36.723408, 34.888569>,  <24.202084, 36.351570, 35.325630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730959, 36.723408, 34.888569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967093, 36.678642, 35.208313>,  <25.108772, 36.651783, 35.400162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967093, 36.678642, 35.208313>,  <24.730959, 36.723408, 34.888569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967093, 36.678642, 35.208313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039819, -0.993173, -0.109642,
		0.806176, 0.032895, -0.590761,
		0.590335, -0.111914, 0.799362,
		25.144194, 36.645069, 35.448120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294130, 36.281635, 34.749676>,  <24.730959, 36.723408, 34.888569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294130, 36.281635, 34.749676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254963, 36.268234, 35.147530>,  <25.231462, 36.260193, 35.386242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254963, 36.268234, 35.147530>,  <25.294130, 36.281635, 34.749676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254963, 36.268234, 35.147530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071693, -0.997074, -0.026529,
		0.992609, 0.068710, 0.100032,
		-0.097916, -0.033505, 0.994631,
		25.225588, 36.258183, 35.445919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781240, 35.816799, 35.009602>,  <25.294130, 36.281635, 34.749676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781240, 35.816799, 35.009602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507242, 35.840328, 35.300068>,  <25.342844, 35.854446, 35.474350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507242, 35.840328, 35.300068>,  <25.781240, 35.816799, 35.009602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507242, 35.840328, 35.300068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004805, -0.997078, 0.076235,
		0.728531, 0.048731, 0.683277,
		-0.684996, 0.058822, 0.726169,
		25.301744, 35.857975, 35.517918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065100, 35.431530, 35.656216>,  <25.781240, 35.816799, 35.009602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065100, 35.431530, 35.656216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665751, 35.440704, 35.677090>,  <25.426140, 35.446209, 35.689613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665751, 35.440704, 35.677090>,  <26.065100, 35.431530, 35.656216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665751, 35.440704, 35.677090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025302, -0.998662, -0.045102,
		0.051079, -0.046349, 0.997618,
		-0.998374, 0.022938, 0.052184,
		25.366238, 35.447586, 35.692745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722683, 35.268353, 35.894302>,  <26.065100, 35.431530, 35.656216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722683, 35.268353, 35.894302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099392, 35.392658, 35.945667>,  <27.325417, 35.467243, 35.976486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099392, 35.392658, 35.945667>,  <26.722683, 35.268353, 35.894302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099392, 35.392658, 35.945667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229455, -0.314788, -0.921010,
		-0.245797, 0.896846, -0.367766,
		0.941772, 0.310767, 0.128411,
		27.381924, 35.485889, 35.984192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901970, 35.729156, 35.281387>,  <26.722683, 35.268353, 35.894302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901970, 35.729156, 35.281387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215956, 35.541576, 35.443336>,  <27.404346, 35.429028, 35.540504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215956, 35.541576, 35.443336>,  <26.901970, 35.729156, 35.281387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215956, 35.541576, 35.443336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153021, -0.486503, -0.860174,
		0.600348, 0.737158, -0.310128,
		0.784963, -0.468948, 0.404872,
		27.451445, 35.400890, 35.564796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386385, 35.812862, 34.730339>,  <26.901970, 35.729156, 35.281387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386385, 35.812862, 34.730339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504604, 35.524910, 34.981552>,  <27.575537, 35.352139, 35.132278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504604, 35.524910, 34.981552>,  <27.386385, 35.812862, 34.730339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504604, 35.524910, 34.981552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187895, -0.600757, -0.777037,
		0.936668, 0.347656, -0.042291,
		0.295548, -0.719879, 0.628033,
		27.593269, 35.308945, 35.169960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941484, 35.552956, 34.395302>,  <27.386385, 35.812862, 34.730339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941484, 35.552956, 34.395302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842539, 35.256649, 34.645126>,  <27.783173, 35.078865, 34.795021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842539, 35.256649, 34.645126>,  <27.941484, 35.552956, 34.395302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842539, 35.256649, 34.645126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110195, -0.661918, -0.741433,
		0.962636, -0.114579, 0.245363,
		-0.247363, -0.740768, 0.624560,
		27.768330, 35.034420, 34.832493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409225, 35.005848, 34.238396>,  <27.941484, 35.552956, 34.395302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409225, 35.005848, 34.238396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113567, 34.824326, 34.437485>,  <27.936172, 34.715412, 34.556938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113567, 34.824326, 34.437485>,  <28.409225, 35.005848, 34.238396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113567, 34.824326, 34.437485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009735, -0.731687, -0.681571,
		0.673478, -0.508624, 0.536404,
		-0.739143, -0.453801, 0.497726,
		27.891825, 34.688187, 34.586803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585117, 34.321865, 34.426403>,  <28.409225, 35.005848, 34.238396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585117, 34.321865, 34.426403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187304, 34.343479, 34.390667>,  <27.948616, 34.356449, 34.369225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187304, 34.343479, 34.390667>,  <28.585117, 34.321865, 34.426403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187304, 34.343479, 34.390667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029193, -0.677612, -0.734841,
		-0.100248, -0.733432, 0.672330,
		-0.994534, 0.054038, -0.089340,
		27.888943, 34.359692, 34.363865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287024, 33.660549, 34.592880>,  <28.585117, 34.321865, 34.426403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287024, 33.660549, 34.592880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041868, 33.812336, 34.315643>,  <27.894775, 33.903408, 34.149303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041868, 33.812336, 34.315643>,  <28.287024, 33.660549, 34.592880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041868, 33.812336, 34.315643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059834, -0.896910, -0.438147,
		-0.787900, -0.227065, 0.572411,
		-0.612889, 0.379465, -0.693089,
		27.858002, 33.926174, 34.107716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665701, 33.280319, 34.679928>,  <28.287024, 33.660549, 34.592880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665701, 33.280319, 34.679928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776237, 33.426159, 34.324242>,  <27.842560, 33.513664, 34.110828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776237, 33.426159, 34.324242>,  <27.665701, 33.280319, 34.679928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776237, 33.426159, 34.324242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185807, -0.928056, -0.322780,
		-0.942927, -0.076024, -0.324206,
		0.276343, 0.364598, -0.889215,
		27.859140, 33.535538, 34.057476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442276, 32.834682, 33.995682>,  <27.665701, 33.280319, 34.679928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442276, 32.834682, 33.995682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770485, 33.046139, 33.908703>,  <27.967409, 33.173012, 33.856514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770485, 33.046139, 33.908703>,  <27.442276, 32.834682, 33.995682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770485, 33.046139, 33.908703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431804, -0.822495, -0.370198,
		-0.374553, 0.209859, -0.903144,
		0.820521, 0.528640, -0.217450,
		28.016642, 33.204731, 33.843468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044275, 32.477024, 34.100880>,  <27.442276, 32.834682, 33.995682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044275, 32.477024, 34.100880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000782, 32.494270, 33.703625>,  <27.974686, 32.504616, 33.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000782, 32.494270, 33.703625>,  <28.044275, 32.477024, 34.100880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000782, 32.494270, 33.703625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260783, 0.965305, 0.013353,
		0.959255, -0.257541, -0.116205,
		-0.108735, 0.043113, -0.993136,
		27.968163, 32.507206, 33.405685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667450, 32.638824, 33.612057>,  <28.044275, 32.477024, 34.100880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667450, 32.638824, 33.612057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313850, 32.775154, 33.484070>,  <28.101690, 32.856953, 33.407276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313850, 32.775154, 33.484070>,  <28.667450, 32.638824, 33.612057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313850, 32.775154, 33.484070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342039, 0.938116, 0.054296,
		0.318672, -0.061443, -0.945872,
		-0.884001, 0.340828, -0.319967,
		28.048651, 32.877403, 33.388081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708200, 33.003677, 33.004944>,  <28.667450, 32.638824, 33.612057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708200, 33.003677, 33.004944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431719, 33.175964, 33.237053>,  <28.265829, 33.279335, 33.376320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431719, 33.175964, 33.237053>,  <28.708200, 33.003677, 33.004944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431719, 33.175964, 33.237053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556633, 0.829404, 0.047409,
		-0.460863, 0.355770, -0.813040,
		-0.691205, 0.430716, 0.580275,
		28.224358, 33.305180, 33.411137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398069, 33.535511, 32.678749>,  <28.708200, 33.003677, 33.004944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398069, 33.535511, 32.678749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421839, 33.591675, 33.074074>,  <28.436100, 33.625374, 33.311268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421839, 33.591675, 33.074074>,  <28.398069, 33.535511, 32.678749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421839, 33.591675, 33.074074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354244, 0.922654, -0.152384,
		-0.933263, 0.359157, 0.005089,
		0.059425, 0.140411, 0.988308,
		28.439667, 33.633797, 33.370567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916828, 34.102955, 33.064243>,  <28.398069, 33.535511, 32.678749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916828, 34.102955, 33.064243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285355, 34.030849, 33.202045>,  <28.506470, 33.987587, 33.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285355, 34.030849, 33.202045>,  <27.916828, 34.102955, 33.064243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285355, 34.030849, 33.202045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264426, 0.940073, -0.215270,
		-0.285052, 0.289427, 0.913771,
		0.921317, -0.180261, 0.344502,
		28.561750, 33.976772, 33.305397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515171, 33.773998, 33.586605>,  <27.916828, 34.102955, 33.064243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515171, 33.773998, 33.586605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310387, 33.592285, 33.878227>,  <27.187515, 33.483257, 34.053200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310387, 33.592285, 33.878227>,  <27.515171, 33.773998, 33.586605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310387, 33.592285, 33.878227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120386, 0.802398, 0.584521,
		-0.850530, 0.387021, -0.356108,
		-0.511962, -0.454283, 0.729056,
		27.156797, 33.456001, 34.096943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951834, 34.197575, 33.966419>,  <27.515171, 33.773998, 33.586605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951834, 34.197575, 33.966419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162563, 33.943474, 34.192310>,  <27.289001, 33.791016, 34.327843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162563, 33.943474, 34.192310>,  <26.951834, 34.197575, 33.966419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162563, 33.943474, 34.192310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298125, 0.760296, 0.577124,
		-0.795975, -0.135685, 0.589927,
		0.526826, -0.635248, 0.564725,
		27.320612, 33.752899, 34.361729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806032, 34.304817, 34.708115>,  <26.951834, 34.197575, 33.966419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806032, 34.304817, 34.708115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193687, 34.209469, 34.682972>,  <27.426281, 34.152260, 34.667889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193687, 34.209469, 34.682972>,  <26.806032, 34.304817, 34.708115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193687, 34.209469, 34.682972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218975, 0.715301, 0.663622,
		-0.113227, -0.656905, 0.745423,
		0.969139, -0.238369, -0.062854,
		27.484428, 34.137959, 34.664116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033344, 34.049065, 35.309639>,  <26.806032, 34.304817, 34.708115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033344, 34.049065, 35.309639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329191, 34.214939, 35.097599>,  <27.506699, 34.314465, 34.970375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329191, 34.214939, 35.097599>,  <27.033344, 34.049065, 35.309639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329191, 34.214939, 35.097599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199808, 0.616833, 0.761310,
		0.642689, -0.668994, 0.373361,
		0.739614, 0.414685, -0.530102,
		27.551075, 34.339344, 34.938568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570450, 34.143734, 35.731480>,  <27.033344, 34.049065, 35.309639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570450, 34.143734, 35.731480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638611, 34.405537, 35.436840>,  <27.679508, 34.562618, 35.260056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638611, 34.405537, 35.436840>,  <27.570450, 34.143734, 35.731480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638611, 34.405537, 35.436840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318506, 0.670822, 0.669741,
		0.932479, -0.348737, -0.094154,
		0.170403, 0.654508, -0.736602,
		27.689732, 34.601891, 35.215858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212612, 34.419048, 35.863766>,  <27.570450, 34.143734, 35.731480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212612, 34.419048, 35.863766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035736, 34.703602, 35.645264>,  <27.929611, 34.874336, 35.514160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035736, 34.703602, 35.645264>,  <28.212612, 34.419048, 35.863766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035736, 34.703602, 35.645264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044238, 0.590995, 0.805461,
		0.895831, 0.380331, -0.229861,
		-0.442188, 0.711388, -0.546257,
		27.903080, 34.917019, 35.481388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661085, 34.979309, 35.917568>,  <28.212612, 34.419048, 35.863766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661085, 34.979309, 35.917568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288540, 35.098339, 35.833652>,  <28.065012, 35.169758, 35.783302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288540, 35.098339, 35.833652>,  <28.661085, 34.979309, 35.917568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288540, 35.098339, 35.833652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029592, 0.636157, 0.770992,
		0.362889, 0.711865, -0.601299,
		-0.931363, 0.297578, -0.209788,
		28.009130, 35.187611, 35.770718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638783, 35.561623, 36.264519>,  <28.661085, 34.979309, 35.917568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638783, 35.561623, 36.264519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250877, 35.516617, 36.177895>,  <28.018133, 35.489613, 36.125919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250877, 35.516617, 36.177895>,  <28.638783, 35.561623, 36.264519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250877, 35.516617, 36.177895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243814, 0.485226, 0.839709,
		0.010597, 0.867119, -0.497988,
		-0.969764, -0.112518, -0.216558,
		27.959948, 35.482861, 36.112926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386911, 36.203056, 36.292080>,  <28.638783, 35.561623, 36.264519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386911, 36.203056, 36.292080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105272, 35.938751, 36.396114>,  <27.936289, 35.780170, 36.458534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105272, 35.938751, 36.396114>,  <28.386911, 36.203056, 36.292080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105272, 35.938751, 36.396114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289592, 0.601612, 0.744446,
		-0.648371, 0.448844, -0.614943,
		-0.704097, -0.660759, 0.260086,
		27.894043, 35.740524, 36.474140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956738, 36.784054, 35.849609>,  <28.386911, 36.203056, 36.292080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956738, 36.784054, 35.849609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989128, 36.579323, 35.507504>,  <28.008562, 36.456486, 35.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989128, 36.579323, 35.507504>,  <27.956738, 36.784054, 35.849609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989128, 36.579323, 35.507504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680891, 0.655057, -0.327549,
		0.727895, -0.555817, 0.401543,
		0.080976, -0.511829, -0.855263,
		28.013420, 36.425774, 35.250923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606136, 36.866219, 35.749561>,  <27.956738, 36.784054, 35.849609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606136, 36.866219, 35.749561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478140, 36.781105, 35.380276>,  <28.401342, 36.730038, 35.158703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478140, 36.781105, 35.380276>,  <28.606136, 36.866219, 35.749561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478140, 36.781105, 35.380276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755983, 0.529995, -0.384181,
		0.571048, -0.820870, -0.008731,
		-0.319990, -0.212785, -0.923217,
		28.382143, 36.717270, 35.103310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138731, 36.773773, 35.350143>,  <28.606136, 36.866219, 35.749561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138731, 36.773773, 35.350143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843111, 36.907894, 35.116432>,  <28.665739, 36.988365, 34.976208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843111, 36.907894, 35.116432>,  <29.138731, 36.773773, 35.350143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843111, 36.907894, 35.116432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641672, 0.614440, -0.459043,
		0.205085, -0.714169, -0.669255,
		-0.739052, 0.335299, -0.584275,
		28.621395, 37.008484, 34.941151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276276, 36.509464, 34.629475>,  <29.138731, 36.773773, 35.350143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276276, 36.509464, 34.629475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237406, 36.860992, 34.816338>,  <29.214083, 37.071907, 34.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237406, 36.860992, 34.816338>,  <29.276276, 36.509464, 34.629475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237406, 36.860992, 34.816338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984823, 0.152726, -0.082450,
		-0.143806, 0.452053, -0.880322,
		-0.097177, 0.878819, 0.467156,
		29.208252, 37.124638, 34.956486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770184, 36.993881, 34.392601>,  <29.276276, 36.509464, 34.629475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770184, 36.993881, 34.392601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660097, 37.099403, 34.762394>,  <29.594046, 37.162716, 34.984268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660097, 37.099403, 34.762394>,  <29.770184, 36.993881, 34.392601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660097, 37.099403, 34.762394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960970, 0.103668, 0.256496,
		-0.028174, 0.958988, -0.282041,
		-0.275215, 0.263806, 0.924480,
		29.577532, 37.178547, 35.039738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300236, 36.501381, 34.416626>,  <29.770184, 36.993881, 34.392601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300236, 36.501381, 34.416626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324518, 36.175316, 34.647041>,  <30.339088, 35.979675, 34.785290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324518, 36.175316, 34.647041>,  <30.300236, 36.501381, 34.416626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324518, 36.175316, 34.647041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829696, 0.362041, 0.424888,
		-0.554904, 0.452146, 0.698316,
		0.060707, -0.815163, 0.576042,
		30.342730, 35.930767, 34.819855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267336, 36.666126, 35.217640>,  <30.300236, 36.501381, 34.416626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267336, 36.666126, 35.217640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475258, 36.334080, 35.136929>,  <30.600012, 36.134853, 35.088501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475258, 36.334080, 35.136929>,  <30.267336, 36.666126, 35.217640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475258, 36.334080, 35.136929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844155, 0.462845, 0.270511,
		-0.131165, -0.310942, 0.941335,
		0.519805, -0.830114, -0.201774,
		30.631199, 36.085045, 35.076397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792635, 36.579872, 35.790771>,  <30.267336, 36.666126, 35.217640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792635, 36.579872, 35.790771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941221, 36.369854, 35.484478>,  <31.030373, 36.243843, 35.300701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941221, 36.369854, 35.484478>,  <30.792635, 36.579872, 35.790771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941221, 36.369854, 35.484478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921602, 0.308485, 0.235557,
		0.112538, -0.793199, 0.598473,
		0.371464, -0.525045, -0.765730,
		31.052660, 36.212341, 35.254761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440346, 36.285263, 36.103489>,  <30.792635, 36.579872, 35.790771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440346, 36.285263, 36.103489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470369, 36.292545, 35.704685>,  <31.488384, 36.296913, 35.465401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470369, 36.292545, 35.704685>,  <31.440346, 36.285263, 36.103489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470369, 36.292545, 35.704685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916308, 0.393166, 0.076162,
		0.393379, -0.919287, 0.012818,
		0.075054, 0.018216, -0.997013,
		31.492887, 36.298008, 35.405582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569408, 35.754486, 35.734028>,  <31.440346, 36.285263, 36.103489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569408, 35.754486, 35.734028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739868, 35.608116, 36.064964>,  <31.842144, 35.520294, 36.263527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739868, 35.608116, 36.064964>,  <31.569408, 35.754486, 35.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739868, 35.608116, 36.064964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904628, 0.179198, -0.386700,
		-0.006756, 0.913230, 0.407389,
		0.426149, -0.365923, 0.827344,
		31.867712, 35.498341, 36.313168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801727, 35.258575, 35.350498>,  <31.569408, 35.754486, 35.734028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801727, 35.258575, 35.350498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931286, 34.881447, 35.319038>,  <32.009022, 34.655170, 35.300163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931286, 34.881447, 35.319038>,  <31.801727, 35.258575, 35.350498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931286, 34.881447, 35.319038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744586, 0.305319, -0.593609,
		0.583679, 0.133705, 0.800900,
		0.323898, -0.942817, -0.078654,
		32.028454, 34.598602, 35.295441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417038, 35.127495, 35.704227>,  <31.801727, 35.258575, 35.350498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417038, 35.127495, 35.704227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391384, 34.878479, 35.392246>,  <32.375992, 34.729069, 35.205055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391384, 34.878479, 35.392246>,  <32.417038, 35.127495, 35.704227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391384, 34.878479, 35.392246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843100, 0.384351, -0.376107,
		0.533918, -0.681705, 0.500210,
		-0.064137, -0.622537, -0.779957,
		32.372143, 34.691719, 35.158260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928722, 34.629780, 35.809212>,  <32.417038, 35.127495, 35.704227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928722, 34.629780, 35.809212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847664, 34.664322, 35.419037>,  <32.799030, 34.685047, 35.184933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847664, 34.664322, 35.419037>,  <32.928722, 34.629780, 35.809212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847664, 34.664322, 35.419037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968850, 0.162485, -0.186893,
		0.142354, -0.982925, -0.116594,
		-0.202647, 0.086357, -0.975437,
		32.786869, 34.690228, 35.126408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278927, 34.204731, 35.292362>,  <32.928722, 34.629780, 35.809212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278927, 34.204731, 35.292362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167171, 34.518356, 35.070663>,  <33.100121, 34.706532, 34.937645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167171, 34.518356, 35.070663>,  <33.278927, 34.204731, 35.292362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167171, 34.518356, 35.070663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933367, 0.086315, -0.348390,
		-0.225321, -0.614647, -0.755936,
		-0.279385, 0.784065, -0.554243,
		33.083355, 34.753574, 34.904392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316467, 33.907871, 34.523281>,  <33.278927, 34.204731, 35.292362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316467, 33.907871, 34.523281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026466, 34.161289, 34.415207>,  <32.852467, 34.313339, 34.350361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026466, 34.161289, 34.415207>,  <33.316467, 33.907871, 34.523281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026466, 34.161289, 34.415207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432149, 0.112975, -0.894698,
		-0.536303, -0.765417, -0.355690,
		-0.725001, 0.633541, -0.270185,
		32.808968, 34.351353, 34.334152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699894, 33.607723, 34.243652>,  <33.316467, 33.907871, 34.523281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699894, 33.607723, 34.243652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740215, 33.978596, 34.099331>,  <32.764408, 34.201118, 34.012737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740215, 33.978596, 34.099331>,  <32.699894, 33.607723, 34.243652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740215, 33.978596, 34.099331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265332, -0.374565, -0.888425,
		-0.958873, -0.006177, -0.283767,
		0.100802, 0.927180, -0.360800,
		32.770454, 34.256748, 33.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363438, 33.425777, 33.679470>,  <32.699894, 33.607723, 34.243652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363438, 33.425777, 33.679470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605923, 33.737183, 33.614445>,  <32.751411, 33.924026, 33.575428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605923, 33.737183, 33.614445>,  <32.363438, 33.425777, 33.679470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605923, 33.737183, 33.614445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210190, -0.353966, -0.911333,
		-0.767027, 0.518290, -0.378213,
		0.606209, 0.778514, -0.162562,
		32.787785, 33.970737, 33.565678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221840, 33.580700, 33.021599>,  <32.363438, 33.425777, 33.679470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221840, 33.580700, 33.021599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567646, 33.772644, 33.081406>,  <32.775127, 33.887810, 33.117290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567646, 33.772644, 33.081406>,  <32.221840, 33.580700, 33.021599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567646, 33.772644, 33.081406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232863, -0.118780, -0.965228,
		-0.445413, 0.869269, -0.214427,
		0.864513, 0.479858, 0.149514,
		32.827000, 33.916603, 33.126259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259563, 34.152103, 32.520508>,  <32.221840, 33.580700, 33.021599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259563, 34.152103, 32.520508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629116, 34.052364, 32.636620>,  <32.850849, 33.992519, 32.706287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629116, 34.052364, 32.636620>,  <32.259563, 34.152103, 32.520508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629116, 34.052364, 32.636620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265744, -0.127770, -0.955539,
		0.275352, 0.959948, -0.051782,
		0.923884, -0.249349, 0.290282,
		32.906281, 33.977558, 32.723705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678833, 34.509102, 32.124474>,  <32.259563, 34.152103, 32.520508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678833, 34.509102, 32.124474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938427, 34.230240, 32.246323>,  <33.094185, 34.062923, 32.319431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938427, 34.230240, 32.246323>,  <32.678833, 34.509102, 32.124474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938427, 34.230240, 32.246323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329289, -0.103552, -0.938534,
		0.685847, 0.709403, 0.162361,
		0.648986, -0.697154, 0.304620,
		33.133121, 34.021095, 32.337708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335377, 34.732609, 31.884884>,  <32.678833, 34.509102, 32.124474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335377, 34.732609, 31.884884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379662, 34.340633, 31.951174>,  <33.406235, 34.105450, 31.990948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379662, 34.340633, 31.951174>,  <33.335377, 34.732609, 31.884884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379662, 34.340633, 31.951174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328553, -0.121288, -0.936666,
		0.937974, 0.158152, 0.308533,
		0.110714, -0.979937, 0.165726,
		33.412876, 34.046654, 32.000893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981243, 34.538200, 31.640829>,  <33.335377, 34.732609, 31.884884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981243, 34.538200, 31.640829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814129, 34.176395, 31.675030>,  <33.713860, 33.959312, 31.695551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814129, 34.176395, 31.675030>,  <33.981243, 34.538200, 31.640829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814129, 34.176395, 31.675030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495182, -0.305597, -0.813268,
		0.761741, -0.297433, 0.575572,
		-0.417787, -0.904513, 0.085502,
		33.688793, 33.905041, 31.700680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497147, 34.045990, 31.593945>,  <33.981243, 34.538200, 31.640829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497147, 34.045990, 31.593945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157810, 33.871014, 31.474638>,  <33.954208, 33.766026, 31.403055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157810, 33.871014, 31.474638>,  <34.497147, 34.045990, 31.593945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157810, 33.871014, 31.474638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439085, -0.266503, -0.858010,
		0.295843, -0.858847, 0.418160,
		-0.848340, -0.437444, -0.298265,
		33.903309, 33.739780, 31.385159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655804, 33.500259, 31.120140>,  <34.497147, 34.045990, 31.593945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655804, 33.500259, 31.120140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267891, 33.551022, 31.036793>,  <34.035145, 33.581478, 30.986784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267891, 33.551022, 31.036793>,  <34.655804, 33.500259, 31.120140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267891, 33.551022, 31.036793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205410, -0.036123, -0.978009,
		-0.131644, -0.991256, 0.008964,
		-0.969782, 0.126908, -0.208369,
		33.976955, 33.589092, 30.974281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467297, 32.942921, 30.653967>,  <34.655804, 33.500259, 31.120140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467297, 32.942921, 30.653967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217957, 33.251465, 30.602699>,  <34.068352, 33.436592, 30.571939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217957, 33.251465, 30.602699>,  <34.467297, 32.942921, 30.653967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217957, 33.251465, 30.602699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049637, -0.124544, -0.990972,
		-0.780363, -0.624087, 0.039347,
		-0.623353, 0.771365, -0.128167,
		34.030952, 33.482876, 30.564249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384598, 32.813427, 30.096041>,  <34.467297, 32.942921, 30.653967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384598, 32.813427, 30.096041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192097, 33.163002, 30.123285>,  <34.076595, 33.372746, 30.139631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192097, 33.163002, 30.123285>,  <34.384598, 32.813427, 30.096041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192097, 33.163002, 30.123285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119096, 0.142166, -0.982652,
		-0.868456, -0.464787, -0.172499,
		-0.481248, 0.873934, 0.068110,
		34.047722, 33.425182, 30.143719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966419, 32.827240, 29.490513>,  <34.384598, 32.813427, 30.096041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966419, 32.827240, 29.490513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016026, 33.198959, 29.629662>,  <34.045792, 33.421993, 29.713152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016026, 33.198959, 29.629662>,  <33.966419, 32.827240, 29.490513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016026, 33.198959, 29.629662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181101, 0.323493, -0.928738,
		-0.975613, 0.178181, -0.128178,
		0.124019, 0.929303, 0.347873,
		34.053230, 33.477749, 29.734024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440887, 33.214291, 29.143091>,  <33.966419, 32.827240, 29.490513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440887, 33.214291, 29.143091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717976, 33.476265, 29.263885>,  <33.884228, 33.633450, 29.336363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717976, 33.476265, 29.263885>,  <33.440887, 33.214291, 29.143091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717976, 33.476265, 29.263885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032608, 0.389855, -0.920299,
		-0.720466, 0.647360, 0.248706,
		0.692723, 0.654934, 0.301986,
		33.925793, 33.672745, 29.354481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278461, 33.819752, 28.792583>,  <33.440887, 33.214291, 29.143091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278461, 33.819752, 28.792583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654423, 33.907051, 28.897614>,  <33.880001, 33.959431, 28.960632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654423, 33.907051, 28.897614>,  <33.278461, 33.819752, 28.792583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654423, 33.907051, 28.897614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133176, 0.473790, -0.870510,
		-0.314392, 0.853166, 0.416252,
		0.939905, 0.218247, 0.262577,
		33.936394, 33.972527, 28.976387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427410, 34.625351, 28.724236>,  <33.278461, 33.819752, 28.792583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427410, 34.625351, 28.724236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769485, 34.421600, 28.685877>,  <33.974731, 34.299351, 28.662863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769485, 34.421600, 28.685877>,  <33.427410, 34.625351, 28.724236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769485, 34.421600, 28.685877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180022, 0.465386, -0.866607,
		0.486055, 0.723846, 0.489690,
		0.855186, -0.509374, -0.095895,
		34.026043, 34.268787, 28.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828537, 35.106712, 28.475985>,  <33.427410, 34.625351, 28.724236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828537, 35.106712, 28.475985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017300, 34.767464, 28.379663>,  <34.130558, 34.563915, 28.321871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017300, 34.767464, 28.379663>,  <33.828537, 35.106712, 28.475985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017300, 34.767464, 28.379663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248827, 0.390148, -0.886493,
		0.845805, 0.358426, 0.395151,
		0.471909, -0.848125, -0.240803,
		34.158871, 34.513027, 28.307423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460171, 35.314503, 28.049307>,  <33.828537, 35.106712, 28.475985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460171, 35.314503, 28.049307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390488, 34.928513, 27.970850>,  <34.348679, 34.696918, 27.923777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390488, 34.928513, 27.970850>,  <34.460171, 35.314503, 28.049307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390488, 34.928513, 27.970850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337930, 0.128505, -0.932357,
		0.924908, -0.228704, 0.303709,
		-0.174206, -0.964977, -0.196141,
		34.338226, 34.639019, 27.912008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022358, 35.218044, 27.594942>,  <34.460171, 35.314503, 28.049307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022358, 35.218044, 27.594942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730396, 34.956230, 27.516127>,  <34.555218, 34.799141, 27.468838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730396, 34.956230, 27.516127>,  <35.022358, 35.218044, 27.594942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730396, 34.956230, 27.516127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133245, 0.146485, -0.980198,
		0.670438, -0.741704, -0.019706,
		-0.729903, -0.654536, -0.197037,
		34.511425, 34.759869, 27.457016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325535, 34.799999, 27.161726>,  <35.022358, 35.218044, 27.594942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325535, 34.799999, 27.161726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937473, 34.733963, 27.090683>,  <34.704636, 34.694340, 27.048058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937473, 34.733963, 27.090683>,  <35.325535, 34.799999, 27.161726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937473, 34.733963, 27.090683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130315, 0.262729, -0.956029,
		0.204493, -0.950641, -0.233375,
		-0.970155, -0.165089, -0.177609,
		34.646427, 34.684437, 27.037399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290306, 34.478107, 26.586216>,  <35.325535, 34.799999, 27.161726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290306, 34.478107, 26.586216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904583, 34.581947, 26.607056>,  <34.673149, 34.644253, 26.619560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904583, 34.581947, 26.607056>,  <35.290306, 34.478107, 26.586216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904583, 34.581947, 26.607056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008136, 0.225730, -0.974156,
		-0.264650, -0.938965, -0.219786,
		-0.964310, 0.259598, 0.052100,
		34.615292, 34.659828, 26.622686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890678, 34.080673, 26.062527>,  <35.290306, 34.478107, 26.586216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890678, 34.080673, 26.062527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692410, 34.421776, 26.128391>,  <34.573448, 34.626438, 26.167910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692410, 34.421776, 26.128391>,  <34.890678, 34.080673, 26.062527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692410, 34.421776, 26.128391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127940, 0.115828, -0.984995,
		-0.859035, -0.509300, 0.051690,
		-0.495670, 0.852759, 0.164660,
		34.543709, 34.677605, 26.177790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331715, 34.103783, 25.590302>,  <34.890678, 34.080673, 26.062527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331715, 34.103783, 25.590302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366142, 34.481884, 25.716217>,  <34.386799, 34.708744, 25.791767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366142, 34.481884, 25.716217>,  <34.331715, 34.103783, 25.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366142, 34.481884, 25.716217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119358, 0.303904, -0.945197,
		-0.989113, 0.118928, -0.086666,
		0.086072, 0.945251, 0.314790,
		34.391964, 34.765461, 25.810654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827953, 34.464184, 25.152447>,  <34.331715, 34.103783, 25.590302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827953, 34.464184, 25.152447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060032, 34.759132, 25.290813>,  <34.199280, 34.936100, 25.373833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060032, 34.759132, 25.290813>,  <33.827953, 34.464184, 25.152447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060032, 34.759132, 25.290813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101059, 0.486602, -0.867759,
		-0.808181, 0.468515, 0.356844,
		0.580199, 0.737368, 0.345915,
		34.234093, 34.980343, 25.394588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525349, 35.167656, 24.916569>,  <33.827953, 34.464184, 25.152447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525349, 35.167656, 24.916569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915203, 35.228352, 24.982372>,  <34.149117, 35.264771, 25.021854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915203, 35.228352, 24.982372>,  <33.525349, 35.167656, 24.916569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915203, 35.228352, 24.982372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024175, 0.659383, -0.751419,
		-0.222496, 0.736335, 0.638988,
		0.974634, 0.151740, 0.164511,
		34.207592, 35.273872, 25.031725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597816, 35.835091, 24.834431>,  <33.525349, 35.167656, 24.916569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597816, 35.835091, 24.834431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971561, 35.694729, 24.809700>,  <34.195808, 35.610512, 24.794863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971561, 35.694729, 24.809700>,  <33.597816, 35.835091, 24.834431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971561, 35.694729, 24.809700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185858, 0.628027, -0.755671,
		0.303998, 0.694584, 0.652027,
		0.934367, -0.350907, -0.061825,
		34.251873, 35.589458, 24.791153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953053, 36.409206, 24.735197>,  <33.597816, 35.835091, 24.834431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953053, 36.409206, 24.735197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219425, 36.129677, 24.630753>,  <34.379250, 35.961960, 24.568087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219425, 36.129677, 24.630753>,  <33.953053, 36.409206, 24.735197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219425, 36.129677, 24.630753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268508, 0.551072, -0.790078,
		0.696020, 0.456025, 0.554615,
		0.665928, -0.698828, -0.261110,
		34.419205, 35.920029, 24.552420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672932, 36.762493, 24.749172>,  <33.953053, 36.409206, 24.735197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672932, 36.762493, 24.749172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674210, 36.428082, 24.529703>,  <34.674976, 36.227432, 24.398022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674210, 36.428082, 24.529703>,  <34.672932, 36.762493, 24.749172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674210, 36.428082, 24.529703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410703, 0.501362, -0.761551,
		0.911763, -0.222905, 0.344965,
		0.003198, -0.836032, -0.548671,
		34.675171, 36.177273, 24.365101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337440, 36.765732, 24.520462>,  <34.672932, 36.762493, 24.749172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337440, 36.765732, 24.520462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125603, 36.549400, 24.259071>,  <34.998501, 36.419601, 24.102238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125603, 36.549400, 24.259071>,  <35.337440, 36.765732, 24.520462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125603, 36.549400, 24.259071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371889, 0.544360, -0.751911,
		0.762382, -0.641230, -0.087163,
		-0.529596, -0.540828, -0.653477,
		34.966724, 36.387154, 24.063028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798141, 36.482006, 24.000162>,  <35.337440, 36.765732, 24.520462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798141, 36.482006, 24.000162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429111, 36.473770, 23.846052>,  <35.207695, 36.468830, 23.753586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429111, 36.473770, 23.846052>,  <35.798141, 36.482006, 24.000162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429111, 36.473770, 23.846052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333509, 0.459525, -0.823170,
		0.193990, -0.887926, -0.417079,
		-0.922572, -0.020587, -0.385275,
		35.152340, 36.467594, 23.730471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008343, 36.277222, 23.376492>,  <35.798141, 36.482006, 24.000162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008343, 36.277222, 23.376492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652889, 36.460468, 23.385046>,  <35.439617, 36.570415, 23.390179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652889, 36.460468, 23.385046>,  <36.008343, 36.277222, 23.376492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652889, 36.460468, 23.385046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306455, 0.627842, -0.715472,
		-0.341199, -0.629238, -0.698314,
		-0.888633, 0.458120, 0.021386,
		35.386299, 36.597904, 23.391462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785927, 36.207138, 22.732960>,  <36.008343, 36.277222, 23.376492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785927, 36.207138, 22.732960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575867, 36.508621, 22.891022>,  <35.449833, 36.689510, 22.985859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575867, 36.508621, 22.891022>,  <35.785927, 36.207138, 22.732960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575867, 36.508621, 22.891022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194044, 0.558155, -0.806728,
		-0.828593, -0.346974, -0.439366,
		-0.525148, 0.753705, 0.395155,
		35.418324, 36.734734, 23.009569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432346, 36.527008, 22.225943>,  <35.785927, 36.207138, 22.732960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432346, 36.527008, 22.225943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390862, 36.810028, 22.505545>,  <35.365971, 36.979839, 22.673306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390862, 36.810028, 22.505545>,  <35.432346, 36.527008, 22.225943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390862, 36.810028, 22.505545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172471, 0.704945, -0.687973,
		-0.979539, 0.049205, -0.195147,
		-0.103717, 0.707553, 0.699007,
		35.359745, 37.022293, 22.715246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005875, 37.015331, 21.901375>,  <35.432346, 36.527008, 22.225943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005875, 37.015331, 21.901375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167404, 37.210571, 22.210875>,  <35.264320, 37.327717, 22.396574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167404, 37.210571, 22.210875>,  <35.005875, 37.015331, 21.901375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167404, 37.210571, 22.210875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254141, 0.752633, -0.607418,
		-0.878829, 0.441929, 0.179883,
		0.403821, 0.488101, 0.773748,
		35.288551, 37.357002, 22.442999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886692, 37.758202, 21.780437>,  <35.005875, 37.015331, 21.901375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886692, 37.758202, 21.780437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179440, 37.791561, 22.050968>,  <35.355087, 37.811577, 22.213285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179440, 37.791561, 22.050968>,  <34.886692, 37.758202, 21.780437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179440, 37.791561, 22.050968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352620, 0.802926, -0.480592,
		-0.583121, 0.590215, 0.558226,
		0.731867, 0.083401, 0.676324,
		35.398998, 37.816582, 22.253866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998447, 38.447750, 21.889660>,  <34.886692, 37.758202, 21.780437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998447, 38.447750, 21.889660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340633, 38.299294, 22.034124>,  <35.545944, 38.210220, 22.120804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340633, 38.299294, 22.034124>,  <34.998447, 38.447750, 21.889660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340633, 38.299294, 22.034124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499585, 0.775111, -0.386804,
		-0.136380, 0.511326, 0.848496,
		0.855462, -0.371144, 0.361160,
		35.597271, 38.187950, 22.142473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278687, 38.966129, 22.313185>,  <34.998447, 38.447750, 21.889660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278687, 38.966129, 22.313185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555870, 38.708122, 22.184334>,  <35.722179, 38.553318, 22.107023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555870, 38.708122, 22.184334>,  <35.278687, 38.966129, 22.313185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555870, 38.708122, 22.184334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502529, 0.752484, -0.425713,
		0.516986, 0.133123, 0.845579,
		0.692957, -0.645016, -0.322126,
		35.763756, 38.514618, 22.087696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908504, 39.432140, 22.412119>,  <35.278687, 38.966129, 22.313185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908504, 39.432140, 22.412119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986732, 39.137253, 22.153427>,  <36.033669, 38.960320, 21.998213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986732, 39.137253, 22.153427>,  <35.908504, 39.432140, 22.412119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986732, 39.137253, 22.153427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557379, 0.626151, -0.545218,
		0.806897, -0.253847, 0.533367,
		0.195566, -0.737222, -0.646728,
		36.045403, 38.916084, 21.959408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700565, 39.438049, 22.305302>,  <35.908504, 39.432140, 22.412119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700565, 39.438049, 22.305302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540760, 39.254257, 21.987997>,  <36.444878, 39.143982, 21.797615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540760, 39.254257, 21.987997>,  <36.700565, 39.438049, 22.305302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540760, 39.254257, 21.987997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554016, 0.568406, -0.608261,
		0.730379, -0.682490, 0.027473,
		-0.399516, -0.459481, -0.793262,
		36.420906, 39.116413, 21.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248325, 39.370754, 21.903524>,  <36.700565, 39.438049, 22.305302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248325, 39.370754, 21.903524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936825, 39.317001, 21.658419>,  <36.749924, 39.284752, 21.511354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936825, 39.317001, 21.658419>,  <37.248325, 39.370754, 21.903524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936825, 39.317001, 21.658419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495010, 0.468404, -0.731822,
		0.385362, -0.873236, -0.298254,
		-0.778756, -0.134377, -0.612765,
		36.703197, 39.276688, 21.474588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502884, 39.058033, 21.352581>,  <37.248325, 39.370754, 21.903524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502884, 39.058033, 21.352581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150169, 39.190964, 21.218708>,  <36.938541, 39.270721, 21.138384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150169, 39.190964, 21.218708>,  <37.502884, 39.058033, 21.352581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150169, 39.190964, 21.218708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448480, 0.371122, -0.813102,
		-0.146011, -0.867079, -0.476293,
		-0.881786, 0.332329, -0.334680,
		36.885635, 39.290661, 21.118303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406204, 38.841785, 20.697042>,  <37.502884, 39.058033, 21.352581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406204, 38.841785, 20.697042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167347, 39.162094, 20.715742>,  <37.024033, 39.354279, 20.726961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167347, 39.162094, 20.715742>,  <37.406204, 38.841785, 20.697042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167347, 39.162094, 20.715742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383250, 0.336019, -0.860355,
		-0.704657, -0.495838, -0.507547,
		-0.597142, 0.800772, 0.046748,
		36.988205, 39.402325, 20.729767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004967, 38.683258, 20.207062>,  <37.406204, 38.841785, 20.697042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004967, 38.683258, 20.207062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002895, 39.077751, 20.273180>,  <37.001652, 39.314445, 20.312851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002895, 39.077751, 20.273180>,  <37.004967, 38.683258, 20.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002895, 39.077751, 20.273180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344161, 0.156958, -0.925698,
		-0.938896, 0.052100, -0.340234,
		-0.005174, 0.986230, 0.165298,
		37.001343, 39.373619, 20.322769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994465, 38.941326, 19.616835>,  <37.004967, 38.683258, 20.207062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994465, 38.941326, 19.616835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115955, 39.264103, 19.819456>,  <37.188850, 39.457767, 19.941029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115955, 39.264103, 19.819456>,  <36.994465, 38.941326, 19.616835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115955, 39.264103, 19.819456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671894, 0.195545, -0.714367,
		-0.675507, 0.557319, -0.482789,
		0.303723, 0.806943, 0.506552,
		37.207073, 39.506187, 19.971422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138783, 39.404057, 19.179005>,  <36.994465, 38.941326, 19.616835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138783, 39.404057, 19.179005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356594, 39.508007, 19.497990>,  <37.487282, 39.570377, 19.689381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356594, 39.508007, 19.497990>,  <37.138783, 39.404057, 19.179005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356594, 39.508007, 19.497990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826844, -0.006758, -0.562390,
		-0.140764, 0.965618, -0.218558,
		0.544531, 0.259878, 0.797465,
		37.519955, 39.585972, 19.737228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435242, 40.095001, 19.201958>,  <37.138783, 39.404057, 19.179005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435242, 40.095001, 19.201958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678253, 39.824574, 19.368734>,  <37.824062, 39.662319, 19.468801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678253, 39.824574, 19.368734>,  <37.435242, 40.095001, 19.201958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678253, 39.824574, 19.368734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601761, 0.049132, -0.797163,
		0.518450, 0.735201, 0.436680,
		0.607530, -0.676066, 0.416942,
		37.860512, 39.621754, 19.493816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111671, 40.438847, 19.283197>,  <37.435242, 40.095001, 19.201958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111671, 40.438847, 19.283197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142170, 40.042473, 19.238956>,  <38.160469, 39.804649, 19.212412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142170, 40.042473, 19.238956>,  <38.111671, 40.438847, 19.283197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142170, 40.042473, 19.238956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635975, 0.133760, -0.760029,
		0.767934, -0.012393, 0.640409,
		0.076242, -0.990936, -0.110600,
		38.165043, 39.745193, 19.205776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719597, 41.090538, 19.473173>,  <38.111671, 40.438847, 19.283197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719597, 41.090538, 19.473173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103123, 41.195728, 19.516108>,  <38.333237, 41.258842, 19.541868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103123, 41.195728, 19.516108>,  <37.719597, 41.090538, 19.473173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103123, 41.195728, 19.516108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149118, -0.144429, -0.978215,
		-0.241740, 0.953932, -0.177694,
		0.958815, 0.262971, 0.107334,
		38.390766, 41.274620, 19.548307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823009, 41.536869, 18.956457>,  <37.719597, 41.090538, 19.473173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823009, 41.536869, 18.956457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181358, 41.386806, 19.051676>,  <38.396370, 41.296768, 19.108807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181358, 41.386806, 19.051676>,  <37.823009, 41.536869, 18.956457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181358, 41.386806, 19.051676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215524, -0.101579, -0.971201,
		0.388528, 0.921381, -0.010147,
		0.895877, -0.375152, 0.238046,
		38.450123, 41.274261, 19.123089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295872, 41.753620, 18.532541>,  <37.823009, 41.536869, 18.956457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295872, 41.753620, 18.532541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204426, 41.372677, 18.451797>,  <38.149559, 41.144112, 18.403351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204426, 41.372677, 18.451797>,  <38.295872, 41.753620, 18.532541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204426, 41.372677, 18.451797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043546, -0.217145, 0.975167,
		-0.972544, 0.214143, 0.091113,
		-0.228610, -0.952360, -0.201858,
		38.135841, 41.086967, 18.391239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657211, 41.145626, 18.637316>,  <38.295872, 41.753620, 18.532541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657211, 41.145626, 18.637316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028698, 41.292690, 18.656536>,  <39.251591, 41.380928, 18.668068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028698, 41.292690, 18.656536>,  <38.657211, 41.145626, 18.637316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028698, 41.292690, 18.656536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147966, 0.248661, 0.957222,
		0.339989, -0.896097, 0.285337,
		0.928716, 0.367665, 0.048050,
		39.307312, 41.402988, 18.670952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047989, 40.832695, 19.122744>,  <38.657211, 41.145626, 18.637316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047989, 40.832695, 19.122744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144241, 41.217140, 19.068554>,  <39.201992, 41.447807, 19.036041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144241, 41.217140, 19.068554>,  <39.047989, 40.832695, 19.122744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144241, 41.217140, 19.068554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213482, 0.188563, 0.958577,
		0.946849, -0.201743, 0.250555,
		0.240631, 0.961116, -0.135473,
		39.216431, 41.505474, 19.027912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499180, 40.815464, 19.652851>,  <39.047989, 40.832695, 19.122744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499180, 40.815464, 19.652851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269970, 41.088608, 19.471588>,  <39.132446, 41.252495, 19.362831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269970, 41.088608, 19.471588>,  <39.499180, 40.815464, 19.652851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269970, 41.088608, 19.471588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378878, 0.269572, 0.885315,
		0.726703, 0.678996, 0.104249,
		-0.573022, 0.682859, -0.453155,
		39.098064, 41.293465, 19.335642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606888, 41.674171, 19.764744>,  <39.499180, 40.815464, 19.652851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606888, 41.674171, 19.764744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230190, 41.570812, 19.678631>,  <39.004173, 41.508797, 19.626963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230190, 41.570812, 19.678631>,  <39.606888, 41.674171, 19.764744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230190, 41.570812, 19.678631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289593, 0.297474, 0.909750,
		-0.171038, 0.919097, -0.354975,
		-0.941744, -0.258400, -0.215285,
		38.947666, 41.493294, 19.614046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216122, 42.263462, 19.980553>,  <39.606888, 41.674171, 19.764744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216122, 42.263462, 19.980553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976673, 41.943188, 19.971189>,  <38.833004, 41.751022, 19.965572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976673, 41.943188, 19.971189>,  <39.216122, 42.263462, 19.980553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976673, 41.943188, 19.971189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175836, 0.102842, 0.979033,
		-0.781492, 0.590190, -0.202353,
		-0.598626, -0.800687, -0.023406,
		38.797085, 41.702980, 19.964167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606667, 42.487244, 20.428623>,  <39.216122, 42.263462, 19.980553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606667, 42.487244, 20.428623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596455, 42.088337, 20.400877>,  <38.590328, 41.848995, 20.384230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596455, 42.088337, 20.400877>,  <38.606667, 42.487244, 20.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596455, 42.088337, 20.400877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355659, -0.055785, 0.932949,
		-0.934267, 0.048492, -0.353262,
		-0.025534, -0.997265, -0.069365,
		38.588795, 41.789158, 20.380068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968609, 42.309120, 20.728941>,  <38.606667, 42.487244, 20.428623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968609, 42.309120, 20.728941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182659, 41.972591, 20.759436>,  <38.311089, 41.770676, 20.777733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182659, 41.972591, 20.759436>,  <37.968609, 42.309120, 20.728941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182659, 41.972591, 20.759436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300472, -0.105215, 0.947970,
		-0.789528, -0.530193, -0.309098,
		0.535129, -0.841324, 0.076238,
		38.343197, 41.720196, 20.782307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486832, 41.841312, 21.016912>,  <37.968609, 42.309120, 20.728941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486832, 41.841312, 21.016912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847363, 41.689381, 21.100180>,  <38.063683, 41.598221, 21.150141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847363, 41.689381, 21.100180>,  <37.486832, 41.841312, 21.016912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847363, 41.689381, 21.100180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365580, -0.409388, 0.835914,
		-0.232280, -0.829538, -0.507851,
		0.901331, -0.379826, 0.208170,
		38.117764, 41.575432, 21.162630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320591, 41.207180, 21.267788>,  <37.486832, 41.841312, 21.016912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320591, 41.207180, 21.267788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697899, 41.252300, 21.392698>,  <37.924282, 41.279373, 21.467644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697899, 41.252300, 21.392698>,  <37.320591, 41.207180, 21.267788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697899, 41.252300, 21.392698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215677, -0.506902, 0.834586,
		0.252436, -0.854591, -0.453817,
		0.943271, 0.112801, 0.312276,
		37.980881, 41.286140, 21.486382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529049, 40.583714, 21.600725>,  <37.320591, 41.207180, 21.267788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529049, 40.583714, 21.600725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786278, 40.863880, 21.724575>,  <37.940617, 41.031982, 21.798885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786278, 40.863880, 21.724575>,  <37.529049, 40.583714, 21.600725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786278, 40.863880, 21.724575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001405, -0.405390, 0.914143,
		0.765802, -0.587427, -0.261680,
		0.643075, 0.700420, 0.309623,
		37.979198, 41.074005, 21.817463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021751, 40.161942, 21.968641>,  <37.529049, 40.583714, 21.600725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021751, 40.161942, 21.968641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017498, 40.541931, 22.093502>,  <38.014946, 40.769924, 22.168419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017498, 40.541931, 22.093502>,  <38.021751, 40.161942, 21.968641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017498, 40.541931, 22.093502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082534, -0.311937, 0.946511,
		0.996531, -0.015696, 0.081723,
		-0.010636, 0.949973, 0.312151,
		38.014309, 40.826923, 22.187147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378983, 40.131615, 22.596292>,  <38.021751, 40.161942, 21.968641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378983, 40.131615, 22.596292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219418, 40.497589, 22.620825>,  <38.123680, 40.717175, 22.635544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219418, 40.497589, 22.620825>,  <38.378983, 40.131615, 22.596292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219418, 40.497589, 22.620825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279712, -0.185103, 0.942071,
		0.873287, 0.358648, 0.329759,
		-0.398911, 0.914936, 0.061330,
		38.099743, 40.772072, 22.639223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567493, 40.378311, 23.225758>,  <38.378983, 40.131615, 22.596292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567493, 40.378311, 23.225758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252182, 40.607334, 23.135609>,  <38.062996, 40.744747, 23.081520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252182, 40.607334, 23.135609>,  <38.567493, 40.378311, 23.225758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252182, 40.607334, 23.135609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454419, -0.294751, 0.840610,
		0.414866, 0.765051, 0.492527,
		-0.788282, 0.572554, -0.225372,
		38.015697, 40.779102, 23.067997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391045, 40.778732, 23.876387>,  <38.567493, 40.378311, 23.225758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391045, 40.778732, 23.876387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067970, 40.757542, 23.641495>,  <37.874126, 40.744827, 23.500559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067970, 40.757542, 23.641495>,  <38.391045, 40.778732, 23.876387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067970, 40.757542, 23.641495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559626, -0.244700, 0.791795,
		-0.185641, 0.968150, 0.167994,
		-0.807685, -0.052976, -0.587229,
		37.825665, 40.741650, 23.465326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936844, 41.060532, 24.287777>,  <38.391045, 40.778732, 23.876387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936844, 41.060532, 24.287777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702816, 40.885818, 24.014452>,  <37.562401, 40.780991, 23.850456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702816, 40.885818, 24.014452>,  <37.936844, 41.060532, 24.287777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702816, 40.885818, 24.014452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688946, -0.176818, 0.702914,
		-0.427842, 0.882019, -0.197468,
		-0.585068, -0.436781, -0.683314,
		37.527294, 40.754784, 23.809458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276051, 41.243977, 24.359581>,  <37.936844, 41.060532, 24.287777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276051, 41.243977, 24.359581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268536, 40.882187, 24.189135>,  <37.264027, 40.665112, 24.086866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268536, 40.882187, 24.189135>,  <37.276051, 41.243977, 24.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268536, 40.882187, 24.189135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627057, -0.321295, 0.709626,
		-0.778747, 0.280531, -0.561120,
		-0.018786, -0.904473, -0.426116,
		37.262901, 40.610844, 24.061300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645233, 41.011787, 24.598885>,  <37.276051, 41.243977, 24.359581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645233, 41.011787, 24.598885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817734, 40.673836, 24.472260>,  <36.921234, 40.471066, 24.396284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817734, 40.673836, 24.472260>,  <36.645233, 41.011787, 24.598885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817734, 40.673836, 24.472260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576604, -0.527946, 0.623539,
		-0.693940, -0.086371, -0.714834,
		0.431249, -0.844875, -0.316561,
		36.947109, 40.420372, 24.377291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097198, 40.644936, 24.511570>,  <36.645233, 41.011787, 24.598885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097198, 40.644936, 24.511570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382896, 40.364983, 24.509947>,  <36.554317, 40.197010, 24.508972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382896, 40.364983, 24.509947>,  <36.097198, 40.644936, 24.511570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382896, 40.364983, 24.509947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567751, -0.582778, 0.581403,
		-0.409279, -0.412961, -0.813606,
		0.714248, -0.699881, -0.004060,
		36.597172, 40.155018, 24.508730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680592, 40.047546, 24.603149>,  <36.097198, 40.644936, 24.511570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680592, 40.047546, 24.603149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054813, 39.977047, 24.725569>,  <36.279346, 39.934746, 24.799021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054813, 39.977047, 24.725569>,  <35.680592, 40.047546, 24.603149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054813, 39.977047, 24.725569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349718, -0.583196, 0.733198,
		0.049260, -0.792981, -0.607252,
		0.935559, -0.176249, 0.306048,
		36.335480, 39.924171, 24.817383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718452, 39.353455, 24.721691>,  <35.680592, 40.047546, 24.603149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718452, 39.353455, 24.721691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033829, 39.499290, 24.919859>,  <36.223053, 39.586792, 25.038759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033829, 39.499290, 24.919859>,  <35.718452, 39.353455, 24.721691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033829, 39.499290, 24.919859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226875, -0.576257, 0.785147,
		0.571746, -0.731438, -0.371626,
		0.788438, 0.364592, 0.495418,
		36.270359, 39.608669, 25.068483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985153, 38.728512, 24.934320>,  <35.718452, 39.353455, 24.721691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985153, 38.728512, 24.934320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108265, 39.033596, 25.161844>,  <36.182133, 39.216648, 25.298359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108265, 39.033596, 25.161844>,  <35.985153, 38.728512, 24.934320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108265, 39.033596, 25.161844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302592, -0.488324, 0.818522,
		0.902057, -0.424044, 0.080492,
		0.307783, 0.762710, 0.568809,
		36.200600, 39.262409, 25.332487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413162, 38.385475, 25.394363>,  <35.985153, 38.728512, 24.934320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413162, 38.385475, 25.394363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309731, 38.734634, 25.559858>,  <36.247673, 38.944130, 25.659155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309731, 38.734634, 25.559858>,  <36.413162, 38.385475, 25.394363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309731, 38.734634, 25.559858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274151, -0.477005, 0.835049,
		0.926271, 0.102502, 0.362651,
		-0.258581, 0.872903, 0.413735,
		36.232155, 38.996506, 25.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669552, 38.400894, 26.062132>,  <36.413162, 38.385475, 25.394363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669552, 38.400894, 26.062132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395382, 38.691868, 26.074976>,  <36.230881, 38.866451, 26.082684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395382, 38.691868, 26.074976>,  <36.669552, 38.400894, 26.062132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395382, 38.691868, 26.074976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328104, -0.347926, 0.878234,
		0.650028, 0.591430, 0.477152,
		-0.685427, 0.727432, 0.032111,
		36.189754, 38.910099, 26.084610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733875, 38.647018, 26.765909>,  <36.669552, 38.400894, 26.062132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733875, 38.647018, 26.765909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366138, 38.724144, 26.628719>,  <36.145496, 38.770420, 26.546406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366138, 38.724144, 26.628719>,  <36.733875, 38.647018, 26.765909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366138, 38.724144, 26.628719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388302, -0.303983, 0.869952,
		0.063482, 0.932961, 0.354335,
		-0.919343, 0.192816, -0.342974,
		36.090336, 38.781990, 26.525827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412766, 38.800823, 27.402115>,  <36.733875, 38.647018, 26.765909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412766, 38.800823, 27.402115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100166, 38.763058, 27.155428>,  <35.912605, 38.740398, 27.007416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100166, 38.763058, 27.155428>,  <36.412766, 38.800823, 27.402115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100166, 38.763058, 27.155428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620493, 0.014392, 0.784080,
		-0.065155, 0.995429, -0.069833,
		-0.781501, -0.094418, -0.616718,
		35.865715, 38.734734, 26.970413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895447, 39.236828, 27.725111>,  <36.412766, 38.800823, 27.402115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895447, 39.236828, 27.725111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699440, 38.990158, 27.478666>,  <35.581837, 38.842155, 27.330799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699440, 38.990158, 27.478666>,  <35.895447, 39.236828, 27.725111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699440, 38.990158, 27.478666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630017, -0.237936, 0.739233,
		-0.602462, 0.750399, -0.271922,
		-0.490020, -0.616675, -0.616111,
		35.552433, 38.805157, 27.293833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164364, 39.372971, 27.759502>,  <35.895447, 39.236828, 27.725111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164364, 39.372971, 27.759502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226799, 38.993340, 27.650040>,  <35.264259, 38.765560, 27.584362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226799, 38.993340, 27.650040>,  <35.164364, 39.372971, 27.759502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226799, 38.993340, 27.650040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574550, -0.312601, 0.756421,
		-0.803447, 0.039158, -0.594087,
		0.156092, -0.949077, -0.273657,
		35.273628, 38.708618, 27.567944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680004, 39.092812, 28.194006>,  <35.164364, 39.372971, 27.759502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680004, 39.092812, 28.194006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844925, 38.758240, 28.049570>,  <34.943878, 38.557495, 27.962908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844925, 38.758240, 28.049570>,  <34.680004, 39.092812, 28.194006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844925, 38.758240, 28.049570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545014, -0.544055, 0.637937,
		-0.730044, -0.066226, -0.680184,
		0.412306, -0.836432, -0.361090,
		34.968616, 38.507309, 27.941244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107174, 38.696796, 28.038988>,  <34.680004, 39.092812, 28.194006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107174, 38.696796, 28.038988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436523, 38.474998, 28.087318>,  <34.634132, 38.341919, 28.116316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436523, 38.474998, 28.087318>,  <34.107174, 38.696796, 28.038988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436523, 38.474998, 28.087318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363562, -0.351903, 0.862546,
		-0.435761, -0.754120, -0.491340,
		0.823368, -0.554497, 0.120824,
		34.683533, 38.308651, 28.123566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919323, 37.940926, 28.242563>,  <34.107174, 38.696796, 28.038988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919323, 37.940926, 28.242563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298401, 37.999729, 28.355892>,  <34.525848, 38.035011, 28.423889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298401, 37.999729, 28.355892>,  <33.919323, 37.940926, 28.242563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298401, 37.999729, 28.355892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205338, -0.398787, 0.893759,
		0.244373, -0.905184, -0.347741,
		0.947691, 0.147006, 0.283321,
		34.582706, 38.043831, 28.440889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023010, 37.347885, 28.515396>,  <33.919323, 37.940926, 28.242563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023010, 37.347885, 28.515396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296104, 37.595497, 28.670668>,  <34.459961, 37.744064, 28.763830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296104, 37.595497, 28.670668>,  <34.023010, 37.347885, 28.515396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296104, 37.595497, 28.670668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125389, -0.424126, 0.896881,
		0.719830, -0.661002, -0.211945,
		0.682731, 0.619026, 0.388181,
		34.500923, 37.781204, 28.787123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480480, 36.958122, 28.905218>,  <34.023010, 37.347885, 28.515396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480480, 36.958122, 28.905218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539444, 37.326466, 29.049599>,  <34.574821, 37.547474, 29.136227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539444, 37.326466, 29.049599>,  <34.480480, 36.958122, 28.905218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539444, 37.326466, 29.049599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082510, -0.352218, 0.932274,
		0.985629, -0.167205, 0.024062,
		0.147405, 0.920861, 0.360952,
		34.583664, 37.602722, 29.157885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092945, 36.956890, 29.365158>,  <34.480480, 36.958122, 28.905218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092945, 36.956890, 29.365158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874676, 37.280006, 29.454350>,  <34.743713, 37.473877, 29.507864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874676, 37.280006, 29.454350>,  <35.092945, 36.956890, 29.365158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874676, 37.280006, 29.454350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102623, -0.199668, 0.974475,
		0.831693, 0.554624, 0.026055,
		-0.545670, 0.807790, 0.222980,
		34.710976, 37.522343, 29.521244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492764, 37.366512, 29.967714>,  <35.092945, 36.956890, 29.365158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492764, 37.366512, 29.967714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104870, 37.461983, 29.947136>,  <34.872135, 37.519264, 29.934788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104870, 37.461983, 29.947136>,  <35.492764, 37.366512, 29.967714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104870, 37.461983, 29.947136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130079, -0.326715, 0.936129,
		0.206625, 0.914489, 0.347874,
		-0.969735, 0.238678, -0.051448,
		34.813950, 37.533585, 29.931702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433220, 37.380779, 30.572901>,  <35.492764, 37.366512, 29.967714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433220, 37.380779, 30.572901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058884, 37.423962, 30.438707>,  <34.834282, 37.449871, 30.358191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058884, 37.423962, 30.438707>,  <35.433220, 37.380779, 30.572901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058884, 37.423962, 30.438707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343946, -0.487326, 0.802630,
		-0.076844, 0.866522, 0.493189,
		-0.935840, 0.107953, -0.335484,
		34.778133, 37.456348, 30.338062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088036, 37.775043, 31.156902>,  <35.433220, 37.380779, 30.572901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088036, 37.775043, 31.156902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838619, 37.573559, 30.917749>,  <34.688969, 37.452667, 30.774258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838619, 37.573559, 30.917749>,  <35.088036, 37.775043, 31.156902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838619, 37.573559, 30.917749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483748, -0.352181, 0.801221,
		-0.614149, 0.788823, -0.024069,
		-0.623545, -0.503713, -0.597884,
		34.651554, 37.422443, 30.738384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412727, 37.896637, 31.485424>,  <35.088036, 37.775043, 31.156902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412727, 37.896637, 31.485424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359386, 37.569386, 31.261683>,  <34.327381, 37.373035, 31.127438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359386, 37.569386, 31.261683>,  <34.412727, 37.896637, 31.485424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359386, 37.569386, 31.261683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541072, -0.412762, 0.732713,
		-0.830336, 0.400360, -0.387626,
		-0.133352, -0.818132, -0.559355,
		34.319382, 37.323944, 31.093876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690781, 37.763432, 31.470694>,  <34.412727, 37.896637, 31.485424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690781, 37.763432, 31.470694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891331, 37.421738, 31.415695>,  <34.011662, 37.216721, 31.382696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891331, 37.421738, 31.415695>,  <33.690781, 37.763432, 31.470694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891331, 37.421738, 31.415695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451600, -0.393915, 0.800555,
		-0.738022, -0.339289, -0.583272,
		0.501379, -0.854233, -0.137495,
		34.041744, 37.165466, 31.374447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168304, 37.229706, 31.450214>,  <33.690781, 37.763432, 31.470694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168304, 37.229706, 31.450214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512676, 37.036728, 31.514776>,  <33.719299, 36.920940, 31.553513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512676, 37.036728, 31.514776>,  <33.168304, 37.229706, 31.450214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512676, 37.036728, 31.514776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423988, -0.505120, 0.751723,
		-0.281137, -0.715613, -0.639422,
		0.860928, -0.482444, 0.161403,
		33.770954, 36.891994, 31.563198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990295, 36.496635, 31.493500>,  <33.168304, 37.229706, 31.450214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990295, 36.496635, 31.493500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345440, 36.537338, 31.672985>,  <33.558529, 36.561760, 31.780676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345440, 36.537338, 31.672985>,  <32.990295, 36.496635, 31.493500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345440, 36.537338, 31.672985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380297, -0.386643, 0.840168,
		0.258983, -0.916599, -0.304590,
		0.887864, 0.101755, 0.448713,
		33.611797, 36.567863, 31.807598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028973, 35.884010, 31.754402>,  <32.990295, 36.496635, 31.493500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028973, 35.884010, 31.754402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308834, 36.085144, 31.957438>,  <33.476749, 36.205826, 32.079258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308834, 36.085144, 31.957438>,  <33.028973, 35.884010, 31.754402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308834, 36.085144, 31.957438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213959, -0.530370, 0.820323,
		0.681697, -0.682542, -0.263487,
		0.699650, 0.502836, 0.507588,
		33.518730, 36.235996, 32.109715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408001, 35.422943, 32.070183>,  <33.028973, 35.884010, 31.754402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408001, 35.422943, 32.070183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520512, 35.752136, 32.267597>,  <33.588017, 35.949654, 32.386047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520512, 35.752136, 32.267597>,  <33.408001, 35.422943, 32.070183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520512, 35.752136, 32.267597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033611, -0.522435, 0.852017,
		0.959039, -0.223062, -0.174609,
		0.281275, 0.822986, 0.493538,
		33.604893, 35.999031, 32.415657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068611, 35.303749, 32.445316>,  <33.408001, 35.422943, 32.070183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068611, 35.303749, 32.445316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862797, 35.579391, 32.649429>,  <33.739307, 35.744778, 32.771896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862797, 35.579391, 32.649429>,  <34.068611, 35.303749, 32.445316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862797, 35.579391, 32.649429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114716, -0.534432, 0.837390,
		0.849762, 0.489403, 0.195932,
		-0.514534, 0.689106, 0.510282,
		33.708435, 35.786121, 32.802513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918648, 35.124454, 32.359375>,  <34.068611, 35.303749, 32.445316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918648, 35.124454, 32.359375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120686, 35.189709, 32.698380>,  <35.241909, 35.228863, 32.901783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120686, 35.189709, 32.698380>,  <34.918648, 35.124454, 32.359375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120686, 35.189709, 32.698380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673078, 0.689116, 0.268488,
		-0.540231, -0.706049, 0.457870,
		0.505091, 0.163137, 0.847508,
		35.272213, 35.238651, 32.952633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105106, 35.670193, 31.938227>,  <34.918648, 35.124454, 32.359375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105106, 35.670193, 31.938227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330460, 35.340076, 31.953737>,  <35.465672, 35.142006, 31.963043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330460, 35.340076, 31.953737>,  <35.105106, 35.670193, 31.938227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330460, 35.340076, 31.953737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823053, 0.564708, 0.060734,
		-0.072021, -0.002301, 0.997401,
		0.563380, -0.825287, 0.038777,
		35.499474, 35.092491, 31.965370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636566, 35.763569, 32.480618>,  <35.105106, 35.670193, 31.938227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636566, 35.763569, 32.480618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784874, 35.473194, 32.248913>,  <35.873859, 35.298969, 32.109890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784874, 35.473194, 32.248913>,  <35.636566, 35.763569, 32.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784874, 35.473194, 32.248913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866402, 0.494997, -0.065776,
		0.334482, -0.477486, 0.812483,
		0.370769, -0.725937, -0.579263,
		35.896103, 35.255413, 32.075134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339520, 35.615688, 32.781113>,  <35.636566, 35.763569, 32.480618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339520, 35.615688, 32.781113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330429, 35.470989, 32.408314>,  <36.324974, 35.384171, 32.184635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330429, 35.470989, 32.408314>,  <36.339520, 35.615688, 32.781113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330429, 35.470989, 32.408314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851671, 0.481229, -0.207548,
		0.523584, -0.798473, 0.297154,
		-0.022723, -0.361746, -0.932000,
		36.323612, 35.362465, 32.128716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068985, 35.482384, 32.632137>,  <36.339520, 35.615688, 32.781113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068985, 35.482384, 32.632137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891590, 35.519337, 32.275536>,  <36.785152, 35.541508, 32.061573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891590, 35.519337, 32.275536>,  <37.068985, 35.482384, 32.632137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891590, 35.519337, 32.275536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783177, 0.523628, -0.335332,
		0.435839, -0.846924, -0.304573,
		-0.443484, 0.092384, -0.891508,
		36.758545, 35.547050, 32.008083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597469, 35.450062, 32.163776>,  <37.068985, 35.482384, 32.632137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597469, 35.450062, 32.163776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304337, 35.613693, 31.946297>,  <37.128456, 35.711872, 31.815807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304337, 35.613693, 31.946297>,  <37.597469, 35.450062, 32.163776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304337, 35.613693, 31.946297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677557, 0.511826, -0.528158,
		0.062225, -0.755441, -0.652255,
		-0.732834, 0.409075, -0.543703,
		37.084488, 35.736416, 31.783186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854599, 35.402775, 31.481678>,  <37.597469, 35.450062, 32.163776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854599, 35.402775, 31.481678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569942, 35.681892, 31.449055>,  <37.399151, 35.849365, 31.429480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569942, 35.681892, 31.449055>,  <37.854599, 35.402775, 31.481678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569942, 35.681892, 31.449055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638758, 0.594315, -0.488648,
		-0.292505, -0.399838, -0.868660,
		-0.711638, 0.697796, -0.081560,
		37.356449, 35.891232, 31.424587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682522, 35.569534, 30.827311>,  <37.854599, 35.402775, 31.481678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682522, 35.569534, 30.827311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595924, 35.898422, 31.037865>,  <37.543964, 36.095757, 31.164198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595924, 35.898422, 31.037865>,  <37.682522, 35.569534, 30.827311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595924, 35.898422, 31.037865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464001, 0.561042, -0.685518,
		-0.858972, 0.095832, -0.502975,
		-0.216495, 0.822222, 0.526386,
		37.530975, 36.145088, 31.195780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547333, 36.022373, 30.310911>,  <37.682522, 35.569534, 30.827311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547333, 36.022373, 30.310911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561661, 36.289295, 30.608480>,  <37.570255, 36.449448, 30.787022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561661, 36.289295, 30.608480>,  <37.547333, 36.022373, 30.310911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561661, 36.289295, 30.608480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318351, 0.698001, -0.641442,
		-0.947296, 0.259803, -0.187437,
		0.035818, 0.667306, 0.743922,
		37.572407, 36.489487, 30.831657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180939, 36.502544, 30.037563>,  <37.547333, 36.022373, 30.310911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180939, 36.502544, 30.037563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384953, 36.680634, 30.331951>,  <37.507359, 36.787487, 30.508583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384953, 36.680634, 30.331951>,  <37.180939, 36.502544, 30.037563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384953, 36.680634, 30.331951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274370, 0.726718, -0.629763,
		-0.815223, 0.523127, 0.248494,
		0.510031, 0.445218, 0.735968,
		37.537964, 36.814198, 30.552742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851166, 37.171280, 30.073862>,  <37.180939, 36.502544, 30.037563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851166, 37.171280, 30.073862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220100, 37.174751, 30.228380>,  <37.441460, 37.176834, 30.321091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220100, 37.174751, 30.228380>,  <36.851166, 37.171280, 30.073862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220100, 37.174751, 30.228380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295237, 0.629119, -0.719058,
		-0.249269, 0.777261, 0.577694,
		0.922334, 0.008682, 0.386296,
		37.496799, 37.177357, 30.344269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199894, 37.894444, 30.011398>,  <36.851166, 37.171280, 30.073862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199894, 37.894444, 30.011398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517990, 37.658760, 30.068565>,  <37.708847, 37.517349, 30.102865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517990, 37.658760, 30.068565>,  <37.199894, 37.894444, 30.011398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517990, 37.658760, 30.068565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539144, 0.579409, -0.611235,
		0.277335, 0.563134, 0.778438,
		0.795241, -0.589207, 0.142920,
		37.756561, 37.481998, 30.111441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662174, 38.404911, 30.033709>,  <37.199894, 37.894444, 30.011398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662174, 38.404911, 30.033709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824017, 38.056076, 29.923607>,  <37.921120, 37.846775, 29.857546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824017, 38.056076, 29.923607>,  <37.662174, 38.404911, 30.033709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824017, 38.056076, 29.923607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487552, 0.460353, -0.741868,
		0.773686, 0.165960, 0.611446,
		0.404602, -0.872085, -0.275255,
		37.945396, 37.794449, 29.841030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418034, 38.510368, 29.934986>,  <37.662174, 38.404911, 30.033709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418034, 38.510368, 29.934986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347328, 38.187527, 29.709652>,  <38.304905, 37.993824, 29.574451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347328, 38.187527, 29.709652>,  <38.418034, 38.510368, 29.934986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347328, 38.187527, 29.709652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296835, 0.501984, -0.812343,
		0.938427, -0.310807, 0.150845,
		-0.176760, -0.807101, -0.563333,
		38.294300, 37.945396, 29.540651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967152, 38.573437, 29.410885>,  <38.418034, 38.510368, 29.934986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967152, 38.573437, 29.410885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719177, 38.297203, 29.261873>,  <38.570393, 38.131462, 29.172466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719177, 38.297203, 29.261873>,  <38.967152, 38.573437, 29.410885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719177, 38.297203, 29.261873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272125, 0.256080, -0.927562,
		0.735955, -0.676402, 0.029172,
		-0.619934, -0.690582, -0.372529,
		38.533195, 38.090027, 29.150114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399502, 38.163803, 28.924765>,  <38.967152, 38.573437, 29.410885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399502, 38.163803, 28.924765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012539, 38.133865, 28.827993>,  <38.780361, 38.115902, 28.769932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012539, 38.133865, 28.827993>,  <39.399502, 38.163803, 28.924765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012539, 38.133865, 28.827993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223814, 0.194264, -0.955075,
		0.118479, -0.978090, -0.171181,
		-0.967404, -0.074844, -0.241926,
		38.722317, 38.111412, 28.755415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365345, 37.658905, 28.311232>,  <39.399502, 38.163803, 28.924765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365345, 37.658905, 28.311232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022850, 37.863335, 28.281155>,  <38.817352, 37.985992, 28.263109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022850, 37.863335, 28.281155>,  <39.365345, 37.658905, 28.311232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022850, 37.863335, 28.281155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139961, 0.089408, -0.986112,
		-0.497256, -0.854873, -0.148085,
		-0.856241, 0.511076, -0.075190,
		38.765976, 38.016659, 28.258598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007656, 37.371853, 27.754593>,  <39.365345, 37.658905, 28.311232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007656, 37.371853, 27.754593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836361, 37.730350, 27.800825>,  <38.733582, 37.945450, 27.828564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836361, 37.730350, 27.800825>,  <39.007656, 37.371853, 27.754593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836361, 37.730350, 27.800825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013631, 0.134295, -0.990848,
		-0.903561, -0.422747, -0.069727,
		-0.428242, 0.896242, 0.115581,
		38.707890, 37.999222, 27.835499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486813, 37.374451, 27.360397>,  <39.007656, 37.371853, 27.754593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486813, 37.374451, 27.360397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582512, 37.757301, 27.425713>,  <38.639931, 37.987011, 27.464901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582512, 37.757301, 27.425713>,  <38.486813, 37.374451, 27.360397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582512, 37.757301, 27.425713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058672, 0.153611, -0.986388,
		-0.969185, 0.245569, -0.019406,
		0.239245, 0.957131, 0.163286,
		38.654285, 38.044441, 27.474699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193108, 37.699703, 26.826265>,  <38.486813, 37.374451, 27.360397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193108, 37.699703, 26.826265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448441, 37.976780, 26.960552>,  <38.601639, 38.143028, 27.041124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448441, 37.976780, 26.960552>,  <38.193108, 37.699703, 26.826265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448441, 37.976780, 26.960552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101597, 0.356499, -0.928755,
		-0.763026, 0.626963, 0.157189,
		0.638333, 0.692694, 0.335715,
		38.639942, 38.184589, 27.061266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938210, 38.419521, 26.634542>,  <38.193108, 37.699703, 26.826265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938210, 38.419521, 26.634542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333473, 38.418774, 26.695921>,  <38.570629, 38.418327, 26.732748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333473, 38.418774, 26.695921>,  <37.938210, 38.419521, 26.634542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333473, 38.418774, 26.695921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145480, 0.329553, -0.932861,
		-0.048828, 0.944135, 0.325921,
		0.988156, -0.001865, 0.153444,
		38.629921, 38.418213, 26.741955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183773, 38.995014, 26.376417>,  <37.938210, 38.419521, 26.634542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183773, 38.995014, 26.376417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483112, 38.729691, 26.376352>,  <38.662716, 38.570496, 26.376314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483112, 38.729691, 26.376352>,  <38.183773, 38.995014, 26.376417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483112, 38.729691, 26.376352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264686, 0.298842, -0.916861,
		0.608212, 0.686085, 0.399206,
		0.748344, -0.663310, -0.000162,
		38.707615, 38.530697, 26.376303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875916, 39.312141, 26.265827>,  <38.183773, 38.995014, 26.376417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875916, 39.312141, 26.265827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870792, 38.930428, 26.146379>,  <38.867718, 38.701397, 26.074711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870792, 38.930428, 26.146379>,  <38.875916, 39.312141, 26.265827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870792, 38.930428, 26.146379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205716, 0.289739, -0.934737,
		0.978528, -0.073404, 0.192600,
		-0.012810, -0.954287, -0.298618,
		38.866951, 38.644142, 26.056793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191113, 39.408836, 25.631256>,  <38.875916, 39.312141, 26.265827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191113, 39.408836, 25.631256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082119, 39.024406, 25.612967>,  <39.016724, 38.793747, 25.601994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082119, 39.024406, 25.612967>,  <39.191113, 39.408836, 25.631256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082119, 39.024406, 25.612967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083989, 0.023580, -0.996188,
		0.958488, -0.275282, 0.074295,
		-0.272481, -0.961074, -0.045722,
		39.000374, 38.736084, 25.599251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654438, 39.160305, 25.109440>,  <39.191113, 39.408836, 25.631256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654438, 39.160305, 25.109440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359764, 38.890797, 25.132549>,  <39.182961, 38.729092, 25.146416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359764, 38.890797, 25.132549>,  <39.654438, 39.160305, 25.109440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359764, 38.890797, 25.132549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024717, -0.112207, -0.993377,
		0.675789, -0.730374, 0.099314,
		-0.736681, -0.673768, 0.057775,
		39.138760, 38.688667, 25.149881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864616, 38.554146, 24.692616>,  <39.654438, 39.160305, 25.109440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864616, 38.554146, 24.692616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466438, 38.517822, 24.704218>,  <39.227531, 38.496029, 24.711180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466438, 38.517822, 24.704218>,  <39.864616, 38.554146, 24.692616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466438, 38.517822, 24.704218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008289, -0.385596, -0.922630,
		0.094967, -0.918188, 0.384593,
		-0.995446, -0.090807, 0.029009,
		39.167805, 38.490582, 24.712921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789181, 37.898220, 24.459236>,  <39.864616, 38.554146, 24.692616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789181, 37.898220, 24.459236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466938, 38.119362, 24.374062>,  <39.273590, 38.252048, 24.322956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466938, 38.119362, 24.374062>,  <39.789181, 37.898220, 24.459236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466938, 38.119362, 24.374062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140699, -0.170601, -0.975243,
		-0.575499, -0.815624, 0.059651,
		-0.805608, 0.552858, -0.212939,
		39.225254, 38.285221, 24.310181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448959, 37.607208, 23.912796>,  <39.789181, 37.898220, 24.459236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448959, 37.607208, 23.912796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299694, 37.977848, 23.894201>,  <39.210133, 38.200233, 23.883045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299694, 37.977848, 23.894201>,  <39.448959, 37.607208, 23.912796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299694, 37.977848, 23.894201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338670, 0.089402, -0.936648,
		-0.863742, -0.365268, -0.347173,
		-0.373165, 0.926599, -0.046485,
		39.187744, 38.255829, 23.880255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031715, 37.599583, 23.267984>,  <39.448959, 37.607208, 23.912796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031715, 37.599583, 23.267984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126781, 37.977810, 23.356905>,  <39.183823, 38.204746, 23.410257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126781, 37.977810, 23.356905>,  <39.031715, 37.599583, 23.267984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126781, 37.977810, 23.356905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119756, 0.198588, -0.972739,
		-0.963937, 0.257807, -0.066040,
		0.237664, 0.945568, 0.222300,
		39.198082, 38.261478, 23.423595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716942, 37.970745, 22.764099>,  <39.031715, 37.599583, 23.267984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716942, 37.970745, 22.764099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986065, 38.224018, 22.917149>,  <39.147541, 38.375984, 23.008978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986065, 38.224018, 22.917149>,  <38.716942, 37.970745, 22.764099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986065, 38.224018, 22.917149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194030, 0.348059, -0.917174,
		-0.713917, 0.691325, 0.111321,
		0.672812, 0.633186, 0.382622,
		39.187908, 38.413975, 23.031935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663574, 38.566154, 22.343557>,  <38.716942, 37.970745, 22.764099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663574, 38.566154, 22.343557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011501, 38.620819, 22.533182>,  <39.220257, 38.653618, 22.646957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011501, 38.620819, 22.533182>,  <38.663574, 38.566154, 22.343557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011501, 38.620819, 22.533182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405243, 0.350154, -0.844494,
		-0.281408, 0.926669, 0.249188,
		0.869821, 0.136666, 0.474062,
		39.272446, 38.661819, 22.675400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855053, 39.277802, 22.179686>,  <38.663574, 38.566154, 22.343557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855053, 39.277802, 22.179686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185932, 39.077927, 22.282492>,  <39.384460, 38.958000, 22.344175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185932, 39.077927, 22.282492>,  <38.855053, 39.277802, 22.179686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185932, 39.077927, 22.282492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519014, 0.504156, -0.690254,
		0.215334, 0.704372, 0.676381,
		0.827197, -0.499687, 0.257017,
		39.434090, 38.928020, 22.359596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290043, 39.711273, 22.106468>,  <38.855053, 39.277802, 22.179686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290043, 39.711273, 22.106468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532291, 39.392986, 22.103516>,  <39.677639, 39.202011, 22.101744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532291, 39.392986, 22.103516>,  <39.290043, 39.711273, 22.106468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532291, 39.392986, 22.103516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588844, 0.454363, -0.668444,
		0.535249, 0.400476, 0.743726,
		0.605617, -0.795722, -0.007380,
		39.713978, 39.154270, 22.101301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940899, 40.008160, 21.989763>,  <39.290043, 39.711273, 22.106468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940899, 40.008160, 21.989763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995033, 39.620445, 21.907623>,  <40.027515, 39.387817, 21.858339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995033, 39.620445, 21.907623>,  <39.940899, 40.008160, 21.989763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995033, 39.620445, 21.907623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760936, 0.234421, -0.604998,
		0.634554, -0.074378, 0.769291,
		0.135339, -0.969286, -0.205349,
		40.035637, 39.329659, 21.846018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733936, 39.803051, 22.079592>,  <39.940899, 40.008160, 21.989763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733936, 39.803051, 22.079592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576851, 39.533447, 21.829313>,  <40.482601, 39.371685, 21.679146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576851, 39.533447, 21.829313>,  <40.733936, 39.803051, 22.079592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576851, 39.533447, 21.829313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706810, 0.214079, -0.674232,
		0.588385, -0.707026, 0.392324,
		-0.392711, -0.674007, -0.625694,
		40.459038, 39.331245, 21.641605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321659, 39.504547, 21.741459>,  <40.733936, 39.803051, 22.079592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321659, 39.504547, 21.741459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015320, 39.412018, 21.501469>,  <40.831516, 39.356503, 21.357473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015320, 39.412018, 21.501469>,  <41.321659, 39.504547, 21.741459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015320, 39.412018, 21.501469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612584, 0.021226, -0.790120,
		0.195505, -0.972646, 0.125446,
		-0.765845, -0.231319, -0.599978,
		40.785568, 39.342621, 21.321476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610565, 38.985489, 21.325140>,  <41.321659, 39.504547, 21.741459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610565, 38.985489, 21.325140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288441, 39.120850, 21.130430>,  <41.095165, 39.202068, 21.013603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288441, 39.120850, 21.130430>,  <41.610565, 38.985489, 21.325140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288441, 39.120850, 21.130430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498072, -0.059138, -0.865116,
		-0.321547, -0.939140, -0.120926,
		-0.805315, 0.338405, -0.486775,
		41.046844, 39.222370, 20.984398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565151, 38.567539, 20.792900>,  <41.610565, 38.985489, 21.325140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565151, 38.567539, 20.792900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344517, 38.876621, 20.667250>,  <41.212135, 39.062073, 20.591860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344517, 38.876621, 20.667250>,  <41.565151, 38.567539, 20.792900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344517, 38.876621, 20.667250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404872, -0.081234, -0.910758,
		-0.729268, -0.629541, -0.268040,
		-0.551585, 0.772709, -0.314125,
		41.179043, 39.108433, 20.573011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345284, 38.333714, 20.122869>,  <41.565151, 38.567539, 20.792900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345284, 38.333714, 20.122869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612762, 38.036602, 20.109470>,  <41.773251, 37.858334, 20.101431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612762, 38.036602, 20.109470>,  <41.345284, 38.333714, 20.122869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612762, 38.036602, 20.109470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060967, -0.099678, 0.993150,
		-0.741029, -0.662076, -0.111940,
		0.668699, -0.742778, -0.033499,
		41.813374, 37.813770, 20.099421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127445, 37.806259, 20.544321>,  <41.345284, 38.333714, 20.122869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127445, 37.806259, 20.544321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511318, 37.704769, 20.495937>,  <41.741642, 37.643875, 20.466908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511318, 37.704769, 20.495937>,  <41.127445, 37.806259, 20.544321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511318, 37.704769, 20.495937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064044, -0.221624, 0.973027,
		-0.273697, -0.941542, -0.196438,
		0.959681, -0.253734, -0.120958,
		41.799225, 37.628651, 20.459650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334679, 37.078041, 20.787743>,  <41.127445, 37.806259, 20.544321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334679, 37.078041, 20.787743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693684, 37.254177, 20.797359>,  <41.909084, 37.359859, 20.803129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693684, 37.254177, 20.797359>,  <41.334679, 37.078041, 20.787743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693684, 37.254177, 20.797359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017033, -0.089095, 0.995878,
		0.440669, -0.893399, -0.087463,
		0.897508, 0.440342, 0.024044,
		41.962936, 37.386280, 20.804573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850342, 36.653339, 21.163332>,  <41.334679, 37.078041, 20.787743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850342, 36.653339, 21.163332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973633, 37.030415, 21.214443>,  <42.047607, 37.256660, 21.245110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973633, 37.030415, 21.214443>,  <41.850342, 36.653339, 21.163332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973633, 37.030415, 21.214443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002147, -0.135007, 0.990842,
		0.951309, -0.305133, -0.043637,
		0.308230, 0.942691, 0.127778,
		42.066101, 37.313221, 21.252777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419025, 36.563107, 21.484030>,  <41.850342, 36.653339, 21.163332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419025, 36.563107, 21.484030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306381, 36.941357, 21.549133>,  <42.238796, 37.168308, 21.588196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306381, 36.941357, 21.549133>,  <42.419025, 36.563107, 21.484030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306381, 36.941357, 21.549133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024388, -0.162516, 0.986405,
		0.959220, 0.281747, 0.022703,
		-0.281607, 0.945625, 0.162760,
		42.221901, 37.225044, 21.597961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751888, 36.734715, 22.107309>,  <42.419025, 36.563107, 21.484030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751888, 36.734715, 22.107309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501919, 37.045639, 22.078318>,  <42.351936, 37.232193, 22.060923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501919, 37.045639, 22.078318>,  <42.751888, 36.734715, 22.107309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501919, 37.045639, 22.078318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132720, -0.014291, 0.991051,
		0.769319, 0.628953, 0.112096,
		-0.624927, 0.777312, -0.072480,
		42.314442, 37.278831, 22.056574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945778, 37.139992, 22.714405>,  <42.751888, 36.734715, 22.107309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945778, 37.139992, 22.714405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581585, 37.261227, 22.601864>,  <42.363068, 37.333969, 22.534338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581585, 37.261227, 22.601864>,  <42.945778, 37.139992, 22.714405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581585, 37.261227, 22.601864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291870, 0.011032, 0.956395,
		0.292978, 0.952898, 0.078419,
		-0.910481, 0.303091, -0.281354,
		42.308441, 37.352154, 22.517458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777016, 37.472618, 23.322290>,  <42.945778, 37.139992, 22.714405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777016, 37.472618, 23.322290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424526, 37.466721, 23.133301>,  <42.213032, 37.463181, 23.019907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424526, 37.466721, 23.133301>,  <42.777016, 37.472618, 23.322290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424526, 37.466721, 23.133301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470652, 0.120432, 0.874061,
		0.044012, 0.992612, -0.113068,
		-0.881221, -0.014746, -0.472475,
		42.160160, 37.462296, 22.991558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285362, 37.971512, 23.580135>,  <42.777016, 37.472618, 23.322290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285362, 37.971512, 23.580135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045860, 37.687458, 23.431976>,  <41.902161, 37.517025, 23.343081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045860, 37.687458, 23.431976>,  <42.285362, 37.971512, 23.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045860, 37.687458, 23.431976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370369, -0.164554, 0.914193,
		-0.710154, 0.684562, -0.164486,
		-0.598755, -0.710139, -0.370399,
		41.866234, 37.474415, 23.320856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742115, 38.095547, 23.948284>,  <42.285362, 37.971512, 23.580135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742115, 38.095547, 23.948284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696663, 37.727409, 23.798590>,  <41.669392, 37.506527, 23.708773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696663, 37.727409, 23.798590>,  <41.742115, 38.095547, 23.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696663, 37.727409, 23.798590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326813, -0.321088, 0.888873,
		-0.938233, 0.223305, -0.264297,
		-0.113627, -0.920346, -0.374235,
		41.662575, 37.451305, 23.686319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156895, 37.858944, 24.270779>,  <41.742115, 38.095547, 23.948284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156895, 37.858944, 24.270779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315689, 37.515175, 24.141911>,  <41.410965, 37.308914, 24.064589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315689, 37.515175, 24.141911>,  <41.156895, 37.858944, 24.270779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315689, 37.515175, 24.141911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410897, -0.480290, 0.774909,
		-0.820711, -0.175247, -0.543803,
		0.396984, -0.859424, -0.322171,
		41.434784, 37.257347, 24.045259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623501, 37.346405, 24.301264>,  <41.156895, 37.858944, 24.270779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623501, 37.346405, 24.301264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983406, 37.172997, 24.321211>,  <41.199348, 37.068951, 24.333179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983406, 37.172997, 24.321211>,  <40.623501, 37.346405, 24.301264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983406, 37.172997, 24.321211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274430, -0.473283, 0.837073,
		-0.339287, -0.766852, -0.544813,
		0.899762, -0.433521, 0.049869,
		41.253334, 37.042938, 24.336170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491074, 36.636917, 24.378872>,  <40.623501, 37.346405, 24.301264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491074, 36.636917, 24.378872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863426, 36.676151, 24.519638>,  <41.086838, 36.699692, 24.604097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863426, 36.676151, 24.519638>,  <40.491074, 36.636917, 24.378872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863426, 36.676151, 24.519638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286700, -0.400885, 0.870112,
		0.226425, -0.910862, -0.345054,
		0.930879, 0.098088, 0.351915,
		41.142689, 36.705578, 24.625212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706070, 36.025738, 24.697346>,  <40.491074, 36.636917, 24.378872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706070, 36.025738, 24.697346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940235, 36.305191, 24.861881>,  <41.080734, 36.472862, 24.960602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940235, 36.305191, 24.861881>,  <40.706070, 36.025738, 24.697346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940235, 36.305191, 24.861881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222502, -0.349435, 0.910158,
		0.779607, -0.624340, -0.049114,
		0.585411, 0.698638, 0.411339,
		41.115860, 36.514782, 24.985283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086945, 35.657337, 25.244408>,  <40.706070, 36.025738, 24.697346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086945, 35.657337, 25.244408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102688, 36.047806, 25.329769>,  <41.112133, 36.282085, 25.380985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102688, 36.047806, 25.329769>,  <41.086945, 35.657337, 25.244408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102688, 36.047806, 25.329769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277984, -0.194440, 0.940701,
		0.959779, -0.096346, 0.263708,
		0.039358, 0.976171, 0.213402,
		41.114494, 36.340656, 25.393789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500526, 35.588459, 25.863626>,  <41.086945, 35.657337, 25.244408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500526, 35.588459, 25.863626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302223, 35.935249, 25.843321>,  <41.183239, 36.143322, 25.831139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302223, 35.935249, 25.843321>,  <41.500526, 35.588459, 25.863626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302223, 35.935249, 25.843321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193700, -0.053406, 0.979606,
		0.846582, 0.495484, 0.194410,
		-0.495761, 0.866974, -0.050762,
		41.153496, 36.195343, 25.828093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711819, 35.945045, 26.455177>,  <41.500526, 35.588459, 25.863626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711819, 35.945045, 26.455177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341198, 36.059685, 26.357714>,  <41.118828, 36.128468, 26.299236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341198, 36.059685, 26.357714>,  <41.711819, 35.945045, 26.455177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341198, 36.059685, 26.357714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247333, 0.023899, 0.968636,
		0.283429, 0.957754, 0.048741,
		-0.926550, 0.286595, -0.243658,
		41.063232, 36.145664, 26.284616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639847, 36.468216, 26.880405>,  <41.711819, 35.945045, 26.455177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639847, 36.468216, 26.880405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259861, 36.411777, 26.768934>,  <41.031868, 36.377914, 26.702051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259861, 36.411777, 26.768934>,  <41.639847, 36.468216, 26.880405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259861, 36.411777, 26.768934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295471, 0.116506, 0.948221,
		-0.101319, 0.983117, -0.152365,
		-0.949964, -0.141092, -0.278679,
		40.974873, 36.369450, 26.685331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234852, 37.096722, 27.079315>,  <41.639847, 36.468216, 26.880405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234852, 37.096722, 27.079315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010151, 36.769020, 27.033243>,  <40.875332, 36.572399, 27.005600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010151, 36.769020, 27.033243>,  <41.234852, 37.096722, 27.079315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010151, 36.769020, 27.033243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396369, 0.144314, 0.906678,
		-0.726174, 0.554981, -0.405794,
		-0.561750, -0.819250, -0.115180,
		40.841625, 36.523247, 26.998690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497601, 37.329884, 27.245005>,  <41.234852, 37.096722, 27.079315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497601, 37.329884, 27.245005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517929, 36.931938, 27.280006>,  <40.530125, 36.693169, 27.301008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517929, 36.931938, 27.280006>,  <40.497601, 37.329884, 27.245005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517929, 36.931938, 27.280006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496572, 0.050851, 0.866505,
		-0.866507, -0.087487, -0.491439,
		0.050818, -0.994867, 0.087506,
		40.533173, 36.633476, 27.306259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845001, 37.074898, 27.630142>,  <40.497601, 37.329884, 27.245005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845001, 37.074898, 27.630142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109169, 36.780449, 27.689430>,  <40.267670, 36.603779, 27.725002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109169, 36.780449, 27.689430>,  <39.845001, 37.074898, 27.630142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109169, 36.780449, 27.689430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424757, -0.203457, 0.882149,
		-0.619212, -0.645548, -0.447039,
		0.660423, -0.736120, 0.148218,
		40.307297, 36.559612, 27.733896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401611, 36.628067, 27.833794>,  <39.845001, 37.074898, 27.630142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401611, 36.628067, 27.833794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768116, 36.533470, 27.963125>,  <39.988018, 36.476711, 28.040724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768116, 36.533470, 27.963125>,  <39.401611, 36.628067, 27.833794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768116, 36.533470, 27.963125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391031, -0.352769, 0.850087,
		-0.086974, -0.905333, -0.415702,
		0.916259, -0.236488, 0.323331,
		40.042995, 36.462524, 28.060125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360172, 35.978210, 28.190758>,  <39.401611, 36.628067, 27.833794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360172, 35.978210, 28.190758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719784, 36.118530, 28.295593>,  <39.935551, 36.202721, 28.358496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719784, 36.118530, 28.295593>,  <39.360172, 35.978210, 28.190758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719784, 36.118530, 28.295593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084468, -0.448360, 0.889853,
		0.429667, -0.822141, -0.373457,
		0.899028, 0.350796, 0.262090,
		39.989491, 36.223770, 28.374220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662476, 35.382927, 28.475512>,  <39.360172, 35.978210, 28.190758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662476, 35.382927, 28.475512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898964, 35.683632, 28.592344>,  <40.040855, 35.864056, 28.662443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898964, 35.683632, 28.592344>,  <39.662476, 35.382927, 28.475512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898964, 35.683632, 28.592344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156405, -0.462147, 0.872902,
		0.791201, -0.470392, -0.390809,
		0.591218, 0.751765, 0.292080,
		40.076328, 35.909161, 28.679968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013557, 35.080036, 28.960541>,  <39.662476, 35.382927, 28.475512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013557, 35.080036, 28.960541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073238, 35.468327, 29.035822>,  <40.109047, 35.701302, 29.080990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073238, 35.468327, 29.035822>,  <40.013557, 35.080036, 28.960541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073238, 35.468327, 29.035822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097661, -0.203871, 0.974114,
		0.983972, -0.126962, -0.125221,
		0.149205, 0.970730, 0.188204,
		40.118000, 35.759544, 29.092283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632450, 35.184742, 29.417934>,  <40.013557, 35.080036, 28.960541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632450, 35.184742, 29.417934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377918, 35.490540, 29.459169>,  <40.225197, 35.674019, 29.483910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377918, 35.490540, 29.459169>,  <40.632450, 35.184742, 29.417934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377918, 35.490540, 29.459169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086472, -0.062103, 0.994317,
		0.766553, 0.641631, -0.026589,
		-0.636333, 0.764495, 0.103088,
		40.187019, 35.719887, 29.490095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920868, 35.718628, 29.990862>,  <40.632450, 35.184742, 29.417934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920868, 35.718628, 29.990862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525837, 35.779423, 29.974897>,  <40.288818, 35.815899, 29.965319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525837, 35.779423, 29.974897>,  <40.920868, 35.718628, 29.990862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525837, 35.779423, 29.974897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034766, 0.036351, 0.998734,
		0.153243, 0.987714, -0.030616,
		-0.987577, 0.151985, -0.039909,
		40.229565, 35.825020, 29.962925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813648, 36.226238, 30.535160>,  <40.920868, 35.718628, 29.990862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813648, 36.226238, 30.535160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445751, 36.084557, 30.467489>,  <40.225014, 35.999546, 30.426886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445751, 36.084557, 30.467489>,  <40.813648, 36.226238, 30.535160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445751, 36.084557, 30.467489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195855, 0.040587, 0.979793,
		-0.340180, 0.934287, -0.106702,
		-0.919738, -0.354204, -0.169178,
		40.169830, 35.978294, 30.416737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491703, 36.526527, 31.125988>,  <40.813648, 36.226238, 30.535160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491703, 36.526527, 31.125988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250874, 36.231876, 31.002769>,  <40.106377, 36.055088, 30.928839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250874, 36.231876, 31.002769>,  <40.491703, 36.526527, 31.125988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250874, 36.231876, 31.002769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274541, -0.171291, 0.946196,
		-0.749757, 0.654250, -0.099103,
		-0.602073, -0.736625, -0.308045,
		40.070251, 36.010887, 30.910357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052551, 36.594509, 31.585321>,  <40.491703, 36.526527, 31.125988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052551, 36.594509, 31.585321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004147, 36.229404, 31.429262>,  <39.975105, 36.010342, 31.335627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004147, 36.229404, 31.429262>,  <40.052551, 36.594509, 31.585321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004147, 36.229404, 31.429262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096264, -0.380391, 0.919802,
		-0.987972, 0.148863, -0.041836,
		-0.121010, -0.912766, -0.390146,
		39.967842, 35.955574, 31.312218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402504, 36.374039, 31.718872>,  <40.052551, 36.594509, 31.585321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402504, 36.374039, 31.718872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612629, 36.041027, 31.648520>,  <39.738705, 35.841221, 31.606308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612629, 36.041027, 31.648520>,  <39.402504, 36.374039, 31.718872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612629, 36.041027, 31.648520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300326, -0.374801, 0.877114,
		-0.796147, -0.407937, -0.446919,
		0.525313, -0.832533, -0.175883,
		39.770222, 35.791267, 31.595755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965191, 35.769676, 31.845837>,  <39.402504, 36.374039, 31.718872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965191, 35.769676, 31.845837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339825, 35.634518, 31.883026>,  <39.564606, 35.553425, 31.905340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339825, 35.634518, 31.883026>,  <38.965191, 35.769676, 31.845837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339825, 35.634518, 31.883026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256088, -0.478761, 0.839766,
		-0.239237, -0.810319, -0.534929,
		0.936581, -0.337892, 0.092975,
		39.620800, 35.533150, 31.910919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824856, 35.119019, 32.057442>,  <38.965191, 35.769676, 31.845837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824856, 35.119019, 32.057442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205578, 35.192966, 32.155327>,  <39.434013, 35.237335, 32.214058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205578, 35.192966, 32.155327>,  <38.824856, 35.119019, 32.057442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205578, 35.192966, 32.155327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109656, -0.540031, 0.834471,
		0.286417, -0.821091, -0.493735,
		0.951810, 0.184866, 0.244712,
		39.491119, 35.248425, 32.228741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983253, 34.603802, 32.275883>,  <38.824856, 35.119019, 32.057442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983253, 34.603802, 32.275883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250717, 34.853130, 32.438049>,  <39.411194, 35.002728, 32.535351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250717, 34.853130, 32.438049>,  <38.983253, 34.603802, 32.275883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250717, 34.853130, 32.438049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042964, -0.511937, 0.857948,
		0.742326, -0.591094, -0.315532,
		0.668660, 0.623320, 0.405420,
		39.451317, 35.040127, 32.559673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551949, 34.215569, 32.530331>,  <38.983253, 34.603802, 32.275883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551949, 34.215569, 32.530331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567421, 34.552849, 32.744816>,  <39.576706, 34.755215, 32.873508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567421, 34.552849, 32.744816>,  <39.551949, 34.215569, 32.530331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567421, 34.552849, 32.744816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027901, -0.537315, 0.842920,
		0.998862, -0.017645, -0.044311,
		0.038682, 0.843197, 0.536212,
		39.579025, 34.805809, 32.905678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974129, 34.028465, 33.074371>,  <39.551949, 34.215569, 32.530331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974129, 34.028465, 33.074371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791458, 34.362518, 33.197014>,  <39.681854, 34.562950, 33.270599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791458, 34.362518, 33.197014>,  <39.974129, 34.028465, 33.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791458, 34.362518, 33.197014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013894, -0.337903, 0.941078,
		0.889525, 0.434028, 0.142709,
		-0.456676, 0.835129, 0.306604,
		39.654457, 34.613056, 33.288994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326897, 34.217812, 33.691586>,  <39.974129, 34.028465, 33.074371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326897, 34.217812, 33.691586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996227, 34.439037, 33.733021>,  <39.797825, 34.571774, 33.757881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996227, 34.439037, 33.733021>,  <40.326897, 34.217812, 33.691586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996227, 34.439037, 33.733021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040637, -0.242296, 0.969351,
		0.561212, 0.797127, 0.222774,
		-0.826674, 0.553065, 0.103587,
		39.748226, 34.604958, 33.764095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377148, 34.468830, 34.404419>,  <40.326897, 34.217812, 33.691586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377148, 34.468830, 34.404419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991295, 34.487617, 34.300667>,  <39.759785, 34.498890, 34.238415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991295, 34.487617, 34.300667>,  <40.377148, 34.468830, 34.404419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991295, 34.487617, 34.300667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251472, -0.458986, 0.852111,
		-0.079032, 0.887201, 0.454564,
		-0.964633, 0.046966, -0.259381,
		39.701904, 34.501709, 34.222851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136951, 34.660915, 34.994640>,  <40.377148, 34.468830, 34.404419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136951, 34.660915, 34.994640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826126, 34.503757, 34.797947>,  <39.639629, 34.409462, 34.679932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826126, 34.503757, 34.797947>,  <40.136951, 34.660915, 34.994640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826126, 34.503757, 34.797947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240166, -0.537059, 0.808633,
		-0.581801, 0.746458, 0.322969,
		-0.777064, -0.392897, -0.491735,
		39.593006, 34.385887, 34.650425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645603, 34.598736, 35.440784>,  <40.136951, 34.660915, 34.994640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645603, 34.598736, 35.440784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487198, 34.370144, 35.153290>,  <39.392155, 34.232986, 34.980793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487198, 34.370144, 35.153290>,  <39.645603, 34.598736, 35.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487198, 34.370144, 35.153290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278150, -0.671294, 0.687020,
		-0.875102, 0.471987, 0.106886,
		-0.396017, -0.571482, -0.718734,
		39.368393, 34.198700, 34.937668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030037, 34.459572, 35.698425>,  <39.645603, 34.598736, 35.440784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030037, 34.459572, 35.698425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160259, 34.175591, 35.448631>,  <39.238392, 34.005203, 35.298756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160259, 34.175591, 35.448631>,  <39.030037, 34.459572, 35.698425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160259, 34.175591, 35.448631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227476, -0.699873, 0.677076,
		-0.917752, -0.078370, -0.389345,
		0.325554, -0.709955, -0.624483,
		39.257927, 33.962605, 35.261288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431664, 34.706440, 36.341488>,  <39.030037, 34.459572, 35.698425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431664, 34.706440, 36.341488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112701, 34.601757, 36.558983>,  <38.921326, 34.538948, 36.689480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112701, 34.601757, 36.558983>,  <39.431664, 34.706440, 36.341488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112701, 34.601757, 36.558983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552568, -0.678798, 0.483635,
		0.242516, 0.686105, 0.685890,
		-0.797405, -0.261712, 0.543739,
		38.873478, 34.523243, 36.722103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626503, 34.540997, 37.064114>,  <39.431664, 34.706440, 36.341488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626503, 34.540997, 37.064114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291225, 34.330894, 37.005417>,  <39.090057, 34.204834, 36.970200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291225, 34.330894, 37.005417>,  <39.626503, 34.540997, 37.064114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291225, 34.330894, 37.005417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425900, -0.798499, 0.425452,
		-0.340648, 0.294112, 0.893004,
		-0.838193, -0.525260, -0.146745,
		39.039768, 34.173317, 36.961395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355583, 34.132439, 37.604897>,  <39.626503, 34.540997, 37.064114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355583, 34.132439, 37.604897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207775, 33.927067, 37.295097>,  <39.119091, 33.803844, 37.109219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207775, 33.927067, 37.295097>,  <39.355583, 34.132439, 37.604897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207775, 33.927067, 37.295097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342679, -0.850036, 0.400013,
		-0.863728, -0.117589, 0.490048,
		-0.369522, -0.513432, -0.774495,
		39.096920, 33.773037, 37.062748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097282, 33.574440, 37.879749>,  <39.355583, 34.132439, 37.604897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097282, 33.574440, 37.879749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104259, 33.452175, 37.498955>,  <39.108444, 33.378819, 37.270477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104259, 33.452175, 37.498955>,  <39.097282, 33.574440, 37.879749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104259, 33.452175, 37.498955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189564, -0.933847, 0.303308,
		-0.981713, -0.185752, 0.041653,
		0.017443, -0.305657, -0.951982,
		39.109493, 33.360477, 37.213360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766613, 32.883171, 37.805088>,  <39.097282, 33.574440, 37.879749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766613, 32.883171, 37.805088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060669, 32.911419, 37.535397>,  <39.237103, 32.928368, 37.373581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060669, 32.911419, 37.535397>,  <38.766613, 32.883171, 37.805088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060669, 32.911419, 37.535397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250915, -0.952272, 0.173839,
		-0.629774, -0.296970, -0.717770,
		0.735137, 0.070620, -0.674230,
		39.281212, 32.932606, 37.333126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739548, 32.342400, 37.245178>,  <38.766613, 32.883171, 37.805088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739548, 32.342400, 37.245178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115353, 32.468437, 37.298904>,  <39.340836, 32.544060, 37.331142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115353, 32.468437, 37.298904>,  <38.739548, 32.342400, 37.245178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115353, 32.468437, 37.298904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293137, -0.942492, 0.160559,
		0.177184, -0.111473, -0.977844,
		0.939509, 0.315091, 0.134318,
		39.397205, 32.562965, 37.339199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396473, 31.741869, 37.502476>,  <38.739548, 32.342400, 37.245178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396473, 31.741869, 37.502476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085648, 31.552586, 37.668488>,  <37.899151, 31.439016, 37.768093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085648, 31.552586, 37.668488>,  <38.396473, 31.741869, 37.502476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085648, 31.552586, 37.668488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330335, -0.867873, -0.371045,
		0.535771, -0.151229, 0.830710,
		-0.777064, -0.473208, 0.415025,
		37.852528, 31.410624, 37.792995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627388, 31.112431, 37.936165>,  <38.396473, 31.741869, 37.502476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627388, 31.112431, 37.936165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242439, 31.059998, 37.840958>,  <38.011471, 31.028538, 37.783833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242439, 31.059998, 37.840958>,  <38.627388, 31.112431, 37.936165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242439, 31.059998, 37.840958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218168, -0.894908, -0.389283,
		-0.161973, -0.426564, 0.889836,
		-0.962376, -0.131081, -0.238014,
		37.953728, 31.020674, 37.769554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407150, 30.496683, 38.201080>,  <38.627388, 31.112431, 37.936165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407150, 30.496683, 38.201080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196468, 30.576094, 37.870464>,  <38.070061, 30.623739, 37.672092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196468, 30.576094, 37.870464>,  <38.407150, 30.496683, 38.201080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196468, 30.576094, 37.870464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223462, -0.905810, -0.359963,
		-0.820153, -0.374294, 0.432728,
		-0.526701, 0.198527, -0.826543,
		38.038460, 30.635653, 37.622501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380753, 29.961119, 38.786518>,  <38.407150, 30.496683, 38.201080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380753, 29.961119, 38.786518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515160, 30.236732, 39.043369>,  <38.595806, 30.402100, 39.197479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515160, 30.236732, 39.043369>,  <38.380753, 29.961119, 38.786518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515160, 30.236732, 39.043369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186447, 0.619613, -0.762442,
		-0.923216, 0.375918, 0.079734,
		0.336020, 0.689033, 0.642125,
		38.615967, 30.443441, 39.236008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664425, 29.426548, 38.399292>,  <38.380753, 29.961119, 38.786518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664425, 29.426548, 38.399292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756233, 29.038864, 38.363632>,  <38.811317, 28.806253, 38.342236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756233, 29.038864, 38.363632>,  <38.664425, 29.426548, 38.399292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756233, 29.038864, 38.363632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150276, 0.055207, -0.987101,
		0.961632, 0.239959, -0.132978,
		0.229522, -0.969212, -0.089149,
		38.825089, 28.748100, 38.336887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210037, 29.520887, 37.952209>,  <38.664425, 29.426548, 38.399292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210037, 29.520887, 37.952209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028877, 29.165003, 37.929264>,  <38.920181, 28.951471, 37.915497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028877, 29.165003, 37.929264>,  <39.210037, 29.520887, 37.952209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028877, 29.165003, 37.929264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064313, 0.096781, -0.993226,
		0.889237, -0.446146, -0.101053,
		-0.452903, -0.889712, -0.057368,
		38.893005, 28.898088, 37.912052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622948, 29.121389, 37.464592>,  <39.210037, 29.520887, 37.952209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622948, 29.121389, 37.464592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253544, 28.969114, 37.483376>,  <39.031902, 28.877748, 37.494648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253544, 28.969114, 37.483376>,  <39.622948, 29.121389, 37.464592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253544, 28.969114, 37.483376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002625, -0.128702, -0.991680,
		0.383564, -0.915704, 0.119857,
		-0.923510, -0.380687, 0.046962,
		38.976490, 28.854908, 37.497463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506237, 28.456112, 37.052334>,  <39.622948, 29.121389, 37.464592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506237, 28.456112, 37.052334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135479, 28.601452, 37.089935>,  <38.913025, 28.688656, 37.112495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135479, 28.601452, 37.089935>,  <39.506237, 28.456112, 37.052334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135479, 28.601452, 37.089935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114289, -0.034692, -0.992841,
		-0.357487, -0.931007, 0.073683,
		-0.926899, 0.363349, 0.094003,
		38.857410, 28.710457, 37.118137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102905, 28.105036, 36.666725>,  <39.506237, 28.456112, 37.052334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102905, 28.105036, 36.666725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883392, 28.437092, 36.706123>,  <38.751682, 28.636326, 36.729763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883392, 28.437092, 36.706123>,  <39.102905, 28.105036, 36.666725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883392, 28.437092, 36.706123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313543, -0.095177, -0.944792,
		-0.774936, -0.549370, 0.312517,
		-0.548784, 0.830141, 0.098495,
		38.718758, 28.686134, 36.735672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342640, 28.003424, 36.541473>,  <39.102905, 28.105036, 36.666725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342640, 28.003424, 36.541473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367847, 28.397814, 36.479660>,  <38.382973, 28.634447, 36.442570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367847, 28.397814, 36.479660>,  <38.342640, 28.003424, 36.541473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367847, 28.397814, 36.479660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464503, -0.108073, -0.878953,
		-0.883326, 0.127177, 0.451177,
		0.063023, 0.985975, -0.154538,
		38.386753, 28.693605, 36.433300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736313, 28.211969, 36.150650>,  <38.342640, 28.003424, 36.541473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736313, 28.211969, 36.150650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985031, 28.517542, 36.081623>,  <38.134262, 28.700886, 36.040207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985031, 28.517542, 36.081623>,  <37.736313, 28.211969, 36.150650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985031, 28.517542, 36.081623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446015, 0.164287, -0.879818,
		-0.643771, 0.624034, 0.442878,
		0.621795, 0.763932, -0.172565,
		38.171570, 28.746721, 36.029854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304710, 28.719271, 35.761208>,  <37.736313, 28.211969, 36.150650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304710, 28.719271, 35.761208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685234, 28.817776, 35.687057>,  <37.913548, 28.876879, 35.642567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685234, 28.817776, 35.687057>,  <37.304710, 28.719271, 35.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685234, 28.817776, 35.687057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257622, 0.305025, -0.916837,
		-0.169239, 0.919953, 0.353616,
		0.951309, 0.246264, -0.185378,
		37.970627, 28.891655, 35.631443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478794, 29.437904, 35.532581>,  <37.304710, 28.719271, 35.761208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478794, 29.437904, 35.532581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732964, 29.188492, 35.350395>,  <37.885464, 29.038845, 35.241085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732964, 29.188492, 35.350395>,  <37.478794, 29.437904, 35.532581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732964, 29.188492, 35.350395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373182, 0.268412, -0.888082,
		0.675999, 0.734278, -0.062136,
		0.635421, -0.623531, -0.455466,
		37.923592, 29.001432, 35.213757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739990, 29.751438, 34.963379>,  <37.478794, 29.437904, 35.532581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739990, 29.751438, 34.963379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781837, 29.363155, 34.876858>,  <37.806946, 29.130186, 34.824947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781837, 29.363155, 34.876858>,  <37.739990, 29.751438, 34.963379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781837, 29.363155, 34.876858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243990, 0.185793, -0.951814,
		0.964118, 0.152355, -0.217405,
		0.104621, -0.970705, -0.216299,
		37.813225, 29.071943, 34.811970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277859, 29.701223, 34.644520>,  <37.739990, 29.751438, 34.963379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277859, 29.701223, 34.644520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001099, 29.431217, 34.542049>,  <37.835041, 29.269213, 34.480568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001099, 29.431217, 34.542049>,  <38.277859, 29.701223, 34.644520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001099, 29.431217, 34.542049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131054, 0.231503, -0.963966,
		0.710000, -0.700541, -0.071713,
		-0.691899, -0.675018, -0.256176,
		37.793530, 29.228712, 34.465199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725636, 29.405462, 34.151356>,  <38.277859, 29.701223, 34.644520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725636, 29.405462, 34.151356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342319, 29.306608, 34.093941>,  <38.112331, 29.247295, 34.059490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342319, 29.306608, 34.093941>,  <38.725636, 29.405462, 34.151356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342319, 29.306608, 34.093941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132311, 0.061554, -0.989295,
		0.253326, -0.967024, -0.026288,
		-0.958290, -0.247136, -0.143541,
		38.054832, 29.232468, 34.050877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330910, 28.971922, 34.313972>,  <38.725636, 29.405462, 34.151356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330910, 28.971922, 34.313972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302769, 28.641010, 34.091022>,  <39.285885, 28.442463, 33.957253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302769, 28.641010, 34.091022>,  <39.330910, 28.971922, 34.313972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302769, 28.641010, 34.091022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519217, -0.507466, 0.687671,
		-0.851742, -0.241018, 0.465238,
		-0.070352, -0.827278, -0.557371,
		39.281662, 28.392826, 33.923813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633213, 28.598024, 34.572220>,  <39.330910, 28.971922, 34.313972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633213, 28.598024, 34.572220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396614, 28.899733, 34.686207>,  <38.254654, 29.080757, 34.754597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396614, 28.899733, 34.686207>,  <38.633213, 28.598024, 34.572220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396614, 28.899733, 34.686207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238579, -0.173870, 0.955432,
		0.770202, 0.633122, -0.077110,
		-0.591498, 0.754272, 0.284964,
		38.219166, 29.126015, 34.771698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987747, 28.774988, 35.169617>,  <38.633213, 28.598024, 34.572220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987747, 28.774988, 35.169617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630577, 28.955030, 35.173233>,  <38.416275, 29.063057, 35.175404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630577, 28.955030, 35.173233>,  <38.987747, 28.774988, 35.169617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630577, 28.955030, 35.173233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015773, -0.051357, 0.998556,
		0.449923, 0.891496, 0.052957,
		-0.892928, 0.450108, 0.009045,
		38.362698, 29.090063, 35.175945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072479, 29.428478, 35.478348>,  <38.987747, 28.774988, 35.169617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072479, 29.428478, 35.478348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700878, 29.292637, 35.537155>,  <38.477917, 29.211132, 35.572441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700878, 29.292637, 35.537155>,  <39.072479, 29.428478, 35.478348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700878, 29.292637, 35.537155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134601, 0.059976, 0.989083,
		-0.344714, 0.938654, -0.010007,
		-0.929007, -0.339604, 0.147018,
		38.422176, 29.190756, 35.581261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852341, 29.866829, 35.895115>,  <39.072479, 29.428478, 35.478348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852341, 29.866829, 35.895115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631802, 29.536488, 35.942410>,  <38.499477, 29.338282, 35.970787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631802, 29.536488, 35.942410>,  <38.852341, 29.866829, 35.895115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631802, 29.536488, 35.942410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057023, 0.104092, 0.992932,
		-0.832325, 0.554193, -0.010298,
		-0.551347, -0.825854, 0.118240,
		38.466396, 29.288731, 35.977882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655087, 29.959694, 36.510574>,  <38.852341, 29.866829, 35.895115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655087, 29.959694, 36.510574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594204, 29.568525, 36.453300>,  <38.557674, 29.333824, 36.418934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594204, 29.568525, 36.453300>,  <38.655087, 29.959694, 36.510574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594204, 29.568525, 36.453300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021708, -0.141534, 0.989695,
		-0.988110, 0.153748, 0.000314,
		-0.152208, -0.977921, -0.143189,
		38.548542, 29.275148, 36.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001919, 29.821623, 36.815659>,  <38.655087, 29.959694, 36.510574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001919, 29.821623, 36.815659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257351, 29.513802, 36.814316>,  <38.410610, 29.329109, 36.813511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257351, 29.513802, 36.814316>,  <38.001919, 29.821623, 36.815659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257351, 29.513802, 36.814316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067301, -0.060192, 0.995915,
		-0.766610, -0.635742, -0.090229,
		0.638576, -0.769551, -0.003357,
		38.448925, 29.282936, 36.813309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781548, 29.375484, 37.306973>,  <38.001919, 29.821623, 36.815659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781548, 29.375484, 37.306973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127510, 29.189034, 37.232510>,  <38.335087, 29.077162, 37.187832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127510, 29.189034, 37.232510>,  <37.781548, 29.375484, 37.306973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127510, 29.189034, 37.232510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004989, -0.378852, 0.925444,
		-0.501904, -0.799496, -0.329998,
		0.864909, -0.466131, -0.186159,
		38.386982, 29.049194, 37.176662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648033, 28.618959, 37.374722>,  <37.781548, 29.375484, 37.306973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648033, 28.618959, 37.374722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041698, 28.653034, 37.436893>,  <38.277897, 28.673479, 37.474197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041698, 28.653034, 37.436893>,  <37.648033, 28.618959, 37.374722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041698, 28.653034, 37.436893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134820, -0.209509, 0.968468,
		0.115065, -0.974089, -0.194707,
		0.984167, 0.085186, 0.155434,
		38.336948, 28.678589, 37.483524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013889, 28.081665, 37.774822>,  <37.648033, 28.618959, 37.374722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013889, 28.081665, 37.774822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264809, 28.383482, 37.851933>,  <38.415359, 28.564573, 37.898201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264809, 28.383482, 37.851933>,  <38.013889, 28.081665, 37.774822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264809, 28.383482, 37.851933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088026, -0.314650, 0.945117,
		0.773791, -0.575897, -0.263797,
		0.627294, 0.754544, 0.192780,
		38.452995, 28.609846, 37.909767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581989, 27.721581, 38.234718>,  <38.013889, 28.081665, 37.774822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581989, 27.721581, 38.234718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566006, 28.116180, 38.298248>,  <38.556416, 28.352940, 38.336369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566006, 28.116180, 38.298248>,  <38.581989, 27.721581, 38.234718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566006, 28.116180, 38.298248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200657, -0.147794, 0.968449,
		0.978846, 0.070565, -0.192043,
		-0.039956, 0.986497, 0.158827,
		38.554020, 28.412130, 38.345898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196533, 27.851669, 38.628635>,  <38.581989, 27.721581, 38.234718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196533, 27.851669, 38.628635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952271, 28.159410, 38.703678>,  <38.805714, 28.344055, 38.748703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952271, 28.159410, 38.703678>,  <39.196533, 27.851669, 38.628635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952271, 28.159410, 38.703678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254383, -0.033773, 0.966514,
		0.749924, 0.637933, -0.175086,
		-0.610658, 0.769351, 0.187606,
		38.769073, 28.390217, 38.759960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648014, 28.412205, 38.883972>,  <39.196533, 27.851669, 38.628635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648014, 28.412205, 38.883972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279179, 28.420231, 39.038555>,  <39.057877, 28.425047, 39.131306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279179, 28.420231, 39.038555>,  <39.648014, 28.412205, 38.883972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279179, 28.420231, 39.038555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386883, 0.070119, 0.919459,
		-0.008650, 0.997337, -0.072418,
		-0.922088, 0.020063, 0.386459,
		39.002552, 28.426250, 39.154491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896091, 28.070919, 38.236797>,  <39.648014, 28.412205, 38.883972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896091, 28.070919, 38.236797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059231, 28.072662, 37.871582>,  <40.157116, 28.073709, 37.652454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059231, 28.072662, 37.871582>,  <39.896091, 28.070919, 38.236797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059231, 28.072662, 37.871582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010423, 0.999901, 0.009431,
		0.912989, -0.013363, 0.407766,
		0.407852, 0.004360, -0.913038,
		40.181587, 28.073971, 37.597672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474770, 28.606810, 38.058983>,  <39.896091, 28.070919, 38.236797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474770, 28.606810, 38.058983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287979, 28.524378, 37.715015>,  <40.175903, 28.474918, 37.508633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287979, 28.524378, 37.715015>,  <40.474770, 28.606810, 38.058983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287979, 28.524378, 37.715015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052115, 0.977188, -0.205880,
		0.882733, -0.051327, -0.467062,
		-0.466975, -0.206078, -0.859922,
		40.147888, 28.462555, 37.457039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427639, 28.964760, 37.352406>,  <40.474770, 28.606810, 38.058983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427639, 28.964760, 37.352406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306973, 29.341520, 37.293320>,  <40.234573, 29.567577, 37.257866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306973, 29.341520, 37.293320>,  <40.427639, 28.964760, 37.352406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306973, 29.341520, 37.293320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337847, -0.039274, -0.940381,
		-0.891547, -0.333588, -0.306370,
		-0.301667, 0.941901, -0.147717,
		40.216473, 29.624090, 37.249004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845772, 29.189667, 36.697296>,  <40.427639, 28.964760, 37.352406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845772, 29.189667, 36.697296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159229, 29.411364, 36.809525>,  <40.347305, 29.544380, 36.876862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159229, 29.411364, 36.809525>,  <39.845772, 29.189667, 36.697296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159229, 29.411364, 36.809525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397638, -0.100526, -0.912019,
		-0.477272, 0.826264, -0.299163,
		0.783643, 0.554240, 0.280576,
		40.394321, 29.577635, 36.893696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037239, 29.742283, 36.144775>,  <39.845772, 29.189667, 36.697296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037239, 29.742283, 36.144775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349403, 29.604557, 36.353542>,  <40.536701, 29.521921, 36.478802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349403, 29.604557, 36.353542>,  <40.037239, 29.742283, 36.144775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349403, 29.604557, 36.353542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442850, -0.284895, -0.850129,
		0.441404, 0.894585, -0.069857,
		0.780414, -0.344314, 0.521921,
		40.583527, 29.501263, 36.510120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668911, 29.991312, 35.917500>,  <40.037239, 29.742283, 36.144775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668911, 29.991312, 35.917500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750942, 29.630255, 36.068855>,  <40.800159, 29.413620, 36.159668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750942, 29.630255, 36.068855>,  <40.668911, 29.991312, 35.917500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750942, 29.630255, 36.068855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449443, -0.256587, -0.855666,
		0.869451, 0.345540, 0.353068,
		0.205075, -0.902644, 0.378390,
		40.812466, 29.359461, 36.182373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429417, 30.133715, 35.828770>,  <40.668911, 29.991312, 35.917500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429417, 30.133715, 35.828770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503941, 30.445873, 36.067524>,  <41.548653, 30.633169, 36.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503941, 30.445873, 36.067524>,  <41.429417, 30.133715, 35.828770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503941, 30.445873, 36.067524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297508, 0.534188, -0.791285,
		-0.936364, 0.325000, -0.132651,
		0.186308, 0.780396, 0.596884,
		41.559834, 30.679993, 36.246590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132130, 30.687943, 35.425858>,  <41.429417, 30.133715, 35.828770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132130, 30.687943, 35.425858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403271, 30.821795, 35.687706>,  <41.565956, 30.902105, 35.844814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403271, 30.821795, 35.687706>,  <41.132130, 30.687943, 35.425858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403271, 30.821795, 35.687706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240254, 0.740698, -0.627410,
		-0.694831, 0.582570, 0.421690,
		0.677856, 0.334631, 0.654625,
		41.606628, 30.922184, 35.884094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950863, 30.638733, 34.615757>,  <41.132130, 30.687943, 35.425858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950863, 30.638733, 34.615757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152809, 30.781366, 34.301315>,  <41.273975, 30.866947, 34.112652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152809, 30.781366, 34.301315>,  <40.950863, 30.638733, 34.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152809, 30.781366, 34.301315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863018, -0.189896, 0.468124,
		0.017648, -0.914760, -0.403611,
		0.504866, 0.356586, -0.786103,
		41.304268, 30.888342, 34.065483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238968, 30.056921, 34.384270>,  <40.950863, 30.638733, 34.615757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238968, 30.056921, 34.384270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442310, 30.378633, 34.261173>,  <41.564316, 30.571661, 34.187313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442310, 30.378633, 34.261173>,  <41.238968, 30.056921, 34.384270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442310, 30.378633, 34.261173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861020, -0.468518, 0.197828,
		0.014927, -0.365540, -0.930676,
		0.508352, 0.804284, -0.307743,
		41.594814, 30.619919, 34.168850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837589, 29.712753, 34.281033>,  <41.238968, 30.056921, 34.384270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837589, 29.712753, 34.281033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952579, 30.085695, 34.368729>,  <42.021576, 30.309462, 34.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952579, 30.085695, 34.368729>,  <41.837589, 29.712753, 34.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952579, 30.085695, 34.368729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748700, -0.361512, 0.555660,
		0.597331, 0.004405, -0.801983,
		0.287479, 0.932357, 0.219240,
		42.038822, 30.365402, 34.434502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442295, 29.961985, 34.090359>,  <41.837589, 29.712753, 34.281033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442295, 29.961985, 34.090359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362869, 30.116030, 34.450859>,  <42.315212, 30.208456, 34.667160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362869, 30.116030, 34.450859>,  <42.442295, 29.961985, 34.090359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362869, 30.116030, 34.450859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796368, -0.472609, 0.377409,
		0.571286, 0.792672, -0.212845,
		-0.198569, 0.385112, 0.901254,
		42.303299, 30.231564, 34.721237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052299, 30.434879, 34.428562>,  <42.442295, 29.961985, 34.090359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052299, 30.434879, 34.428562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804913, 30.255148, 34.686432>,  <42.656479, 30.147308, 34.841152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804913, 30.255148, 34.686432>,  <43.052299, 30.434879, 34.428562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804913, 30.255148, 34.686432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784607, -0.398502, 0.474961,
		0.043489, 0.799562, 0.599007,
		-0.618466, -0.449329, 0.644673,
		42.619373, 30.120350, 34.879833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254902, 30.503201, 35.221584>,  <43.052299, 30.434879, 34.428562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254902, 30.503201, 35.221584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122837, 30.133615, 35.144348>,  <43.043598, 29.911865, 35.098007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122837, 30.133615, 35.144348>,  <43.254902, 30.503201, 35.221584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122837, 30.133615, 35.144348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763392, -0.381688, 0.521101,
		-0.555179, 0.024645, 0.831366,
		-0.330165, -0.923963, -0.193091,
		43.023788, 29.856426, 35.086422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863541, 30.304071, 34.733826>,  <43.254902, 30.503201, 35.221584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863541, 30.304071, 34.733826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849556, 30.658142, 34.919403>,  <43.841164, 30.870584, 35.030750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849556, 30.658142, 34.919403>,  <43.863541, 30.304071, 34.733826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849556, 30.658142, 34.919403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711252, 0.348157, -0.610662,
		-0.702067, 0.308628, -0.641756,
		-0.034965, 0.885176, 0.463941,
		43.839066, 30.923695, 35.058586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772968, 30.889706, 34.170746>,  <43.863541, 30.304071, 34.733826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772968, 30.889706, 34.170746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983948, 30.972507, 34.500340>,  <44.110535, 31.022188, 34.698097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983948, 30.972507, 34.500340>,  <43.772968, 30.889706, 34.170746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983948, 30.972507, 34.500340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809364, 0.172460, -0.561416,
		-0.258321, 0.963019, -0.076579,
		0.527447, 0.207006, 0.823983,
		44.142181, 31.034609, 34.747536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045715, 31.590576, 34.163383>,  <43.772968, 30.889706, 34.170746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045715, 31.590576, 34.163383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295109, 31.362917, 34.377800>,  <44.444744, 31.226322, 34.506451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295109, 31.362917, 34.377800>,  <44.045715, 31.590576, 34.163383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295109, 31.362917, 34.377800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772586, 0.343323, -0.534078,
		0.119932, 0.747128, 0.653770,
		0.623479, -0.569147, 0.536046,
		44.482151, 31.192173, 34.538612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633816, 31.983173, 34.528698>,  <44.045715, 31.590576, 34.163383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633816, 31.983173, 34.528698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732929, 31.603165, 34.452740>,  <44.792397, 31.375158, 34.407166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732929, 31.603165, 34.452740>,  <44.633816, 31.983173, 34.528698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732929, 31.603165, 34.452740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835390, 0.308777, -0.454731,
		0.490640, -0.045961, 0.870150,
		0.247782, -0.950024, -0.189893,
		44.807262, 31.318157, 34.395771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008457, 32.211586, 33.934246>,  <44.633816, 31.983173, 34.528698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008457, 32.211586, 33.934246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387196, 32.083733, 33.919746>,  <45.614437, 32.007019, 33.911045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387196, 32.083733, 33.919746>,  <45.008457, 32.211586, 33.934246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387196, 32.083733, 33.919746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293928, 0.905433, -0.306262,
		0.130716, 0.279328, 0.951257,
		0.946847, -0.319634, -0.036253,
		45.671249, 31.987843, 33.908871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437283, 32.665306, 34.266548>,  <45.008457, 32.211586, 33.934246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437283, 32.665306, 34.266548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692410, 32.485729, 34.016224>,  <45.845486, 32.377983, 33.866028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692410, 32.485729, 34.016224>,  <45.437283, 32.665306, 34.266548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692410, 32.485729, 34.016224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417324, 0.884374, -0.209103,
		0.647327, -0.127797, 0.751422,
		0.637815, -0.448945, -0.625811,
		45.883755, 32.351048, 33.828480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165813, 32.712311, 34.519901>,  <45.437283, 32.665306, 34.266548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165813, 32.712311, 34.519901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104706, 32.739502, 34.125534>,  <46.068043, 32.755817, 33.888912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104706, 32.739502, 34.125534>,  <46.165813, 32.712311, 34.519901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104706, 32.739502, 34.125534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299265, 0.953973, 0.019409,
		0.941861, -0.292087, -0.166080,
		-0.152767, 0.067983, -0.985921,
		46.058876, 32.759895, 33.829758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793892, 32.919186, 34.040810>,  <46.165813, 32.712311, 34.519901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793892, 32.919186, 34.040810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435692, 33.045700, 33.915565>,  <46.220772, 33.121609, 33.840420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435692, 33.045700, 33.915565>,  <46.793892, 32.919186, 34.040810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435692, 33.045700, 33.915565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373568, 0.916589, -0.142518,
		0.241917, -0.244593, -0.938962,
		-0.895501, 0.316289, -0.313110,
		46.167042, 33.140587, 33.821632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947788, 33.297565, 33.568577>,  <46.793892, 32.919186, 34.040810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947788, 33.297565, 33.568577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588333, 33.395763, 33.714001>,  <46.372658, 33.454681, 33.801254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588333, 33.395763, 33.714001>,  <46.947788, 33.297565, 33.568577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588333, 33.395763, 33.714001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241271, 0.968736, -0.057777,
		-0.366375, 0.035795, -0.929778,
		-0.898642, 0.245497, 0.363557,
		46.318741, 33.469414, 33.823067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582790, 33.889496, 33.163872>,  <46.947788, 33.297565, 33.568577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582790, 33.889496, 33.163872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506325, 33.900162, 33.556351>,  <46.460445, 33.906563, 33.791840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506325, 33.900162, 33.556351>,  <46.582790, 33.889496, 33.163872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506325, 33.900162, 33.556351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241596, 0.970156, 0.020706,
		-0.951361, 0.241011, -0.191901,
		-0.191164, 0.026663, 0.981196,
		46.448975, 33.908161, 33.850708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565079, 34.546555, 33.271812>,  <46.582790, 33.889496, 33.163872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565079, 34.546555, 33.271812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555027, 34.419823, 33.651073>,  <46.548996, 34.343784, 33.878628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555027, 34.419823, 33.651073>,  <46.565079, 34.546555, 33.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555027, 34.419823, 33.651073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423129, 0.855930, 0.297229,
		-0.905721, 0.408660, 0.112548,
		-0.025132, -0.316829, 0.948150,
		46.547485, 34.324776, 33.935520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058918, 34.982189, 33.713066>,  <46.565079, 34.546555, 33.271812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058918, 34.982189, 33.713066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407238, 34.852451, 33.860859>,  <46.616230, 34.774609, 33.949535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407238, 34.852451, 33.860859>,  <46.058918, 34.982189, 33.713066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407238, 34.852451, 33.860859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387297, 0.915471, -0.109147,
		-0.302845, 0.238143, 0.922807,
		0.870796, -0.324346, 0.369478,
		46.668476, 34.755146, 33.971703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.300373, 35.468819, 34.273643>,  <46.058918, 34.982189, 33.713066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.300373, 35.468819, 34.273643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.626339, 35.298256, 34.116623>,  <46.821918, 35.195919, 34.022411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.626339, 35.298256, 34.116623>,  <46.300373, 35.468819, 34.273643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.626339, 35.298256, 34.116623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412889, 0.902422, -0.123113,
		0.406739, -0.061752, 0.911455,
		0.814915, -0.426404, -0.392547,
		46.870815, 35.170334, 33.998859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796852, 36.009918, 34.348358>,  <46.300373, 35.468819, 34.273643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796852, 36.009918, 34.348358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993362, 35.709572, 34.171791>,  <47.111271, 35.529366, 34.065853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993362, 35.709572, 34.171791>,  <46.796852, 36.009918, 34.348358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993362, 35.709572, 34.171791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804998, 0.584945, -0.099079,
		0.332599, -0.306663, 0.891816,
		0.491280, -0.750864, -0.441415,
		47.140747, 35.484314, 34.039368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374542, 35.732651, 34.761116>,  <46.796852, 36.009918, 34.348358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374542, 35.732651, 34.761116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421284, 35.725918, 34.363914>,  <47.449329, 35.721878, 34.125591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421284, 35.725918, 34.363914>,  <47.374542, 35.732651, 34.761116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421284, 35.725918, 34.363914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689688, 0.720818, 0.068938,
		0.714616, -0.692920, 0.095842,
		0.116853, -0.016837, -0.993007,
		47.456341, 35.720867, 34.066013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326321, 34.967796, 35.007217>,  <47.374542, 35.732651, 34.761116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326321, 34.967796, 35.007217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082085, 35.235497, 35.176586>,  <46.935543, 35.396118, 35.278206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082085, 35.235497, 35.176586>,  <47.326321, 34.967796, 35.007217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082085, 35.235497, 35.176586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787750, -0.568217, -0.237865,
		0.081402, -0.478786, 0.874150,
		-0.610593, 0.669249, 0.423418,
		46.898907, 35.436272, 35.303612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.095024, 35.044773, 34.798191>,  <47.326321, 34.967796, 35.007217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.095024, 35.044773, 34.798191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930374, 35.224590, 35.115295>,  <47.831585, 35.332481, 35.305557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930374, 35.224590, 35.115295>,  <48.095024, 35.044773, 34.798191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.930374, 35.224590, 35.115295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864726, 0.467328, 0.183991,
		-0.287770, 0.761261, -0.581094,
		-0.411627, 0.449540, 0.792765,
		47.806885, 35.359451, 35.353127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.675808, 33.897003, 25.650240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314175, 34.067932, 25.647951>,  <37.097195, 34.170490, 25.646578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314175, 34.067932, 25.647951>,  <37.675808, 33.897003, 25.650240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314175, 34.067932, 25.647951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120528, -0.242106, 0.962735,
		0.410010, 0.871081, 0.270388,
		-0.904082, 0.427320, -0.005724,
		37.042950, 34.196129, 25.646235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592293, 34.204823, 26.205996>,  <37.675808, 33.897003, 25.650240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592293, 34.204823, 26.205996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206783, 34.185684, 26.101040>,  <36.975479, 34.174202, 26.038067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206783, 34.185684, 26.101040>,  <37.592293, 34.204823, 26.205996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206783, 34.185684, 26.101040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249609, -0.184866, 0.950537,
		-0.093982, 0.981599, 0.166227,
		-0.963775, -0.047842, -0.262390,
		36.917652, 34.171333, 26.022324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167709, 34.552696, 26.711020>,  <37.592293, 34.204823, 26.205996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167709, 34.552696, 26.711020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908478, 34.307396, 26.530392>,  <36.752937, 34.160217, 26.422014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908478, 34.307396, 26.530392>,  <37.167709, 34.552696, 26.711020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908478, 34.307396, 26.530392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265066, -0.374237, 0.888643,
		-0.713954, 0.695609, 0.079985,
		-0.648081, -0.613249, -0.451571,
		36.714054, 34.123421, 26.394920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586510, 34.616222, 27.132042>,  <37.167709, 34.552696, 26.711020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586510, 34.616222, 27.132042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555428, 34.281254, 26.915638>,  <36.536777, 34.080273, 26.785795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555428, 34.281254, 26.915638>,  <36.586510, 34.616222, 27.132042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555428, 34.281254, 26.915638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262622, -0.506294, 0.821399,
		-0.961764, 0.205911, -0.180581,
		-0.077708, -0.837417, -0.541012,
		36.532116, 34.030029, 26.753334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014790, 34.402161, 27.278826>,  <36.586510, 34.616222, 27.132042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014790, 34.402161, 27.278826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201321, 34.074070, 27.146296>,  <36.313240, 33.877216, 27.066778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201321, 34.074070, 27.146296>,  <36.014790, 34.402161, 27.278826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201321, 34.074070, 27.146296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239993, -0.477798, 0.845052,
		-0.851437, -0.314553, -0.419657,
		0.466324, -0.820223, -0.331324,
		36.341217, 33.828003, 27.046898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500778, 33.787121, 27.254187>,  <36.014790, 34.402161, 27.278826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500778, 33.787121, 27.254187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882404, 33.669079, 27.274843>,  <36.111382, 33.598255, 27.287237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882404, 33.669079, 27.274843>,  <35.500778, 33.787121, 27.254187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882404, 33.669079, 27.274843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186056, -0.448539, 0.874183,
		-0.234809, -0.843639, -0.482843,
		0.954069, -0.295102, 0.051643,
		36.168625, 33.580547, 27.290337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456345, 33.212067, 27.551304>,  <35.500778, 33.787121, 27.254187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456345, 33.212067, 27.551304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837055, 33.318428, 27.612518>,  <36.065483, 33.382244, 27.649246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837055, 33.318428, 27.612518>,  <35.456345, 33.212067, 27.551304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837055, 33.318428, 27.612518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000232, -0.498195, 0.867065,
		0.306794, -0.825287, -0.474109,
		0.951776, 0.265900, 0.153035,
		36.122589, 33.398197, 27.658428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699753, 32.607025, 27.794575>,  <35.456345, 33.212067, 27.551304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699753, 32.607025, 27.794575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956764, 32.886688, 27.920006>,  <36.110970, 33.054485, 27.995264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956764, 32.886688, 27.920006>,  <35.699753, 32.607025, 27.794575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956764, 32.886688, 27.920006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154854, -0.519263, 0.840468,
		0.750452, -0.491466, -0.441909,
		0.642528, 0.699162, 0.313576,
		36.149521, 33.096436, 28.014078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237152, 32.253731, 28.068844>,  <35.699753, 32.607025, 27.794575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237152, 32.253731, 28.068844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260471, 32.628536, 28.206604>,  <36.274464, 32.853420, 28.289261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260471, 32.628536, 28.206604>,  <36.237152, 32.253731, 28.068844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260471, 32.628536, 28.206604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071862, -0.348032, 0.934725,
		0.995710, -0.029740, -0.087624,
		0.058294, 0.937011, 0.344401,
		36.277958, 32.909641, 28.309925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753647, 32.229271, 28.528044>,  <36.237152, 32.253731, 28.068844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753647, 32.229271, 28.528044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570415, 32.562405, 28.652330>,  <36.460476, 32.762287, 28.726902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570415, 32.562405, 28.652330>,  <36.753647, 32.229271, 28.528044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570415, 32.562405, 28.652330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006181, -0.346556, 0.938009,
		0.888891, 0.431601, 0.153601,
		-0.458077, 0.832838, 0.310719,
		36.432991, 32.812256, 28.745546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157421, 32.505268, 29.081635>,  <36.753647, 32.229271, 28.528044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157421, 32.505268, 29.081635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813297, 32.696487, 29.152452>,  <36.606823, 32.811218, 29.194942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813297, 32.696487, 29.152452>,  <37.157421, 32.505268, 29.081635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813297, 32.696487, 29.152452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056993, -0.254923, 0.965280,
		0.506582, 0.840527, 0.192066,
		-0.860306, 0.478047, 0.177044,
		36.555206, 32.839901, 29.205566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249474, 33.091038, 29.626854>,  <37.157421, 32.505268, 29.081635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249474, 33.091038, 29.626854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857937, 33.010460, 29.612467>,  <36.623016, 32.962112, 29.603834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857937, 33.010460, 29.612467>,  <37.249474, 33.091038, 29.626854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857937, 33.010460, 29.612467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009159, -0.218721, 0.975744,
		-0.204425, 0.954768, 0.215938,
		-0.978840, -0.201444, -0.035968,
		36.564285, 32.950027, 29.601677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832771, 33.607601, 29.992292>,  <37.249474, 33.091038, 29.626854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832771, 33.607601, 29.992292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631763, 33.261864, 29.984367>,  <36.511158, 33.054420, 29.979612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631763, 33.261864, 29.984367>,  <36.832771, 33.607601, 29.992292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631763, 33.261864, 29.984367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018611, -0.012095, 0.999753,
		-0.864367, 0.502762, -0.010008,
		-0.502517, -0.864340, -0.019811,
		36.481007, 33.002563, 29.978424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331444, 33.550091, 30.586016>,  <36.832771, 33.607601, 29.992292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331444, 33.550091, 30.586016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313778, 33.158512, 30.506300>,  <36.303177, 32.923565, 30.458471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313778, 33.158512, 30.506300>,  <36.331444, 33.550091, 30.586016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313778, 33.158512, 30.506300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108038, -0.193633, 0.975107,
		-0.993165, 0.064595, -0.097212,
		-0.044164, -0.978945, -0.199288,
		36.300529, 32.864830, 30.446514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861279, 33.256802, 31.038752>,  <36.331444, 33.550091, 30.586016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861279, 33.256802, 31.038752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062443, 32.930481, 30.924526>,  <36.183140, 32.734688, 30.855991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062443, 32.930481, 30.924526>,  <35.861279, 33.256802, 31.038752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062443, 32.930481, 30.924526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128328, -0.256249, 0.958055,
		-0.854761, -0.518458, -0.024178,
		0.502906, -0.815805, -0.285564,
		36.213314, 32.685738, 30.838858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518551, 32.819275, 31.371174>,  <35.861279, 33.256802, 31.038752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518551, 32.819275, 31.371174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876850, 32.652702, 31.308928>,  <36.091831, 32.552757, 31.271580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876850, 32.652702, 31.308928>,  <35.518551, 32.819275, 31.371174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876850, 32.652702, 31.308928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075170, -0.203126, 0.976263,
		-0.438160, -0.886184, -0.150647,
		0.895748, -0.416435, -0.155616,
		36.145576, 32.527771, 31.262243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413994, 32.146008, 31.615410>,  <35.518551, 32.819275, 31.371174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413994, 32.146008, 31.615410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802040, 32.241493, 31.598021>,  <36.034866, 32.298782, 31.587587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802040, 32.241493, 31.598021>,  <35.413994, 32.146008, 31.615410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802040, 32.241493, 31.598021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062526, -0.072829, 0.995383,
		0.234444, -0.968356, -0.085578,
		0.970116, 0.238712, -0.043473,
		36.093075, 32.313107, 31.584978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848488, 31.660990, 32.029041>,  <35.413994, 32.146008, 31.615410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848488, 31.660990, 32.029041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082237, 31.985247, 32.014252>,  <36.222488, 32.179802, 32.005379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082237, 31.985247, 32.014252>,  <35.848488, 31.660990, 32.029041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082237, 31.985247, 32.014252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270443, -0.151599, 0.950725,
		0.765093, -0.565577, -0.307823,
		0.584373, 0.810642, -0.036969,
		36.257549, 32.228439, 32.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325153, 31.374735, 32.465752>,  <35.848488, 31.660990, 32.029041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325153, 31.374735, 32.465752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423187, 31.761900, 32.443546>,  <36.482006, 31.994198, 32.430225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423187, 31.761900, 32.443546>,  <36.325153, 31.374735, 32.465752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423187, 31.761900, 32.443546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228424, -0.002005, 0.973560,
		0.942208, -0.251286, -0.221586,
		0.245086, 0.967911, -0.055510,
		36.496712, 32.052273, 32.426891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895626, 31.465275, 32.874535>,  <36.325153, 31.374735, 32.465752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895626, 31.465275, 32.874535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765167, 31.840864, 32.830799>,  <36.686890, 32.066219, 32.804558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765167, 31.840864, 32.830799>,  <36.895626, 31.465275, 32.874535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765167, 31.840864, 32.830799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207462, 0.183946, 0.960793,
		0.922271, 0.290680, -0.254796,
		-0.326152, 0.938972, -0.109343,
		36.667320, 32.122555, 32.797997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484684, 31.899590, 32.984196>,  <36.895626, 31.465275, 32.874535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484684, 31.899590, 32.984196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145164, 32.101208, 33.048054>,  <36.941452, 32.222179, 33.086369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145164, 32.101208, 33.048054>,  <37.484684, 31.899590, 32.984196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145164, 32.101208, 33.048054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297689, 0.206061, 0.932159,
		0.436952, 0.838737, -0.324952,
		-0.848796, 0.504043, 0.159644,
		36.890526, 32.252422, 33.095947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175533, 31.897076, 33.033184>,  <37.484684, 31.899590, 32.984196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175533, 31.897076, 33.033184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365170, 32.149982, 33.278290>,  <38.478951, 32.301727, 33.425354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365170, 32.149982, 33.278290>,  <38.175533, 31.897076, 33.033184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365170, 32.149982, 33.278290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416010, 0.452508, -0.788779,
		-0.775997, 0.628870, -0.048498,
		0.474094, 0.632265, 0.612761,
		38.507397, 32.339661, 33.462116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080627, 32.705818, 32.841263>,  <38.175533, 31.897076, 33.033184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080627, 32.705818, 32.841263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.413090, 32.565414, 33.013760>,  <38.612568, 32.481174, 33.117256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.413090, 32.565414, 33.013760>,  <38.080627, 32.705818, 32.841263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413090, 32.565414, 33.013760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532831, 0.281072, -0.798179,
		0.158957, 0.893192, 0.420643,
		0.831158, -0.351008, 0.431243,
		38.662437, 32.460114, 33.143131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569935, 33.194080, 32.823605>,  <38.080627, 32.705818, 32.841263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569935, 33.194080, 32.823605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802567, 32.871162, 32.863674>,  <38.942146, 32.677410, 32.887718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802567, 32.871162, 32.863674>,  <38.569935, 33.194080, 32.823605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802567, 32.871162, 32.863674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544213, 0.294577, -0.785529,
		0.604646, 0.511366, 0.610662,
		0.581580, -0.807298, 0.100178,
		38.977039, 32.628975, 32.893726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298389, 33.447769, 32.817524>,  <38.569935, 33.194080, 32.823605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298389, 33.447769, 32.817524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294476, 33.060017, 32.719372>,  <39.292130, 32.827366, 32.660480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294476, 33.060017, 32.719372>,  <39.298389, 33.447769, 32.817524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294476, 33.060017, 32.719372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666425, 0.176633, -0.724347,
		0.745508, -0.170613, 0.644290,
		-0.009780, -0.969377, -0.245382,
		39.291542, 32.769203, 32.645756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054981, 33.294342, 32.480728>,  <39.298389, 33.447769, 32.817524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054981, 33.294342, 32.480728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.778538, 33.026020, 32.373104>,  <39.612671, 32.865028, 32.308529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.778538, 33.026020, 32.373104>,  <40.054981, 33.294342, 32.480728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778538, 33.026020, 32.373104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433411, -0.086728, -0.897014,
		0.578386, -0.736545, 0.350672,
		-0.691104, -0.670805, -0.269065,
		39.571205, 32.824780, 32.292385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448334, 32.832382, 32.074932>,  <40.054981, 33.294342, 32.480728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448334, 32.832382, 32.074932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.062359, 32.770725, 31.989946>,  <39.830772, 32.733730, 31.938955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.062359, 32.770725, 31.989946>,  <40.448334, 32.832382, 32.074932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062359, 32.770725, 31.989946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204048, 0.068671, -0.976549,
		0.165119, -0.985659, -0.034810,
		-0.964935, -0.154144, -0.212460,
		39.772877, 32.724483, 31.926208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415344, 32.399216, 31.437798>,  <40.448334, 32.832382, 32.074932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415344, 32.399216, 31.437798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.046932, 32.553116, 31.462029>,  <39.825886, 32.645454, 31.476566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.046932, 32.553116, 31.462029>,  <40.415344, 32.399216, 31.437798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046932, 32.553116, 31.462029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022833, 0.208596, -0.977735,
		-0.388818, -0.899142, -0.200908,
		-0.921032, 0.384748, 0.060576,
		39.770622, 32.668541, 31.480202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009480, 31.959084, 30.983580>,  <40.415344, 32.399216, 31.437798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009480, 31.959084, 30.983580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.822189, 32.308395, 31.037474>,  <39.709816, 32.517982, 31.069811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.822189, 32.308395, 31.037474>,  <40.009480, 31.959084, 30.983580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822189, 32.308395, 31.037474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048172, 0.177482, -0.982944,
		-0.882297, -0.453745, -0.125168,
		-0.468221, 0.873279, 0.134735,
		39.681725, 32.570377, 31.077894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485710, 31.891235, 30.633200>,  <40.009480, 31.959084, 30.983580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485710, 31.891235, 30.633200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.514496, 32.289124, 30.662460>,  <39.531769, 32.527855, 30.680017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.514496, 32.289124, 30.662460>,  <39.485710, 31.891235, 30.633200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514496, 32.289124, 30.662460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058971, 0.068970, -0.995874,
		-0.995662, 0.075982, -0.053696,
		0.071965, 0.994721, 0.073152,
		39.536087, 32.587540, 30.684406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218815, 32.116943, 30.005201>,  <39.485710, 31.891235, 30.633200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218815, 32.116943, 30.005201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370205, 32.455784, 30.154423>,  <39.461040, 32.659088, 30.243956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370205, 32.455784, 30.154423>,  <39.218815, 32.116943, 30.005201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370205, 32.455784, 30.154423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103855, 0.361627, -0.926521,
		-0.919765, 0.389413, 0.048892,
		0.378480, 0.847103, 0.373054,
		39.483749, 32.709915, 30.266338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806015, 32.658367, 29.756008>,  <39.218815, 32.116943, 30.005201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806015, 32.658367, 29.756008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183662, 32.764549, 29.834162>,  <39.410252, 32.828259, 29.881054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183662, 32.764549, 29.834162>,  <38.806015, 32.658367, 29.756008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183662, 32.764549, 29.834162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044211, 0.485429, -0.873158,
		-0.326626, 0.833003, 0.446567,
		0.944119, 0.265453, 0.195382,
		39.466900, 32.844185, 29.892776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909969, 33.248264, 29.387497>,  <38.806015, 32.658367, 29.756008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909969, 33.248264, 29.387497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294582, 33.166931, 29.461372>,  <39.525349, 33.118130, 29.505697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294582, 33.166931, 29.461372>,  <38.909969, 33.248264, 29.387497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294582, 33.166931, 29.461372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244973, 0.330571, -0.911433,
		0.124275, 0.921616, 0.367667,
		0.961532, -0.203337, 0.184689,
		39.583042, 33.105930, 29.516779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274418, 33.869286, 29.249489>,  <38.909969, 33.248264, 29.387497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274418, 33.869286, 29.249489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549057, 33.579021, 29.231588>,  <39.713840, 33.404865, 29.220848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549057, 33.579021, 29.231588>,  <39.274418, 33.869286, 29.249489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549057, 33.579021, 29.231588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234346, 0.279161, -0.931209,
		0.688230, 0.628882, 0.361727,
		0.686601, -0.725656, -0.044751,
		39.755039, 33.361324, 29.218163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908905, 34.134388, 28.836613>,  <39.274418, 33.869286, 29.249489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908905, 34.134388, 28.836613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857239, 33.738110, 28.819429>,  <39.826241, 33.500343, 28.809120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857239, 33.738110, 28.819429>,  <39.908905, 34.134388, 28.836613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857239, 33.738110, 28.819429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197736, 0.016718, -0.980113,
		0.971709, -0.135090, 0.193736,
		-0.129164, -0.990693, -0.042957,
		39.818489, 33.440903, 28.806541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408875, 33.899101, 28.363871>,  <39.908905, 34.134388, 28.836613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408875, 33.899101, 28.363871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.130756, 33.612888, 28.390944>,  <39.963886, 33.441162, 28.407188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.130756, 33.612888, 28.390944>,  <40.408875, 33.899101, 28.363871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130756, 33.612888, 28.390944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041823, -0.134294, -0.990058,
		0.717504, -0.685554, 0.123300,
		-0.695297, -0.715528, 0.067684,
		39.922169, 33.398232, 28.411249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661892, 33.399956, 28.002623>,  <40.408875, 33.899101, 28.363871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661892, 33.399956, 28.002623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277119, 33.298267, 28.042742>,  <40.046257, 33.237255, 28.066813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277119, 33.298267, 28.042742>,  <40.661892, 33.399956, 28.002623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277119, 33.298267, 28.042742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030269, -0.265638, -0.963598,
		0.271611, -0.929950, 0.247830,
		-0.961931, -0.254222, 0.100298,
		39.988541, 33.222000, 28.072832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613121, 32.718372, 27.661100>,  <40.661892, 33.399956, 28.002623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613121, 32.718372, 27.661100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.254009, 32.894291, 27.670656>,  <40.038544, 32.999844, 27.676390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.254009, 32.894291, 27.670656>,  <40.613121, 32.718372, 27.661100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254009, 32.894291, 27.670656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083518, -0.116736, -0.989645,
		-0.432457, -0.890477, 0.141534,
		-0.897778, 0.439800, 0.023887,
		39.984676, 33.026230, 27.677822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066219, 32.229790, 27.291384>,  <40.613121, 32.718372, 27.661100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066219, 32.229790, 27.291384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.945042, 32.610928, 27.298515>,  <39.872334, 32.839611, 27.302794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.945042, 32.610928, 27.298515>,  <40.066219, 32.229790, 27.291384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945042, 32.610928, 27.298515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168275, -0.035069, -0.985116,
		-0.938035, -0.301434, 0.170963,
		-0.302943, 0.952842, 0.017828,
		39.854160, 32.896782, 27.303864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369110, 32.250599, 26.899879>,  <40.066219, 32.229790, 27.291384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369110, 32.250599, 26.899879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.488907, 32.632072, 26.888643>,  <39.560783, 32.860958, 26.881901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.488907, 32.632072, 26.888643>,  <39.369110, 32.250599, 26.899879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488907, 32.632072, 26.888643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248646, 0.049591, -0.967324,
		-0.921130, 0.296689, 0.251982,
		0.299490, 0.953686, -0.028091,
		39.578754, 32.918179, 26.880217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.842457, 32.662971, 26.442926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177094, 32.882095, 26.444521>,  <39.377876, 33.013569, 26.445478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177094, 32.882095, 26.444521>,  <38.842457, 32.662971, 26.442926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177094, 32.882095, 26.444521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134161, 0.211930, -0.968032,
		-0.531146, 0.809312, 0.250795,
		0.836591, 0.547814, 0.003988,
		39.428070, 33.046440, 26.445717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637566, 33.268173, 26.086061>,  <38.842457, 32.662971, 26.442926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637566, 33.268173, 26.086061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037140, 33.261429, 26.068897>,  <39.276886, 33.257381, 26.058599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037140, 33.261429, 26.068897>,  <38.637566, 33.268173, 26.086061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037140, 33.261429, 26.068897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035885, 0.299984, -0.953269,
		0.028945, 0.953796, 0.299060,
		0.998937, -0.016860, -0.042910,
		39.336823, 33.256371, 26.056025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837307, 33.933945, 25.867178>,  <38.637566, 33.268173, 26.086061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837307, 33.933945, 25.867178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128147, 33.677349, 25.769348>,  <39.302650, 33.523392, 25.710649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128147, 33.677349, 25.769348>,  <38.837307, 33.933945, 25.867178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128147, 33.677349, 25.769348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007441, 0.363589, -0.931530,
		0.686492, 0.675495, 0.269139,
		0.727099, -0.641490, -0.244574,
		39.346275, 33.484901, 25.695976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432865, 34.373348, 25.531322>,  <38.837307, 33.933945, 25.867178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432865, 34.373348, 25.531322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500431, 34.001194, 25.401190>,  <39.540970, 33.777901, 25.323111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500431, 34.001194, 25.401190>,  <39.432865, 34.373348, 25.531322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500431, 34.001194, 25.401190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001083, 0.329901, -0.944015,
		0.985630, 0.159810, 0.054717,
		0.168914, -0.930390, -0.325334,
		39.551105, 33.722076, 25.303589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015728, 34.402096, 25.064129>,  <39.432865, 34.373348, 25.531322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015728, 34.402096, 25.064129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815922, 34.070271, 24.964275>,  <39.696037, 33.871178, 24.904364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.815922, 34.070271, 24.964275>,  <40.015728, 34.402096, 25.064129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815922, 34.070271, 24.964275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016978, 0.278730, -0.960219,
		0.866141, -0.483880, -0.125145,
		-0.499512, -0.829560, -0.249635,
		39.666069, 33.821404, 24.889385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332497, 34.329926, 24.516058>,  <40.015728, 34.402096, 25.064129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332497, 34.329926, 24.516058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022648, 34.079361, 24.481255>,  <39.836739, 33.929024, 24.460373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022648, 34.079361, 24.481255>,  <40.332497, 34.329926, 24.516058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022648, 34.079361, 24.481255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041336, 0.187433, -0.981407,
		0.631069, -0.756626, -0.171083,
		-0.774624, -0.626408, -0.087007,
		39.790260, 33.891438, 24.455153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359829, 34.000656, 23.901318>,  <40.332497, 34.329926, 24.516058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359829, 34.000656, 23.901318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979267, 33.899258, 23.971251>,  <39.750931, 33.838417, 24.013210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979267, 33.899258, 23.971251>,  <40.359829, 34.000656, 23.901318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979267, 33.899258, 23.971251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200255, 0.078023, -0.976632,
		0.233936, -0.964184, -0.124996,
		-0.951405, -0.253501, 0.174830,
		39.693844, 33.823208, 24.023699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147243, 33.397366, 23.496597>,  <40.359829, 34.000656, 23.901318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147243, 33.397366, 23.496597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825123, 33.618729, 23.581663>,  <39.631851, 33.751549, 23.632702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825123, 33.618729, 23.581663>,  <40.147243, 33.397366, 23.496597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825123, 33.618729, 23.581663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179131, 0.114814, -0.977103,
		-0.565156, -0.824957, 0.006673,
		-0.805302, 0.553411, 0.212663,
		39.583530, 33.784752, 23.645462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614517, 33.208660, 23.068691>,  <40.147243, 33.397366, 23.496597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614517, 33.208660, 23.068691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.489765, 33.564907, 23.201078>,  <39.414913, 33.778656, 23.280512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.489765, 33.564907, 23.201078>,  <39.614517, 33.208660, 23.068691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489765, 33.564907, 23.201078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147378, 0.298780, -0.942873,
		-0.938622, -0.342840, 0.038074,
		-0.311878, 0.890613, 0.330969,
		39.396202, 33.832092, 23.300369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145866, 33.511707, 22.575415>,  <39.614517, 33.208660, 23.068691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145866, 33.511707, 22.575415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.246502, 33.850124, 22.763424>,  <39.306885, 34.053173, 22.876230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.246502, 33.850124, 22.763424>,  <39.145866, 33.511707, 22.575415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246502, 33.850124, 22.763424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000513, 0.485527, -0.874221,
		-0.967833, 0.220188, 0.121721,
		0.251591, 0.846038, 0.470022,
		39.321980, 34.103935, 22.904430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791645, 34.011299, 22.236740>,  <39.145866, 33.511707, 22.575415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791645, 34.011299, 22.236740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066448, 34.238216, 22.418375>,  <39.231331, 34.374367, 22.527355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066448, 34.238216, 22.418375>,  <38.791645, 34.011299, 22.236740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066448, 34.238216, 22.418375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080661, 0.561507, -0.823531,
		-0.722159, 0.602400, 0.340001,
		0.687008, 0.567295, 0.454088,
		39.272552, 34.408405, 22.554602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672318, 34.740162, 22.013609>,  <38.791645, 34.011299, 22.236740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672318, 34.740162, 22.013609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054405, 34.731796, 22.131676>,  <39.283657, 34.726776, 22.202517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054405, 34.731796, 22.131676>,  <38.672318, 34.740162, 22.013609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054405, 34.731796, 22.131676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271136, 0.461388, -0.844752,
		-0.118516, 0.886952, 0.446397,
		0.955217, -0.020917, 0.295167,
		39.340969, 34.725521, 22.220226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914490, 35.479786, 22.053095>,  <38.672318, 34.740162, 22.013609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914490, 35.479786, 22.053095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.229717, 35.238422, 22.004353>,  <39.418854, 35.093605, 21.975107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.229717, 35.238422, 22.004353>,  <38.914490, 35.479786, 22.053095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229717, 35.238422, 22.004353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232373, 0.474895, -0.848809,
		0.570049, 0.640601, 0.514465,
		0.788065, -0.603411, -0.121855,
		39.466137, 35.057400, 21.967796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462009, 35.872089, 21.785450>,  <38.914490, 35.479786, 22.053095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462009, 35.872089, 21.785450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618809, 35.510567, 21.716785>,  <39.712887, 35.293652, 21.675587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618809, 35.510567, 21.716785>,  <39.462009, 35.872089, 21.785450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618809, 35.510567, 21.716785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398489, 0.334994, -0.853806,
		0.829184, 0.266282, 0.491475,
		0.391995, -0.903810, -0.171661,
		39.736408, 35.239422, 21.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134182, 36.022884, 21.589083>,  <39.462009, 35.872089, 21.785450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134182, 36.022884, 21.589083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098866, 35.642960, 21.469042>,  <40.077675, 35.415005, 21.397017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098866, 35.642960, 21.469042>,  <40.134182, 36.022884, 21.589083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098866, 35.642960, 21.469042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379022, 0.246582, -0.891930,
		0.921166, -0.192498, 0.338227,
		-0.088294, -0.949811, -0.300104,
		40.072376, 35.358017, 21.379011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744892, 35.721664, 21.296576>,  <40.134182, 36.022884, 21.589083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744892, 35.721664, 21.296576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442394, 35.510937, 21.141369>,  <40.260895, 35.384499, 21.048244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442394, 35.510937, 21.141369>,  <40.744892, 35.721664, 21.296576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442394, 35.510937, 21.141369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281809, 0.272946, -0.919828,
		0.590492, -0.804960, -0.057951,
		-0.756242, -0.526821, -0.388018,
		40.215523, 35.352890, 21.024963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993118, 35.334404, 20.777336>,  <40.744892, 35.721664, 21.296576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993118, 35.334404, 20.777336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.598625, 35.343906, 20.711884>,  <40.361927, 35.349609, 20.672611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.598625, 35.343906, 20.711884>,  <40.993118, 35.334404, 20.777336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598625, 35.343906, 20.711884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164380, 0.033962, -0.985812,
		-0.017865, -0.999141, -0.037400,
		-0.986235, 0.023760, -0.163632,
		40.302753, 35.351032, 20.662794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985176, 35.066536, 20.144249>,  <40.993118, 35.334404, 20.777336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985176, 35.066536, 20.144249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617001, 35.214787, 20.193939>,  <40.396095, 35.303738, 20.223753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617001, 35.214787, 20.193939>,  <40.985176, 35.066536, 20.144249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617001, 35.214787, 20.193939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007120, 0.333646, -0.942672,
		-0.390826, -0.866786, -0.309739,
		-0.920437, 0.370626, 0.124226,
		40.340870, 35.325974, 20.231207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576008, 34.879848, 19.586582>,  <40.985176, 35.066536, 20.144249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576008, 34.879848, 19.586582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.419144, 35.210796, 19.747416>,  <40.325027, 35.409367, 19.843916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.419144, 35.210796, 19.747416>,  <40.576008, 34.879848, 19.586582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419144, 35.210796, 19.747416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136955, 0.379715, -0.914910,
		-0.909646, -0.413856, -0.035595,
		-0.392157, 0.827369, 0.402086,
		40.301495, 35.459007, 19.868042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895351, 35.093536, 19.144732>,  <40.576008, 34.879848, 19.586582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895351, 35.093536, 19.144732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019699, 35.410309, 19.354954>,  <40.094307, 35.600372, 19.481087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.019699, 35.410309, 19.354954>,  <39.895351, 35.093536, 19.144732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019699, 35.410309, 19.354954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326545, 0.608284, -0.723435,
		-0.892598, 0.053274, 0.447696,
		0.310866, 0.791930, 0.525557,
		40.112961, 35.647888, 19.512621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366432, 35.503925, 19.003483>,  <39.895351, 35.093536, 19.144732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366432, 35.503925, 19.003483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641224, 35.763184, 19.134920>,  <39.806099, 35.918739, 19.213781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641224, 35.763184, 19.134920>,  <39.366432, 35.503925, 19.003483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641224, 35.763184, 19.134920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321634, 0.676681, -0.662310,
		-0.651622, 0.349306, 0.673330,
		0.686979, 0.648141, 0.328592,
		39.847317, 35.957626, 19.233498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040279, 36.142620, 19.208067>,  <39.366432, 35.503925, 19.003483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040279, 36.142620, 19.208067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425308, 36.215763, 19.128040>,  <39.656326, 36.259647, 19.080025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425308, 36.215763, 19.128040>,  <39.040279, 36.142620, 19.208067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425308, 36.215763, 19.128040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270897, 0.625042, -0.732077,
		-0.008817, 0.758871, 0.651181,
		0.962568, 0.182858, -0.200065,
		39.714077, 36.270622, 19.068022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226105, 36.996803, 19.192530>,  <39.040279, 36.142620, 19.208067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226105, 36.996803, 19.192530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.430653, 36.743458, 18.960203>,  <39.553383, 36.591450, 18.820807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.430653, 36.743458, 18.960203>,  <39.226105, 36.996803, 19.192530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430653, 36.743458, 18.960203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297637, 0.503504, -0.811108,
		0.806172, 0.587648, 0.068963,
		0.511370, -0.633367, -0.580816,
		39.584064, 36.553448, 18.785959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691456, 37.353779, 18.817266>,  <39.226105, 36.996803, 19.192530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691456, 37.353779, 18.817266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545170, 37.021587, 18.649193>,  <39.457397, 36.822273, 18.548347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545170, 37.021587, 18.649193>,  <39.691456, 37.353779, 18.817266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545170, 37.021587, 18.649193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413829, 0.549474, -0.725826,
		0.833664, -0.091562, -0.544629,
		-0.365718, -0.830478, -0.420185,
		39.435455, 36.772446, 18.523138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110004, 37.272064, 18.453537>,  <39.691456, 37.353779, 18.817266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110004, 37.272064, 18.453537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721340, 37.348343, 18.397671>,  <38.488140, 37.394112, 18.364151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721340, 37.348343, 18.397671>,  <39.110004, 37.272064, 18.453537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721340, 37.348343, 18.397671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108716, 0.164111, 0.980433,
		0.209889, 0.967833, -0.138728,
		-0.971662, 0.190700, -0.139664,
		38.429840, 37.405552, 18.355772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046997, 37.845085, 18.835178>,  <39.110004, 37.272064, 18.453537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046997, 37.845085, 18.835178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682457, 37.691933, 18.774723>,  <38.463734, 37.600040, 18.738449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682457, 37.691933, 18.774723>,  <39.046997, 37.845085, 18.835178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682457, 37.691933, 18.774723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134896, -0.069101, 0.988447,
		-0.388905, 0.921208, 0.011326,
		-0.911349, -0.382884, -0.151141,
		38.409054, 37.577068, 18.729382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535984, 38.202442, 19.308228>,  <39.046997, 37.845085, 18.835178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535984, 38.202442, 19.308228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347145, 37.870968, 19.187954>,  <38.233841, 37.672085, 19.115789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347145, 37.870968, 19.187954>,  <38.535984, 38.202442, 19.308228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347145, 37.870968, 19.187954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254582, -0.198392, 0.946482,
		-0.843987, 0.523377, -0.117308,
		-0.472094, -0.828684, -0.300683,
		38.205517, 37.622364, 19.097750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883904, 38.222851, 19.503439>,  <38.535984, 38.202442, 19.308228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883904, 38.222851, 19.503439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.919739, 37.826996, 19.458542>,  <37.941242, 37.589485, 19.431602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.919739, 37.826996, 19.458542>,  <37.883904, 38.222851, 19.503439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919739, 37.826996, 19.458542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524075, -0.142675, 0.839637,
		-0.846947, -0.016400, -0.531424,
		0.089591, -0.989634, -0.112244,
		37.946617, 37.530106, 19.424870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250374, 37.875874, 19.677597>,  <37.883904, 38.222851, 19.503439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250374, 37.875874, 19.677597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526215, 37.592098, 19.735767>,  <37.691719, 37.421833, 19.770670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526215, 37.592098, 19.735767>,  <37.250374, 37.875874, 19.677597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526215, 37.592098, 19.735767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512544, -0.336258, 0.790082,
		-0.511610, -0.619381, -0.595501,
		0.689604, -0.709434, 0.145427,
		37.733097, 37.379269, 19.779396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910179, 37.424755, 20.054588>,  <37.250374, 37.875874, 19.677597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910179, 37.424755, 20.054588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266071, 37.246231, 20.092932>,  <37.479607, 37.139118, 20.115938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266071, 37.246231, 20.092932>,  <36.910179, 37.424755, 20.054588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266071, 37.246231, 20.092932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348130, -0.527577, 0.774899,
		-0.295273, -0.722821, -0.624775,
		0.889730, -0.446309, 0.095857,
		37.532990, 37.112339, 20.121689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709015, 36.769978, 20.277210>,  <36.910179, 37.424755, 20.054588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709015, 36.769978, 20.277210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093632, 36.798061, 20.383417>,  <37.324402, 36.814911, 20.447142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093632, 36.798061, 20.383417>,  <36.709015, 36.769978, 20.277210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093632, 36.798061, 20.383417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162792, -0.632930, 0.756900,
		0.221196, -0.771019, -0.597162,
		0.961546, 0.070210, 0.265517,
		37.382095, 36.819126, 20.463072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953979, 36.075958, 20.491301>,  <36.709015, 36.769978, 20.277210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953979, 36.075958, 20.491301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.187859, 36.349995, 20.665098>,  <37.328186, 36.514416, 20.769377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.187859, 36.349995, 20.665098>,  <36.953979, 36.075958, 20.491301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187859, 36.349995, 20.665098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057770, -0.499061, 0.864639,
		0.809194, -0.530651, -0.252221,
		0.584695, 0.685090, 0.434493,
		37.363266, 36.555523, 20.795446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478951, 35.682053, 20.840654>,  <36.953979, 36.075958, 20.491301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478951, 35.682053, 20.840654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474247, 36.039398, 21.020323>,  <37.471424, 36.253807, 21.128124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474247, 36.039398, 21.020323>,  <37.478951, 35.682053, 20.840654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474247, 36.039398, 21.020323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028212, -0.448729, 0.893223,
		0.999533, 0.023172, -0.019928,
		-0.011756, 0.893367, 0.449173,
		37.470722, 36.307407, 21.155075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137398, 35.688820, 21.294678>,  <37.478951, 35.682053, 20.840654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137398, 35.688820, 21.294678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867573, 35.959206, 21.413363>,  <37.705677, 36.121437, 21.484573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867573, 35.959206, 21.413363>,  <38.137398, 35.688820, 21.294678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867573, 35.959206, 21.413363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034285, -0.372808, 0.927275,
		0.737422, 0.635677, 0.228307,
		-0.674562, 0.675965, 0.296711,
		37.665203, 36.161995, 21.502377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420856, 36.053677, 21.957600>,  <38.137398, 35.688820, 21.294678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420856, 36.053677, 21.957600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024723, 36.108894, 21.963047>,  <37.787045, 36.142025, 21.966316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024723, 36.108894, 21.963047>,  <38.420856, 36.053677, 21.957600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024723, 36.108894, 21.963047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047870, -0.432245, 0.900485,
		0.130197, 0.891127, 0.434674,
		-0.990332, 0.138048, 0.013619,
		37.727623, 36.150311, 21.967133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269180, 36.251385, 22.625477>,  <38.420856, 36.053677, 21.957600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269180, 36.251385, 22.625477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913914, 36.126060, 22.491022>,  <37.700752, 36.050865, 22.410349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913914, 36.126060, 22.491022>,  <38.269180, 36.251385, 22.625477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913914, 36.126060, 22.491022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233967, -0.321245, 0.917639,
		-0.395491, 0.893665, 0.212015,
		-0.888170, -0.313314, -0.336137,
		37.647461, 36.032066, 22.390181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783138, 36.580765, 23.051336>,  <38.269180, 36.251385, 22.625477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783138, 36.580765, 23.051336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627975, 36.235977, 22.920774>,  <37.534878, 36.029106, 22.842438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627975, 36.235977, 22.920774>,  <37.783138, 36.580765, 23.051336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627975, 36.235977, 22.920774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124644, -0.301824, 0.945180,
		-0.913230, 0.407331, 0.009642,
		-0.387911, -0.861965, -0.326406,
		37.511600, 35.977386, 22.822853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358356, 36.355057, 23.598894>,  <37.783138, 36.580765, 23.051336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358356, 36.355057, 23.598894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.368832, 36.016796, 23.385658>,  <37.375118, 35.813839, 23.257717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.368832, 36.016796, 23.385658>,  <37.358356, 36.355057, 23.598894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368832, 36.016796, 23.385658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422794, -0.492598, 0.760653,
		-0.905847, 0.205465, -0.370439,
		0.026190, -0.845655, -0.533087,
		37.376690, 35.763100, 23.225733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843884, 36.044609, 23.842777>,  <37.358356, 36.355057, 23.598894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843884, 36.044609, 23.842777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055508, 35.746326, 23.680784>,  <37.182484, 35.567356, 23.583588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055508, 35.746326, 23.680784>,  <36.843884, 36.044609, 23.842777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055508, 35.746326, 23.680784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256620, -0.595499, 0.761267,
		-0.808850, -0.298832, -0.506420,
		0.529064, -0.745708, -0.404983,
		37.214226, 35.522614, 23.559290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399815, 35.466515, 23.721191>,  <36.843884, 36.044609, 23.842777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399815, 35.466515, 23.721191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767063, 35.311207, 23.752941>,  <36.987411, 35.218021, 23.771992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767063, 35.311207, 23.752941>,  <36.399815, 35.466515, 23.721191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767063, 35.311207, 23.752941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313632, -0.589438, 0.744444,
		-0.242257, -0.708385, -0.662949,
		0.918121, -0.388268, 0.079377,
		37.042500, 35.194725, 23.776754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281757, 34.811272, 23.820475>,  <36.399815, 35.466515, 23.721191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281757, 34.811272, 23.820475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656750, 34.850697, 23.953987>,  <36.881744, 34.874352, 24.034096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656750, 34.850697, 23.953987>,  <36.281757, 34.811272, 23.820475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656750, 34.850697, 23.953987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181344, -0.680244, 0.710199,
		0.297051, -0.726329, -0.619844,
		0.937483, 0.098561, 0.333783,
		36.937996, 34.880264, 24.054121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365189, 34.096466, 24.008780>,  <36.281757, 34.811272, 23.820475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365189, 34.096466, 24.008780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634880, 34.318668, 24.203438>,  <36.796696, 34.451988, 24.320232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634880, 34.318668, 24.203438>,  <36.365189, 34.096466, 24.008780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634880, 34.318668, 24.203438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020314, -0.644748, 0.764125,
		0.738240, -0.525084, -0.423426,
		0.674233, 0.555506, 0.486645,
		36.837151, 34.485321, 24.349432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767612, 33.687500, 24.433132>,  <36.365189, 34.096466, 24.008780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767612, 33.687500, 24.433132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.854225, 34.038418, 24.604464>,  <36.906193, 34.248970, 24.707262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.854225, 34.038418, 24.604464>,  <36.767612, 33.687500, 24.433132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854225, 34.038418, 24.604464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085673, -0.419970, 0.903485,
		0.972509, -0.232330, -0.015777,
		0.216532, 0.877296, 0.428329,
		36.919186, 34.301605, 24.732962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159367, 33.583481, 24.961388>,  <36.767612, 33.687500, 24.433132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159367, 33.583481, 24.961388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050697, 33.949577, 25.080397>,  <36.985497, 34.169235, 25.151802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050697, 33.949577, 25.080397>,  <37.159367, 33.583481, 24.961388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050697, 33.949577, 25.080397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035646, -0.299366, 0.953472,
		0.961729, 0.269639, 0.048706,
		-0.271674, 0.915246, 0.297521,
		36.969196, 34.224152, 25.169653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.621899, 32.342178, 29.161388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365368, 32.649075, 29.158552>,  <40.211449, 32.833210, 29.156851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365368, 32.649075, 29.158552>,  <40.621899, 32.342178, 29.161388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365368, 32.649075, 29.158552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169548, -0.132698, 0.976547,
		0.748303, 0.627485, 0.215186,
		-0.641324, 0.767237, -0.007090,
		40.172970, 32.879246, 29.156425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840252, 32.830254, 29.654556>,  <40.621899, 32.342178, 29.161388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840252, 32.830254, 29.654556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.449207, 32.905334, 29.616524>,  <40.214581, 32.950382, 29.593704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.449207, 32.905334, 29.616524>,  <40.840252, 32.830254, 29.654556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449207, 32.905334, 29.616524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138914, -0.236349, 0.961687,
		0.158042, 0.953365, 0.257132,
		-0.977612, 0.187707, -0.095082,
		40.155922, 32.961647, 29.587999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621693, 33.308067, 30.131783>,  <40.840252, 32.830254, 29.654556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621693, 33.308067, 30.131783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259670, 33.146015, 30.080021>,  <40.042458, 33.048782, 30.048964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259670, 33.146015, 30.080021>,  <40.621693, 33.308067, 30.131783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259670, 33.146015, 30.080021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176565, 0.081118, 0.980941,
		-0.386916, 0.910652, -0.144949,
		-0.905053, -0.405134, -0.129404,
		39.988155, 33.024475, 30.041201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192829, 33.719120, 30.575190>,  <40.621693, 33.308067, 30.131783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192829, 33.719120, 30.575190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958061, 33.409660, 30.479694>,  <39.817200, 33.223984, 30.422398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958061, 33.409660, 30.479694>,  <40.192829, 33.719120, 30.575190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958061, 33.409660, 30.479694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380158, 0.002986, 0.924917,
		-0.714848, 0.633608, -0.295862,
		-0.586918, -0.773649, -0.238736,
		39.781986, 33.177567, 30.408073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472038, 33.855267, 30.865042>,  <40.192829, 33.719120, 30.575190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472038, 33.855267, 30.865042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535896, 33.465488, 30.801840>,  <39.574211, 33.231621, 30.763920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535896, 33.465488, 30.801840>,  <39.472038, 33.855267, 30.865042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535896, 33.465488, 30.801840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437242, -0.213300, 0.873683,
		-0.885061, -0.070396, -0.460122,
		0.159648, -0.974447, -0.158003,
		39.583790, 33.173153, 30.754438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945900, 33.552689, 31.023003>,  <39.472038, 33.855267, 30.865042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945900, 33.552689, 31.023003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197849, 33.246719, 31.076908>,  <39.349018, 33.063137, 31.109251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197849, 33.246719, 31.076908>,  <38.945900, 33.552689, 31.023003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197849, 33.246719, 31.076908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392755, -0.163988, 0.904904,
		-0.670081, -0.622899, -0.403718,
		0.629869, -0.764921, 0.134762,
		39.386810, 33.017242, 31.117336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584526, 33.156536, 31.421957>,  <38.945900, 33.552689, 31.023003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584526, 33.156536, 31.421957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938454, 32.971420, 31.443544>,  <39.150810, 32.860352, 31.456497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938454, 32.971420, 31.443544>,  <38.584526, 33.156536, 31.421957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938454, 32.971420, 31.443544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156958, -0.187010, 0.969738,
		-0.438696, -0.866516, -0.238109,
		0.884822, -0.462793, 0.053966,
		39.203899, 32.832584, 31.459734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551529, 32.420692, 31.534702>,  <38.584526, 33.156536, 31.421957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551529, 32.420692, 31.534702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923218, 32.485992, 31.667303>,  <39.146233, 32.525173, 31.746864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923218, 32.485992, 31.667303>,  <38.551529, 32.420692, 31.534702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923218, 32.485992, 31.667303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271364, -0.307451, 0.912050,
		0.250811, -0.937456, -0.241391,
		0.929223, 0.163248, 0.331504,
		39.201984, 32.534966, 31.766754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923168, 31.790710, 31.912048>,  <38.551529, 32.420692, 31.534702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923168, 31.790710, 31.912048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111397, 32.119484, 32.040417>,  <39.224335, 32.316750, 32.117439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111397, 32.119484, 32.040417>,  <38.923168, 31.790710, 31.912048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111397, 32.119484, 32.040417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151274, -0.283170, 0.947064,
		0.869299, -0.494206, -0.008914,
		0.470569, 0.821934, 0.320920,
		39.252567, 32.366066, 32.136692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409939, 31.528004, 32.410061>,  <38.923168, 31.790710, 31.912048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409939, 31.528004, 32.410061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367538, 31.918774, 32.484226>,  <39.342098, 32.153236, 32.528725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367538, 31.918774, 32.484226>,  <39.409939, 31.528004, 32.410061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367538, 31.918774, 32.484226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220339, -0.204903, 0.953659,
		0.969646, 0.060237, 0.236976,
		-0.106002, 0.976927, 0.185411,
		39.335739, 32.211853, 32.539848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704239, 31.541712, 33.087837>,  <39.409939, 31.528004, 32.410061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704239, 31.541712, 33.087837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488400, 31.873463, 33.029915>,  <39.358898, 32.072514, 32.995159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488400, 31.873463, 33.029915>,  <39.704239, 31.541712, 33.087837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488400, 31.873463, 33.029915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266680, -0.005228, 0.963771,
		0.798574, 0.558663, 0.223999,
		-0.539594, 0.829378, -0.144809,
		39.326523, 32.122276, 32.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602360, 31.934443, 33.829193>,  <39.704239, 31.541712, 33.087837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602360, 31.934443, 33.829193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.311428, 32.078346, 33.595421>,  <39.136868, 32.164688, 33.455158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.311428, 32.078346, 33.595421>,  <39.602360, 31.934443, 33.829193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311428, 32.078346, 33.595421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597246, 0.087673, 0.797252,
		0.338057, 0.928917, 0.151097,
		-0.727334, 0.359759, -0.584431,
		39.093227, 32.186275, 33.420094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376438, 32.311451, 34.331749>,  <39.602360, 31.934443, 33.829193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376438, 32.311451, 34.331749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107983, 32.247818, 34.042122>,  <38.946911, 32.209637, 33.868347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107983, 32.247818, 34.042122>,  <39.376438, 32.311451, 34.331749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107983, 32.247818, 34.042122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693806, -0.209309, 0.689074,
		-0.261173, 0.964823, 0.030102,
		-0.671135, -0.159083, -0.724065,
		38.906643, 32.200092, 33.824902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808487, 32.774445, 34.428295>,  <39.376438, 32.311451, 34.331749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808487, 32.774445, 34.428295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.673626, 32.438858, 34.257435>,  <38.592709, 32.237507, 34.154919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.673626, 32.438858, 34.257435>,  <38.808487, 32.774445, 34.428295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673626, 32.438858, 34.257435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881038, 0.121256, 0.457241,
		-0.331815, 0.530499, -0.780045,
		-0.337151, -0.838969, -0.427155,
		38.572479, 32.187168, 34.129288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011955, 33.402378, 34.030941>,  <38.808487, 32.774445, 34.428295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011955, 33.402378, 34.030941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119034, 33.655258, 34.321777>,  <39.183281, 33.806988, 34.496281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119034, 33.655258, 34.321777>,  <39.011955, 33.402378, 34.030941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119034, 33.655258, 34.321777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109992, 0.729647, -0.674920,
		-0.957205, 0.260646, 0.125785,
		0.267693, 0.632202, 0.727091,
		39.199341, 33.844917, 34.539906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551128, 33.957329, 34.050308>,  <39.011955, 33.402378, 34.030941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551128, 33.957329, 34.050308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878124, 34.099586, 34.231514>,  <39.074322, 34.184940, 34.340237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878124, 34.099586, 34.231514>,  <38.551128, 33.957329, 34.050308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878124, 34.099586, 34.231514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032307, 0.757010, -0.652604,
		-0.575034, 0.548134, 0.607359,
		0.817492, 0.355647, 0.453015,
		39.123371, 34.206280, 34.367420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392754, 34.650967, 33.972923>,  <38.551128, 33.957329, 34.050308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392754, 34.650967, 33.972923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785645, 34.601501, 34.029388>,  <39.021381, 34.571823, 34.063267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785645, 34.601501, 34.029388>,  <38.392754, 34.650967, 33.972923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785645, 34.601501, 34.029388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187282, 0.694386, -0.694805,
		-0.012099, 0.708897, 0.705209,
		0.982232, -0.123666, 0.141164,
		39.080315, 34.564400, 34.071739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668674, 35.335499, 33.834717>,  <38.392754, 34.650967, 33.972923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668674, 35.335499, 33.834717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991257, 35.100204, 33.810715>,  <39.184807, 34.959026, 33.796314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991257, 35.100204, 33.810715>,  <38.668674, 35.335499, 33.834717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991257, 35.100204, 33.810715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308108, 0.504673, -0.806458,
		0.504673, 0.631886, 0.588239,
		0.806458, -0.588239, -0.060005,
		39.233192, 34.923733, 33.792713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163841, 35.699657, 33.788944>,  <38.668674, 35.335499, 33.834717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163841, 35.699657, 33.788944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.313934, 35.365440, 33.628414>,  <39.403992, 35.164909, 33.532097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.313934, 35.365440, 33.628414>,  <39.163841, 35.699657, 33.788944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313934, 35.365440, 33.628414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438930, 0.541509, -0.717014,
		0.816420, 0.092894, 0.569938,
		0.375233, -0.835547, -0.401325,
		39.426506, 35.114777, 33.508018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769508, 35.948441, 33.421844>,  <39.163841, 35.699657, 33.788944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769508, 35.948441, 33.421844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672539, 35.592083, 33.268208>,  <39.614357, 35.378269, 33.176025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672539, 35.592083, 33.268208>,  <39.769508, 35.948441, 33.421844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672539, 35.592083, 33.268208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289926, 0.311287, -0.905010,
		0.925836, -0.330757, 0.182830,
		-0.242426, -0.890898, -0.384095,
		39.599812, 35.324814, 33.152977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365475, 35.915596, 32.928070>,  <39.769508, 35.948441, 33.421844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365475, 35.915596, 32.928070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.089550, 35.642933, 32.830494>,  <39.923996, 35.479336, 32.771950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.089550, 35.642933, 32.830494>,  <40.365475, 35.915596, 32.928070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089550, 35.642933, 32.830494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167320, 0.177714, -0.969754,
		0.704392, -0.709760, -0.008533,
		-0.689808, -0.681659, -0.243937,
		39.882607, 35.438435, 32.757313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751106, 35.503319, 32.502022>,  <40.365475, 35.915596, 32.928070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751106, 35.503319, 32.502022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372906, 35.411076, 32.410072>,  <40.145985, 35.355732, 32.354900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372906, 35.411076, 32.410072>,  <40.751106, 35.503319, 32.502022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372906, 35.411076, 32.410072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192400, 0.173879, -0.965789,
		0.262688, -0.957385, -0.120035,
		-0.945504, -0.230606, -0.229877,
		40.089256, 35.341892, 32.341110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790676, 35.094307, 31.988489>,  <40.751106, 35.503319, 32.502022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790676, 35.094307, 31.988489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421879, 35.248177, 31.970827>,  <40.200600, 35.340500, 31.960230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421879, 35.248177, 31.970827>,  <40.790676, 35.094307, 31.988489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421879, 35.248177, 31.970827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065377, 0.042261, -0.996965,
		-0.381643, -0.922083, -0.064114,
		-0.921995, 0.384676, -0.044155,
		40.145279, 35.363579, 31.957581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423622, 34.717617, 31.376591>,  <40.790676, 35.094307, 31.988489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423622, 34.717617, 31.376591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.206837, 35.048233, 31.437382>,  <40.076763, 35.246605, 31.473856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.206837, 35.048233, 31.437382>,  <40.423622, 34.717617, 31.376591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206837, 35.048233, 31.437382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116102, 0.252745, -0.960542,
		-0.832342, -0.502936, -0.232942,
		-0.541966, 0.826544, 0.151978,
		40.044247, 35.296196, 31.482975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991734, 34.712582, 30.813341>,  <40.423622, 34.717617, 31.376591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991734, 34.712582, 30.813341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969482, 35.086937, 30.952488>,  <39.956131, 35.311550, 31.035976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969482, 35.086937, 30.952488>,  <39.991734, 34.712582, 30.813341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969482, 35.086937, 30.952488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100674, 0.341372, -0.934521,
		-0.993363, -0.087007, 0.075230,
		-0.055629, 0.935892, 0.347866,
		39.952793, 35.367706, 31.056849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476807, 34.984650, 30.431507>,  <39.991734, 34.712582, 30.813341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476807, 34.984650, 30.431507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650894, 35.311108, 30.583555>,  <39.755344, 35.506985, 30.674784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650894, 35.311108, 30.583555>,  <39.476807, 34.984650, 30.431507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650894, 35.311108, 30.583555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103302, 0.464683, -0.879431,
		-0.894381, 0.343475, 0.286546,
		0.435215, 0.816147, 0.380122,
		39.781460, 35.555950, 30.697592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016186, 35.409603, 30.113140>,  <39.476807, 34.984650, 30.431507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016186, 35.409603, 30.113140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355484, 35.588406, 30.226751>,  <39.559063, 35.695686, 30.294918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355484, 35.588406, 30.226751>,  <39.016186, 35.409603, 30.113140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355484, 35.588406, 30.226751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051858, 0.463613, -0.884519,
		-0.527064, 0.765015, 0.370075,
		0.848242, 0.447007, 0.284026,
		39.609955, 35.722507, 30.311958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979763, 36.146889, 29.986620>,  <39.016186, 35.409603, 30.113140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979763, 36.146889, 29.986620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364162, 36.036541, 29.978756>,  <39.594803, 35.970333, 29.974037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364162, 36.036541, 29.978756>,  <38.979763, 36.146889, 29.986620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364162, 36.036541, 29.978756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108024, 0.439851, -0.891550,
		0.254598, 0.854651, 0.452495,
		0.960995, -0.275867, -0.019662,
		39.652462, 35.953781, 29.972857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765026, 36.759941, 30.365479>,  <38.979763, 36.146889, 29.986620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765026, 36.759941, 30.365479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436501, 36.972485, 30.282434>,  <38.239384, 37.100010, 30.232609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436501, 36.972485, 30.282434>,  <38.765026, 36.759941, 30.365479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436501, 36.972485, 30.282434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354885, -0.190958, 0.915200,
		0.446653, 0.825345, 0.345407,
		-0.821315, 0.531357, -0.207610,
		38.190105, 37.131893, 30.220152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760239, 37.227547, 30.995161>,  <38.765026, 36.759941, 30.365479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760239, 37.227547, 30.995161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409451, 37.206280, 30.804123>,  <38.198978, 37.193520, 30.689499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409451, 37.206280, 30.804123>,  <38.760239, 37.227547, 30.995161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409451, 37.206280, 30.804123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458714, -0.203550, 0.864956,
		-0.143205, 0.977620, 0.154117,
		-0.876969, -0.053171, -0.477597,
		38.146358, 37.190327, 30.660845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177006, 37.518192, 31.441938>,  <38.760239, 37.227547, 30.995161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177006, 37.518192, 31.441938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.004833, 37.272003, 31.177841>,  <37.901527, 37.124290, 31.019382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.004833, 37.272003, 31.177841>,  <38.177006, 37.518192, 31.441938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004833, 37.272003, 31.177841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458858, -0.480701, 0.747246,
		-0.777287, 0.624599, -0.075502,
		-0.430435, -0.615469, -0.660245,
		37.875702, 37.087364, 30.979767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772934, 37.214012, 31.871746>,  <38.177006, 37.518192, 31.441938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772934, 37.214012, 31.871746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671436, 37.019192, 31.537466>,  <37.610538, 36.902298, 31.336897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671436, 37.019192, 31.537466>,  <37.772934, 37.214012, 31.871746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671436, 37.019192, 31.537466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635570, -0.567336, 0.523623,
		-0.729154, 0.664012, -0.165596,
		-0.253743, -0.487049, -0.835702,
		37.595314, 36.873077, 31.286755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074303, 37.180618, 31.771383>,  <37.772934, 37.214012, 31.871746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074303, 37.180618, 31.771383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208141, 36.856602, 31.578766>,  <37.288445, 36.662193, 31.463196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208141, 36.856602, 31.578766>,  <37.074303, 37.180618, 31.771383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208141, 36.856602, 31.578766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734146, -0.544439, 0.405728,
		-0.590828, 0.217773, -0.776851,
		0.334592, -0.810038, -0.481547,
		37.308521, 36.613590, 31.434303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458412, 36.788517, 31.617926>,  <37.074303, 37.180618, 31.771383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458412, 36.788517, 31.617926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742691, 36.511311, 31.569525>,  <36.913258, 36.344986, 31.540483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742691, 36.511311, 31.569525>,  <36.458412, 36.788517, 31.617926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742691, 36.511311, 31.569525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643395, -0.709855, 0.286618,
		-0.284524, -0.125846, -0.950373,
		0.710696, -0.693015, -0.121002,
		36.955898, 36.303406, 31.533224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072685, 36.315842, 31.200205>,  <36.458412, 36.788517, 31.617926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072685, 36.315842, 31.200205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380871, 36.156853, 31.399567>,  <36.565781, 36.061459, 31.519184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380871, 36.156853, 31.399567>,  <36.072685, 36.315842, 31.200205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380871, 36.156853, 31.399567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606026, -0.699254, 0.379177,
		0.197797, -0.594186, -0.779628,
		0.770460, -0.397475, 0.498403,
		36.612007, 36.037609, 31.549088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191212, 35.621380, 30.851149>,  <36.072685, 36.315842, 31.200205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191212, 35.621380, 30.851149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368839, 35.586803, 31.207872>,  <36.475418, 35.566059, 31.421907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368839, 35.586803, 31.207872>,  <36.191212, 35.621380, 30.851149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368839, 35.586803, 31.207872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571440, -0.793954, 0.207590,
		0.690112, -0.601802, -0.401970,
		0.444074, -0.086441, 0.891811,
		36.502060, 35.560871, 31.475416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397892, 34.951675, 30.879250>,  <36.191212, 35.621380, 30.851149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397892, 34.951675, 30.879250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.373539, 35.079323, 31.257553>,  <36.358929, 35.155910, 31.484535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.373539, 35.079323, 31.257553>,  <36.397892, 34.951675, 30.879250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373539, 35.079323, 31.257553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730583, -0.659854, 0.175616,
		0.680105, -0.680263, 0.273312,
		-0.060881, 0.319114, 0.945759,
		36.355274, 35.175056, 31.541281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421188, 34.314251, 31.359385>,  <36.397892, 34.951675, 30.879250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421188, 34.314251, 31.359385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.269535, 34.613445, 31.577293>,  <36.178543, 34.792961, 31.708038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.269535, 34.613445, 31.577293>,  <36.421188, 34.314251, 31.359385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269535, 34.613445, 31.577293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787816, -0.569737, 0.233978,
		0.485389, -0.340472, 0.805280,
		-0.379135, 0.747983, 0.544773,
		36.155796, 34.837841, 31.740725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200127, 34.005363, 32.095432>,  <36.421188, 34.314251, 31.359385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200127, 34.005363, 32.095432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.997459, 34.344608, 32.033482>,  <35.875858, 34.548157, 31.996311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.997459, 34.344608, 32.033482>,  <36.200127, 34.005363, 32.095432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997459, 34.344608, 32.033482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841812, -0.447891, 0.301242,
		0.186121, 0.283006, 0.940886,
		-0.506667, 0.848117, -0.154876,
		35.845459, 34.599045, 31.987019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929504, 34.179436, 32.705139>,  <36.200127, 34.005363, 32.095432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929504, 34.179436, 32.705139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707966, 34.297115, 32.393574>,  <35.575043, 34.367722, 32.206635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707966, 34.297115, 32.393574>,  <35.929504, 34.179436, 32.705139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707966, 34.297115, 32.393574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811163, -0.401663, 0.425066,
		-0.187807, 0.867246, 0.461100,
		-0.553844, 0.294197, -0.778913,
		35.541813, 34.385376, 32.159901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.894756, 38.565166, 27.093924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522350, 38.497875, 26.964369>,  <39.298904, 38.457500, 26.886635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522350, 38.497875, 26.964369>,  <39.894756, 38.565166, 27.093924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522350, 38.497875, 26.964369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351860, 0.178002, 0.918972,
		-0.096940, 0.969544, -0.224915,
		-0.931019, -0.168224, -0.323889,
		39.243046, 38.447407, 26.867203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457775, 39.136471, 27.322832>,  <39.894756, 38.565166, 27.093924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457775, 39.136471, 27.322832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213448, 38.829941, 27.243195>,  <39.066849, 38.646023, 27.195412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213448, 38.829941, 27.243195>,  <39.457775, 39.136471, 27.322832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213448, 38.829941, 27.243195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375265, 0.058786, 0.925052,
		-0.697188, 0.639756, -0.323483,
		-0.610824, -0.766327, -0.199093,
		39.030201, 38.600044, 27.183466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788425, 39.343513, 27.643587>,  <39.457775, 39.136471, 27.322832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788425, 39.343513, 27.643587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743614, 38.948223, 27.601891>,  <38.716728, 38.711048, 27.576872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743614, 38.948223, 27.601891>,  <38.788425, 39.343513, 27.643587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743614, 38.948223, 27.601891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237335, -0.075258, 0.968508,
		-0.964946, 0.133245, -0.226108,
		-0.112032, -0.988222, -0.104243,
		38.710003, 38.651756, 27.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166283, 39.196243, 28.087029>,  <38.788425, 39.343513, 27.643587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166283, 39.196243, 28.087029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321857, 38.837162, 28.004225>,  <38.415203, 38.621712, 27.954542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321857, 38.837162, 28.004225>,  <38.166283, 39.196243, 28.087029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321857, 38.837162, 28.004225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317001, -0.341387, 0.884853,
		-0.865008, -0.278530, -0.417352,
		0.388937, -0.897706, -0.207008,
		38.438538, 38.567852, 27.942122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642696, 38.710575, 28.270460>,  <38.166283, 39.196243, 28.087029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642696, 38.710575, 28.270460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987774, 38.508488, 28.279577>,  <38.194820, 38.387234, 28.285048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987774, 38.508488, 28.279577>,  <37.642696, 38.710575, 28.270460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987774, 38.508488, 28.279577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317150, -0.505344, 0.802523,
		-0.393932, -0.699557, -0.596186,
		0.862689, -0.505220, 0.022793,
		38.246582, 38.356922, 28.286415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513004, 38.015064, 28.302359>,  <37.642696, 38.710575, 28.270460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513004, 38.015064, 28.302359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883965, 38.025238, 28.451645>,  <38.106541, 38.031342, 28.541216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883965, 38.025238, 28.451645>,  <37.513004, 38.015064, 28.302359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883965, 38.025238, 28.451645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300277, -0.544365, 0.783262,
		0.223090, -0.838462, -0.497204,
		0.927396, 0.025439, 0.373214,
		38.162182, 38.032871, 28.563608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603516, 37.347519, 28.606968>,  <37.513004, 38.015064, 28.302359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603516, 37.347519, 28.606968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907665, 37.546207, 28.774342>,  <38.090157, 37.665421, 28.874765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907665, 37.546207, 28.774342>,  <37.603516, 37.347519, 28.606968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907665, 37.546207, 28.774342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214866, -0.415593, 0.883807,
		0.612908, -0.761935, -0.209278,
		0.760378, 0.496726, 0.418435,
		38.135780, 37.695225, 28.899872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172916, 36.869068, 28.809942>,  <37.603516, 37.347519, 28.606968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172916, 36.869068, 28.809942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186440, 37.202187, 29.030960>,  <38.194553, 37.402058, 29.163570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186440, 37.202187, 29.030960>,  <38.172916, 36.869068, 28.809942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186440, 37.202187, 29.030960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156501, -0.541629, 0.825921,
		0.987099, -0.114397, 0.112022,
		0.033808, 0.832797, 0.552545,
		38.196583, 37.452026, 29.196724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620331, 36.733471, 29.421700>,  <38.172916, 36.869068, 28.809942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620331, 36.733471, 29.421700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402851, 37.046165, 29.543865>,  <38.272366, 37.233784, 29.617165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402851, 37.046165, 29.543865>,  <38.620331, 36.733471, 29.421700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402851, 37.046165, 29.543865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212904, -0.480461, 0.850781,
		0.811828, 0.397544, 0.427661,
		-0.543697, 0.781739, 0.305413,
		38.239742, 37.280685, 29.635489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400539, 36.720478, 29.450169>,  <38.620331, 36.733471, 29.421700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400539, 36.720478, 29.450169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658726, 36.417717, 29.491106>,  <39.813637, 36.236061, 29.515669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658726, 36.417717, 29.491106>,  <39.400539, 36.720478, 29.450169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658726, 36.417717, 29.491106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424848, 0.244442, -0.871638,
		0.634724, 0.606095, 0.479347,
		0.645468, -0.756899, 0.102345,
		39.852367, 36.190647, 29.521809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039448, 36.978958, 29.383904>,  <39.400539, 36.720478, 29.450169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039448, 36.978958, 29.383904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083160, 36.591652, 29.294003>,  <40.109386, 36.359268, 29.240061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083160, 36.591652, 29.294003>,  <40.039448, 36.978958, 29.383904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083160, 36.591652, 29.294003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448854, 0.249813, -0.857976,
		0.886897, -0.007120, 0.461911,
		0.109283, -0.968268, -0.224754,
		40.115944, 36.301170, 29.226576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747257, 36.947651, 29.229317>,  <40.039448, 36.978958, 29.383904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747257, 36.947651, 29.229317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518867, 36.659489, 29.071831>,  <40.381836, 36.486591, 28.977339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518867, 36.659489, 29.071831>,  <40.747257, 36.947651, 29.229317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518867, 36.659489, 29.071831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448364, 0.128107, -0.884623,
		0.687722, -0.681622, 0.249857,
		-0.570970, -0.720402, -0.393717,
		40.347576, 36.443367, 28.953716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212143, 36.564663, 28.702831>,  <40.747257, 36.947651, 29.229317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212143, 36.564663, 28.702831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826317, 36.487518, 28.630812>,  <40.594822, 36.441231, 28.587601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826317, 36.487518, 28.630812>,  <41.212143, 36.564663, 28.702831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826317, 36.487518, 28.630812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196344, -0.068850, -0.978115,
		0.176246, -0.978807, 0.104278,
		-0.964565, -0.192863, -0.180048,
		40.536945, 36.429661, 28.576797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280186, 36.070686, 28.244253>,  <41.212143, 36.564663, 28.702831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280186, 36.070686, 28.244253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888916, 36.145088, 28.207191>,  <40.654156, 36.189728, 28.184954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888916, 36.145088, 28.207191>,  <41.280186, 36.070686, 28.244253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888916, 36.145088, 28.207191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078924, -0.079933, -0.993671,
		-0.192229, -0.979293, 0.063509,
		-0.978171, 0.186000, -0.092655,
		40.595463, 36.200890, 28.179396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059334, 35.512821, 27.784372>,  <41.280186, 36.070686, 28.244253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059334, 35.512821, 27.784372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818810, 35.832424, 27.782766>,  <40.674496, 36.024185, 27.781803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818810, 35.832424, 27.782766>,  <41.059334, 35.512821, 27.784372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818810, 35.832424, 27.782766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074248, 0.050874, -0.995941,
		-0.795560, -0.599166, -0.089916,
		-0.601309, 0.799007, -0.004014,
		40.638416, 36.072124, 27.781563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540951, 35.337494, 27.412216>,  <41.059334, 35.512821, 27.784372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540951, 35.337494, 27.412216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561844, 35.736515, 27.393642>,  <40.574379, 35.975929, 27.382498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561844, 35.736515, 27.393642>,  <40.540951, 35.337494, 27.412216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561844, 35.736515, 27.393642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111158, -0.040400, -0.992981,
		-0.992429, 0.057024, 0.108776,
		0.052229, 0.997555, -0.046433,
		40.577511, 36.035782, 27.379713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997646, 35.486755, 26.782248>,  <40.540951, 35.337494, 27.412216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997646, 35.486755, 26.782248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244320, 35.794788, 26.847567>,  <40.392326, 35.979610, 26.886759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244320, 35.794788, 26.847567>,  <39.997646, 35.486755, 26.782248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244320, 35.794788, 26.847567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112491, 0.119103, -0.986489,
		-0.779130, 0.626724, -0.013178,
		0.616686, 0.770085, 0.163297,
		40.429325, 36.025814, 26.896555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736809, 36.034248, 26.319632>,  <39.997646, 35.486755, 26.782248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736809, 36.034248, 26.319632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105820, 36.125530, 26.444120>,  <40.327229, 36.180298, 26.518814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105820, 36.125530, 26.444120>,  <39.736809, 36.034248, 26.319632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105820, 36.125530, 26.444120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295226, 0.102066, -0.949960,
		-0.248549, 0.968249, 0.026788,
		0.922532, 0.228203, 0.311221,
		40.382580, 36.193993, 26.537487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983704, 36.728779, 26.028717>,  <39.736809, 36.034248, 26.319632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983704, 36.728779, 26.028717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304535, 36.502583, 26.105547>,  <40.497032, 36.366863, 26.151644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304535, 36.502583, 26.105547>,  <39.983704, 36.728779, 26.028717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304535, 36.502583, 26.105547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301851, 0.106345, -0.947405,
		0.515322, 0.817871, 0.255991,
		0.802078, -0.565490, 0.192074,
		40.545158, 36.332935, 26.163170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444332, 37.285999, 25.730621>,  <39.983704, 36.728779, 26.028717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444332, 37.285999, 25.730621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682770, 36.971764, 25.796968>,  <40.825832, 36.783222, 25.836777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682770, 36.971764, 25.796968>,  <40.444332, 37.285999, 25.730621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682770, 36.971764, 25.796968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467053, 0.171231, -0.867492,
		0.653093, 0.594579, 0.468984,
		0.596097, -0.785593, 0.165870,
		40.861599, 36.736084, 25.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136322, 37.567257, 25.715950>,  <40.444332, 37.285999, 25.730621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136322, 37.567257, 25.715950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144634, 37.177723, 25.625429>,  <41.149624, 36.944004, 25.571115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144634, 37.177723, 25.625429>,  <41.136322, 37.567257, 25.715950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144634, 37.177723, 25.625429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470962, 0.209201, -0.856989,
		0.881909, -0.088768, 0.462987,
		0.020785, -0.973835, -0.226303,
		41.150871, 36.885571, 25.557539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900539, 37.313011, 25.520021>,  <41.136322, 37.567257, 25.715950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900539, 37.313011, 25.520021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647255, 37.053055, 25.351889>,  <41.495285, 36.897079, 25.251009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647255, 37.053055, 25.351889>,  <41.900539, 37.313011, 25.520021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647255, 37.053055, 25.351889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470550, 0.107933, -0.875747,
		0.614510, -0.752323, 0.237462,
		-0.633214, -0.649893, -0.420331,
		41.457291, 36.858086, 25.225790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314831, 36.909904, 25.066700>,  <41.900539, 37.313011, 25.520021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314831, 36.909904, 25.066700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942020, 36.872074, 24.926765>,  <41.718334, 36.849377, 24.842804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942020, 36.872074, 24.926765>,  <42.314831, 36.909904, 25.066700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942020, 36.872074, 24.926765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344544, 0.067995, -0.936304,
		0.112342, -0.993192, -0.030786,
		-0.932024, -0.094579, -0.349837,
		41.662415, 36.843700, 24.821814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.339615, 35.621986, 23.201281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536469, 35.831867, 23.479126>,  <34.654583, 35.957794, 23.645832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536469, 35.831867, 23.479126>,  <34.339615, 35.621986, 23.201281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536469, 35.831867, 23.479126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094411, -0.761053, 0.641783,
		0.865383, -0.381425, -0.325005,
		0.492138, 0.524704, 0.694613,
		34.684109, 35.989277, 23.687510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736225, 35.137608, 23.604448>,  <34.339615, 35.621986, 23.201281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736225, 35.137608, 23.604448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716602, 35.472706, 23.821991>,  <34.704830, 35.673763, 23.952517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716602, 35.472706, 23.821991>,  <34.736225, 35.137608, 23.604448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716602, 35.472706, 23.821991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030105, -0.545506, 0.837566,
		0.998342, 0.024713, 0.051980,
		-0.049054, 0.837742, 0.543858,
		34.701885, 35.724030, 23.985147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269543, 34.993969, 24.103418>,  <34.736225, 35.137608, 23.604448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269543, 34.993969, 24.103418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.009357, 35.264278, 24.242117>,  <34.853249, 35.426464, 24.325336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.009357, 35.264278, 24.242117>,  <35.269543, 34.993969, 24.103418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009357, 35.264278, 24.242117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009303, -0.449397, 0.893284,
		0.759484, 0.584271, 0.286027,
		-0.650459, 0.675774, 0.346745,
		34.814220, 35.467010, 24.346140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471756, 35.178291, 24.717049>,  <35.269543, 34.993969, 24.103418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471756, 35.178291, 24.717049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095085, 35.312756, 24.723282>,  <34.869083, 35.393433, 24.727022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095085, 35.312756, 24.723282>,  <35.471756, 35.178291, 24.717049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095085, 35.312756, 24.723282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049828, -0.185075, 0.981460,
		0.332810, 0.923442, 0.191031,
		-0.941677, 0.336158, 0.015582,
		34.812584, 35.413605, 24.727957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467079, 35.466862, 25.354477>,  <35.471756, 35.178291, 24.717049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467079, 35.466862, 25.354477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090553, 35.392429, 25.241831>,  <34.864639, 35.347771, 25.174244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090553, 35.392429, 25.241831>,  <35.467079, 35.466862, 25.354477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090553, 35.392429, 25.241831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269009, -0.090369, 0.958889,
		-0.203876, 0.978371, 0.035009,
		-0.941312, -0.186076, -0.281614,
		34.808159, 35.336605, 25.157347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107594, 35.830177, 25.873333>,  <35.467079, 35.466862, 25.354477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107594, 35.830177, 25.873333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820194, 35.587154, 25.737902>,  <34.647755, 35.441341, 25.656643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820194, 35.587154, 25.737902>,  <35.107594, 35.830177, 25.873333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820194, 35.587154, 25.737902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263277, -0.212999, 0.940913,
		-0.643771, 0.765187, -0.006915,
		-0.718501, -0.607553, -0.338578,
		34.604645, 35.404888, 25.636328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447239, 36.009422, 26.176882>,  <35.107594, 35.830177, 25.873333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447239, 36.009422, 26.176882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398430, 35.627033, 26.070129>,  <34.369144, 35.397598, 26.006079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398430, 35.627033, 26.070129>,  <34.447239, 36.009422, 26.176882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398430, 35.627033, 26.070129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163304, -0.245888, 0.955443,
		-0.979001, 0.160166, -0.126111,
		-0.122020, -0.955974, -0.266880,
		34.361824, 35.340240, 25.990065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800171, 35.668091, 26.573088>,  <34.447239, 36.009422, 26.176882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800171, 35.668091, 26.573088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.052372, 35.383278, 26.449490>,  <34.203693, 35.212391, 26.375330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.052372, 35.383278, 26.449490>,  <33.800171, 35.668091, 26.573088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052372, 35.383278, 26.449490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090432, -0.462772, 0.881853,
		-0.770899, -0.528070, -0.356170,
		0.630506, -0.712028, -0.308996,
		34.241524, 35.169670, 26.356791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464169, 35.199383, 26.903130>,  <33.800171, 35.668091, 26.573088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464169, 35.199383, 26.903130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.801247, 35.011436, 26.797983>,  <34.003494, 34.898670, 26.734896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.801247, 35.011436, 26.797983>,  <33.464169, 35.199383, 26.903130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801247, 35.011436, 26.797983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071658, -0.581773, 0.810189,
		-0.533605, -0.663904, -0.523925,
		0.842692, -0.469864, -0.262863,
		34.054054, 34.870476, 26.719124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396408, 34.427380, 26.938026>,  <33.464169, 35.199383, 26.903130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396408, 34.427380, 26.938026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.785534, 34.515148, 26.967653>,  <34.019009, 34.567810, 26.985430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.785534, 34.515148, 26.967653>,  <33.396408, 34.427380, 26.938026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785534, 34.515148, 26.967653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046867, -0.499745, 0.864904,
		0.226790, -0.837920, -0.496443,
		0.972816, 0.219418, 0.074066,
		34.077377, 34.580975, 26.989874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777409, 33.759373, 27.060638>,  <33.396408, 34.427380, 26.938026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777409, 33.759373, 27.060638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976524, 34.072426, 27.210138>,  <34.095993, 34.260258, 27.299839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976524, 34.072426, 27.210138>,  <33.777409, 33.759373, 27.060638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976524, 34.072426, 27.210138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011797, -0.437008, 0.899380,
		0.867217, -0.443294, -0.226772,
		0.497791, 0.782633, 0.373751,
		34.125862, 34.307217, 27.322264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173428, 33.451622, 27.578949>,  <33.777409, 33.759373, 27.060638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173428, 33.451622, 27.578949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.243317, 33.828674, 27.692730>,  <34.285252, 34.054905, 27.760998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.243317, 33.828674, 27.692730>,  <34.173428, 33.451622, 27.578949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243317, 33.828674, 27.692730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206142, -0.317515, 0.925575,
		0.962797, -0.103081, -0.249793,
		0.174723, 0.942634, 0.284453,
		34.295734, 34.111465, 27.778067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812073, 33.420059, 27.989647>,  <34.173428, 33.451622, 27.578949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812073, 33.420059, 27.989647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628883, 33.763893, 28.080303>,  <34.518970, 33.970196, 28.134697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628883, 33.763893, 28.080303>,  <34.812073, 33.420059, 27.989647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628883, 33.763893, 28.080303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144402, -0.179630, 0.973078,
		0.877159, 0.478372, -0.041861,
		-0.457973, 0.859589, 0.226642,
		34.491493, 34.021770, 28.148296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204296, 33.722164, 28.476620>,  <34.812073, 33.420059, 27.989647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204296, 33.722164, 28.476620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846363, 33.892628, 28.529778>,  <34.631603, 33.994907, 28.561672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846363, 33.892628, 28.529778>,  <35.204296, 33.722164, 28.476620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846363, 33.892628, 28.529778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033532, -0.232687, 0.971973,
		0.445142, 0.874209, 0.193926,
		-0.894832, 0.426163, 0.132893,
		34.577915, 34.020477, 28.569645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776226, 33.877522, 29.049118>,  <35.204296, 33.722164, 28.476620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776226, 33.877522, 29.049118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979347, 33.544567, 28.960335>,  <36.101219, 33.344795, 28.907064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979347, 33.544567, 28.960335>,  <35.776226, 33.877522, 29.049118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979347, 33.544567, 28.960335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071383, 0.297421, -0.952074,
		0.858510, 0.467623, 0.210450,
		0.507804, -0.832388, -0.221958,
		36.131687, 33.294849, 28.893747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425426, 34.076180, 28.743206>,  <35.776226, 33.877522, 29.049118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425426, 34.076180, 28.743206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376328, 33.697170, 28.625128>,  <36.346867, 33.469765, 28.554281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376328, 33.697170, 28.625128>,  <36.425426, 34.076180, 28.743206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376328, 33.697170, 28.625128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351409, 0.236679, -0.905812,
		0.928140, -0.214922, 0.303915,
		-0.122749, -0.947519, -0.295197,
		36.339504, 33.412914, 28.536570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136955, 33.804276, 28.490036>,  <36.425426, 34.076180, 28.743206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136955, 33.804276, 28.490036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810604, 33.630024, 28.337946>,  <36.614792, 33.525475, 28.246693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810604, 33.630024, 28.337946>,  <37.136955, 33.804276, 28.490036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810604, 33.630024, 28.337946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327854, 0.193136, -0.924776,
		0.476295, -0.879162, -0.014752,
		-0.815877, -0.435630, -0.380226,
		36.565842, 33.499336, 28.223879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382641, 33.563622, 27.783838>,  <37.136955, 33.804276, 28.490036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382641, 33.563622, 27.783838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.993702, 33.472580, 27.762884>,  <36.760338, 33.417953, 27.750311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.993702, 33.472580, 27.762884>,  <37.382641, 33.563622, 27.783838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993702, 33.472580, 27.762884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059712, -0.025410, -0.997892,
		0.225797, -0.973421, 0.038298,
		-0.972343, -0.227608, -0.052387,
		36.702000, 33.404297, 27.747168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382931, 33.059036, 27.218925>,  <37.382641, 33.563622, 27.783838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382931, 33.059036, 27.218925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012211, 33.205402, 27.252764>,  <36.789780, 33.293221, 27.273067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012211, 33.205402, 27.252764>,  <37.382931, 33.059036, 27.218925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012211, 33.205402, 27.252764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008543, 0.204652, -0.978798,
		-0.375467, -0.907869, -0.186545,
		-0.926796, 0.365912, 0.084595,
		36.734173, 33.315178, 27.278143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053394, 32.827789, 26.627602>,  <37.382931, 33.059036, 27.218925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053394, 32.827789, 26.627602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813236, 33.121586, 26.754126>,  <36.669144, 33.297863, 26.830040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813236, 33.121586, 26.754126>,  <37.053394, 32.827789, 26.627602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813236, 33.121586, 26.754126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018357, 0.382769, -0.923662,
		-0.799495, -0.560366, -0.216328,
		-0.600392, 0.734491, 0.316309,
		36.633118, 33.341934, 26.849018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339111, 32.948338, 26.141712>,  <37.053394, 32.827789, 26.627602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339111, 32.948338, 26.141712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438129, 33.284214, 26.335060>,  <36.497540, 33.485741, 26.451069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438129, 33.284214, 26.335060>,  <36.339111, 32.948338, 26.141712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438129, 33.284214, 26.335060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026519, 0.492837, -0.869717,
		-0.968514, 0.228110, 0.099730,
		0.247541, 0.839689, 0.483369,
		36.512390, 33.536121, 26.480070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837074, 33.400597, 25.854246>,  <36.339111, 32.948338, 26.141712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837074, 33.400597, 25.854246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114922, 33.627827, 26.030788>,  <36.281631, 33.764164, 26.136713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114922, 33.627827, 26.030788>,  <35.837074, 33.400597, 25.854246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114922, 33.627827, 26.030788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045083, 0.577943, -0.814831,
		-0.717964, 0.585895, 0.375840,
		0.694619, 0.568075, 0.441356,
		36.323307, 33.798248, 26.163195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673058, 34.152172, 25.664158>,  <35.837074, 33.400597, 25.854246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673058, 34.152172, 25.664158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055084, 34.134296, 25.781363>,  <36.284298, 34.123569, 25.851686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055084, 34.134296, 25.781363>,  <35.673058, 34.152172, 25.664158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055084, 34.134296, 25.781363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274509, 0.506237, -0.817538,
		-0.111799, 0.861235, 0.495756,
		0.955063, -0.044690, 0.293014,
		36.341602, 34.120888, 25.869267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911591, 34.790886, 25.637047>,  <35.673058, 34.152172, 25.664158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911591, 34.790886, 25.637047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242748, 34.569221, 25.602419>,  <36.441444, 34.436222, 25.581642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242748, 34.569221, 25.602419>,  <35.911591, 34.790886, 25.637047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242748, 34.569221, 25.602419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270671, 0.529922, -0.803691,
		0.491252, 0.641939, 0.588715,
		0.827894, -0.554164, -0.086571,
		36.491116, 34.402973, 25.576448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530281, 35.334728, 25.653770>,  <35.911591, 34.790886, 25.637047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530281, 35.334728, 25.653770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634274, 34.983166, 25.493807>,  <36.696667, 34.772228, 25.397829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634274, 34.983166, 25.493807>,  <36.530281, 35.334728, 25.653770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634274, 34.983166, 25.493807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456100, 0.476810, -0.751415,
		0.851108, 0.012953, 0.524831,
		0.259978, -0.878911, -0.399909,
		36.712265, 34.719494, 25.373835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246170, 35.445747, 25.346155>,  <36.530281, 35.334728, 25.653770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246170, 35.445747, 25.346155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143799, 35.110390, 25.153656>,  <37.082375, 34.909176, 25.038157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143799, 35.110390, 25.153656>,  <37.246170, 35.445747, 25.346155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143799, 35.110390, 25.153656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712690, 0.172706, -0.679887,
		0.653126, -0.516984, 0.553312,
		-0.255930, -0.838392, -0.481248,
		37.067020, 34.858871, 25.009281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771179, 35.298199, 24.959623>,  <37.246170, 35.445747, 25.346155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771179, 35.298199, 24.959623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.502342, 35.062477, 24.780283>,  <37.341042, 34.921043, 24.672678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.502342, 35.062477, 24.780283>,  <37.771179, 35.298199, 24.959623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502342, 35.062477, 24.780283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441835, 0.166729, -0.881466,
		0.594204, -0.790521, 0.148318,
		-0.672089, -0.589303, -0.448352,
		37.300716, 34.885685, 24.645777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131866, 34.825615, 24.475115>,  <37.771179, 35.298199, 24.959623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131866, 34.825615, 24.475115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756554, 34.847656, 24.338533>,  <37.531364, 34.860882, 24.256584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756554, 34.847656, 24.338533>,  <38.131866, 34.825615, 24.475115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756554, 34.847656, 24.338533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342675, 0.281989, -0.896134,
		0.046910, -0.957834, -0.283467,
		-0.938282, 0.055100, -0.341454,
		37.475067, 34.864185, 24.236097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698673, 34.492191, 24.206057>,  <38.131866, 34.825615, 24.475115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698673, 34.492191, 24.206057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969025, 34.260414, 24.023878>,  <39.131237, 34.121346, 23.914570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969025, 34.260414, 24.023878>,  <38.698673, 34.492191, 24.206057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969025, 34.260414, 24.023878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076187, -0.669582, 0.738820,
		-0.733067, -0.464652, -0.496701,
		0.675876, -0.579447, -0.455448,
		39.171787, 34.086582, 23.887243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469593, 33.673702, 24.115561>,  <38.698673, 34.492191, 24.206057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469593, 33.673702, 24.115561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864819, 33.734890, 24.122847>,  <39.101955, 33.771603, 24.127218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864819, 33.734890, 24.122847>,  <38.469593, 33.673702, 24.115561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864819, 33.734890, 24.122847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084903, -0.639409, 0.764165,
		0.128538, -0.753497, -0.644764,
		0.988064, 0.152966, 0.018214,
		39.161236, 33.780781, 24.128311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755348, 33.027424, 24.389881>,  <38.469593, 33.673702, 24.115561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755348, 33.027424, 24.389881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062229, 33.283020, 24.412088>,  <39.246357, 33.436378, 24.425413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062229, 33.283020, 24.412088>,  <38.755348, 33.027424, 24.389881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062229, 33.283020, 24.412088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233629, -0.359020, 0.903616,
		0.597337, -0.680289, -0.424730,
		0.767207, 0.638992, 0.055520,
		39.292393, 33.474716, 24.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305641, 32.582363, 24.744513>,  <38.755348, 33.027424, 24.389881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305641, 32.582363, 24.744513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409973, 32.966965, 24.779100>,  <39.472572, 33.197727, 24.799852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409973, 32.966965, 24.779100>,  <39.305641, 32.582363, 24.744513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409973, 32.966965, 24.779100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500074, -0.211181, 0.839839,
		0.825770, -0.175811, -0.535905,
		0.260826, 0.961506, 0.086468,
		39.488220, 33.255417, 24.805040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002407, 32.591518, 24.915739>,  <39.305641, 32.582363, 24.744513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002407, 32.591518, 24.915739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836143, 32.935143, 25.035233>,  <39.736385, 33.141319, 25.106928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836143, 32.935143, 25.035233>,  <40.002407, 32.591518, 24.915739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836143, 32.935143, 25.035233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315411, -0.171921, 0.933252,
		0.853081, 0.482135, -0.199498,
		-0.415655, 0.859063, 0.298733,
		39.711449, 33.192860, 25.124853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466270, 32.845612, 25.389700>,  <40.002407, 32.591518, 24.915739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466270, 32.845612, 25.389700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.111996, 33.016350, 25.462765>,  <39.899433, 33.118793, 25.506603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.111996, 33.016350, 25.462765>,  <40.466270, 32.845612, 25.389700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111996, 33.016350, 25.462765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219269, 0.037765, 0.974933,
		0.409251, 0.903534, -0.127043,
		-0.885683, 0.426849, 0.182662,
		39.846291, 33.144405, 25.517563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618629, 33.263802, 25.932547>,  <40.466270, 32.845612, 25.389700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618629, 33.263802, 25.932547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222431, 33.245697, 25.984510>,  <39.984715, 33.234833, 26.015690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222431, 33.245697, 25.984510>,  <40.618629, 33.263802, 25.932547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222431, 33.245697, 25.984510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127805, 0.046667, 0.990701,
		-0.050906, 0.997884, -0.040438,
		-0.990492, -0.045265, 0.129910,
		39.925285, 33.232117, 26.023483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547779, 33.734455, 26.425995>,  <40.618629, 33.263802, 25.932547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547779, 33.734455, 26.425995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209290, 33.521404, 26.431807>,  <40.006195, 33.393574, 26.435293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209290, 33.521404, 26.431807>,  <40.547779, 33.734455, 26.425995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209290, 33.521404, 26.431807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083669, 0.159760, 0.983604,
		-0.526216, 0.831134, -0.179757,
		-0.846225, -0.532628, 0.014528,
		39.955421, 33.361614, 26.436165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113941, 34.102341, 26.954844>,  <40.547779, 33.734455, 26.425995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113941, 34.102341, 26.954844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.934299, 33.747288, 26.914024>,  <39.826515, 33.534256, 26.889532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.934299, 33.747288, 26.914024>,  <40.113941, 34.102341, 26.954844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934299, 33.747288, 26.914024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309154, 0.047219, 0.949839,
		-0.838290, 0.458124, -0.295622,
		-0.449103, -0.887633, -0.102048,
		39.799568, 33.480999, 26.883410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355133, 34.072895, 27.175690>,  <40.113941, 34.102341, 26.954844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355133, 34.072895, 27.175690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509499, 33.706909, 27.222872>,  <39.602116, 33.487316, 27.251181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509499, 33.706909, 27.222872>,  <39.355133, 34.072895, 27.175690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509499, 33.706909, 27.222872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262369, 0.013730, 0.964870,
		-0.884441, -0.403302, -0.234759,
		0.385910, -0.914964, 0.117958,
		39.625271, 33.432419, 27.258259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836498, 33.703377, 27.547947>,  <39.355133, 34.072895, 27.175690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836498, 33.703377, 27.547947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167469, 33.485119, 27.601072>,  <39.366051, 33.354164, 27.632948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167469, 33.485119, 27.601072>,  <38.836498, 33.703377, 27.547947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167469, 33.485119, 27.601072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161835, -0.005218, 0.986804,
		-0.537755, -0.837998, -0.092622,
		0.827423, -0.545649, 0.132811,
		39.415695, 33.321423, 27.640915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718143, 33.019463, 27.970917>,  <38.836498, 33.703377, 27.547947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718143, 33.019463, 27.970917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110012, 33.092072, 28.005095>,  <39.345131, 33.135635, 28.025600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110012, 33.092072, 28.005095>,  <38.718143, 33.019463, 27.970917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110012, 33.092072, 28.005095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069554, -0.092182, 0.993310,
		0.188185, -0.979057, -0.077682,
		0.979667, 0.181523, 0.085445,
		39.403912, 33.146530, 28.030727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861099, 32.603176, 28.515188>,  <38.718143, 33.019463, 27.970917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861099, 32.603176, 28.515188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181526, 32.840576, 28.484087>,  <39.373783, 32.983017, 28.465425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181526, 32.840576, 28.484087>,  <38.861099, 32.603176, 28.515188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181526, 32.840576, 28.484087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171999, -0.103818, 0.979611,
		0.573324, -0.798112, -0.185246,
		0.801072, 0.593496, -0.077753,
		39.421848, 33.018623, 28.460762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462044, 32.169434, 28.858561>,  <38.861099, 32.603176, 28.515188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462044, 32.169434, 28.858561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.522476, 32.563961, 28.832193>,  <39.558735, 32.800678, 28.816372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.522476, 32.563961, 28.832193>,  <39.462044, 32.169434, 28.858561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522476, 32.563961, 28.832193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092306, 0.052317, 0.994355,
		0.984202, -0.156315, -0.083139,
		0.151083, 0.986321, -0.065919,
		39.567802, 32.859856, 28.812418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.422760, 36.532803, 24.425602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060692, 36.700199, 24.395834>,  <41.843452, 36.800636, 24.377974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060692, 36.700199, 24.395834>,  <42.422760, 36.532803, 24.425602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060692, 36.700199, 24.395834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208771, 0.285201, -0.935455,
		-0.370255, -0.862279, -0.345523,
		-0.905167, 0.418491, -0.074422,
		41.789143, 36.825745, 24.373507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183456, 36.236462, 23.791912>,  <42.422760, 36.532803, 24.425602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183456, 36.236462, 23.791912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938122, 36.544315, 23.862886>,  <41.790920, 36.729027, 23.905470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938122, 36.544315, 23.862886>,  <42.183456, 36.236462, 23.791912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938122, 36.544315, 23.862886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148387, 0.332936, -0.931201,
		-0.775758, -0.544810, -0.318405,
		-0.613336, 0.769634, 0.177435,
		41.754120, 36.775204, 23.916117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664722, 36.230938, 23.230621>,  <42.183456, 36.236462, 23.791912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664722, 36.230938, 23.230621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663879, 36.607639, 23.365141>,  <41.663372, 36.833660, 23.445852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663879, 36.607639, 23.365141>,  <41.664722, 36.230938, 23.230621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663879, 36.607639, 23.365141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007087, 0.336278, -0.941736,
		-0.999973, -0.004372, 0.005964,
		-0.002112, 0.941752, 0.336300,
		41.663246, 36.890163, 23.466030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182594, 36.582146, 22.777662>,  <41.664722, 36.230938, 23.230621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182594, 36.582146, 22.777662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.383984, 36.877251, 22.957541>,  <41.504818, 37.054314, 23.065468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.383984, 36.877251, 22.957541>,  <41.182594, 36.582146, 22.777662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383984, 36.877251, 22.957541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051330, 0.494013, -0.867938,
		-0.862485, 0.460066, 0.210853,
		0.503472, 0.737761, 0.449694,
		41.535027, 37.098579, 23.092449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986286, 37.235031, 22.401571>,  <41.182594, 36.582146, 22.777662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986286, 37.235031, 22.401571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.344639, 37.295166, 22.568804>,  <41.559650, 37.331245, 22.669144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.344639, 37.295166, 22.568804>,  <40.986286, 37.235031, 22.401571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344639, 37.295166, 22.568804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331809, 0.399383, -0.854632,
		-0.295458, 0.904373, 0.307917,
		0.895884, 0.150338, 0.418080,
		41.613403, 37.340267, 22.694227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127716, 37.810734, 22.233122>,  <40.986286, 37.235031, 22.401571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127716, 37.810734, 22.233122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.497120, 37.680328, 22.313957>,  <41.718761, 37.602085, 22.362459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.497120, 37.680328, 22.313957>,  <41.127716, 37.810734, 22.233122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497120, 37.680328, 22.313957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331318, 0.412543, -0.848550,
		0.193264, 0.850603, 0.489002,
		0.923514, -0.326009, 0.202090,
		41.774174, 37.582527, 22.374584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570335, 38.314255, 22.014971>,  <41.127716, 37.810734, 22.233122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570335, 38.314255, 22.014971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.794949, 37.983364, 22.022627>,  <41.929718, 37.784828, 22.027222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.794949, 37.983364, 22.022627>,  <41.570335, 38.314255, 22.014971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794949, 37.983364, 22.022627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394207, 0.247111, -0.885176,
		0.727515, 0.504605, 0.464862,
		0.561536, -0.827231, 0.019142,
		41.963409, 37.735195, 22.028370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147041, 38.562103, 21.825142>,  <41.570335, 38.314255, 22.014971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147041, 38.562103, 21.825142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.155762, 38.166676, 21.765469>,  <42.160995, 37.929420, 21.729664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.155762, 38.166676, 21.765469>,  <42.147041, 38.562103, 21.825142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155762, 38.166676, 21.765469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179138, 0.150667, -0.972219,
		0.983582, -0.005525, 0.180375,
		0.021805, -0.988569, -0.149183,
		42.162304, 37.870106, 21.720715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606186, 38.526131, 21.216625>,  <42.147041, 38.562103, 21.825142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606186, 38.526131, 21.216625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.426723, 38.168686, 21.221855>,  <42.319046, 37.954220, 21.224993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.426723, 38.168686, 21.221855>,  <42.606186, 38.526131, 21.216625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426723, 38.168686, 21.221855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124632, -0.077045, -0.989207,
		0.884973, -0.442182, 0.145939,
		-0.448653, -0.893610, 0.013073,
		42.292126, 37.900604, 21.225777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084694, 38.031952, 20.805510>,  <42.606186, 38.526131, 21.216625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084694, 38.031952, 20.805510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.732460, 37.842403, 20.807030>,  <42.521118, 37.728676, 20.807941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.732460, 37.842403, 20.807030>,  <43.084694, 38.031952, 20.805510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732460, 37.842403, 20.807030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109942, -0.212091, -0.971046,
		0.460955, -0.854672, 0.238863,
		-0.880587, -0.473870, 0.003800,
		42.468285, 37.700241, 20.808170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155224, 37.457680, 20.418112>,  <43.084694, 38.031952, 20.805510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155224, 37.457680, 20.418112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.764305, 37.542419, 20.419121>,  <42.529755, 37.593262, 20.419725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.764305, 37.542419, 20.419121>,  <43.155224, 37.457680, 20.418112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764305, 37.542419, 20.419121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019275, -0.077057, -0.996840,
		-0.210985, -0.974260, 0.079391,
		-0.977299, 0.211849, 0.002521,
		42.471115, 37.605972, 20.419878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745407, 36.919724, 20.022793>,  <43.155224, 37.457680, 20.418112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745407, 36.919724, 20.022793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480270, 37.218437, 20.044550>,  <42.321190, 37.397667, 20.057604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480270, 37.218437, 20.044550>,  <42.745407, 36.919724, 20.022793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480270, 37.218437, 20.044550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246023, -0.148604, -0.957804,
		-0.707190, -0.648252, 0.282227,
		-0.662838, 0.746784, 0.054394,
		42.281418, 37.442471, 20.060867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042721, 36.684086, 19.847515>,  <42.745407, 36.919724, 20.022793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042721, 36.684086, 19.847515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.127678, 37.058212, 19.734329>,  <42.178654, 37.282688, 19.666418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.127678, 37.058212, 19.734329>,  <42.042721, 36.684086, 19.847515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127678, 37.058212, 19.734329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155690, -0.253483, -0.954729,
		-0.964701, 0.246836, 0.091781,
		0.212397, 0.935317, -0.282966,
		42.191399, 37.338806, 19.649439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537682, 36.847393, 19.292288>,  <42.042721, 36.684086, 19.847515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537682, 36.847393, 19.292288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.864014, 37.074192, 19.246794>,  <42.059814, 37.210270, 19.219498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.864014, 37.074192, 19.246794>,  <41.537682, 36.847393, 19.292288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864014, 37.074192, 19.246794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110507, -0.040197, -0.993062,
		-0.567637, 0.822737, 0.029864,
		0.815829, 0.566999, -0.113736,
		42.108761, 37.244293, 19.212673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917820, 36.549103, 18.837669>,  <41.537682, 36.847393, 19.292288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917820, 36.549103, 18.837669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.529049, 36.487022, 18.908398>,  <40.295784, 36.449776, 18.950834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.529049, 36.487022, 18.908398>,  <40.917820, 36.549103, 18.837669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529049, 36.487022, 18.908398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235199, -0.622309, 0.746601,
		-0.005836, 0.767232, 0.641343,
		-0.971930, -0.155201, 0.176820,
		40.237469, 36.440464, 18.961443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888840, 36.649220, 19.615492>,  <40.917820, 36.549103, 18.837669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888840, 36.649220, 19.615492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565311, 36.450089, 19.490288>,  <40.371193, 36.330612, 19.415165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.565311, 36.450089, 19.490288>,  <40.888840, 36.649220, 19.615492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565311, 36.450089, 19.490288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039916, -0.577534, 0.815390,
		-0.586696, 0.647012, 0.486994,
		-0.808823, -0.497825, -0.313011,
		40.322666, 36.300739, 19.396385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477642, 36.712463, 20.163588>,  <40.888840, 36.649220, 19.615492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477642, 36.712463, 20.163588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.334026, 36.395538, 19.966270>,  <40.247856, 36.205383, 19.847881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.334026, 36.395538, 19.966270>,  <40.477642, 36.712463, 20.163588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334026, 36.395538, 19.966270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146025, -0.474337, 0.868148,
		-0.921827, 0.383734, 0.054611,
		-0.359042, -0.792308, -0.493292,
		40.226315, 36.157845, 19.818283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850029, 36.530891, 20.384829>,  <40.477642, 36.712463, 20.163588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850029, 36.530891, 20.384829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965157, 36.183571, 20.223230>,  <40.034233, 35.975178, 20.126272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965157, 36.183571, 20.223230>,  <39.850029, 36.530891, 20.384829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965157, 36.183571, 20.223230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121191, -0.451476, 0.884015,
		-0.949986, -0.205475, -0.235173,
		0.287818, -0.868303, -0.403995,
		40.051502, 35.923080, 20.102032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258999, 36.038971, 20.517664>,  <39.850029, 36.530891, 20.384829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258999, 36.038971, 20.517664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.577419, 35.820354, 20.413670>,  <39.768471, 35.689182, 20.351273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.577419, 35.820354, 20.413670>,  <39.258999, 36.038971, 20.517664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577419, 35.820354, 20.413670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104949, -0.547713, 0.830058,
		-0.596066, -0.633479, -0.493365,
		0.796047, -0.546548, -0.259990,
		39.816235, 35.656391, 20.335672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051422, 35.311481, 20.395790>,  <39.258999, 36.038971, 20.517664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051422, 35.311481, 20.395790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442230, 35.330132, 20.478992>,  <39.676716, 35.341320, 20.528913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442230, 35.330132, 20.478992>,  <39.051422, 35.311481, 20.395790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442230, 35.330132, 20.478992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147921, -0.554322, 0.819052,
		0.153489, -0.830995, -0.534685,
		0.977017, 0.046625, 0.208004,
		39.735336, 35.344120, 20.541393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257236, 34.610817, 20.573301>,  <39.051422, 35.311481, 20.395790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257236, 34.610817, 20.573301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542629, 34.851326, 20.717194>,  <39.713867, 34.995632, 20.803528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542629, 34.851326, 20.717194>,  <39.257236, 34.610817, 20.573301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542629, 34.851326, 20.717194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008945, -0.521183, 0.853398,
		0.700613, -0.605670, -0.377235,
		0.713486, 0.601276, 0.359730,
		39.756676, 35.031708, 20.825113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700222, 34.164639, 20.881916>,  <39.257236, 34.610817, 20.573301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700222, 34.164639, 20.881916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.794971, 34.523632, 21.030731>,  <39.851822, 34.739029, 21.120020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.794971, 34.523632, 21.030731>,  <39.700222, 34.164639, 20.881916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794971, 34.523632, 21.030731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006218, -0.381528, 0.924336,
		0.971521, -0.221263, -0.084793,
		0.236872, 0.897485, 0.372038,
		39.866032, 34.792877, 21.142344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190151, 34.028049, 21.399084>,  <39.700222, 34.164639, 20.881916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190151, 34.028049, 21.399084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.074673, 34.400043, 21.490099>,  <40.005386, 34.623241, 21.544708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.074673, 34.400043, 21.490099>,  <40.190151, 34.028049, 21.399084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074673, 34.400043, 21.490099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131675, -0.273967, 0.952683,
		0.948322, 0.245078, 0.201550,
		-0.288700, 0.929989, 0.227538,
		39.988064, 34.679039, 21.558361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510891, 34.203720, 22.017406>,  <40.190151, 34.028049, 21.399084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510891, 34.203720, 22.017406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194324, 34.447327, 21.996422>,  <40.004383, 34.593491, 21.983831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194324, 34.447327, 21.996422>,  <40.510891, 34.203720, 22.017406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194324, 34.447327, 21.996422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292947, -0.302558, 0.906995,
		0.536503, 0.733183, 0.417860,
		-0.791420, 0.609017, -0.052460,
		39.956898, 34.630032, 21.980684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545078, 34.650402, 22.643471>,  <40.510891, 34.203720, 22.017406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545078, 34.650402, 22.643471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.169250, 34.707260, 22.518892>,  <39.943752, 34.741375, 22.444145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.169250, 34.707260, 22.518892>,  <40.545078, 34.650402, 22.643471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169250, 34.707260, 22.518892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322813, -0.064928, 0.944233,
		0.113996, 0.987714, 0.106890,
		-0.939573, 0.142145, -0.311445,
		39.887379, 34.749905, 22.425459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189194, 35.094765, 23.161949>,  <40.545078, 34.650402, 22.643471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189194, 35.094765, 23.161949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932213, 34.861282, 22.963337>,  <39.778023, 34.721195, 22.844170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932213, 34.861282, 22.963337>,  <40.189194, 35.094765, 23.161949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932213, 34.861282, 22.963337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418850, -0.275125, 0.865374,
		-0.641728, 0.763936, -0.067728,
		-0.642456, -0.583702, -0.496529,
		39.739475, 34.686172, 22.814379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503563, 35.260117, 23.406860>,  <40.189194, 35.094765, 23.161949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503563, 35.260117, 23.406860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459869, 34.889977, 23.261642>,  <39.433651, 34.667892, 23.174513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459869, 34.889977, 23.261642>,  <39.503563, 35.260117, 23.406860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459869, 34.889977, 23.261642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425300, -0.286601, 0.858476,
		-0.898436, 0.248179, -0.362243,
		-0.109236, -0.925347, -0.363043,
		39.427097, 34.612373, 23.152729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048882, 34.980587, 23.781868>,  <39.503563, 35.260117, 23.406860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048882, 34.980587, 23.781868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137905, 34.615456, 23.644922>,  <39.191319, 34.396378, 23.562756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137905, 34.615456, 23.644922>,  <39.048882, 34.980587, 23.781868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137905, 34.615456, 23.644922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253346, -0.393258, 0.883835,
		-0.941426, -0.109969, -0.318784,
		0.222559, -0.912828, -0.342363,
		39.204674, 34.341606, 23.542213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246037, 34.654419, 23.688580>,  <39.048882, 34.980587, 23.781868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246037, 34.654419, 23.688580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880844, 34.815407, 23.715342>,  <37.661728, 34.911999, 23.731398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880844, 34.815407, 23.715342>,  <38.246037, 34.654419, 23.688580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880844, 34.815407, 23.715342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086817, 0.351867, -0.932015,
		-0.398653, -0.845106, -0.356190,
		-0.912983, 0.402474, 0.066903,
		37.606949, 34.936150, 23.735413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849819, 34.403324, 23.124550>,  <38.246037, 34.654419, 23.688580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849819, 34.403324, 23.124550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700531, 34.754543, 23.244377>,  <37.610958, 34.965275, 23.316275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700531, 34.754543, 23.244377>,  <37.849819, 34.403324, 23.124550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700531, 34.754543, 23.244377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018726, 0.315706, -0.948672,
		-0.927555, -0.359671, -0.101384,
		-0.373218, 0.878047, 0.299570,
		37.588566, 35.017956, 23.334248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369064, 34.627029, 22.667841>,  <37.849819, 34.403324, 23.124550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369064, 34.627029, 22.667841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392719, 34.981785, 22.851114>,  <37.406914, 35.194637, 22.961079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392719, 34.981785, 22.851114>,  <37.369064, 34.627029, 22.667841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392719, 34.981785, 22.851114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163159, 0.461404, -0.872058,
		-0.984825, -0.023182, 0.171992,
		0.059142, 0.886887, 0.458185,
		37.410461, 35.247852, 22.988569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820793, 34.999184, 22.372770>,  <37.369064, 34.627029, 22.667841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820793, 34.999184, 22.372770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.071060, 35.282864, 22.502745>,  <37.221218, 35.453072, 22.580729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.071060, 35.282864, 22.502745>,  <36.820793, 34.999184, 22.372770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071060, 35.282864, 22.502745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113337, 0.494755, -0.861610,
		-0.771814, 0.502252, 0.389929,
		0.625665, 0.709197, 0.324935,
		37.258759, 35.495621, 22.600225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539001, 35.568935, 21.957577>,  <36.820793, 34.999184, 22.372770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539001, 35.568935, 21.957577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.894577, 35.700375, 22.085209>,  <37.107922, 35.779240, 22.161789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.894577, 35.700375, 22.085209>,  <36.539001, 35.568935, 21.957577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894577, 35.700375, 22.085209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000040, 0.696697, -0.717366,
		-0.458028, 0.637681, 0.619333,
		0.888938, 0.328598, 0.319081,
		37.161259, 35.798954, 22.180933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455753, 36.262306, 21.827034>,  <36.539001, 35.568935, 21.957577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455753, 36.262306, 21.827034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851757, 36.233524, 21.875540>,  <37.089359, 36.216255, 21.904644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851757, 36.233524, 21.875540>,  <36.455753, 36.262306, 21.827034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851757, 36.233524, 21.875540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138254, 0.664431, -0.734451,
		-0.027723, 0.743878, 0.667741,
		0.990009, -0.071956, 0.121264,
		37.148758, 36.211937, 21.911919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745209, 36.946053, 22.029667>,  <36.455753, 36.262306, 21.827034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745209, 36.946053, 22.029667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995613, 36.702633, 21.834616>,  <37.145855, 36.556580, 21.717585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995613, 36.702633, 21.834616>,  <36.745209, 36.946053, 22.029667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995613, 36.702633, 21.834616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067888, 0.665465, -0.743335,
		0.776855, 0.432231, 0.457900,
		0.626009, -0.608550, -0.487627,
		37.183414, 36.520069, 21.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703346, 37.558132, 22.420839>,  <36.745209, 36.946053, 22.029667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703346, 37.558132, 22.420839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359703, 37.748505, 22.345564>,  <36.153515, 37.862728, 22.300398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359703, 37.748505, 22.345564>,  <36.703346, 37.558132, 22.420839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359703, 37.748505, 22.345564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425743, -0.460534, 0.778879,
		0.284029, 0.749263, 0.598275,
		-0.859111, 0.475935, -0.188188,
		36.101971, 37.891285, 22.289108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406662, 37.722595, 23.036671>,  <36.703346, 37.558132, 22.420839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406662, 37.722595, 23.036671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084702, 37.753883, 22.801376>,  <35.891525, 37.772655, 22.660200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084702, 37.753883, 22.801376>,  <36.406662, 37.722595, 23.036671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084702, 37.753883, 22.801376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552454, -0.460660, 0.694685,
		-0.216639, 0.884124, 0.413996,
		-0.804899, 0.078218, -0.588235,
		35.843231, 37.777348, 22.624907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811630, 37.944263, 23.493200>,  <36.406662, 37.722595, 23.036671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811630, 37.944263, 23.493200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660465, 37.763538, 23.169956>,  <35.569767, 37.655106, 22.976009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660465, 37.763538, 23.169956>,  <35.811630, 37.944263, 23.493200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660465, 37.763538, 23.169956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655952, -0.485317, 0.578096,
		-0.653380, 0.748556, -0.112957,
		-0.377917, -0.451811, -0.808113,
		35.547089, 37.627995, 22.927523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127384, 38.003902, 23.529865>,  <35.811630, 37.944263, 23.493200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127384, 38.003902, 23.529865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220322, 37.686787, 23.304480>,  <35.276085, 37.496517, 23.169249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220322, 37.686787, 23.304480>,  <35.127384, 38.003902, 23.529865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220322, 37.686787, 23.304480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655371, -0.555671, 0.511584,
		-0.718683, 0.250415, -0.648682,
		0.232346, -0.792794, -0.563466,
		35.290024, 37.448948, 23.135441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550350, 37.691898, 23.413244>,  <35.127384, 38.003902, 23.529865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550350, 37.691898, 23.413244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817245, 37.404633, 23.334219>,  <34.977383, 37.232273, 23.286804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817245, 37.404633, 23.334219>,  <34.550350, 37.691898, 23.413244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817245, 37.404633, 23.334219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543661, -0.650875, 0.529900,
		-0.509145, -0.246162, -0.824727,
		0.667236, -0.718168, -0.197561,
		35.017414, 37.189182, 23.274950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127266, 37.113510, 23.502420>,  <34.550350, 37.691898, 23.413244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127266, 37.113510, 23.502420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493858, 36.966141, 23.440020>,  <34.713814, 36.877720, 23.402578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493858, 36.966141, 23.440020>,  <34.127266, 37.113510, 23.502420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493858, 36.966141, 23.440020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183169, -0.733029, 0.655070,
		-0.355695, -0.571782, -0.739288,
		0.916477, -0.368420, -0.156002,
		34.768803, 36.855614, 23.393219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060879, 36.368458, 23.116917>,  <34.127266, 37.113510, 23.502420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060879, 36.368458, 23.116917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418346, 36.375858, 23.296255>,  <34.632828, 36.380299, 23.403858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418346, 36.375858, 23.296255>,  <34.060879, 36.368458, 23.116917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418346, 36.375858, 23.296255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227570, -0.842441, 0.488370,
		0.386742, -0.538471, -0.748652,
		0.893668, 0.018502, 0.448348,
		34.686447, 36.381409, 23.430759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.649223, 40.297550, 20.340815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.780949, 39.924660, 20.400826>,  <40.859982, 39.700924, 20.436832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.780949, 39.924660, 20.400826>,  <40.649223, 40.297550, 20.340815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780949, 39.924660, 20.400826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576892, -0.072859, 0.813565,
		-0.747496, -0.354464, -0.561787,
		0.329310, -0.932227, 0.150026,
		40.879742, 39.644993, 20.445833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039452, 39.792934, 20.468918>,  <40.649223, 40.297550, 20.340815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039452, 39.792934, 20.468918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349522, 39.580467, 20.605717>,  <40.535564, 39.452988, 20.687796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349522, 39.580467, 20.605717>,  <40.039452, 39.792934, 20.468918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349522, 39.580467, 20.605717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552238, -0.306820, 0.775174,
		-0.306820, -0.789758, -0.531172,
		-0.775174, 0.531172, -0.341996,
		40.582073, 39.421116, 20.708315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871944, 39.045216, 20.492987>,  <40.039452, 39.792934, 20.468918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871944, 39.045216, 20.492987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.148258, 39.106113, 20.775726>,  <40.314049, 39.142651, 20.945370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.148258, 39.106113, 20.775726>,  <39.871944, 39.045216, 20.492987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148258, 39.106113, 20.775726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609118, -0.404210, 0.682341,
		0.389597, -0.901907, -0.186490,
		0.690789, 0.152244, 0.706847,
		40.355495, 39.151787, 20.987780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874043, 38.433365, 20.861839>,  <39.871944, 39.045216, 20.492987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874043, 38.433365, 20.861839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035252, 38.715752, 21.094797>,  <40.131977, 38.885185, 21.234571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.035252, 38.715752, 21.094797>,  <39.874043, 38.433365, 20.861839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035252, 38.715752, 21.094797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462650, -0.391906, 0.795213,
		0.789640, -0.589931, 0.168671,
		0.403018, 0.705968, 0.582397,
		40.156158, 38.927544, 21.269516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067200, 38.111851, 21.447086>,  <39.874043, 38.433365, 20.861839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067200, 38.111851, 21.447086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.081631, 38.488197, 21.581821>,  <40.090290, 38.714005, 21.662663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.081631, 38.488197, 21.581821>,  <40.067200, 38.111851, 21.447086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081631, 38.488197, 21.581821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350011, -0.303812, 0.886110,
		0.936050, -0.149870, 0.318353,
		0.036082, 0.940870, 0.336840,
		40.092457, 38.770458, 21.682873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433472, 38.027092, 22.056540>,  <40.067200, 38.111851, 21.447086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433472, 38.027092, 22.056540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217083, 38.363464, 22.062082>,  <40.087250, 38.565289, 22.065409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217083, 38.363464, 22.062082>,  <40.433472, 38.027092, 22.056540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217083, 38.363464, 22.062082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418739, -0.283590, 0.862690,
		0.729391, 0.460886, 0.505543,
		-0.540968, 0.840929, 0.013857,
		40.054794, 38.615742, 22.066240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579609, 38.472733, 22.647806>,  <40.433472, 38.027092, 22.056540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579609, 38.472733, 22.647806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212048, 38.602787, 22.558451>,  <39.991512, 38.680820, 22.504837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212048, 38.602787, 22.558451>,  <40.579609, 38.472733, 22.647806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212048, 38.602787, 22.558451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299475, -0.206363, 0.931520,
		0.256772, 0.922876, 0.286998,
		-0.918903, 0.325136, -0.223390,
		39.936378, 38.700329, 22.491434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441303, 38.720066, 23.233446>,  <40.579609, 38.472733, 22.647806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441303, 38.720066, 23.233446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.083736, 38.718456, 23.054161>,  <39.869198, 38.717491, 22.946590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.083736, 38.718456, 23.054161>,  <40.441303, 38.720066, 23.233446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083736, 38.718456, 23.054161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447825, -0.034452, 0.893457,
		-0.019037, 0.999398, 0.028995,
		-0.893918, -0.004024, -0.448211,
		39.815559, 38.717251, 22.919697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082134, 39.084610, 23.635128>,  <40.441303, 38.720066, 23.233446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082134, 39.084610, 23.635128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.778255, 38.933105, 23.423695>,  <39.595928, 38.842201, 23.296835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.778255, 38.933105, 23.423695>,  <40.082134, 39.084610, 23.635128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778255, 38.933105, 23.423695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592667, 0.068798, 0.802504,
		-0.267593, 0.922933, -0.276745,
		-0.759697, -0.378762, -0.528583,
		39.550346, 38.819477, 23.265120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474186, 39.458809, 23.766924>,  <40.082134, 39.084610, 23.635128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474186, 39.458809, 23.766924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.374390, 39.086620, 23.659603>,  <39.314514, 38.863308, 23.595211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.374390, 39.086620, 23.659603>,  <39.474186, 39.458809, 23.766924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374390, 39.086620, 23.659603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576256, -0.080018, 0.813343,
		-0.778258, 0.357530, -0.516224,
		-0.249487, -0.930467, -0.268304,
		39.299545, 38.807480, 23.579111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691551, 39.449169, 23.829975>,  <39.474186, 39.458809, 23.766924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691551, 39.449169, 23.829975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843090, 39.079094, 23.838961>,  <38.934013, 38.857048, 23.844353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843090, 39.079094, 23.838961>,  <38.691551, 39.449169, 23.829975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843090, 39.079094, 23.838961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315348, -0.106234, 0.943011,
		-0.870074, -0.364342, -0.332002,
		0.378849, -0.925186, 0.022464,
		38.956745, 38.801537, 23.845699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172729, 39.090408, 24.240692>,  <38.691551, 39.449169, 23.829975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172729, 39.090408, 24.240692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.478027, 38.832020, 24.235437>,  <38.661205, 38.676987, 24.232285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.478027, 38.832020, 24.235437>,  <38.172729, 39.090408, 24.240692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478027, 38.832020, 24.235437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248030, -0.311711, 0.917233,
		-0.596604, -0.696817, -0.398134,
		0.763246, -0.645974, -0.013136,
		38.707001, 38.638229, 24.231497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474060, 39.276405, 23.932308>,  <38.172729, 39.090408, 24.240692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474060, 39.276405, 23.932308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.315205, 39.617298, 24.068535>,  <37.219891, 39.821835, 24.150270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.315205, 39.617298, 24.068535>,  <37.474060, 39.276405, 23.932308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315205, 39.617298, 24.068535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426368, 0.499933, -0.753842,
		-0.812707, -0.154172, -0.561906,
		-0.397137, 0.852231, 0.340564,
		37.196064, 39.872967, 24.170704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993000, 39.495358, 23.455700>,  <37.474060, 39.276405, 23.932308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993000, 39.495358, 23.455700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110874, 39.821465, 23.655096>,  <37.181599, 40.017128, 23.774734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110874, 39.821465, 23.655096>,  <36.993000, 39.495358, 23.455700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110874, 39.821465, 23.655096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325829, 0.404671, -0.854445,
		-0.898329, 0.414218, -0.146387,
		0.294688, 0.815270, 0.498492,
		37.199280, 40.066044, 23.804644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876438, 40.112049, 22.942530>,  <36.993000, 39.495358, 23.455700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876438, 40.112049, 22.942530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065453, 40.335964, 23.214809>,  <37.178860, 40.470314, 23.378178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065453, 40.335964, 23.214809>,  <36.876438, 40.112049, 22.942530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065453, 40.335964, 23.214809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381252, 0.566523, -0.730547,
		-0.794582, 0.604726, 0.054282,
		0.472533, 0.559784, 0.680701,
		37.207211, 40.503899, 23.419020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839363, 40.790863, 22.648901>,  <36.876438, 40.112049, 22.942530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839363, 40.790863, 22.648901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141804, 40.788269, 22.910667>,  <37.323269, 40.786713, 23.067728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141804, 40.788269, 22.910667>,  <36.839363, 40.790863, 22.648901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141804, 40.788269, 22.910667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460922, 0.715156, -0.525455,
		-0.464601, 0.698935, 0.543724,
		0.756106, -0.006488, 0.654417,
		37.368637, 40.786324, 23.106993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983189, 41.471828, 22.778986>,  <36.839363, 40.790863, 22.648901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983189, 41.471828, 22.778986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306854, 41.253281, 22.865467>,  <37.501053, 41.122154, 22.917356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306854, 41.253281, 22.865467>,  <36.983189, 41.471828, 22.778986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306854, 41.253281, 22.865467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534358, 0.531199, -0.657486,
		0.244381, 0.647542, 0.721780,
		0.809160, -0.546366, 0.216205,
		37.549603, 41.089371, 22.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449856, 41.905956, 22.664841>,  <36.983189, 41.471828, 22.778986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449856, 41.905956, 22.664841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654499, 41.562553, 22.650852>,  <37.777287, 41.356514, 22.642460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654499, 41.562553, 22.650852>,  <37.449856, 41.905956, 22.664841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654499, 41.562553, 22.650852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402418, 0.275377, -0.873056,
		0.759153, 0.432593, 0.486364,
		0.511611, -0.858505, -0.034970,
		37.807983, 41.305000, 22.640362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161762, 42.054291, 22.603704>,  <37.449856, 41.905956, 22.664841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161762, 42.054291, 22.603704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102123, 41.687317, 22.456144>,  <38.066341, 41.467133, 22.367609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102123, 41.687317, 22.456144>,  <38.161762, 42.054291, 22.603704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102123, 41.687317, 22.456144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465429, 0.264047, -0.844781,
		0.872436, -0.297651, 0.387632,
		-0.149097, -0.917433, -0.368900,
		38.057396, 41.412086, 22.345474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778751, 41.855736, 22.405807>,  <38.161762, 42.054291, 22.603704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778751, 41.855736, 22.405807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522606, 41.625053, 22.202890>,  <38.368919, 41.486645, 22.081141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522606, 41.625053, 22.202890>,  <38.778751, 41.855736, 22.405807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522606, 41.625053, 22.202890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447356, 0.256835, -0.856685,
		0.624348, -0.775528, 0.093527,
		-0.640362, -0.576709, -0.507291,
		38.330498, 41.452042, 22.050703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176395, 41.535267, 21.968456>,  <38.778751, 41.855736, 22.405807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176395, 41.535267, 21.968456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817558, 41.441513, 21.818638>,  <38.602257, 41.385262, 21.728746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817558, 41.441513, 21.818638>,  <39.176395, 41.535267, 21.968456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817558, 41.441513, 21.818638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366757, 0.077703, -0.927066,
		0.246393, -0.969033, 0.016255,
		-0.897095, -0.234384, -0.374546,
		38.548431, 41.371197, 21.706274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312027, 41.112740, 21.370607>,  <39.176395, 41.535267, 21.968456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312027, 41.112740, 21.370607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.941231, 41.250061, 21.310163>,  <38.718754, 41.332455, 21.273897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.941231, 41.250061, 21.310163>,  <39.312027, 41.112740, 21.370607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941231, 41.250061, 21.310163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225122, 0.186975, -0.956222,
		-0.300023, -0.920424, -0.250609,
		-0.926988, 0.343307, -0.151111,
		38.663136, 41.353054, 21.264830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004272, 40.633690, 20.879696>,  <39.312027, 41.112740, 21.370607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004272, 40.633690, 20.879696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801441, 40.977428, 20.853212>,  <38.679741, 41.183674, 20.837322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801441, 40.977428, 20.853212>,  <39.004272, 40.633690, 20.879696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801441, 40.977428, 20.853212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115816, -0.008185, -0.993237,
		-0.854081, -0.511320, -0.095376,
		-0.507082, 0.859351, -0.066209,
		38.649315, 41.235233, 20.833349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553143, 40.510738, 20.403612>,  <39.004272, 40.633690, 20.879696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553143, 40.510738, 20.403612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558941, 40.910259, 20.384922>,  <38.562420, 41.149971, 20.373709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558941, 40.910259, 20.384922>,  <38.553143, 40.510738, 20.403612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558941, 40.910259, 20.384922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027665, -0.047113, -0.998506,
		-0.999512, 0.013186, -0.028315,
		0.014501, 0.998803, -0.046725,
		38.563290, 41.209900, 20.370905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994251, 40.629410, 19.998444>,  <38.553143, 40.510738, 20.403612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994251, 40.629410, 19.998444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243935, 40.941261, 19.978237>,  <38.393745, 41.128372, 19.966112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243935, 40.941261, 19.978237>,  <37.994251, 40.629410, 19.998444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243935, 40.941261, 19.978237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023071, -0.046240, -0.998664,
		-0.780919, 0.624538, -0.010876,
		0.624206, 0.779625, -0.050518,
		38.431198, 41.175148, 19.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568611, 40.534191, 20.656487>,  <37.994251, 40.629410, 19.998444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568611, 40.534191, 20.656487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.428276, 40.229176, 20.439064>,  <37.344074, 40.046165, 20.308611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.428276, 40.229176, 20.439064>,  <37.568611, 40.534191, 20.656487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428276, 40.229176, 20.439064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725696, -0.145463, 0.672462,
		-0.591844, 0.630379, -0.502337,
		-0.350834, -0.762537, -0.543555,
		37.323025, 40.000416, 20.275997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855450, 40.611137, 20.784727>,  <37.568611, 40.534191, 20.656487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855450, 40.611137, 20.784727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.885708, 40.249680, 20.616106>,  <36.903862, 40.032806, 20.514935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.885708, 40.249680, 20.616106>,  <36.855450, 40.611137, 20.784727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885708, 40.249680, 20.616106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708546, -0.346177, 0.614918,
		-0.701598, 0.252169, -0.666462,
		0.075650, -0.903644, -0.421550,
		36.908401, 39.978588, 20.489641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243420, 40.377895, 20.970459>,  <36.855450, 40.611137, 20.784727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243420, 40.377895, 20.970459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465073, 40.062771, 20.862917>,  <36.598064, 39.873695, 20.798391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465073, 40.062771, 20.862917>,  <36.243420, 40.377895, 20.970459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465073, 40.062771, 20.862917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611174, -0.604325, 0.511133,
		-0.565153, -0.118921, -0.816370,
		0.554138, -0.787812, -0.268855,
		36.631313, 39.826427, 20.782261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779816, 39.782406, 20.763290>,  <36.243420, 40.377895, 20.970459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779816, 39.782406, 20.763290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129234, 39.618935, 20.869047>,  <36.338886, 39.520851, 20.932501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129234, 39.618935, 20.869047>,  <35.779816, 39.782406, 20.763290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129234, 39.618935, 20.869047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485350, -0.772463, 0.409556,
		0.036855, -0.486087, -0.873133,
		0.873543, -0.408681, 0.264392,
		36.391296, 39.496330, 20.948364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646027, 39.178066, 20.655882>,  <35.779816, 39.782406, 20.763290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646027, 39.178066, 20.655882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964909, 39.172520, 20.897303>,  <36.156239, 39.169193, 21.042156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964909, 39.172520, 20.897303>,  <35.646027, 39.178066, 20.655882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964909, 39.172520, 20.897303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404659, -0.754181, 0.517168,
		0.448019, -0.656520, -0.606845,
		0.797202, -0.013864, 0.603554,
		36.204071, 39.168362, 21.078369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952332, 38.466469, 20.693203>,  <35.646027, 39.178066, 20.655882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952332, 38.466469, 20.693203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.080101, 38.657108, 21.020817>,  <36.156765, 38.771492, 21.217384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.080101, 38.657108, 21.020817>,  <35.952332, 38.466469, 20.693203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080101, 38.657108, 21.020817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236478, -0.796878, 0.555935,
		0.917630, -0.371264, -0.141838,
		0.319426, 0.476601, 0.819035,
		36.175930, 38.800087, 21.266527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318787, 37.977074, 21.135998>,  <35.952332, 38.466469, 20.693203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318787, 37.977074, 21.135998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213146, 38.279224, 21.375885>,  <36.149761, 38.460514, 21.519817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213146, 38.279224, 21.375885>,  <36.318787, 37.977074, 21.135998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213146, 38.279224, 21.375885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140758, -0.645323, 0.750830,
		0.954169, 0.113878, 0.276754,
		-0.264099, 0.755374, 0.599718,
		36.133915, 38.505836, 21.555799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725594, 37.804024, 21.574005>,  <36.318787, 37.977074, 21.135998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725594, 37.804024, 21.574005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.399063, 38.000198, 21.696045>,  <36.203144, 38.117901, 21.769268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.399063, 38.000198, 21.696045>,  <36.725594, 37.804024, 21.574005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399063, 38.000198, 21.696045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311277, -0.818506, 0.482861,
		0.486537, 0.299202, 0.820829,
		-0.816326, 0.490435, 0.305098,
		36.154163, 38.147327, 21.787575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468040, 37.509132, 21.643755>,  <36.725594, 37.804024, 21.574005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468040, 37.509132, 21.643755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.490654, 37.133438, 21.508322>,  <37.504223, 36.908020, 21.427061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.490654, 37.133438, 21.508322>,  <37.468040, 37.509132, 21.643755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490654, 37.133438, 21.508322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346532, 0.336501, -0.875604,
		0.936333, -0.067832, 0.344498,
		0.056530, -0.939237, -0.338583,
		37.507614, 36.851665, 21.406748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177402, 37.389523, 21.440260>,  <37.468040, 37.509132, 21.643755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177402, 37.389523, 21.440260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939240, 37.130978, 21.249386>,  <37.796341, 36.975853, 21.134861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939240, 37.130978, 21.249386>,  <38.177402, 37.389523, 21.440260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939240, 37.130978, 21.249386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433679, 0.241414, -0.868125,
		0.676321, -0.723836, 0.136573,
		-0.595409, -0.646360, -0.477186,
		37.760616, 36.937069, 21.106230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535225, 37.263664, 20.902161>,  <38.177402, 37.389523, 21.440260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535225, 37.263664, 20.902161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.199047, 37.095310, 20.765625>,  <37.997341, 36.994297, 20.683702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.199047, 37.095310, 20.765625>,  <38.535225, 37.263664, 20.902161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199047, 37.095310, 20.765625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338341, 0.084478, -0.937224,
		0.423297, -0.903173, 0.071403,
		-0.840443, -0.420883, -0.341340,
		37.946915, 36.969044, 20.663223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707233, 36.665840, 20.332775>,  <38.535225, 37.263664, 20.902161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707233, 36.665840, 20.332775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.340530, 36.808262, 20.260359>,  <38.120510, 36.893715, 20.216909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.340530, 36.808262, 20.260359>,  <38.707233, 36.665840, 20.332775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340530, 36.808262, 20.260359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253568, 0.168555, -0.952519,
		-0.308636, -0.919137, -0.244809,
		-0.916759, 0.356057, -0.181042,
		38.065502, 36.915077, 20.206047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541451, 36.400543, 19.713409>,  <38.707233, 36.665840, 20.332775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541451, 36.400543, 19.713409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270412, 36.693314, 19.742086>,  <38.107788, 36.868977, 19.759293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270412, 36.693314, 19.742086>,  <38.541451, 36.400543, 19.713409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270412, 36.693314, 19.742086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035035, 0.129497, -0.990961,
		-0.734597, -0.668961, -0.113391,
		-0.677598, 0.731930, 0.071691,
		38.067131, 36.912891, 19.763594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046070, 36.244686, 19.221180>,  <38.541451, 36.400543, 19.713409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046070, 36.244686, 19.221180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.036018, 36.637516, 19.295904>,  <38.029987, 36.873215, 19.340738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.036018, 36.637516, 19.295904>,  <38.046070, 36.244686, 19.221180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036018, 36.637516, 19.295904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155779, 0.188433, -0.969652,
		-0.987472, 0.004735, -0.157721,
		-0.025128, 0.982074, 0.186810,
		38.028481, 36.932137, 19.351948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649532, 36.507591, 18.686249>,  <38.046070, 36.244686, 19.221180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649532, 36.507591, 18.686249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827465, 36.837067, 18.826912>,  <37.934223, 37.034752, 18.911310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.827465, 36.837067, 18.826912>,  <37.649532, 36.507591, 18.686249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827465, 36.837067, 18.826912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097447, 0.434825, -0.895227,
		-0.890298, 0.363955, 0.273689,
		0.444830, 0.823689, 0.351658,
		37.960915, 37.084175, 18.932409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234047, 37.098713, 18.515671>,  <37.649532, 36.507591, 18.686249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234047, 37.098713, 18.515671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606373, 37.234032, 18.571026>,  <37.829769, 37.315224, 18.604239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606373, 37.234032, 18.571026>,  <37.234047, 37.098713, 18.515671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606373, 37.234032, 18.571026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109658, 0.619647, -0.777183,
		-0.348665, 0.708234, 0.613870,
		0.930810, 0.338293, 0.138385,
		37.885616, 37.335518, 18.612541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196983, 37.765518, 18.273550>,  <37.234047, 37.098713, 18.515671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196983, 37.765518, 18.273550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581043, 37.654072, 18.282372>,  <37.811478, 37.587204, 18.287664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581043, 37.654072, 18.282372>,  <37.196983, 37.765518, 18.273550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581043, 37.654072, 18.282372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143434, 0.423491, -0.894473,
		0.239874, 0.861991, 0.446577,
		0.960150, -0.278615, 0.022054,
		37.869087, 37.570488, 18.288988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.868446, 32.419373, 33.878933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214764, 32.540676, 33.719719>,  <36.422554, 32.613461, 33.624191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214764, 32.540676, 33.719719>,  <35.868446, 32.419373, 33.878933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214764, 32.540676, 33.719719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396015, -0.071009, -0.915494,
		-0.305899, 0.950258, 0.058617,
		0.865793, 0.303262, -0.398037,
		36.474503, 32.631657, 33.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733803, 32.867672, 33.354790>,  <35.868446, 32.419373, 33.878933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733803, 32.867672, 33.354790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101177, 32.726704, 33.282925>,  <36.321602, 32.642120, 33.239803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101177, 32.726704, 33.282925>,  <35.733803, 32.867672, 33.354790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101177, 32.726704, 33.282925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165453, 0.070314, -0.983708,
		0.359315, 0.933195, 0.006269,
		0.918432, -0.352424, -0.179665,
		36.376705, 32.620975, 33.229027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043251, 33.281643, 32.844616>,  <35.733803, 32.867672, 33.354790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043251, 33.281643, 32.844616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233536, 32.930645, 32.820251>,  <36.347706, 32.720047, 32.805634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233536, 32.930645, 32.820251>,  <36.043251, 33.281643, 32.844616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233536, 32.930645, 32.820251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057461, 0.038099, -0.997620,
		0.877724, 0.478076, -0.032297,
		0.475708, -0.877492, -0.060911,
		36.376247, 32.667397, 32.801979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515644, 33.410950, 32.324982>,  <36.043251, 33.281643, 32.844616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515644, 33.410950, 32.324982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520054, 33.011681, 32.348713>,  <36.522701, 32.772118, 32.362953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520054, 33.011681, 32.348713>,  <36.515644, 33.410950, 32.324982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520054, 33.011681, 32.348713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100377, -0.060141, -0.993130,
		0.994889, 0.004993, -0.100857,
		0.011024, -0.998177, 0.059332,
		36.523361, 32.712227, 32.366512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117283, 33.147629, 31.989073>,  <36.515644, 33.410950, 32.324982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117283, 33.147629, 31.989073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856670, 32.844406, 31.977314>,  <36.700302, 32.662472, 31.970259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856670, 32.844406, 31.977314>,  <37.117283, 33.147629, 31.989073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856670, 32.844406, 31.977314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072900, -0.023993, -0.997051,
		0.755111, -0.651752, 0.070894,
		-0.651531, -0.758052, -0.029395,
		36.661209, 32.616989, 31.968496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333389, 32.665085, 31.526947>,  <37.117283, 33.147629, 31.989073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333389, 32.665085, 31.526947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947453, 32.560448, 31.537132>,  <36.715889, 32.497665, 31.543243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947453, 32.560448, 31.537132>,  <37.333389, 32.665085, 31.526947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947453, 32.560448, 31.537132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017657, -0.032141, -0.999327,
		0.262233, -0.964643, 0.026392,
		-0.964843, -0.261591, 0.025461,
		36.658001, 32.481972, 31.544771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294289, 32.057087, 31.194372>,  <37.333389, 32.665085, 31.526947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294289, 32.057087, 31.194372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924667, 32.209850, 31.187714>,  <36.702896, 32.301510, 31.183718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924667, 32.209850, 31.187714>,  <37.294289, 32.057087, 31.194372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924667, 32.209850, 31.187714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008729, -0.022460, -0.999710,
		-0.382171, -0.923928, 0.017421,
		-0.924051, 0.381908, -0.016648,
		36.647453, 32.324421, 31.182718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989746, 31.676899, 30.607132>,  <37.294289, 32.057087, 31.194372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989746, 31.676899, 30.607132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731125, 31.976954, 30.662655>,  <36.575954, 32.156986, 30.695969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731125, 31.976954, 30.662655>,  <36.989746, 31.676899, 30.607132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731125, 31.976954, 30.662655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216375, -0.005840, -0.976293,
		-0.731542, -0.661257, 0.166086,
		-0.646550, 0.750136, 0.138808,
		36.537159, 32.201996, 30.704298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440147, 31.662504, 30.098459>,  <36.989746, 31.676899, 30.607132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440147, 31.662504, 30.098459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415325, 32.045155, 30.212313>,  <36.400433, 32.274746, 30.280624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415325, 32.045155, 30.212313>,  <36.440147, 31.662504, 30.098459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415325, 32.045155, 30.212313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324619, 0.250332, -0.912117,
		-0.943807, -0.148999, 0.295004,
		-0.062056, 0.956626, 0.284633,
		36.396709, 32.332142, 30.297703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754742, 31.924643, 29.849384>,  <36.440147, 31.662504, 30.098459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754742, 31.924643, 29.849384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995518, 32.241070, 29.892982>,  <36.139984, 32.430927, 29.919142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995518, 32.241070, 29.892982>,  <35.754742, 31.924643, 29.849384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995518, 32.241070, 29.892982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230227, 0.302620, -0.924888,
		-0.764633, 0.531633, 0.364284,
		0.601940, 0.791068, 0.108997,
		36.176098, 32.478390, 29.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338264, 32.548714, 29.567436>,  <35.754742, 31.924643, 29.849384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338264, 32.548714, 29.567436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722775, 32.658340, 29.579018>,  <35.953480, 32.724117, 29.585966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722775, 32.658340, 29.579018>,  <35.338264, 32.548714, 29.567436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722775, 32.658340, 29.579018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095561, 0.430022, -0.897747,
		-0.258493, 0.860214, 0.439559,
		0.961275, 0.274066, 0.028955,
		36.011158, 32.740559, 29.587704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402542, 33.295139, 29.544605>,  <35.338264, 32.548714, 29.567436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402542, 33.295139, 29.544605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731773, 33.135178, 29.383305>,  <35.929314, 33.039200, 29.286524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731773, 33.135178, 29.383305>,  <35.402542, 33.295139, 29.544605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731773, 33.135178, 29.383305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011945, 0.722077, -0.691709,
		0.567798, 0.564516, 0.599105,
		0.823081, -0.399907, -0.403251,
		35.978699, 33.015205, 29.262329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158401, 34.014389, 29.355734>,  <35.402542, 33.295139, 29.544605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158401, 34.014389, 29.355734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778698, 34.013916, 29.229940>,  <34.550877, 34.013630, 29.154465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778698, 34.013916, 29.229940>,  <35.158401, 34.014389, 29.355734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778698, 34.013916, 29.229940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311704, -0.129171, 0.941358,
		-0.041739, 0.991622, 0.122247,
		-0.949262, -0.001186, -0.314484,
		34.493919, 34.013561, 29.135595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906132, 34.538525, 29.841652>,  <35.158401, 34.014389, 29.355734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906132, 34.538525, 29.841652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629494, 34.288654, 29.696615>,  <34.463512, 34.138733, 29.609592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629494, 34.288654, 29.696615>,  <34.906132, 34.538525, 29.841652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629494, 34.288654, 29.696615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411790, -0.071419, 0.908476,
		-0.593402, 0.777609, -0.207843,
		-0.691595, -0.624679, -0.362592,
		34.422016, 34.101250, 29.587837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230068, 34.749065, 30.139299>,  <34.906132, 34.538525, 29.841652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230068, 34.749065, 30.139299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179310, 34.370636, 30.020073>,  <34.148857, 34.143578, 29.948538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179310, 34.370636, 30.020073>,  <34.230068, 34.749065, 30.139299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179310, 34.370636, 30.020073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525765, -0.190658, 0.828988,
		-0.841112, 0.261904, -0.473220,
		-0.126892, -0.946074, -0.298065,
		34.141243, 34.086815, 29.930653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524303, 34.578529, 30.325836>,  <34.230068, 34.749065, 30.139299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524303, 34.578529, 30.325836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653950, 34.207287, 30.252556>,  <33.731735, 33.984539, 30.208588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653950, 34.207287, 30.252556>,  <33.524303, 34.578529, 30.325836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653950, 34.207287, 30.252556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417434, -0.314089, 0.852700,
		-0.848941, -0.199896, -0.489225,
		0.324111, -0.928111, -0.183199,
		33.751183, 33.928852, 30.197596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958935, 34.169235, 30.316191>,  <33.524303, 34.578529, 30.325836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958935, 34.169235, 30.316191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283344, 33.954403, 30.408966>,  <33.477989, 33.825504, 30.464630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283344, 33.954403, 30.408966>,  <32.958935, 34.169235, 30.316191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283344, 33.954403, 30.408966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372151, -0.167739, 0.912890,
		-0.451388, -0.826687, -0.335914,
		0.811020, -0.537077, 0.231937,
		33.526649, 33.793282, 30.478548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739498, 33.775299, 30.806746>,  <32.958935, 34.169235, 30.316191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739498, 33.775299, 30.806746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129086, 33.706608, 30.865929>,  <33.362839, 33.665394, 30.901438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129086, 33.706608, 30.865929>,  <32.739498, 33.775299, 30.806746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129086, 33.706608, 30.865929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173646, -0.145697, 0.973971,
		-0.145697, -0.974312, -0.171724,
		-0.973971, 0.171724, -0.147958,
		33.421276, 33.655090, 30.910316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753277, 33.202393, 31.226250>,  <32.739498, 33.775299, 30.806746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753277, 33.202393, 31.226250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118000, 33.362152, 31.264387>,  <33.336834, 33.458008, 31.287270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118000, 33.362152, 31.264387>,  <32.753277, 33.202393, 31.226250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118000, 33.362152, 31.264387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004779, -0.221851, 0.975069,
		0.410595, -0.889529, -0.200376,
		0.911805, 0.399401, 0.095342,
		33.391541, 33.481972, 31.292990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072666, 32.753052, 31.695799>,  <32.753277, 33.202393, 31.226250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072666, 32.753052, 31.695799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263237, 33.104691, 31.701614>,  <33.377579, 33.315674, 31.705103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263237, 33.104691, 31.701614>,  <33.072666, 32.753052, 31.695799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263237, 33.104691, 31.701614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213707, 0.099749, 0.971792,
		0.852848, -0.466092, 0.235392,
		0.476424, 0.879095, 0.014537,
		33.406166, 33.368420, 31.705975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538605, 32.756329, 32.216793>,  <33.072666, 32.753052, 31.695799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538605, 32.756329, 32.216793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450981, 33.141407, 32.153252>,  <33.398407, 33.372452, 32.115128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.450981, 33.141407, 32.153252>,  <33.538605, 32.756329, 32.216793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450981, 33.141407, 32.153252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079321, 0.179836, 0.980493,
		0.972481, 0.202190, -0.115757,
		-0.219063, 0.962693, -0.158849,
		33.385262, 33.430214, 32.105598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048420, 33.164291, 32.630772>,  <33.538605, 32.756329, 32.216793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048420, 33.164291, 32.630772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752388, 33.421753, 32.552811>,  <33.574768, 33.576229, 32.506035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752388, 33.421753, 32.552811>,  <34.048420, 33.164291, 32.630772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752388, 33.421753, 32.552811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049367, 0.341027, 0.938756,
		0.670706, 0.685132, -0.284162,
		-0.740079, 0.643658, -0.194906,
		33.530365, 33.614849, 32.494339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106853, 33.716824, 33.078693>,  <34.048420, 33.164291, 32.630772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106853, 33.716824, 33.078693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734196, 33.809837, 32.967003>,  <33.510601, 33.865646, 32.899986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734196, 33.809837, 32.967003>,  <34.106853, 33.716824, 33.078693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734196, 33.809837, 32.967003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173254, 0.391210, 0.903846,
		0.319410, 0.890440, -0.324182,
		-0.931644, 0.232532, -0.279229,
		33.454704, 33.879597, 32.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071129, 34.409916, 33.401169>,  <34.106853, 33.716824, 33.078693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071129, 34.409916, 33.401169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702419, 34.283401, 33.311455>,  <33.481194, 34.207493, 33.257626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702419, 34.283401, 33.311455>,  <34.071129, 34.409916, 33.401169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702419, 34.283401, 33.311455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307279, 0.243092, 0.920047,
		-0.236473, 0.916990, -0.321262,
		-0.921770, -0.316284, -0.224287,
		33.425888, 34.188515, 33.244167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723656, 35.046825, 33.600750>,  <34.071129, 34.409916, 33.401169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723656, 35.046825, 33.600750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454502, 34.751312, 33.585655>,  <33.293011, 34.574005, 33.576599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454502, 34.751312, 33.585655>,  <33.723656, 35.046825, 33.600750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454502, 34.751312, 33.585655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421312, 0.340797, 0.840448,
		-0.608050, 0.581423, -0.540576,
		-0.672883, -0.738786, -0.037739,
		33.252636, 34.529678, 33.574333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240616, 35.464832, 33.756691>,  <33.723656, 35.046825, 33.600750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240616, 35.464832, 33.756691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102768, 35.093155, 33.810097>,  <33.020058, 34.870148, 33.842140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102768, 35.093155, 33.810097>,  <33.240616, 35.464832, 33.756691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102768, 35.093155, 33.810097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511642, 0.305169, 0.803177,
		-0.787057, 0.208478, -0.580585,
		-0.344621, -0.929198, 0.133519,
		32.999382, 34.814396, 33.850151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582954, 35.585587, 33.945484>,  <33.240616, 35.464832, 33.756691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582954, 35.585587, 33.945484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676418, 35.213509, 34.058720>,  <32.732494, 34.990261, 34.126663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676418, 35.213509, 34.058720>,  <32.582954, 35.585587, 33.945484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676418, 35.213509, 34.058720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527407, 0.123346, 0.840611,
		-0.816851, -0.345719, -0.461771,
		0.233658, -0.930196, 0.283090,
		32.746517, 34.934448, 34.143646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685371, 36.164745, 33.386890>,  <32.582954, 35.585587, 33.945484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685371, 36.164745, 33.386890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055443, 36.018230, 33.347115>,  <33.277485, 35.930321, 33.323250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055443, 36.018230, 33.347115>,  <32.685371, 36.164745, 33.386890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055443, 36.018230, 33.347115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121969, 0.535022, -0.835987,
		0.359408, 0.761307, 0.539665,
		0.925175, -0.366283, -0.099435,
		33.332996, 35.908344, 33.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152241, 36.734272, 33.487762>,  <32.685371, 36.164745, 33.386890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152241, 36.734272, 33.487762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310177, 36.450466, 33.254284>,  <33.404938, 36.280182, 33.114197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310177, 36.450466, 33.254284>,  <33.152241, 36.734272, 33.487762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310177, 36.450466, 33.254284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195947, 0.685725, -0.700989,
		0.897613, 0.162402, 0.409775,
		0.394836, -0.709511, -0.583694,
		33.428627, 36.237614, 33.079174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672092, 37.076813, 33.101746>,  <33.152241, 36.734272, 33.487762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672092, 37.076813, 33.101746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657742, 36.733070, 32.897701>,  <33.649132, 36.526825, 32.775276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657742, 36.733070, 32.897701>,  <33.672092, 37.076813, 33.101746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657742, 36.733070, 32.897701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323661, 0.472935, -0.819497,
		0.945493, -0.194503, 0.261175,
		-0.035876, -0.859361, -0.510110,
		33.646980, 36.475262, 32.744667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284813, 37.092079, 32.731541>,  <33.672092, 37.076813, 33.101746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284813, 37.092079, 32.731541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064232, 36.823975, 32.532883>,  <33.931885, 36.663113, 32.413689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064232, 36.823975, 32.532883>,  <34.284813, 37.092079, 32.731541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064232, 36.823975, 32.532883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524265, 0.184629, -0.831299,
		0.648880, -0.718794, 0.249579,
		-0.551453, -0.670259, -0.496641,
		33.898796, 36.622898, 32.383892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793037, 36.776340, 32.324955>,  <34.284813, 37.092079, 32.731541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793037, 36.776340, 32.324955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430305, 36.696918, 32.176231>,  <34.212666, 36.649265, 32.086998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430305, 36.696918, 32.176231>,  <34.793037, 36.776340, 32.324955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430305, 36.696918, 32.176231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337403, 0.186782, -0.922644,
		0.252641, -0.962128, -0.102387,
		-0.906825, -0.198552, -0.371813,
		34.158257, 36.637352, 32.064686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883183, 36.322491, 31.674034>,  <34.793037, 36.776340, 32.324955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883183, 36.322491, 31.674034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527119, 36.503155, 31.649969>,  <34.313480, 36.611553, 31.635530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527119, 36.503155, 31.649969>,  <34.883183, 36.322491, 31.674034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527119, 36.503155, 31.649969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160693, 0.187633, -0.969006,
		-0.426373, -0.872237, -0.239602,
		-0.890160, 0.451660, -0.060160,
		34.260071, 36.638653, 31.631922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625011, 36.069355, 30.979544>,  <34.883183, 36.322491, 31.674034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625011, 36.069355, 30.979544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421703, 36.387848, 31.110796>,  <34.299721, 36.578945, 31.189548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421703, 36.387848, 31.110796>,  <34.625011, 36.069355, 30.979544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421703, 36.387848, 31.110796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000093, 0.381069, -0.924546,
		-0.861199, -0.469887, -0.193759,
		-0.508267, 0.796236, 0.328133,
		34.269222, 36.626720, 31.209236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132912, 36.206890, 30.460114>,  <34.625011, 36.069355, 30.979544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132912, 36.206890, 30.460114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193954, 36.553406, 30.650381>,  <34.230579, 36.761314, 30.764542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193954, 36.553406, 30.650381>,  <34.132912, 36.206890, 30.460114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193954, 36.553406, 30.650381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013197, 0.483048, -0.875494,
		-0.988199, 0.127328, 0.085148,
		0.152606, 0.866286, 0.475667,
		34.239735, 36.813293, 30.793081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681160, 36.755047, 30.161869>,  <34.132912, 36.206890, 30.460114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681160, 36.755047, 30.161869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990700, 36.941799, 30.333069>,  <34.176422, 37.053852, 30.435789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990700, 36.941799, 30.333069>,  <33.681160, 36.755047, 30.161869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990700, 36.941799, 30.333069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144608, 0.527659, -0.837057,
		-0.616645, 0.709646, 0.340812,
		0.773846, 0.466883, 0.427999,
		34.222855, 37.081863, 30.461468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600365, 37.440113, 29.910788>,  <33.681160, 36.755047, 30.161869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600365, 37.440113, 29.910788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964951, 37.479748, 30.070498>,  <34.183701, 37.503529, 30.166325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964951, 37.479748, 30.070498>,  <33.600365, 37.440113, 29.910788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964951, 37.479748, 30.070498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283017, 0.553358, -0.783388,
		-0.298565, 0.827029, 0.476322,
		0.911461, 0.099085, 0.399277,
		34.238388, 37.509472, 30.190281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663624, 38.144043, 30.050169>,  <33.600365, 37.440113, 29.910788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663624, 38.144043, 30.050169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020103, 37.967094, 30.010029>,  <34.233994, 37.860928, 29.985945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020103, 37.967094, 30.010029>,  <33.663624, 38.144043, 30.050169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020103, 37.967094, 30.010029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211963, 0.601712, -0.770074,
		0.401039, 0.665020, 0.630012,
		0.891201, -0.442369, -0.100350,
		34.287464, 37.834385, 29.979923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005192, 38.600101, 29.630295>,  <33.663624, 38.144043, 30.050169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005192, 38.600101, 29.630295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254791, 38.287640, 29.622162>,  <34.404552, 38.100163, 29.617283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254791, 38.287640, 29.622162>,  <34.005192, 38.600101, 29.630295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254791, 38.287640, 29.622162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382927, 0.328363, -0.863449,
		0.681166, 0.531009, 0.504026,
		0.624003, -0.781157, -0.020332,
		34.441994, 38.053291, 29.616062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735497, 38.854931, 29.512085>,  <34.005192, 38.600101, 29.630295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735497, 38.854931, 29.512085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671619, 38.476032, 29.400932>,  <34.633293, 38.248692, 29.334240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671619, 38.476032, 29.400932>,  <34.735497, 38.854931, 29.512085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671619, 38.476032, 29.400932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398801, 0.195600, -0.895934,
		0.903027, -0.253891, 0.346529,
		-0.159689, -0.947249, -0.277884,
		34.623714, 38.191856, 29.317568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412903, 38.640766, 29.188534>,  <34.735497, 38.854931, 29.512085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412903, 38.640766, 29.188534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114910, 38.401676, 29.070061>,  <34.936115, 38.258224, 28.998976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114910, 38.401676, 29.070061>,  <35.412903, 38.640766, 29.188534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114910, 38.401676, 29.070061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466706, -0.149773, -0.871639,
		0.476638, -0.787588, 0.390540,
		-0.744985, -0.597723, -0.296185,
		34.891415, 38.222359, 28.981205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785496, 38.132305, 28.895245>,  <35.412903, 38.640766, 29.188534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785496, 38.132305, 28.895245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413376, 38.139660, 28.748711>,  <35.190105, 38.144073, 28.660789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413376, 38.139660, 28.748711>,  <35.785496, 38.132305, 28.895245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413376, 38.139660, 28.748711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365086, -0.049956, -0.929633,
		-0.035380, -0.998583, 0.039767,
		-0.930301, 0.018372, -0.366335,
		35.134285, 38.145176, 28.638809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759544, 37.636417, 28.316355>,  <35.785496, 38.132305, 28.895245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759544, 37.636417, 28.316355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445808, 37.876778, 28.254749>,  <35.257565, 38.020996, 28.217787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445808, 37.876778, 28.254749>,  <35.759544, 37.636417, 28.316355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445808, 37.876778, 28.254749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275521, 0.115017, -0.954389,
		-0.555783, -0.791003, -0.255775,
		-0.784343, 0.600904, -0.154014,
		35.210506, 38.057049, 28.208546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757843, 37.535126, 27.577948>,  <35.759544, 37.636417, 28.316355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757843, 37.535126, 27.577948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514553, 37.829266, 27.697496>,  <35.368580, 38.005749, 27.769226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514553, 37.829266, 27.697496>,  <35.757843, 37.535126, 27.577948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514553, 37.829266, 27.697496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107083, 0.297070, -0.948832,
		-0.786510, -0.609107, -0.101941,
		-0.608224, 0.735349, 0.298873,
		35.332085, 38.049870, 27.787159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374744, 37.552322, 27.018324>,  <35.757843, 37.535126, 27.577948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374744, 37.552322, 27.018324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318703, 37.905888, 27.196795>,  <35.285080, 38.118027, 27.303877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318703, 37.905888, 27.196795>,  <35.374744, 37.552322, 27.018324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318703, 37.905888, 27.196795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041959, 0.455516, -0.889238,
		-0.989248, -0.105862, -0.100906,
		-0.140101, 0.883911, 0.446177,
		35.276672, 38.171062, 27.330647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945526, 37.890621, 26.568169>,  <35.374744, 37.552322, 27.018324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945526, 37.890621, 26.568169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129501, 38.168831, 26.788969>,  <35.239887, 38.335758, 26.921450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129501, 38.168831, 26.788969>,  <34.945526, 37.890621, 26.568169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129501, 38.168831, 26.788969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250226, 0.494939, -0.832119,
		-0.851966, 0.520846, 0.053601,
		0.459935, 0.695525, 0.552001,
		35.267483, 38.377487, 26.954569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882294, 38.422279, 26.123871>,  <34.945526, 37.890621, 26.568169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882294, 38.422279, 26.123871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165627, 38.541237, 26.379940>,  <35.335629, 38.612610, 26.533581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165627, 38.541237, 26.379940>,  <34.882294, 38.422279, 26.123871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165627, 38.541237, 26.379940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416887, 0.555605, -0.719380,
		-0.569621, 0.776441, 0.269576,
		0.708334, 0.297391, 0.640173,
		35.378128, 38.630455, 26.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922268, 39.171070, 26.167725>,  <34.882294, 38.422279, 26.123871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922268, 39.171070, 26.167725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296333, 39.072094, 26.269112>,  <35.520771, 39.012707, 26.329943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296333, 39.072094, 26.269112>,  <34.922268, 39.171070, 26.167725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296333, 39.072094, 26.269112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353711, 0.690722, -0.630707,
		-0.019010, 0.679467, 0.733460,
		0.935162, -0.247443, 0.253466,
		35.576881, 38.997860, 26.345152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291035, 39.791134, 26.116409>,  <34.922268, 39.171070, 26.167725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291035, 39.791134, 26.116409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587227, 39.523773, 26.144501>,  <35.764942, 39.363358, 26.161356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587227, 39.523773, 26.144501>,  <35.291035, 39.791134, 26.116409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587227, 39.523773, 26.144501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591836, 0.598983, -0.539397,
		0.318465, 0.440978, 0.839118,
		0.740480, -0.668399, 0.070231,
		35.809372, 39.323254, 26.165569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808712, 40.183208, 26.095758>,  <35.291035, 39.791134, 26.116409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808712, 40.183208, 26.095758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984360, 39.837055, 25.999191>,  <36.089748, 39.629364, 25.941252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984360, 39.837055, 25.999191>,  <35.808712, 40.183208, 26.095758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984360, 39.837055, 25.999191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470194, 0.450337, -0.759022,
		0.765564, 0.219790, 0.604652,
		0.439122, -0.865384, -0.241418,
		36.116096, 39.577438, 25.926765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593067, 40.275261, 26.073225>,  <35.808712, 40.183208, 26.095758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593067, 40.275261, 26.073225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481789, 39.966843, 25.844107>,  <36.415020, 39.781792, 25.706636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481789, 39.966843, 25.844107>,  <36.593067, 40.275261, 26.073225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481789, 39.966843, 25.844107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628664, 0.304702, -0.715498,
		0.726214, -0.559145, 0.399962,
		-0.278198, -0.771047, -0.572793,
		36.398331, 39.735527, 25.672268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254608, 40.039154, 25.859266>,  <36.593067, 40.275261, 26.073225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254608, 40.039154, 25.859266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970367, 39.916500, 25.605961>,  <36.799824, 39.842907, 25.453978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970367, 39.916500, 25.605961>,  <37.254608, 40.039154, 25.859266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970367, 39.916500, 25.605961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583080, 0.247089, -0.773928,
		0.393784, -0.919197, 0.003210,
		-0.710600, -0.306632, -0.633265,
		36.757187, 39.824509, 25.415981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559235, 39.746952, 25.246426>,  <37.254608, 40.039154, 25.859266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559235, 39.746952, 25.246426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187969, 39.797527, 25.106409>,  <36.965210, 39.827873, 25.022398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187969, 39.797527, 25.106409>,  <37.559235, 39.746952, 25.246426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187969, 39.797527, 25.106409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370148, 0.215496, -0.903632,
		-0.038820, -0.968285, -0.246816,
		-0.928161, 0.126437, -0.350044,
		36.909519, 39.835457, 25.001396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579243, 39.347191, 24.664825>,  <37.559235, 39.746952, 25.246426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579243, 39.347191, 24.664825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281666, 39.613808, 24.645788>,  <37.103119, 39.773777, 24.634365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281666, 39.613808, 24.645788>,  <37.579243, 39.347191, 24.664825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281666, 39.613808, 24.645788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304640, 0.274899, -0.911935,
		-0.594760, -0.692929, -0.407566,
		-0.743945, 0.666543, -0.047595,
		37.058483, 39.813770, 24.631510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888229, 38.626705, 24.691730>,  <37.579243, 39.347191, 24.664825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888229, 38.626705, 24.691730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278107, 38.537411, 24.696587>,  <38.512032, 38.483833, 24.699501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278107, 38.537411, 24.696587>,  <37.888229, 38.626705, 24.691730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278107, 38.537411, 24.696587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038449, -0.113886, 0.992750,
		-0.220231, -0.968090, -0.119587,
		0.974690, -0.223232, 0.012141,
		38.570515, 38.470440, 24.700230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055122, 37.997463, 25.067633>,  <37.888229, 38.626705, 24.691730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055122, 37.997463, 25.067633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400375, 38.196484, 25.102154>,  <38.607529, 38.315895, 25.122866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400375, 38.196484, 25.102154>,  <38.055122, 37.997463, 25.067633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400375, 38.196484, 25.102154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034886, -0.229245, 0.972743,
		0.503773, -0.836594, -0.215226,
		0.863131, 0.497550, 0.086302,
		38.659313, 38.345749, 25.128044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475258, 37.515182, 25.533493>,  <38.055122, 37.997463, 25.067633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475258, 37.515182, 25.533493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.640675, 37.878845, 25.553137>,  <38.739925, 38.097042, 25.564924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.640675, 37.878845, 25.553137>,  <38.475258, 37.515182, 25.533493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640675, 37.878845, 25.553137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269479, -0.173742, 0.947204,
		0.869691, -0.378476, -0.316849,
		0.413544, 0.909159, 0.049111,
		38.764736, 38.151592, 25.567869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076889, 37.326607, 25.940125>,  <38.475258, 37.515182, 25.533493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076889, 37.326607, 25.940125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031971, 37.723701, 25.957424>,  <39.005020, 37.961956, 25.967804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031971, 37.723701, 25.957424>,  <39.076889, 37.326607, 25.940125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031971, 37.723701, 25.957424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100124, -0.031998, 0.994460,
		0.988618, 0.116002, -0.095804,
		-0.112294, 0.992733, 0.043248,
		38.998283, 38.021523, 25.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628536, 37.638889, 26.350613>,  <39.076889, 37.326607, 25.940125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628536, 37.638889, 26.350613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323112, 37.896919, 26.362299>,  <39.139858, 38.051739, 26.369310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323112, 37.896919, 26.362299>,  <39.628536, 37.638889, 26.350613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323112, 37.896919, 26.362299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043825, -0.096906, 0.994328,
		0.644247, 0.757950, 0.102264,
		-0.763561, 0.645075, 0.029214,
		39.094044, 38.090443, 26.371063>
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
