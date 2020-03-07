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
	<3.517297, 1.137149, 1.528948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203962, 1.194134, 1.286926>,  <3.015962, 1.228325, 1.141713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203962, 1.194134, 1.286926>,  <3.517297, 1.137149, 1.528948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.203962, 1.194134, 1.286926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091702, 0.989217, 0.114193,
		0.614798, 0.033967, -0.787953,
		-0.783336, 0.142463, -0.605053,
		2.968962, 1.236873, 1.105410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.734809, 1.556178, 0.951199>,  <3.517297, 1.137149, 1.528948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.734809, 1.556178, 0.951199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353001, 1.624973, 1.048615>,  <3.123916, 1.666250, 1.107064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353001, 1.624973, 1.048615>,  <3.734809, 1.556178, 0.951199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.353001, 1.624973, 1.048615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194571, 0.978261, 0.071743,
		-0.225906, 0.115866, -0.967234,
		-0.954520, 0.171988, 0.243539,
		3.066645, 1.676570, 1.121676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.324900, 2.129414, 0.480870>,  <3.734809, 1.556178, 0.951199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.324900, 2.129414, 0.480870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.250882, 2.080013, 0.870846>,  <3.206471, 2.050373, 1.104831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.250882, 2.080013, 0.870846>,  <3.324900, 2.129414, 0.480870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.250882, 2.080013, 0.870846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071082, 0.987791, 0.138621,
		-0.980156, 0.094952, -0.174007,
		-0.185045, -0.123501, 0.974939,
		3.195369, 2.042963, 1.163327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.074957, 2.771998, 0.646799>,  <3.324900, 2.129414, 0.480870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.074957, 2.771998, 0.646799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.132063, 2.586163, 0.996376>,  <3.166327, 2.474661, 1.206122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.132063, 2.586163, 0.996376>,  <3.074957, 2.771998, 0.646799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.132063, 2.586163, 0.996376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085953, 0.885471, 0.456676,
		-0.986017, 0.009921, 0.166347,
		0.142765, -0.464588, 0.873942,
		3.174892, 2.446786, 1.258559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756266, 3.191288, 1.214485>,  <3.074957, 2.771998, 0.646799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756266, 3.191288, 1.214485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.025985, 2.952145, 1.387871>,  <3.187816, 2.808659, 1.491902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.025985, 2.952145, 1.387871>,  <2.756266, 3.191288, 1.214485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.025985, 2.952145, 1.387871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255587, 0.739649, 0.622571,
		-0.692821, -0.309009, 0.651547,
		0.674296, -0.597857, 0.433465,
		3.228274, 2.772788, 1.517910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.573939, 3.311448, 1.838020>,  <2.756266, 3.191288, 1.214485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.573939, 3.311448, 1.838020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944022, 3.159714, 1.841915>,  <3.166072, 3.068673, 1.844252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944022, 3.159714, 1.841915>,  <2.573939, 3.311448, 1.838020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944022, 3.159714, 1.841915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283824, 0.708830, 0.645758,
		-0.251863, -0.594696, 0.763480,
		0.925207, -0.379337, 0.009739,
		3.221584, 3.045913, 1.844837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756752, 3.339746, 2.551456>,  <2.573939, 3.311448, 1.838020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756752, 3.339746, 2.551456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.099216, 3.285141, 2.352116>,  <3.304694, 3.252378, 2.232511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.099216, 3.285141, 2.352116>,  <2.756752, 3.339746, 2.551456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.099216, 3.285141, 2.352116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484060, 0.549307, 0.681136,
		0.180764, -0.824394, 0.536376,
		0.856160, -0.136513, -0.498352,
		3.356063, 3.244187, 2.202610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.229564, 3.445197, 3.070642>,  <2.756752, 3.339746, 2.551456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.229564, 3.445197, 3.070642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.438798, 3.499615, 2.734100>,  <3.564338, 3.532265, 2.532176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.438798, 3.499615, 2.734100>,  <3.229564, 3.445197, 3.070642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.438798, 3.499615, 2.734100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501155, 0.749381, 0.432749,
		0.689366, -0.648013, 0.323812,
		0.523085, 0.136043, -0.841353,
		3.595723, 3.540428, 2.481694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.605469, 4.610583, 3.418024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.616339, 4.738625, 3.039227>,  <4.622861, 4.815450, 2.811948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.616339, 4.738625, 3.039227>,  <4.605469, 4.610583, 3.418024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.616339, 4.738625, 3.039227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409333, -0.860713, -0.302686,
		-0.911980, 0.395861, 0.107639,
		0.027175, 0.320104, -0.946992,
		4.624491, 4.834656, 2.755129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.912068, 4.696928, 3.076002>,  <4.605469, 4.610583, 3.418024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.912068, 4.696928, 3.076002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.204092, 4.619514, 2.813839>,  <4.379306, 4.573066, 2.656541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.204092, 4.619514, 2.813839>,  <3.912068, 4.696928, 3.076002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.204092, 4.619514, 2.813839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512282, -0.789754, -0.337426,
		-0.452307, 0.582094, -0.675711,
		0.730059, -0.193534, -0.655407,
		4.423110, 4.561454, 2.617217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.671965, 4.686633, 2.352159>,  <3.912068, 4.696928, 3.076002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.671965, 4.686633, 2.352159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.978636, 4.437080, 2.412792>,  <4.162639, 4.287349, 2.449172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.978636, 4.437080, 2.412792>,  <3.671965, 4.686633, 2.352159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.978636, 4.437080, 2.412792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551245, -0.760693, -0.342747,
		0.329141, 0.179218, -0.927118,
		0.766678, -0.623881, 0.151583,
		4.208639, 4.249916, 2.458267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.862957, 4.377284, 1.698691>,  <3.671965, 4.686633, 2.352159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.862957, 4.377284, 1.698691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.961121, 4.137016, 2.003052>,  <4.020019, 3.992856, 2.185668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.961121, 4.137016, 2.003052>,  <3.862957, 4.377284, 1.698691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.961121, 4.137016, 2.003052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375120, -0.782600, -0.496812,
		0.893901, -0.163508, -0.417380,
		0.245409, -0.600669, 0.760902,
		4.034743, 3.956816, 2.231322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.318347, 3.834643, 1.460323>,  <3.862957, 4.377284, 1.698691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.318347, 3.834643, 1.460323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.089781, 3.724075, 1.769405>,  <3.952641, 3.657735, 1.954855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.089781, 3.724075, 1.769405>,  <4.318347, 3.834643, 1.460323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089781, 3.724075, 1.769405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341944, -0.775744, -0.530373,
		0.746028, -0.567286, 0.348753,
		-0.571416, -0.276419, 0.772707,
		3.918356, 3.641150, 2.001217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.533653, 3.163656, 1.585819>,  <4.318347, 3.834643, 1.460323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.533653, 3.163656, 1.585819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.177410, 3.197212, 1.764606>,  <3.963664, 3.217346, 1.871879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.177410, 3.197212, 1.764606>,  <4.533653, 3.163656, 1.585819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.177410, 3.197212, 1.764606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279202, -0.876672, -0.391782,
		0.358978, -0.473718, 0.804193,
		-0.890607, 0.083891, 0.446968,
		3.910228, 3.222379, 1.898697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.421678, 2.555811, 1.890425>,  <4.533653, 3.163656, 1.585819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.421678, 2.555811, 1.890425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.046684, 2.694901, 1.884594>,  <3.821688, 2.778354, 1.881095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.046684, 2.694901, 1.884594>,  <4.421678, 2.555811, 1.890425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.046684, 2.694901, 1.884594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308122, -0.848734, -0.429781,
		-0.161818, -0.398421, 0.902816,
		-0.937484, 0.347724, -0.014578,
		3.765439, 2.799218, 1.880221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.022975, 2.047394, 2.310671>,  <4.421678, 2.555811, 1.890425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.022975, 2.047394, 2.310671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.797615, 2.265602, 2.062481>,  <3.662399, 2.396527, 1.913567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.797615, 2.265602, 2.062481>,  <4.022975, 2.047394, 2.310671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.797615, 2.265602, 2.062481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460355, -0.830906, -0.312521,
		-0.686042, 0.109564, 0.719266,
		-0.563401, 0.545519, -0.620474,
		3.628595, 2.429258, 1.876339>
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
