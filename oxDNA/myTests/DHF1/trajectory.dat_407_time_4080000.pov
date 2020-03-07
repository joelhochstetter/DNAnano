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
	<3.437475, 0.472215, 4.612597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387913, 0.840828, 4.465397>,  <3.358176, 1.061996, 4.377077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387913, 0.840828, 4.465397>,  <3.437475, 0.472215, 4.612597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.387913, 0.840828, 4.465397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982243, 0.061252, -0.177334,
		-0.140878, -0.383440, -0.912758,
		-0.123906, 0.921533, -0.368002,
		3.350741, 1.117288, 4.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.800049, 0.534945, 4.048755>,  <3.437475, 0.472215, 4.612597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.800049, 0.534945, 4.048755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.745270, 0.921127, 4.137424>,  <3.712402, 1.152837, 4.190626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.745270, 0.921127, 4.137424>,  <3.800049, 0.534945, 4.048755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.745270, 0.921127, 4.137424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902011, 0.214032, -0.374922,
		-0.409416, 0.148608, -0.900163,
		-0.136948, 0.965456, 0.221674,
		3.704185, 1.210764, 4.203927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.897790, 1.057752, 3.404835>,  <3.800049, 0.534945, 4.048755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.897790, 1.057752, 3.404835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.007401, 1.167011, 3.773682>,  <4.073167, 1.232567, 3.994990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.007401, 1.167011, 3.773682>,  <3.897790, 1.057752, 3.404835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.007401, 1.167011, 3.773682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889715, 0.292020, -0.350900,
		-0.365124, 0.916578, -0.163002,
		0.274027, 0.273148, 0.922117,
		4.089609, 1.248956, 4.050317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.989747, 1.845349, 3.650736>,  <3.897790, 1.057752, 3.404835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.989747, 1.845349, 3.650736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.232197, 1.588512, 3.838493>,  <4.377667, 1.434410, 3.951148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.232197, 1.588512, 3.838493>,  <3.989747, 1.845349, 3.650736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.232197, 1.588512, 3.838493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794944, 0.469748, -0.383929,
		0.026021, 0.605851, 0.795152,
		0.606125, -0.642091, 0.469394,
		4.414034, 1.395885, 3.979312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.629679, 2.231136, 3.839931>,  <3.989747, 1.845349, 3.650736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.629679, 2.231136, 3.839931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750736, 1.851147, 3.870804>,  <4.823370, 1.623153, 3.889327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750736, 1.851147, 3.870804>,  <4.629679, 2.231136, 3.839931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.750736, 1.851147, 3.870804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934281, 0.279677, -0.221131,
		0.188483, 0.139033, 0.972185,
		0.302642, -0.949974, 0.077181,
		4.841529, 1.566154, 3.893958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.266921, 2.129248, 4.361050>,  <4.629679, 2.231136, 3.839931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.266921, 2.129248, 4.361050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265533, 1.817875, 4.109962>,  <5.264701, 1.631051, 3.959310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265533, 1.817875, 4.109962>,  <5.266921, 2.129248, 4.361050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.265533, 1.817875, 4.109962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947302, 0.198516, -0.251414,
		0.320322, -0.595512, 0.736722,
		-0.003469, -0.778432, -0.627719,
		5.264493, 1.584345, 3.921647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.907670, 1.794970, 4.485754>,  <5.266921, 2.129248, 4.361050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.907670, 1.794970, 4.485754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779491, 1.671276, 4.127605>,  <5.702584, 1.597060, 3.912717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779491, 1.671276, 4.127605>,  <5.907670, 1.794970, 4.485754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.779491, 1.671276, 4.127605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854257, 0.314114, -0.414219,
		0.409339, -0.897611, 0.163510,
		-0.320447, -0.309235, -0.895370,
		5.683357, 1.578506, 3.858994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.425840, 1.367024, 4.232855>,  <5.907670, 1.794970, 4.485754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.425840, 1.367024, 4.232855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.206524, 1.488972, 3.921360>,  <6.074934, 1.562140, 3.734463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.206524, 1.488972, 3.921360>,  <6.425840, 1.367024, 4.232855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.206524, 1.488972, 3.921360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834032, 0.267696, -0.482421,
		0.061389, -0.913998, -0.401046,
		-0.548290, 0.304870, -0.778737,
		6.042037, 1.580433, 3.687739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.948659, 2.789880, 3.130741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.920683, 2.432503, 2.953262>,  <1.903897, 2.218076, 2.846775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.920683, 2.432503, 2.953262>,  <1.948659, 2.789880, 3.130741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.920683, 2.432503, 2.953262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975586, -0.031562, 0.217339,
		-0.208184, 0.448065, -0.869423,
		-0.069941, -0.893444, -0.443697,
		1.899701, 2.164470, 2.820153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.283806, 2.710542, 2.798865>,  <1.948659, 2.789880, 3.130741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.283806, 2.710542, 2.798865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.379732, 2.325958, 2.852654>,  <1.437288, 2.095208, 2.884926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.379732, 2.325958, 2.852654>,  <1.283806, 2.710542, 2.798865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.379732, 2.325958, 2.852654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922374, -0.182444, 0.340502,
		-0.302846, -0.205689, -0.930579,
		0.239816, -0.961461, 0.134470,
		1.451677, 2.037520, 2.892995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.643077, 2.440632, 2.762018>,  <1.283806, 2.710542, 2.798865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.643077, 2.440632, 2.762018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.877851, 2.167923, 2.936691>,  <1.018716, 2.004297, 3.041495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.877851, 2.167923, 2.936691>,  <0.643077, 2.440632, 2.762018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.877851, 2.167923, 2.936691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805716, -0.438857, 0.397778,
		-0.079552, -0.585313, -0.806895,
		0.586936, -0.681772, 0.436684,
		1.053932, 1.963391, 3.067696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.273822, 1.875839, 2.678175>,  <0.643077, 2.440632, 2.762018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.273822, 1.875839, 2.678175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.521378, 1.788307, 2.979927>,  <0.669911, 1.735788, 3.160978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.521378, 1.788307, 2.979927>,  <0.273822, 1.875839, 2.678175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.521378, 1.788307, 2.979927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757541, -0.420150, 0.499605,
		0.207625, -0.880674, -0.425799,
		0.618889, -0.218830, 0.754381,
		0.707044, 1.722658, 3.206241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.224914, 1.141736, 2.707751>,  <0.273822, 1.875839, 2.678175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.224914, 1.141736, 2.707751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359182, 1.300941, 3.049255>,  <0.439743, 1.396465, 3.254158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359182, 1.300941, 3.049255>,  <0.224914, 1.141736, 2.707751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.359182, 1.300941, 3.049255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709184, -0.489756, 0.507146,
		0.619987, -0.775708, 0.117869,
		0.335670, 0.398015, 0.853762,
		0.459883, 1.420346, 3.305384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.044553, 0.561636, 3.192612>,  <0.224914, 1.141736, 2.707751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.044553, 0.561636, 3.192612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.143936, 0.876190, 3.418839>,  <0.203566, 1.064923, 3.554574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.143936, 0.876190, 3.418839>,  <0.044553, 0.561636, 3.192612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.143936, 0.876190, 3.418839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698493, -0.259071, 0.667076,
		0.671101, -0.560784, 0.484917,
		0.248458, 0.786386, 0.565566,
		0.218474, 1.112106, 3.588508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.225029, 0.270111, 3.905925>,  <0.044553, 0.561636, 3.192612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.225029, 0.270111, 3.905925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.090307, 0.646111, 3.884140>,  <0.009474, 0.871710, 3.871069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.090307, 0.646111, 3.884140>,  <0.225029, 0.270111, 3.905925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.090307, 0.646111, 3.884140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713043, -0.216855, 0.666741,
		0.614925, 0.263396, 0.743297,
		-0.336804, 0.939998, -0.054463,
		-0.010734, 0.928110, 3.867801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.209099, 0.627467, 4.506787>,  <0.225029, 0.270111, 3.905925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.209099, 0.627467, 4.506787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.077745, 0.830414, 4.315651>,  <-0.249852, 0.952182, 4.200970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.077745, 0.830414, 4.315651>,  <0.209099, 0.627467, 4.506787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.077745, 0.830414, 4.315651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675858, -0.338801, 0.654545,
		0.170203, 0.792333, 0.585867,
		-0.717110, 0.507368, -0.477839,
		-0.292879, 0.982624, 4.172299>
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
