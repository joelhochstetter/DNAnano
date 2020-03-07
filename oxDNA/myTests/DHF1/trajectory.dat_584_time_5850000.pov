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
	<1.308586, 4.533175, 1.534775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438267, 4.888640, 1.405056>,  <1.516075, 5.101920, 1.327224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438267, 4.888640, 1.405056>,  <1.308586, 4.533175, 1.534775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.438267, 4.888640, 1.405056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177446, -0.393857, -0.901881,
		-0.929197, 0.234845, -0.285378,
		0.324201, 0.888665, -0.324298,
		1.535527, 5.155240, 1.307767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.992003, 4.709930, 0.878645>,  <1.308586, 4.533175, 1.534775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.992003, 4.709930, 0.878645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.354191, 4.877148, 0.907935>,  <1.571504, 4.977479, 0.925509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.354191, 4.877148, 0.907935>,  <0.992003, 4.709930, 0.878645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.354191, 4.877148, 0.907935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256013, -0.400396, -0.879853,
		-0.338499, 0.815427, -0.469572,
		0.905470, 0.418046, 0.073226,
		1.625832, 5.002562, 0.929903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.201704, 5.023200, 0.206983>,  <0.992003, 4.709930, 0.878645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.201704, 5.023200, 0.206983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.539536, 4.952837, 0.409266>,  <1.742234, 4.910619, 0.530637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.539536, 4.952837, 0.409266>,  <1.201704, 5.023200, 0.206983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.539536, 4.952837, 0.409266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425017, -0.354182, -0.833016,
		0.325648, 0.918483, -0.224371,
		0.844579, -0.175908, 0.505710,
		1.792909, 4.900064, 0.560979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.916063, 5.368917, -0.087782>,  <1.201704, 5.023200, 0.206983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.916063, 5.368917, -0.087782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.000484, 5.024289, 0.096892>,  <2.051137, 4.817513, 0.207697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.000484, 5.024289, 0.096892>,  <1.916063, 5.368917, -0.087782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.000484, 5.024289, 0.096892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496742, -0.312251, -0.809782,
		0.841845, 0.400246, 0.362076,
		0.211054, -0.861570, 0.461686,
		2.063801, 4.765818, 0.235398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.627605, 5.233276, -0.309755>,  <1.916063, 5.368917, -0.087782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.627605, 5.233276, -0.309755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517948, 4.873665, -0.173172>,  <2.452154, 4.657898, -0.091221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517948, 4.873665, -0.173172>,  <2.627605, 5.233276, -0.309755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.517948, 4.873665, -0.173172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371246, -0.426472, -0.824802,
		0.887143, -0.099348, 0.450675,
		-0.274143, -0.899028, 0.341459,
		2.435705, 4.603957, -0.070734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.239805, 4.813069, -0.443812>,  <2.627605, 5.233276, -0.309755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.239805, 4.813069, -0.443812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944393, 4.558635, -0.354397>,  <2.767146, 4.405975, -0.300747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944393, 4.558635, -0.354397>,  <3.239805, 4.813069, -0.443812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944393, 4.558635, -0.354397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406655, -0.684704, -0.604824,
		0.537777, -0.355778, 0.764341,
		-0.738530, -0.636084, 0.223539,
		2.722834, 4.367810, -0.287335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.533325, 4.150599, -0.219057>,  <3.239805, 4.813069, -0.443812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.533325, 4.150599, -0.219057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.175598, 4.067025, -0.377319>,  <2.960962, 4.016881, -0.472276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.175598, 4.067025, -0.377319>,  <3.533325, 4.150599, -0.219057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.175598, 4.067025, -0.377319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440325, -0.567968, -0.695361,
		-0.079434, -0.796090, 0.599943,
		-0.894318, -0.208934, -0.395654,
		2.907303, 4.004344, -0.496015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.586169, 3.488794, -0.325629>,  <3.533325, 4.150599, -0.219057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.586169, 3.488794, -0.325629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.281017, 3.609762, -0.554210>,  <3.097926, 3.682343, -0.691358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.281017, 3.609762, -0.554210>,  <3.586169, 3.488794, -0.325629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.281017, 3.609762, -0.554210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370581, -0.519735, -0.769770,
		-0.529820, -0.799002, 0.284406,
		-0.762863, 0.302444, -0.571461,
		3.052154, 3.700489, -0.725646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.033462, 3.680650, 3.081844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698090, 3.463781, 3.059636>,  <3.496866, 3.333660, 3.046310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698090, 3.463781, 3.059636>,  <4.033462, 3.680650, 3.081844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.698090, 3.463781, 3.059636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495859, 0.716576, 0.490554,
		-0.226179, 0.438827, -0.869640,
		-0.838431, -0.542172, -0.055522,
		3.446560, 3.301130, 3.042979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.401614, 4.048678, 2.947896>,  <4.033462, 3.680650, 3.081844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.401614, 4.048678, 2.947896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.295189, 3.738598, 3.177077>,  <3.231334, 3.552550, 3.314586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.295189, 3.738598, 3.177077>,  <3.401614, 4.048678, 2.947896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.295189, 3.738598, 3.177077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621579, 0.592271, 0.512693,
		-0.736783, -0.219727, -0.639430,
		-0.266063, -0.775200, 0.572953,
		3.215370, 3.506038, 3.348963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.690054, 4.251087, 3.126479>,  <3.401614, 4.048678, 2.947896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.690054, 4.251087, 3.126479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.790779, 3.956890, 3.378080>,  <2.851214, 3.780372, 3.529040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.790779, 3.956890, 3.378080>,  <2.690054, 4.251087, 3.126479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.790779, 3.956890, 3.378080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487988, 0.464773, 0.738819,
		-0.835738, -0.492989, -0.241875,
		0.251812, -0.735492, 0.629001,
		2.866323, 3.736243, 3.566780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.058149, 3.959728, 3.482111>,  <2.690054, 4.251087, 3.126479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.058149, 3.959728, 3.482111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.356552, 3.871830, 3.733565>,  <2.535594, 3.819091, 3.884438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.356552, 3.871830, 3.733565>,  <2.058149, 3.959728, 3.482111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.356552, 3.871830, 3.733565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517994, 0.401780, 0.755152,
		-0.418515, -0.888979, 0.185904,
		0.746007, -0.219745, 0.628637,
		2.580354, 3.805907, 3.922156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.723185, 3.793046, 4.074650>,  <2.058149, 3.959728, 3.482111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.723185, 3.793046, 4.074650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.094170, 3.857178, 4.209769>,  <2.316761, 3.895657, 4.290841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.094170, 3.857178, 4.209769>,  <1.723185, 3.793046, 4.074650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.094170, 3.857178, 4.209769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373385, 0.348997, 0.859526,
		0.019918, -0.923306, 0.383547,
		0.927463, 0.160331, 0.337797,
		2.372408, 3.905277, 4.311109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.665904, 3.613545, 4.802609>,  <1.723185, 3.793046, 4.074650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.665904, 3.613545, 4.802609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.009026, 3.817797, 4.779185>,  <2.214899, 3.940348, 4.765131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.009026, 3.817797, 4.779185>,  <1.665904, 3.613545, 4.802609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.009026, 3.817797, 4.779185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123643, 0.315601, 0.940802,
		0.498883, -0.799783, 0.333860,
		0.857804, 0.510630, -0.058561,
		2.266367, 3.970985, 4.761617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.082535, 3.428258, 5.396181>,  <1.665904, 3.613545, 4.802609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.082535, 3.428258, 5.396181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182823, 3.789482, 5.256685>,  <2.242996, 4.006217, 5.172987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182823, 3.789482, 5.256685>,  <2.082535, 3.428258, 5.396181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.182823, 3.789482, 5.256685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180602, 0.397556, 0.899629,
		0.951064, -0.162572, 0.262770,
		0.250720, 0.903061, -0.348740,
		2.258039, 4.060400, 5.152063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.470352, 3.805091, 5.949310>,  <2.082535, 3.428258, 5.396181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.470352, 3.805091, 5.949310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.286987, 4.060354, 5.701887>,  <2.176969, 4.213512, 5.553433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.286987, 4.060354, 5.701887>,  <2.470352, 3.805091, 5.949310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.286987, 4.060354, 5.701887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366154, 0.498570, 0.785723,
		0.809809, 0.586671, 0.005114,
		-0.458411, 0.638158, -0.618558,
		2.149464, 4.251801, 5.516319>
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
