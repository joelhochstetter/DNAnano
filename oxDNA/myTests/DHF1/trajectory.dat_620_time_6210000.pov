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
	<3.825859, 2.227355, 2.225592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.836720, 2.051264, 1.866602>,  <3.843236, 1.945609, 1.651208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.836720, 2.051264, 1.866602>,  <3.825859, 2.227355, 2.225592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.836720, 2.051264, 1.866602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284199, -0.864158, 0.415286,
		-0.958381, 0.243787, -0.148575,
		0.027151, -0.440227, -0.897476,
		3.844865, 1.919196, 1.597359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.183187, 1.762787, 2.273795>,  <3.825859, 2.227355, 2.225592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.183187, 1.762787, 2.273795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.447300, 1.645031, 1.997430>,  <3.605768, 1.574377, 1.831611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.447300, 1.645031, 1.997430>,  <3.183187, 1.762787, 2.273795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.447300, 1.645031, 1.997430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126352, -0.950402, 0.284204,
		-0.740312, -0.100357, -0.664731,
		0.660283, -0.294390, -0.690913,
		3.645385, 1.556714, 1.790156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.843286, 1.233157, 2.013048>,  <3.183187, 1.762787, 2.273795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.843286, 1.233157, 2.013048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.232796, 1.202271, 1.927443>,  <3.466501, 1.183738, 1.876079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.232796, 1.202271, 1.927443>,  <2.843286, 1.233157, 2.013048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.232796, 1.202271, 1.927443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060486, -0.818933, 0.570693,
		-0.219329, -0.568671, -0.792785,
		0.973774, -0.077217, -0.214013,
		3.524928, 1.179105, 1.863239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.948625, 0.529908, 1.893149>,  <2.843286, 1.233157, 2.013048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.948625, 0.529908, 1.893149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317886, 0.666622, 1.963540>,  <3.539443, 0.748651, 2.005775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317886, 0.666622, 1.963540>,  <2.948625, 0.529908, 1.893149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.317886, 0.666622, 1.963540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177315, -0.784730, 0.593935,
		0.341095, -0.517090, -0.785030,
		0.923154, 0.341786, 0.175979,
		3.594833, 0.769158, 2.016334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.539030, -0.028102, 1.791956>,  <2.948625, 0.529908, 1.893149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.539030, -0.028102, 1.791956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.731819, 0.238783, 2.019122>,  <3.847493, 0.398914, 2.155422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.731819, 0.238783, 2.019122>,  <3.539030, -0.028102, 1.791956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.731819, 0.238783, 2.019122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450065, -0.744649, 0.492889,
		0.751760, 0.018040, -0.659191,
		0.481974, 0.667213, 0.567916,
		3.876411, 0.438947, 2.189497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.312717, -0.118820, 1.760808>,  <3.539030, -0.028102, 1.791956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.312717, -0.118820, 1.760808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.209785, 0.058487, 2.104272>,  <4.148026, 0.164871, 2.310350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.209785, 0.058487, 2.104272>,  <4.312717, -0.118820, 1.760808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.209785, 0.058487, 2.104272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385397, -0.767776, 0.511848,
		0.886144, 0.462638, 0.026737,
		-0.257328, 0.443267, 0.858660,
		4.132587, 0.191467, 2.361870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.890248, -0.249132, 2.243558>,  <4.312717, -0.118820, 1.760808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.890248, -0.249132, 2.243558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.583515, -0.145735, 2.478556>,  <4.399476, -0.083697, 2.619555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.583515, -0.145735, 2.478556>,  <4.890248, -0.249132, 2.243558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.583515, -0.145735, 2.478556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302735, -0.661446, 0.686178,
		0.565968, 0.704039, 0.428963,
		-0.766832, 0.258492, 0.587495,
		4.353466, -0.068187, 2.654804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.165502, -0.246738, 2.851780>,  <4.890248, -0.249132, 2.243558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.165502, -0.246738, 2.851780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.776314, -0.329252, 2.893304>,  <4.542801, -0.378761, 2.918218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.776314, -0.329252, 2.893304>,  <5.165502, -0.246738, 2.851780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.776314, -0.329252, 2.893304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223766, -0.731038, 0.644603,
		-0.057083, 0.650408, 0.757437,
		-0.972970, -0.206285, 0.103809,
		4.484423, -0.391138, 2.924447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.733831, 3.435398, 3.389697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.408409, 3.536757, 3.599045>,  <4.213156, 3.597573, 3.724653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.408409, 3.536757, 3.599045>,  <4.733831, 3.435398, 3.389697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.408409, 3.536757, 3.599045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103091, 0.948650, -0.299057,
		-0.572275, -0.189345, -0.797904,
		-0.813556, 0.253399, 0.523369,
		4.164342, 3.612777, 3.756055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.199843, 3.593570, 2.950773>,  <4.733831, 3.435398, 3.389697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.199843, 3.593570, 2.950773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.150345, 3.783210, 3.299465>,  <4.120646, 3.896994, 3.508681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.150345, 3.783210, 3.299465>,  <4.199843, 3.593570, 2.950773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.150345, 3.783210, 3.299465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111015, 0.866355, -0.486935,
		-0.986085, -0.157031, -0.054576,
		-0.123746, 0.474100, 0.871732,
		4.113221, 3.925440, 3.560985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.553547, 3.932370, 3.012354>,  <4.199843, 3.593570, 2.950773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.553547, 3.932370, 3.012354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.810616, 4.158579, 3.219103>,  <3.964857, 4.294304, 3.343152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.810616, 4.158579, 3.219103>,  <3.553547, 3.932370, 3.012354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.810616, 4.158579, 3.219103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136468, 0.748354, -0.649109,
		-0.753890, 0.346627, 0.558122,
		0.642672, 0.565522, 0.516873,
		4.003417, 4.328236, 3.374165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.229997, 4.665458, 3.307144>,  <3.553547, 3.932370, 3.012354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.229997, 4.665458, 3.307144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.622337, 4.668835, 3.229315>,  <3.857742, 4.670862, 3.182617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.622337, 4.668835, 3.229315>,  <3.229997, 4.665458, 3.307144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.622337, 4.668835, 3.229315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106267, 0.860434, -0.498359,
		0.163209, 0.509493, 0.844855,
		0.980852, 0.008444, -0.194572,
		3.916593, 4.671368, 3.170943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.423717, 5.354049, 3.492863>,  <3.229997, 4.665458, 3.307144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.423717, 5.354049, 3.492863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.710579, 5.217849, 3.249636>,  <3.882696, 5.136128, 3.103699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.710579, 5.217849, 3.249636>,  <3.423717, 5.354049, 3.492863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.710579, 5.217849, 3.249636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014784, 0.864887, -0.501748,
		0.696757, 0.368821, 0.615224,
		0.717155, -0.340501, -0.608069,
		3.925725, 5.115698, 3.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.906696, 5.857413, 3.431771>,  <3.423717, 5.354049, 3.492863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.906696, 5.857413, 3.431771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.968864, 5.648093, 3.096628>,  <4.006166, 5.522501, 2.895543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.968864, 5.648093, 3.096628>,  <3.906696, 5.857413, 3.431771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.968864, 5.648093, 3.096628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131468, 0.829661, -0.542568,
		0.979061, 0.194477, 0.060149,
		0.155420, -0.523299, -0.837856,
		4.015491, 5.491104, 2.845271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.459374, 6.242083, 3.030040>,  <3.906696, 5.857413, 3.431771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.459374, 6.242083, 3.030040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.256256, 6.000203, 2.784607>,  <4.134386, 5.855075, 2.637347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.256256, 6.000203, 2.784607>,  <4.459374, 6.242083, 3.030040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.256256, 6.000203, 2.784607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100142, 0.665981, -0.739216,
		0.855638, -0.436815, -0.277626,
		-0.507794, -0.604700, -0.613583,
		4.103918, 5.818793, 2.600532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.728100, 6.230097, 2.346374>,  <4.459374, 6.242083, 3.030040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.728100, 6.230097, 2.346374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.367554, 6.095607, 2.237200>,  <4.151226, 6.014914, 2.171695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.367554, 6.095607, 2.237200>,  <4.728100, 6.230097, 2.346374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.367554, 6.095607, 2.237200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055965, 0.715400, -0.696470,
		0.429427, -0.612500, -0.663653,
		-0.901366, -0.336225, -0.272934,
		4.097144, 5.994740, 2.155319>
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
