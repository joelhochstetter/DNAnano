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
	<1.507553, 1.520032, 3.772996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.671989, 1.233017, 3.548090>,  <1.770652, 1.060808, 3.413146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.671989, 1.233017, 3.548090>,  <1.507553, 1.520032, 3.772996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.671989, 1.233017, 3.548090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789846, -0.027582, 0.612684,
		-0.455133, -0.695973, 0.555406,
		0.411092, -0.717538, -0.562265,
		1.795317, 1.017756, 3.379411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.014452, 0.892281, 4.033914>,  <1.507553, 1.520032, 3.772996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.014452, 0.892281, 4.033914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.706766, 0.636845, 4.042965>,  <0.522155, 0.483583, 4.048395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.706766, 0.636845, 4.042965>,  <1.014452, 0.892281, 4.033914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.706766, 0.636845, 4.042965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190265, -0.195093, 0.962153,
		-0.610007, 0.744407, 0.271570,
		-0.769214, -0.638591, 0.022627,
		0.476002, 0.445267, 4.049753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.366887, 0.741557, 4.665404>,  <1.014452, 0.892281, 4.033914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.366887, 0.741557, 4.665404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683283, 0.727570, 4.909737>,  <1.873120, 0.719177, 5.056336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.683283, 0.727570, 4.909737>,  <1.366887, 0.741557, 4.665404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.683283, 0.727570, 4.909737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164624, -0.949383, -0.267529,
		0.589267, 0.312169, -0.745194,
		0.790989, -0.034969, 0.610831,
		1.920579, 0.717079, 5.092986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.937548, 0.611118, 4.268971>,  <1.366887, 0.741557, 4.665404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.937548, 0.611118, 4.268971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.935274, 0.465000, 4.641321>,  <1.933910, 0.377330, 4.864731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.935274, 0.465000, 4.641321>,  <1.937548, 0.611118, 4.268971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.935274, 0.465000, 4.641321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036082, -0.930359, -0.364871,
		0.999333, 0.031514, 0.018470,
		-0.005685, -0.365294, 0.930875,
		1.933569, 0.355412, 4.920584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.579446, 0.193930, 4.371133>,  <1.937548, 0.611118, 4.268971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.579446, 0.193930, 4.371133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.275621, 0.090038, 4.609665>,  <2.093327, 0.027703, 4.752784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.275621, 0.090038, 4.609665>,  <2.579446, 0.193930, 4.371133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.275621, 0.090038, 4.609665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075549, -0.945838, -0.315727,
		0.646035, -0.194762, 0.738043,
		-0.759560, -0.259729, 0.596330,
		2.047753, 0.012120, 4.788564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792859, -0.362772, 4.772881>,  <2.579446, 0.193930, 4.371133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792859, -0.362772, 4.772881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.393789, -0.383450, 4.755116>,  <2.154347, -0.395856, 4.744456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.393789, -0.383450, 4.755116>,  <2.792859, -0.362772, 4.772881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.393789, -0.383450, 4.755116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066026, -0.894645, -0.441872,
		-0.016891, -0.443777, 0.895978,
		-0.997675, -0.051694, -0.044413,
		2.094487, -0.398958, 4.741792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.565993, -1.047042, 4.873914>,  <2.792859, -0.362772, 4.772881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.565993, -1.047042, 4.873914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.289230, -0.872169, 4.644083>,  <2.123173, -0.767246, 4.506185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.289230, -0.872169, 4.644083>,  <2.565993, -1.047042, 4.873914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.289230, -0.872169, 4.644083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205799, -0.643386, -0.737361,
		-0.692039, -0.628429, 0.355188,
		-0.691902, 0.437186, -0.574579,
		2.081659, -0.741015, 4.471710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.140859, -1.574856, 4.556122>,  <2.565993, -1.047042, 4.873914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.140859, -1.574856, 4.556122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177261, -1.236347, 4.346153>,  <2.199103, -1.033242, 4.220172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177261, -1.236347, 4.346153>,  <2.140859, -1.574856, 4.556122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.177261, -1.236347, 4.346153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317058, -0.524303, -0.790304,
		-0.944030, -0.094509, -0.316031,
		0.091005, 0.846271, -0.524922,
		2.204563, -0.982466, 4.188677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.083344, 4.192885, 5.195107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.038605, 3.904442, 5.468601>,  <5.011761, 3.731376, 5.632698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.038605, 3.904442, 5.468601>,  <5.083344, 4.192885, 5.195107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.038605, 3.904442, 5.468601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217037, -0.653714, -0.724950,
		0.969734, -0.229481, -0.083389,
		-0.111849, -0.721108, 0.683735,
		5.005050, 3.688110, 5.673722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.442571, 3.507397, 5.033175>,  <5.083344, 4.192885, 5.195107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.442571, 3.507397, 5.033175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.126830, 3.435265, 5.267920>,  <4.937386, 3.391985, 5.408766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.126830, 3.435265, 5.267920>,  <5.442571, 3.507397, 5.033175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.126830, 3.435265, 5.267920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313491, -0.703490, -0.637828,
		0.527872, -0.687446, 0.498768,
		-0.789351, -0.180332, 0.586861,
		4.890025, 3.381165, 5.443978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.362235, 2.783655, 5.352057>,  <5.442571, 3.507397, 5.033175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.362235, 2.783655, 5.352057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.995115, 2.939003, 5.319042>,  <4.774843, 3.032212, 5.299234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.995115, 2.939003, 5.319042>,  <5.362235, 2.783655, 5.352057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.995115, 2.939003, 5.319042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288229, -0.794680, -0.534237,
		-0.273070, -0.466533, 0.841296,
		-0.917800, 0.388370, -0.082535,
		4.719775, 3.055514, 5.294281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.910439, 2.299355, 5.508933>,  <5.362235, 2.783655, 5.352057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.910439, 2.299355, 5.508933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738597, 2.550697, 5.249516>,  <4.635491, 2.701503, 5.093865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738597, 2.550697, 5.249516>,  <4.910439, 2.299355, 5.508933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.738597, 2.550697, 5.249516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274980, -0.775118, -0.568839,
		-0.860131, -0.066040, 0.505780,
		-0.429606, 0.628356, -0.648543,
		4.609715, 2.739204, 5.054953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.247814, 2.102971, 5.379465>,  <4.910439, 2.299355, 5.508933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.247814, 2.102971, 5.379465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.374344, 2.302101, 5.056452>,  <4.450262, 2.421579, 4.862644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.374344, 2.302101, 5.056452>,  <4.247814, 2.102971, 5.379465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.374344, 2.302101, 5.056452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468171, -0.658436, -0.589303,
		-0.825079, 0.564474, 0.024789,
		0.316324, 0.497826, -0.807532,
		4.469241, 2.451449, 4.814192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.721650, 2.279769, 4.948796>,  <4.247814, 2.102971, 5.379465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.721650, 2.279769, 4.948796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.049603, 2.208160, 4.731266>,  <4.246374, 2.165195, 4.600748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.049603, 2.208160, 4.731266>,  <3.721650, 2.279769, 4.948796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.049603, 2.208160, 4.731266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437748, -0.808219, -0.393902,
		-0.369012, 0.561011, -0.741011,
		0.819882, -0.179021, -0.543824,
		4.295567, 2.154454, 4.568119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.415077, 1.716870, 4.418607>,  <3.721650, 2.279769, 4.948796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.415077, 1.716870, 4.418607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121546, 1.772888, 4.152710>,  <2.945427, 1.806499, 3.993171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121546, 1.772888, 4.152710>,  <3.415077, 1.716870, 4.418607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.121546, 1.772888, 4.152710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631225, -0.502254, 0.591013,
		-0.251101, 0.853305, 0.456968,
		-0.733828, 0.140046, -0.664744,
		2.901397, 1.814902, 3.953287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924918, 2.142185, 4.703936>,  <3.415077, 1.716870, 4.418607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924918, 2.142185, 4.703936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.783974, 1.870247, 4.446672>,  <2.699407, 1.707084, 4.292314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.783974, 1.870247, 4.446672>,  <2.924918, 2.142185, 4.703936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.783974, 1.870247, 4.446672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571957, -0.387520, 0.722975,
		-0.740748, 0.622607, -0.252296,
		-0.352360, -0.679845, -0.643159,
		2.678266, 1.666294, 4.253725>
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
