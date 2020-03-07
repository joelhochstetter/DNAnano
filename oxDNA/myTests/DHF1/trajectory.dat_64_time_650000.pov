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
	<0.893214, 6.066026, 4.020378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.579531, 6.048534, 3.772797>,  <0.391321, 6.038040, 3.624248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.579531, 6.048534, 3.772797>,  <0.893214, 6.066026, 4.020378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.579531, 6.048534, 3.772797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349633, -0.855222, -0.382562,
		-0.512614, -0.516415, 0.685961,
		-0.784209, -0.043728, -0.618954,
		0.344268, 6.035416, 3.587110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.459465, 5.488086, 4.220094>,  <0.893214, 6.066026, 4.020378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.459465, 5.488086, 4.220094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.398966, 5.587887, 3.837498>,  <0.362666, 5.647767, 3.607940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.398966, 5.587887, 3.837498>,  <0.459465, 5.488086, 4.220094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.398966, 5.587887, 3.837498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430586, -0.854367, -0.290950,
		-0.889786, -0.455857, 0.021790,
		-0.151248, 0.249501, -0.956490,
		0.353591, 5.662737, 3.550551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.026431, 5.018761, 3.853011>,  <0.459465, 5.488086, 4.220094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.026431, 5.018761, 3.853011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.288514, 5.180408, 3.597702>,  <0.445764, 5.277397, 3.444517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.288514, 5.180408, 3.597702>,  <0.026431, 5.018761, 3.853011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.288514, 5.180408, 3.597702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300430, -0.914593, -0.270668,
		-0.693141, -0.014413, -0.720657,
		0.655207, 0.404119, -0.638272,
		0.485076, 5.301644, 3.406220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.071943, 4.689096, 3.152573>,  <0.026431, 5.018761, 3.853011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.071943, 4.689096, 3.152573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.305385, 4.819309, 3.178425>,  <0.531781, 4.897437, 3.193936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.305385, 4.819309, 3.178425>,  <-0.071943, 4.689096, 3.152573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.305385, 4.819309, 3.178425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327077, -0.878825, -0.347400,
		-0.056293, 0.348848, -0.935487,
		0.943319, 0.325533, 0.064629,
		0.588380, 4.916969, 3.197814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.195170, 4.791262, 2.476420>,  <-0.071943, 4.689096, 3.152573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.195170, 4.791262, 2.476420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417852, 4.657558, 2.780617>,  <0.551462, 4.577336, 2.963135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417852, 4.657558, 2.780617>,  <0.195170, 4.791262, 2.476420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.417852, 4.657558, 2.780617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076715, -0.890875, -0.447725,
		0.827160, 0.307592, -0.470312,
		0.556706, -0.334260, 0.760493,
		0.584864, 4.557281, 3.008765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.635919, 4.330267, 2.149412>,  <0.195170, 4.791262, 2.476420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.635919, 4.330267, 2.149412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683442, 4.226471, 2.532776>,  <0.711956, 4.164193, 2.762794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683442, 4.226471, 2.532776>,  <0.635919, 4.330267, 2.149412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.683442, 4.226471, 2.532776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252698, -0.925561, -0.281922,
		0.960223, 0.275683, -0.044391,
		0.118808, -0.259490, 0.958410,
		0.719084, 4.148624, 2.820299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.256669, 4.039652, 2.179619>,  <0.635919, 4.330267, 2.149412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.256669, 4.039652, 2.179619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.028129, 3.880028, 2.466480>,  <0.891004, 3.784253, 2.638597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.028129, 3.880028, 2.466480>,  <1.256669, 4.039652, 2.179619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.028129, 3.880028, 2.466480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141277, -0.908604, -0.393038,
		0.808454, -0.123245, 0.575511,
		-0.571352, -0.399060, 0.717153,
		0.856723, 3.760310, 2.681626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.651305, 3.387006, 2.449689>,  <1.256669, 4.039652, 2.179619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.651305, 3.387006, 2.449689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.262847, 3.342522, 2.534077>,  <1.029772, 3.315831, 2.584709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.262847, 3.342522, 2.534077>,  <1.651305, 3.387006, 2.449689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.262847, 3.342522, 2.534077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041671, -0.950138, -0.309032,
		0.234818, -0.291324, 0.927357,
		-0.971146, -0.111210, 0.210970,
		0.971503, 3.309159, 2.597368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.563433, 1.525836, 2.385096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.208038, 1.663071, 2.263187>,  <-0.005198, 1.745411, 2.190042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.208038, 1.663071, 2.263187>,  <0.563433, 1.525836, 2.385096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.208038, 1.663071, 2.263187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235695, 0.911001, 0.338415,
		0.393753, 0.228844, -0.890275,
		-0.888485, 0.343085, -0.304772,
		-0.058507, 1.765996, 2.171756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.714354, 2.100328, 1.965681>,  <0.563433, 1.525836, 2.385096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.714354, 2.100328, 1.965681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379013, 2.109283, 2.183548>,  <0.177808, 2.114657, 2.314268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379013, 2.109283, 2.183548>,  <0.714354, 2.100328, 1.965681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.379013, 2.109283, 2.183548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287094, 0.867496, 0.406237,
		-0.463401, 0.496941, -0.733696,
		-0.838353, 0.022389, 0.544667,
		0.127507, 2.116000, 2.346948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.262225, 2.717095, 1.789651>,  <0.714354, 2.100328, 1.965681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.262225, 2.717095, 1.789651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.269558, 2.601646, 2.172558>,  <0.273958, 2.532377, 2.402302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.269558, 2.601646, 2.172558>,  <0.262225, 2.717095, 1.789651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.269558, 2.601646, 2.172558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269420, 0.923440, 0.273262,
		-0.962848, 0.252897, 0.094690,
		0.018334, -0.288621, 0.957268,
		0.275058, 2.515060, 2.459738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.226899, 3.042459, 2.262580>,  <0.262225, 2.717095, 1.789651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.226899, 3.042459, 2.262580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.128750, 2.959435, 2.425739>,  <0.342139, 2.909620, 2.523635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.128750, 2.959435, 2.425739>,  <-0.226899, 3.042459, 2.262580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.128750, 2.959435, 2.425739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133367, 0.970071, 0.202916,
		-0.437808, -0.126017, 0.890193,
		0.889122, -0.207560, 0.407898,
		0.395486, 2.897166, 2.548109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.248207, 3.219306, 2.953045>,  <-0.226899, 3.042459, 2.262580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.248207, 3.219306, 2.953045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.133778, 3.232239, 2.835060>,  <0.362968, 3.239998, 2.764269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.133778, 3.232239, 2.835060>,  <-0.248207, 3.219306, 2.953045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.133778, 3.232239, 2.835060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128208, 0.851513, 0.508417,
		0.267601, -0.523335, 0.809018,
		0.954962, 0.032331, -0.294962,
		0.420266, 3.241938, 2.746572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.056042, 3.294117, 3.557841>,  <-0.248207, 3.219306, 2.953045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.056042, 3.294117, 3.557841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329628, 3.430634, 3.299938>,  <0.493780, 3.512543, 3.145196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329628, 3.430634, 3.299938>,  <0.056042, 3.294117, 3.557841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.329628, 3.430634, 3.299938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098790, 0.832344, 0.545384,
		0.722794, -0.436720, 0.535579,
		0.683966, 0.341291, -0.644757,
		0.534818, 3.533021, 3.106511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.571246, 3.709178, 3.968188>,  <0.056042, 3.294117, 3.557841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.571246, 3.709178, 3.968188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.614517, 3.838135, 3.592026>,  <0.640480, 3.915509, 3.366329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.614517, 3.838135, 3.592026>,  <0.571246, 3.709178, 3.968188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.614517, 3.838135, 3.592026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210985, 0.916961, 0.338625,
		0.971485, -0.235043, 0.031175,
		0.108178, 0.322392, -0.940405,
		0.646971, 3.934852, 3.309904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.289463, 3.997756, 3.968421>,  <0.571246, 3.709178, 3.968188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.289463, 3.997756, 3.968421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.014986, 4.152260, 3.721863>,  <0.850300, 4.244962, 3.573928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.014986, 4.152260, 3.721863>,  <1.289463, 3.997756, 3.968421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.014986, 4.152260, 3.721863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315160, 0.921577, 0.226650,
		0.655602, -0.038738, -0.754112,
		-0.686192, 0.386258, -0.616396,
		0.809128, 4.268137, 3.536944>
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
