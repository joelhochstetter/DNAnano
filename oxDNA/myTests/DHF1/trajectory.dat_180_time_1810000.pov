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
	<2.853123, 4.248268, -0.500441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.985126, 4.507904, -0.226280>,  <3.064329, 4.663686, -0.061784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.985126, 4.507904, -0.226280>,  <2.853123, 4.248268, -0.500441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.985126, 4.507904, -0.226280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922879, 0.069193, 0.378822,
		0.198465, -0.757557, 0.621868,
		0.330008, 0.649091, 0.685401,
		3.084129, 4.702631, -0.020660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.561294, 4.180468, 0.103405>,  <2.853123, 4.248268, -0.500441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.561294, 4.180468, 0.103405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.695927, 4.546326, 0.192970>,  <2.776706, 4.765841, 0.246709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.695927, 4.546326, 0.192970>,  <2.561294, 4.180468, 0.103405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.695927, 4.546326, 0.192970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891989, 0.233479, 0.387096,
		0.301777, -0.330015, 0.894439,
		0.336580, 0.914646, 0.223912,
		2.796901, 4.820719, 0.260144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.616239, 4.216229, 0.843832>,  <2.561294, 4.180468, 0.103405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.616239, 4.216229, 0.843832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.534351, 4.574326, 0.685524>,  <2.485219, 4.789184, 0.590539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.534351, 4.574326, 0.685524>,  <2.616239, 4.216229, 0.843832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.534351, 4.574326, 0.685524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746388, 0.118805, 0.654821,
		0.633242, 0.429451, 0.643876,
		-0.204718, 0.895242, -0.395769,
		2.472936, 4.842898, 0.566793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.053176, 3.832358, 1.289633>,  <2.616239, 4.216229, 0.843832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.053176, 3.832358, 1.289633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095516, 3.653366, 1.644836>,  <3.120920, 3.545971, 1.857958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095516, 3.653366, 1.644836>,  <3.053176, 3.832358, 1.289633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.095516, 3.653366, 1.644836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994315, 0.037221, -0.099765,
		0.011590, 0.893520, 0.448875,
		0.105849, -0.447479, 0.888008,
		3.127271, 3.519122, 1.911239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.408584, 4.274118, 1.834599>,  <3.053176, 3.832358, 1.289633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.408584, 4.274118, 1.834599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.476513, 3.881851, 1.873489>,  <3.517270, 3.646491, 1.896824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.476513, 3.881851, 1.873489>,  <3.408584, 4.274118, 1.834599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.476513, 3.881851, 1.873489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973276, 0.182378, 0.139544,
		-0.154578, 0.070931, 0.985431,
		0.169823, -0.980667, 0.097227,
		3.527460, 3.587651, 1.902658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.817400, 4.168391, 2.414269>,  <3.408584, 4.274118, 1.834599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.817400, 4.168391, 2.414269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.869801, 3.830856, 2.206123>,  <3.901241, 3.628335, 2.081236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.869801, 3.830856, 2.206123>,  <3.817400, 4.168391, 2.414269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.869801, 3.830856, 2.206123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987362, 0.063833, 0.145055,
		-0.089187, -0.532790, 0.841535,
		0.131001, -0.843837, -0.520363,
		3.909101, 3.577705, 2.050014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.261697, 3.892596, 2.807101>,  <3.817400, 4.168391, 2.414269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.261697, 3.892596, 2.807101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291485, 3.687164, 2.465179>,  <4.309357, 3.563905, 2.260026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291485, 3.687164, 2.465179>,  <4.261697, 3.892596, 2.807101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.291485, 3.687164, 2.465179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990784, -0.059150, 0.121853,
		-0.113143, -0.856001, 0.504440,
		0.074469, -0.513578, -0.854805,
		4.313826, 3.533091, 2.208738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.663382, 3.233255, 2.992424>,  <4.261697, 3.892596, 2.807101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.663382, 3.233255, 2.992424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.706600, 3.302353, 2.600815>,  <4.732531, 3.343812, 2.365849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.706600, 3.302353, 2.600815>,  <4.663382, 3.233255, 2.992424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.706600, 3.302353, 2.600815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992824, 0.032023, 0.115218,
		0.051254, -0.984446, -0.168045,
		0.108045, 0.172744, -0.979023,
		4.739014, 3.354176, 2.307108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.716623, 4.367222, 2.297423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.736095, 4.582397, 1.960793>,  <1.747779, 4.711503, 1.758814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.736095, 4.582397, 1.960793>,  <1.716623, 4.367222, 2.297423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.736095, 4.582397, 1.960793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663291, -0.612552, -0.429913,
		-0.746777, 0.579140, 0.326990,
		0.048682, 0.537938, -0.841577,
		1.750700, 4.743779, 1.708319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.050672, 4.415136, 1.977178>,  <1.716623, 4.367222, 2.297423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.050672, 4.415136, 1.977178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340511, 4.413269, 1.701515>,  <1.514415, 4.412148, 1.536118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340511, 4.413269, 1.701515>,  <1.050672, 4.415136, 1.977178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.340511, 4.413269, 1.701515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391762, -0.825487, -0.406318,
		-0.566992, 0.564402, -0.599975,
		0.724598, -0.004668, -0.689156,
		1.557891, 4.411869, 1.494769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.315010, 4.194640, 1.999225>,  <1.050672, 4.415136, 1.977178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.315010, 4.194640, 1.999225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.462322, 3.884964, 1.793312>,  <0.550709, 3.699158, 1.669765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.462322, 3.884964, 1.793312>,  <0.315010, 4.194640, 1.999225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.462322, 3.884964, 1.793312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924722, -0.362335, -0.116633,
		-0.096227, 0.518983, -0.849351,
		0.368280, -0.774190, -0.514781,
		0.572806, 3.652707, 1.638878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.047653, 4.112603, 1.310508>,  <0.315010, 4.194640, 1.999225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.047653, 4.112603, 1.310508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.117928, 3.775848, 1.514610>,  <0.160092, 3.573796, 1.637072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.117928, 3.775848, 1.514610>,  <0.047653, 4.112603, 1.310508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.117928, 3.775848, 1.514610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966889, -0.245020, -0.071354,
		0.185095, -0.480825, -0.857057,
		0.175687, -0.841887, 0.510257,
		0.170634, 3.523283, 1.667687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.211966, 3.541867, 0.945355>,  <0.047653, 4.112603, 1.310508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.211966, 3.541867, 0.945355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.198669, 3.453659, 1.335281>,  <-0.190691, 3.400734, 1.569237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.198669, 3.453659, 1.335281>,  <-0.211966, 3.541867, 0.945355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.198669, 3.453659, 1.335281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940372, -0.337259, -0.044227,
		0.338518, -0.915220, -0.218582,
		0.033242, -0.220521, 0.974816,
		-0.188697, 3.387503, 1.627726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.473273, 2.817274, 1.146528>,  <-0.211966, 3.541867, 0.945355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.473273, 2.817274, 1.146528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546497, 3.029785, 1.477402>,  <-0.590432, 3.157292, 1.675926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.546497, 3.029785, 1.477402>,  <-0.473273, 2.817274, 1.146528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.546497, 3.029785, 1.477402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965519, -0.255579, -0.049523,
		0.185100, -0.807727, 0.559745,
		-0.183060, 0.531278, 0.827184,
		-0.601415, 3.189168, 1.725557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.885792, 2.395061, 1.604996>,  <-0.473273, 2.817274, 1.146528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.885792, 2.395061, 1.604996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.951084, 2.771957, 1.721985>,  <-0.990259, 2.998095, 1.792178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.951084, 2.771957, 1.721985>,  <-0.885792, 2.395061, 1.604996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.951084, 2.771957, 1.721985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968162, -0.210007, 0.136234,
		0.189786, -0.260924, 0.946520,
		-0.163229, 0.942240, 0.292473,
		-1.000053, 3.054629, 1.809727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.252707, 2.313304, 2.115081>,  <-0.885792, 2.395061, 1.604996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.252707, 2.313304, 2.115081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.334232, 2.694916, 2.027184>,  <-1.383147, 2.923883, 1.974445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.334232, 2.694916, 2.027184>,  <-1.252707, 2.313304, 2.115081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.334232, 2.694916, 2.027184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975442, -0.178743, 0.128699,
		0.083505, 0.240578, 0.967031,
		-0.203812, 0.954030, -0.219744,
		-1.395376, 2.981125, 1.961260>
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
