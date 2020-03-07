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
	<3.266645, 1.520038, 3.326103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.383812, 1.196475, 3.122194>,  <3.454112, 1.002337, 2.999849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.383812, 1.196475, 3.122194>,  <3.266645, 1.520038, 3.326103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.383812, 1.196475, 3.122194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550255, 0.578634, -0.601999,
		0.781933, -0.104168, 0.614598,
		0.292918, -0.808908, -0.509771,
		3.471687, 0.953803, 2.969263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.823481, 1.674496, 3.044356>,  <3.266645, 1.520038, 3.326103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.823481, 1.674496, 3.044356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.789238, 1.335465, 2.834867>,  <3.768692, 1.132047, 2.709174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.789238, 1.335465, 2.834867>,  <3.823481, 1.674496, 3.044356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.789238, 1.335465, 2.834867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680804, 0.334029, -0.651867,
		0.727446, -0.412356, 0.548439,
		-0.085607, -0.847577, -0.523722,
		3.763556, 1.081192, 2.677751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.400145, 1.254402, 2.997229>,  <3.823481, 1.674496, 3.044356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.400145, 1.254402, 2.997229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.166122, 1.223423, 2.674314>,  <4.025709, 1.204835, 2.480566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.166122, 1.223423, 2.674314>,  <4.400145, 1.254402, 2.997229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.166122, 1.223423, 2.674314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589734, 0.642686, -0.489049,
		0.556707, -0.762205, -0.330334,
		-0.585057, -0.077448, -0.807286,
		3.990606, 1.200188, 2.432129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.770687, 1.093509, 2.391338>,  <4.400145, 1.254402, 2.997229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.770687, 1.093509, 2.391338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.435776, 1.299934, 2.319067>,  <4.234829, 1.423790, 2.275704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.435776, 1.299934, 2.319067>,  <4.770687, 1.093509, 2.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.435776, 1.299934, 2.319067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522491, 0.657752, -0.542555,
		-0.161152, -0.548672, -0.820359,
		-0.837278, 0.516064, -0.180678,
		4.184592, 1.454753, 2.264863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.891382, 1.418166, 1.674168>,  <4.770687, 1.093509, 2.391338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.891382, 1.418166, 1.674168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.598801, 1.643277, 1.828186>,  <4.423252, 1.778343, 1.920597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.598801, 1.643277, 1.828186>,  <4.891382, 1.418166, 1.674168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.598801, 1.643277, 1.828186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387840, 0.807795, -0.443901,
		-0.560854, -0.175356, -0.809131,
		-0.731453, 0.562777, 0.385045,
		4.379365, 1.812110, 1.943699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.700936, 1.771615, 1.095731>,  <4.891382, 1.418166, 1.674168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.700936, 1.771615, 1.095731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.566345, 1.971174, 1.415201>,  <4.485590, 2.090909, 1.606884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.566345, 1.971174, 1.415201>,  <4.700936, 1.771615, 1.095731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.566345, 1.971174, 1.415201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249034, 0.865077, -0.435458,
		-0.908166, 0.052376, -0.415322,
		-0.336478, 0.498897, 0.798676,
		4.465402, 2.120843, 1.654804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.307121, 2.193459, 0.788724>,  <4.700936, 1.771615, 1.095731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.307121, 2.193459, 0.788724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.391594, 2.339062, 1.151579>,  <4.442277, 2.426424, 1.369292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.391594, 2.339062, 1.151579>,  <4.307121, 2.193459, 0.788724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.391594, 2.339062, 1.151579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327376, 0.848126, -0.416542,
		-0.920992, 0.384941, 0.059941,
		0.211182, 0.364009, 0.907138,
		4.454948, 2.448265, 1.423720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.008641, 2.833830, 0.799910>,  <4.307121, 2.193459, 0.788724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.008641, 2.833830, 0.799910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.280060, 2.847427, 1.093418>,  <4.442911, 2.855586, 1.269523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.280060, 2.847427, 1.093418>,  <4.008641, 2.833830, 0.799910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.280060, 2.847427, 1.093418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332583, 0.876457, -0.348156,
		-0.654952, 0.480279, 0.583412,
		0.678547, 0.033993, 0.733770,
		4.483624, 2.857625, 1.313549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.934257, 3.672822, 0.610654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.002296, 3.831451, 0.971497>,  <5.043120, 3.926629, 1.188002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.002296, 3.831451, 0.971497>,  <4.934257, 3.672822, 0.610654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.002296, 3.831451, 0.971497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258243, -0.865514, 0.429181,
		0.950987, -0.305966, -0.044812,
		0.170100, 0.396573, 0.902106,
		5.053327, 3.950423, 1.242128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.464601, 3.289559, 0.956371>,  <4.934257, 3.672822, 0.610654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.464601, 3.289559, 0.956371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.196945, 3.460531, 1.199535>,  <5.036352, 3.563114, 1.345434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.196945, 3.460531, 1.199535>,  <5.464601, 3.289559, 0.956371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.196945, 3.460531, 1.199535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335351, -0.903683, 0.266264,
		0.663169, -0.025696, 0.748029,
		-0.669139, 0.427430, 0.607912,
		4.996203, 3.588760, 1.381909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.517278, 3.013690, 1.663726>,  <5.464601, 3.289559, 0.956371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.517278, 3.013690, 1.663726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.145973, 3.162447, 1.661674>,  <4.923191, 3.251701, 1.660444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.145973, 3.162447, 1.661674>,  <5.517278, 3.013690, 1.663726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.145973, 3.162447, 1.661674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361833, -0.899790, 0.243833,
		0.086066, 0.228197, 0.969804,
		-0.928262, 0.371892, -0.005128,
		4.867495, 3.274015, 1.660136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.248714, 2.910958, 2.358171>,  <5.517278, 3.013690, 1.663726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.248714, 2.910958, 2.358171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.985512, 2.917982, 2.057049>,  <4.827590, 2.922197, 1.876375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.985512, 2.917982, 2.057049>,  <5.248714, 2.910958, 2.358171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.985512, 2.917982, 2.057049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430525, -0.828987, 0.356972,
		-0.617798, 0.558992, 0.553040,
		-0.658007, 0.017561, -0.752807,
		4.788110, 2.923250, 1.831207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.567502, 2.854372, 2.684274>,  <5.248714, 2.910958, 2.358171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.567502, 2.854372, 2.684274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.507278, 2.751333, 2.302494>,  <4.471144, 2.689510, 2.073426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.507278, 2.751333, 2.302494>,  <4.567502, 2.854372, 2.684274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.507278, 2.751333, 2.302494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523283, -0.798351, 0.298012,
		-0.838753, 0.544316, -0.014597,
		-0.150559, -0.257597, -0.954450,
		4.462111, 2.674054, 2.016159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.874371, 2.813481, 2.568928>,  <4.567502, 2.854372, 2.684274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.874371, 2.813481, 2.568928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037003, 2.597054, 2.274462>,  <4.134582, 2.467197, 2.097782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037003, 2.597054, 2.274462>,  <3.874371, 2.813481, 2.568928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.037003, 2.597054, 2.274462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570964, -0.779517, 0.257591,
		-0.713227, 0.315592, -0.625866,
		0.406580, -0.541068, -0.736165,
		4.158976, 2.434733, 2.053612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.305057, 2.525206, 2.290882>,  <3.874371, 2.813481, 2.568928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.305057, 2.525206, 2.290882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625580, 2.314137, 2.178122>,  <3.817894, 2.187495, 2.110466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625580, 2.314137, 2.178122>,  <3.305057, 2.525206, 2.290882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625580, 2.314137, 2.178122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465978, -0.846019, 0.259069,
		-0.375197, -0.076234, -0.923805,
		0.801307, -0.527674, -0.281900,
		3.865972, 2.155834, 2.093551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.143017, 2.123985, 1.765739>,  <3.305057, 2.525206, 2.290882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.143017, 2.123985, 1.765739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452667, 1.935741, 1.935093>,  <3.638458, 1.822795, 2.036705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452667, 1.935741, 1.935093>,  <3.143017, 2.123985, 1.765739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.452667, 1.935741, 1.935093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560708, -0.820193, 0.113535,
		0.293827, -0.325286, -0.898807,
		0.774127, -0.470609, 0.423385,
		3.684905, 1.794559, 2.062109>
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
