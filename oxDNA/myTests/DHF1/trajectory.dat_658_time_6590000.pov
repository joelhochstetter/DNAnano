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
	<1.552040, 2.349026, 3.639566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.797726, 2.657246, 3.571451>,  <1.945137, 2.842177, 3.530582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.797726, 2.657246, 3.571451>,  <1.552040, 2.349026, 3.639566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.797726, 2.657246, 3.571451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517318, -0.556112, -0.650478,
		-0.595923, 0.311440, -0.740189,
		0.614213, 0.770548, -0.170287,
		1.981990, 2.888410, 3.520365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.002264, 2.566582, 4.088820>,  <1.552040, 2.349026, 3.639566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.002264, 2.566582, 4.088820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.781162, 2.236042, 4.045723>,  <0.648501, 2.037718, 4.019865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.781162, 2.236042, 4.045723>,  <1.002264, 2.566582, 4.088820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.781162, 2.236042, 4.045723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062394, -0.169963, 0.983473,
		-0.831005, 0.536897, 0.145507,
		-0.552754, -0.826350, -0.107741,
		0.615336, 1.988137, 4.013401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.393465, 2.536645, 4.507097>,  <1.002264, 2.566582, 4.088820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.393465, 2.536645, 4.507097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.490879, 2.153477, 4.446333>,  <0.549328, 1.923576, 4.409874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.490879, 2.153477, 4.446333>,  <0.393465, 2.536645, 4.507097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.490879, 2.153477, 4.446333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127579, -0.123626, 0.984094,
		-0.961465, -0.259042, 0.092104,
		0.243535, -0.957922, -0.151910,
		0.563940, 1.866100, 4.400760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.002374, 2.093881, 4.897117>,  <0.393465, 2.536645, 4.507097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.002374, 2.093881, 4.897117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344669, 1.901844, 4.845320>,  <0.552895, 1.786622, 4.814242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344669, 1.901844, 4.845320>,  <-0.002374, 2.093881, 4.897117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.344669, 1.901844, 4.845320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057164, -0.162390, 0.985069,
		-0.493953, -0.862056, -0.113447,
		0.867608, -0.480092, -0.129492,
		0.604952, 1.757816, 4.806472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.053335, 1.428111, 5.304502>,  <-0.002374, 2.093881, 4.897117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.053335, 1.428111, 5.304502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.432293, 1.543552, 5.249149>,  <0.659668, 1.612817, 5.215938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.432293, 1.543552, 5.249149>,  <0.053335, 1.428111, 5.304502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.432293, 1.543552, 5.249149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175369, -0.106390, 0.978737,
		0.267744, -0.951520, -0.151405,
		0.947396, 0.288603, -0.138382,
		0.716512, 1.630133, 5.207635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.461241, 0.894407, 5.480544>,  <0.053335, 1.428111, 5.304502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.461241, 0.894407, 5.480544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.648331, 1.243856, 5.534235>,  <0.760585, 1.453526, 5.566450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.648331, 1.243856, 5.534235>,  <0.461241, 0.894407, 5.480544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.648331, 1.243856, 5.534235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221840, -0.263033, 0.938936,
		0.855582, -0.409386, -0.316832,
		0.467724, 0.873623, 0.134228,
		0.788648, 1.505943, 5.574503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.018884, 0.653267, 5.781991>,  <0.461241, 0.894407, 5.480544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.018884, 0.653267, 5.781991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.006454, 1.046202, 5.855803>,  <0.998996, 1.281962, 5.900089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.006454, 1.046202, 5.855803>,  <1.018884, 0.653267, 5.781991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.006454, 1.046202, 5.855803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196478, -0.175013, 0.964763,
		0.980016, 0.066236, -0.187569,
		-0.031075, 0.982336, 0.184529,
		0.997132, 1.340902, 5.911161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.760275, 0.933389, 6.015773>,  <1.018884, 0.653267, 5.781991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.760275, 0.933389, 6.015773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.475750, 1.175095, 6.159382>,  <1.305035, 1.320118, 6.245547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.475750, 1.175095, 6.159382>,  <1.760275, 0.933389, 6.015773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.475750, 1.175095, 6.159382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362679, -0.122000, 0.923894,
		0.602077, 0.787389, -0.132373,
		-0.711314, 0.604264, 0.359023,
		1.262356, 1.356374, 6.267089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.654084, 0.804050, 2.420239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.639854, 1.203264, 2.440870>,  <0.631317, 1.442792, 2.453249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.639854, 1.203264, 2.440870>,  <0.654084, 0.804050, 2.420239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.639854, 1.203264, 2.440870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295944, 0.059816, -0.953330,
		-0.954543, -0.018649, -0.297490,
		-0.035573, 0.998035, 0.051578,
		0.629182, 1.502674, 2.456344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.330112, 1.086699, 1.929847>,  <0.654084, 0.804050, 2.420239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.330112, 1.086699, 1.929847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.606079, 1.347526, 2.055592>,  <0.771659, 1.504022, 2.131038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.606079, 1.347526, 2.055592>,  <0.330112, 1.086699, 1.929847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.606079, 1.347526, 2.055592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176839, 0.269291, -0.946684,
		-0.701956, 0.708725, 0.070478,
		0.689917, 0.652067, 0.314360,
		0.813054, 1.543146, 2.149900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.207841, 1.668765, 1.706933>,  <0.330112, 1.086699, 1.929847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.207841, 1.668765, 1.706933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605186, 1.677860, 1.752029>,  <0.843594, 1.683317, 1.779087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605186, 1.677860, 1.752029>,  <0.207841, 1.668765, 1.706933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.605186, 1.677860, 1.752029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107219, 0.171605, -0.979314,
		-0.041614, 0.984903, 0.168029,
		0.993364, 0.022738, 0.112741,
		0.903196, 1.684682, 1.785852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.516597, 2.359489, 1.529621>,  <0.207841, 1.668765, 1.706933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.516597, 2.359489, 1.529621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738083, 2.033905, 1.459344>,  <0.870974, 1.838554, 1.417178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738083, 2.033905, 1.459344>,  <0.516597, 2.359489, 1.529621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.738083, 2.033905, 1.459344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121557, 0.287740, -0.949963,
		0.823787, 0.504651, 0.258268,
		0.553714, -0.813961, -0.175693,
		0.904197, 1.789716, 1.406636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.076247, 2.655809, 1.111117>,  <0.516597, 2.359489, 1.529621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.076247, 2.655809, 1.111117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.067657, 2.260252, 1.052288>,  <1.062504, 2.022918, 1.016991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.067657, 2.260252, 1.052288>,  <1.076247, 2.655809, 1.111117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.067657, 2.260252, 1.052288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008468, 0.147281, -0.989058,
		0.999734, -0.019993, -0.011537,
		-0.021474, -0.988892, -0.147073,
		1.061215, 1.963585, 1.008166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.542545, 2.599067, 0.619386>,  <1.076247, 2.655809, 1.111117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.542545, 2.599067, 0.619386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.322441, 2.266451, 0.589040>,  <1.190379, 2.066881, 0.570832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.322441, 2.266451, 0.589040>,  <1.542545, 2.599067, 0.619386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.322441, 2.266451, 0.589040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076757, 0.040099, -0.996243,
		0.831458, -0.554015, 0.041761,
		-0.550259, -0.831540, -0.075866,
		1.157363, 2.016989, 0.566280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.919383, 2.167314, 0.174729>,  <1.542545, 2.599067, 0.619386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.919383, 2.167314, 0.174729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.549309, 2.015577, 0.179289>,  <1.327264, 1.924535, 0.182025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.549309, 2.015577, 0.179289>,  <1.919383, 2.167314, 0.174729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.549309, 2.015577, 0.179289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091020, -0.250951, -0.963711,
		0.368438, -0.890574, 0.266704,
		-0.925186, -0.379343, 0.011400,
		1.271753, 1.901775, 0.182709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.001271, 1.495691, 0.041064>,  <1.919383, 2.167314, 0.174729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.001271, 1.495691, 0.041064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633537, 1.611324, -0.065712>,  <1.412897, 1.680704, -0.129777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633537, 1.611324, -0.065712>,  <2.001271, 1.495691, 0.041064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.633537, 1.611324, -0.065712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140603, -0.392266, -0.909042,
		-0.367494, -0.873248, 0.319979,
		-0.919336, 0.289078, -0.266937,
		1.357737, 1.698049, -0.145794>
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
