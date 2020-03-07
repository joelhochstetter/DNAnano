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
	<3.136426, 2.519180, 0.803734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.908554, 2.630074, 1.113213>,  <2.771831, 2.696610, 1.298900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.908554, 2.630074, 1.113213>,  <3.136426, 2.519180, 0.803734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.908554, 2.630074, 1.113213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007283, 0.943054, -0.332559,
		-0.821834, -0.183818, -0.539258,
		-0.569680, 0.277235, 0.773696,
		2.737650, 2.713244, 1.345321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.407210, 2.709850, 0.646072>,  <3.136426, 2.519180, 0.803734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.407210, 2.709850, 0.646072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.570786, 2.902863, 0.955893>,  <2.668931, 3.018670, 1.141785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.570786, 2.902863, 0.955893>,  <2.407210, 2.709850, 0.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.570786, 2.902863, 0.955893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141446, 0.872025, -0.468577,
		-0.901533, 0.082063, 0.424858,
		0.408939, 0.482532, 0.774552,
		2.693467, 3.047622, 1.188258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.877318, 3.185734, 0.897290>,  <2.407210, 2.709850, 0.646072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.877318, 3.185734, 0.897290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.263062, 3.284195, 0.936111>,  <2.494508, 3.343271, 0.959404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.263062, 3.284195, 0.936111>,  <1.877318, 3.185734, 0.897290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.263062, 3.284195, 0.936111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151851, 0.815253, -0.558841,
		-0.216684, 0.524186, 0.823575,
		0.964360, 0.246153, 0.097054,
		2.552369, 3.358041, 0.965228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.894007, 3.779400, 1.250399>,  <1.877318, 3.185734, 0.897290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.894007, 3.779400, 1.250399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.208542, 3.735497, 1.007212>,  <2.397263, 3.709155, 0.861299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.208542, 3.735497, 1.007212>,  <1.894007, 3.779400, 1.250399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.208542, 3.735497, 1.007212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224468, 0.866079, -0.446679,
		0.575576, 0.487710, 0.656393,
		0.786338, -0.109758, -0.607969,
		2.444443, 3.702569, 0.824821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.377378, 4.285939, 1.349120>,  <1.894007, 3.779400, 1.250399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.377378, 4.285939, 1.349120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366623, 4.167633, 0.967167>,  <2.360170, 4.096649, 0.737995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366623, 4.167633, 0.967167>,  <2.377378, 4.285939, 1.349120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366623, 4.167633, 0.967167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200015, 0.937502, -0.284750,
		0.979424, 0.183334, -0.084366,
		-0.026889, -0.295766, -0.954882,
		2.358557, 4.078903, 0.680702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.870025, 4.611888, 1.000614>,  <2.377378, 4.285939, 1.349120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.870025, 4.611888, 1.000614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.615349, 4.501656, 0.712536>,  <2.462543, 4.435516, 0.539689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.615349, 4.501656, 0.712536>,  <2.870025, 4.611888, 1.000614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.615349, 4.501656, 0.712536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194427, 0.961156, -0.195902,
		0.746206, 0.015296, -0.665539,
		-0.636691, -0.275582, -0.720195,
		2.424342, 4.418981, 0.496477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.992537, 5.201528, 0.528234>,  <2.870025, 4.611888, 1.000614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.992537, 5.201528, 0.528234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.662735, 5.039413, 0.370281>,  <2.464853, 4.942145, 0.275509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.662735, 5.039413, 0.370281>,  <2.992537, 5.201528, 0.528234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.662735, 5.039413, 0.370281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250300, 0.887091, -0.387840,
		0.507483, -0.220938, -0.832855,
		-0.824506, -0.405286, -0.394883,
		2.415383, 4.917828, 0.251816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.961440, 5.406474, -0.114633>,  <2.992537, 5.201528, 0.528234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.961440, 5.406474, -0.114633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.590607, 5.305412, -0.003868>,  <2.368106, 5.244775, 0.062591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.590607, 5.305412, -0.003868>,  <2.961440, 5.406474, -0.114633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.590607, 5.305412, -0.003868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285965, 0.954312, -0.086678,
		-0.242361, -0.159545, -0.956978,
		-0.927084, -0.252655, 0.276913,
		2.312481, 5.229616, 0.079206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.330698, 6.243381, 0.963895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.961830, 6.184052, 0.821008>,  <1.740510, 6.148454, 0.735276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.961830, 6.184052, 0.821008>,  <2.330698, 6.243381, 0.963895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.961830, 6.184052, 0.821008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308942, -0.838137, -0.449535,
		-0.232719, -0.524907, 0.818727,
		-0.922169, -0.148324, -0.357216,
		1.685179, 6.139555, 0.713843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.981314, 5.614067, 1.251234>,  <2.330698, 6.243381, 0.963895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.981314, 5.614067, 1.251234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823143, 5.703636, 0.894921>,  <1.728240, 5.757378, 0.681133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823143, 5.703636, 0.894921>,  <1.981314, 5.614067, 1.251234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.823143, 5.703636, 0.894921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252021, -0.906154, -0.339662,
		-0.883244, -0.358809, 0.301887,
		-0.395430, 0.223923, -0.890783,
		1.704515, 5.770813, 0.627686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.332242, 5.228132, 0.976016>,  <1.981314, 5.614067, 1.251234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.332242, 5.228132, 0.976016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.571518, 5.336021, 0.674177>,  <1.715084, 5.400755, 0.493074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.571518, 5.336021, 0.674177>,  <1.332242, 5.228132, 0.976016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.571518, 5.336021, 0.674177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193983, -0.962386, -0.190220,
		-0.777521, -0.032591, -0.628012,
		0.598190, 0.269724, -0.754597,
		1.750975, 5.416939, 0.447798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.129033, 4.804029, 0.462302>,  <1.332242, 5.228132, 0.976016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.129033, 4.804029, 0.462302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.494545, 4.936867, 0.368731>,  <1.713852, 5.016570, 0.312589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.494545, 4.936867, 0.368731>,  <1.129033, 4.804029, 0.462302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.494545, 4.936867, 0.368731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301217, -0.940324, -0.158301,
		-0.272537, 0.074189, -0.959281,
		0.913779, 0.332095, -0.233926,
		1.768679, 5.036495, 0.298554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.223540, 4.433114, -0.119002>,  <1.129033, 4.804029, 0.462302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.223540, 4.433114, -0.119002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.582726, 4.558792, 0.004249>,  <1.798237, 4.634199, 0.078199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.582726, 4.558792, 0.004249>,  <1.223540, 4.433114, -0.119002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.582726, 4.558792, 0.004249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333255, -0.942785, -0.009837,
		0.287406, 0.111518, -0.951295,
		0.897964, 0.314197, 0.308126,
		1.852115, 4.653051, 0.096686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.709258, 4.282307, -0.548717>,  <1.223540, 4.433114, -0.119002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.709258, 4.282307, -0.548717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912170, 4.298935, -0.204406>,  <2.033918, 4.308912, 0.002180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912170, 4.298935, -0.204406>,  <1.709258, 4.282307, -0.548717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.912170, 4.298935, -0.204406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357194, -0.919140, -0.166117,
		0.784269, 0.391732, -0.481112,
		0.507282, 0.041570, 0.860777,
		2.064355, 4.311406, 0.053827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.134105, 3.700322, -0.536075>,  <1.709258, 4.282307, -0.548717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.134105, 3.700322, -0.536075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182205, 3.813713, -0.155511>,  <2.211065, 3.881747, 0.072827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182205, 3.813713, -0.155511>,  <2.134105, 3.700322, -0.536075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.182205, 3.813713, -0.155511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398027, -0.891730, 0.215388,
		0.909458, 0.352787, -0.220062,
		0.120249, 0.283477, 0.951410,
		2.218280, 3.898756, 0.129912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.668164, 3.353583, -0.387519>,  <2.134105, 3.700322, -0.536075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.668164, 3.353583, -0.387519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.544930, 3.442146, -0.017425>,  <2.470989, 3.495285, 0.204632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.544930, 3.442146, -0.017425>,  <2.668164, 3.353583, -0.387519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.544930, 3.442146, -0.017425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239861, -0.923046, 0.300754,
		0.920625, 0.314586, 0.231270,
		-0.308086, 0.221409, 0.925236,
		2.452504, 3.508569, 0.260146>
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
