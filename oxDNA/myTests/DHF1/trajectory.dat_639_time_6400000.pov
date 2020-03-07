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
	<-1.241443, -0.433351, 3.408635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.060890, -0.348160, 3.062018>,  <-0.952558, -0.297045, 2.854048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.060890, -0.348160, 3.062018>,  <-1.241443, -0.433351, 3.408635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.060890, -0.348160, 3.062018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828956, 0.259353, 0.495548,
		0.330282, -0.942006, -0.059483,
		0.451382, 0.212980, -0.866541,
		-0.925475, -0.284266, 2.802056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.589356, -0.245923, 3.649100>,  <-1.241443, -0.433351, 3.408635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.589356, -0.245923, 3.649100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.574982, -0.186945, 3.253733>,  <-0.566357, -0.151558, 3.016513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.574982, -0.186945, 3.253733>,  <-0.589356, -0.245923, 3.649100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.574982, -0.186945, 3.253733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910586, 0.402681, 0.093176,
		0.411755, -0.903387, -0.119791,
		0.035937, 0.147446, -0.988417,
		-0.564201, -0.142711, 2.957207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.013864, -0.644053, 3.249370>,  <-0.589356, -0.245923, 3.649100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.013864, -0.644053, 3.249370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.101616, -0.310230, 3.047227>,  <-0.154267, -0.109936, 2.925941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.101616, -0.310230, 3.047227>,  <-0.013864, -0.644053, 3.249370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.101616, -0.310230, 3.047227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953870, 0.292278, 0.068591,
		0.204949, -0.466998, -0.860180,
		-0.219380, 0.834558, -0.505358,
		-0.167430, -0.059863, 2.895620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.548185, -0.466857, 2.789723>,  <-0.013864, -0.644053, 3.249370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.548185, -0.466857, 2.789723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.360573, -0.119646, 2.854888>,  <0.248006, 0.088680, 2.893987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.360573, -0.119646, 2.854888>,  <0.548185, -0.466857, 2.789723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.360573, -0.119646, 2.854888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882724, 0.454803, 0.118120,
		0.028439, 0.199208, -0.979544,
		-0.469030, 0.868027, 0.162912,
		0.219864, 0.140762, 2.903762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.979307, -0.045572, 2.545559>,  <0.548185, -0.466857, 2.789723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.979307, -0.045572, 2.545559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.731201, 0.215406, 2.719725>,  <0.582338, 0.371994, 2.824224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.731201, 0.215406, 2.719725>,  <0.979307, -0.045572, 2.545559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.731201, 0.215406, 2.719725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769240, 0.614542, 0.174951,
		-0.153434, 0.443453, -0.883067,
		-0.620264, 0.652447, 0.435414,
		0.545122, 0.411140, 2.850349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.026039, 0.604168, 2.215334>,  <0.979307, -0.045572, 2.545559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.026039, 0.604168, 2.215334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.915245, 0.645533, 2.597451>,  <0.848769, 0.670352, 2.826722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.915245, 0.645533, 2.597451>,  <1.026039, 0.604168, 2.215334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.915245, 0.645533, 2.597451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808753, 0.561924, 0.173666,
		-0.518843, 0.820700, -0.239279,
		-0.276984, 0.103413, 0.955294,
		0.832150, 0.676556, 2.884039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.134243, 1.400412, 2.356824>,  <1.026039, 0.604168, 2.215334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.134243, 1.400412, 2.356824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.140961, 1.196615, 2.700949>,  <1.144991, 1.074337, 2.907423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.140961, 1.196615, 2.700949>,  <1.134243, 1.400412, 2.356824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140961, 1.196615, 2.700949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648473, 0.660477, 0.378487,
		-0.761052, 0.551533, 0.341484,
		0.016794, -0.509492, 0.860312,
		1.145999, 1.043768, 2.959042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.125745, 1.938295, 2.888988>,  <1.134243, 1.400412, 2.356824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.125745, 1.938295, 2.888988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.292274, 1.612703, 3.051032>,  <1.392192, 1.417348, 3.148258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.292274, 1.612703, 3.051032>,  <1.125745, 1.938295, 2.888988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.292274, 1.612703, 3.051032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710786, 0.569215, 0.413252,
		-0.566973, 0.115901, 0.815542,
		0.416323, -0.813979, 0.405110,
		1.417171, 1.368510, 3.172565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.958837, 1.573130, 3.259017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.873741, 1.313048, 3.550763>,  <2.822684, 1.156999, 3.725811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.873741, 1.313048, 3.550763>,  <2.958837, 1.573130, 3.259017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.873741, 1.313048, 3.550763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822061, -0.284386, -0.493296,
		0.528165, -0.704527, -0.474008,
		-0.212739, -0.650205, 0.729367,
		2.809920, 1.117986, 3.769573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.590697, 0.977004, 2.964890>,  <2.958837, 1.573130, 3.259017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.590697, 0.977004, 2.964890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463760, 1.006331, 3.343080>,  <2.387599, 1.023927, 3.569993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463760, 1.006331, 3.343080>,  <2.590697, 0.977004, 2.964890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.463760, 1.006331, 3.343080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946585, -0.084616, -0.311153,
		0.057189, -0.993713, 0.096253,
		-0.317341, 0.073317, 0.945473,
		2.368558, 1.028327, 3.626721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.169781, 0.374738, 3.306992>,  <2.590697, 0.977003, 2.964890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.169781, 0.374738, 3.306992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.063004, 0.722620, 3.473054>,  <1.998937, 0.931350, 3.572691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.063004, 0.722620, 3.473054>,  <2.169781, 0.374738, 3.306992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.063004, 0.722620, 3.473054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953890, -0.177103, -0.242339,
		-0.137238, -0.460705, 0.876879,
		-0.266945, 0.869704, 0.415156,
		1.982920, 0.983532, 3.597600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.634215, 0.238261, 3.784019>,  <2.169781, 0.374738, 3.306992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.634215, 0.238261, 3.784019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.561409, 0.597414, 3.623681>,  <1.517726, 0.812906, 3.527478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.561409, 0.597414, 3.623681>,  <1.634215, 0.238261, 3.784019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.561409, 0.597414, 3.623681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983288, -0.167825, 0.070564,
		-0.003914, 0.406991, 0.913424,
		-0.182014, 0.897883, -0.400846,
		1.506805, 0.866779, 3.503427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.007180, 0.528046, 4.124022>,  <1.634215, 0.238261, 3.784019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.007180, 0.528046, 4.124022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.041664, 0.697558, 3.763360>,  <1.062355, 0.799265, 3.546963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.041664, 0.697558, 3.763360>,  <1.007180, 0.528046, 4.124022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.041664, 0.697558, 3.763360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954993, -0.222675, -0.195969,
		-0.283823, 0.877968, 0.385509,
		0.086211, 0.423779, -0.901654,
		1.067527, 0.824692, 3.492864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.399604, 0.899884, 4.054025>,  <1.007180, 0.528046, 4.124022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.399604, 0.899884, 4.054025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.546822, 0.838408, 3.687217>,  <0.635152, 0.801522, 3.467133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.546822, 0.838408, 3.687217>,  <0.399604, 0.899884, 4.054025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.546822, 0.838408, 3.687217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884256, -0.362765, -0.294096,
		-0.287462, 0.919119, -0.269415,
		0.368044, -0.153691, -0.917019,
		0.657235, 0.792301, 3.412112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.105909, 1.211543, 3.613651>,  <0.399604, 0.899884, 4.054025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.105909, 1.211543, 3.613651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.083183, 0.934169, 3.396147>,  <0.196639, 0.767744, 3.265646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.083183, 0.934169, 3.396147>,  <-0.105909, 1.211543, 3.613651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.083183, 0.934169, 3.396147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870976, -0.273928, -0.407877,
		0.133885, 0.666417, -0.733460,
		0.472732, -0.693435, -0.543758,
		0.225003, 0.726138, 3.233020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.465976, 1.253410, 2.951952>,  <-0.105909, 1.211543, 3.613651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.465976, 1.253410, 2.951952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.261002, 0.910766, 2.976051>,  <-0.138017, 0.705180, 2.990510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.261002, 0.910766, 2.976051>,  <-0.465976, 1.253410, 2.951952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.261002, 0.910766, 2.976051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754995, -0.482852, -0.443663,
		0.409136, 0.181863, -0.894166,
		0.512436, -0.856609, 0.060246,
		-0.107271, 0.653783, 2.994125>
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
