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
	<3.779563, -1.460170, 0.620787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.627045, -1.775421, 0.427513>,  <3.535534, -1.964572, 0.311549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.627045, -1.775421, 0.427513>,  <3.779563, -1.460170, 0.620787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.627045, -1.775421, 0.427513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106746, 0.481640, -0.869844,
		0.918269, -0.383246, -0.099518,
		-0.381296, -0.788128, -0.483186,
		3.512656, -2.011859, 0.282557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.020417, -0.788485, 1.103043>,  <3.779563, -1.460170, 0.620787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.020417, -0.788485, 1.103043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.848129, -0.498322, 0.888283>,  <3.744757, -0.324223, 0.759427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.848129, -0.498322, 0.888283>,  <4.020417, -0.788485, 1.103043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.848129, -0.498322, 0.888283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378988, 0.394529, 0.837087,
		0.819054, 0.564029, 0.104990,
		-0.430719, 0.725409, -0.536901,
		3.718914, -0.280699, 0.727213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.035388, -0.174165, 1.547378>,  <4.020417, -0.788485, 1.103043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.035388, -0.174165, 1.547378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.767227, -0.104965, 1.258759>,  <3.606331, -0.063445, 1.085587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.767227, -0.104965, 1.258759>,  <4.035388, -0.174165, 1.547378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.767227, -0.104965, 1.258759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579291, 0.485632, 0.654663,
		0.463663, 0.856874, -0.225351,
		-0.670402, 0.172999, -0.721549,
		3.566107, -0.053065, 1.042294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.937944, 0.511060, 1.482659>,  <4.035388, -0.174165, 1.547378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.937944, 0.511060, 1.482659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.622574, 0.283218, 1.389763>,  <3.433352, 0.146513, 1.334025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.622574, 0.283218, 1.389763>,  <3.937944, 0.511060, 1.482659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.622574, 0.283218, 1.389763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474935, 0.323749, 0.818305,
		-0.390922, 0.755472, -0.525777,
		-0.788426, -0.569604, -0.232240,
		3.386046, 0.112337, 1.320091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.417628, 0.998069, 1.584636>,  <3.937944, 0.511060, 1.482659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.417628, 0.998069, 1.584636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.246094, 0.637039, 1.569359>,  <3.143173, 0.420421, 1.560193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.246094, 0.637039, 1.569359>,  <3.417628, 0.998069, 1.584636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.246094, 0.637039, 1.569359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690307, 0.300124, 0.658332,
		-0.582732, 0.308680, -0.751758,
		-0.428835, -0.902575, -0.038192,
		3.117443, 0.366267, 1.557901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.927492, 0.983873, 2.197177>,  <3.417628, 0.998069, 1.584636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.927492, 0.983873, 2.197177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.828659, 0.642838, 2.012985>,  <2.769359, 0.438216, 1.902470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.828659, 0.642838, 2.012985>,  <2.927492, 0.983873, 2.197177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.828659, 0.642838, 2.012985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729994, -0.148730, 0.667075,
		-0.637228, 0.500970, -0.585636,
		-0.247083, -0.852590, -0.460479,
		2.754534, 0.387061, 1.874841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.200753, 1.011492, 1.922873>,  <2.927492, 0.983873, 2.197177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.200753, 1.011492, 1.922873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.309364, 0.634903, 2.002777>,  <2.374531, 0.408950, 2.050719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.309364, 0.634903, 2.002777>,  <2.200753, 1.011492, 1.922873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.309364, 0.634903, 2.002777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821240, -0.118422, 0.558159,
		-0.501835, -0.315606, -0.805329,
		0.271527, -0.941472, 0.199759,
		2.390822, 0.352461, 2.062705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.611281, 0.641152, 1.843726>,  <2.200753, 1.011492, 1.922873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.611281, 0.641152, 1.843726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.829140, 0.396790, 2.073563>,  <1.959855, 0.250172, 2.211464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.829140, 0.396790, 2.073563>,  <1.611281, 0.641152, 1.843726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.829140, 0.396790, 2.073563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797737, -0.165954, 0.579719,
		-0.258799, -0.774113, -0.577730,
		0.544645, -0.610907, 0.574590,
		1.992533, 0.213518, 2.245940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.552995, 5.374140, 2.887918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757343, 5.169586, 3.164322>,  <0.879952, 5.046854, 3.330165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757343, 5.169586, 3.164322>,  <0.552995, 5.374140, 2.887918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757343, 5.169586, 3.164322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627102, -0.328127, -0.706453,
		0.588009, 0.794240, 0.153061,
		0.510870, -0.511386, 0.691011,
		0.910604, 5.016171, 3.371625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.276089, 5.611582, 2.835390>,  <0.552995, 5.374140, 2.887918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.276089, 5.611582, 2.835390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.239971, 5.247375, 2.996788>,  <1.218301, 5.028852, 3.093627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.239971, 5.247375, 2.996788>,  <1.276089, 5.611582, 2.835390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.239971, 5.247375, 2.996788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792179, -0.311205, -0.524980,
		0.603572, 0.272239, 0.749391,
		-0.090294, -0.910515, 0.403496,
		1.212883, 4.974221, 3.117837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.849579, 5.488002, 3.296285>,  <1.276089, 5.611582, 2.835390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.849579, 5.488002, 3.296285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.718082, 5.141037, 3.146873>,  <1.639184, 4.932858, 3.057227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.718082, 5.141037, 3.146873>,  <1.849579, 5.488002, 3.296285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718082, 5.141037, 3.146873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880162, -0.137997, -0.454172,
		0.342409, -0.478071, 0.808829,
		-0.328743, -0.867413, -0.373528,
		1.619460, 4.880813, 3.034815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.303532, 4.934516, 3.359877>,  <1.849579, 5.488002, 3.296285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.303532, 4.934516, 3.359877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.107868, 4.890030, 3.013847>,  <1.990470, 4.863338, 2.806229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.107868, 4.890030, 3.013847>,  <2.303532, 4.934516, 3.359877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.107868, 4.890030, 3.013847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869438, -0.140981, -0.473500,
		-0.069298, -0.983746, 0.165658,
		-0.489159, -0.111216, -0.865075,
		1.961121, 4.856665, 2.754325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.673269, 4.386968, 2.897050>,  <2.303532, 4.934516, 3.359877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.673269, 4.386968, 2.897050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.456329, 4.620270, 2.655167>,  <2.326166, 4.760251, 2.510036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.456329, 4.620270, 2.655167>,  <2.673269, 4.386968, 2.897050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.456329, 4.620270, 2.655167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761079, 0.036232, -0.647646,
		-0.355832, -0.811481, -0.463553,
		-0.542348, 0.583254, -0.604709,
		2.293625, 4.795246, 2.473754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.672664, 4.068790, 2.256192>,  <2.673269, 4.386968, 2.897050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.672664, 4.068790, 2.256192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.604347, 4.457169, 2.189148>,  <2.563357, 4.690196, 2.148921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.604347, 4.457169, 2.189148>,  <2.672664, 4.068790, 2.256192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.604347, 4.457169, 2.189148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672211, -0.009551, -0.740298,
		-0.720391, -0.239107, -0.651049,
		-0.170792, 0.970946, -0.167610,
		2.553110, 4.748453, 2.138865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.713333, 4.167656, 1.542505>,  <2.672664, 4.068790, 2.256192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.713333, 4.167656, 1.542505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727055, 4.550247, 1.658417>,  <2.735287, 4.779802, 1.727964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727055, 4.550247, 1.658417>,  <2.713333, 4.167656, 1.542505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.727055, 4.550247, 1.658417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659953, 0.196064, -0.725273,
		-0.750523, 0.216120, -0.624506,
		0.034303, 0.956479, 0.289779,
		2.737345, 4.837191, 1.745351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.443745, 4.564303, 0.940786>,  <2.713333, 4.167656, 1.542505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.443745, 4.564303, 0.940786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.682140, 4.746933, 1.205009>,  <2.825178, 4.856511, 1.363544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.682140, 4.746933, 1.205009>,  <2.443745, 4.564303, 0.940786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.682140, 4.746933, 1.205009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711497, 0.081086, -0.697995,
		-0.372248, 0.885983, -0.276524,
		0.595989, 0.456574, 0.660559,
		2.860937, 4.883905, 1.403177>
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
