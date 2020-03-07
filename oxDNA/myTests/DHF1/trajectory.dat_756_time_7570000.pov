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
	<4.222142, 4.361831, 3.524195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.111816, 4.565105, 3.197840>,  <4.045621, 4.687070, 3.002026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.111816, 4.565105, 3.197840>,  <4.222142, 4.361831, 3.524195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.111816, 4.565105, 3.197840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221465, -0.859574, -0.460528,
		-0.935351, 0.053672, 0.349626,
		-0.275812, 0.508185, -0.815889,
		4.029073, 4.717561, 2.953073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.512976, 4.154418, 3.393697>,  <4.222142, 4.361831, 3.524195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.512976, 4.154418, 3.393697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.680534, 4.282444, 3.053795>,  <3.781070, 4.359260, 2.849854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.680534, 4.282444, 3.053795>,  <3.512976, 4.154418, 3.393697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.680534, 4.282444, 3.053795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522157, -0.680709, -0.513797,
		-0.742885, 0.658933, -0.118022,
		0.418896, 0.320066, -0.849755,
		3.806203, 4.378464, 2.798868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.033893, 4.420616, 2.766755>,  <3.512976, 4.154418, 3.393697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.033893, 4.420616, 2.766755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.374737, 4.284195, 2.607964>,  <3.579243, 4.202343, 2.512689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.374737, 4.284195, 2.607964>,  <3.033893, 4.420616, 2.766755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.374737, 4.284195, 2.607964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521522, -0.489783, -0.698661,
		0.043847, 0.802369, -0.595216,
		0.852110, -0.341052, -0.396978,
		3.630370, 4.181879, 2.488870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.223969, 4.691116, 2.078160>,  <3.033893, 4.420616, 2.766755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.223969, 4.691116, 2.078160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.315025, 4.309151, 2.154392>,  <3.369659, 4.079972, 2.200132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.315025, 4.309151, 2.154392>,  <3.223969, 4.691116, 2.078160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.315025, 4.309151, 2.154392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620165, -0.293069, -0.727672,
		0.750717, 0.047455, -0.658918,
		0.227640, -0.954913, 0.190582,
		3.383317, 4.022677, 2.211567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.244272, 4.276989, 1.452378>,  <3.223969, 4.691116, 2.078160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.244272, 4.276989, 1.452378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.211334, 3.969524, 1.706112>,  <3.191571, 3.785046, 1.858352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.211334, 3.969524, 1.706112>,  <3.244272, 4.276989, 1.452378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.211334, 3.969524, 1.706112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771941, -0.353381, -0.528421,
		0.630338, -0.533182, -0.564261,
		-0.082346, -0.768661, 0.634335,
		3.186630, 3.738926, 1.896412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.146639, 3.708441, 1.091041>,  <3.244272, 4.276989, 1.452378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.146639, 3.708441, 1.091041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.006809, 3.570341, 1.439432>,  <2.922911, 3.487481, 1.648467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.006809, 3.570341, 1.439432>,  <3.146639, 3.708441, 1.091041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.006809, 3.570341, 1.439432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757630, -0.442725, -0.479574,
		0.551176, -0.827525, -0.106806,
		-0.349574, -0.345249, 0.870977,
		2.901937, 3.466766, 1.700725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.167987, 2.996927, 1.058506>,  <3.146639, 3.708441, 1.091041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.167987, 2.996927, 1.058506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.897682, 3.105682, 1.332563>,  <2.735499, 3.170936, 1.496998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.897682, 3.105682, 1.332563>,  <3.167987, 2.996927, 1.058506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.897682, 3.105682, 1.332563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708284, -0.496943, -0.501380,
		0.204157, -0.824090, 0.528390,
		-0.675762, 0.271890, 0.685144,
		2.694954, 3.187249, 1.538106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.785058, 2.446389, 1.126317>,  <3.167987, 2.996927, 1.058506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.785058, 2.446389, 1.126317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579124, 2.767820, 1.245789>,  <2.455565, 2.960679, 1.317472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579124, 2.767820, 1.245789>,  <2.785058, 2.446389, 1.126317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.579124, 2.767820, 1.245789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708645, -0.202832, -0.675782,
		-0.482462, -0.559571, 0.673877,
		-0.514832, 0.803579, 0.298679,
		2.424675, 3.008894, 1.335392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.962493, 2.946959, 0.314658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123444, 2.667885, 0.551750>,  <2.220014, 2.500440, 0.694005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123444, 2.667885, 0.551750>,  <1.962493, 2.946959, 0.314658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.123444, 2.667885, 0.551750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463107, 0.713629, 0.525611,
		-0.789700, 0.063004, 0.610249,
		0.402376, -0.697685, 0.592731,
		2.244156, 2.458579, 0.729569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012805, 3.630347, 0.510458>,  <1.962493, 2.946959, 0.314658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012805, 3.630347, 0.510458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.776657, 3.486771, 0.799629>,  <1.634968, 3.400625, 0.973132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.776657, 3.486771, 0.799629>,  <2.012805, 3.630347, 0.510458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.776657, 3.486771, 0.799629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758694, 0.058824, 0.648786,
		-0.275401, 0.931505, 0.237598,
		-0.590371, -0.358940, 0.722928,
		1.599546, 3.379089, 1.016508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.881710, 4.047272, 1.100465>,  <2.012805, 3.630347, 0.510458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.881710, 4.047272, 1.100465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846680, 3.673264, 1.237907>,  <1.825661, 3.448858, 1.320373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846680, 3.673264, 1.237907>,  <1.881710, 4.047272, 1.100465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.846680, 3.673264, 1.237907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728170, 0.175294, 0.662602,
		-0.679779, 0.308231, 0.665503,
		-0.087576, -0.935022, 0.343606,
		1.820407, 3.392757, 1.340989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.636091, 3.923587, 1.808883>,  <1.881710, 4.047272, 1.100465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.636091, 3.923587, 1.808883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.882431, 3.633766, 1.685108>,  <2.030235, 3.459873, 1.610843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.882431, 3.633766, 1.685108>,  <1.636091, 3.923587, 1.808883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.882431, 3.633766, 1.685108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645835, 0.239315, 0.725000,
		-0.451248, -0.646337, 0.615324,
		0.615851, -0.724553, -0.309437,
		2.067186, 3.416400, 1.592277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.894727, 3.475516, 2.440824>,  <1.636091, 3.923587, 1.808883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.894727, 3.475516, 2.440824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.153542, 3.423611, 2.140289>,  <2.308830, 3.392467, 1.959969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.153542, 3.423611, 2.140289>,  <1.894727, 3.475516, 2.440824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.153542, 3.423611, 2.140289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762242, 0.133578, 0.633359,
		0.018176, -0.982507, 0.185340,
		0.647037, -0.129762, -0.751336,
		2.347653, 3.384682, 1.914889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.397142, 3.133693, 2.804560>,  <1.894727, 3.475516, 2.440824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.397142, 3.133693, 2.804560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.554344, 3.252224, 2.456367>,  <2.648665, 3.323343, 2.247452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.554344, 3.252224, 2.456367>,  <2.397142, 3.133693, 2.804560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.554344, 3.252224, 2.456367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893599, 0.100177, 0.437545,
		0.216859, -0.949818, -0.225429,
		0.393005, 0.296329, -0.870481,
		2.672246, 3.341122, 2.195223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.055957, 2.701824, 2.644076>,  <2.397142, 3.133693, 2.804560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.055957, 2.701824, 2.644076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.085358, 3.035969, 2.426170>,  <3.102998, 3.236455, 2.295427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.085358, 3.035969, 2.426170>,  <3.055957, 2.701824, 2.644076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.085358, 3.035969, 2.426170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898093, 0.182061, 0.400353,
		0.433620, -0.518676, -0.736851,
		0.073502, 0.835362, -0.544765,
		3.107408, 3.286577, 2.262741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.744582, 2.646158, 2.381708>,  <3.055957, 2.701824, 2.644076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.744582, 2.646158, 2.381708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.621262, 3.026657, 2.378231>,  <3.547269, 3.254957, 2.376145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.621262, 3.026657, 2.378231>,  <3.744582, 2.646158, 2.381708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.621262, 3.026657, 2.378231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877758, 0.287982, 0.382894,
		0.366731, 0.110417, -0.923751,
		-0.308302, 0.951249, -0.008693,
		3.528771, 3.312032, 2.375623>
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
