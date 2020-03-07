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
	<4.184136, 1.253009, 2.796325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451241, 1.543709, 2.731911>,  <4.611503, 1.718128, 2.693262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451241, 1.543709, 2.731911>,  <4.184136, 1.253009, 2.796325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.451241, 1.543709, 2.731911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624778, 0.429593, -0.651999,
		-0.404659, 0.535991, 0.740922,
		0.667761, 0.726748, -0.161037,
		4.651569, 1.761733, 2.683600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.837651, 1.938923, 2.787222>,  <4.184136, 1.253009, 2.796325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.837651, 1.938923, 2.787222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.163857, 2.004318, 2.565155>,  <4.359580, 2.043555, 2.431915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.163857, 2.004318, 2.565155>,  <3.837651, 1.938923, 2.787222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.163857, 2.004318, 2.565155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536221, 0.574337, -0.618549,
		0.217729, 0.802128, 0.556045,
		0.815513, 0.163487, -0.555167,
		4.408510, 2.053364, 2.398605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.138919, 2.673750, 2.771174>,  <3.837651, 1.938923, 2.787222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.138919, 2.673750, 2.771174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.230785, 2.488800, 2.428604>,  <4.285905, 2.377830, 2.223062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.230785, 2.488800, 2.428604>,  <4.138919, 2.673750, 2.771174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.230785, 2.488800, 2.428604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488993, 0.706002, -0.512296,
		0.841510, 0.536443, -0.063953,
		0.229666, -0.462375, -0.856424,
		4.299685, 2.350088, 2.171677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.541222, 3.174247, 2.258650>,  <4.138919, 2.673750, 2.771174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.541222, 3.174247, 2.258650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.314331, 2.894104, 2.085327>,  <4.178197, 2.726018, 1.981333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.314331, 2.894104, 2.085327>,  <4.541222, 3.174247, 2.258650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.314331, 2.894104, 2.085327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428971, 0.700379, -0.570484,
		0.703013, -0.137728, -0.697713,
		-0.567235, -0.700357, -0.433295,
		4.144163, 2.683997, 1.955335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.600441, 3.293435, 1.516232>,  <4.541222, 3.174247, 2.258650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.600441, 3.293435, 1.516232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245979, 3.126190, 1.596146>,  <4.033302, 3.025843, 1.644094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245979, 3.126190, 1.596146>,  <4.600441, 3.293435, 1.516232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.245979, 3.126190, 1.596146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441392, 0.630342, -0.638626,
		0.141084, -0.654104, -0.743131,
		-0.886154, -0.418112, 0.199785,
		3.980133, 3.000757, 1.656081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.173061, 3.123727, 0.897680>,  <4.600441, 3.293435, 1.516232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.173061, 3.123727, 0.897680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894791, 3.170357, 1.181213>,  <3.727828, 3.198335, 1.351333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894791, 3.170357, 1.181213>,  <4.173061, 3.123727, 0.897680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.894791, 3.170357, 1.181213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447591, 0.701449, -0.554645,
		-0.561868, -0.703121, -0.435804,
		-0.695676, 0.116575, 0.708833,
		3.686088, 3.205329, 1.393863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.496796, 2.987791, 0.559524>,  <4.173061, 3.123727, 0.897680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.496796, 2.987791, 0.559524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.437206, 3.208557, 0.887718>,  <3.401452, 3.341017, 1.084635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.437206, 3.208557, 0.887718>,  <3.496796, 2.987791, 0.559524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.437206, 3.208557, 0.887718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561054, 0.636076, -0.529740,
		-0.814263, -0.539254, 0.214896,
		-0.148975, 0.551916, 0.820485,
		3.392514, 3.374132, 1.133864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.790164, 3.150834, 0.550020>,  <3.496796, 2.987791, 0.559524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.790164, 3.150834, 0.550020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.978905, 3.425446, 0.771301>,  <3.092149, 3.590213, 0.904070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.978905, 3.425446, 0.771301>,  <2.790164, 3.150834, 0.550020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.978905, 3.425446, 0.771301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521216, 0.723267, -0.453011,
		-0.711118, -0.074583, 0.699106,
		0.471853, 0.686529, 0.553202,
		3.120461, 3.631404, 0.937262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.368531, 4.972425, 0.541105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.696109, 5.201843, 0.548866>,  <2.892655, 5.339494, 0.553523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.696109, 5.201843, 0.548866>,  <2.368531, 4.972425, 0.541105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.696109, 5.201843, 0.548866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480722, -0.704086, 0.522655,
		0.313429, -0.418697, -0.852323,
		0.818943, 0.573546, 0.019404,
		2.941792, 5.373907, 0.554687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.944509, 4.620700, 0.232394>,  <2.368531, 4.972425, 0.541105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.944509, 4.620700, 0.232394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.001252, 4.874786, 0.536072>,  <3.035298, 5.027238, 0.718278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.001252, 4.874786, 0.536072>,  <2.944509, 4.620700, 0.232394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.001252, 4.874786, 0.536072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254649, -0.764557, 0.592121,
		0.956572, 0.109331, -0.270216,
		0.141859, 0.635216, 0.759194,
		3.043810, 5.065351, 0.763830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.620526, 4.617572, 0.364328>,  <2.944509, 4.620700, 0.232394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.620526, 4.617572, 0.364328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.357078, 4.641846, 0.664337>,  <3.199008, 4.656410, 0.844343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.357078, 4.641846, 0.664337>,  <3.620526, 4.617572, 0.364328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.357078, 4.641846, 0.664337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304703, -0.889858, 0.339570,
		0.688021, 0.452183, 0.567589,
		-0.658622, 0.060685, 0.750023,
		3.159491, 4.660051, 0.889344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.873012, 4.620971, 1.224202>,  <3.620526, 4.617572, 0.364328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.873012, 4.620971, 1.224202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519824, 4.448982, 1.148849>,  <3.307911, 4.345789, 1.103638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519824, 4.448982, 1.148849>,  <3.873012, 4.620971, 1.224202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.519824, 4.448982, 1.148849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258075, -0.779837, 0.570308,
		-0.392124, 0.454949, 0.799538,
		-0.882970, -0.429972, -0.188382,
		3.254933, 4.319991, 1.092335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.506850, 4.458437, 1.876135>,  <3.873012, 4.620971, 1.224202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.506850, 4.458437, 1.876135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.373538, 4.214729, 1.588326>,  <3.293551, 4.068505, 1.415640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.373538, 4.214729, 1.588326>,  <3.506850, 4.458437, 1.876135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.373538, 4.214729, 1.588326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268602, -0.792887, 0.546976,
		-0.903757, -0.010969, 0.427905,
		-0.333280, -0.609270, -0.719524,
		3.273554, 4.031949, 1.372468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.098258, 4.055790, 2.228087>,  <3.506850, 4.458437, 1.876135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.098258, 4.055790, 2.228087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.188138, 3.864670, 1.888390>,  <3.242066, 3.749997, 1.684571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.188138, 3.864670, 1.888390>,  <3.098258, 4.055790, 2.228087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.188138, 3.864670, 1.888390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285212, -0.801114, 0.526186,
		-0.931754, -0.360447, -0.043734,
		0.224698, -0.477802, -0.849244,
		3.255548, 3.721329, 1.633616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.865003, 3.479024, 2.287856>,  <3.098258, 4.055790, 2.228087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.865003, 3.479024, 2.287856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.165896, 3.422272, 2.030479>,  <3.346432, 3.388221, 1.876054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.165896, 3.422272, 2.030479>,  <2.865003, 3.479024, 2.287856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.165896, 3.422272, 2.030479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277408, -0.817578, 0.504590,
		-0.597654, -0.558065, -0.575651,
		0.752234, -0.141880, -0.643440,
		3.391566, 3.379708, 1.837447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.968232, 2.673807, 2.247117>,  <2.865003, 3.479024, 2.287856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.968232, 2.673807, 2.247117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.295737, 2.855545, 2.106720>,  <3.492241, 2.964588, 2.022482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.295737, 2.855545, 2.106720>,  <2.968232, 2.673807, 2.247117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.295737, 2.855545, 2.106720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571486, -0.703560, 0.422383,
		-0.055035, -0.546419, -0.835702,
		0.818764, 0.454346, -0.350991,
		3.541367, 2.991849, 2.001423>
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
