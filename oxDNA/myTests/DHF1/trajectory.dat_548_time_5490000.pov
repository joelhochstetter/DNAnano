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
	<4.777359, 1.865532, 4.698327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752209, 1.470150, 4.753468>,  <4.737119, 1.232921, 4.786552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752209, 1.470150, 4.753468>,  <4.777359, 1.865532, 4.698327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.752209, 1.470150, 4.753468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663072, -0.061859, -0.745996,
		0.745911, -0.138310, -0.651527,
		-0.062875, -0.988455, 0.137851,
		4.733346, 1.173613, 4.794823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.906061, 1.496174, 4.010833>,  <4.777359, 1.865532, 4.698327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.906061, 1.496174, 4.010833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666203, 1.271320, 4.238668>,  <4.522288, 1.136408, 4.375370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666203, 1.271320, 4.238668>,  <4.906061, 1.496174, 4.010833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.666203, 1.271320, 4.238668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620346, -0.123133, -0.774602,
		0.505565, -0.817829, -0.274881,
		-0.599645, -0.562134, 0.569589,
		4.486309, 1.102680, 4.409545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.718709, 0.771274, 3.685049>,  <4.906061, 1.496174, 4.010833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.718709, 0.771274, 3.685049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433678, 0.938374, 3.910515>,  <4.262659, 1.038633, 4.045794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433678, 0.938374, 3.910515>,  <4.718709, 0.771274, 3.685049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.433678, 0.938374, 3.910515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574773, 0.113119, -0.810456,
		-0.402330, -0.901493, 0.159506,
		-0.712577, 0.417750, 0.563665,
		4.219904, 1.063698, 4.079615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.073651, 0.417256, 3.528668>,  <4.718709, 0.771274, 3.685049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.073651, 0.417256, 3.528668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985764, 0.784279, 3.661219>,  <3.933031, 1.004493, 3.740749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985764, 0.784279, 3.661219>,  <4.073651, 0.417256, 3.528668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.985764, 0.784279, 3.661219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671184, 0.104332, -0.733912,
		-0.707980, -0.383669, 0.592927,
		-0.219718, 0.917558, 0.331377,
		3.919848, 1.059546, 3.760632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.370425, 0.366620, 3.642691>,  <4.073651, 0.417256, 3.528668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.370425, 0.366620, 3.642691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.449482, 0.757404, 3.610477>,  <3.496916, 0.991875, 3.591149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.449482, 0.757404, 3.610477>,  <3.370425, 0.366620, 3.642691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.449482, 0.757404, 3.610477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697988, 0.082567, -0.711334,
		-0.688296, 0.196801, 0.698225,
		0.197642, 0.976960, -0.080534,
		3.508775, 1.050493, 3.586317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.730426, 0.589734, 3.480869>,  <3.370425, 0.366620, 3.642691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.730426, 0.589734, 3.480869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974251, 0.885952, 3.367712>,  <3.120545, 1.063683, 3.299818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974251, 0.885952, 3.367712>,  <2.730426, 0.589734, 3.480869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.974251, 0.885952, 3.367712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561161, 0.151024, -0.813812,
		-0.559941, 0.654817, 0.507624,
		0.609561, 0.740545, -0.282893,
		3.157119, 1.108115, 3.282844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.399882, 1.203078, 3.244312>,  <2.730426, 0.589734, 3.480869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.399882, 1.203078, 3.244312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.731995, 1.308701, 3.047983>,  <2.931262, 1.372074, 2.930186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.731995, 1.308701, 3.047983>,  <2.399882, 1.203078, 3.244312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.731995, 1.308701, 3.047983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548598, 0.231795, -0.803313,
		-0.098349, 0.936240, 0.337316,
		0.830282, 0.264056, -0.490822,
		2.981079, 1.387917, 2.900737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.220029, 1.697503, 2.767832>,  <2.399882, 1.203078, 3.244312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.220029, 1.697503, 2.767832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.553993, 1.543198, 2.610804>,  <2.754372, 1.450615, 2.516587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.553993, 1.543198, 2.610804>,  <2.220029, 1.697503, 2.767832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.553993, 1.543198, 2.610804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406584, 0.048454, -0.912328,
		0.370964, 0.921325, -0.116390,
		0.834911, -0.385763, -0.392570,
		2.804466, 1.427469, 2.493032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.352272, 1.183635, 1.019165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702507, 1.376858, 1.018429>,  <2.912648, 1.492792, 1.017987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702507, 1.376858, 1.018429>,  <2.352272, 1.183635, 1.019165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.702507, 1.376858, 1.018429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185467, -0.332654, 0.924632,
		0.446038, -0.809936, -0.380859,
		0.875587, 0.483058, -0.001839,
		2.965183, 1.521775, 1.017877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.794290, 0.684408, 1.313248>,  <2.352272, 1.183635, 1.019165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.794290, 0.684408, 1.313248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.924301, 1.054417, 1.391930>,  <3.002308, 1.276422, 1.439139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.924301, 1.054417, 1.391930>,  <2.794290, 0.684408, 1.313248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.924301, 1.054417, 1.391930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130764, -0.249959, 0.959386,
		0.936620, -0.286105, -0.202203,
		0.325028, 0.925021, 0.196704,
		3.021810, 1.331923, 1.450941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.334898, 0.593889, 1.815955>,  <2.794290, 0.684408, 1.313248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.334898, 0.593889, 1.815955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.231041, 0.973869, 1.885441>,  <3.168727, 1.201858, 1.927132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.231041, 0.973869, 1.885441>,  <3.334898, 0.593889, 1.815955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.231041, 0.973869, 1.885441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163105, -0.134162, 0.977444,
		0.951831, 0.282120, -0.120107,
		-0.259643, 0.949952, 0.173714,
		3.153148, 1.258855, 1.937555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.940293, 1.086190, 1.942559>,  <3.334898, 0.593889, 1.815955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.940293, 1.086190, 1.942559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.597443, 1.152000, 2.137810>,  <3.391732, 1.191487, 2.254960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.597443, 1.152000, 2.137810>,  <3.940293, 1.086190, 1.942559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.597443, 1.152000, 2.137810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462717, -0.170458, 0.869964,
		0.226338, 0.971532, 0.069975,
		-0.857125, 0.164527, 0.488126,
		3.340305, 1.201359, 2.284248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.149588, 1.517395, 2.440219>,  <3.940293, 1.086190, 1.942559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.149588, 1.517395, 2.440219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.781502, 1.450729, 2.581882>,  <3.560650, 1.410730, 2.666880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.781502, 1.450729, 2.581882>,  <4.149588, 1.517395, 2.440219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.781502, 1.450729, 2.581882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364282, -0.033662, 0.930680,
		-0.143190, 0.985439, 0.091689,
		-0.920215, -0.166665, 0.354158,
		3.505437, 1.400730, 2.688130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.969483, 2.055131, 2.919440>,  <4.149588, 1.517395, 2.440219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.969483, 2.055131, 2.919440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717674, 1.768394, 3.039333>,  <3.566589, 1.596352, 3.111269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717674, 1.768394, 3.039333>,  <3.969483, 2.055131, 2.919440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.717674, 1.768394, 3.039333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261048, 0.168207, 0.950558,
		-0.731817, 0.676642, 0.081240,
		-0.629522, -0.716842, 0.299733,
		3.528818, 1.553342, 3.129253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.675356, 2.302500, 3.546753>,  <3.969483, 2.055131, 2.919440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.675356, 2.302500, 3.546753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.636665, 1.904392, 3.543125>,  <3.613451, 1.665527, 3.540948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.636665, 1.904392, 3.543125>,  <3.675356, 2.302500, 3.546753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.636665, 1.904392, 3.543125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449816, -0.051841, 0.891616,
		-0.887868, 0.082162, 0.452703,
		-0.096726, -0.995270, -0.009071,
		3.607648, 1.605811, 3.540404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.519403, 2.193092, 4.196329>,  <3.675356, 2.302500, 3.546753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.519403, 2.193092, 4.196329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.634926, 1.836800, 4.055935>,  <3.704240, 1.623024, 3.971699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.634926, 1.836800, 4.055935>,  <3.519403, 2.193092, 4.196329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.634926, 1.836800, 4.055935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395730, -0.222757, 0.890942,
		-0.871773, -0.396206, 0.288155,
		0.288808, -0.890730, -0.350984,
		3.721568, 1.569581, 3.950640>
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
