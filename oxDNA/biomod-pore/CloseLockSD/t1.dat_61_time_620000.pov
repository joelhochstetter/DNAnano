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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.587320, 14.686572, 15.055957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.447762, 15.057866, 15.107576>,  <4.364027, 15.280643, 15.138548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.447762, 15.057866, 15.107576>,  <4.587320, 14.686572, 15.055957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.447762, 15.057866, 15.107576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683810, 0.346312, -0.642240,
		-0.640840, -0.135830, -0.755562,
		-0.348895, 0.928234, 0.129048,
		4.343093, 15.336336, 15.146291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.463324, 14.955465, 14.434022>,  <4.587320, 14.686572, 15.055957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.463324, 14.955465, 14.434022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554089, 15.261651, 14.674879>,  <4.608548, 15.445362, 14.819393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554089, 15.261651, 14.674879>,  <4.463324, 14.955465, 14.434022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554089, 15.261651, 14.674879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743076, 0.263591, -0.615108,
		-0.629562, 0.587014, -0.508986,
		0.226913, 0.765464, 0.602142,
		4.622162, 15.491290, 14.855522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.711290, 15.614309, 14.009450>,  <4.463324, 14.955465, 14.434022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.711290, 15.614309, 14.009450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860533, 15.579558, 14.378935>,  <4.950078, 15.558707, 14.600626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860533, 15.579558, 14.378935>,  <4.711290, 15.614309, 14.009450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.860533, 15.579558, 14.378935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859172, 0.408112, -0.308654,
		-0.350162, 0.908789, 0.226913,
		0.373107, -0.086878, 0.923712,
		4.972465, 15.553494, 14.656049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.890189, 16.291288, 14.491780>,  <4.711290, 15.614309, 14.009450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.890189, 16.291288, 14.491780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138878, 15.988525, 14.572334>,  <5.288091, 15.806869, 14.620667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138878, 15.988525, 14.572334>,  <4.890189, 16.291288, 14.491780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.138878, 15.988525, 14.572334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760291, 0.521436, -0.387378,
		0.188199, 0.393953, 0.899657,
		0.621722, -0.756905, 0.201386,
		5.325395, 15.761454, 14.632750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.459021, 16.625338, 14.457414>,  <4.890189, 16.291288, 14.491780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.459021, 16.625338, 14.457414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.591171, 16.250736, 14.410408>,  <5.670461, 16.025974, 14.382205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.591171, 16.250736, 14.410408>,  <5.459021, 16.625338, 14.457414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.591171, 16.250736, 14.410408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831824, 0.347731, -0.432611,
		0.446006, 0.045173, 0.893889,
		0.330376, -0.936505, -0.117514,
		5.690284, 15.969785, 14.375154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.209777, 16.752773, 14.471479>,  <5.459021, 16.625338, 14.457414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.209777, 16.752773, 14.471479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.166152, 16.380777, 14.331064>,  <6.139977, 16.157579, 14.246815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.166152, 16.380777, 14.331064>,  <6.209777, 16.752773, 14.471479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.166152, 16.380777, 14.331064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897453, 0.059724, -0.437048,
		0.427415, -0.362705, 0.828107,
		-0.109062, -0.929988, -0.351038,
		6.133433, 16.101782, 14.225753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.865307, 16.547480, 14.490323>,  <6.209777, 16.752773, 14.471479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.865307, 16.547480, 14.490323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672872, 16.304775, 14.237217>,  <6.557411, 16.159153, 14.085353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672872, 16.304775, 14.237217>,  <6.865307, 16.547480, 14.490323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.672872, 16.304775, 14.237217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733104, 0.117363, -0.669914,
		0.480742, -0.786171, 0.388359,
		-0.481088, -0.606763, -0.632766,
		6.528546, 16.122746, 14.047387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.355569, 16.110106, 14.143456>,  <6.865307, 16.547480, 14.490323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.355569, 16.110106, 14.143456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.042905, 16.069233, 13.897345>,  <6.855306, 16.044710, 13.749678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.042905, 16.069233, 13.897345>,  <7.355569, 16.110106, 14.143456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.042905, 16.069233, 13.897345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594700, 0.175228, -0.784619,
		0.187991, -0.979210, -0.076199,
		-0.781660, -0.102186, -0.615278,
		6.808407, 16.038578, 13.712761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.508034, 15.607697, 13.556711>,  <7.355569, 16.110106, 14.143456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.508034, 15.607697, 13.556711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.197653, 15.816113, 13.414492>,  <7.011424, 15.941163, 13.329160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.197653, 15.816113, 13.414492>,  <7.508034, 15.607697, 13.556711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.197653, 15.816113, 13.414492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535508, 0.246250, -0.807831,
		-0.333359, -0.817238, -0.470100,
		-0.775953, 0.521040, -0.355548,
		6.964867, 15.972425, 13.307827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.456092, 15.343380, 12.784661>,  <7.508034, 15.607697, 13.556711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.456092, 15.343380, 12.784661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.278015, 15.696124, 12.846791>,  <7.171169, 15.907770, 12.884069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.278015, 15.696124, 12.846791>,  <7.456092, 15.343380, 12.784661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.278015, 15.696124, 12.846791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470746, 0.378056, -0.797165,
		-0.761710, -0.281772, -0.583440,
		-0.445192, 0.881860, 0.155326,
		7.144457, 15.960682, 12.893389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.165155, 15.441737, 12.107637>,  <7.456092, 15.343380, 12.784661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.165155, 15.441737, 12.107637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.207424, 15.797049, 12.286431>,  <7.232786, 16.010235, 12.393707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.207424, 15.797049, 12.286431>,  <7.165155, 15.441737, 12.107637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.207424, 15.797049, 12.286431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663676, 0.271738, -0.696917,
		-0.740518, 0.370298, -0.560814,
		0.105672, 0.888278, 0.446984,
		7.239126, 16.063532, 12.420527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.093419, 15.983941, 11.577654>,  <7.165155, 15.441737, 12.107637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.093419, 15.983941, 11.577654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.279150, 16.166285, 11.881389>,  <7.390589, 16.275690, 12.063629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.279150, 16.166285, 11.881389>,  <7.093419, 15.983941, 11.577654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.279150, 16.166285, 11.881389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688612, 0.353352, -0.633211,
		-0.556967, 0.816907, -0.149837,
		0.464329, 0.455858, 0.759337,
		7.418449, 16.303041, 12.109190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.242826, 16.719170, 11.306683>,  <7.093419, 15.983941, 11.577654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.242826, 16.719170, 11.306683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.489653, 16.646349, 11.612907>,  <7.637749, 16.602657, 11.796642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.489653, 16.646349, 11.612907>,  <7.242826, 16.719170, 11.306683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.489653, 16.646349, 11.612907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749338, 0.432969, -0.501030,
		-0.240252, 0.882834, 0.403588,
		0.617067, -0.182051, 0.765562,
		7.674773, 16.591734, 11.842576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.556631, 17.256046, 11.339697>,  <7.242826, 16.719170, 11.306683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.556631, 17.256046, 11.339697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.799812, 17.018925, 11.550971>,  <7.945720, 16.876652, 11.677735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.799812, 17.018925, 11.550971>,  <7.556631, 17.256046, 11.339697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.799812, 17.018925, 11.550971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793796, 0.467915, -0.388515,
		-0.016834, 0.655470, 0.755034,
		0.607951, -0.592803, 0.528186,
		7.982197, 16.841084, 11.709427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.117313, 17.735708, 11.642666>,  <7.556631, 17.256046, 11.339697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.117313, 17.735708, 11.642666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.272690, 17.367855, 11.665960>,  <8.365915, 17.147144, 11.679936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.272690, 17.367855, 11.665960>,  <8.117313, 17.735708, 11.642666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.272690, 17.367855, 11.665960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870448, 0.345459, -0.350683,
		0.302381, 0.186910, 0.934682,
		0.388440, -0.919632, 0.058235,
		8.389222, 17.091965, 11.683431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.669987, 17.820292, 12.072115>,  <8.117313, 17.735708, 11.642666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.669987, 17.820292, 12.072115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720975, 17.492428, 11.848718>,  <8.751568, 17.295710, 11.714680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720975, 17.492428, 11.848718>,  <8.669987, 17.820292, 12.072115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.720975, 17.492428, 11.848718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880086, 0.353137, -0.317401,
		0.457384, -0.451062, 0.766383,
		0.127471, -0.819657, -0.558492,
		8.759216, 17.246531, 11.681170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.318647, 17.732191, 12.112476>,  <8.669987, 17.820292, 12.072115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.318647, 17.732191, 12.112476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.245844, 17.489798, 11.802727>,  <9.202162, 17.344360, 11.616877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.245844, 17.489798, 11.802727>,  <9.318647, 17.732191, 12.112476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.245844, 17.489798, 11.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947023, 0.103901, -0.303895,
		0.264614, -0.788661, 0.554971,
		-0.182008, -0.605986, -0.774374,
		9.191241, 17.308002, 11.570415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.769831, 17.135971, 12.117063>,  <9.318647, 17.732191, 12.112476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.769831, 17.135971, 12.117063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.642766, 17.202370, 11.743638>,  <9.566527, 17.242208, 11.519584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.642766, 17.202370, 11.743638>,  <9.769831, 17.135971, 12.117063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.642766, 17.202370, 11.743638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931393, 0.239201, -0.274391,
		0.177761, -0.956675, -0.230594,
		-0.317661, 0.165998, -0.933561,
		9.547467, 17.252169, 11.463570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.314104, 16.807877, 11.733584>,  <9.769831, 17.135971, 12.117063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.314104, 16.807877, 11.733584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100751, 17.014400, 11.465576>,  <9.972739, 17.138315, 11.304771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100751, 17.014400, 11.465576>,  <10.314104, 16.807877, 11.733584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100751, 17.014400, 11.465576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844704, 0.366756, -0.389826,
		0.044464, -0.773897, -0.631749,
		-0.533383, 0.516308, -0.670021,
		9.940736, 17.169292, 11.264569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601577, 16.611061, 11.118636>,  <10.314104, 16.807877, 11.733584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601577, 16.611061, 11.118636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406837, 16.953529, 11.049416>,  <10.289993, 17.159010, 11.007883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406837, 16.953529, 11.049416>,  <10.601577, 16.611061, 11.118636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406837, 16.953529, 11.049416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829369, 0.390931, -0.399149,
		-0.274089, -0.337848, -0.900407,
		-0.486849, 0.856172, -0.173051,
		10.260782, 17.210381, 10.997500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.682173, 16.769695, 10.425791>,  <10.601577, 16.611061, 11.118636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.682173, 16.769695, 10.425791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.593197, 17.124907, 10.586751>,  <10.539811, 17.338034, 10.683328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.593197, 17.124907, 10.586751>,  <10.682173, 16.769695, 10.425791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.593197, 17.124907, 10.586751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844116, 0.381946, -0.376277,
		-0.487840, 0.255975, -0.834559,
		-0.222439, 0.888028, 0.402401,
		10.526465, 17.391315, 10.707472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.730152, 17.245407, 9.863251>,  <10.682173, 16.769695, 10.425791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.730152, 17.245407, 9.863251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.765548, 17.463095, 10.196956>,  <10.786785, 17.593708, 10.397179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.765548, 17.463095, 10.196956>,  <10.730152, 17.245407, 9.863251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.765548, 17.463095, 10.196956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869824, 0.365895, -0.330949,
		-0.485361, 0.754947, -0.440998,
		0.088490, 0.544221, 0.834262,
		10.792094, 17.626362, 10.447234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048357, 17.784073, 9.595849>,  <10.730152, 17.245407, 9.863251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048357, 17.784073, 9.595849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.108090, 17.825350, 9.989204>,  <11.143930, 17.850117, 10.225218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.108090, 17.825350, 9.989204>,  <11.048357, 17.784073, 9.595849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.108090, 17.825350, 9.989204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854635, 0.486715, -0.180855,
		-0.497292, 0.867444, -0.015511,
		0.149333, 0.103194, 0.983387,
		11.152890, 17.856308, 10.284221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320351, 18.491941, 9.740764>,  <11.048357, 17.784073, 9.595849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320351, 18.491941, 9.740764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.455021, 18.252878, 10.031817>,  <11.535823, 18.109440, 10.206450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.455021, 18.252878, 10.031817>,  <11.320351, 18.491941, 9.740764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.455021, 18.252878, 10.031817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911651, 0.400300, -0.093022,
		-0.235676, 0.694667, 0.679628,
		0.336674, -0.597660, 0.727635,
		11.556024, 18.073580, 10.250108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.700843, 18.897821, 10.211271>,  <11.320351, 18.491941, 9.740764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.700843, 18.897821, 10.211271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841390, 18.531719, 10.290112>,  <11.925717, 18.312057, 10.337416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841390, 18.531719, 10.290112>,  <11.700843, 18.897821, 10.211271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841390, 18.531719, 10.290112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928119, 0.368178, 0.055132,
		-0.123028, 0.163561, 0.978832,
		0.351367, -0.915256, 0.197101,
		11.946799, 18.257143, 10.349241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106503, 18.727280, 10.873292>,  <11.700843, 18.897821, 10.211271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106503, 18.727280, 10.873292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238500, 18.489786, 10.579738>,  <12.317698, 18.347290, 10.403605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238500, 18.489786, 10.579738>,  <12.106503, 18.727280, 10.873292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238500, 18.489786, 10.579738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923906, 0.362629, 0.122057,
		0.193659, -0.718318, 0.668218,
		0.329991, -0.593733, -0.733885,
		12.337497, 18.311666, 10.359572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.663291, 18.315052, 11.093386>,  <12.106503, 18.727280, 10.873292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.663291, 18.315052, 11.093386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.684634, 18.403746, 10.703927>,  <12.697440, 18.456961, 10.470252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.684634, 18.403746, 10.703927>,  <12.663291, 18.315052, 11.093386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.684634, 18.403746, 10.703927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805343, 0.566930, 0.173244,
		0.590403, -0.793363, -0.148321,
		0.053358, 0.221733, -0.973647,
		12.700642, 18.470266, 10.411833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420199, 18.202475, 10.905268>,  <12.663291, 18.315052, 11.093386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420199, 18.202475, 10.905268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237045, 18.443560, 10.643863>,  <13.127152, 18.588211, 10.487020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237045, 18.443560, 10.643863>,  <13.420199, 18.202475, 10.905268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237045, 18.443560, 10.643863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634812, 0.736295, 0.234274,
		0.622378, -0.307587, -0.719748,
		-0.457886, 0.602711, -0.653513,
		13.099679, 18.624372, 10.447809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106630, 18.541986, 10.689805>,  <13.420199, 18.202475, 10.905268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.106630, 18.541986, 10.689805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.438740, 18.533197, 10.467035>,  <14.638005, 18.527924, 10.333374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.438740, 18.533197, 10.467035>,  <14.106630, 18.541986, 10.689805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.438740, 18.533197, 10.467035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319191, -0.800393, 0.507433,
		-0.456907, -0.599073, -0.657532,
		0.830273, -0.021972, -0.556924,
		14.687821, 18.526606, 10.299958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120578, 17.881115, 10.400036>,  <14.106630, 18.541986, 10.689805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120578, 17.881115, 10.400036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453446, 18.070421, 10.515628>,  <14.653168, 18.184006, 10.584983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.453446, 18.070421, 10.515628>,  <14.120578, 17.881115, 10.400036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453446, 18.070421, 10.515628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236102, -0.773942, 0.587597,
		0.501744, -0.420752, -0.755791,
		0.832171, 0.473267, 0.288980,
		14.703097, 18.212400, 10.602322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902635, 17.705473, 10.283741>,  <14.120578, 17.881115, 10.400036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902635, 17.705473, 10.283741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961336, 17.894890, 10.631125>,  <14.996557, 18.008539, 10.839556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961336, 17.894890, 10.631125>,  <14.902635, 17.705473, 10.283741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961336, 17.894890, 10.631125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446818, -0.815025, 0.368900,
		0.882506, 0.333907, -0.331193,
		0.146752, 0.473540, 0.868461,
		15.005362, 18.036951, 10.891664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246499, 17.501301, 10.945377>,  <14.902635, 17.705473, 10.283741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246499, 17.501301, 10.945377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388358, 17.175167, 11.128442>,  <15.473474, 16.979486, 11.238280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388358, 17.175167, 11.128442>,  <15.246499, 17.501301, 10.945377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388358, 17.175167, 11.128442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921493, -0.221894, 0.318768,
		-0.158349, -0.534784, -0.830019,
		0.354649, -0.815333, 0.457663,
		15.494753, 16.930567, 11.265740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902927, 16.898878, 10.759056>,  <15.246499, 17.501301, 10.945377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902927, 16.898878, 10.759056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066782, 16.834259, 11.118188>,  <15.165094, 16.795486, 11.333667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066782, 16.834259, 11.118188>,  <14.902927, 16.898878, 10.759056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066782, 16.834259, 11.118188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911346, -0.116244, 0.394887,
		0.040574, -0.979994, -0.194846,
		0.409637, -0.161550, 0.897830,
		15.189673, 16.785795, 11.387537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609476, 16.303543, 11.051975>,  <14.902927, 16.898878, 10.759056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609476, 16.303543, 11.051975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730682, 16.546169, 11.345984>,  <14.803407, 16.691746, 11.522390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730682, 16.546169, 11.345984>,  <14.609476, 16.303543, 11.051975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730682, 16.546169, 11.345984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847875, -0.180526, 0.498516,
		0.435073, -0.774267, 0.459590,
		0.303016, 0.606566, 0.735024,
		14.821588, 16.728138, 11.566491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510108, 16.098450, 11.784311>,  <14.609476, 16.303543, 11.051975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510108, 16.098450, 11.784311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490593, 16.489670, 11.865339>,  <14.478884, 16.724401, 11.913956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490593, 16.489670, 11.865339>,  <14.510108, 16.098450, 11.784311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490593, 16.489670, 11.865339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800000, -0.159693, 0.578358,
		0.598013, -0.133839, 0.790232,
		-0.048788, 0.978052, 0.202570,
		14.475957, 16.783085, 11.926110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731200, 16.373365, 12.526961>,  <14.510108, 16.098450, 11.784311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731200, 16.373365, 12.526961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448689, 16.565435, 12.318882>,  <14.279183, 16.680677, 12.194035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448689, 16.565435, 12.318882>,  <14.731200, 16.373365, 12.526961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448689, 16.565435, 12.318882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666453, -0.203134, 0.717340,
		0.238778, 0.853328, 0.463483,
		-0.706276, 0.480175, -0.520199,
		14.236807, 16.709488, 12.162823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.217893, 16.812252, 12.895308>,  <14.731200, 16.373365, 12.526961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.217893, 16.812252, 12.895308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984653, 16.682541, 12.597358>,  <13.844708, 16.604715, 12.418588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984653, 16.682541, 12.597358>,  <14.217893, 16.812252, 12.895308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984653, 16.682541, 12.597358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734148, -0.182291, 0.654061,
		-0.347880, 0.928232, -0.131772,
		-0.583100, -0.324275, -0.744876,
		13.809723, 16.585258, 12.373895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613595, 17.249577, 12.898537>,  <14.217893, 16.812252, 12.895308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613595, 17.249577, 12.898537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513736, 16.903814, 12.723962>,  <13.453820, 16.696356, 12.619217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513736, 16.903814, 12.723962>,  <13.613595, 17.249577, 12.898537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513736, 16.903814, 12.723962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749872, -0.112590, 0.651933,
		-0.612673, 0.490025, -0.620087,
		-0.249648, -0.864407, -0.436437,
		13.438842, 16.644493, 12.593031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.905834, 17.202394, 12.660429>,  <13.613595, 17.249577, 12.898537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.905834, 17.202394, 12.660429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966224, 16.807804, 12.685953>,  <13.002458, 16.571051, 12.701268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966224, 16.807804, 12.685953>,  <12.905834, 17.202394, 12.660429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.966224, 16.807804, 12.685953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883277, -0.105631, 0.456798,
		-0.443880, -0.125327, -0.887279,
		0.150973, -0.986476, 0.063811,
		13.011516, 16.511862, 12.705096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.255145, 16.951214, 12.479139>,  <12.905834, 17.202394, 12.660429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.255145, 16.951214, 12.479139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.439583, 16.649151, 12.665526>,  <12.550245, 16.467913, 12.777359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.439583, 16.649151, 12.665526>,  <12.255145, 16.951214, 12.479139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.439583, 16.649151, 12.665526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814711, -0.152195, 0.559538,
		-0.351622, -0.637630, -0.685413,
		0.461095, -0.755159, 0.465968,
		12.577911, 16.422604, 12.805317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768284, 16.415161, 12.512254>,  <12.255145, 16.951214, 12.479139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768284, 16.415161, 12.512254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022562, 16.265614, 12.782398>,  <12.175129, 16.175886, 12.944485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022562, 16.265614, 12.782398>,  <11.768284, 16.415161, 12.512254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.022562, 16.265614, 12.782398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771507, -0.337007, 0.539633,
		0.025851, -0.864089, -0.502675,
		0.635696, -0.373867, 0.675363,
		12.213271, 16.153454, 12.985007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.526312, 15.731576, 12.692718>,  <11.768284, 16.415161, 12.512254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.526312, 15.731576, 12.692718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748547, 15.858555, 13.000107>,  <11.881887, 15.934742, 13.184541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748547, 15.858555, 13.000107>,  <11.526312, 15.731576, 12.692718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.748547, 15.858555, 13.000107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684214, -0.350577, 0.639489,
		0.472413, -0.881092, 0.022426,
		0.555587, 0.317447, 0.768473,
		11.915222, 15.953789, 13.230649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.556835, 15.218591, 13.129502>,  <11.526312, 15.731576, 12.692718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.556835, 15.218591, 13.129502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.649272, 15.515603, 13.380977>,  <11.704734, 15.693810, 13.531861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.649272, 15.515603, 13.380977>,  <11.556835, 15.218591, 13.129502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.649272, 15.515603, 13.380977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538739, -0.440412, 0.718191,
		0.810159, -0.504665, 0.298254,
		0.231091, 0.742530, 0.628686,
		11.718599, 15.738362, 13.569583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.837486, 14.912431, 13.754500>,  <11.556835, 15.218591, 13.129502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.837486, 14.912431, 13.754500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.718954, 15.283873, 13.843837>,  <11.647835, 15.506738, 13.897439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.718954, 15.283873, 13.843837>,  <11.837486, 14.912431, 13.754500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.718954, 15.283873, 13.843837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630788, -0.365872, 0.684284,
		0.717144, 0.061893, 0.694172,
		-0.296331, 0.928605, 0.223341,
		11.630054, 15.562454, 13.910839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735042, 14.821963, 14.394391>,  <11.837486, 14.912431, 13.754500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735042, 14.821963, 14.394391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534065, 15.162123, 14.331943>,  <11.413479, 15.366219, 14.294474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534065, 15.162123, 14.331943>,  <11.735042, 14.821963, 14.394391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534065, 15.162123, 14.331943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744764, -0.333963, 0.577750,
		0.439180, 0.406559, 0.801143,
		-0.502442, 0.850399, -0.156121,
		11.383332, 15.417242, 14.285107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.438639, 14.973871, 15.101447>,  <11.735042, 14.821963, 14.394391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.438639, 14.973871, 15.101447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.235528, 15.169407, 14.817700>,  <11.113662, 15.286728, 14.647452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.235528, 15.169407, 14.817700>,  <11.438639, 14.973871, 15.101447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.235528, 15.169407, 14.817700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861483, -0.291150, 0.416028,
		-0.003162, 0.822356, 0.568965,
		-0.507777, 0.488838, -0.709366,
		11.083195, 15.316058, 14.604891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.800214, 15.152190, 15.429966>,  <11.438639, 14.973871, 15.101447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.800214, 15.152190, 15.429966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681204, 15.273862, 15.067982>,  <10.609797, 15.346865, 14.850791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681204, 15.273862, 15.067982>,  <10.800214, 15.152190, 15.429966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681204, 15.273862, 15.067982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914830, -0.361947, 0.179112,
		-0.273066, 0.881175, 0.385960,
		-0.297526, 0.304178, -0.904961,
		10.591946, 15.365115, 14.796494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.160176, 15.531350, 15.482911>,  <10.800214, 15.152190, 15.429966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.160176, 15.531350, 15.482911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.173686, 15.387086, 15.110077>,  <10.181792, 15.300528, 14.886376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.173686, 15.387086, 15.110077>,  <10.160176, 15.531350, 15.482911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.173686, 15.387086, 15.110077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958461, -0.275973, 0.072054,
		-0.283217, 0.890934, -0.354999,
		0.033774, -0.360660, -0.932086,
		10.183818, 15.278888, 14.830451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.599367, 15.909057, 15.037085>,  <10.160176, 15.531350, 15.482911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.599367, 15.909057, 15.037085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.690661, 15.562219, 14.859972>,  <9.745439, 15.354115, 14.753705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.690661, 15.562219, 14.859972>,  <9.599367, 15.909057, 15.037085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.690661, 15.562219, 14.859972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973593, -0.205614, -0.099197,
		-0.005029, 0.453728, -0.891126,
		0.228237, -0.867095, -0.442781,
		9.759132, 15.302091, 14.727138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.253130, 15.845227, 14.442871>,  <9.599367, 15.909057, 15.037085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.253130, 15.845227, 14.442871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.322380, 15.453651, 14.486144>,  <9.363930, 15.218706, 14.512108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.322380, 15.453651, 14.486144>,  <9.253130, 15.845227, 14.442871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.322380, 15.453651, 14.486144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947143, -0.195603, -0.254284,
		0.270090, -0.058442, -0.961060,
		0.173125, -0.978941, 0.108183,
		9.374317, 15.159969, 14.518599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.901939, 15.541336, 13.869255>,  <9.253130, 15.845227, 14.442871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.901939, 15.541336, 13.869255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.966358, 15.241044, 14.125526>,  <9.005010, 15.060869, 14.279289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.966358, 15.241044, 14.125526>,  <8.901939, 15.541336, 13.869255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.966358, 15.241044, 14.125526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937402, -0.319444, -0.138681,
		0.308773, -0.578240, -0.755181,
		0.161047, -0.750729, 0.640679,
		9.014672, 15.015825, 14.317730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.805793, 14.896588, 13.465973>,  <8.901939, 15.541336, 13.869255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.805793, 14.896588, 13.465973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.759130, 14.834816, 13.858410>,  <8.731133, 14.797752, 14.093872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.759130, 14.834816, 13.858410>,  <8.805793, 14.896588, 13.465973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.759130, 14.834816, 13.858410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866654, -0.466645, -0.176501,
		0.485079, -0.870858, -0.079402,
		-0.116655, -0.154431, 0.981092,
		8.724133, 14.788486, 14.152738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.533175, 14.291831, 13.476763>,  <8.805793, 14.896588, 13.465973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.533175, 14.291831, 13.476763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455393, 14.429097, 13.844333>,  <8.408723, 14.511456, 14.064875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455393, 14.429097, 13.844333>,  <8.533175, 14.291831, 13.476763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.455393, 14.429097, 13.844333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911548, -0.409236, -0.040069,
		0.362307, -0.845437, 0.392391,
		-0.194456, 0.343166, 0.918926,
		8.397056, 14.532047, 14.120010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.320375, 13.592526, 13.858683>,  <8.533175, 14.291831, 13.476763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.320375, 13.592526, 13.858683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.181652, 13.912489, 14.054591>,  <8.098418, 14.104466, 14.172136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.181652, 13.912489, 14.054591>,  <8.320375, 13.592526, 13.858683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.181652, 13.912489, 14.054591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876124, -0.462706, 0.135317,
		0.334861, -0.382171, 0.861286,
		-0.346808, 0.799906, 0.489771,
		8.077610, 14.152461, 14.201523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.912562, 13.280695, 14.280684>,  <8.320375, 13.592526, 13.858683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.912562, 13.280695, 14.280684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.768441, 13.653551, 14.295076>,  <7.681968, 13.877265, 14.303711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.768441, 13.653551, 14.295076>,  <7.912562, 13.280695, 14.280684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.768441, 13.653551, 14.295076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929890, -0.361960, 0.065492,
		0.074071, -0.009860, 0.997204,
		-0.360303, 0.932141, 0.035979,
		7.660350, 13.933193, 14.305870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.450809, 13.509230, 14.912831>,  <7.912562, 13.280695, 14.280684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.450809, 13.509230, 14.912831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.344272, 13.694711, 14.574827>,  <7.280350, 13.805999, 14.372025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.344272, 13.694711, 14.574827>,  <7.450809, 13.509230, 14.912831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.344272, 13.694711, 14.574827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898961, -0.435792, 0.044204,
		-0.347751, 0.771405, 0.532920,
		-0.266342, 0.463702, -0.845010,
		7.264369, 13.833821, 14.321324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.916383, 13.185515, 14.385943>,  <7.450809, 13.509230, 14.912831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.916383, 13.185515, 14.385943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.089754, 12.831785, 14.316535>,  <7.193777, 12.619547, 14.274890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.089754, 12.831785, 14.316535>,  <6.916383, 13.185515, 14.385943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.089754, 12.831785, 14.316535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648585, 0.172419, 0.741357,
		-0.625682, -0.433868, 0.648291,
		0.433428, -0.884325, -0.173520,
		7.219783, 12.566487, 14.264479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.049498, 12.772580, 15.037901>,  <6.916383, 13.185515, 14.385943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.049498, 12.772580, 15.037901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.328495, 12.723504, 14.755496>,  <7.495893, 12.694058, 14.586053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.328495, 12.723504, 14.755496>,  <7.049498, 12.772580, 15.037901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.328495, 12.723504, 14.755496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701986, 0.314899, 0.638792,
		0.143948, -0.941162, 0.305767,
		0.697492, -0.122691, -0.706011,
		7.537743, 12.686697, 14.543693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.200931, 12.042013, 14.930161>,  <7.049498, 12.772580, 15.037901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.200931, 12.042013, 14.930161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.890668, 12.035995, 14.677771>,  <6.704511, 12.032385, 14.526337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.890668, 12.035995, 14.677771>,  <7.200931, 12.042013, 14.930161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.890668, 12.035995, 14.677771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129218, -0.982325, -0.135425,
		-0.617787, -0.186576, 0.763891,
		-0.775656, -0.015045, -0.630976,
		6.657971, 12.031482, 14.488478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.932117, 12.126864, 14.635207>,  <7.200931, 12.042013, 14.930161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.932117, 12.126864, 14.635207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.092480, 12.292804, 14.308484>,  <8.188697, 12.392367, 14.112450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.092480, 12.292804, 14.308484>,  <7.932117, 12.126864, 14.635207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.092480, 12.292804, 14.308484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907816, -0.299665, 0.293378,
		-0.123062, -0.859129, -0.496743,
		0.400906, 0.414848, -0.816809,
		8.212751, 12.417258, 14.063441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.173882, 11.578057, 14.021760>,  <7.932117, 12.126864, 14.635207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.173882, 11.578057, 14.021760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.358222, 11.923547, 14.103342>,  <8.468826, 12.130840, 14.152291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.358222, 11.923547, 14.103342>,  <8.173882, 11.578057, 14.021760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.358222, 11.923547, 14.103342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829024, -0.501001, 0.248429,
		0.316756, 0.054596, -0.946935,
		0.460852, 0.863723, 0.203956,
		8.496478, 12.182664, 14.164529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.691504, 11.698835, 13.493245>,  <8.173882, 11.578057, 14.021760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.691504, 11.698835, 13.493245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.749402, 11.835917, 13.864535>,  <8.784142, 11.918167, 14.087309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.749402, 11.835917, 13.864535>,  <8.691504, 11.698835, 13.493245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.749402, 11.835917, 13.864535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736874, -0.663408, 0.130026,
		0.660352, 0.665164, -0.348556,
		0.144746, 0.342705, 0.928225,
		8.792826, 11.938729, 14.143003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.456914, 11.784952, 13.624242>,  <8.691504, 11.698835, 13.493245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.456914, 11.784952, 13.624242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.279545, 11.712563, 13.975383>,  <9.173123, 11.669128, 14.186068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.279545, 11.712563, 13.975383>,  <9.456914, 11.784952, 13.624242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.279545, 11.712563, 13.975383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732694, -0.637318, 0.238714,
		0.516270, 0.749049, 0.415200,
		-0.443423, -0.180974, 0.877852,
		9.146518, 11.658270, 14.238738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.920238, 11.658357, 14.072798>,  <9.456914, 11.784952, 13.624242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.920238, 11.658357, 14.072798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.610903, 11.473573, 14.246483>,  <9.425302, 11.362702, 14.350694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.610903, 11.473573, 14.246483>,  <9.920238, 11.658357, 14.072798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.610903, 11.473573, 14.246483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608958, -0.731804, 0.305994,
		0.176401, 0.501054, 0.847247,
		-0.773339, -0.461960, 0.434212,
		9.378901, 11.334985, 14.376746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.630156, 12.101564, 14.007943>,  <9.920238, 11.658357, 14.072798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.630156, 12.101564, 14.007943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984556, 11.997478, 14.161456>,  <11.197196, 11.935025, 14.253564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984556, 11.997478, 14.161456>,  <10.630156, 12.101564, 14.007943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.984556, 11.997478, 14.161456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352166, 0.160781, 0.922024,
		-0.301632, -0.952069, 0.050812,
		0.886001, -0.260218, 0.383783,
		11.250357, 11.919413, 14.276591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.686504, 11.389587, 14.435362>,  <10.630156, 12.101564, 14.007943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.686504, 11.389587, 14.435362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.972547, 11.618188, 14.596365>,  <11.144172, 11.755348, 14.692966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.972547, 11.618188, 14.596365>,  <10.686504, 11.389587, 14.435362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.972547, 11.618188, 14.596365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356351, -0.197326, 0.913278,
		0.601365, -0.796523, 0.062547,
		0.715104, 0.571502, 0.402507,
		11.187078, 11.789639, 14.717117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.774920, 11.143655, 15.125540>,  <10.686504, 11.389587, 14.435362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.774920, 11.143655, 15.125540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.957576, 11.499461, 15.131776>,  <11.067169, 11.712945, 15.135517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.957576, 11.499461, 15.131776>,  <10.774920, 11.143655, 15.125540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.957576, 11.499461, 15.131776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202181, 0.086694, 0.975504,
		0.866374, -0.448606, 0.219430,
		0.456640, 0.889515, 0.015590,
		11.094567, 11.766315, 15.136453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.171470, 11.039685, 15.591393>,  <10.774920, 11.143655, 15.125540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.171470, 11.039685, 15.591393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.155629, 11.439140, 15.577793>,  <11.146125, 11.678813, 15.569633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.155629, 11.439140, 15.577793>,  <11.171470, 11.039685, 15.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.155629, 11.439140, 15.577793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071736, 0.031099, 0.996938,
		0.996637, 0.041920, 0.070407,
		-0.039603, 0.998637, -0.034002,
		11.143748, 11.738731, 15.567593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.439580, 11.206308, 16.243296>,  <11.171470, 11.039685, 15.591393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.439580, 11.206308, 16.243296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317365, 11.554948, 16.089952>,  <11.244036, 11.764132, 15.997947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317365, 11.554948, 16.089952>,  <11.439580, 11.206308, 16.243296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317365, 11.554948, 16.089952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052557, 0.386558, 0.920766,
		0.950728, 0.301478, -0.072300,
		-0.305539, 0.871599, -0.383356,
		11.225703, 11.816427, 15.974946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.962897, 11.751137, 16.408573>,  <11.439580, 11.206308, 16.243296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.962897, 11.751137, 16.408573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604591, 11.926196, 16.377413>,  <11.389607, 12.031232, 16.358717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604591, 11.926196, 16.377413>,  <11.962897, 11.751137, 16.408573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604591, 11.926196, 16.377413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070446, 0.312787, 0.947207,
		0.438910, 0.842987, -0.311014,
		-0.895765, 0.437649, -0.077901,
		11.335862, 12.057490, 16.354042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.065788, 12.342959, 16.827528>,  <11.962897, 11.751137, 16.408573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.065788, 12.342959, 16.827528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.668780, 12.314401, 16.787916>,  <11.430575, 12.297266, 16.764149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.668780, 12.314401, 16.787916>,  <12.065788, 12.342959, 16.827528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.668780, 12.314401, 16.787916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117050, 0.325968, 0.938107,
		-0.034697, 0.942681, -0.331887,
		-0.992520, -0.071396, -0.099031,
		11.371024, 12.292982, 16.758207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.777145, 12.998759, 16.975784>,  <12.065788, 12.342959, 16.827528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.777145, 12.998759, 16.975784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.479113, 12.735529, 17.019220>,  <11.300293, 12.577591, 17.045282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.479113, 12.735529, 17.019220>,  <11.777145, 12.998759, 16.975784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.479113, 12.735529, 17.019220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260337, 0.436839, 0.861044,
		-0.614068, 0.613277, -0.496802,
		-0.745081, -0.658075, 0.108590,
		11.255589, 12.538106, 17.051798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.132524, 13.437373, 17.205748>,  <11.777145, 12.998759, 16.975784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.132524, 13.437373, 17.205748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.123860, 13.053878, 17.319134>,  <11.118662, 12.823781, 17.387165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.123860, 13.053878, 17.319134>,  <11.132524, 13.437373, 17.205748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.123860, 13.053878, 17.319134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267993, 0.278721, 0.922222,
		-0.963178, -0.055991, -0.262972,
		-0.021660, -0.958739, 0.283463,
		11.117362, 12.766256, 17.404173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.464091, 13.466736, 17.635321>,  <11.132524, 13.437373, 17.205748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.464091, 13.466736, 17.635321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.626454, 13.114242, 17.732203>,  <10.723872, 12.902745, 17.790333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.626454, 13.114242, 17.732203>,  <10.464091, 13.466736, 17.635321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.626454, 13.114242, 17.732203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358250, 0.090386, 0.929240,
		-0.840771, -0.463955, -0.279015,
		0.405906, -0.881235, 0.242206,
		10.748226, 12.849871, 17.804865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.840698, 12.957320, 17.911509>,  <10.464091, 13.466736, 17.635321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.840698, 12.957320, 17.911509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.195168, 12.831701, 18.047783>,  <10.407851, 12.756330, 18.129547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.195168, 12.831701, 18.047783>,  <9.840698, 12.957320, 17.911509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.195168, 12.831701, 18.047783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347253, 0.036658, 0.937055,
		-0.306768, -0.948699, -0.076569,
		0.886176, -0.314047, 0.340684,
		10.461021, 12.737487, 18.149988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.604065, 12.626672, 18.421495>,  <9.840698, 12.957320, 17.911509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.604065, 12.626672, 18.421495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993989, 12.691270, 18.483027>,  <10.227943, 12.730029, 18.519945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993989, 12.691270, 18.483027>,  <9.604065, 12.626672, 18.421495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.993989, 12.691270, 18.483027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180343, 0.164943, 0.969675,
		0.131214, -0.972994, 0.189911,
		0.974812, 0.161484, 0.153829,
		10.286432, 12.739718, 18.529175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.749104, 12.150471, 18.982750>,  <9.604065, 12.626672, 18.421495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.749104, 12.150471, 18.982750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026796, 12.437264, 19.007977>,  <10.193412, 12.609341, 19.023113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026796, 12.437264, 19.007977>,  <9.749104, 12.150471, 18.982750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026796, 12.437264, 19.007977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169424, 0.077629, 0.982481,
		0.699527, -0.692755, 0.175367,
		0.694232, 0.716983, 0.063066,
		10.235065, 12.652359, 19.026896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.240989, 11.951291, 19.466406>,  <9.749104, 12.150471, 18.982750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.240989, 11.951291, 19.466406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.275481, 12.348624, 19.435801>,  <10.296177, 12.587024, 19.417437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.275481, 12.348624, 19.435801>,  <10.240989, 11.951291, 19.466406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.275481, 12.348624, 19.435801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182348, 0.091240, 0.978991,
		0.979445, -0.070468, 0.189000,
		0.086232, 0.993332, -0.076515,
		10.301351, 12.646624, 19.412846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.817862, 12.236964, 19.866201>,  <10.240989, 11.951291, 19.466406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.817862, 12.236964, 19.866201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.537556, 12.518996, 19.822771>,  <10.369372, 12.688215, 19.796713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.537556, 12.518996, 19.822771>,  <10.817862, 12.236964, 19.866201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.537556, 12.518996, 19.822771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033704, 0.119303, 0.992286,
		0.712595, 0.699019, -0.059840,
		-0.700766, 0.705081, -0.108574,
		10.327326, 12.730520, 19.790199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.035449, 12.659657, 20.389982>,  <10.817862, 12.236964, 19.866201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.035449, 12.659657, 20.389982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.669848, 12.783890, 20.285566>,  <10.450488, 12.858430, 20.222918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.669848, 12.783890, 20.285566>,  <11.035449, 12.659657, 20.389982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.669848, 12.783890, 20.285566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123114, 0.400747, 0.907879,
		0.386581, 0.861940, -0.328046,
		-0.914001, 0.310582, -0.261038,
		10.395648, 12.877065, 20.207254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.007093, 13.240646, 20.798138>,  <11.035449, 12.659657, 20.389982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.007093, 13.240646, 20.798138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638069, 13.139034, 20.681965>,  <10.416655, 13.078067, 20.612261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638069, 13.139034, 20.681965>,  <11.007093, 13.240646, 20.798138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638069, 13.139034, 20.681965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340113, 0.179900, 0.923017,
		-0.182226, 0.950318, -0.252368,
		-0.922560, -0.254031, -0.290433,
		10.361301, 13.062825, 20.594835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.584028, 13.677291, 21.203417>,  <11.007093, 13.240646, 20.798138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.584028, 13.677291, 21.203417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.329293, 13.399964, 21.068510>,  <10.176453, 13.233568, 20.987566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.329293, 13.399964, 21.068510>,  <10.584028, 13.677291, 21.203417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.329293, 13.399964, 21.068510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598533, 0.168827, 0.783107,
		-0.486000, 0.700579, -0.522488,
		-0.636838, -0.693316, -0.337269,
		10.138242, 13.191970, 20.967329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.951903, 13.987503, 21.141306>,  <10.584028, 13.677291, 21.203417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.951903, 13.987503, 21.141306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928488, 13.593843, 21.208269>,  <9.914438, 13.357648, 21.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928488, 13.593843, 21.208269>,  <9.951903, 13.987503, 21.141306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.928488, 13.593843, 21.208269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376295, 0.177079, 0.909420,
		-0.924649, -0.009759, -0.380697,
		-0.058539, -0.984148, 0.167408,
		9.910926, 13.298599, 21.258492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.256041, 13.904080, 21.393162>,  <9.951903, 13.987503, 21.141306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.256041, 13.904080, 21.393162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.445826, 13.569403, 21.502583>,  <9.559696, 13.368596, 21.568235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.445826, 13.569403, 21.502583>,  <9.256041, 13.904080, 21.393162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.445826, 13.569403, 21.502583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473464, 0.019419, 0.880599,
		-0.742104, -0.547327, -0.386930,
		0.474462, -0.836693, 0.273551,
		9.588164, 13.318395, 21.584648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.682692, 13.517956, 21.565737>,  <9.256041, 13.904080, 21.393162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.682692, 13.517956, 21.565737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.991969, 13.340678, 21.747175>,  <9.177536, 13.234312, 21.856039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.991969, 13.340678, 21.747175>,  <8.682692, 13.517956, 21.565737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.991969, 13.340678, 21.747175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488389, 0.040123, 0.871703,
		-0.404534, -0.895527, -0.185429,
		0.773194, -0.443195, 0.453597,
		9.223927, 13.207720, 21.883255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.394330, 13.065901, 22.028547>,  <8.682692, 13.517956, 21.565737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.394330, 13.065901, 22.028547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763304, 13.140326, 22.163895>,  <8.984688, 13.184982, 22.245104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763304, 13.140326, 22.163895>,  <8.394330, 13.065901, 22.028547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.763304, 13.140326, 22.163895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361485, 0.107918, 0.926111,
		0.135808, -0.976591, 0.166810,
		0.922434, 0.186073, 0.338367,
		9.040034, 13.196146, 22.265406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.323189, 12.705615, 22.595459>,  <8.394330, 13.065901, 22.028547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.323189, 12.705615, 22.595459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623417, 12.967969, 22.627605>,  <8.803554, 13.125381, 22.646894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623417, 12.967969, 22.627605>,  <8.323189, 12.705615, 22.595459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.623417, 12.967969, 22.627605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286287, 0.213155, 0.934133,
		0.595552, -0.724141, 0.347759,
		0.750571, 0.655884, 0.080367,
		8.848588, 13.164734, 22.651716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.651829, 12.612759, 23.252424>,  <8.323189, 12.705615, 22.595459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.651829, 12.612759, 23.252424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780585, 12.982411, 23.170094>,  <8.857840, 13.204204, 23.120695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780585, 12.982411, 23.170094>,  <8.651829, 12.612759, 23.252424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.780585, 12.982411, 23.170094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031284, 0.227658, 0.973238,
		0.946259, -0.306838, 0.102192,
		0.321892, 0.924133, -0.205825,
		8.877152, 13.259651, 23.108347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.251651, 12.719362, 23.674925>,  <8.651829, 12.612759, 23.252424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.251651, 12.719362, 23.674925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.097280, 13.075797, 23.579409>,  <9.004657, 13.289659, 23.522099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.097280, 13.075797, 23.579409>,  <9.251651, 12.719362, 23.674925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.097280, 13.075797, 23.579409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109266, 0.301175, 0.947288,
		0.916035, 0.339493, -0.213597,
		-0.385928, 0.891088, -0.238792,
		8.981502, 13.343123, 23.507771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.721061, 13.181347, 23.946009>,  <9.251651, 12.719362, 23.674925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.721061, 13.181347, 23.946009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.410024, 13.425485, 23.885571>,  <9.223401, 13.571967, 23.849308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.410024, 13.425485, 23.885571>,  <9.721061, 13.181347, 23.946009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.410024, 13.425485, 23.885571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142737, 0.405377, 0.902937,
		0.612351, 0.680552, -0.402337,
		-0.777594, 0.610343, -0.151093,
		9.176745, 13.608587, 23.840242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.874900, 13.701643, 24.366611>,  <9.721061, 13.181347, 23.946009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.874900, 13.701643, 24.366611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.490262, 13.770148, 24.280817>,  <9.259480, 13.811252, 24.229340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.490262, 13.770148, 24.280817>,  <9.874900, 13.701643, 24.366611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.490262, 13.770148, 24.280817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161882, 0.277190, 0.947080,
		0.221654, 0.945428, -0.238820,
		-0.961594, 0.171264, -0.214488,
		9.201784, 13.821527, 24.216471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.662555, 14.456477, 24.513956>,  <9.874900, 13.701643, 24.366611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.662555, 14.456477, 24.513956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.340548, 14.220901, 24.542505>,  <9.147344, 14.079555, 24.559635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.340548, 14.220901, 24.542505>,  <9.662555, 14.456477, 24.513956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.340548, 14.220901, 24.542505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228274, 0.418556, 0.879034,
		-0.547574, 0.691345, -0.471385,
		-0.805018, -0.588942, 0.071375,
		9.099042, 14.044218, 24.563917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.248102, 14.877400, 24.854336>,  <9.662555, 14.456477, 24.513956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.248102, 14.877400, 24.854336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.073190, 14.519518, 24.890741>,  <8.968243, 14.304789, 24.912584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.073190, 14.519518, 24.890741>,  <9.248102, 14.877400, 24.854336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.073190, 14.519518, 24.890741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355338, 0.264859, 0.896429,
		-0.826148, 0.359651, -0.433741,
		-0.437282, -0.894707, 0.091015,
		8.942005, 14.251105, 24.918045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.647695, 14.911595, 25.279766>,  <9.248102, 14.877400, 24.854336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.647695, 14.911595, 25.279766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.647297, 14.513021, 25.313501>,  <8.647058, 14.273876, 25.333742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.647297, 14.513021, 25.313501>,  <8.647695, 14.911595, 25.279766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.647297, 14.513021, 25.313501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310744, 0.080472, 0.947081,
		-0.950493, -0.025266, -0.309717,
		-0.000995, -0.996436, 0.084339,
		8.646998, 14.214089, 25.338802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.878385, 14.707794, 25.555832>,  <8.647695, 14.911595, 25.279766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.878385, 14.707794, 25.555832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.155575, 14.424148, 25.607893>,  <8.321889, 14.253960, 25.639130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.155575, 14.424148, 25.607893>,  <7.878385, 14.707794, 25.555832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.155575, 14.424148, 25.607893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259116, -0.076503, 0.962812,
		-0.672788, -0.700929, -0.236758,
		0.692975, -0.709116, 0.130151,
		8.363467, 14.211412, 25.646938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.574899, 14.123593, 25.963516>,  <7.878385, 14.707794, 25.555832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.574899, 14.123593, 25.963516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.972137, 14.125149, 26.010412>,  <8.210481, 14.126082, 26.038549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.972137, 14.125149, 26.010412>,  <7.574899, 14.123593, 25.963516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.972137, 14.125149, 26.010412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116561, -0.079525, 0.989995,
		0.013175, -0.996825, -0.078522,
		0.993096, 0.003891, 0.117239,
		8.270066, 14.126315, 26.045584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.644619, 13.630519, 26.469376>,  <7.574899, 14.123593, 25.963516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.644619, 13.630519, 26.469376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.983122, 13.843204, 26.455931>,  <8.186224, 13.970815, 26.447863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.983122, 13.843204, 26.455931>,  <7.644619, 13.630519, 26.469376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.983122, 13.843204, 26.455931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059157, -0.031076, 0.997765,
		0.529478, -0.846355, -0.057753,
		0.846259, 0.531711, -0.033614,
		8.237000, 14.002717, 26.445847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.020373, 13.415805, 26.990149>,  <7.644619, 13.630519, 26.469376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.020373, 13.415805, 26.990149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.221916, 13.757948, 26.941999>,  <8.342842, 13.963234, 26.913111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.221916, 13.757948, 26.941999>,  <8.020373, 13.415805, 26.990149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.221916, 13.757948, 26.941999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086001, 0.088986, 0.992313,
		0.859495, -0.510336, -0.028725,
		0.503857, 0.855358, -0.120372,
		8.373074, 14.014555, 26.905888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.568802, 13.340839, 27.398020>,  <8.020373, 13.415805, 26.990149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.568802, 13.340839, 27.398020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.563375, 13.733707, 27.323019>,  <8.560118, 13.969428, 27.278019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.563375, 13.733707, 27.323019>,  <8.568802, 13.340839, 27.398020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.563375, 13.733707, 27.323019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207458, 0.186205, 0.960359,
		0.978150, -0.025868, -0.206286,
		-0.013569, 0.982170, -0.187503,
		8.559304, 14.028358, 27.266768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.176870, 13.620383, 27.641132>,  <8.568802, 13.340839, 27.398020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.176870, 13.620383, 27.641132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.921988, 13.928606, 27.635311>,  <8.769059, 14.113540, 27.631819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.921988, 13.928606, 27.635311>,  <9.176870, 13.620383, 27.641132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.921988, 13.928606, 27.635311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119772, 0.117663, 0.985804,
		0.761331, 0.626416, -0.167266,
		-0.637205, 0.770557, -0.014553,
		8.730827, 14.159773, 27.630945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.609019, 14.315747, 27.886402>,  <9.176870, 13.620383, 27.641132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.609019, 14.315747, 27.886402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216148, 14.354527, 27.950809>,  <8.980426, 14.377795, 27.989454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216148, 14.354527, 27.950809>,  <9.609019, 14.315747, 27.886402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.216148, 14.354527, 27.950809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180962, 0.256323, 0.949501,
		0.050781, 0.961717, -0.269299,
		-0.982178, 0.096950, 0.161017,
		8.921494, 14.383613, 27.999115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.638473, 14.623934, 28.440855>,  <9.609019, 14.315747, 27.886402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.638473, 14.623934, 28.440855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.238917, 14.613740, 28.424992>,  <8.999185, 14.607624, 28.415474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.238917, 14.613740, 28.424992>,  <9.638473, 14.623934, 28.440855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.238917, 14.613740, 28.424992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043031, 0.149250, 0.987863,
		-0.019256, 0.988471, -0.150181,
		-0.998888, -0.025485, -0.039661,
		8.939251, 14.606094, 28.413094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.293851, 15.239731, 28.597569>,  <9.638473, 14.623934, 28.440855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.293851, 15.239731, 28.597569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022072, 14.963442, 28.696568>,  <8.859005, 14.797668, 28.755966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022072, 14.963442, 28.696568>,  <9.293851, 15.239731, 28.597569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.022072, 14.963442, 28.696568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224420, 0.125513, 0.966376,
		-0.698561, 0.712144, 0.069733,
		-0.679447, -0.690722, 0.247498,
		8.818238, 14.756226, 28.770817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.841735, 15.543455, 29.042843>,  <9.293851, 15.239731, 28.597569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.841735, 15.543455, 29.042843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.787586, 15.151372, 29.100626>,  <8.755097, 14.916122, 29.135296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.787586, 15.151372, 29.100626>,  <8.841735, 15.543455, 29.042843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.787586, 15.151372, 29.100626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047943, 0.139148, 0.989110,
		-0.989634, 0.140824, 0.028157,
		-0.135372, -0.980208, 0.144457,
		8.746975, 14.857309, 29.143963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.181367, 15.470348, 29.516775>,  <8.841735, 15.543455, 29.042843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.181367, 15.470348, 29.516775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.431108, 15.158847, 29.541185>,  <8.580954, 14.971946, 29.555832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.431108, 15.158847, 29.541185>,  <8.181367, 15.470348, 29.516775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.431108, 15.158847, 29.541185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014360, 0.066670, 0.997672,
		-0.781010, -0.623776, 0.030443,
		0.624353, -0.778755, 0.061028,
		8.618415, 14.925220, 29.559494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.215825, 15.929640, 30.088783>,  <8.181367, 15.470348, 29.516775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.215825, 15.929640, 30.088783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.327314, 15.545542, 30.082523>,  <8.394208, 15.315084, 30.078768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.327314, 15.545542, 30.082523>,  <8.215825, 15.929640, 30.088783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.327314, 15.545542, 30.082523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958643, 0.277207, 0.064502,
		-0.057600, -0.032979, 0.997795,
		0.278723, -0.960244, -0.015648,
		8.410932, 15.257468, 30.077829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.599950, 15.746843, 30.638361>,  <8.215825, 15.929640, 30.088783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.599950, 15.746843, 30.638361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.695552, 15.507543, 30.332428>,  <8.752913, 15.363962, 30.148869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.695552, 15.507543, 30.332428>,  <8.599950, 15.746843, 30.638361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.695552, 15.507543, 30.332428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950598, 0.304840, 0.058611,
		0.198088, -0.741059, 0.641555,
		0.239006, -0.598251, -0.764835,
		8.767254, 15.328068, 30.102978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.293527, 15.480504, 30.917358>,  <8.599950, 15.746843, 30.638361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.293527, 15.480504, 30.917358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.200974, 15.503761, 30.528910>,  <9.145443, 15.517715, 30.295839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.200974, 15.503761, 30.528910>,  <9.293527, 15.480504, 30.917358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.200974, 15.503761, 30.528910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963275, 0.153493, -0.220321,
		0.136251, -0.986438, -0.091522,
		-0.231381, 0.058142, -0.971124,
		9.131560, 15.521204, 30.237572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.831594, 15.054650, 31.275314>,  <9.293527, 15.480504, 30.917358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.831594, 15.054650, 31.275314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.068172, 14.821404, 31.052542>,  <10.210119, 14.681457, 30.918879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.068172, 14.821404, 31.052542>,  <9.831594, 15.054650, 31.275314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.068172, 14.821404, 31.052542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090181, -0.638516, 0.764307,
		-0.801287, -0.502269, -0.325061,
		0.591444, -0.583115, -0.556929,
		10.245605, 14.646470, 30.885464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.523979, 14.428658, 31.443689>,  <9.831594, 15.054650, 31.275314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.523979, 14.428658, 31.443689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.907636, 14.400645, 31.334040>,  <10.137830, 14.383837, 31.268250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.907636, 14.400645, 31.334040>,  <9.523979, 14.428658, 31.443689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.907636, 14.400645, 31.334040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203353, -0.502990, 0.840029,
		-0.196711, -0.861450, -0.468197,
		0.959142, -0.070033, -0.274122,
		10.195378, 14.379635, 31.251802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.705186, 13.783670, 31.558588>,  <9.523979, 14.428658, 31.443689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.705186, 13.783670, 31.558588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.054235, 13.975885, 31.593493>,  <10.263664, 14.091214, 31.614435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.054235, 13.975885, 31.593493>,  <9.705186, 13.783670, 31.558588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.054235, 13.975885, 31.593493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217157, -0.541789, 0.811978,
		0.437463, -0.689601, -0.577129,
		0.872622, 0.480537, 0.087261,
		10.316021, 14.120047, 31.619671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.277948, 13.258146, 31.951515>,  <9.705186, 13.783670, 31.558588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.277948, 13.258146, 31.951515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.381993, 12.920297, 32.138683>,  <9.444421, 12.717587, 32.250984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.381993, 12.920297, 32.138683>,  <9.277948, 13.258146, 31.951515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.381993, 12.920297, 32.138683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761931, -0.118136, -0.636793,
		0.593129, 0.522161, 0.612817,
		0.260113, -0.844625, 0.467921,
		9.460027, 12.666909, 32.279060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.402647, 13.238059, 31.143108>,  <9.277948, 13.258146, 31.951515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.402647, 13.238059, 31.143108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.444231, 12.841588, 31.175999>,  <9.469181, 12.603705, 31.195732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.444231, 12.841588, 31.175999>,  <9.402647, 13.238059, 31.143108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.444231, 12.841588, 31.175999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615555, -0.000816, -0.788093,
		0.781207, 0.132545, 0.610039,
		0.103960, -0.991177, 0.082226,
		9.475419, 12.544235, 31.200666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.177797, 13.017015, 31.186605>,  <9.402647, 13.238059, 31.143108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.177797, 13.017015, 31.186605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.927143, 12.762765, 31.006247>,  <9.776751, 12.610215, 30.898031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.927143, 12.762765, 31.006247>,  <10.177797, 13.017015, 31.186605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.927143, 12.762765, 31.006247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715717, -0.240466, -0.655686,
		0.308345, -0.733592, 0.605612,
		-0.626635, -0.635625, -0.450898,
		9.739153, 12.572078, 30.870977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.626183, 12.475585, 31.021845>,  <10.177797, 13.017015, 31.186605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.626183, 12.475585, 31.021845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.320256, 12.547107, 30.774269>,  <10.136701, 12.590019, 30.625723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.320256, 12.547107, 30.774269>,  <10.626183, 12.475585, 31.021845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.320256, 12.547107, 30.774269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544366, -0.334460, -0.769287,
		-0.344586, -0.925287, 0.158447,
		-0.764805, 0.178833, -0.618945,
		10.090812, 12.600748, 30.588587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.518467, 11.860443, 30.615559>,  <10.626183, 12.475585, 31.021845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.518467, 11.860443, 30.615559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.352921, 12.168517, 30.421431>,  <10.253594, 12.353361, 30.304955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.352921, 12.168517, 30.421431>,  <10.518467, 11.860443, 30.615559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.352921, 12.168517, 30.421431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449767, -0.290512, -0.844578,
		-0.791471, -0.567820, -0.226172,
		-0.413863, 0.770184, -0.485319,
		10.228763, 12.399572, 30.275835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.260433, 11.632847, 29.969360>,  <10.518467, 11.860443, 30.615559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.260433, 11.632847, 29.969360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238433, 12.027256, 29.906454>,  <10.225232, 12.263902, 29.868710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238433, 12.027256, 29.906454>,  <10.260433, 11.632847, 29.969360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.238433, 12.027256, 29.906454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125755, -0.149410, -0.980746,
		-0.990535, -0.073719, -0.115779,
		-0.055001, 0.986024, -0.157266,
		10.221932, 12.323063, 29.859274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.723345, 11.795314, 29.440422>,  <10.260433, 11.632847, 29.969360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.723345, 11.795314, 29.440422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.010141, 12.073080, 29.464792>,  <10.182220, 12.239739, 29.479414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.010141, 12.073080, 29.464792>,  <9.723345, 11.795314, 29.440422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.010141, 12.073080, 29.464792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119444, -0.036275, -0.992178,
		-0.686773, 0.718660, -0.108953,
		0.716991, 0.694415, 0.060927,
		10.225239, 12.281404, 29.483070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.660872, 12.261175, 28.819868>,  <9.723345, 11.795314, 29.440422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.660872, 12.261175, 28.819868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.035535, 12.316964, 28.948378>,  <10.260333, 12.350438, 29.025484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.035535, 12.316964, 28.948378>,  <9.660872, 12.261175, 28.819868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.035535, 12.316964, 28.948378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313355, 0.076047, -0.946586,
		-0.156456, 0.987301, 0.027526,
		0.936659, 0.139473, 0.321274,
		10.316532, 12.358807, 29.044760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.889299, 12.856283, 28.492519>,  <9.660872, 12.261175, 28.819868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.889299, 12.856283, 28.492519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239352, 12.684272, 28.581261>,  <10.449384, 12.581065, 28.634504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239352, 12.684272, 28.581261>,  <9.889299, 12.856283, 28.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.239352, 12.684272, 28.581261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303429, 0.130556, -0.943868,
		0.376926, 0.893326, 0.244737,
		0.875133, -0.430029, 0.221851,
		10.501892, 12.555264, 28.647816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.384899, 13.234500, 28.192818>,  <9.889299, 12.856283, 28.492519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.384899, 13.234500, 28.192818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.581343, 12.886943, 28.217598>,  <10.699208, 12.678409, 28.232466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.581343, 12.886943, 28.217598>,  <10.384899, 13.234500, 28.192818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.581343, 12.886943, 28.217598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276859, 0.088260, -0.956849,
		0.825931, 0.487068, 0.283906,
		0.491108, -0.868893, 0.061953,
		10.728675, 12.626275, 28.236183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.987544, 13.377797, 27.831095>,  <10.384899, 13.234500, 28.192818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.987544, 13.377797, 27.831095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958216, 12.980353, 27.865421>,  <10.940619, 12.741887, 27.886017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958216, 12.980353, 27.865421>,  <10.987544, 13.377797, 27.831095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.958216, 12.980353, 27.865421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387826, -0.107682, -0.915421,
		0.918812, -0.033839, 0.393243,
		-0.073322, -0.993609, 0.085816,
		10.936219, 12.682271, 27.891167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.478422, 13.213810, 27.430285>,  <10.987544, 13.377797, 27.831095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.478422, 13.213810, 27.430285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289010, 12.862540, 27.457346>,  <11.175363, 12.651778, 27.473583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289010, 12.862540, 27.457346>,  <11.478422, 13.213810, 27.430285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289010, 12.862540, 27.457346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387976, -0.276931, -0.879081,
		0.790723, -0.390023, 0.471846,
		-0.473531, -0.878175, 0.067656,
		11.146951, 12.599088, 27.477642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.941886, 12.762952, 27.295946>,  <11.478422, 13.213810, 27.430285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.941886, 12.762952, 27.295946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.590714, 12.600245, 27.194925>,  <11.380012, 12.502622, 27.134314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.590714, 12.600245, 27.194925>,  <11.941886, 12.762952, 27.295946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.590714, 12.600245, 27.194925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366917, -0.232721, -0.900673,
		0.307589, -0.883393, 0.353562,
		-0.877930, -0.406765, -0.252550,
		11.327335, 12.478216, 27.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104471, 12.205869, 26.945879>,  <11.941886, 12.762952, 27.295946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104471, 12.205869, 26.945879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727885, 12.223701, 26.812218>,  <11.501934, 12.234402, 26.732021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727885, 12.223701, 26.812218>,  <12.104471, 12.205869, 26.945879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.727885, 12.223701, 26.812218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292373, -0.385452, -0.875183,
		-0.167816, -0.921650, 0.349855,
		-0.941465, 0.044582, -0.334151,
		11.445446, 12.237076, 26.711973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.902912, 11.463375, 26.635614>,  <12.104471, 12.205869, 26.945879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.902912, 11.463375, 26.635614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672841, 11.752666, 26.482716>,  <11.534799, 11.926241, 26.390976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672841, 11.752666, 26.482716>,  <11.902912, 11.463375, 26.635614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.672841, 11.752666, 26.482716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226242, -0.308408, -0.923958,
		-0.786121, -0.617920, 0.013764,
		-0.575177, 0.723229, -0.382245,
		11.500288, 11.969635, 26.368042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.539904, 11.168061, 26.074341>,  <11.902912, 11.463375, 26.635614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.539904, 11.168061, 26.074341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.495098, 11.558160, 25.998081>,  <11.468215, 11.792219, 25.952326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.495098, 11.558160, 25.998081>,  <11.539904, 11.168061, 26.074341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.495098, 11.558160, 25.998081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148376, -0.173290, -0.973630,
		-0.982567, -0.137347, -0.125292,
		-0.112014, 0.975247, -0.190648,
		11.461494, 11.850734, 25.940887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.029800, 11.196736, 25.452602>,  <11.539904, 11.168061, 26.074341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.029800, 11.196736, 25.452602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.249532, 11.530230, 25.474979>,  <11.381371, 11.730326, 25.488405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.249532, 11.530230, 25.474979>,  <11.029800, 11.196736, 25.452602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.249532, 11.530230, 25.474979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142077, -0.027216, -0.989481,
		-0.823440, 0.551498, -0.133405,
		0.549328, 0.833732, 0.055945,
		11.414330, 11.780350, 25.491762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.820457, 11.617989, 24.867661>,  <11.029800, 11.196736, 25.452602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.820457, 11.617989, 24.867661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.177417, 11.770413, 24.964338>,  <11.391593, 11.861868, 25.022345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.177417, 11.770413, 24.964338>,  <10.820457, 11.617989, 24.867661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.177417, 11.770413, 24.964338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239366, 0.054294, -0.969410,
		-0.382528, 0.922954, -0.042762,
		0.892399, 0.381062, 0.241693,
		11.445136, 11.884732, 25.036846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.929133, 12.039287, 24.288813>,  <10.820457, 11.617989, 24.867661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.929133, 12.039287, 24.288813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.290572, 12.007244, 24.457144>,  <11.507436, 11.988018, 24.558142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.290572, 12.007244, 24.457144>,  <10.929133, 12.039287, 24.288813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290572, 12.007244, 24.457144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424166, 0.029809, -0.905094,
		0.059960, 0.996341, 0.060914,
		0.903597, -0.080107, 0.420826,
		11.561651, 11.983212, 24.583391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.247907, 12.700772, 24.196829>,  <10.929133, 12.039287, 24.288813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.247907, 12.700772, 24.196829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.514146, 12.405505, 24.240810>,  <11.673889, 12.228345, 24.267199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.514146, 12.405505, 24.240810>,  <11.247907, 12.700772, 24.196829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.514146, 12.405505, 24.240810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408054, 0.236594, -0.881768,
		0.624878, 0.631770, 0.458688,
		0.665597, -0.738167, 0.109954,
		11.713825, 12.184055, 24.273796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841459, 12.945296, 23.847782>,  <11.247907, 12.700772, 24.196829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841459, 12.945296, 23.847782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922283, 12.556275, 23.893934>,  <11.970778, 12.322863, 23.921625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922283, 12.556275, 23.893934>,  <11.841459, 12.945296, 23.847782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.922283, 12.556275, 23.893934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303048, -0.049943, -0.951666,
		0.931308, 0.227261, 0.284638,
		0.202060, -0.972553, 0.115383,
		11.982902, 12.264509, 23.928549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.586203, 12.804026, 23.580187>,  <11.841459, 12.945296, 23.847782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.586203, 12.804026, 23.580187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349761, 12.482314, 23.555756>,  <12.207896, 12.289287, 23.541096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349761, 12.482314, 23.555756>,  <12.586203, 12.804026, 23.580187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.349761, 12.482314, 23.555756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285106, -0.137500, -0.948582,
		0.754527, -0.578124, 0.310582,
		-0.591103, -0.804280, -0.061079,
		12.172430, 12.241030, 23.537432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018699, 12.352742, 23.269014>,  <12.586203, 12.804026, 23.580187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018699, 12.352742, 23.269014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.660776, 12.186633, 23.203445>,  <12.446023, 12.086967, 23.164104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.660776, 12.186633, 23.203445>,  <13.018699, 12.352742, 23.269014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.660776, 12.186633, 23.203445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301806, -0.292081, -0.907525,
		0.328993, -0.861531, 0.386688,
		-0.894806, -0.415274, -0.163922,
		12.392334, 12.062051, 23.154268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.169268, 11.725234, 23.043379>,  <13.018699, 12.352742, 23.269014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.169268, 11.725234, 23.043379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794564, 11.804302, 22.927856>,  <12.569742, 11.851743, 22.858543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794564, 11.804302, 22.927856>,  <13.169268, 11.725234, 23.043379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794564, 11.804302, 22.927856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233865, -0.260365, -0.936759,
		-0.260365, -0.945059, 0.197670,
		0.936759, -0.197670, 0.288806,
		12.513536, 11.863604, 22.841215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.908814, 11.137910, 22.779671>,  <13.169268, 11.725234, 23.043379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.908814, 11.137910, 22.779671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.664502, 11.393305, 22.592361>,  <12.517915, 11.546542, 22.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.664502, 11.393305, 22.592361>,  <12.908814, 11.137910, 22.779671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664502, 11.393305, 22.592361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276755, -0.381953, -0.881770,
		-0.741858, -0.668165, 0.056585,
		-0.610781, 0.638488, -0.468274,
		12.481268, 11.584851, 22.451880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.551578, 10.692406, 22.222012>,  <12.908814, 11.137910, 22.779671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.551578, 10.692406, 22.222012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.507813, 11.079689, 22.132032>,  <12.481555, 11.312059, 22.078045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.507813, 11.079689, 22.132032>,  <12.551578, 10.692406, 22.222012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.507813, 11.079689, 22.132032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304079, -0.182858, -0.934933,
		-0.946343, -0.170694, -0.274405,
		-0.109410, 0.968208, -0.224950,
		12.474991, 11.370152, 22.064547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.074632, 10.776787, 21.648500>,  <12.551578, 10.692406, 22.222012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.074632, 10.776787, 21.648500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.318204, 11.093998, 21.641455>,  <12.464348, 11.284325, 21.637228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.318204, 11.093998, 21.641455>,  <12.074632, 10.776787, 21.648500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.318204, 11.093998, 21.641455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157868, -0.142921, -0.977063,
		-0.777355, 0.592183, -0.212222,
		0.608931, 0.793028, -0.017614,
		12.500883, 11.331906, 21.636171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847370, 11.223353, 21.011442>,  <12.074632, 10.776787, 21.648500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847370, 11.223353, 21.011442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.210981, 11.374226, 21.082323>,  <12.429149, 11.464748, 21.124851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.210981, 11.374226, 21.082323>,  <11.847370, 11.223353, 21.011442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.210981, 11.374226, 21.082323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224975, -0.086234, -0.970541,
		-0.350788, 0.922117, -0.163245,
		0.909029, 0.377180, 0.177204,
		12.483690, 11.487380, 21.135485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.978152, 11.648060, 20.425831>,  <11.847370, 11.223353, 21.011442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.978152, 11.648060, 20.425831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335915, 11.593319, 20.596153>,  <12.550571, 11.560474, 20.698347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335915, 11.593319, 20.596153>,  <11.978152, 11.648060, 20.425831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335915, 11.593319, 20.596153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434761, 0.042555, -0.899540,
		0.104984, 0.989677, 0.097560,
		0.894405, -0.136853, 0.425806,
		12.604237, 11.552263, 20.723894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420801, 12.152018, 20.206280>,  <11.978152, 11.648060, 20.425831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420801, 12.152018, 20.206280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662930, 11.843619, 20.285421>,  <12.808208, 11.658580, 20.332907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662930, 11.843619, 20.285421>,  <12.420801, 12.152018, 20.206280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662930, 11.843619, 20.285421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293886, -0.014528, -0.955730,
		0.739739, 0.636673, 0.217791,
		0.605324, -0.770997, 0.197856,
		12.844527, 11.612320, 20.344778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002989, 12.288994, 19.935553>,  <12.420801, 12.152018, 20.206280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002989, 12.288994, 19.935553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.048124, 11.894735, 19.985785>,  <13.075206, 11.658180, 20.015924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.048124, 11.894735, 19.985785>,  <13.002989, 12.288994, 19.935553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.048124, 11.894735, 19.985785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271035, -0.091062, -0.958252,
		0.955933, 0.142164, 0.256869,
		0.112838, -0.985646, 0.125580,
		13.081976, 11.599042, 20.023458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558879, 12.257045, 19.573151>,  <13.002989, 12.288994, 19.935553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558879, 12.257045, 19.573151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.426183, 11.883578, 19.627134>,  <13.346565, 11.659498, 19.659525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.426183, 11.883578, 19.627134>,  <13.558879, 12.257045, 19.573151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.426183, 11.883578, 19.627134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261211, -0.228378, -0.937877,
		0.906486, -0.275878, 0.319647,
		-0.331740, -0.933667, 0.134959,
		13.326661, 11.603478, 19.667622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109580, 11.750944, 19.533806>,  <13.558879, 12.257045, 19.573151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109580, 11.750944, 19.533806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771954, 11.568680, 19.420723>,  <13.569378, 11.459321, 19.352873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771954, 11.568680, 19.420723>,  <14.109580, 11.750944, 19.533806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771954, 11.568680, 19.420723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426940, -0.252049, -0.868443,
		0.324460, -0.853723, 0.407286,
		-0.844066, -0.455661, -0.282709,
		13.518734, 11.431981, 19.335911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.319241, 11.254888, 19.131903>,  <14.109580, 11.750944, 19.533806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.319241, 11.254888, 19.131903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943952, 11.254867, 18.993490>,  <13.718778, 11.254854, 18.910442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943952, 11.254867, 18.993490>,  <14.319241, 11.254888, 19.131903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943952, 11.254867, 18.993490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339024, -0.200355, -0.919196,
		-0.069281, -0.979723, 0.187996,
		-0.938223, -0.000053, -0.346030,
		13.662484, 11.254851, 18.889681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373185, 10.786799, 18.642153>,  <14.319241, 11.254888, 19.131903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373185, 10.786799, 18.642153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.026289, 10.960120, 18.544056>,  <13.818151, 11.064113, 18.485199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.026289, 10.960120, 18.544056>,  <14.373185, 10.786799, 18.642153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.026289, 10.960120, 18.544056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156537, -0.230291, -0.960449,
		-0.472640, -0.871330, 0.131890,
		-0.867241, 0.433301, -0.245240,
		13.766116, 11.090111, 18.470484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.122575, 10.328952, 18.194012>,  <14.373185, 10.786799, 18.642153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.122575, 10.328952, 18.194012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.975858, 10.697297, 18.141136>,  <13.887827, 10.918304, 18.109411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.975858, 10.697297, 18.141136>,  <14.122575, 10.328952, 18.194012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.975858, 10.697297, 18.141136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228525, -0.048550, -0.972327,
		-0.901798, -0.386851, -0.192632,
		-0.366793, 0.920863, -0.132188,
		13.865820, 10.973557, 18.101480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.700994, 10.289853, 17.636438>,  <14.122575, 10.328952, 18.194012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.700994, 10.289853, 17.636438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.745157, 10.686484, 17.663521>,  <13.771655, 10.924463, 17.679770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.745157, 10.686484, 17.663521>,  <13.700994, 10.289853, 17.636438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.745157, 10.686484, 17.663521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184315, 0.046513, -0.981766,
		-0.976646, 0.120874, -0.177628,
		0.110408, 0.991577, 0.067705,
		13.778279, 10.983957, 17.683832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.210207, 10.524734, 17.171783>,  <13.700994, 10.289853, 17.636438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.210207, 10.524734, 17.171783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462181, 10.827843, 17.239855>,  <13.613366, 11.009708, 17.280697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462181, 10.827843, 17.239855>,  <13.210207, 10.524734, 17.171783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462181, 10.827843, 17.239855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041415, 0.186032, -0.981670,
		-0.775542, 0.625437, 0.085805,
		0.629936, 0.757773, 0.170179,
		13.651162, 11.055175, 17.290909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.962232, 11.074615, 16.824841>,  <13.210207, 10.524734, 17.171783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.962232, 11.074615, 16.824841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.342882, 11.188231, 16.871714>,  <13.571272, 11.256400, 16.899837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.342882, 11.188231, 16.871714>,  <12.962232, 11.074615, 16.824841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.342882, 11.188231, 16.871714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061213, 0.198473, -0.978193,
		-0.301101, 0.938046, 0.171485,
		0.951625, 0.284038, 0.117181,
		13.628370, 11.273442, 16.906868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.013657, 11.740088, 16.517656>,  <12.962232, 11.074615, 16.824841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.013657, 11.740088, 16.517656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391845, 11.613259, 16.547455>,  <13.618758, 11.537162, 16.565334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391845, 11.613259, 16.547455>,  <13.013657, 11.740088, 16.517656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391845, 11.613259, 16.547455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146518, 0.209770, -0.966710,
		0.290889, 0.924912, 0.244788,
		0.945471, -0.317072, 0.074496,
		13.675487, 11.518138, 16.569803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.393897, 12.210698, 16.021381>,  <13.013657, 11.740088, 16.517656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.393897, 12.210698, 16.021381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.657924, 11.914405, 16.071384>,  <13.816339, 11.736629, 16.101387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.657924, 11.914405, 16.071384>,  <13.393897, 12.210698, 16.021381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.657924, 11.914405, 16.071384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276521, 0.084858, -0.957254,
		0.698462, 0.666418, 0.260840,
		0.660066, -0.740733, 0.125008,
		13.855944, 11.692184, 16.108887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.088986, 12.401767, 15.820744>,  <13.393897, 12.210698, 16.021381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.088986, 12.401767, 15.820744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069255, 12.003012, 15.796140>,  <14.057416, 11.763759, 15.781377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069255, 12.003012, 15.796140>,  <14.088986, 12.401767, 15.820744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069255, 12.003012, 15.796140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270394, 0.045957, -0.961652,
		0.961485, -0.064068, 0.267285,
		-0.049328, -0.996887, -0.061510,
		14.054457, 11.703946, 15.777686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.650091, 12.255636, 15.385220>,  <14.088986, 12.401767, 15.820744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.650091, 12.255636, 15.385220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403284, 11.941424, 15.366317>,  <14.255199, 11.752897, 15.354975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403284, 11.941424, 15.366317>,  <14.650091, 12.255636, 15.385220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.403284, 11.941424, 15.366317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214269, -0.109915, -0.970571,
		0.757218, -0.608984, 0.236134,
		-0.617017, -0.785529, -0.047257,
		14.218179, 11.705766, 15.352139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033896, 11.772688, 15.045260>,  <14.650091, 12.255636, 15.385220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033896, 11.772688, 15.045260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644827, 11.685378, 15.013612>,  <14.411385, 11.632993, 14.994623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644827, 11.685378, 15.013612>,  <15.033896, 11.772688, 15.045260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.644827, 11.685378, 15.013612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111799, -0.141669, -0.983581,
		0.203481, -0.965550, 0.162201,
		-0.972675, -0.218274, -0.079121,
		14.353024, 11.619896, 14.989876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631597, 11.961000, 15.535713>,  <15.033896, 11.772688, 15.045260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631597, 11.961000, 15.535713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968008, 12.169098, 15.476363>,  <16.169855, 12.293957, 15.440753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968008, 12.169098, 15.476363>,  <15.631597, 11.961000, 15.535713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968008, 12.169098, 15.476363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096016, 0.126369, 0.987326,
		0.532401, -0.844616, 0.056328,
		0.841029, 0.520245, -0.148376,
		16.220316, 12.325171, 15.431850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236265, 11.740012, 15.927343>,  <15.631597, 11.961000, 15.535713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236265, 11.740012, 15.927343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243116, 12.133275, 15.854559>,  <16.247227, 12.369232, 15.810888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243116, 12.133275, 15.854559>,  <16.236265, 11.740012, 15.927343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243116, 12.133275, 15.854559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060487, 0.180635, 0.981688,
		0.998022, -0.027819, -0.056374,
		0.017127, 0.983157, -0.181960,
		16.248255, 12.428222, 15.799971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874371, 12.080248, 16.235342>,  <16.236265, 11.740012, 15.927343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874371, 12.080248, 16.235342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542707, 12.300638, 16.197559>,  <16.343710, 12.432873, 16.174889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542707, 12.300638, 16.197559>,  <16.874371, 12.080248, 16.235342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542707, 12.300638, 16.197559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067666, 0.266652, 0.961415,
		0.554904, 0.790773, -0.258379,
		-0.829158, 0.550976, -0.094457,
		16.293961, 12.465931, 16.169222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052834, 12.741121, 16.475069>,  <16.874371, 12.080248, 16.235342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052834, 12.741121, 16.475069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652836, 12.739806, 16.474903>,  <16.412838, 12.739017, 16.474804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652836, 12.739806, 16.474903>,  <17.052834, 12.741121, 16.475069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.652836, 12.739806, 16.474903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001646, 0.384802, 0.922998,
		-0.002876, 0.922993, -0.384805,
		-0.999995, -0.003288, -0.000413,
		16.352837, 12.738820, 16.474779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860964, 13.411334, 16.611109>,  <17.052834, 12.741121, 16.475069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860964, 13.411334, 16.611109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550098, 13.179579, 16.709356>,  <16.363579, 13.040525, 16.768305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550098, 13.179579, 16.709356>,  <16.860964, 13.411334, 16.611109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550098, 13.179579, 16.709356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046793, 0.442426, 0.895584,
		-0.627558, 0.684521, -0.370948,
		-0.777163, -0.579388, 0.245617,
		16.316950, 13.005762, 16.783041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283323, 13.907056, 17.017664>,  <16.860964, 13.411334, 16.611109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283323, 13.907056, 17.017664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.196442, 13.523675, 17.091627>,  <16.144312, 13.293646, 17.136005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.196442, 13.523675, 17.091627>,  <16.283323, 13.907056, 17.017664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196442, 13.523675, 17.091627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026717, 0.195195, 0.980401,
		-0.975761, 0.208007, -0.068004,
		-0.217204, -0.958453, 0.184906,
		16.131281, 13.236139, 17.147099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764967, 14.087431, 17.426247>,  <16.283323, 13.907056, 17.017664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764967, 14.087431, 17.426247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845706, 13.703894, 17.506121>,  <15.894150, 13.473771, 17.554045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845706, 13.703894, 17.506121>,  <15.764967, 14.087431, 17.426247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845706, 13.703894, 17.506121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288953, 0.136509, 0.947561,
		-0.935822, -0.248964, -0.249507,
		0.201848, -0.958844, 0.199687,
		15.906260, 13.416241, 17.566027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172908, 13.728890, 17.852076>,  <15.764967, 14.087431, 17.426247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172908, 13.728890, 17.852076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481829, 13.482318, 17.913475>,  <15.667181, 13.334374, 17.950314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481829, 13.482318, 17.913475>,  <15.172908, 13.728890, 17.852076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481829, 13.482318, 17.913475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188999, 0.007724, 0.981947,
		-0.606489, -0.787370, -0.110540,
		0.772302, -0.616432, 0.153496,
		15.713519, 13.297388, 17.959524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966669, 13.311267, 18.376665>,  <15.172908, 13.728890, 17.852076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966669, 13.311267, 18.376665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.364169, 13.269974, 18.393656>,  <15.602669, 13.245197, 18.403851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.364169, 13.269974, 18.393656>,  <14.966669, 13.311267, 18.376665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364169, 13.269974, 18.393656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072695, -0.309676, 0.948059,
		-0.084718, -0.945221, -0.315245,
		0.993749, -0.103234, 0.042478,
		15.662294, 13.239003, 18.406399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064573, 12.735436, 18.786484>,  <14.966669, 13.311267, 18.376665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064573, 12.735436, 18.786484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415874, 12.924478, 18.815660>,  <15.626655, 13.037902, 18.833166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415874, 12.924478, 18.815660>,  <15.064573, 12.735436, 18.786484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415874, 12.924478, 18.815660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008816, -0.136508, 0.990600,
		0.478117, -0.870639, -0.115722,
		0.878252, 0.472602, 0.072943,
		15.679350, 13.066258, 18.837543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.576047, 12.288294, 19.169725>,  <15.064573, 12.735436, 18.786484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.576047, 12.288294, 19.169725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739043, 12.651537, 19.208282>,  <15.836842, 12.869483, 19.231417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739043, 12.651537, 19.208282>,  <15.576047, 12.288294, 19.169725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739043, 12.651537, 19.208282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094636, -0.146979, 0.984602,
		0.908292, -0.392094, -0.145833,
		0.407491, 0.908107, 0.096394,
		15.861291, 12.923969, 19.237200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000483, 12.156551, 19.675081>,  <15.576047, 12.288294, 19.169725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000483, 12.156551, 19.675081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.982638, 12.555279, 19.648657>,  <15.971931, 12.794515, 19.632803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.982638, 12.555279, 19.648657>,  <16.000483, 12.156551, 19.675081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.982638, 12.555279, 19.648657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070687, 0.069110, 0.995102,
		0.996500, 0.039722, -0.073545,
		-0.044611, 0.996818, -0.066060,
		15.969255, 12.854324, 19.628839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547565, 12.455846, 19.992392>,  <16.000483, 12.156551, 19.675081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547565, 12.455846, 19.992392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.272621, 12.746325, 19.997646>,  <16.107655, 12.920611, 20.000799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.272621, 12.746325, 19.997646>,  <16.547565, 12.455846, 19.992392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.272621, 12.746325, 19.997646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001317, -0.016843, 0.999857,
		0.726313, 0.687282, 0.010621,
		-0.687363, 0.726196, 0.013138,
		16.066412, 12.964183, 20.001587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676765, 12.973186, 20.545837>,  <16.547565, 12.455846, 19.992392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676765, 12.973186, 20.545837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292343, 13.058722, 20.475815>,  <16.061689, 13.110044, 20.433802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292343, 13.058722, 20.475815>,  <16.676765, 12.973186, 20.545837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292343, 13.058722, 20.475815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164193, 0.067687, 0.984103,
		0.222292, 0.974521, -0.029939,
		-0.961055, 0.213842, -0.175055,
		16.004026, 13.122875, 20.423298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.567295, 13.549874, 20.916563>,  <16.676765, 12.973186, 20.545837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.567295, 13.549874, 20.916563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200058, 13.401910, 20.859610>,  <15.979716, 13.313131, 20.825438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200058, 13.401910, 20.859610>,  <16.567295, 13.549874, 20.916563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200058, 13.401910, 20.859610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212919, 0.157261, 0.964331,
		-0.334325, 0.915661, -0.223140,
		-0.918092, -0.369911, -0.142386,
		15.924630, 13.290936, 20.816895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070158, 14.024215, 21.178333>,  <16.567295, 13.549874, 20.916563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070158, 14.024215, 21.178333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868450, 13.679111, 21.193043>,  <15.747425, 13.472048, 21.201868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868450, 13.679111, 21.193043>,  <16.070158, 14.024215, 21.178333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868450, 13.679111, 21.193043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332020, 0.233021, 0.914037,
		-0.797166, 0.448713, -0.403960,
		-0.504272, -0.862762, 0.036775,
		15.717169, 13.420282, 21.204075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624219, 14.158883, 21.681883>,  <16.070158, 14.024215, 21.178333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624219, 14.158883, 21.681883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552862, 13.769203, 21.626587>,  <15.510048, 13.535395, 21.593409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552862, 13.769203, 21.626587>,  <15.624219, 14.158883, 21.681883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552862, 13.769203, 21.626587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494644, -0.032662, 0.868482,
		-0.850591, 0.223310, -0.476055,
		-0.178391, -0.974200, -0.138241,
		15.499345, 13.476943, 21.585115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908140, 14.107056, 21.729557>,  <15.624219, 14.158883, 21.681883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908140, 14.107056, 21.729557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078896, 13.753516, 21.806057>,  <15.181349, 13.541392, 21.851957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078896, 13.753516, 21.806057>,  <14.908140, 14.107056, 21.729557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078896, 13.753516, 21.806057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491864, -0.049472, 0.869265,
		-0.758838, -0.465148, -0.455853,
		0.426888, -0.883850, 0.191249,
		15.206963, 13.488361, 21.863432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380575, 13.625272, 21.837460>,  <14.908140, 14.107056, 21.729557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.380575, 13.625272, 21.837460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683156, 13.444764, 22.026833>,  <14.864704, 13.336459, 22.140455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683156, 13.444764, 22.026833>,  <14.380575, 13.625272, 21.837460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.683156, 13.444764, 22.026833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558182, -0.068140, 0.826916,
		-0.340902, -0.889782, -0.303436,
		0.756451, -0.451270, 0.473431,
		14.910091, 13.309383, 22.168861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099150, 13.004712, 22.073429>,  <14.380575, 13.625272, 21.837460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099150, 13.004712, 22.073429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.426970, 13.056164, 22.296783>,  <14.623661, 13.087034, 22.430796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.426970, 13.056164, 22.296783>,  <14.099150, 13.004712, 22.073429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.426970, 13.056164, 22.296783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552061, -0.083832, 0.829578,
		0.153518, -0.988143, 0.002306,
		0.819549, 0.128629, 0.558385,
		14.672834, 13.094752, 22.464298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016829, 12.634109, 22.632502>,  <14.099150, 13.004712, 22.073429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016829, 12.634109, 22.632502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285059, 12.902809, 22.758410>,  <14.445997, 13.064029, 22.833954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285059, 12.902809, 22.758410>,  <14.016829, 12.634109, 22.632502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285059, 12.902809, 22.758410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479564, 0.068807, 0.874805,
		0.565993, -0.737575, 0.368287,
		0.670575, 0.671750, 0.314770,
		14.486232, 13.104334, 22.852840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128837, 12.370404, 23.312256>,  <14.016829, 12.634109, 22.632502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128837, 12.370404, 23.312256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286233, 12.737753, 23.295486>,  <14.380671, 12.958162, 23.285425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286233, 12.737753, 23.295486>,  <14.128837, 12.370404, 23.312256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286233, 12.737753, 23.295486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305552, 0.173656, 0.936206,
		0.867065, -0.355579, 0.348943,
		0.393491, 0.918372, -0.041923,
		14.404281, 13.013265, 23.282909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.604326, 12.448895, 23.977478>,  <14.128837, 12.370404, 23.312256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.604326, 12.448895, 23.977478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506025, 12.804730, 23.823471>,  <14.447044, 13.018231, 23.731068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506025, 12.804730, 23.823471>,  <14.604326, 12.448895, 23.977478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506025, 12.804730, 23.823471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277624, 0.315962, 0.907244,
		0.928725, 0.329848, 0.169323,
		-0.245753, 0.889589, -0.385016,
		14.432300, 13.071607, 23.707966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904088, 12.914751, 24.423759>,  <14.604326, 12.448895, 23.977478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904088, 12.914751, 24.423759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612355, 13.119268, 24.241922>,  <14.437316, 13.241979, 24.132820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612355, 13.119268, 24.241922>,  <14.904088, 12.914751, 24.423759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612355, 13.119268, 24.241922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338744, 0.307427, 0.889236,
		0.594414, 0.802539, -0.051019,
		-0.729331, 0.511292, -0.454594,
		14.393556, 13.272656, 24.105545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782727, 13.539597, 24.763023>,  <14.904088, 12.914751, 24.423759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782727, 13.539597, 24.763023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440966, 13.521624, 24.555958>,  <14.235909, 13.510839, 24.431719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440966, 13.521624, 24.555958>,  <14.782727, 13.539597, 24.763023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440966, 13.521624, 24.555958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450415, 0.560778, 0.694733,
		0.259078, 0.826746, -0.499369,
		-0.854403, -0.044933, -0.517665,
		14.184645, 13.508143, 24.400658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.541411, 14.193261, 24.692095>,  <14.782727, 13.539597, 24.763023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.541411, 14.193261, 24.692095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210035, 13.978708, 24.627623>,  <14.011209, 13.849977, 24.588940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210035, 13.978708, 24.627623>,  <14.541411, 14.193261, 24.692095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210035, 13.978708, 24.627623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431525, 0.427840, 0.794191,
		-0.357031, 0.727493, -0.585903,
		-0.828441, -0.536383, -0.161179,
		13.961503, 13.817794, 24.579269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999564, 14.625199, 24.651058>,  <14.541411, 14.193261, 24.692095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999564, 14.625199, 24.651058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837500, 14.271761, 24.744953>,  <13.740261, 14.059698, 24.801291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837500, 14.271761, 24.744953>,  <13.999564, 14.625199, 24.651058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837500, 14.271761, 24.744953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557424, 0.442260, 0.702626,
		-0.724653, 0.153830, -0.671725,
		-0.405162, -0.883596, 0.234737,
		13.715951, 14.006682, 24.815374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283999, 14.702730, 24.571789>,  <13.999564, 14.625199, 24.651058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.283999, 14.702730, 24.571789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363607, 14.406985, 24.829079>,  <13.411372, 14.229538, 24.983452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363607, 14.406985, 24.829079>,  <13.283999, 14.702730, 24.571789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.363607, 14.406985, 24.829079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471520, 0.503141, 0.724236,
		-0.859104, -0.447430, -0.248489,
		0.199020, -0.739362, 0.643222,
		13.423313, 14.185177, 25.022045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.653366, 14.561077, 24.953892>,  <13.283999, 14.702730, 24.571789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.653366, 14.561077, 24.953892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.961511, 14.426789, 25.170717>,  <13.146398, 14.346216, 25.300812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.961511, 14.426789, 25.170717>,  <12.653366, 14.561077, 24.953892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.961511, 14.426789, 25.170717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357260, 0.476892, 0.803081,
		-0.528116, -0.812322, 0.247440,
		0.770363, -0.335720, 0.542065,
		13.192619, 14.326074, 25.333336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.318336, 14.341694, 25.575626>,  <12.653366, 14.561077, 24.953892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.318336, 14.341694, 25.575626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.699598, 14.329516, 25.696005>,  <12.928355, 14.322209, 25.768232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.699598, 14.329516, 25.696005>,  <12.318336, 14.341694, 25.575626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.699598, 14.329516, 25.696005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246626, 0.497823, 0.831473,
		-0.175132, -0.866744, 0.466994,
		0.953155, -0.030445, 0.300946,
		12.985545, 14.320383, 25.786289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254326, 14.087632, 26.257101>,  <12.318336, 14.341694, 25.575626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254326, 14.087632, 26.257101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589731, 14.302368, 26.219797>,  <12.790975, 14.431210, 26.197414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589731, 14.302368, 26.219797>,  <12.254326, 14.087632, 26.257101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589731, 14.302368, 26.219797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320949, 0.624934, 0.711653,
		0.440326, -0.566798, 0.696314,
		0.838513, 0.536840, -0.093261,
		12.841285, 14.463421, 26.191818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401573, 14.254748, 26.887739>,  <12.254326, 14.087632, 26.257101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401573, 14.254748, 26.887739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616257, 14.514479, 26.672215>,  <12.745067, 14.670317, 26.542900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616257, 14.514479, 26.672215>,  <12.401573, 14.254748, 26.887739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616257, 14.514479, 26.672215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226802, 0.726099, 0.649108,
		0.812714, -0.226178, 0.536972,
		0.536709, 0.649326, -0.538813,
		12.777269, 14.709276, 26.510571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.553401, 14.682087, 27.422508>,  <12.401573, 14.254748, 26.887739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.553401, 14.682087, 27.422508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.663830, 14.888727, 27.098309>,  <12.730087, 15.012712, 26.903790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.663830, 14.888727, 27.098309>,  <12.553401, 14.682087, 27.422508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.663830, 14.888727, 27.098309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236469, 0.853858, 0.463691,
		0.931594, 0.063647, 0.357885,
		0.276070, 0.516601, -0.810499,
		12.746651, 15.043708, 26.855160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.994257, 15.147098, 27.678978>,  <12.553401, 14.682087, 27.422508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.994257, 15.147098, 27.678978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.829513, 15.269698, 27.335716>,  <12.730666, 15.343259, 27.129759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.829513, 15.269698, 27.335716>,  <12.994257, 15.147098, 27.678978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.829513, 15.269698, 27.335716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552810, 0.664608, 0.502690,
		0.724411, 0.681435, -0.104290,
		-0.411862, 0.306501, -0.858153,
		12.705955, 15.361649, 27.078270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.086532, 15.853917, 27.698177>,  <12.994257, 15.147098, 27.678978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.086532, 15.853917, 27.698177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781373, 15.784489, 27.449062>,  <12.598278, 15.742831, 27.299593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781373, 15.784489, 27.449062>,  <13.086532, 15.853917, 27.698177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781373, 15.784489, 27.449062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513998, 0.747144, 0.421404,
		0.392168, 0.641598, -0.659208,
		-0.762896, -0.173571, -0.622787,
		12.552505, 15.732417, 27.262226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.865041, 15.584168, 28.328358>,  <13.086532, 15.853917, 27.698177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.865041, 15.584168, 28.328358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.899657, 15.701277, 28.709261>,  <12.920427, 15.771542, 28.937803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.899657, 15.701277, 28.709261>,  <12.865041, 15.584168, 28.328358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.899657, 15.701277, 28.709261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450243, 0.864154, -0.224766,
		-0.888703, -0.409296, 0.206602,
		0.086540, 0.292771, 0.952258,
		12.925619, 15.789108, 28.994938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.181714, 15.923933, 28.698639>,  <12.865041, 15.584168, 28.328358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.181714, 15.923933, 28.698639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516169, 16.091127, 28.840717>,  <12.716842, 16.191444, 28.925964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516169, 16.091127, 28.840717>,  <12.181714, 15.923933, 28.698639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516169, 16.091127, 28.840717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265578, 0.875082, -0.404599,
		-0.479942, 0.243967, 0.842696,
		0.836136, 0.417986, 0.355196,
		12.767010, 16.216522, 28.947275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.107718, 16.575804, 29.134056>,  <12.181714, 15.923933, 28.698639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.107718, 16.575804, 29.134056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.462235, 16.584038, 28.948988>,  <12.674946, 16.588978, 28.837948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.462235, 16.584038, 28.948988>,  <12.107718, 16.575804, 29.134056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.462235, 16.584038, 28.948988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182925, 0.933341, -0.308891,
		0.425469, 0.358402, 0.830978,
		0.886293, 0.020583, -0.462668,
		12.728123, 16.590212, 28.810188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486638, 17.208319, 29.096043>,  <12.107718, 16.575804, 29.134056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486638, 17.208319, 29.096043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743138, 17.483414, 29.232168>,  <12.897038, 17.648470, 29.313845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743138, 17.483414, 29.232168>,  <12.486638, 17.208319, 29.096043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743138, 17.483414, 29.232168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465244, 0.004217, -0.885173,
		-0.610200, 0.725948, -0.317261,
		0.641252, 0.687736, 0.340316,
		12.935513, 17.689735, 29.334263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446114, 17.792486, 28.688482>,  <12.486638, 17.208319, 29.096043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446114, 17.792486, 28.688482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802616, 17.817225, 28.868189>,  <13.016518, 17.832067, 28.976013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802616, 17.817225, 28.868189>,  <12.446114, 17.792486, 28.688482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.802616, 17.817225, 28.868189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431564, 0.188723, -0.882120,
		-0.139341, 0.980081, 0.141511,
		0.891256, 0.061844, 0.449264,
		13.069993, 17.835777, 29.002968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724593, 18.402523, 28.419716>,  <12.446114, 17.792486, 28.688482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724593, 18.402523, 28.419716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036921, 18.174492, 28.521957>,  <13.224318, 18.037674, 28.583303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036921, 18.174492, 28.521957>,  <12.724593, 18.402523, 28.419716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.036921, 18.174492, 28.521957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438774, 0.209136, -0.873922,
		0.444746, 0.794529, 0.413432,
		0.780819, -0.570076, 0.255606,
		13.271167, 18.003469, 28.598639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224556, 18.711405, 28.096657>,  <12.724593, 18.402523, 28.419716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.224556, 18.711405, 28.096657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.401508, 18.365961, 28.193386>,  <13.507680, 18.158695, 28.251423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.401508, 18.365961, 28.193386>,  <13.224556, 18.711405, 28.096657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.401508, 18.365961, 28.193386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519497, 0.026967, -0.854047,
		0.731042, 0.503439, 0.460572,
		0.442380, -0.863610, 0.241821,
		13.534223, 18.106878, 28.265932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.041783, 18.729664, 27.879169>,  <13.224556, 18.711405, 28.096657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.041783, 18.729664, 27.879169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926942, 18.348846, 27.921480>,  <13.858037, 18.120356, 27.946867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926942, 18.348846, 27.921480>,  <14.041783, 18.729664, 27.879169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926942, 18.348846, 27.921480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195085, -0.166225, -0.966598,
		0.937823, -0.256879, 0.233453,
		-0.287105, -0.952041, 0.105777,
		13.840811, 18.063234, 27.953213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590743, 18.254549, 27.560539>,  <14.041783, 18.729664, 27.879169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590743, 18.254549, 27.560539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257382, 18.033735, 27.549984>,  <14.057365, 17.901247, 27.543650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257382, 18.033735, 27.549984>,  <14.590743, 18.254549, 27.560539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257382, 18.033735, 27.549984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172911, -0.215095, -0.961164,
		0.524921, -0.805600, 0.274714,
		-0.833403, -0.552036, -0.026390,
		14.007361, 17.868124, 27.542067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789527, 17.568438, 27.580656>,  <14.590743, 18.254549, 27.560539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789527, 17.568438, 27.580656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420410, 17.534796, 27.430252>,  <14.198940, 17.514610, 27.340010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420410, 17.534796, 27.430252>,  <14.789527, 17.568438, 27.580656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420410, 17.534796, 27.430252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385240, -0.183984, -0.904290,
		0.006879, -0.979324, 0.202180,
		-0.922791, -0.084108, -0.376009,
		14.143573, 17.509563, 27.317450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938204, 17.240675, 27.034510>,  <14.789527, 17.568438, 27.580656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.938204, 17.240675, 27.034510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.558576, 17.338362, 26.954885>,  <14.330799, 17.396973, 26.907110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.558576, 17.338362, 26.954885>,  <14.938204, 17.240675, 27.034510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558576, 17.338362, 26.954885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162611, -0.161469, -0.973389,
		-0.269860, -0.956183, 0.113533,
		-0.949070, 0.244217, -0.199060,
		14.273854, 17.411627, 26.895168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610182, 16.666605, 26.621805>,  <14.938204, 17.240675, 27.034510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610182, 16.666605, 26.621805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386785, 16.988857, 26.542765>,  <14.252746, 17.182209, 26.495340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386785, 16.988857, 26.542765>,  <14.610182, 16.666605, 26.621805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386785, 16.988857, 26.542765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031242, -0.217616, -0.975534,
		-0.828920, -0.551003, 0.096368,
		-0.558494, 0.805629, -0.197601,
		14.219236, 17.230547, 26.483484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.316676, 16.481924, 26.120899>,  <14.610182, 16.666605, 26.621805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.316676, 16.481924, 26.120899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.256269, 16.876066, 26.089218>,  <14.220025, 17.112551, 26.070210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.256269, 16.876066, 26.089218>,  <14.316676, 16.481924, 26.120899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.256269, 16.876066, 26.089218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115994, -0.097230, -0.988480,
		-0.981702, -0.140091, 0.128979,
		-0.151018, 0.985353, -0.079201,
		14.210964, 17.171673, 26.065458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881763, 16.531151, 25.673416>,  <14.316676, 16.481924, 26.120899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881763, 16.531151, 25.673416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082150, 16.875635, 25.639128>,  <14.202382, 17.082325, 25.618555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082150, 16.875635, 25.639128>,  <13.881763, 16.531151, 25.673416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.082150, 16.875635, 25.639128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045801, -0.072524, -0.996315,
		-0.864254, 0.503046, 0.003113,
		0.500967, 0.861211, -0.085719,
		14.232440, 17.133999, 25.613413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.530116, 16.869947, 25.275913>,  <13.881763, 16.531151, 25.673416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.530116, 16.869947, 25.275913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899150, 17.022423, 25.252136>,  <14.120570, 17.113909, 25.237871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899150, 17.022423, 25.252136>,  <13.530116, 16.869947, 25.275913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899150, 17.022423, 25.252136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088045, 0.058026, -0.994425,
		-0.375616, 0.922674, 0.087096,
		0.922584, 0.381190, -0.059442,
		14.175925, 17.136780, 25.234304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.555572, 17.518982, 24.742958>,  <13.530116, 16.869947, 25.275913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.555572, 17.518982, 24.742958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917634, 17.354864, 24.787413>,  <14.134871, 17.256393, 24.814085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917634, 17.354864, 24.787413>,  <13.555572, 17.518982, 24.742958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.917634, 17.354864, 24.787413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156264, 0.078024, -0.984629,
		0.395317, 0.908609, 0.134738,
		0.905155, -0.410295, 0.111138,
		14.189180, 17.231775, 24.820755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943393, 17.840673, 24.311089>,  <13.555572, 17.518982, 24.742958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943393, 17.840673, 24.311089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.170176, 17.522476, 24.396645>,  <14.306246, 17.331558, 24.447979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.170176, 17.522476, 24.396645>,  <13.943393, 17.840673, 24.311089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.170176, 17.522476, 24.396645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106692, -0.186553, -0.976634,
		0.816808, 0.576531, -0.020895,
		0.566958, -0.795494, 0.213889,
		14.340262, 17.283829, 24.460812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515849, 17.870693, 24.005344>,  <13.943393, 17.840673, 24.311089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.515849, 17.870693, 24.005344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495208, 17.473064, 24.043631>,  <14.482822, 17.234488, 24.066603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495208, 17.473064, 24.043631>,  <14.515849, 17.870693, 24.005344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.495208, 17.473064, 24.043631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173744, -0.103320, -0.979356,
		0.983438, -0.033908, 0.178045,
		-0.051604, -0.994070, 0.095718,
		14.479727, 17.174843, 24.072346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626737, 17.615334, 23.303411>,  <14.515849, 17.870693, 24.005344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626737, 17.615334, 23.303411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.543430, 17.273508, 23.493715>,  <14.493446, 17.068413, 23.607899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.543430, 17.273508, 23.493715>,  <14.626737, 17.615334, 23.303411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543430, 17.273508, 23.493715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090273, -0.501146, -0.860641,
		0.973897, -0.136294, 0.181515,
		-0.208266, -0.854562, 0.475762,
		14.480950, 17.017139, 23.636444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213841, 17.015837, 23.337057>,  <14.626737, 17.615334, 23.303411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.213841, 17.015837, 23.337057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848486, 16.853317, 23.347212>,  <14.629272, 16.755806, 23.353306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848486, 16.853317, 23.347212>,  <15.213841, 17.015837, 23.337057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848486, 16.853317, 23.347212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216186, -0.536957, -0.815439,
		0.344942, -0.739324, 0.578286,
		-0.913388, -0.406297, 0.025388,
		14.574470, 16.731428, 23.354828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.299574, 16.383728, 23.128693>,  <15.213841, 17.015837, 23.337057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.299574, 16.383728, 23.128693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.902209, 16.402445, 23.086851>,  <14.663791, 16.413675, 23.061747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.902209, 16.402445, 23.086851>,  <15.299574, 16.383728, 23.128693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.902209, 16.402445, 23.086851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057644, -0.584884, -0.809066,
		-0.099040, -0.809766, 0.578333,
		-0.993412, 0.046792, -0.104605,
		14.604185, 16.416483, 23.055470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084728, 15.706701, 23.056021>,  <15.299574, 16.383728, 23.128693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084728, 15.706701, 23.056021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.799565, 15.921322, 22.875410>,  <14.628468, 16.050095, 22.767044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.799565, 15.921322, 22.875410>,  <15.084728, 15.706701, 23.056021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799565, 15.921322, 22.875410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097208, -0.562053, -0.821369,
		-0.694489, -0.629451, 0.348534,
		-0.712906, 0.536552, -0.451527,
		14.585693, 16.082287, 22.739952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516582, 15.297523, 22.802782>,  <15.084728, 15.706701, 23.056021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.516582, 15.297523, 22.802782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.537910, 15.634370, 22.588120>,  <14.550706, 15.836477, 22.459322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.537910, 15.634370, 22.588120>,  <14.516582, 15.297523, 22.802782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.537910, 15.634370, 22.588120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274879, -0.529033, -0.802848,
		-0.959999, -0.104710, -0.259686,
		0.053317, 0.842116, -0.536654,
		14.553905, 15.887005, 22.427124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238548, 15.068863, 22.214533>,  <14.516582, 15.297523, 22.802782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238548, 15.068863, 22.214533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371516, 15.436302, 22.129047>,  <14.451297, 15.656766, 22.077755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371516, 15.436302, 22.129047>,  <14.238548, 15.068863, 22.214533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371516, 15.436302, 22.129047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293858, -0.316202, -0.902033,
		-0.896183, 0.237051, -0.375050,
		0.332420, 0.918598, -0.213716,
		14.471242, 15.711882, 22.064932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.118280, 14.980702, 21.412018>,  <14.238548, 15.068863, 22.214533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.118280, 14.980702, 21.412018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344416, 15.306927, 21.461422>,  <14.480097, 15.502661, 21.491064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344416, 15.306927, 21.461422>,  <14.118280, 14.980702, 21.412018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344416, 15.306927, 21.461422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412804, -0.150101, -0.898367,
		-0.714132, 0.558867, -0.421524,
		0.565338, 0.815560, 0.123511,
		14.514017, 15.551595, 21.498476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.104164, 15.343686, 20.800898>,  <14.118280, 14.980702, 21.412018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.104164, 15.343686, 20.800898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.443827, 15.451819, 20.982382>,  <14.647624, 15.516700, 21.091272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.443827, 15.451819, 20.982382>,  <14.104164, 15.343686, 20.800898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.443827, 15.451819, 20.982382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474657, -0.013933, -0.880061,
		-0.231589, 0.962666, -0.140147,
		0.849157, 0.270334, 0.453710,
		14.698574, 15.532920, 21.118494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355315, 15.794550, 20.321693>,  <14.104164, 15.343686, 20.800898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.355315, 15.794550, 20.321693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680661, 15.721923, 20.542770>,  <14.875869, 15.678347, 20.675417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680661, 15.721923, 20.542770>,  <14.355315, 15.794550, 20.321693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680661, 15.721923, 20.542770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548356, -0.077989, -0.832600,
		0.194277, 0.980281, 0.036130,
		0.813365, -0.181568, 0.552694,
		14.924670, 15.667453, 20.708578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854955, 16.319933, 20.205738>,  <14.355315, 15.794550, 20.321693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854955, 16.319933, 20.205738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.071371, 16.011282, 20.339523>,  <15.201221, 15.826091, 20.419794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.071371, 16.011282, 20.339523>,  <14.854955, 16.319933, 20.205738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.071371, 16.011282, 20.339523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618741, 0.095872, -0.779723,
		0.569591, 0.628807, 0.529308,
		0.541041, -0.771628, 0.334461,
		15.233684, 15.779794, 20.439861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523858, 16.559052, 20.040543>,  <14.854955, 16.319933, 20.205738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.523858, 16.559052, 20.040543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551437, 16.165462, 20.106327>,  <15.567985, 15.929310, 20.145798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551437, 16.165462, 20.106327>,  <15.523858, 16.559052, 20.040543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551437, 16.165462, 20.106327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641460, -0.082532, -0.762704,
		0.764052, 0.158083, 0.625488,
		0.068947, -0.983971, 0.164463,
		15.572122, 15.870272, 20.155666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222198, 16.384464, 20.112274>,  <15.523858, 16.559052, 20.040543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222198, 16.384464, 20.112274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029301, 16.060034, 19.979851>,  <15.913563, 15.865376, 19.900396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029301, 16.060034, 19.979851>,  <16.222198, 16.384464, 20.112274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029301, 16.060034, 19.979851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626004, -0.054686, -0.777900,
		0.612830, -0.582382, 0.534107,
		-0.482243, -0.811074, -0.331060,
		15.884627, 15.816711, 19.880533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748177, 15.995633, 19.956400>,  <16.222198, 16.384464, 20.112274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748177, 15.995633, 19.956400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.437244, 15.847781, 19.752781>,  <16.250685, 15.759070, 19.630610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.437244, 15.847781, 19.752781>,  <16.748177, 15.995633, 19.956400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.437244, 15.847781, 19.752781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586982, -0.135084, -0.798250,
		0.226292, -0.919308, 0.321971,
		-0.777331, -0.369629, -0.509049,
		16.204044, 15.736893, 19.600067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983650, 15.267993, 19.772299>,  <16.748177, 15.995633, 19.956400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983650, 15.267993, 19.772299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.686737, 15.413718, 19.547338>,  <16.508589, 15.501153, 19.412363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.686737, 15.413718, 19.547338>,  <16.983650, 15.267993, 19.772299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686737, 15.413718, 19.547338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511433, -0.234272, -0.826773,
		-0.432959, -0.901328, -0.012426,
		-0.742283, 0.364313, -0.562398,
		16.464052, 15.523012, 19.378618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999563, 14.797527, 19.222425>,  <16.983650, 15.267993, 19.772299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999563, 14.797527, 19.222425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779352, 15.102427, 19.086254>,  <16.647224, 15.285368, 19.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779352, 15.102427, 19.086254>,  <16.999563, 14.797527, 19.222425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.779352, 15.102427, 19.086254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564725, 0.039716, -0.824323,
		-0.614820, -0.646063, -0.452327,
		-0.550529, 0.762250, -0.340430,
		16.614193, 15.331102, 18.984125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812666, 14.699564, 18.559128>,  <16.999563, 14.797527, 19.222425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812666, 14.699564, 18.559128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791807, 15.097089, 18.598354>,  <16.779293, 15.335604, 18.621889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.791807, 15.097089, 18.598354>,  <16.812666, 14.699564, 18.559128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791807, 15.097089, 18.598354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589564, 0.109895, -0.800211,
		-0.806037, 0.016087, -0.591647,
		-0.052146, 0.993813, 0.098064,
		16.776163, 15.395233, 18.627773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752045, 14.864824, 17.901493>,  <16.812666, 14.699564, 18.559128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752045, 14.864824, 17.901493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.849766, 15.212327, 18.073809>,  <16.908400, 15.420829, 18.177198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.849766, 15.212327, 18.073809>,  <16.752045, 14.864824, 17.901493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.849766, 15.212327, 18.073809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452367, 0.290842, -0.843075,
		-0.857718, 0.400841, -0.321943,
		0.244304, 0.868756, 0.430788,
		16.923058, 15.472954, 18.203045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759644, 15.420169, 17.353514>,  <16.752045, 14.864824, 17.901493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759644, 15.420169, 17.353514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986696, 15.548512, 17.656788>,  <17.122927, 15.625517, 17.838753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986696, 15.548512, 17.656788>,  <16.759644, 15.420169, 17.353514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986696, 15.548512, 17.656788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639475, 0.408195, -0.651497,
		-0.518525, 0.854651, 0.026525,
		0.567630, 0.320856, 0.758187,
		17.156984, 15.644768, 17.884245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909700, 16.036007, 17.175028>,  <16.759644, 15.420169, 17.353514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909700, 16.036007, 17.175028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.174215, 15.993996, 17.472126>,  <17.332924, 15.968789, 17.650385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.174215, 15.993996, 17.472126>,  <16.909700, 16.036007, 17.175028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174215, 15.993996, 17.472126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616214, 0.640688, -0.458038,
		-0.427762, 0.760584, 0.488397,
		0.661287, -0.105026, 0.742744,
		17.372601, 15.962488, 17.694950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043032, 16.685575, 17.450720>,  <16.909700, 16.036007, 17.175028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043032, 16.685575, 17.450720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367987, 16.464968, 17.526461>,  <17.562960, 16.332603, 17.571905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367987, 16.464968, 17.526461>,  <17.043032, 16.685575, 17.450720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367987, 16.464968, 17.526461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558323, 0.642006, -0.525456,
		0.168233, 0.532593, 0.829483,
		0.812387, -0.551519, 0.189353,
		17.611702, 16.299513, 17.583267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509825, 17.092051, 17.345720>,  <17.043032, 16.685575, 17.450720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509825, 17.092051, 17.345720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756800, 16.777924, 17.363829>,  <17.904985, 16.589447, 17.374693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756800, 16.777924, 17.363829>,  <17.509825, 17.092051, 17.345720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.756800, 16.777924, 17.363829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622598, 0.452709, -0.638300,
		0.480773, 0.422296, 0.768456,
		0.617438, -0.785316, 0.045271,
		17.942032, 16.542328, 17.377409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190123, 17.327688, 17.517756>,  <17.509825, 17.092051, 17.345720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190123, 17.327688, 17.517756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227037, 16.994589, 17.299393>,  <18.249186, 16.794729, 17.168375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227037, 16.994589, 17.299393>,  <18.190123, 17.327688, 17.517756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227037, 16.994589, 17.299393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635648, 0.471272, -0.611435,
		0.766442, -0.290578, 0.572827,
		0.092288, -0.832746, -0.545909,
		18.254725, 16.744764, 17.135620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896664, 17.353308, 17.364273>,  <18.190123, 17.327688, 17.517756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896664, 17.353308, 17.364273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738384, 17.087929, 17.110260>,  <18.643417, 16.928701, 16.957853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738384, 17.087929, 17.110260>,  <18.896664, 17.353308, 17.364273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738384, 17.087929, 17.110260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539125, 0.391977, -0.745452,
		0.743484, -0.637334, 0.202576,
		-0.395697, -0.663445, -0.635031,
		18.619675, 16.888895, 16.919750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479650, 16.959509, 16.997375>,  <18.896664, 17.353308, 17.364273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479650, 16.959509, 16.997375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.149496, 16.934687, 16.772915>,  <18.951405, 16.919794, 16.638239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.149496, 16.934687, 16.772915>,  <19.479650, 16.959509, 16.997375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.149496, 16.934687, 16.772915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554568, 0.097157, -0.826447,
		0.105825, -0.993331, -0.045765,
		-0.825382, -0.062079, -0.561151,
		18.901880, 16.916069, 16.604570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.738823, 16.563496, 16.397234>,  <19.479650, 16.959509, 16.997375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.738823, 16.563496, 16.397234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399696, 16.748758, 16.293938>,  <19.196220, 16.859917, 16.231960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399696, 16.748758, 16.293938>,  <19.738823, 16.563496, 16.397234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399696, 16.748758, 16.293938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343618, 0.108917, -0.932772,
		-0.403894, -0.879558, -0.251491,
		-0.847819, 0.463158, -0.258241,
		19.145351, 16.887705, 16.216465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528374, 16.300373, 15.706753>,  <19.738823, 16.563496, 16.397234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528374, 16.300373, 15.706753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350544, 16.658241, 15.724264>,  <19.243847, 16.872963, 15.734771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350544, 16.658241, 15.724264>,  <19.528374, 16.300373, 15.706753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350544, 16.658241, 15.724264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403436, 0.243629, -0.881977,
		-0.799746, -0.374441, -0.469254,
		-0.444572, 0.894672, 0.043778,
		19.217173, 16.926643, 15.737397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148766, 16.393665, 15.074182>,  <19.528374, 16.300373, 15.706753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148766, 16.393665, 15.074182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.241507, 16.742903, 15.245741>,  <19.297152, 16.952446, 15.348677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.241507, 16.742903, 15.245741>,  <19.148766, 16.393665, 15.074182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.241507, 16.742903, 15.245741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323431, 0.346636, -0.880475,
		-0.917408, 0.342859, -0.202018,
		0.231852, 0.873093, 0.428898,
		19.311062, 17.004831, 15.374411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026640, 16.937599, 14.610391>,  <19.148766, 16.393665, 15.074182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026640, 16.937599, 14.610391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292542, 17.104252, 14.858429>,  <19.452082, 17.204243, 15.007252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292542, 17.104252, 14.858429>,  <19.026640, 16.937599, 14.610391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292542, 17.104252, 14.858429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502191, 0.365313, -0.783805,
		-0.553087, 0.832445, 0.033615,
		0.664755, 0.416631, 0.620097,
		19.491968, 17.229240, 15.044458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.031342, 17.660034, 14.427172>,  <19.026640, 16.937599, 14.610391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.031342, 17.660034, 14.427172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363436, 17.495888, 14.578067>,  <19.562693, 17.397400, 14.668604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363436, 17.495888, 14.578067>,  <19.031342, 17.660034, 14.427172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363436, 17.495888, 14.578067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521867, 0.334429, -0.784737,
		0.195872, 0.848384, 0.491812,
		0.830234, -0.410368, 0.377239,
		19.612507, 17.372778, 14.691238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.548281, 18.192770, 14.400318>,  <19.031342, 17.660034, 14.427172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.548281, 18.192770, 14.400318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733912, 17.838451, 14.400208>,  <19.845291, 17.625860, 14.400141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733912, 17.838451, 14.400208>,  <19.548281, 18.192770, 14.400318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733912, 17.838451, 14.400208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662788, 0.347450, -0.663318,
		0.587660, 0.307648, 0.748337,
		0.464078, -0.885794, -0.000277,
		19.873135, 17.572714, 14.400125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276876, 18.264244, 14.437823>,  <19.548281, 18.192770, 14.400318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276876, 18.264244, 14.437823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222006, 17.894312, 14.295909>,  <20.189083, 17.672354, 14.210760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222006, 17.894312, 14.295909>,  <20.276876, 18.264244, 14.437823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222006, 17.894312, 14.295909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716079, 0.154885, -0.680619,
		0.684407, -0.347420, 0.641004,
		-0.137179, -0.924830, -0.354785,
		20.180853, 17.616863, 14.189473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845585, 17.850288, 14.521093>,  <20.276876, 18.264244, 14.437823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845585, 17.850288, 14.521093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631065, 17.764788, 14.194488>,  <20.502354, 17.713488, 13.998525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631065, 17.764788, 14.194488>,  <20.845585, 17.850288, 14.521093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631065, 17.764788, 14.194488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722996, 0.382816, -0.575089,
		0.435500, -0.898756, -0.050763,
		-0.536298, -0.213750, -0.816514,
		20.470177, 17.700663, 13.949533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413818, 17.772499, 14.091437>,  <20.845585, 17.850288, 14.521093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413818, 17.772499, 14.091437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.097929, 17.854362, 13.860110>,  <20.908396, 17.903481, 13.721314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.097929, 17.854362, 13.860110>,  <21.413818, 17.772499, 14.091437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.097929, 17.854362, 13.860110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569505, 0.595009, -0.567123,
		0.228036, -0.777225, -0.586448,
		-0.789724, 0.204660, -0.578317,
		20.861012, 17.915760, 13.686615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.625849, 17.753696, 13.462133>,  <21.413818, 17.772499, 14.091437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.625849, 17.753696, 13.462133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292019, 17.966791, 13.406024>,  <21.091721, 18.094648, 13.372358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292019, 17.966791, 13.406024>,  <21.625849, 17.753696, 13.462133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292019, 17.966791, 13.406024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473868, 0.564362, -0.675977,
		-0.280954, -0.630624, -0.723449,
		-0.834574, 0.532738, -0.140272,
		21.041647, 18.126612, 13.363942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.574976, 17.701599, 12.794940>,  <21.625849, 17.753696, 13.462133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.574976, 17.701599, 12.794940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370026, 18.020405, 12.922840>,  <21.247055, 18.211689, 12.999580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370026, 18.020405, 12.922840>,  <21.574976, 17.701599, 12.794940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.370026, 18.020405, 12.922840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491439, 0.577473, -0.651930,
		-0.704245, -0.176895, -0.687567,
		-0.512375, 0.797015, 0.319749,
		21.216312, 18.259510, 13.018764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343157, 17.977182, 12.218049>,  <21.574976, 17.701599, 12.794940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343157, 17.977182, 12.218049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.316238, 18.275915, 12.482690>,  <21.300087, 18.455154, 12.641475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.316238, 18.275915, 12.482690>,  <21.343157, 17.977182, 12.218049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.316238, 18.275915, 12.482690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488445, 0.602869, -0.630849,
		-0.869996, 0.280704, -0.405354,
		-0.067294, 0.746830, 0.661602,
		21.296051, 18.499964, 12.681170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138607, 18.580080, 11.877678>,  <21.343157, 17.977182, 12.218049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138607, 18.580080, 11.877678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.329899, 18.717606, 12.200933>,  <21.444674, 18.800121, 12.394887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.329899, 18.717606, 12.200933>,  <21.138607, 18.580080, 11.877678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329899, 18.717606, 12.200933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540425, 0.610131, -0.579379,
		-0.692269, 0.713816, 0.105978,
		0.478230, 0.343813, 0.808139,
		21.473368, 18.820749, 12.443375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082687, 19.338551, 11.894049>,  <21.138607, 18.580080, 11.877678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082687, 19.338551, 11.894049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406498, 19.231127, 12.102871>,  <21.600784, 19.166672, 12.228164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406498, 19.231127, 12.102871>,  <21.082687, 19.338551, 11.894049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.406498, 19.231127, 12.102871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506341, 0.769436, -0.389342,
		-0.297126, 0.579521, 0.758862,
		0.809528, -0.268559, 0.522055,
		21.649357, 19.150558, 12.259487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243826, 19.941946, 12.201260>,  <21.082687, 19.338551, 11.894049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243826, 19.941946, 12.201260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577192, 19.721186, 12.212746>,  <21.777212, 19.588730, 12.219637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577192, 19.721186, 12.212746>,  <21.243826, 19.941946, 12.201260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.577192, 19.721186, 12.212746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540545, 0.803243, -0.250224,
		0.115034, 0.224062, 0.967762,
		0.833414, -0.551903, 0.028716,
		21.827217, 19.555614, 12.221360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739555, 20.423857, 12.389274>,  <21.243826, 19.941946, 12.201260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739555, 20.423857, 12.389274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.954212, 20.118961, 12.244494>,  <22.083006, 19.936024, 12.157627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.954212, 20.118961, 12.244494>,  <21.739555, 20.423857, 12.389274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.954212, 20.118961, 12.244494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707706, 0.640174, -0.298881,
		0.459527, -0.095759, 0.882986,
		0.536644, -0.762238, -0.361947,
		22.115206, 19.890289, 12.135910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.395624, 20.577196, 12.569484>,  <21.739555, 20.423857, 12.389274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.395624, 20.577196, 12.569484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430334, 20.288847, 12.294438>,  <22.451160, 20.115837, 12.129411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430334, 20.288847, 12.294438>,  <22.395624, 20.577196, 12.569484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430334, 20.288847, 12.294438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741527, 0.507670, -0.438644,
		0.665287, -0.471820, 0.578600,
		0.086777, -0.720872, -0.687614,
		22.456367, 20.072586, 12.088154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.018648, 20.610928, 12.424556>,  <22.395624, 20.577196, 12.569484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.018648, 20.610928, 12.424556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.912153, 20.363804, 12.128601>,  <22.848257, 20.215530, 11.951029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.912153, 20.363804, 12.128601>,  <23.018648, 20.610928, 12.424556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.912153, 20.363804, 12.128601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873981, 0.169020, -0.455621,
		0.406542, -0.767948, 0.494954,
		-0.266236, -0.617809, -0.739886,
		22.832283, 20.178461, 11.906635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.619019, 20.066137, 12.322972>,  <23.018648, 20.610928, 12.424556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.619019, 20.066137, 12.322972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.393965, 20.117172, 11.996251>,  <23.258932, 20.147793, 11.800219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.393965, 20.117172, 11.996251>,  <23.619019, 20.066137, 12.322972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.393965, 20.117172, 11.996251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800395, 0.331356, -0.499571,
		0.206912, -0.934839, -0.288554,
		-0.562633, 0.127589, -0.816802,
		23.225176, 20.155449, 11.751210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.041155, 19.666668, 11.725757>,  <23.619019, 20.066137, 12.322972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.041155, 19.666668, 11.725757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.803802, 19.954315, 11.581108>,  <23.661390, 20.126904, 11.494319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.803802, 19.954315, 11.581108>,  <24.041155, 19.666668, 11.725757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.803802, 19.954315, 11.581108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758645, 0.349514, -0.549816,
		-0.268990, -0.600593, -0.752949,
		-0.593382, 0.719116, -0.361621,
		23.625788, 20.170050, 11.472622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116564, 19.513224, 11.092546>,  <24.041155, 19.666668, 11.725757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116564, 19.513224, 11.092546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.987579, 19.888872, 11.140002>,  <23.910189, 20.114262, 11.168475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.987579, 19.888872, 11.140002>,  <24.116564, 19.513224, 11.092546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.987579, 19.888872, 11.140002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633553, 0.307243, -0.710079,
		-0.703300, -0.153807, -0.694055,
		-0.322459, 0.939119, 0.118639,
		23.890842, 20.170609, 11.175594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.996693, 19.732201, 10.556005>,  <24.116564, 19.513224, 11.092546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.996693, 19.732201, 10.556005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026361, 20.086639, 10.739015>,  <24.044163, 20.299303, 10.848820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026361, 20.086639, 10.739015>,  <23.996693, 19.732201, 10.556005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026361, 20.086639, 10.739015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576817, 0.336133, -0.744511,
		-0.813499, 0.319128, -0.486185,
		0.074172, 0.886099, 0.457522,
		24.048613, 20.352468, 10.876271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100004, 20.332321, 10.031322>,  <23.996693, 19.732201, 10.556005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100004, 20.332321, 10.031322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178331, 20.513733, 10.379107>,  <24.225328, 20.622580, 10.587779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178331, 20.513733, 10.379107>,  <24.100004, 20.332321, 10.031322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178331, 20.513733, 10.379107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735150, 0.518896, -0.436235,
		-0.649006, 0.724610, -0.231800,
		0.195820, 0.453527, 0.869464,
		24.237078, 20.649792, 10.639947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103844, 20.957636, 9.738124>,  <24.100004, 20.332321, 10.031322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103844, 20.957636, 9.738124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302320, 20.907270, 10.081738>,  <24.421406, 20.877050, 10.287906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302320, 20.907270, 10.081738>,  <24.103844, 20.957636, 9.738124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302320, 20.907270, 10.081738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816303, 0.404653, -0.412197,
		-0.295709, 0.905761, 0.303568,
		0.496191, -0.125913, 0.859034,
		24.451178, 20.869497, 10.339448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.453930, 21.531527, 9.743432>,  <24.103844, 20.957636, 9.738124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.453930, 21.531527, 9.743432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645014, 21.282934, 9.991804>,  <24.759665, 21.133778, 10.140827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645014, 21.282934, 9.991804>,  <24.453930, 21.531527, 9.743432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645014, 21.282934, 9.991804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878487, 0.343937, -0.331615,
		-0.007468, 0.703894, 0.710266,
		0.477709, -0.621483, 0.620930,
		24.788326, 21.096489, 10.178083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000725, 21.887859, 10.003016>,  <24.453930, 21.531527, 9.743432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000725, 21.887859, 10.003016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085135, 21.498213, 10.035437>,  <25.135780, 21.264425, 10.054889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085135, 21.498213, 10.035437>,  <25.000725, 21.887859, 10.003016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085135, 21.498213, 10.035437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879678, 0.153102, -0.450252,
		0.426188, 0.166311, 0.889216,
		0.211022, -0.974115, 0.081050,
		25.148441, 21.205978, 10.059752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676743, 21.948734, 10.110774>,  <25.000725, 21.887859, 10.003016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676743, 21.948734, 10.110774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610416, 21.561014, 10.038156>,  <25.570621, 21.328382, 9.994584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610416, 21.561014, 10.038156>,  <25.676743, 21.948734, 10.110774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610416, 21.561014, 10.038156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854466, -0.049308, -0.517162,
		0.492335, -0.240880, 0.836411,
		-0.165816, -0.969302, -0.181547,
		25.560671, 21.270224, 9.983691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401098, 21.588026, 10.148131>,  <25.676743, 21.948734, 10.110774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401098, 21.588026, 10.148131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131817, 21.369892, 9.948369>,  <25.970247, 21.239012, 9.828511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131817, 21.369892, 9.948369>,  <26.401098, 21.588026, 10.148131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131817, 21.369892, 9.948369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629900, -0.069159, -0.773591,
		0.387329, -0.835359, 0.390065,
		-0.673203, -0.545336, -0.499406,
		25.929855, 21.206291, 9.798548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708004, 20.971792, 9.886840>,  <26.401098, 21.588026, 10.148131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708004, 20.971792, 9.886840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390972, 21.062267, 9.660334>,  <26.200754, 21.116552, 9.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390972, 21.062267, 9.660334>,  <26.708004, 20.971792, 9.886840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390972, 21.062267, 9.660334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599717, 0.121218, -0.790978,
		-0.110270, -0.966511, -0.231725,
		-0.792578, 0.226190, -0.566266,
		26.153198, 21.130123, 9.490454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812449, 20.737362, 9.118095>,  <26.708004, 20.971792, 9.886840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812449, 20.737362, 9.118095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491049, 20.969683, 9.065860>,  <26.298208, 21.109076, 9.034518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491049, 20.969683, 9.065860>,  <26.812449, 20.737362, 9.118095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491049, 20.969683, 9.065860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312345, 0.224568, -0.923044,
		-0.506781, -0.782456, -0.361851,
		-0.803501, 0.580803, -0.130589,
		26.249998, 21.143923, 9.026683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552610, 20.602730, 8.421078>,  <26.812449, 20.737362, 9.118095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552610, 20.602730, 8.421078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414307, 20.969278, 8.501789>,  <26.331324, 21.189207, 8.550216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414307, 20.969278, 8.501789>,  <26.552610, 20.602730, 8.421078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414307, 20.969278, 8.501789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258234, 0.299668, -0.918431,
		-0.902089, -0.265452, -0.340251,
		-0.345761, 0.916370, 0.201779,
		26.310577, 21.244190, 8.562323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134527, 20.236965, 7.841686>,  <26.552610, 20.602730, 8.421078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134527, 20.236965, 7.841686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459055, 20.073931, 8.009320>,  <26.653772, 19.976110, 8.109900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459055, 20.073931, 8.009320>,  <26.134527, 20.236965, 7.841686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459055, 20.073931, 8.009320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345636, -0.912592, -0.218428,
		0.471483, 0.032365, -0.881281,
		0.811320, -0.407587, 0.419085,
		26.702452, 19.951654, 8.135046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178047, 19.633158, 7.521464>,  <26.134527, 20.236965, 7.841686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178047, 19.633158, 7.521464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396458, 19.597015, 7.854616>,  <26.527504, 19.575331, 8.054507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396458, 19.597015, 7.854616>,  <26.178047, 19.633158, 7.521464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396458, 19.597015, 7.854616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199843, -0.979515, 0.024751,
		0.813582, -0.179960, -0.552900,
		0.546028, -0.090356, 0.832880,
		26.560266, 19.569908, 8.104480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593529, 19.060144, 7.514789>,  <26.178047, 19.633158, 7.521464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593529, 19.060144, 7.514789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515570, 19.120012, 7.902524>,  <26.468794, 19.155933, 8.135164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515570, 19.120012, 7.902524>,  <26.593529, 19.060144, 7.514789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515570, 19.120012, 7.902524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183128, -0.976463, 0.113948,
		0.963576, -0.155305, 0.217719,
		-0.194898, 0.149668, 0.969337,
		26.457100, 19.164913, 8.193325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107029, 18.801043, 8.117667>,  <26.593529, 19.060144, 7.514789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107029, 18.801043, 8.117667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711468, 18.810118, 8.176399>,  <26.474131, 18.815563, 8.211638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711468, 18.810118, 8.176399>,  <27.107029, 18.801043, 8.117667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711468, 18.810118, 8.176399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024432, -0.999651, -0.010101,
		0.146549, -0.013576, 0.989110,
		-0.988902, 0.022686, 0.146829,
		26.414797, 18.816923, 8.220448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778137, 18.392277, 8.743727>,  <27.107029, 18.801043, 8.117667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778137, 18.392277, 8.743727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516409, 18.378172, 8.441569>,  <26.359371, 18.369709, 8.260275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516409, 18.378172, 8.441569>,  <26.778137, 18.392277, 8.743727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516409, 18.378172, 8.441569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054208, -0.994155, 0.093363,
		-0.754271, 0.102038, 0.648586,
		-0.654321, -0.035263, -0.755394,
		26.320112, 18.367594, 8.214952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208462, 17.984108, 8.947639>,  <26.778137, 18.392277, 8.743727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208462, 17.984108, 8.947639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212679, 17.991556, 8.547730>,  <26.215210, 17.996025, 8.307785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212679, 17.991556, 8.547730>,  <26.208462, 17.984108, 8.947639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212679, 17.991556, 8.547730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329797, -0.943817, -0.021055,
		-0.943993, 0.329944, -0.003811,
		0.010544, 0.018619, -0.999771,
		26.215843, 17.997143, 8.247799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976820, 18.165907, 9.685491>,  <26.208462, 17.984108, 8.947639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976820, 18.165907, 9.685491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713709, 18.134018, 9.385899>,  <25.555841, 18.114885, 9.206143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713709, 18.134018, 9.385899>,  <25.976820, 18.165907, 9.685491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713709, 18.134018, 9.385899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685899, -0.347497, 0.639365,
		-0.311240, 0.934286, 0.173896,
		-0.657778, -0.079721, -0.748981,
		25.516375, 18.110102, 9.161204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314468, 18.400778, 9.881662>,  <25.976820, 18.165907, 9.685491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314468, 18.400778, 9.881662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258789, 18.106775, 9.616214>,  <25.225382, 17.930374, 9.456944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258789, 18.106775, 9.616214>,  <25.314468, 18.400778, 9.881662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258789, 18.106775, 9.616214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518325, -0.516934, 0.681262,
		-0.843779, 0.438802, -0.309015,
		-0.139198, -0.735005, -0.663620,
		25.217030, 17.886274, 9.417128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612053, 18.213150, 9.715391>,  <25.314468, 18.400778, 9.881662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612053, 18.213150, 9.715391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815136, 17.872774, 9.661530>,  <24.936987, 17.668549, 9.629212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815136, 17.872774, 9.661530>,  <24.612053, 18.213150, 9.715391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815136, 17.872774, 9.661530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638444, -0.476563, 0.604382,
		-0.578465, -0.220879, -0.785233,
		0.507708, -0.850941, -0.134656,
		24.967449, 17.617493, 9.621133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174793, 17.694126, 9.424356>,  <24.612053, 18.213150, 9.715391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174793, 17.694126, 9.424356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472750, 17.497057, 9.604317>,  <24.651524, 17.378817, 9.712293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472750, 17.497057, 9.604317>,  <24.174793, 17.694126, 9.424356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472750, 17.497057, 9.604317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658251, -0.432710, 0.616009,
		-0.108813, -0.755008, -0.646624,
		0.744892, -0.492671, 0.449901,
		24.696217, 17.349255, 9.739286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984503, 16.982588, 9.487941>,  <24.174793, 17.694126, 9.424356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984503, 16.982588, 9.487941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275200, 17.048223, 9.754751>,  <24.449617, 17.087605, 9.914837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275200, 17.048223, 9.754751>,  <23.984503, 16.982588, 9.487941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275200, 17.048223, 9.754751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545674, -0.451920, 0.705697,
		0.417239, -0.876837, -0.238890,
		0.726740, 0.164088, 0.667026,
		24.493221, 17.097450, 9.954859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990452, 16.365477, 9.864338>,  <23.984503, 16.982588, 9.487941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990452, 16.365477, 9.864338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183964, 16.621681, 10.102901>,  <24.300072, 16.775404, 10.246039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183964, 16.621681, 10.102901>,  <23.990452, 16.365477, 9.864338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183964, 16.621681, 10.102901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404577, -0.440606, 0.801363,
		0.776063, -0.628977, 0.045979,
		0.483780, 0.640511, 0.596408,
		24.329098, 16.813835, 10.281824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188372, 15.930098, 10.452268>,  <23.990452, 16.365477, 9.864338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188372, 15.930098, 10.452268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229616, 16.304478, 10.586946>,  <24.254362, 16.529106, 10.667752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229616, 16.304478, 10.586946>,  <24.188372, 15.930098, 10.452268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229616, 16.304478, 10.586946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410786, -0.268214, 0.871387,
		0.905883, -0.228158, 0.356820,
		0.103110, 0.935951, 0.336695,
		24.260550, 16.585262, 10.687954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499792, 15.885365, 11.086937>,  <24.188372, 15.930098, 10.452268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499792, 15.885365, 11.086937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335821, 16.249989, 11.099722>,  <24.237438, 16.468761, 11.107392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335821, 16.249989, 11.099722>,  <24.499792, 15.885365, 11.086937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335821, 16.249989, 11.099722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385011, -0.204693, 0.899926,
		0.826877, 0.356600, 0.434869,
		-0.409929, 0.911557, 0.031961,
		24.212843, 16.523457, 11.109310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.681068, 16.188751, 11.737524>,  <24.499792, 15.885365, 11.086937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.681068, 16.188751, 11.737524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352442, 16.375774, 11.607040>,  <24.155266, 16.487989, 11.528750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352442, 16.375774, 11.607040>,  <24.681068, 16.188751, 11.737524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352442, 16.375774, 11.607040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474264, -0.242977, 0.846189,
		0.316382, 0.849912, 0.421369,
		-0.821569, 0.467560, -0.326209,
		24.105970, 16.516043, 11.509177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446331, 16.652779, 12.267415>,  <24.681068, 16.188751, 11.737524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446331, 16.652779, 12.267415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118633, 16.585909, 12.048000>,  <23.922014, 16.545786, 11.916351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118633, 16.585909, 12.048000>,  <24.446331, 16.652779, 12.267415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.118633, 16.585909, 12.048000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546319, -0.063193, 0.835190,
		-0.174287, 0.983900, -0.039561,
		-0.819243, -0.167175, -0.548537,
		23.872860, 16.535757, 11.883439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005564, 17.246248, 12.518794>,  <24.446331, 16.652779, 12.267415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005564, 17.246248, 12.518794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.779833, 16.973009, 12.333360>,  <23.644394, 16.809065, 12.222099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.779833, 16.973009, 12.333360>,  <24.005564, 17.246248, 12.518794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.779833, 16.973009, 12.333360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596586, -0.050707, 0.800945,
		-0.570632, 0.728563, -0.378912,
		-0.564326, -0.683099, -0.463586,
		23.610535, 16.768080, 12.194283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.362167, 17.402145, 12.707304>,  <24.005564, 17.246248, 12.518794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.362167, 17.402145, 12.707304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.315973, 17.028925, 12.571023>,  <23.288258, 16.804993, 12.489254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.315973, 17.028925, 12.571023>,  <23.362167, 17.402145, 12.707304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.315973, 17.028925, 12.571023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763123, -0.136224, 0.631733,
		-0.635851, 0.332954, -0.696301,
		-0.115485, -0.933051, -0.340703,
		23.281328, 16.749010, 12.468812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658871, 17.274094, 12.768794>,  <23.362167, 17.402145, 12.707304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658871, 17.274094, 12.768794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.758295, 16.888218, 12.733934>,  <22.817949, 16.656693, 12.713018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.758295, 16.888218, 12.733934>,  <22.658871, 17.274094, 12.768794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.758295, 16.888218, 12.733934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648521, -0.232575, 0.724796,
		-0.719470, -0.123638, -0.683430,
		0.248561, -0.964688, -0.087149,
		22.832863, 16.598812, 12.707789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942528, 16.809444, 12.709864>,  <22.658871, 17.274094, 12.768794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942528, 16.809444, 12.709864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.246729, 16.571678, 12.814409>,  <22.429249, 16.429018, 12.877136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.246729, 16.571678, 12.814409>,  <21.942528, 16.809444, 12.709864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.246729, 16.571678, 12.814409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566018, -0.409590, 0.715444,
		-0.318217, -0.692032, -0.647942,
		0.760501, -0.594413, 0.261364,
		22.474878, 16.393354, 12.892818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673931, 16.039391, 12.834271>,  <21.942528, 16.809444, 12.709864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673931, 16.039391, 12.834271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008617, 16.087738, 13.047923>,  <22.209429, 16.116747, 13.176114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008617, 16.087738, 13.047923>,  <21.673931, 16.039391, 12.834271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.008617, 16.087738, 13.047923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472035, -0.335303, 0.815325,
		0.277643, -0.934325, -0.223499,
		0.836718, 0.120870, 0.534129,
		22.259632, 16.123999, 13.208161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.761330, 15.390456, 13.256009>,  <21.673931, 16.039391, 12.834271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.761330, 15.390456, 13.256009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.992527, 15.644247, 13.461284>,  <22.131247, 15.796522, 13.584449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.992527, 15.644247, 13.461284>,  <21.761330, 15.390456, 13.256009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.992527, 15.644247, 13.461284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312868, -0.408521, 0.857452,
		0.753682, -0.656162, -0.037615,
		0.577994, 0.634478, 0.513187,
		22.165926, 15.834590, 13.615240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.091234, 15.023229, 13.817513>,  <21.761330, 15.390456, 13.256009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.091234, 15.023229, 13.817513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.185089, 15.391759, 13.941517>,  <22.241402, 15.612877, 14.015919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.185089, 15.391759, 13.941517>,  <22.091234, 15.023229, 13.817513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.185089, 15.391759, 13.941517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242829, -0.253249, 0.936429,
		0.941265, -0.294998, 0.164304,
		0.234635, 0.921326, 0.310008,
		22.255480, 15.668157, 14.034519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.456108, 14.958480, 14.404466>,  <22.091234, 15.023229, 13.817513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.456108, 14.958480, 14.404466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.268135, 15.311065, 14.423181>,  <22.155352, 15.522615, 14.434409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.268135, 15.311065, 14.423181>,  <22.456108, 14.958480, 14.404466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.268135, 15.311065, 14.423181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429928, -0.274854, 0.860010,
		0.770926, 0.384031, 0.508127,
		-0.469931, 0.881462, 0.046786,
		22.127155, 15.575503, 14.437217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705519, 15.377772, 15.009347>,  <22.456108, 14.958480, 14.404466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705519, 15.377772, 15.009347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.332516, 15.470655, 14.898707>,  <22.108713, 15.526385, 14.832324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.332516, 15.470655, 14.898707>,  <22.705519, 15.377772, 15.009347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332516, 15.470655, 14.898707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348988, -0.382327, 0.855589,
		0.092923, 0.894375, 0.437562,
		-0.932509, 0.232208, -0.276599,
		22.052763, 15.540318, 14.815727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117392, 15.129530, 15.650174>,  <22.705519, 15.377772, 15.009347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117392, 15.129530, 15.650174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191391, 14.740856, 15.591381>,  <23.235790, 14.507651, 15.556105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191391, 14.740856, 15.591381>,  <23.117392, 15.129530, 15.650174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.191391, 14.740856, 15.591381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954811, 0.142316, 0.260925,
		-0.232619, -0.188612, 0.954104,
		0.184997, -0.971685, -0.146983,
		23.246891, 14.449350, 15.547286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.509882, 14.794074, 16.290873>,  <23.117392, 15.129530, 15.650174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.509882, 14.794074, 16.290873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.574730, 14.605145, 15.944318>,  <23.613640, 14.491788, 15.736384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.574730, 14.605145, 15.944318>,  <23.509882, 14.794074, 16.290873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.574730, 14.605145, 15.944318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986751, 0.072112, 0.145332,
		-0.006166, -0.878471, 0.477755,
		0.162122, -0.472322, -0.866388,
		23.623367, 14.463449, 15.684402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.900715, 14.190314, 16.273783>,  <23.509882, 14.794074, 16.290873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.900715, 14.190314, 16.273783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.958418, 14.374605, 15.923488>,  <23.993040, 14.485180, 15.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.958418, 14.374605, 15.923488>,  <23.900715, 14.190314, 16.273783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.958418, 14.374605, 15.923488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989536, -0.064777, 0.128926,
		0.002673, -0.885175, -0.465250,
		0.144260, 0.460727, -0.875740,
		24.001696, 14.512823, 15.660766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.344860, 13.787693, 16.109062>,  <23.900715, 14.190314, 16.273783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.344860, 13.787693, 16.109062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346031, 14.131626, 15.904836>,  <24.346733, 14.337986, 15.782299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346031, 14.131626, 15.904836>,  <24.344860, 13.787693, 16.109062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.346031, 14.131626, 15.904836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999846, 0.006306, 0.016349,
		0.017277, -0.510537, -0.859682,
		0.002926, 0.859833, -0.510568,
		24.346909, 14.389576, 15.751665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929256, 13.755002, 15.694709>,  <24.344860, 13.787693, 16.109062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929256, 13.755002, 15.694709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820354, 14.137892, 15.733901>,  <24.755014, 14.367625, 15.757416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820354, 14.137892, 15.733901>,  <24.929256, 13.755002, 15.694709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.820354, 14.137892, 15.733901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958453, 0.260769, 0.115620,
		0.085124, 0.125387, -0.988449,
		-0.272254, 0.957224, 0.097980,
		24.738678, 14.425059, 15.763295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470892, 14.221362, 15.373487>,  <24.929256, 13.755002, 15.694709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470892, 14.221362, 15.373487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268738, 14.422058, 15.654297>,  <25.147446, 14.542476, 15.822783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268738, 14.422058, 15.654297>,  <25.470892, 14.221362, 15.373487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268738, 14.422058, 15.654297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856440, 0.390976, 0.337118,
		-0.105330, 0.771618, -0.627305,
		-0.505387, 0.501741, 0.702025,
		25.117121, 14.572580, 15.864904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418009, 14.989082, 15.240942>,  <25.470892, 14.221362, 15.373487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418009, 14.989082, 15.240942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448174, 14.845148, 15.612927>,  <25.466272, 14.758787, 15.836119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448174, 14.845148, 15.612927>,  <25.418009, 14.989082, 15.240942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448174, 14.845148, 15.612927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872334, 0.475603, 0.113290,
		-0.483059, 0.802696, 0.349762,
		0.075410, -0.359835, 0.929963,
		25.470797, 14.737198, 15.891916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142065, 15.031015, 15.038058>,  <25.418009, 14.989082, 15.240942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142065, 15.031015, 15.038058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483599, 15.186025, 15.177079>,  <26.688519, 15.279031, 15.260492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483599, 15.186025, 15.177079>,  <26.142065, 15.031015, 15.038058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483599, 15.186025, 15.177079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482191, 0.337268, 0.808543,
		0.196110, -0.857949, 0.474831,
		0.853834, 0.387522, 0.347554,
		26.739748, 15.302282, 15.281345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.453747, 16.520079, 22.922983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.087505, 16.407501, 22.808121>,  <10.867761, 16.339954, 22.739202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.087505, 16.407501, 22.808121>,  <11.453747, 16.520079, 22.922983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087505, 16.407501, 22.808121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386973, -0.422876, -0.819407,
		0.109185, -0.861374, 0.496098,
		-0.915604, -0.281444, -0.287157,
		10.812824, 16.323069, 22.721973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.447367, 15.843154, 22.725016>,  <11.453747, 16.520079, 22.922983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.447367, 15.843154, 22.725016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.121612, 15.979794, 22.537365>,  <10.926158, 16.061777, 22.424774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.121612, 15.979794, 22.537365>,  <11.447367, 15.843154, 22.725016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121612, 15.979794, 22.537365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273840, -0.486523, -0.829643,
		-0.511658, -0.804113, 0.302668,
		-0.814382, 0.341611, -0.469132,
		10.877295, 16.082273, 22.396627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.019188, 15.202292, 22.429367>,  <11.447367, 15.843154, 22.725016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.019188, 15.202292, 22.429367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.844979, 15.501759, 22.229439>,  <10.740454, 15.681438, 22.109482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.844979, 15.501759, 22.229439>,  <11.019188, 15.202292, 22.429367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844979, 15.501759, 22.229439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171610, -0.476012, -0.862533,
		-0.883669, -0.461425, 0.078835,
		-0.435521, 0.748665, -0.499822,
		10.714323, 15.726358, 22.079493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651773, 14.913994, 21.938444>,  <11.019188, 15.202292, 22.429367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651773, 14.913994, 21.938444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.695362, 15.287704, 21.802647>,  <10.721516, 15.511930, 21.721169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.695362, 15.287704, 21.802647>,  <10.651773, 14.913994, 21.938444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.695362, 15.287704, 21.802647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212097, -0.355514, -0.910288,
		-0.971154, 0.027191, -0.236899,
		0.108972, 0.934275, -0.339492,
		10.728054, 15.567986, 21.700798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.125624, 14.964035, 21.349220>,  <10.651773, 14.913994, 21.938444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.125624, 14.964035, 21.349220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.407074, 15.246063, 21.313917>,  <10.575944, 15.415280, 21.292736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.407074, 15.246063, 21.313917>,  <10.125624, 14.964035, 21.349220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.407074, 15.246063, 21.313917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226855, -0.340602, -0.912429,
		-0.673386, 0.621987, -0.399605,
		0.703625, 0.705069, -0.088256,
		10.618161, 15.457584, 21.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062284, 15.359230, 20.664679>,  <10.125624, 14.964035, 21.349220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062284, 15.359230, 20.664679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.442830, 15.457108, 20.739540>,  <10.671158, 15.515834, 20.784456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.442830, 15.457108, 20.739540>,  <10.062284, 15.359230, 20.664679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.442830, 15.457108, 20.739540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178385, 0.057720, -0.982266,
		-0.251156, 0.967881, 0.011263,
		0.951367, 0.244693, 0.187152,
		10.728240, 15.530516, 20.795685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.227342, 15.781650, 20.197571>,  <10.062284, 15.359230, 20.664679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.227342, 15.781650, 20.197571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.594522, 15.687527, 20.325317>,  <10.814831, 15.631053, 20.401964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.594522, 15.687527, 20.325317>,  <10.227342, 15.781650, 20.197571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.594522, 15.687527, 20.325317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284014, -0.172212, -0.943228,
		0.276947, 0.956542, -0.091251,
		0.917952, -0.235308, 0.319365,
		10.869908, 15.616935, 20.421127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613552, 15.986253, 19.677803>,  <10.227342, 15.781650, 20.197571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613552, 15.986253, 19.677803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.861640, 15.717669, 19.840023>,  <11.010492, 15.556520, 19.937355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.861640, 15.717669, 19.840023>,  <10.613552, 15.986253, 19.677803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.861640, 15.717669, 19.840023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333707, -0.242033, -0.911076,
		0.709906, 0.700403, 0.073956,
		0.620220, -0.671458, 0.405550,
		11.047706, 15.516232, 19.961689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.253223, 16.231937, 19.460423>,  <10.613552, 15.986253, 19.677803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.253223, 16.231937, 19.460423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.275888, 15.844735, 19.558201>,  <11.289487, 15.612413, 19.616869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.275888, 15.844735, 19.558201>,  <11.253223, 16.231937, 19.460423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.275888, 15.844735, 19.558201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642472, -0.152059, -0.751071,
		0.764212, 0.199607, 0.613301,
		0.056662, -0.968006, 0.244447,
		11.292887, 15.554334, 19.631535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.832369, 16.009026, 19.203817>,  <11.253223, 16.231937, 19.460423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.832369, 16.009026, 19.203817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.661654, 15.652278, 19.263710>,  <11.559224, 15.438230, 19.299646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.661654, 15.652278, 19.263710>,  <11.832369, 16.009026, 19.203817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.661654, 15.652278, 19.263710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537316, -0.383251, -0.751272,
		0.727422, -0.240180, 0.642783,
		-0.426788, -0.891870, 0.149733,
		11.533617, 15.384717, 19.308630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351489, 15.487217, 19.379196>,  <11.832369, 16.009026, 19.203817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351489, 15.487217, 19.379196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.044383, 15.293201, 19.211733>,  <11.860120, 15.176792, 19.111254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.044383, 15.293201, 19.211733>,  <12.351489, 15.487217, 19.379196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044383, 15.293201, 19.211733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631040, -0.459191, -0.625245,
		0.111024, -0.744232, 0.658630,
		-0.767764, -0.485039, -0.418659,
		11.814054, 15.147690, 19.086136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605233, 14.872239, 19.290583>,  <12.351489, 15.487217, 19.379196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605233, 14.872239, 19.290583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.284914, 14.877027, 19.051058>,  <12.092722, 14.879899, 18.907343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.284914, 14.877027, 19.051058>,  <12.605233, 14.872239, 19.290583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.284914, 14.877027, 19.051058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551987, -0.373276, -0.745638,
		-0.232447, -0.927643, 0.292312,
		-0.800799, 0.011969, -0.598813,
		12.044674, 14.880617, 18.871414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.752082, 14.393740, 18.803558>,  <12.605233, 14.872239, 19.290583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.752082, 14.393740, 18.803558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.454631, 14.560974, 18.594860>,  <12.276160, 14.661315, 18.469641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.454631, 14.560974, 18.594860>,  <12.752082, 14.393740, 18.803558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454631, 14.560974, 18.594860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484954, -0.199913, -0.851384,
		-0.460256, -0.886137, -0.054092,
		-0.743628, 0.418087, -0.521747,
		12.231543, 14.686400, 18.438335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.552337, 13.874202, 18.324286>,  <12.752082, 14.393740, 18.803558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.552337, 13.874202, 18.324286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.410425, 14.218287, 18.177769>,  <12.325278, 14.424737, 18.089859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.410425, 14.218287, 18.177769>,  <12.552337, 13.874202, 18.324286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410425, 14.218287, 18.177769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361833, -0.234921, -0.902158,
		-0.862096, -0.452602, -0.227908,
		-0.354778, 0.860211, -0.366291,
		12.303991, 14.476350, 18.067881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.191003, 13.722325, 17.696926>,  <12.552337, 13.874202, 18.324286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.191003, 13.722325, 17.696926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.307684, 14.104913, 17.693369>,  <12.377692, 14.334465, 17.691235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.307684, 14.104913, 17.693369>,  <12.191003, 13.722325, 17.696926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.307684, 14.104913, 17.693369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425539, -0.138094, -0.894341,
		-0.856636, 0.257099, -0.447297,
		0.291703, 0.956468, -0.008891,
		12.395195, 14.391853, 17.690702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973379, 13.899976, 16.987820>,  <12.191003, 13.722325, 17.696926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973379, 13.899976, 16.987820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.242450, 14.171221, 17.106255>,  <12.403893, 14.333968, 17.177315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.242450, 14.171221, 17.106255>,  <11.973379, 13.899976, 16.987820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.242450, 14.171221, 17.106255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335436, 0.077205, -0.938894,
		-0.659536, 0.730891, -0.175529,
		0.672677, 0.678114, 0.296087,
		12.444253, 14.374655, 17.195080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.960048, 14.367548, 16.441412>,  <11.973379, 13.899976, 16.987820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.960048, 14.367548, 16.441412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.294958, 14.451243, 16.643476>,  <12.495904, 14.501460, 16.764715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.294958, 14.451243, 16.643476>,  <11.960048, 14.367548, 16.441412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.294958, 14.451243, 16.643476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509955, 0.034497, -0.859509,
		-0.197268, 0.977256, -0.077819,
		0.837276, 0.209238, 0.505162,
		12.546141, 14.514015, 16.795025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.182932, 15.075689, 16.375389>,  <11.960048, 14.367548, 16.441412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.182932, 15.075689, 16.375389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.523224, 14.879745, 16.451591>,  <12.727399, 14.762177, 16.497313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.523224, 14.879745, 16.451591>,  <12.182932, 15.075689, 16.375389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523224, 14.879745, 16.451591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288904, 0.133034, -0.948070,
		0.439080, 0.861590, 0.254699,
		0.850731, -0.489862, 0.190504,
		12.778443, 14.732786, 16.508743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757745, 15.568390, 16.054083>,  <12.182932, 15.075689, 16.375389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757745, 15.568390, 16.054083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.938157, 15.220329, 16.133488>,  <13.046405, 15.011493, 16.181131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.938157, 15.220329, 16.133488>,  <12.757745, 15.568390, 16.054083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.938157, 15.220329, 16.133488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336860, -0.040003, -0.940704,
		0.826496, 0.491159, 0.275077,
		0.451032, -0.870151, 0.198514,
		13.073466, 14.959284, 16.193043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354063, 15.626727, 15.791298>,  <12.757745, 15.568390, 16.054083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354063, 15.626727, 15.791298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.288179, 15.232429, 15.805017>,  <13.248650, 14.995850, 15.813248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.288179, 15.232429, 15.805017>,  <13.354063, 15.626727, 15.791298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288179, 15.232429, 15.805017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465782, -0.108384, -0.878237,
		0.869435, -0.128678, 0.476995,
		-0.164708, -0.985746, 0.034297,
		13.238767, 14.936705, 15.815306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994061, 15.212069, 15.626034>,  <13.354063, 15.626727, 15.791298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994061, 15.212069, 15.626034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.682150, 14.973380, 15.550273>,  <13.495004, 14.830167, 15.504816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.682150, 14.973380, 15.550273>,  <13.994061, 15.212069, 15.626034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682150, 14.973380, 15.550273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447261, -0.319282, -0.835474,
		0.438073, -0.736195, 0.515858,
		-0.779776, -0.596721, -0.189402,
		13.448217, 14.794364, 15.493452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760099, 15.076370, 15.576425>,  <13.994061, 15.212069, 15.626034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760099, 15.076370, 15.576425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.530696, 15.244287, 15.857810>,  <14.393054, 15.345037, 16.026642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.530696, 15.244287, 15.857810>,  <14.760099, 15.076370, 15.576425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530696, 15.244287, 15.857810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681711, 0.231618, -0.693991,
		-0.454268, -0.877569, 0.153343,
		-0.573508, 0.419793, 0.703465,
		14.358644, 15.370226, 16.068850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876597, 15.805230, 15.718642>,  <14.760099, 15.076370, 15.576425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876597, 15.805230, 15.718642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.218514, 16.006075, 15.771122>,  <15.423664, 16.126581, 15.802609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.218514, 16.006075, 15.771122>,  <14.876597, 15.805230, 15.718642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218514, 16.006075, 15.771122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109979, -0.071803, 0.991337,
		0.507184, -0.861816, -0.006155,
		0.854792, 0.502113, 0.131199,
		15.474952, 16.156710, 15.810482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279058, 15.468730, 16.267323>,  <14.876597, 15.805230, 15.718642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279058, 15.468730, 16.267323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.422690, 15.840693, 16.235481>,  <15.508869, 16.063869, 16.216377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.422690, 15.840693, 16.235481>,  <15.279058, 15.468730, 16.267323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.422690, 15.840693, 16.235481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274741, 0.186830, 0.943192,
		0.891953, -0.316810, 0.322570,
		0.359079, 0.929906, -0.079602,
		15.530415, 16.119665, 16.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664484, 15.599499, 16.896412>,  <15.279058, 15.468730, 16.267323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664484, 15.599499, 16.896412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.602948, 15.966445, 16.749565>,  <15.566027, 16.186613, 16.661457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.602948, 15.966445, 16.749565>,  <15.664484, 15.599499, 16.896412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602948, 15.966445, 16.749565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192769, 0.336536, 0.921729,
		0.969110, 0.212568, 0.125067,
		-0.153840, 0.917365, -0.367117,
		15.556796, 16.241655, 16.639429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831160, 15.952889, 17.363157>,  <15.664484, 15.599499, 16.896412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831160, 15.952889, 17.363157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.618001, 16.221617, 17.157368>,  <15.490106, 16.382853, 17.033894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.618001, 16.221617, 17.157368>,  <15.831160, 15.952889, 17.363157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618001, 16.221617, 17.157368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365981, 0.365196, 0.855973,
		0.762941, 0.644432, 0.051261,
		-0.532897, 0.671818, -0.514473,
		15.458132, 16.423162, 17.003025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.772627, 16.539083, 17.825642>,  <15.831160, 15.952889, 17.363157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.772627, 16.539083, 17.825642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.490187, 16.626476, 17.556217>,  <15.320723, 16.678911, 17.394562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.490187, 16.626476, 17.556217>,  <15.772627, 16.539083, 17.825642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490187, 16.626476, 17.556217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572332, 0.384023, 0.724543,
		0.416963, 0.897102, -0.146115,
		-0.706101, 0.218481, -0.673563,
		15.278357, 16.692020, 17.354149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637501, 17.142271, 18.123554>,  <15.772627, 16.539083, 17.825642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.637501, 17.142271, 18.123554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.322770, 17.022121, 17.907894>,  <15.133932, 16.950031, 17.778498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.322770, 17.022121, 17.907894>,  <15.637501, 17.142271, 18.123554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322770, 17.022121, 17.907894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617091, 0.397357, 0.679195,
		0.010223, 0.867112, -0.498008,
		-0.786825, -0.300373, -0.539149,
		15.086722, 16.932009, 17.746149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190803, 17.716570, 18.057991>,  <15.637501, 17.142271, 18.123554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190803, 17.716570, 18.057991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.944561, 17.414398, 17.968225>,  <14.796816, 17.233095, 17.914366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.944561, 17.414398, 17.968225>,  <15.190803, 17.716570, 18.057991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944561, 17.414398, 17.968225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709392, 0.407190, 0.575290,
		-0.343212, 0.513347, -0.786562,
		-0.615604, -0.755428, -0.224412,
		14.759880, 17.187771, 17.900902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544628, 18.002840, 17.853083>,  <15.190803, 17.716570, 18.057991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544628, 18.002840, 17.853083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.448222, 17.628384, 17.955492>,  <14.390378, 17.403709, 18.016937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.448222, 17.628384, 17.955492>,  <14.544628, 18.002840, 17.853083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448222, 17.628384, 17.955492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626195, 0.351542, 0.695915,
		-0.741479, 0.007406, -0.670935,
		-0.241016, -0.936143, 0.256024,
		14.375917, 17.347540, 18.032299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787095, 17.912872, 17.855618>,  <14.544628, 18.002840, 17.853083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787095, 17.912872, 17.855618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.935102, 17.630676, 18.097401>,  <14.023907, 17.461359, 18.242470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.935102, 17.630676, 18.097401>,  <13.787095, 17.912872, 17.855618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935102, 17.630676, 18.097401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575681, 0.336547, 0.745203,
		-0.729163, -0.623712, -0.281610,
		0.370017, -0.705492, 0.604457,
		14.046108, 17.419029, 18.278738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151887, 17.635393, 18.171326>,  <13.787095, 17.912872, 17.855618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151887, 17.635393, 18.171326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.464245, 17.561472, 18.410006>,  <13.651659, 17.517118, 18.553213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.464245, 17.561472, 18.410006>,  <13.151887, 17.635393, 18.171326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464245, 17.561472, 18.410006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529273, 0.311605, 0.789159,
		-0.331776, -0.932067, 0.145518,
		0.780894, -0.184806, 0.596701,
		13.698513, 17.506031, 18.589016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902535, 17.156279, 18.732231>,  <13.151887, 17.635393, 18.171326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902535, 17.156279, 18.732231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.243558, 17.306261, 18.877863>,  <13.448172, 17.396250, 18.965242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.243558, 17.306261, 18.877863>,  <12.902535, 17.156279, 18.732231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.243558, 17.306261, 18.877863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468840, 0.240861, 0.849809,
		0.230940, -0.895209, 0.381139,
		0.852558, 0.374948, 0.364085,
		13.499325, 17.418749, 18.987087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.908733, 16.878887, 19.355289>,  <12.902535, 17.156279, 18.732231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.908733, 16.878887, 19.355289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.141540, 17.204151, 19.357437>,  <13.281223, 17.399309, 19.358725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.141540, 17.204151, 19.357437>,  <12.908733, 16.878887, 19.355289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141540, 17.204151, 19.357437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506051, 0.357021, 0.785142,
		0.636531, -0.459680, 0.619292,
		0.582015, 0.813161, 0.005367,
		13.316144, 17.448099, 19.359047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.411983, 16.777479, 20.030807>,  <12.908733, 16.878887, 19.355289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.411983, 16.777479, 20.030807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.341282, 17.151793, 19.908781>,  <13.298862, 17.376381, 19.835566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.341282, 17.151793, 19.908781>,  <13.411983, 16.777479, 20.030807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.341282, 17.151793, 19.908781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126168, 0.285850, 0.949933,
		0.976136, 0.206391, 0.067542,
		-0.176751, 0.935784, -0.305068,
		13.288257, 17.432528, 19.817261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758727, 17.189636, 20.512146>,  <13.411983, 16.777479, 20.030807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758727, 17.189636, 20.512146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.465736, 17.406796, 20.347836>,  <13.289942, 17.537092, 20.249249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.465736, 17.406796, 20.347836>,  <13.758727, 17.189636, 20.512146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.465736, 17.406796, 20.347836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176781, 0.431007, 0.884862,
		0.657440, 0.720758, -0.219728,
		-0.732476, 0.542900, -0.410777,
		13.245994, 17.569666, 20.224602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806451, 17.684395, 20.900852>,  <13.758727, 17.189636, 20.512146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806451, 17.684395, 20.900852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.451728, 17.736217, 20.723410>,  <13.238894, 17.767311, 20.616943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.451728, 17.736217, 20.723410>,  <13.806451, 17.684395, 20.900852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.451728, 17.736217, 20.723410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322983, 0.512798, 0.795437,
		0.330537, 0.848677, -0.412908,
		-0.886807, 0.129559, -0.443607,
		13.185686, 17.775085, 20.590328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547697, 18.434881, 20.950541>,  <13.806451, 17.684395, 20.900852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547697, 18.434881, 20.950541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.213724, 18.219826, 20.903492>,  <13.013340, 18.090794, 20.875263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.213724, 18.219826, 20.903492>,  <13.547697, 18.434881, 20.950541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213724, 18.219826, 20.903492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389527, 0.426314, 0.816410,
		-0.388788, 0.727464, -0.565368,
		-0.834933, -0.537637, -0.117621,
		12.963244, 18.058535, 20.868206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.945556, 18.901434, 21.050606>,  <13.547697, 18.434881, 20.950541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.945556, 18.901434, 21.050606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.816071, 18.527428, 21.108513>,  <12.738379, 18.303024, 21.143257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.816071, 18.527428, 21.108513>,  <12.945556, 18.901434, 21.050606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.816071, 18.527428, 21.108513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533018, 0.306632, 0.788587,
		-0.781730, 0.178112, -0.597640,
		-0.323713, -0.935015, 0.144767,
		12.718957, 18.246923, 21.151943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.238665, 18.949541, 21.034653>,  <12.945556, 18.901434, 21.050606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.238665, 18.949541, 21.034653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.271754, 18.607847, 21.239958>,  <12.291608, 18.402830, 21.363140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.271754, 18.607847, 21.239958>,  <12.238665, 18.949541, 21.034653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.271754, 18.607847, 21.239958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701578, 0.315857, 0.638767,
		-0.707775, -0.412935, -0.573184,
		0.082725, -0.854236, 0.513261,
		12.296572, 18.351576, 21.393936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<11.024887, 17.736933, 21.321846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.360725, 17.839216, 21.513552>,  <11.562228, 17.900587, 21.628574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.360725, 17.839216, 21.513552>,  <11.024887, 17.736933, 21.321846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.360725, 17.839216, 21.513552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497478, 0.007614, 0.867443,
		0.218166, -0.966723, 0.133604,
		0.839595, 0.255712, 0.479262,
		11.612604, 17.915930, 21.657330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.887355, 17.465593, 21.883329>,  <11.024887, 17.736933, 21.321846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.887355, 17.465593, 21.883329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.220490, 17.669241, 21.970211>,  <11.420370, 17.791430, 22.022341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.220490, 17.669241, 21.970211>,  <10.887355, 17.465593, 21.883329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220490, 17.669241, 21.970211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285342, 0.058647, 0.956630,
		0.474302, -0.858694, 0.194117,
		0.832837, 0.509121, 0.217205,
		11.470341, 17.821978, 22.035372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.077486, 17.185987, 22.469204>,  <10.887355, 17.465593, 21.883329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.077486, 17.185987, 22.469204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.280076, 17.529581, 22.439188>,  <11.401629, 17.735737, 22.421179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.280076, 17.529581, 22.439188>,  <11.077486, 17.185987, 22.469204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280076, 17.529581, 22.439188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183434, 0.192373, 0.964025,
		0.842518, -0.474489, 0.254999,
		0.506474, 0.858984, -0.075040,
		11.432018, 17.787275, 22.416676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.756700, 17.205883, 22.874126>,  <11.077486, 17.185987, 22.469204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.756700, 17.205883, 22.874126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.607261, 17.573633, 22.824848>,  <11.517597, 17.794283, 22.795280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.607261, 17.573633, 22.824848>,  <11.756700, 17.205883, 22.874126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.607261, 17.573633, 22.824848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109583, 0.088139, 0.990062,
		0.921096, 0.383384, 0.067819,
		-0.373596, 0.919374, -0.123197,
		11.495182, 17.849445, 22.787889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156672, 17.485260, 23.365915>,  <11.756700, 17.205883, 22.874126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156672, 17.485260, 23.365915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.877876, 17.762514, 23.292408>,  <11.710599, 17.928867, 23.248304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.877876, 17.762514, 23.292408>,  <12.156672, 17.485260, 23.365915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877876, 17.762514, 23.292408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011555, 0.245383, 0.969357,
		0.716989, 0.677755, -0.163020,
		-0.696989, 0.693135, -0.183768,
		11.668779, 17.970455, 23.237278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.368619, 18.133205, 23.647497>,  <12.156672, 17.485260, 23.365915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.368619, 18.133205, 23.647497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.971784, 18.178358, 23.625526>,  <11.733683, 18.205450, 23.612345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.971784, 18.178358, 23.625526>,  <12.368619, 18.133205, 23.647497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.971784, 18.178358, 23.625526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043575, 0.100679, 0.993964,
		0.117731, 0.988494, -0.094964,
		-0.992089, 0.112882, -0.054927,
		11.674157, 18.212223, 23.609049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286533, 18.707342, 24.075804>,  <12.368619, 18.133205, 23.647497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.286533, 18.707342, 24.075804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.912792, 18.568359, 24.044163>,  <11.688547, 18.484970, 24.025179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.912792, 18.568359, 24.044163>,  <12.286533, 18.707342, 24.075804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.912792, 18.568359, 24.044163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094306, 0.027036, 0.995176,
		-0.343643, 0.937306, -0.058028,
		-0.934353, -0.347457, -0.079103,
		11.632486, 18.464123, 24.020432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.856052, 19.172670, 24.372150>,  <12.286533, 18.707342, 24.075804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.856052, 19.172670, 24.372150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.657119, 18.825703, 24.378357>,  <11.537759, 18.617521, 24.382080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.657119, 18.825703, 24.378357>,  <11.856052, 19.172670, 24.372150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.657119, 18.825703, 24.378357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290142, 0.183153, 0.939294,
		-0.817603, 0.462642, -0.342763,
		-0.497335, -0.867420, 0.015514,
		11.507918, 18.565477, 24.383011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.224630, 19.404202, 24.633755>,  <11.856052, 19.172670, 24.372150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.224630, 19.404202, 24.633755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.220575, 19.005108, 24.660364>,  <11.218143, 18.765652, 24.676331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.220575, 19.005108, 24.660364>,  <11.224630, 19.404202, 24.633755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220575, 19.005108, 24.660364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278011, 0.066717, 0.958258,
		-0.960524, -0.008779, -0.278057,
		-0.010139, -0.997733, 0.066524,
		11.217534, 18.705788, 24.680321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.635648, 19.292713, 25.117172>,  <11.224630, 19.404202, 24.633755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.635648, 19.292713, 25.117172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.809186, 18.933062, 25.140314>,  <10.913309, 18.717272, 25.154200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.809186, 18.933062, 25.140314>,  <10.635648, 19.292713, 25.117172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.809186, 18.933062, 25.140314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144400, -0.006007, 0.989501,
		-0.889340, -0.437646, -0.132440,
		0.433846, -0.899127, 0.057854,
		10.939340, 18.663322, 25.157671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.152401, 18.851456, 25.445822>,  <10.635648, 19.292713, 25.117172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.152401, 18.851456, 25.445822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.517182, 18.707212, 25.524105>,  <10.736052, 18.620667, 25.571075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.517182, 18.707212, 25.524105>,  <10.152401, 18.851456, 25.445822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517182, 18.707212, 25.524105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124000, 0.212457, 0.969271,
		-0.391109, -0.908198, 0.149035,
		0.911953, -0.360610, 0.195710,
		10.790769, 18.599030, 25.582819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.074944, 18.397985, 25.997629>,  <10.152401, 18.851456, 25.445822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.074944, 18.397985, 25.997629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.463516, 18.492399, 26.007544>,  <10.696659, 18.549047, 26.013493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.463516, 18.492399, 26.007544>,  <10.074944, 18.397985, 25.997629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.463516, 18.492399, 26.007544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040988, 0.063980, 0.997109,
		0.233769, -0.969636, 0.071827,
		0.971428, 0.236037, 0.024787,
		10.754945, 18.563210, 26.014980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.305790, 17.909229, 26.460590>,  <10.074944, 18.397985, 25.997629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.305790, 17.909229, 26.460590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.544564, 18.229942, 26.449173>,  <10.687829, 18.422369, 26.442324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.544564, 18.229942, 26.449173>,  <10.305790, 17.909229, 26.460590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.544564, 18.229942, 26.449173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103300, -0.041531, 0.993783,
		0.795611, -0.596173, -0.107615,
		0.596936, 0.801782, -0.028542,
		10.723645, 18.470476, 26.440611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.654065, 17.784697, 26.979256>,  <10.305790, 17.909229, 26.460590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.654065, 17.784697, 26.979256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.785554, 18.158754, 26.926428>,  <10.864448, 18.383190, 26.894732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.785554, 18.158754, 26.926428>,  <10.654065, 17.784697, 26.979256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.785554, 18.158754, 26.926428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073257, 0.114173, 0.990756,
		0.941581, -0.335359, -0.030974,
		0.328722, 0.935146, -0.132070,
		10.884171, 18.439299, 26.886806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.170934, 17.831776, 27.483873>,  <10.654065, 17.784697, 26.979256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.170934, 17.831776, 27.483873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.034357, 18.196926, 27.394360>,  <10.952412, 18.416016, 27.340651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.034357, 18.196926, 27.394360>,  <11.170934, 17.831776, 27.483873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034357, 18.196926, 27.394360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006274, 0.235874, 0.971763,
		0.939882, 0.333204, -0.074810,
		-0.341441, 0.912874, -0.223784,
		10.931925, 18.470789, 27.327225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.372249, 18.197319, 28.040438>,  <11.170934, 17.831776, 27.483873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.372249, 18.197319, 28.040438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.138601, 18.460760, 27.850679>,  <10.998413, 18.618824, 27.736824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.138601, 18.460760, 27.850679>,  <11.372249, 18.197319, 28.040438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.138601, 18.460760, 27.850679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075684, 0.537730, 0.839713,
		0.808133, 0.526395, -0.264252,
		-0.584117, 0.658600, -0.474397,
		10.963367, 18.658340, 27.708361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.684334, 18.839699, 28.099270>,  <11.372249, 18.197319, 28.040438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.684334, 18.839699, 28.099270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.290727, 18.882711, 28.042494>,  <11.054563, 18.908520, 28.008429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.290727, 18.882711, 28.042494>,  <11.684334, 18.839699, 28.099270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290727, 18.882711, 28.042494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073941, 0.478386, 0.875031,
		0.161996, 0.871541, -0.462789,
		-0.984017, 0.107532, -0.141939,
		10.995522, 18.914970, 27.999912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.539987, 19.489895, 28.351631>,  <11.684334, 18.839699, 28.099270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.539987, 19.489895, 28.351631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.187004, 19.301743, 28.352964>,  <10.975214, 19.188850, 28.353764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.187004, 19.301743, 28.352964>,  <11.539987, 19.489895, 28.351631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.187004, 19.301743, 28.352964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052762, 0.106021, 0.992963,
		-0.467424, 0.876072, -0.118377,
		-0.882457, -0.470381, 0.003334,
		10.922267, 19.160629, 28.353964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212791, 19.841866, 28.863539>,  <11.539987, 19.489895, 28.351631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212791, 19.841866, 28.863539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.001811, 19.502031, 28.863558>,  <10.875223, 19.298130, 28.863569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.001811, 19.502031, 28.863558>,  <11.212791, 19.841866, 28.863539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.001811, 19.502031, 28.863558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231283, 0.143640, 0.962224,
		-0.817498, 0.507516, -0.272258,
		-0.527451, -0.849585, 0.000045,
		10.843575, 19.247156, 28.863571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591612, 20.040775, 29.189648>,  <11.212791, 19.841866, 28.863539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591612, 20.040775, 29.189648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.645130, 19.645327, 29.217157>,  <10.677241, 19.408058, 29.233664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.645130, 19.645327, 29.217157>,  <10.591612, 20.040775, 29.189648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645130, 19.645327, 29.217157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113080, 0.053715, 0.992133,
		-0.984536, -0.140521, -0.104607,
		0.133797, -0.988620, 0.068774,
		10.685269, 19.348742, 29.237789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.098462, 19.856249, 29.664335>,  <10.591612, 20.040775, 29.189648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.098462, 19.856249, 29.664335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.347930, 19.543640, 29.657866>,  <10.497611, 19.356075, 29.653984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.347930, 19.543640, 29.657866>,  <10.098462, 19.856249, 29.664335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.347930, 19.543640, 29.657866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184847, -0.167556, 0.968378,
		-0.759518, -0.600958, -0.248962,
		0.623669, -0.781521, -0.016176,
		10.535030, 19.309183, 29.653013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.808719, 19.368086, 30.110077>,  <10.098462, 19.856249, 29.664335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.808719, 19.368086, 30.110077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.197556, 19.278023, 30.083727>,  <10.430858, 19.223986, 30.067917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.197556, 19.278023, 30.083727>,  <9.808719, 19.368086, 30.110077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197556, 19.278023, 30.083727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042801, -0.105878, 0.993458,
		-0.230660, -0.968553, -0.093287,
		0.972093, -0.225158, -0.065877,
		10.489183, 19.210476, 30.063965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062140, 18.680403, 30.363073>,  <9.808719, 19.368086, 30.110077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062140, 18.680403, 30.363073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.403415, 18.881901, 30.417204>,  <10.608179, 19.002800, 30.449682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.403415, 18.881901, 30.417204>,  <10.062140, 18.680403, 30.363073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.403415, 18.881901, 30.417204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097493, -0.408876, 0.907367,
		0.512414, -0.760960, -0.397959,
		0.853186, 0.503746, 0.135326,
		10.659370, 19.033024, 30.457802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.579557, 18.325914, 29.904327>,  <10.062140, 18.680403, 30.363073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.579557, 18.325914, 29.904327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.497970, 17.949581, 30.012573>,  <9.449017, 17.723782, 30.077520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.497970, 17.949581, 30.012573>,  <9.579557, 18.325914, 29.904327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.497970, 17.949581, 30.012573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053949, -0.265201, -0.962683,
		0.977490, -0.210957, 0.003336,
		-0.203969, -0.940832, 0.270612,
		9.436779, 17.667332, 30.093758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.955187, 17.825781, 29.501663>,  <9.579557, 18.325914, 29.904327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.955187, 17.825781, 29.501663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.653346, 17.609617, 29.650541>,  <9.472241, 17.479919, 29.739868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.653346, 17.609617, 29.650541>,  <9.955187, 17.825781, 29.501663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.653346, 17.609617, 29.650541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089630, -0.477011, -0.874315,
		0.650032, -0.693121, 0.311517,
		-0.754603, -0.540412, 0.372197,
		9.426965, 17.447495, 29.762199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.083864, 17.084352, 29.315401>,  <9.955187, 17.825781, 29.501663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.083864, 17.084352, 29.315401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.697487, 17.141491, 29.401701>,  <9.465660, 17.175774, 29.453482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.697487, 17.141491, 29.401701>,  <10.083864, 17.084352, 29.315401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.697487, 17.141491, 29.401701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258518, -0.497272, -0.828184,
		-0.011016, -0.855755, 0.517265,
		-0.965944, 0.142845, 0.215750,
		9.407703, 17.184345, 29.466427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.774668, 16.571585, 28.897087>,  <10.083864, 17.084352, 29.315401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.774668, 16.571585, 28.897087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.476788, 16.817032, 29.002075>,  <9.298059, 16.964300, 29.065069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.476788, 16.817032, 29.002075>,  <9.774668, 16.571585, 28.897087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.476788, 16.817032, 29.002075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518429, -0.284194, -0.806514,
		-0.420302, -0.736683, 0.529758,
		-0.744699, 0.613622, 0.262471,
		9.253377, 17.001118, 29.080816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261666, 16.252077, 28.723679>,  <9.774668, 16.571585, 28.897087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261666, 16.252077, 28.723679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.127754, 16.628996, 28.723980>,  <9.047407, 16.855146, 28.724161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.127754, 16.628996, 28.723980>,  <9.261666, 16.252077, 28.723679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.127754, 16.628996, 28.723980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474370, -0.167844, -0.864177,
		-0.814184, -0.289666, 0.503188,
		-0.334779, 0.942296, 0.000753,
		9.027320, 16.911684, 28.724205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.560789, 16.144629, 28.712135>,  <9.261666, 16.252077, 28.723679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.560789, 16.144629, 28.712135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.641871, 16.512232, 28.576883>,  <8.690521, 16.732794, 28.495731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.641871, 16.512232, 28.576883>,  <8.560789, 16.144629, 28.712135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.641871, 16.512232, 28.576883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562431, -0.173402, -0.808457,
		-0.801612, 0.354055, 0.481729,
		0.202706, 0.919009, -0.338132,
		8.702683, 16.787935, 28.475443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.963492, 16.381195, 28.397047>,  <8.560789, 16.144629, 28.712135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.963492, 16.381195, 28.397047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.257964, 16.609501, 28.251572>,  <8.434648, 16.746485, 28.164286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.257964, 16.609501, 28.251572>,  <7.963492, 16.381195, 28.397047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.257964, 16.609501, 28.251572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413438, -0.046182, -0.909360,
		-0.535824, 0.819816, 0.201977,
		0.736180, 0.570763, -0.363688,
		8.478818, 16.780729, 28.142466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.619840, 16.786076, 27.864552>,  <7.963492, 16.381195, 28.397047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.619840, 16.786076, 27.864552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.007671, 16.799152, 27.767517>,  <8.240370, 16.806999, 27.709295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.007671, 16.799152, 27.767517>,  <7.619840, 16.786076, 27.864552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.007671, 16.799152, 27.767517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234137, -0.165194, -0.958066,
		-0.071396, 0.985719, -0.152514,
		0.969578, 0.032693, -0.242588,
		8.298545, 16.808960, 27.694740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.606094, 17.093670, 27.237164>,  <7.619840, 16.786076, 27.864552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.606094, 17.093670, 27.237164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.957926, 16.903460, 27.243048>,  <8.169024, 16.789333, 27.246578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.957926, 16.903460, 27.243048>,  <7.606094, 17.093670, 27.237164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.957926, 16.903460, 27.243048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077974, -0.174597, -0.981548,
		0.469319, 0.862202, -0.190650,
		0.879579, -0.475525, 0.014712,
		8.221800, 16.760801, 27.247461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.862562, 17.426228, 26.592302>,  <7.606094, 17.093670, 27.237164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.862562, 17.426228, 26.592302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.087906, 17.108864, 26.684498>,  <8.223112, 16.918446, 26.739815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.087906, 17.108864, 26.684498>,  <7.862562, 17.426228, 26.592302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.087906, 17.108864, 26.684498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270109, -0.086775, -0.958911,
		0.780811, 0.602469, 0.165422,
		0.563360, -0.793411, 0.230487,
		8.256914, 16.870840, 26.753643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.559733, 17.620687, 26.453783>,  <7.862562, 17.426228, 26.592302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.559733, 17.620687, 26.453783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.518997, 17.223934, 26.423334>,  <8.494555, 16.985882, 26.405066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.518997, 17.223934, 26.423334>,  <8.559733, 17.620687, 26.453783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.518997, 17.223934, 26.423334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609284, -0.001702, -0.792951,
		0.786386, -0.127134, 0.604512,
		-0.101840, -0.991884, -0.076122,
		8.488445, 16.926369, 26.400497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.180140, 17.420887, 26.378777>,  <8.559733, 17.620687, 26.453783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.180140, 17.420887, 26.378777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.963349, 17.105364, 26.262814>,  <8.833276, 16.916050, 26.193235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.963349, 17.105364, 26.262814>,  <9.180140, 17.420887, 26.378777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.963349, 17.105364, 26.262814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622347, -0.144897, -0.769213,
		0.564755, -0.597316, 0.569443,
		-0.541974, -0.788808, -0.289907,
		8.800757, 16.868721, 26.175842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.672004, 16.933739, 26.231411>,  <9.180140, 17.420887, 26.378777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.672004, 16.933739, 26.231411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.357188, 16.796242, 26.026508>,  <9.168299, 16.713743, 25.903566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.357188, 16.796242, 26.026508>,  <9.672004, 16.933739, 26.231411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357188, 16.796242, 26.026508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596302, -0.211102, -0.774507,
		0.158094, -0.915028, 0.371121,
		-0.787039, -0.343744, -0.512259,
		9.121077, 16.693119, 25.872831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.832033, 16.316071, 25.962595>,  <9.672004, 16.933739, 26.231411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.832033, 16.316071, 25.962595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.530916, 16.437513, 25.728970>,  <9.350246, 16.510378, 25.588795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.530916, 16.437513, 25.728970>,  <9.832033, 16.316071, 25.962595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.530916, 16.437513, 25.728970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543767, -0.213227, -0.811697,
		-0.370973, -0.928633, -0.004574,
		-0.752792, 0.303605, -0.584061,
		9.305079, 16.528595, 25.553751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.718511, 15.804951, 25.468048>,  <9.832033, 16.316071, 25.962595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.718511, 15.804951, 25.468048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.558149, 16.127010, 25.293228>,  <9.461932, 16.320246, 25.188335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.558149, 16.127010, 25.293228>,  <9.718511, 15.804951, 25.468048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.558149, 16.127010, 25.293228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360154, -0.300138, -0.883293,
		-0.842357, -0.511521, -0.169650,
		-0.400905, 0.805148, -0.437049,
		9.437878, 16.368555, 25.162113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.443328, 15.579445, 24.824566>,  <9.718511, 15.804951, 25.468048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.443328, 15.579445, 24.824566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.471704, 15.977199, 24.793159>,  <9.488730, 16.215851, 24.774315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.471704, 15.977199, 24.793159>,  <9.443328, 15.579445, 24.824566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.471704, 15.977199, 24.793159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320343, -0.097259, -0.942296,
		-0.944641, 0.041696, -0.325444,
		0.070942, 0.994385, -0.078517,
		9.492987, 16.275515, 24.769604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.254310, 15.776995, 24.116375>,  <9.443328, 15.579445, 24.824566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.254310, 15.776995, 24.116375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.447224, 16.107700, 24.232210>,  <9.562972, 16.306124, 24.301712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.447224, 16.107700, 24.232210>,  <9.254310, 15.776995, 24.116375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.447224, 16.107700, 24.232210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402337, 0.084596, -0.911575,
		-0.778155, 0.556152, -0.291838,
		0.482286, 0.826764, 0.289589,
		9.591909, 16.355730, 24.319086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.064676, 16.320530, 23.654373>,  <9.254310, 15.776995, 24.116375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.064676, 16.320530, 23.654373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.407461, 16.433107, 23.827072>,  <9.613132, 16.500654, 23.930693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.407461, 16.433107, 23.827072>,  <9.064676, 16.320530, 23.654373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.407461, 16.433107, 23.827072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381433, 0.217021, -0.898560,
		-0.346591, 0.934715, 0.078628,
		0.856962, 0.281442, 0.431749,
		9.664550, 16.517540, 23.956596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.231854, 16.992302, 23.292183>,  <9.064676, 16.320530, 23.654373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.231854, 16.992302, 23.292183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.568265, 16.854237, 23.458815>,  <9.770111, 16.771399, 23.558794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.568265, 16.854237, 23.458815>,  <9.231854, 16.992302, 23.292183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.568265, 16.854237, 23.458815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479719, 0.119836, -0.869200,
		0.250092, 0.930862, 0.266366,
		0.841026, -0.345161, 0.416581,
		9.820573, 16.750689, 23.583790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.877556, 17.501265, 23.166452>,  <9.231854, 16.992302, 23.292183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.877556, 17.501265, 23.166452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.005182, 17.133488, 23.258389>,  <10.081758, 16.912823, 23.313551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.005182, 17.133488, 23.258389>,  <9.877556, 17.501265, 23.166452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.005182, 17.133488, 23.258389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560621, -0.012429, -0.827979,
		0.764134, 0.393034, 0.511492,
		0.319067, -0.919440, 0.229840,
		10.100903, 16.857656, 23.327341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.608789, 17.417809, 22.954935>,  <9.877556, 17.501265, 23.166452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.608789, 17.417809, 22.954935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.455412, 17.049185, 22.979277>,  <10.363385, 16.828011, 22.993881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.455412, 17.049185, 22.979277>,  <10.608789, 17.417809, 22.954935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.455412, 17.049185, 22.979277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538155, -0.276495, -0.796203,
		0.750573, -0.272549, 0.601961,
		-0.383443, -0.921557, 0.060856,
		10.340379, 16.772718, 22.997534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.932167, 21.211361, 5.563879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.610470, 20.995321, 5.464692>,  <24.417452, 20.865698, 5.405179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.610470, 20.995321, 5.464692>,  <24.932167, 21.211361, 5.563879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610470, 20.995321, 5.464692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405762, -0.194159, -0.893118,
		0.434226, -0.818899, 0.375302,
		-0.804242, -0.540098, -0.247969,
		24.369198, 20.833292, 5.390301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595871, 21.508121, 5.814989>,  <24.932167, 21.211361, 5.563879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595871, 21.508121, 5.814989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.342737, 21.500669, 6.124614>,  <25.190857, 21.496199, 6.310390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.342737, 21.500669, 6.124614>,  <25.595871, 21.508121, 5.814989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342737, 21.500669, 6.124614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228525, -0.950682, -0.209713,
		0.739797, -0.309606, 0.597364,
		-0.632832, -0.018632, 0.774065,
		25.152887, 21.495079, 6.356833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893480, 21.081913, 6.411586>,  <25.595871, 21.508121, 5.814989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893480, 21.081913, 6.411586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.494875, 21.094818, 6.380805>,  <25.255713, 21.102562, 6.362336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.494875, 21.094818, 6.380805>,  <25.893480, 21.081913, 6.411586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494875, 21.094818, 6.380805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018539, -0.984784, -0.172793,
		-0.081358, -0.170764, 0.981947,
		-0.996512, 0.032262, -0.076954,
		25.195921, 21.104496, 6.357718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892937, 21.182589, 7.110966>,  <25.893480, 21.081913, 6.411586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892937, 21.182589, 7.110966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.261305, 21.117359, 6.969370>,  <26.482327, 21.078222, 6.884413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.261305, 21.117359, 6.969370>,  <25.892937, 21.182589, 7.110966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261305, 21.117359, 6.969370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388787, 0.448062, 0.805038,
		0.027329, -0.879004, 0.476031,
		0.920923, -0.163074, -0.353990,
		26.537582, 21.068438, 6.863173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446205, 21.725290, 6.991582>,  <25.892937, 21.182589, 7.110966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446205, 21.725290, 6.991582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.312016, 22.090050, 7.086151>,  <26.231503, 22.308907, 7.142893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.312016, 22.090050, 7.086151>,  <26.446205, 21.725290, 6.991582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312016, 22.090050, 7.086151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005165, -0.249182, 0.968443,
		0.942035, 0.326108, 0.078884,
		-0.335474, 0.911900, 0.236423,
		26.211374, 22.363619, 7.157078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896809, 22.122658, 7.499738>,  <26.446205, 21.725290, 6.991582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896809, 22.122658, 7.499738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.512281, 22.232014, 7.513146>,  <26.281565, 22.297628, 7.521191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.512281, 22.232014, 7.513146>,  <26.896809, 22.122658, 7.499738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512281, 22.232014, 7.513146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077497, -0.385243, 0.919555,
		0.264313, 0.881388, 0.391528,
		-0.961318, 0.273392, 0.033520,
		26.223886, 22.314032, 7.523202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784117, 22.522541, 8.133375>,  <26.896809, 22.122658, 7.499738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784117, 22.522541, 8.133375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.445841, 22.331970, 8.037189>,  <26.242874, 22.217628, 7.979478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.445841, 22.331970, 8.037189>,  <26.784117, 22.522541, 8.133375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445841, 22.331970, 8.037189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110194, -0.284985, 0.952177,
		-0.522171, 0.831746, 0.188510,
		-0.845692, -0.476426, -0.240464,
		26.192133, 22.189043, 7.965050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330013, 22.571365, 8.673999>,  <26.784117, 22.522541, 8.133375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330013, 22.571365, 8.673999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.196873, 22.234966, 8.503384>,  <26.116989, 22.033127, 8.401014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.196873, 22.234966, 8.503384>,  <26.330013, 22.571365, 8.673999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196873, 22.234966, 8.503384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086612, -0.423151, 0.901910,
		-0.938993, 0.337145, 0.068006,
		-0.332851, -0.840997, -0.426537,
		26.097017, 21.982668, 8.375422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865820, 22.301823, 9.218852>,  <26.330013, 22.571365, 8.673999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865820, 22.301823, 9.218852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.819780, 22.006596, 8.952918>,  <25.792156, 21.829458, 8.793358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.819780, 22.006596, 8.952918>,  <25.865820, 22.301823, 9.218852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819780, 22.006596, 8.952918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291572, -0.614701, 0.732891,
		-0.949599, 0.278201, -0.144450,
		-0.115097, -0.738070, -0.664835,
		25.785252, 21.785175, 8.753468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210958, 21.950809, 9.186169>,  <25.865820, 22.301823, 9.218852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210958, 21.950809, 9.186169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.515865, 21.706326, 9.100970>,  <25.698811, 21.559635, 9.049851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.515865, 21.706326, 9.100970>,  <25.210958, 21.950809, 9.186169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515865, 21.706326, 9.100970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292534, -0.618871, 0.728987,
		-0.577380, -0.493377, -0.650547,
		0.762271, -0.611210, -0.212994,
		25.744547, 21.522963, 9.037072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915565, 21.208633, 9.134915>,  <25.210958, 21.950809, 9.186169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915565, 21.208633, 9.134915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306458, 21.208244, 9.219789>,  <25.540993, 21.208012, 9.270713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306458, 21.208244, 9.219789>,  <24.915565, 21.208633, 9.134915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306458, 21.208244, 9.219789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177354, -0.552708, 0.814285,
		0.116484, -0.833375, -0.540295,
		0.977229, -0.000972, 0.212184,
		25.599627, 21.207952, 9.283443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085720, 20.513859, 9.088377>,  <24.915565, 21.208633, 9.134915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085720, 20.513859, 9.088377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.340029, 20.726419, 9.312308>,  <25.492613, 20.853956, 9.446668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.340029, 20.726419, 9.312308>,  <25.085720, 20.513859, 9.088377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340029, 20.726419, 9.312308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387546, -0.407479, 0.826903,
		0.667536, -0.742680, -0.053121,
		0.635771, 0.531401, 0.559830,
		25.530760, 20.885839, 9.480257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345688, 20.061018, 9.599633>,  <25.085720, 20.513859, 9.088377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345688, 20.061018, 9.599633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.417370, 20.431496, 9.732330>,  <25.460379, 20.653782, 9.811949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.417370, 20.431496, 9.732330>,  <25.345688, 20.061018, 9.599633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417370, 20.431496, 9.732330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661039, -0.136382, 0.737854,
		0.728638, -0.351523, 0.587808,
		0.179206, 0.926192, 0.331743,
		25.471132, 20.709352, 9.831853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503342, 20.012810, 10.365296>,  <25.345688, 20.061018, 9.599633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503342, 20.012810, 10.365296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.381588, 20.384790, 10.282796>,  <25.308535, 20.607979, 10.233295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.381588, 20.384790, 10.282796>,  <25.503342, 20.012810, 10.365296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381588, 20.384790, 10.282796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647769, -0.043332, 0.760603,
		0.698387, 0.365119, 0.615584,
		-0.304385, 0.929952, -0.206251,
		25.290272, 20.663776, 10.220921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450533, 20.332611, 10.955381>,  <25.503342, 20.012810, 10.365296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450533, 20.332611, 10.955381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.226175, 20.534920, 10.693208>,  <25.091560, 20.656305, 10.535904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.226175, 20.534920, 10.693208>,  <25.450533, 20.332611, 10.955381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226175, 20.534920, 10.693208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777918, -0.051090, 0.626286,
		0.283272, 0.861152, 0.422106,
		-0.560893, 0.505773, -0.655433,
		25.057907, 20.686651, 10.496578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112600, 20.688044, 11.390281>,  <25.450533, 20.332611, 10.955381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112600, 20.688044, 11.390281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.913322, 20.756845, 11.050347>,  <24.793756, 20.798126, 10.846388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.913322, 20.756845, 11.050347>,  <25.112600, 20.688044, 11.390281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913322, 20.756845, 11.050347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826003, 0.203899, 0.525494,
		0.263668, 0.963763, 0.040496,
		-0.498195, 0.172006, -0.849833,
		24.763865, 20.808447, 10.795398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661657, 21.353603, 11.534279>,  <25.112600, 20.688044, 11.390281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661657, 21.353603, 11.534279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.539825, 21.090311, 11.258898>,  <24.466726, 20.932337, 11.093669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.539825, 21.090311, 11.258898>,  <24.661657, 21.353603, 11.534279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539825, 21.090311, 11.258898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891305, -0.057910, 0.449690,
		-0.335867, 0.750587, -0.569044,
		-0.304579, -0.658229, -0.688452,
		24.448452, 20.892843, 11.052362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040749, 21.523565, 11.374223>,  <24.661657, 21.353603, 11.534279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040749, 21.523565, 11.374223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.031284, 21.156092, 11.216508>,  <24.025606, 20.935608, 11.121880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.031284, 21.156092, 11.216508>,  <24.040749, 21.523565, 11.374223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.031284, 21.156092, 11.216508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938137, -0.115881, 0.326297,
		-0.345454, 0.377615, -0.859109,
		-0.023660, -0.918683, -0.394286,
		24.024187, 20.880487, 11.098222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.280411, 21.344292, 11.188938>,  <24.040749, 21.523565, 11.374223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.280411, 21.344292, 11.188938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.478079, 20.996548, 11.187715>,  <23.596680, 20.787901, 11.186980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.478079, 20.996548, 11.187715>,  <23.280411, 21.344292, 11.188938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.478079, 20.996548, 11.187715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824198, -0.469615, 0.316478,
		-0.276568, -0.153875, -0.948595,
		0.494173, -0.869358, -0.003058,
		23.626331, 20.735741, 11.186797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.767488, 20.995527, 10.974681>,  <23.280411, 21.344292, 11.188938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.767488, 20.995527, 10.974681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040417, 20.741789, 11.120032>,  <23.204174, 20.589546, 11.207243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040417, 20.741789, 11.120032>,  <22.767488, 20.995527, 10.974681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.040417, 20.741789, 11.120032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730565, -0.573472, 0.370682,
		-0.026754, -0.518394, -0.854723,
		0.682319, -0.634348, 0.363379,
		23.245111, 20.551485, 11.229046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.539352, 20.301844, 10.682827>,  <22.767488, 20.995527, 10.974681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.539352, 20.301844, 10.682827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.749577, 20.250605, 11.019249>,  <22.875711, 20.219862, 11.221103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.749577, 20.250605, 11.019249>,  <22.539352, 20.301844, 10.682827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749577, 20.250605, 11.019249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756049, -0.523626, 0.392691,
		0.390096, -0.842263, -0.372047,
		0.525562, -0.128098, 0.841056,
		22.907246, 20.212175, 11.271565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.409647, 19.698299, 10.822918>,  <22.539352, 20.301844, 10.682827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.409647, 19.698299, 10.822918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.545858, 19.830009, 11.175194>,  <22.627586, 19.909037, 11.386559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.545858, 19.830009, 11.175194>,  <22.409647, 19.698299, 10.822918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545858, 19.830009, 11.175194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694130, -0.543767, 0.471700,
		0.634211, -0.771942, 0.043392,
		0.340530, 0.329277, 0.880691,
		22.648018, 19.928793, 11.439401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.446386, 19.130999, 11.140831>,  <22.409647, 19.698299, 10.822918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.446386, 19.130999, 11.140831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.459038, 19.418625, 11.418519>,  <22.466629, 19.591202, 11.585132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.459038, 19.418625, 11.418519>,  <22.446386, 19.130999, 11.140831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.459038, 19.418625, 11.418519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476433, -0.599735, 0.642907,
		0.878642, -0.351084, 0.323618,
		0.031629, 0.719067, 0.694221,
		22.468527, 19.634344, 11.626785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839487, 18.864555, 11.735527>,  <22.446386, 19.130999, 11.140831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839487, 18.864555, 11.735527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595957, 19.165421, 11.836388>,  <22.449839, 19.345940, 11.896904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595957, 19.165421, 11.836388>,  <22.839487, 18.864555, 11.735527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595957, 19.165421, 11.836388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414474, -0.572612, 0.707338,
		0.676419, 0.326135, 0.660373,
		-0.608826, 0.752164, 0.252151,
		22.413309, 19.391069, 11.912033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832487, 18.782808, 12.404559>,  <22.839487, 18.864555, 11.735527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832487, 18.782808, 12.404559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.517876, 19.015917, 12.322825>,  <22.329109, 19.155781, 12.273786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.517876, 19.015917, 12.322825>,  <22.832487, 18.782808, 12.404559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.517876, 19.015917, 12.322825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535901, -0.479662, 0.694791,
		0.306892, 0.655976, 0.689575,
		-0.786529, 0.582769, -0.204334,
		22.281918, 19.190748, 12.261525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.520626, 18.906794, 13.138255>,  <22.832487, 18.782808, 12.404559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.520626, 18.906794, 13.138255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.246569, 18.970984, 12.854052>,  <22.082134, 19.009499, 12.683529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.246569, 18.970984, 12.854052>,  <22.520626, 18.906794, 13.138255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.246569, 18.970984, 12.854052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686606, -0.467963, 0.556401,
		-0.243203, 0.869056, 0.430807,
		-0.685145, 0.160476, -0.710509,
		22.041025, 19.019127, 12.640899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954914, 19.183807, 13.555819>,  <22.520626, 18.906794, 13.138255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954914, 19.183807, 13.555819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824038, 19.062349, 13.197882>,  <21.745512, 18.989473, 12.983119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824038, 19.062349, 13.197882>,  <21.954914, 19.183807, 13.555819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824038, 19.062349, 13.197882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725182, -0.526454, 0.443798,
		-0.605851, 0.794132, -0.047947,
		-0.327192, -0.303646, -0.894843,
		21.725880, 18.971256, 12.929429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.287701, 19.396284, 13.602060>,  <21.954914, 19.183807, 13.555819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.287701, 19.396284, 13.602060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.298935, 19.127857, 13.305715>,  <21.305676, 18.966801, 13.127907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.298935, 19.127857, 13.305715>,  <21.287701, 19.396284, 13.602060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298935, 19.127857, 13.305715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855607, -0.399367, 0.329307,
		-0.516864, 0.624639, -0.585387,
		0.028086, -0.671068, -0.740864,
		21.307362, 18.926537, 13.083455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619616, 19.334595, 13.505554>,  <21.287701, 19.396284, 13.602060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619616, 19.334595, 13.505554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783741, 19.015955, 13.327985>,  <20.882217, 18.824770, 13.221443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783741, 19.015955, 13.327985>,  <20.619616, 19.334595, 13.505554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783741, 19.015955, 13.327985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747768, -0.572533, 0.336227,
		-0.522000, 0.193992, -0.830592,
		0.410316, -0.796601, -0.443923,
		20.906836, 18.776976, 13.194808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.046289, 18.955946, 13.241617>,  <20.619616, 19.334595, 13.505554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.046289, 18.955946, 13.241617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.344435, 18.692293, 13.281583>,  <20.523321, 18.534101, 13.305562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.344435, 18.692293, 13.281583>,  <20.046289, 18.955946, 13.241617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.344435, 18.692293, 13.281583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616045, -0.623709, 0.481119,
		-0.254803, -0.420159, -0.870943,
		0.745362, -0.659130, 0.099914,
		20.568043, 18.494555, 13.311557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813450, 18.303724, 13.067958>,  <20.046289, 18.955946, 13.241617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.813450, 18.303724, 13.067958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.131529, 18.202215, 13.288234>,  <20.322376, 18.141310, 13.420400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.131529, 18.202215, 13.288234>,  <19.813450, 18.303724, 13.067958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.131529, 18.202215, 13.288234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528165, -0.735993, 0.423505,
		0.297829, -0.627626, -0.719294,
		0.795198, -0.253773, 0.550690,
		20.370089, 18.126083, 13.453441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791891, 17.542690, 12.950003>,  <19.813450, 18.303724, 13.067958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791891, 17.542690, 12.950003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.961346, 17.581972, 13.310200>,  <20.063019, 17.605541, 13.526319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.961346, 17.581972, 13.310200>,  <19.791891, 17.542690, 12.950003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961346, 17.581972, 13.310200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472304, -0.824334, 0.312095,
		0.772957, -0.557521, -0.302834,
		0.423635, 0.098206, 0.900493,
		20.088436, 17.611435, 13.580348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.157188, 17.003633, 13.245596>,  <19.791891, 17.542690, 12.950003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.157188, 17.003633, 13.245596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.051922, 17.188515, 13.584326>,  <19.988762, 17.299444, 13.787563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.051922, 17.188515, 13.584326>,  <20.157188, 17.003633, 13.245596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.051922, 17.188515, 13.584326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391270, -0.853469, 0.344236,
		0.881845, -0.240745, 0.405453,
		-0.263168, 0.462204, 0.846824,
		19.972971, 17.327175, 13.838373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516348, 16.702915, 13.893750>,  <20.157188, 17.003633, 13.245596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516348, 16.702915, 13.893750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.165831, 16.871216, 13.987623>,  <19.955521, 16.972197, 14.043947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.165831, 16.871216, 13.987623>,  <20.516348, 16.702915, 13.893750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165831, 16.871216, 13.987623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276952, -0.838527, 0.469224,
		0.394214, 0.346182, 0.851324,
		-0.876295, 0.420750, 0.234683,
		19.902943, 16.997440, 14.058028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238266, 16.362127, 14.508022>,  <20.516348, 16.702915, 13.893750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.238266, 16.362127, 14.508022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.933229, 16.555767, 14.336393>,  <19.750208, 16.671951, 14.233416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.933229, 16.555767, 14.336393>,  <20.238266, 16.362127, 14.508022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933229, 16.555767, 14.336393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613730, -0.751061, 0.243399,
		-0.204430, 0.448948, 0.869859,
		-0.762590, 0.484101, -0.429073,
		19.704453, 16.700996, 14.207671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956858, 16.178331, 14.502731>,  <20.238266, 16.362127, 14.508022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956858, 16.178331, 14.502731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.291080, 16.003513, 14.635900>,  <21.491613, 15.898623, 14.715802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.291080, 16.003513, 14.635900>,  <20.956858, 16.178331, 14.502731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291080, 16.003513, 14.635900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516249, 0.417237, -0.747931,
		0.187973, 0.796808, 0.574250,
		0.835555, -0.437047, 0.332922,
		21.541748, 15.872399, 14.735777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415123, 16.684336, 14.353956>,  <20.956858, 16.178331, 14.502731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415123, 16.684336, 14.353956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.627016, 16.346437, 14.384391>,  <21.754152, 16.143698, 14.402652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.627016, 16.346437, 14.384391>,  <21.415123, 16.684336, 14.353956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.627016, 16.346437, 14.384391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658135, 0.352801, -0.665124,
		0.535017, 0.402413, 0.742846,
		0.529731, -0.844746, 0.076087,
		21.785936, 16.093014, 14.407217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192495, 16.847097, 14.454983>,  <21.415123, 16.684336, 14.353956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192495, 16.847097, 14.454983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.213999, 16.475479, 14.308566>,  <22.226900, 16.252508, 14.220716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.213999, 16.475479, 14.308566>,  <22.192495, 16.847097, 14.454983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.213999, 16.475479, 14.308566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567096, 0.330126, -0.754599,
		0.821895, -0.167016, 0.544604,
		0.053758, -0.929044, -0.366043,
		22.230125, 16.196766, 14.198753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.828159, 16.721462, 14.211885>,  <22.192495, 16.847097, 14.454983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.828159, 16.721462, 14.211885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.610685, 16.436291, 14.034735>,  <22.480200, 16.265188, 13.928444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.610685, 16.436291, 14.034735>,  <22.828159, 16.721462, 14.211885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.610685, 16.436291, 14.034735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554926, 0.090522, -0.826960,
		0.629652, -0.695371, 0.346406,
		-0.543687, -0.712927, -0.442877,
		22.447578, 16.222412, 13.901872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.309280, 16.174984, 13.941231>,  <22.828159, 16.721462, 14.211885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.309280, 16.174984, 13.941231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.974781, 16.145620, 13.723865>,  <22.774082, 16.128002, 13.593445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.974781, 16.145620, 13.723865>,  <23.309280, 16.174984, 13.941231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.974781, 16.145620, 13.723865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531614, 0.134452, -0.836247,
		0.134452, -0.988197, -0.073410,
		0.836247, 0.073410, 0.543416,
		22.723907, 16.123598, 13.560840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477755, 15.711736, 13.409039>,  <23.309280, 16.174984, 13.941231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477755, 15.711736, 13.409039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.169127, 15.905397, 13.243982>,  <22.983950, 16.021595, 13.144948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.169127, 15.905397, 13.243982>,  <23.477755, 15.711736, 13.409039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.169127, 15.905397, 13.243982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475562, 0.008160, -0.879644,
		-0.422517, -0.874944, -0.236542,
		-0.771570, 0.484155, -0.412643,
		22.937656, 16.050644, 13.120190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.487890, 15.490125, 12.784989>,  <23.477755, 15.711736, 13.409039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.487890, 15.490125, 12.784989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.279428, 15.830780, 12.762681>,  <23.154350, 16.035173, 12.749296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.279428, 15.830780, 12.762681>,  <23.487890, 15.490125, 12.784989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.279428, 15.830780, 12.762681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341662, 0.148305, -0.928048,
		-0.782089, -0.502712, -0.368262,
		-0.521156, 0.851637, -0.055770,
		23.123081, 16.086271, 12.745950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.000702, 15.538984, 12.117420>,  <23.487890, 15.490125, 12.784989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.000702, 15.538984, 12.117420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.079704, 15.920494, 12.208022>,  <23.127106, 16.149401, 12.262383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.079704, 15.920494, 12.208022>,  <23.000702, 15.538984, 12.117420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.079704, 15.920494, 12.208022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258351, 0.172246, -0.950571,
		-0.945646, 0.246262, -0.212389,
		0.197506, 0.953775, 0.226505,
		23.138956, 16.206627, 12.275973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704279, 15.936725, 11.553291>,  <23.000702, 15.538984, 12.117420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704279, 15.936725, 11.553291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.984091, 16.162132, 11.729067>,  <23.151978, 16.297377, 11.834532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.984091, 16.162132, 11.729067>,  <22.704279, 15.936725, 11.553291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.984091, 16.162132, 11.729067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352892, 0.262315, -0.898141,
		-0.621392, 0.783349, -0.015365,
		0.699528, 0.563520, 0.439438,
		23.193949, 16.331188, 11.860898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.750387, 16.605860, 11.274765>,  <22.704279, 15.936725, 11.553291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.750387, 16.605860, 11.274765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.111300, 16.580868, 11.445403>,  <23.327847, 16.565872, 11.547786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.111300, 16.580868, 11.445403>,  <22.750387, 16.605860, 11.274765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.111300, 16.580868, 11.445403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402377, 0.477405, -0.781139,
		-0.154855, 0.876460, 0.455893,
		0.902282, -0.062478, 0.426596,
		23.381985, 16.562124, 11.573382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.071507, 17.167482, 11.107728>,  <22.750387, 16.605860, 11.274765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.071507, 17.167482, 11.107728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.396856, 16.981604, 11.247714>,  <23.592066, 16.870075, 11.331706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.396856, 16.981604, 11.247714>,  <23.071507, 17.167482, 11.107728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.396856, 16.981604, 11.247714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558115, 0.453646, -0.694775,
		0.164101, 0.760434, 0.628340,
		0.813375, -0.464699, 0.349966,
		23.640869, 16.842194, 11.352704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568657, 17.635216, 11.071614>,  <23.071507, 17.167482, 11.107728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568657, 17.635216, 11.071614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.794035, 17.305666, 11.096128>,  <23.929262, 17.107935, 11.110837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.794035, 17.305666, 11.096128>,  <23.568657, 17.635216, 11.071614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.794035, 17.305666, 11.096128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667683, 0.410424, -0.621088,
		0.486547, 0.390869, 0.781340,
		0.563446, -0.823877, 0.061286,
		23.963068, 17.058502, 11.114514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.301363, 17.804300, 11.116461>,  <23.568657, 17.635216, 11.071614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.301363, 17.804300, 11.116461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.299221, 17.422388, 10.997555>,  <24.297935, 17.193241, 10.926211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.299221, 17.422388, 10.997555>,  <24.301363, 17.804300, 11.116461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299221, 17.422388, 10.997555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731813, 0.198845, -0.651851,
		0.681484, -0.221032, 0.697656,
		-0.005355, -0.954780, -0.297264,
		24.297615, 17.135954, 10.908376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.028309, 17.609785, 10.983990>,  <24.301363, 17.804300, 11.116461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.028309, 17.609785, 10.983990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.788282, 17.373564, 10.768149>,  <24.644266, 17.231831, 10.638645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.788282, 17.373564, 10.768149>,  <25.028309, 17.609785, 10.983990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788282, 17.373564, 10.768149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644393, 0.042848, -0.763493,
		0.474004, -0.805860, 0.354837,
		-0.600064, -0.590553, -0.539601,
		24.608263, 17.196398, 10.606269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469202, 17.012377, 10.783115>,  <25.028309, 17.609785, 10.983990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469202, 17.012377, 10.783115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.165756, 17.033295, 10.523340>,  <24.983688, 17.045845, 10.367476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.165756, 17.033295, 10.523340>,  <25.469202, 17.012377, 10.783115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165756, 17.033295, 10.523340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650900, 0.104966, -0.751872,
		0.028849, -0.993100, -0.113668,
		-0.758615, 0.052296, -0.649437,
		24.938171, 17.048983, 10.328509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706514, 16.683495, 10.259629>,  <25.469202, 17.012377, 10.783115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706514, 16.683495, 10.259629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.402027, 16.901453, 10.118982>,  <25.219336, 17.032228, 10.034595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.402027, 16.901453, 10.118982>,  <25.706514, 16.683495, 10.259629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402027, 16.901453, 10.118982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538059, 0.228025, -0.811478,
		-0.361995, -0.806902, -0.466764,
		-0.761218, 0.544898, -0.351617,
		25.173662, 17.064922, 10.013497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681904, 16.482088, 9.566628>,  <25.706514, 16.683495, 10.259629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681904, 16.482088, 9.566628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.487877, 16.831083, 9.590204>,  <25.371460, 17.040480, 9.604350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.487877, 16.831083, 9.590204>,  <25.681904, 16.482088, 9.566628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487877, 16.831083, 9.590204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575942, 0.369464, -0.729237,
		-0.658028, -0.319781, -0.681718,
		-0.485067, 0.872488, 0.058942,
		25.342358, 17.092831, 9.607887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.038945, 18.461130, 19.577051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820647, 18.136330, 19.494280>,  <13.689669, 17.941450, 19.444618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820647, 18.136330, 19.494280>,  <14.038945, 18.461130, 19.577051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.820647, 18.136330, 19.494280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682937, -0.287921, -0.671341,
		0.485551, -0.507698, 0.711676,
		-0.545745, -0.812000, -0.206926,
		13.656923, 17.892729, 19.432201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.534191, 18.000801, 19.412218>,  <14.038945, 18.461130, 19.577051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.534191, 18.000801, 19.412218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212908, 17.796101, 19.290258>,  <14.020138, 17.673281, 19.217083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212908, 17.796101, 19.290258>,  <14.534191, 18.000801, 19.412218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.212908, 17.796101, 19.290258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550442, -0.441917, -0.708324,
		0.227748, -0.736761, 0.636643,
		-0.803209, -0.511754, -0.304899,
		13.971945, 17.642574, 19.198790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828535, 17.253090, 19.279507>,  <14.534191, 18.000801, 19.412218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828535, 17.253090, 19.279507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476090, 17.289955, 19.093971>,  <14.264624, 17.312075, 18.982649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476090, 17.289955, 19.093971>,  <14.828535, 17.253090, 19.279507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476090, 17.289955, 19.093971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380893, -0.443020, -0.811574,
		-0.280290, -0.891761, 0.355245,
		-0.881111, 0.092166, -0.463840,
		14.211757, 17.317604, 18.954819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518277, 16.506096, 19.072359>,  <14.828535, 17.253090, 19.279507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518277, 16.506096, 19.072359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372481, 16.790327, 18.831619>,  <14.285004, 16.960867, 18.687176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372481, 16.790327, 18.831619>,  <14.518277, 16.506096, 19.072359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372481, 16.790327, 18.831619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375263, -0.479427, -0.793302,
		-0.852248, -0.515002, -0.091908,
		-0.364489, 0.710580, -0.601851,
		14.263135, 17.003500, 18.651064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196596, 16.144299, 18.470812>,  <14.518277, 16.506096, 19.072359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196596, 16.144299, 18.470812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261643, 16.511560, 18.326286>,  <14.300672, 16.731918, 18.239571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261643, 16.511560, 18.326286>,  <14.196596, 16.144299, 18.470812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.261643, 16.511560, 18.326286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477448, -0.393683, -0.785530,
		-0.863481, -0.044766, -0.502391,
		0.162618, 0.918155, -0.361312,
		14.310429, 16.787006, 18.217894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905565, 16.205225, 17.838938>,  <14.196596, 16.144299, 18.470812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905565, 16.205225, 17.838938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203315, 16.472141, 17.848972>,  <14.381965, 16.632292, 17.854992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203315, 16.472141, 17.848972>,  <13.905565, 16.205225, 17.838938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203315, 16.472141, 17.848972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306246, -0.307757, -0.900832,
		-0.593398, 0.678238, -0.433442,
		0.744374, 0.667292, 0.025086,
		14.426627, 16.672329, 17.856499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110521, 16.289015, 17.198664>,  <13.905565, 16.205225, 17.838938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110521, 16.289015, 17.198664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416287, 16.495632, 17.352989>,  <14.599748, 16.619602, 17.445585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416287, 16.495632, 17.352989>,  <14.110521, 16.289015, 17.198664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.416287, 16.495632, 17.352989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554436, -0.221262, -0.802274,
		-0.329042, 0.827180, -0.455526,
		0.764416, 0.516542, 0.385814,
		14.645613, 16.650595, 17.468733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250472, 16.651089, 16.578829>,  <14.110521, 16.289015, 17.198664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250472, 16.651089, 16.578829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.557977, 16.673117, 16.833693>,  <14.742479, 16.686333, 16.986610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.557977, 16.673117, 16.833693>,  <14.250472, 16.651089, 16.578829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.557977, 16.673117, 16.833693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639394, -0.045164, -0.767551,
		-0.013491, 0.997461, -0.069930,
		0.768761, 0.055068, 0.637161,
		14.788605, 16.689636, 17.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627340, 17.136209, 16.269169>,  <14.250472, 16.651089, 16.578829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627340, 17.136209, 16.269169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878958, 16.920961, 16.493572>,  <15.029928, 16.791813, 16.628214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878958, 16.920961, 16.493572>,  <14.627340, 17.136209, 16.269169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878958, 16.920961, 16.493572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691546, 0.057746, -0.720020,
		0.355061, 0.840888, 0.408459,
		0.629044, -0.538119, 0.561010,
		15.067671, 16.759525, 16.661875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284525, 17.413240, 16.093906>,  <14.627340, 17.136209, 16.269169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284525, 17.413240, 16.093906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339727, 17.048100, 16.247612>,  <15.372849, 16.829016, 16.339834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339727, 17.048100, 16.247612>,  <15.284525, 17.413240, 16.093906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.339727, 17.048100, 16.247612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513982, -0.265635, -0.815635,
		0.846627, 0.310067, 0.432530,
		0.138006, -0.912851, 0.384262,
		15.381129, 16.774244, 16.362890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102943, 17.253338, 16.190165>,  <15.284525, 17.413240, 16.093906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102943, 17.253338, 16.190165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900274, 16.910273, 16.155081>,  <15.778673, 16.704433, 16.134029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900274, 16.910273, 16.155081>,  <16.102943, 17.253338, 16.190165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900274, 16.910273, 16.155081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583803, -0.266455, -0.766926,
		0.634395, -0.439786, 0.635713,
		-0.506672, -0.857666, -0.087711,
		15.748273, 16.652973, 16.128767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585714, 16.686317, 16.097467>,  <16.102943, 17.253338, 16.190165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.585714, 16.686317, 16.097467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236574, 16.556473, 15.951721>,  <16.027090, 16.478567, 15.864273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236574, 16.556473, 15.951721>,  <16.585714, 16.686317, 16.097467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236574, 16.556473, 15.951721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459509, -0.295381, -0.837617,
		0.164272, -0.898542, 0.406984,
		-0.872849, -0.324610, -0.364365,
		15.974719, 16.459089, 15.842412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131239, 16.686049, 15.566673>,  <16.585714, 16.686317, 16.097467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.131239, 16.686049, 15.566673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907135, 16.989176, 15.432917>,  <16.772673, 17.171053, 15.352663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907135, 16.989176, 15.432917>,  <17.131239, 16.686049, 15.566673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907135, 16.989176, 15.432917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268658, 0.215625, 0.938791,
		0.783538, 0.615804, 0.082789,
		-0.560260, 0.757820, -0.334391,
		16.739058, 17.216522, 15.332600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348089, 17.350906, 15.967320>,  <17.131239, 16.686049, 15.566673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348089, 17.350906, 15.967320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976206, 17.342710, 15.820230>,  <16.753077, 17.337793, 15.731975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976206, 17.342710, 15.820230>,  <17.348089, 17.350906, 15.967320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976206, 17.342710, 15.820230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362226, 0.231424, 0.902904,
		0.066603, 0.972637, -0.222578,
		-0.929708, -0.020488, -0.367728,
		16.697294, 17.336565, 15.709911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984493, 17.439947, 15.927930>,  <17.348089, 17.350906, 15.967320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984493, 17.439947, 15.927930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330183, 17.251085, 15.997420>,  <18.537598, 17.137768, 16.039114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330183, 17.251085, 15.997420>,  <17.984493, 17.439947, 15.927930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330183, 17.251085, 15.997420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430699, -0.515877, 0.740519,
		-0.260019, -0.714801, -0.649192,
		0.864227, -0.472155, 0.173727,
		18.589451, 17.109438, 16.049538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.831936, 16.805771, 15.933652>,  <17.984493, 17.439947, 15.927930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.831936, 16.805771, 15.933652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179115, 16.830490, 16.130770>,  <18.387423, 16.845322, 16.249041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179115, 16.830490, 16.130770>,  <17.831936, 16.805771, 15.933652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179115, 16.830490, 16.130770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388609, -0.533364, 0.751336,
		0.309272, -0.843625, -0.438916,
		0.867948, 0.061800, 0.492795,
		18.439499, 16.849030, 16.278608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021887, 16.083273, 16.086054>,  <17.831936, 16.805771, 15.933652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021887, 16.083273, 16.086054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225548, 16.312788, 16.342657>,  <18.347744, 16.450497, 16.496618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225548, 16.312788, 16.342657>,  <18.021887, 16.083273, 16.086054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225548, 16.312788, 16.342657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266408, -0.603681, 0.751396,
		0.818407, -0.553478, -0.154505,
		0.509153, 0.573787, 0.641508,
		18.378294, 16.484924, 16.535109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450731, 15.626646, 16.527565>,  <18.021887, 16.083273, 16.086054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450731, 15.626646, 16.527565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406635, 15.975731, 16.717815>,  <18.380178, 16.185183, 16.831966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406635, 15.975731, 16.717815>,  <18.450731, 15.626646, 16.527565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406635, 15.975731, 16.717815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430640, -0.473231, 0.768506,
		0.895766, -0.120103, 0.427994,
		-0.110240, 0.872713, 0.475625,
		18.373564, 16.237545, 16.860502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547474, 15.463023, 17.258896>,  <18.450731, 15.626646, 16.527565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547474, 15.463023, 17.258896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362164, 15.815466, 17.296894>,  <18.250977, 16.026932, 17.319693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362164, 15.815466, 17.296894>,  <18.547474, 15.463023, 17.258896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362164, 15.815466, 17.296894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432325, -0.318272, 0.843681,
		0.773607, 0.349790, 0.528374,
		-0.463278, 0.881107, 0.094995,
		18.223181, 16.079798, 17.325392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698914, 15.696184, 17.969337>,  <18.547474, 15.463023, 17.258896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.698914, 15.696184, 17.969337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357212, 15.867512, 17.851494>,  <18.152191, 15.970308, 17.780787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357212, 15.867512, 17.851494>,  <18.698914, 15.696184, 17.969337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357212, 15.867512, 17.851494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445602, -0.311408, 0.839323,
		0.267754, 0.848273, 0.456881,
		-0.854252, 0.428320, -0.294611,
		18.100937, 15.996008, 17.763111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.322363, 15.759316, 18.534382>,  <18.698914, 15.696184, 17.969337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.322363, 15.759316, 18.534382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030544, 15.803164, 18.264347>,  <17.855453, 15.829473, 18.102325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030544, 15.803164, 18.264347>,  <18.322363, 15.759316, 18.534382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030544, 15.803164, 18.264347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675936, 0.034905, 0.736134,
		0.104259, 0.993360, 0.048632,
		-0.729549, 0.109621, -0.675087,
		17.811680, 15.836051, 18.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826742, 16.036104, 18.925049>,  <18.322363, 15.759316, 18.534382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826742, 16.036104, 18.925049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621193, 15.910839, 18.605583>,  <17.497864, 15.835680, 18.413904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621193, 15.910839, 18.605583>,  <17.826742, 16.036104, 18.925049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.621193, 15.910839, 18.605583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846344, 0.032996, 0.531614,
		-0.140130, 0.949125, -0.282001,
		-0.513873, -0.313165, -0.798663,
		17.467031, 15.816890, 18.365984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.290773, 16.577188, 18.764925>,  <17.826742, 16.036104, 18.925049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.290773, 16.577188, 18.764925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179352, 16.226631, 18.607780>,  <17.112499, 16.016296, 18.513493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179352, 16.226631, 18.607780>,  <17.290773, 16.577188, 18.764925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179352, 16.226631, 18.607780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834468, 0.018341, 0.550751,
		-0.475469, 0.481246, -0.736432,
		-0.278553, -0.876394, -0.392864,
		17.095785, 15.963713, 18.489922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597452, 16.672419, 18.571312>,  <17.290773, 16.577188, 18.764925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597452, 16.672419, 18.571312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646568, 16.275703, 18.585594>,  <16.676039, 16.037674, 18.594164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646568, 16.275703, 18.585594>,  <16.597452, 16.672419, 18.571312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646568, 16.275703, 18.585594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844363, -0.085496, 0.528906,
		-0.521511, -0.095092, -0.847929,
		0.122790, -0.991790, 0.035705,
		16.683405, 15.978167, 18.596306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869764, 16.358547, 18.574455>,  <16.597452, 16.672419, 18.571312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869764, 16.358547, 18.574455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107788, 16.056803, 18.685335>,  <16.250603, 15.875755, 18.751863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107788, 16.056803, 18.685335>,  <15.869764, 16.358547, 18.574455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107788, 16.056803, 18.685335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680869, -0.289941, 0.672570,
		-0.426990, -0.588957, -0.686155,
		0.595060, -0.754363, 0.277201,
		16.286306, 15.830494, 18.768496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446512, 15.830877, 18.575157>,  <15.869764, 16.358547, 18.574455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446512, 15.830877, 18.575157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742976, 15.745641, 18.829802>,  <15.920855, 15.694499, 18.982588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742976, 15.745641, 18.829802>,  <15.446512, 15.830877, 18.575157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742976, 15.745641, 18.829802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667176, -0.128506, 0.733732,
		-0.074540, -0.968546, -0.237409,
		0.741162, -0.213086, 0.636612,
		15.965324, 15.681713, 19.020784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215934, 15.258186, 18.897114>,  <15.446512, 15.830877, 18.575157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215934, 15.258186, 18.897114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516975, 15.398981, 19.119713>,  <15.697600, 15.483458, 19.253273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516975, 15.398981, 19.119713>,  <15.215934, 15.258186, 18.897114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516975, 15.398981, 19.119713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446627, -0.348138, 0.824211,
		0.483850, -0.868853, -0.104804,
		0.752605, 0.351986, 0.556500,
		15.742757, 15.504577, 19.286663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.372559, 14.674873, 19.449463>,  <15.215934, 15.258186, 18.897114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.372559, 14.674873, 19.449463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516045, 15.024817, 19.579659>,  <15.602137, 15.234784, 19.657776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516045, 15.024817, 19.579659>,  <15.372559, 14.674873, 19.449463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516045, 15.024817, 19.579659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417977, -0.161240, 0.894034,
		0.834637, -0.456750, 0.307832,
		0.358716, 0.874861, 0.325488,
		15.623659, 15.287275, 19.677305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.843594, 14.189105, 19.472788>,  <15.372559, 14.674873, 19.449463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.843594, 14.189105, 19.472788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906737, 13.798629, 19.532299>,  <15.944623, 13.564343, 19.568005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906737, 13.798629, 19.532299>,  <15.843594, 14.189105, 19.472788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906737, 13.798629, 19.532299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288176, -0.098564, -0.952491,
		0.944476, 0.193232, 0.265755,
		0.157858, -0.976190, 0.148776,
		15.954095, 13.505772, 19.576931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.486832, 14.014261, 19.247116>,  <15.843594, 14.189105, 19.472788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.486832, 14.014261, 19.247116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274832, 13.675296, 19.259697>,  <16.147633, 13.471916, 19.267246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274832, 13.675296, 19.259697>,  <16.486832, 14.014261, 19.247116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274832, 13.675296, 19.259697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215596, -0.170526, -0.961478,
		0.820134, -0.502802, 0.273078,
		-0.530000, -0.847415, 0.031452,
		16.115831, 13.421071, 19.269133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723219, 13.766694, 18.739283>,  <16.486832, 14.014261, 19.247116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723219, 13.766694, 18.739283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402010, 13.533360, 18.788074>,  <16.209284, 13.393360, 18.817348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402010, 13.533360, 18.788074>,  <16.723219, 13.766694, 18.739283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402010, 13.533360, 18.788074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051003, -0.271197, -0.961172,
		0.593763, -0.765620, 0.247529,
		-0.803022, -0.583333, 0.121978,
		16.161104, 13.358360, 18.824667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986227, 13.143670, 18.558281>,  <16.723219, 13.766694, 18.739283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986227, 13.143670, 18.558281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590355, 13.169642, 18.507189>,  <16.352831, 13.185225, 18.476534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590355, 13.169642, 18.507189>,  <16.986227, 13.143670, 18.558281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.590355, 13.169642, 18.507189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097325, -0.349615, -0.931825,
		-0.105160, -0.934641, 0.339688,
		-0.989681, 0.064931, -0.127730,
		16.293451, 13.189122, 18.468870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795435, 12.522152, 18.134970>,  <16.986227, 13.143670, 18.558281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795435, 12.522152, 18.134970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457399, 12.732064, 18.094118>,  <16.254578, 12.858011, 18.069607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457399, 12.732064, 18.094118>,  <16.795435, 12.522152, 18.134970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457399, 12.732064, 18.094118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092070, -0.331027, -0.939119,
		-0.526637, -0.784237, 0.328064,
		-0.845090, 0.524780, -0.102127,
		16.203873, 12.889498, 18.063480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216291, 12.166141, 17.917509>,  <16.795435, 12.522152, 18.134970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216291, 12.166141, 17.917509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133745, 12.538738, 17.797688>,  <16.084217, 12.762297, 17.725794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133745, 12.538738, 17.797688>,  <16.216291, 12.166141, 17.917509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.133745, 12.538738, 17.797688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097075, -0.324123, -0.941021,
		-0.973648, -0.165113, 0.157312,
		-0.206364, 0.931494, -0.299554,
		16.071836, 12.818187, 17.707821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616231, 12.073672, 17.499727>,  <16.216291, 12.166141, 17.917509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616231, 12.073672, 17.499727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773488, 12.423518, 17.386246>,  <15.867842, 12.633426, 17.318157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773488, 12.423518, 17.386246>,  <15.616231, 12.073672, 17.499727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773488, 12.423518, 17.386246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066958, -0.280497, -0.957517,
		-0.917037, 0.395436, -0.051713,
		0.393142, 0.874615, -0.283704,
		15.891431, 12.685903, 17.301134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166183, 12.411418, 17.053026>,  <15.616231, 12.073672, 17.499727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166183, 12.411418, 17.053026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528588, 12.559235, 16.970490>,  <15.746032, 12.647924, 16.920967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528588, 12.559235, 16.970490>,  <15.166183, 12.411418, 17.053026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528588, 12.559235, 16.970490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100495, -0.285758, -0.953018,
		-0.411144, 0.884184, -0.221764,
		0.906014, 0.369542, -0.206344,
		15.800392, 12.670097, 16.908587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066541, 12.810922, 16.438061>,  <15.166183, 12.411418, 17.053026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066541, 12.810922, 16.438061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462939, 12.763228, 16.462421>,  <15.700778, 12.734612, 16.477037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462939, 12.763228, 16.462421>,  <15.066541, 12.810922, 16.438061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462939, 12.763228, 16.462421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038232, -0.183923, -0.982197,
		0.128313, 0.975682, -0.177708,
		0.990996, -0.119234, 0.060902,
		15.760239, 12.727458, 16.480692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254011, 13.266568, 15.952059>,  <15.066541, 12.810922, 16.438061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254011, 13.266568, 15.952059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542289, 13.002494, 16.036678>,  <15.715256, 12.844049, 16.087450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542289, 13.002494, 16.036678>,  <15.254011, 13.266568, 15.952059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542289, 13.002494, 16.036678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038013, -0.267063, -0.962929,
		0.692210, 0.702019, -0.167375,
		0.720695, -0.660186, 0.211550,
		15.758497, 12.804438, 16.100143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887848, 13.440413, 15.611806>,  <15.254011, 13.266568, 15.952059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887848, 13.440413, 15.611806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867449, 13.049837, 15.695674>,  <15.855209, 12.815492, 15.745995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867449, 13.049837, 15.695674>,  <15.887848, 13.440413, 15.611806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867449, 13.049837, 15.695674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057432, -0.206730, -0.976711,
		0.997046, -0.061851, -0.045537,
		-0.050997, -0.976441, 0.209671,
		15.852150, 12.756905, 15.758575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476261, 13.121311, 15.370265>,  <15.887848, 13.440413, 15.611806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.476261, 13.121311, 15.370265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178083, 12.856382, 15.400305>,  <15.999176, 12.697425, 15.418328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178083, 12.856382, 15.400305>,  <16.476261, 13.121311, 15.370265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178083, 12.856382, 15.400305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114397, -0.238113, -0.964477,
		0.656676, -0.710374, 0.253268,
		-0.745446, -0.662322, 0.075099,
		15.954450, 12.657686, 15.422834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.985663, 12.946367, 24.401386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.276880, 13.213146, 24.464802>,  <13.451611, 13.373214, 24.502851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.276880, 13.213146, 24.464802>,  <12.985663, 12.946367, 24.401386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.276880, 13.213146, 24.464802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461613, -0.305973, -0.832642,
		-0.506821, 0.679382, -0.530634,
		0.728042, 0.666948, 0.158538,
		13.495293, 13.413231, 24.512363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120583, 13.264849, 23.739227>,  <12.985663, 12.946367, 24.401386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120583, 13.264849, 23.739227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.451877, 13.379350, 23.931929>,  <13.650653, 13.448050, 24.047550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.451877, 13.379350, 23.931929>,  <13.120583, 13.264849, 23.739227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.451877, 13.379350, 23.931929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502345, 0.001736, -0.864666,
		-0.248349, 0.958153, -0.142360,
		0.828234, 0.286253, 0.481754,
		13.700347, 13.465225, 24.076454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.422843, 13.906959, 23.423552>,  <13.120583, 13.264849, 23.739227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.422843, 13.906959, 23.423552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.723882, 13.738780, 23.626263>,  <13.904505, 13.637873, 23.747889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.723882, 13.738780, 23.626263>,  <13.422843, 13.906959, 23.423552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.723882, 13.738780, 23.626263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558968, 0.001104, -0.829189,
		0.348070, 0.907317, 0.235847,
		0.752597, -0.420447, 0.506777,
		13.949661, 13.612646, 23.778296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.067355, 14.206043, 23.177990>,  <13.422843, 13.906959, 23.423552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.067355, 14.206043, 23.177990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.180756, 13.867494, 23.358335>,  <14.248796, 13.664364, 23.466543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.180756, 13.867494, 23.358335>,  <14.067355, 14.206043, 23.177990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180756, 13.867494, 23.358335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674593, -0.158142, -0.721051,
		0.681580, 0.508568, 0.526125,
		0.283501, -0.846375, 0.450863,
		14.265806, 13.613582, 23.493595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.834072, 14.224233, 23.391380>,  <14.067355, 14.206043, 23.177990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.834072, 14.224233, 23.391380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.710913, 13.845565, 23.353401>,  <14.637017, 13.618364, 23.330614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.710913, 13.845565, 23.353401>,  <14.834072, 14.224233, 23.391380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.710913, 13.845565, 23.353401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715180, -0.164475, -0.679312,
		0.627468, -0.277063, 0.727681,
		-0.307898, -0.946670, -0.094947,
		14.618544, 13.561563, 23.324917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445422, 13.904222, 23.400766>,  <14.834072, 14.224233, 23.391380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445422, 13.904222, 23.400766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.173266, 13.666963, 23.228607>,  <15.009973, 13.524607, 23.125311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.173266, 13.666963, 23.228607>,  <15.445422, 13.904222, 23.400766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173266, 13.666963, 23.228607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651559, -0.220765, -0.725764,
		0.335469, -0.774233, 0.536678,
		-0.680390, -0.593149, -0.430399,
		14.969150, 13.489018, 23.099487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782318, 13.392573, 23.059999>,  <15.445422, 13.904222, 23.400766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782318, 13.392573, 23.059999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.434863, 13.292262, 22.889082>,  <15.226390, 13.232075, 22.786531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.434863, 13.292262, 22.889082>,  <15.782318, 13.392573, 23.059999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434863, 13.292262, 22.889082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473543, -0.166621, -0.864867,
		0.145695, -0.953597, 0.263488,
		-0.868637, -0.250780, -0.427293,
		15.174272, 13.217029, 22.760895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831684, 12.689138, 22.841232>,  <15.782318, 13.392573, 23.059999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831684, 12.689138, 22.841232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.554759, 12.884294, 22.628565>,  <15.388604, 13.001387, 22.500965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.554759, 12.884294, 22.628565>,  <15.831684, 12.689138, 22.841232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554759, 12.884294, 22.628565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449956, -0.284129, -0.846646,
		-0.564130, -0.825370, -0.022822,
		-0.692312, 0.487888, -0.531667,
		15.347065, 13.030660, 22.469065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.700753, 12.293614, 22.183582>,  <15.831684, 12.689138, 22.841232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.700753, 12.293614, 22.183582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.570004, 12.663433, 22.105232>,  <15.491554, 12.885324, 22.058222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.570004, 12.663433, 22.105232>,  <15.700753, 12.293614, 22.183582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.570004, 12.663433, 22.105232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271104, -0.106819, -0.956605,
		-0.905349, -0.365792, -0.215732,
		-0.326874, 0.924547, -0.195876,
		15.471941, 12.940797, 22.046469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407755, 12.190434, 21.491371>,  <15.700753, 12.293614, 22.183582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407755, 12.190434, 21.491371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.433358, 12.588025, 21.526939>,  <15.448720, 12.826580, 21.548281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.433358, 12.588025, 21.526939>,  <15.407755, 12.190434, 21.491371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433358, 12.588025, 21.526939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315726, 0.064355, -0.946665,
		-0.946689, 0.088670, -0.309706,
		0.064009, 0.993980, 0.088920,
		15.452561, 12.886219, 21.553616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979542, 12.397962, 21.006044>,  <15.407755, 12.190434, 21.491371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979542, 12.397962, 21.006044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.235675, 12.699183, 21.066549>,  <15.389355, 12.879917, 21.102852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.235675, 12.699183, 21.066549>,  <14.979542, 12.397962, 21.006044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235675, 12.699183, 21.066549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149416, 0.071044, -0.986219,
		-0.753424, 0.654110, -0.067027,
		0.640334, 0.753056, 0.151260,
		15.427775, 12.925100, 21.111927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697607, 12.928354, 20.634027>,  <14.979542, 12.397962, 21.006044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697607, 12.928354, 20.634027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.083847, 13.021058, 20.681192>,  <15.315591, 13.076680, 20.709492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.083847, 13.021058, 20.681192>,  <14.697607, 12.928354, 20.634027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083847, 13.021058, 20.681192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051321, 0.274685, -0.960164,
		-0.254915, 0.933186, 0.253342,
		0.965601, 0.231759, 0.117913,
		15.373528, 13.090586, 20.716566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749698, 13.474497, 20.214558>,  <14.697607, 12.928354, 20.634027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749698, 13.474497, 20.214558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.120649, 13.346285, 20.291737>,  <15.343220, 13.269358, 20.338045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.120649, 13.346285, 20.291737>,  <14.749698, 13.474497, 20.214558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120649, 13.346285, 20.291737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307954, 0.361141, -0.880194,
		0.212447, 0.875692, 0.433623,
		0.927378, -0.320531, 0.192950,
		15.398863, 13.250126, 20.349621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195205, 13.923313, 19.968176>,  <14.749698, 13.474497, 20.214558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195205, 13.923313, 19.968176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.446799, 13.612385, 19.973070>,  <15.597756, 13.425828, 19.976007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.446799, 13.612385, 19.973070>,  <15.195205, 13.923313, 19.968176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446799, 13.612385, 19.973070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351230, 0.270093, -0.896486,
		0.693551, 0.568176, 0.442903,
		0.628987, -0.777320, 0.012237,
		15.635495, 13.379189, 19.976742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582392, 14.544186, 20.195679>,  <15.195205, 13.923313, 19.968176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582392, 14.544186, 20.195679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.593965, 14.943940, 20.187765>,  <15.600908, 15.183793, 20.183018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.593965, 14.943940, 20.187765>,  <15.582392, 14.544186, 20.195679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.593965, 14.943940, 20.187765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415520, 0.030026, 0.909088,
		0.909124, -0.018082, 0.416133,
		0.028933, 0.999385, -0.019784,
		15.602644, 15.243756, 20.181829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035406, 14.822764, 20.825972>,  <15.582392, 14.544186, 20.195679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.035406, 14.822764, 20.825972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.784132, 15.111929, 20.710882>,  <15.633368, 15.285428, 20.641829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.784132, 15.111929, 20.710882>,  <16.035406, 14.822764, 20.825972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784132, 15.111929, 20.710882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352033, 0.065707, 0.933678,
		0.693872, 0.687809, 0.213213,
		-0.628183, 0.722912, -0.287724,
		15.595677, 15.328802, 20.624565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932516, 15.214399, 21.406630>,  <16.035406, 14.822764, 20.825972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.932516, 15.214399, 21.406630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.644014, 15.385082, 21.188377>,  <15.470913, 15.487493, 21.057426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.644014, 15.385082, 21.188377>,  <15.932516, 15.214399, 21.406630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.644014, 15.385082, 21.188377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443993, 0.319812, 0.837013,
		0.531659, 0.845955, -0.041211,
		-0.721255, 0.426708, -0.545629,
		15.427638, 15.513095, 21.024689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854001, 15.925459, 21.617659>,  <15.932516, 15.214399, 21.406630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854001, 15.925459, 21.617659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.501472, 15.825850, 21.457031>,  <15.289954, 15.766086, 21.360655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.501472, 15.825850, 21.457031>,  <15.854001, 15.925459, 21.617659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501472, 15.825850, 21.457031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466696, 0.325807, 0.822219,
		-0.073917, 0.912052, -0.403359,
		-0.881323, -0.249022, -0.401568,
		15.237075, 15.751143, 21.336561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463230, 16.466600, 21.688374>,  <15.854001, 15.925459, 21.617659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463230, 16.466600, 21.688374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.191666, 16.173717, 21.666645>,  <15.028728, 15.997988, 21.653608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.191666, 16.173717, 21.666645>,  <15.463230, 16.466600, 21.688374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191666, 16.173717, 21.666645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509471, 0.416524, 0.752959,
		-0.528696, 0.538868, -0.655822,
		-0.678911, -0.732209, -0.054323,
		14.987992, 15.954055, 21.650349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048156, 16.893084, 21.849325>,  <15.463230, 16.466600, 21.688374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048156, 16.893084, 21.849325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.878120, 16.532742, 21.884556>,  <14.776099, 16.316536, 21.905695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.878120, 16.532742, 21.884556>,  <15.048156, 16.893084, 21.849325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878120, 16.532742, 21.884556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670374, 0.378719, 0.638100,
		-0.608193, 0.212203, -0.764899,
		-0.425088, -0.900856, 0.088079,
		14.750594, 16.262486, 21.910980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357126, 17.007006, 21.875420>,  <15.048156, 16.893084, 21.849325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357126, 17.007006, 21.875420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.410296, 16.651766, 22.051424>,  <14.442199, 16.438622, 22.157026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.410296, 16.651766, 22.051424>,  <14.357126, 17.007006, 21.875420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.410296, 16.651766, 22.051424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415123, 0.353246, 0.838386,
		-0.900002, -0.294102, -0.321715,
		0.132926, -0.888100, 0.440010,
		14.450174, 16.385336, 22.183428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.750956, 16.862261, 22.247889>,  <14.357126, 17.007006, 21.875420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.750956, 16.862261, 22.247889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.028098, 16.624298, 22.410877>,  <14.194384, 16.481520, 22.508671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.028098, 16.624298, 22.410877>,  <13.750956, 16.862261, 22.247889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.028098, 16.624298, 22.410877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367712, 0.194592, 0.909352,
		-0.620273, -0.779883, -0.083931,
		0.692856, -0.594909, 0.407472,
		14.235955, 16.445826, 22.533119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399844, 16.700552, 22.814959>,  <13.750956, 16.862261, 22.247889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399844, 16.700552, 22.814959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.773589, 16.588531, 22.903088>,  <13.997836, 16.521320, 22.955965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.773589, 16.588531, 22.903088>,  <13.399844, 16.700552, 22.814959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773589, 16.588531, 22.903088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139933, 0.280253, 0.949672,
		-0.327700, -0.918167, 0.222669,
		0.934362, -0.280049, 0.220320,
		14.053898, 16.504517, 22.969183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385966, 16.386023, 23.460506>,  <13.399844, 16.700552, 22.814959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385966, 16.386023, 23.460506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.777290, 16.463337, 23.430706>,  <14.012085, 16.509726, 23.412825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.777290, 16.463337, 23.430706>,  <13.385966, 16.386023, 23.460506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.777290, 16.463337, 23.430706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035357, 0.198573, 0.979448,
		0.204140, -0.960831, 0.187430,
		0.978303, 0.193318, -0.074509,
		14.070784, 16.521322, 23.408356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767084, 16.008083, 23.978786>,  <13.385966, 16.386023, 23.460506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767084, 16.008083, 23.978786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.011470, 16.309061, 23.880360>,  <14.158101, 16.489649, 23.821304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.011470, 16.309061, 23.880360>,  <13.767084, 16.008083, 23.978786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.011470, 16.309061, 23.880360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184603, 0.166843, 0.968548,
		0.769834, -0.637172, -0.036969,
		0.610964, 0.752446, -0.246065,
		14.194759, 16.534796, 23.806540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425142, 15.930800, 24.368727>,  <13.767084, 16.008083, 23.978786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425142, 15.930800, 24.368727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.466948, 16.317156, 24.273952>,  <14.492030, 16.548969, 24.217089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.466948, 16.317156, 24.273952>,  <14.425142, 15.930800, 24.368727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.466948, 16.317156, 24.273952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082435, 0.229005, 0.969929,
		0.991101, -0.120901, -0.055689,
		0.104512, 0.965888, -0.236933,
		14.498302, 16.606922, 24.202873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004373, 16.205700, 24.706526>,  <14.425142, 15.930800, 24.368727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004373, 16.205700, 24.706526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.795165, 16.538902, 24.634354>,  <14.669641, 16.738823, 24.591051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.795165, 16.538902, 24.634354>,  <15.004373, 16.205700, 24.706526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.795165, 16.538902, 24.634354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021192, 0.224338, 0.974281,
		0.852057, 0.505744, -0.134986,
		-0.523020, 0.833004, -0.180431,
		14.638259, 16.788803, 24.580225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265521, 15.852456, 25.385866>,  <15.004373, 16.205700, 24.706526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.265521, 15.852456, 25.385866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.169695, 16.032309, 25.730061>,  <15.112200, 16.140221, 25.936577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.169695, 16.032309, 25.730061>,  <15.265521, 15.852456, 25.385866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169695, 16.032309, 25.730061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967235, -0.187264, -0.171432,
		0.084058, -0.873363, 0.479761,
		-0.239564, 0.449631, 0.860488,
		15.097826, 16.167198, 25.988207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<7.935661, 13.767966, 23.830637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.314416, 13.797477, 23.955833>,  <8.541669, 13.815183, 24.030951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.314416, 13.797477, 23.955833>,  <7.935661, 13.767966, 23.830637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.314416, 13.797477, 23.955833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313925, -0.001146, -0.949447,
		-0.069687, 0.997274, -0.024245,
		0.946887, 0.073775, 0.312989,
		8.598482, 13.819610, 24.049730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.188319, 14.340303, 23.524073>,  <7.935661, 13.767966, 23.830637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.188319, 14.340303, 23.524073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.509645, 14.127792, 23.631721>,  <8.702441, 14.000286, 23.696310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.509645, 14.127792, 23.631721>,  <8.188319, 14.340303, 23.524073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.509645, 14.127792, 23.631721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258080, -0.096709, -0.961271,
		0.536728, 0.841660, 0.059424,
		0.803316, -0.531278, 0.269123,
		8.750640, 13.968410, 23.712458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.698089, 14.596032, 23.090872>,  <8.188319, 14.340303, 23.524073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.698089, 14.596032, 23.090872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.816885, 14.238956, 23.226461>,  <8.888163, 14.024712, 23.307816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.816885, 14.238956, 23.226461>,  <8.698089, 14.596032, 23.090872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.816885, 14.238956, 23.226461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288438, -0.254542, -0.923045,
		0.910275, 0.371909, 0.181889,
		0.296990, -0.892688, 0.338976,
		8.905982, 13.971150, 23.328154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.290068, 14.390640, 22.744081>,  <8.698089, 14.596032, 23.090872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.290068, 14.390640, 22.744081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.177881, 14.031649, 22.880239>,  <9.110569, 13.816254, 22.961935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.177881, 14.031649, 22.880239>,  <9.290068, 14.390640, 22.744081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.177881, 14.031649, 22.880239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267986, -0.413741, -0.870058,
		0.921695, -0.152801, 0.356553,
		-0.280466, -0.897480, 0.340395,
		9.093741, 13.762404, 22.982357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.906375, 14.006074, 22.812057>,  <9.290068, 14.390640, 22.744081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.906375, 14.006074, 22.812057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.598386, 13.758667, 22.749348>,  <9.413592, 13.610223, 22.711721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.598386, 13.758667, 22.749348>,  <9.906375, 14.006074, 22.812057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.598386, 13.758667, 22.749348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503617, -0.438220, -0.744535,
		0.391805, -0.652227, 0.648913,
		-0.769973, -0.618517, -0.156776,
		9.367393, 13.573112, 22.702314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.228642, 13.306516, 22.704454>,  <9.906375, 14.006074, 22.812057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.228642, 13.306516, 22.704454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.857850, 13.274905, 22.557777>,  <9.635375, 13.255939, 22.469770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.857850, 13.274905, 22.557777>,  <10.228642, 13.306516, 22.704454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.857850, 13.274905, 22.557777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355107, -0.499843, -0.789972,
		-0.120860, -0.862503, 0.491408,
		-0.926980, -0.079027, -0.366692,
		9.579756, 13.251198, 22.447769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.323292, 12.674232, 22.401094>,  <10.228642, 13.306516, 22.704454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.323292, 12.674232, 22.401094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.985076, 12.808524, 22.235035>,  <9.782146, 12.889099, 22.135399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.985076, 12.808524, 22.235035>,  <10.323292, 12.674232, 22.401094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.985076, 12.808524, 22.235035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312922, -0.318400, -0.894819,
		-0.432603, -0.886513, 0.164161,
		-0.845538, 0.335732, -0.415150,
		9.731414, 12.909243, 22.110491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.074989, 12.181217, 21.971815>,  <10.323292, 12.674232, 22.401094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.074989, 12.181217, 21.971815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.911617, 12.524327, 21.846975>,  <9.813594, 12.730193, 21.772072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.911617, 12.524327, 21.846975>,  <10.074989, 12.181217, 21.971815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.911617, 12.524327, 21.846975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247061, -0.225270, -0.942451,
		-0.878718, -0.462033, -0.119916,
		-0.408431, 0.857775, -0.312099,
		9.789088, 12.781660, 21.753345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.701316, 12.012701, 21.349119>,  <10.074989, 12.181217, 21.971815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.701316, 12.012701, 21.349119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.777140, 12.404755, 21.325787>,  <9.822634, 12.639987, 21.311787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.777140, 12.404755, 21.325787>,  <9.701316, 12.012701, 21.349119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.777140, 12.404755, 21.325787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278274, -0.110601, -0.954113,
		-0.941611, 0.164629, -0.293712,
		0.189559, 0.980135, -0.058331,
		9.834007, 12.698795, 21.308287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.626794, 12.083994, 20.724909>,  <9.701316, 12.012701, 21.349119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.626794, 12.083994, 20.724909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.766520, 12.448493, 20.812187>,  <9.850355, 12.667192, 20.864555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.766520, 12.448493, 20.812187>,  <9.626794, 12.083994, 20.724909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.766520, 12.448493, 20.812187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071056, 0.206435, -0.975877,
		-0.934308, 0.356391, 0.007361,
		0.349313, 0.911247, 0.218197,
		9.871313, 12.721867, 20.877645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.236110, 12.604125, 20.337601>,  <9.626794, 12.083994, 20.724909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.236110, 12.604125, 20.337601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.583616, 12.786072, 20.415924>,  <9.792120, 12.895240, 20.462917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.583616, 12.786072, 20.415924>,  <9.236110, 12.604125, 20.337601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.583616, 12.786072, 20.415924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114954, 0.199364, -0.973160,
		-0.481695, 0.867958, 0.120912,
		0.868767, 0.454867, 0.195808,
		9.844246, 12.922532, 20.474667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.251687, 13.358226, 19.987049>,  <9.236110, 12.604125, 20.337601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.251687, 13.358226, 19.987049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.605518, 13.181026, 20.045387>,  <9.817817, 13.074705, 20.080391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.605518, 13.181026, 20.045387>,  <9.251687, 13.358226, 19.987049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.605518, 13.181026, 20.045387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148478, -0.028960, -0.988492,
		0.442127, 0.896053, 0.040159,
		0.884578, -0.443002, 0.145848,
		9.870892, 13.048125, 20.089142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725754, 13.858501, 19.553265>,  <9.251687, 13.358226, 19.987049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725754, 13.858501, 19.553265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.875919, 13.493621, 19.618935>,  <9.966019, 13.274693, 19.658337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.875919, 13.493621, 19.618935>,  <9.725754, 13.858501, 19.553265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.875919, 13.493621, 19.618935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419008, 0.009032, -0.907938,
		0.826738, 0.409645, 0.385610,
		0.375415, -0.912200, 0.164177,
		9.988544, 13.219961, 19.668188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.402227, 13.936803, 19.289991>,  <9.725754, 13.858501, 19.553265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.402227, 13.936803, 19.289991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.374282, 13.539132, 19.322809>,  <10.357514, 13.300529, 19.342501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.374282, 13.539132, 19.322809>,  <10.402227, 13.936803, 19.289991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.374282, 13.539132, 19.322809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135321, -0.090930, -0.986620,
		0.988336, -0.057826, 0.140886,
		-0.069863, -0.994177, 0.082044,
		10.353323, 13.240879, 19.347422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988959, 14.215833, 19.503181>,  <10.402227, 13.936803, 19.289991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988959, 14.215833, 19.503181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.131611, 14.580782, 19.422791>,  <11.217202, 14.799751, 19.374556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.131611, 14.580782, 19.422791>,  <10.988959, 14.215833, 19.503181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.131611, 14.580782, 19.422791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280045, 0.309628, 0.908683,
		0.891286, -0.267780, 0.365928,
		0.356628, 0.912373, -0.200976,
		11.238600, 14.854494, 19.362497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.218863, 14.289266, 20.061237>,  <10.988959, 14.215833, 19.503181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.218863, 14.289266, 20.061237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.266415, 14.668468, 19.943150>,  <11.294946, 14.895988, 19.872297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.266415, 14.668468, 19.943150>,  <11.218863, 14.289266, 20.061237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.266415, 14.668468, 19.943150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002368, 0.297056, 0.954857,
		0.992906, -0.114211, 0.033068,
		0.118878, 0.948005, -0.295219,
		11.302078, 14.952869, 19.854584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725669, 14.636209, 20.586248>,  <11.218863, 14.289266, 20.061237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725669, 14.636209, 20.586248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.532700, 14.933817, 20.401339>,  <11.416918, 15.112382, 20.290392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.532700, 14.933817, 20.401339>,  <11.725669, 14.636209, 20.586248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.532700, 14.933817, 20.401339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273392, 0.373491, 0.886432,
		0.832180, 0.554018, 0.023228,
		-0.482424, 0.744021, -0.462276,
		11.387973, 15.157023, 20.262655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059818, 15.235843, 20.778284>,  <11.725669, 14.636209, 20.586248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.059818, 15.235843, 20.778284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.684349, 15.324892, 20.672960>,  <11.459067, 15.378322, 20.609766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.684349, 15.324892, 20.672960>,  <12.059818, 15.235843, 20.778284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.684349, 15.324892, 20.672960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171746, 0.360303, 0.916889,
		0.298992, 0.905881, -0.299972,
		-0.938673, 0.222624, -0.263309,
		11.402747, 15.391679, 20.593967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974569, 15.816790, 21.161484>,  <12.059818, 15.235843, 20.778284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974569, 15.816790, 21.161484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.595190, 15.741740, 21.059313>,  <11.367562, 15.696711, 20.998011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.595190, 15.741740, 21.059313>,  <11.974569, 15.816790, 21.161484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595190, 15.741740, 21.059313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314707, 0.462245, 0.829029,
		-0.037476, 0.866676, -0.497462,
		-0.948449, -0.187623, -0.255426,
		11.310656, 15.685453, 20.982685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.499804, 16.443090, 21.210709>,  <11.974569, 15.816790, 21.161484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.499804, 16.443090, 21.210709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.264160, 16.120548, 21.231651>,  <11.122774, 15.927023, 21.244217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.264160, 16.120548, 21.231651>,  <11.499804, 16.443090, 21.210709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.264160, 16.120548, 21.231651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485020, 0.404685, 0.775233,
		-0.646301, 0.431303, -0.629502,
		-0.589110, -0.806355, 0.052357,
		11.087427, 15.878642, 21.247358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.834009, 16.771507, 21.190702>,  <11.499804, 16.443090, 21.210709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.834009, 16.771507, 21.190702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.806325, 16.406588, 21.352154>,  <10.789714, 16.187635, 21.449024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.806325, 16.406588, 21.352154>,  <10.834009, 16.771507, 21.190702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.806325, 16.406588, 21.352154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461488, 0.387984, 0.797808,
		-0.884443, -0.131052, -0.447869,
		-0.069212, -0.912301, 0.403629,
		10.785562, 16.132896, 21.473242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.182295, 16.758698, 21.533836>,  <10.834009, 16.771507, 21.190702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.182295, 16.758698, 21.533836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.347647, 16.440624, 21.711287>,  <10.446857, 16.249781, 21.817757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.347647, 16.440624, 21.711287>,  <10.182295, 16.758698, 21.533836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.347647, 16.440624, 21.711287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324234, 0.326723, 0.887764,
		-0.850876, -0.510821, -0.122764,
		0.413379, -0.795182, 0.443626,
		10.471661, 16.202070, 21.844374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.730625, 16.383223, 21.968311>,  <10.182295, 16.758698, 21.533836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.730625, 16.383223, 21.968311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.095273, 16.296364, 22.107910>,  <10.314062, 16.244249, 22.191669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.095273, 16.296364, 22.107910>,  <9.730625, 16.383223, 21.968311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.095273, 16.296364, 22.107910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292212, 0.254749, 0.921800,
		-0.289072, -0.942311, 0.168781,
		0.911619, -0.217147, 0.348995,
		10.368759, 16.231220, 22.212608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.576265, 16.093786, 22.523045>,  <9.730625, 16.383223, 21.968311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.576265, 16.093786, 22.523045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.960160, 16.190319, 22.580545>,  <10.190497, 16.248240, 22.615046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.960160, 16.190319, 22.580545>,  <9.576265, 16.093786, 22.523045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.960160, 16.190319, 22.580545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158480, 0.042666, 0.986440,
		0.231927, -0.969504, 0.079195,
		0.959736, 0.241333, 0.143752,
		10.248081, 16.262718, 22.623671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.861198, 15.569520, 23.117226>,  <9.576265, 16.093786, 22.523045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.861198, 15.569520, 23.117226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.047875, 15.921579, 23.082495>,  <10.159882, 16.132814, 23.061657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.047875, 15.921579, 23.082495>,  <9.861198, 15.569520, 23.117226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.047875, 15.921579, 23.082495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091415, 0.145654, 0.985103,
		0.879683, -0.451802, 0.148434,
		0.466691, 0.880148, -0.086828,
		10.187882, 16.185623, 23.056446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.439133, 15.643699, 23.655561>,  <9.861198, 15.569520, 23.117226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.439133, 15.643699, 23.655561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.339912, 16.012247, 23.535866>,  <10.280380, 16.233376, 23.464048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.339912, 16.012247, 23.535866>,  <10.439133, 15.643699, 23.655561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.339912, 16.012247, 23.535866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260925, 0.233935, 0.936586,
		0.932947, 0.310400, 0.182381,
		-0.248051, 0.921372, -0.299240,
		10.265497, 16.288658, 23.446095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.824853, 16.086243, 24.089211>,  <10.439133, 15.643699, 23.655561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.824853, 16.086243, 24.089211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.520757, 16.294640, 23.933981>,  <10.338299, 16.419678, 23.840843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.520757, 16.294640, 23.933981>,  <10.824853, 16.086243, 24.089211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.520757, 16.294640, 23.933981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400935, 0.093752, 0.911297,
		0.511160, 0.848398, 0.137610,
		-0.760241, 0.520991, -0.388074,
		10.292685, 16.450937, 23.817558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.786556, 16.719320, 24.489328>,  <10.824853, 16.086243, 24.089211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.786556, 16.719320, 24.489328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.427447, 16.662415, 24.322586>,  <10.211982, 16.628271, 24.222542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.427447, 16.662415, 24.322586>,  <10.786556, 16.719320, 24.489328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.427447, 16.662415, 24.322586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414291, -0.048624, 0.908845,
		-0.149565, 0.988634, -0.015285,
		-0.897771, -0.142264, -0.416854,
		10.158116, 16.619736, 24.197531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781900, 17.345282, 24.148121>,  <10.786556, 16.719320, 24.489328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781900, 17.345282, 24.148121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.955499, 17.693453, 24.241074>,  <11.059658, 17.902355, 24.296846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.955499, 17.693453, 24.241074>,  <10.781900, 17.345282, 24.148121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.955499, 17.693453, 24.241074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093732, 0.212916, -0.972564,
		-0.896025, 0.443871, 0.010818,
		0.433996, 0.870428, 0.232383,
		11.085697, 17.954582, 24.310789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.357986, 17.983044, 23.941298>,  <10.781900, 17.345282, 24.148121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.357986, 17.983044, 23.941298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.749592, 18.062084, 23.961246>,  <10.984555, 18.109509, 23.973215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.749592, 18.062084, 23.961246>,  <10.357986, 17.983044, 23.941298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.749592, 18.062084, 23.961246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011535, 0.190593, -0.981601,
		-0.203470, 0.961576, 0.184313,
		0.979013, 0.197601, 0.049872,
		11.043296, 18.121365, 23.976208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.418935, 18.569023, 23.492460>,  <10.357986, 17.983044, 23.941298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.418935, 18.569023, 23.492460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.796074, 18.441576, 23.531492>,  <11.022357, 18.365107, 23.554911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.796074, 18.441576, 23.531492>,  <10.418935, 18.569023, 23.492460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.796074, 18.441576, 23.531492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178235, 0.234774, -0.955570,
		0.281553, 0.918348, 0.278145,
		0.942847, -0.318619, 0.097581,
		11.078928, 18.345991, 23.560766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.762394, 18.858067, 22.937252>,  <10.418935, 18.569023, 23.492460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.762394, 18.858067, 22.937252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.042683, 18.593437, 23.044067>,  <11.210856, 18.434660, 23.108156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.042683, 18.593437, 23.044067>,  <10.762394, 18.858067, 22.937252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.042683, 18.593437, 23.044067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433440, 0.097471, -0.895896,
		0.566672, 0.743519, 0.355052,
		0.700723, -0.661573, 0.267037,
		11.252899, 18.394966, 23.124178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.364068, 19.115955, 22.715408>,  <10.762394, 18.858067, 22.937252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.364068, 19.115955, 22.715408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.406491, 18.719252, 22.744144>,  <11.431945, 18.481230, 22.761387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.406491, 18.719252, 22.744144>,  <11.364068, 19.115955, 22.715408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.406491, 18.719252, 22.744144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420057, -0.020801, -0.907260,
		0.901279, 0.126400, 0.414390,
		0.106058, -0.991762, 0.071842,
		11.438309, 18.421722, 22.765697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982111, 18.988081, 22.344885>,  <11.364068, 19.115955, 22.715408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982111, 18.988081, 22.344885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.810027, 18.627947, 22.371170>,  <11.706777, 18.411867, 22.386942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.810027, 18.627947, 22.371170>,  <11.982111, 18.988081, 22.344885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.810027, 18.627947, 22.371170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501483, -0.298884, -0.811901,
		0.750623, -0.316332, 0.580085,
		-0.430209, -0.900334, 0.065715,
		11.680964, 18.357847, 22.390884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534518, 18.503397, 22.335590>,  <11.982111, 18.988081, 22.344885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.534518, 18.503397, 22.335590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.197516, 18.305408, 22.250559>,  <11.995316, 18.186615, 22.199539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.197516, 18.305408, 22.250559>,  <12.534518, 18.503397, 22.335590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.197516, 18.305408, 22.250559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471862, -0.487722, -0.734489,
		0.259873, -0.719118, 0.644466,
		-0.842504, -0.494973, -0.212578,
		11.944765, 18.156918, 22.186785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.753102, 17.732267, 22.246798>,  <12.534518, 18.503397, 22.335590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.753102, 17.732267, 22.246798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.417420, 17.832037, 22.053501>,  <12.216011, 17.891899, 21.937523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.417420, 17.832037, 22.053501>,  <12.753102, 17.732267, 22.246798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417420, 17.832037, 22.053501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422938, -0.259233, -0.868287,
		-0.341849, -0.933050, 0.112056,
		-0.839204, 0.249430, -0.483241,
		12.165659, 17.906864, 21.908529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.393789, 17.174604, 21.853266>,  <12.753102, 17.732267, 22.246798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.393789, 17.174604, 21.853266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.347086, 17.543470, 21.705767>,  <12.319064, 17.764790, 21.617268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.347086, 17.543470, 21.705767>,  <12.393789, 17.174604, 21.853266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.347086, 17.543470, 21.705767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296398, -0.322015, -0.899141,
		-0.947901, -0.214278, -0.235731,
		-0.116758, 0.922167, -0.368750,
		12.312058, 17.820120, 21.595142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.190471, 17.114073, 21.278065>,  <12.393789, 17.174604, 21.853266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.190471, 17.114073, 21.278065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.328389, 17.485826, 21.225365>,  <12.411140, 17.708879, 21.193745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.328389, 17.485826, 21.225365>,  <12.190471, 17.114073, 21.278065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328389, 17.485826, 21.225365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357023, -0.259651, -0.897282,
		-0.868130, 0.262341, -0.421339,
		0.344795, 0.929386, -0.131749,
		12.431828, 17.764643, 21.185841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979498, 17.350111, 20.661476>,  <12.190471, 17.114073, 21.278065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979498, 17.350111, 20.661476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.279981, 17.603817, 20.734575>,  <12.460270, 17.756041, 20.778435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.279981, 17.603817, 20.734575>,  <11.979498, 17.350111, 20.661476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.279981, 17.603817, 20.734575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346358, -0.143086, -0.927126,
		-0.561894, 0.759760, -0.327170,
		0.751206, 0.634265, 0.182749,
		12.505342, 17.794096, 20.789400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.007905, 17.800280, 20.024429>,  <11.979498, 17.350111, 20.661476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.007905, 17.800280, 20.024429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.370783, 17.806189, 20.192612>,  <12.588510, 17.809734, 20.293520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.370783, 17.806189, 20.192612>,  <12.007905, 17.800280, 20.024429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370783, 17.806189, 20.192612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418207, -0.140602, -0.897404,
		0.045861, 0.989956, -0.133730,
		0.907193, 0.014771, 0.420454,
		12.642941, 17.810619, 20.318748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.400645, 18.238373, 19.536602>,  <12.007905, 17.800280, 20.024429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.400645, 18.238373, 19.536602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.664639, 18.034109, 19.757019>,  <12.823034, 17.911551, 19.889269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.664639, 18.034109, 19.757019>,  <12.400645, 18.238373, 19.536602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664639, 18.034109, 19.757019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536355, -0.193329, -0.821552,
		0.526065, 0.837766, 0.146300,
		0.659984, -0.510658, 0.551044,
		12.862634, 17.880911, 19.922333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.924564, 18.665730, 19.514498>,  <12.400645, 18.238373, 19.536602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.924564, 18.665730, 19.514498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.047852, 18.294266, 19.597050>,  <13.121823, 18.071388, 19.646582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.047852, 18.294266, 19.597050>,  <12.924564, 18.665730, 19.514498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.047852, 18.294266, 19.597050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490371, -0.030807, -0.870969,
		0.815192, 0.369650, 0.445893,
		0.308217, -0.928660, 0.206380,
		13.140317, 18.015667, 19.658964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<12.991607, 21.310982, 11.708710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.078969, 20.933235, 11.610348>,  <13.131387, 20.706587, 11.551331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.078969, 20.933235, 11.610348>,  <12.991607, 21.310982, 11.708710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078969, 20.933235, 11.610348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975464, -0.218434, -0.027510,
		-0.027735, 0.245879, -0.968904,
		0.218406, -0.944367, -0.245904,
		13.144491, 20.649925, 11.536576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.891162, 21.099230, 10.991164>,  <12.991607, 21.310982, 11.708710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.891162, 21.099230, 10.991164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.812342, 20.804073, 11.249369>,  <12.765049, 20.626980, 11.404291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.812342, 20.804073, 11.249369>,  <12.891162, 21.099230, 10.991164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.812342, 20.804073, 11.249369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964179, 0.026607, -0.263914,
		0.177565, -0.674392, -0.716705,
		-0.197051, -0.737894, 0.645511,
		12.753226, 20.582705, 11.443022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.621474, 20.450912, 10.695411>,  <12.891162, 21.099230, 10.991164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.621474, 20.450912, 10.695411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.457680, 20.568893, 11.040739>,  <12.359404, 20.639683, 11.247936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.457680, 20.568893, 11.040739>,  <12.621474, 20.450912, 10.695411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457680, 20.568893, 11.040739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890659, 0.075720, -0.448322,
		-0.197605, -0.952507, 0.231697,
		-0.409486, 0.294953, 0.863322,
		12.334834, 20.657379, 11.299736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.050968, 20.014778, 10.832349>,  <12.621474, 20.450912, 10.695411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.050968, 20.014778, 10.832349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.997347, 20.363436, 11.020929>,  <11.965175, 20.572630, 11.134077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.997347, 20.363436, 11.020929>,  <12.050968, 20.014778, 10.832349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.997347, 20.363436, 11.020929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839202, 0.153168, -0.521805,
		-0.527039, -0.465591, 0.710953,
		-0.134053, 0.871645, 0.471450,
		11.957131, 20.624929, 11.162364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562892, 19.466406, 10.631952>,  <12.050968, 20.014778, 10.832349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562892, 19.466406, 10.631952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.664552, 19.742245, 10.360699>,  <12.725548, 19.907747, 10.197947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.664552, 19.742245, 10.360699>,  <12.562892, 19.466406, 10.631952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664552, 19.742245, 10.360699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743840, -0.587503, -0.318657,
		-0.618151, -0.423438, -0.662261,
		0.254149, 0.689595, -0.678135,
		12.740796, 19.949123, 10.157258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166194, 19.475254, 10.260501>,  <12.562892, 19.466406, 10.631952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166194, 19.475254, 10.260501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.307986, 19.475708, 9.886476>,  <13.393062, 19.475981, 9.662061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.307986, 19.475708, 9.886476>,  <13.166194, 19.475254, 10.260501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.307986, 19.475708, 9.886476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053065, -0.998363, -0.021331,
		-0.933556, 0.057180, -0.353841,
		0.354481, 0.001137, -0.935062,
		13.414330, 19.476049, 9.605957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757999, 19.004890, 9.902849>,  <13.166194, 19.475254, 10.260501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757999, 19.004890, 9.902849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.094235, 19.021236, 9.686798>,  <13.295978, 19.031044, 9.557168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.094235, 19.021236, 9.686798>,  <12.757999, 19.004890, 9.902849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094235, 19.021236, 9.686798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019016, -0.994309, -0.104820,
		-0.541337, 0.098382, -0.835030,
		0.840591, 0.040864, -0.540127,
		13.346413, 19.033495, 9.524760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.932866, 18.326368, 9.614491>,  <12.757999, 19.004890, 9.902849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.932866, 18.326368, 9.614491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.049771, 18.267773, 9.992511>,  <13.119914, 18.232615, 10.219323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.049771, 18.267773, 9.992511>,  <12.932866, 18.326368, 9.614491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049771, 18.267773, 9.992511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905298, -0.360897, 0.224027,
		0.308249, -0.921028, -0.238095,
		0.292263, -0.146491, 0.945052,
		13.137450, 18.223825, 10.276027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.729709, 17.674780, 9.829747>,  <12.932866, 18.326368, 9.614491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.729709, 17.674780, 9.829747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.765144, 17.904068, 10.155586>,  <12.786406, 18.041641, 10.351089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.765144, 17.904068, 10.155586>,  <12.729709, 17.674780, 9.829747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.765144, 17.904068, 10.155586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856997, -0.372937, 0.355632,
		0.507649, -0.729612, 0.458212,
		0.088589, 0.573223, 0.814597,
		12.791721, 18.076035, 10.399965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624255, 17.173588, 10.238538>,  <12.729709, 17.674780, 9.829747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.624255, 17.173588, 10.238538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.533797, 17.533205, 10.388515>,  <12.479523, 17.748976, 10.478502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.533797, 17.533205, 10.388515>,  <12.624255, 17.173588, 10.238538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.533797, 17.533205, 10.388515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906041, -0.335486, 0.257953,
		0.357699, -0.281381, 0.890436,
		-0.226146, 0.899041, 0.374945,
		12.465954, 17.802917, 10.500999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307437, 17.100262, 10.881538>,  <12.624255, 17.173588, 10.238538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307437, 17.100262, 10.881538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.201553, 17.455662, 10.731606>,  <12.138023, 17.668901, 10.641646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.201553, 17.455662, 10.731606>,  <12.307437, 17.100262, 10.881538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.201553, 17.455662, 10.731606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964221, -0.238064, 0.116637,
		0.014398, 0.392295, 0.919727,
		-0.264710, 0.888499, -0.374831,
		12.122140, 17.722212, 10.619156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997000, 17.470713, 11.338621>,  <12.307437, 17.100262, 10.881538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997000, 17.470713, 11.338621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.850301, 17.614193, 10.995266>,  <11.762281, 17.700281, 10.789253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.850301, 17.614193, 10.995266>,  <11.997000, 17.470713, 11.338621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.850301, 17.614193, 10.995266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912772, -0.317106, 0.257470,
		-0.179845, 0.877939, 0.443711,
		-0.366746, 0.358703, -0.858388,
		11.740277, 17.721804, 10.737749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.481967, 17.873014, 11.518764>,  <11.997000, 17.470713, 11.338621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.481967, 17.873014, 11.518764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.383158, 17.840094, 11.132561>,  <11.323873, 17.820341, 10.900839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.383158, 17.840094, 11.132561>,  <11.481967, 17.873014, 11.518764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.383158, 17.840094, 11.132561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957826, -0.130203, 0.256156,
		-0.146794, 0.988065, -0.046669,
		-0.247023, -0.082303, -0.965508,
		11.309051, 17.815403, 10.842908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.949802, 18.307901, 11.539463>,  <11.481967, 17.873014, 11.518764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.949802, 18.307901, 11.539463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.897498, 18.084110, 11.212077>,  <10.866116, 17.949835, 11.015646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.897498, 18.084110, 11.212077>,  <10.949802, 18.307901, 11.539463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.897498, 18.084110, 11.212077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933443, -0.208683, 0.291779,
		-0.334044, 0.802144, -0.494954,
		-0.130761, -0.559479, -0.818465,
		10.858270, 17.916267, 10.966537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.306677, 18.549086, 11.249386>,  <10.949802, 18.307901, 11.539463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.306677, 18.549086, 11.249386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.369658, 18.185343, 11.095359>,  <10.407446, 17.967096, 11.002942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.369658, 18.185343, 11.095359>,  <10.306677, 18.549086, 11.249386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.369658, 18.185343, 11.095359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967687, -0.219843, 0.123491,
		-0.196952, 0.353181, -0.914589,
		0.157451, -0.909358, -0.385067,
		10.416893, 17.912535, 10.979838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.668612, 18.423883, 10.802193>,  <10.306677, 18.549086, 11.249386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.668612, 18.423883, 10.802193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.845837, 18.075237, 10.886080>,  <9.952171, 17.866049, 10.936412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.845837, 18.075237, 10.886080>,  <9.668612, 18.423883, 10.802193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.845837, 18.075237, 10.886080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888144, -0.458606, -0.029684,
		0.122051, -0.173109, -0.977311,
		0.443062, -0.871616, 0.209719,
		9.978755, 17.813753, 10.948996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.235373, 17.994043, 10.373845>,  <9.668612, 18.423883, 10.802193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.235373, 17.994043, 10.373845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.434100, 17.745474, 10.616168>,  <9.553336, 17.596333, 10.761561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.434100, 17.745474, 10.616168>,  <9.235373, 17.994043, 10.373845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.434100, 17.745474, 10.616168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840410, -0.518656, 0.157185,
		0.216527, -0.587219, -0.779929,
		0.496817, -0.621425, 0.605808,
		9.583145, 17.559046, 10.797911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.060816, 17.303358, 10.270170>,  <9.235373, 17.994043, 10.373845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.060816, 17.303358, 10.270170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.214550, 17.288872, 10.639163>,  <9.306790, 17.280180, 10.860559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.214550, 17.288872, 10.639163>,  <9.060816, 17.303358, 10.270170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.214550, 17.288872, 10.639163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776327, -0.553429, 0.301716,
		0.499602, -0.832108, -0.240818,
		0.384337, -0.036216, 0.922482,
		9.329851, 17.278008, 10.915908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.977302, 16.600548, 10.502348>,  <9.060816, 17.303358, 10.270170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.977302, 16.600548, 10.502348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.051922, 16.813648, 10.832530>,  <9.096694, 16.941507, 11.030640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.051922, 16.813648, 10.832530>,  <8.977302, 16.600548, 10.502348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.051922, 16.813648, 10.832530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709938, -0.507684, 0.488104,
		0.679107, -0.677079, 0.283509,
		0.186552, 0.532749, 0.825455,
		9.107887, 16.973473, 11.080167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.908297, 16.151251, 10.988743>,  <8.977302, 16.600548, 10.502348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.908297, 16.151251, 10.988743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.882425, 16.485840, 11.206414>,  <8.866902, 16.686594, 11.337017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.882425, 16.485840, 11.206414>,  <8.908297, 16.151251, 10.988743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.882425, 16.485840, 11.206414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723912, -0.414670, 0.551361,
		0.686853, -0.358277, 0.632353,
		-0.064678, 0.836472, 0.544179,
		8.863022, 16.736782, 11.369668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.934072, 15.965240, 11.748543>,  <8.908297, 16.151251, 10.988743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.934072, 15.965240, 11.748543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.753448, 16.321690, 11.730700>,  <8.645074, 16.535559, 11.719995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.753448, 16.321690, 11.730700>,  <8.934072, 15.965240, 11.748543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.753448, 16.321690, 11.730700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659972, -0.299949, 0.688816,
		0.600442, 0.340481, 0.723562,
		-0.451561, 0.891125, -0.044606,
		8.617980, 16.589027, 11.717319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.700058, 16.002995, 12.352749>,  <8.934072, 15.965240, 11.748543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.700058, 16.002995, 12.352749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.493332, 16.283472, 12.156288>,  <8.369296, 16.451759, 12.038412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.493332, 16.283472, 12.156288>,  <8.700058, 16.002995, 12.352749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.493332, 16.283472, 12.156288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810351, -0.215653, 0.544815,
		0.276104, 0.679573, 0.679667,
		-0.516814, 0.701195, -0.491151,
		8.338287, 16.493830, 12.008943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.563088, 16.582226, 12.804914>,  <8.700058, 16.002995, 12.352749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.563088, 16.582226, 12.804914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.285812, 16.549789, 12.518442>,  <8.119447, 16.530327, 12.346560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.285812, 16.549789, 12.518442>,  <8.563088, 16.582226, 12.804914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.285812, 16.549789, 12.518442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704306, -0.134854, 0.696970,
		-0.153097, 0.987542, 0.036367,
		-0.693191, -0.081090, -0.716178,
		8.077855, 16.525463, 12.303589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.960035, 16.897551, 13.093600>,  <8.563088, 16.582226, 12.804914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.960035, 16.897551, 13.093600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.802529, 16.722734, 12.770133>,  <7.708025, 16.617844, 12.576053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.802529, 16.722734, 12.770133>,  <7.960035, 16.897551, 13.093600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.802529, 16.722734, 12.770133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847323, -0.168483, 0.503644,
		-0.356360, 0.883520, -0.303974,
		-0.393765, -0.437042, -0.808667,
		7.684399, 16.591621, 12.527533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.345310, 17.243862, 13.033593>,  <7.960035, 16.897551, 13.093600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.345310, 17.243862, 13.033593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.306190, 16.893074, 12.845400>,  <7.282718, 16.682600, 12.732484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.306190, 16.893074, 12.845400>,  <7.345310, 17.243862, 13.033593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.306190, 16.893074, 12.845400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914702, -0.107056, 0.389691,
		-0.392117, 0.468464, -0.791698,
		-0.097800, -0.876972, -0.470484,
		7.276850, 16.629982, 12.704255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.521327, 17.122293, 12.897717>,  <7.345310, 17.243862, 13.033593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.521327, 17.122293, 12.897717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704989, 16.767109, 12.887127>,  <6.815187, 16.553999, 12.880773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704989, 16.767109, 12.887127>,  <6.521327, 17.122293, 12.897717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.704989, 16.767109, 12.887127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724015, -0.391318, 0.568042,
		-0.514761, -0.241648, -0.822573,
		0.459154, -0.887962, -0.026478,
		6.842736, 16.500721, 12.879184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.006557, 16.600927, 12.767076>,  <6.521327, 17.122293, 12.897717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.006557, 16.600927, 12.767076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.303532, 16.402763, 12.947455>,  <6.481717, 16.283865, 13.055683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.303532, 16.402763, 12.947455>,  <6.006557, 16.600927, 12.767076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.303532, 16.402763, 12.947455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652034, -0.379903, 0.656145,
		-0.153744, -0.781180, -0.605078,
		0.742438, -0.495410, 0.450948,
		6.526264, 16.254141, 13.082740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.724514, 16.021748, 12.903805>,  <6.006557, 16.600927, 12.767076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.724514, 16.021748, 12.903805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.035835, 16.066444, 13.150952>,  <6.222627, 16.093264, 13.299241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.035835, 16.066444, 13.150952>,  <5.724514, 16.021748, 12.903805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.035835, 16.066444, 13.150952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549055, -0.356265, 0.756052,
		0.304610, -0.927679, -0.215927,
		0.778301, 0.111745, 0.617868,
		6.269325, 16.099968, 13.336313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.882893, 15.398209, 13.123413>,  <5.724514, 16.021748, 12.903805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.882893, 15.398209, 13.123413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070161, 15.619373, 13.399124>,  <6.182522, 15.752072, 13.564551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070161, 15.619373, 13.399124>,  <5.882893, 15.398209, 13.123413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.070161, 15.619373, 13.399124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584200, -0.391572, 0.710902,
		0.662968, -0.735500, 0.139689,
		0.468171, 0.552912, 0.689279,
		6.210612, 15.785247, 13.605907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.835534, 14.886076, 13.708338>,  <5.882893, 15.398209, 13.123413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.835534, 14.886076, 13.708338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.945212, 15.241789, 13.854757>,  <6.011019, 15.455217, 13.942609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.945212, 15.241789, 13.854757>,  <5.835534, 14.886076, 13.708338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.945212, 15.241789, 13.854757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513249, -0.186571, 0.837715,
		0.813260, -0.417572, 0.405267,
		0.274195, 0.889283, 0.366049,
		6.027471, 15.508574, 13.964572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.201367, 14.786420, 14.259200>,  <5.835534, 14.886076, 13.708338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.201367, 14.786420, 14.259200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.012780, 15.138473, 14.281432>,  <5.899628, 15.349704, 14.294771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.012780, 15.138473, 14.281432>,  <6.201367, 14.786420, 14.259200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.012780, 15.138473, 14.281432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613344, -0.372535, 0.696439,
		0.633663, 0.294258, 0.715461,
		-0.471466, 0.880131, 0.055580,
		5.871340, 15.402512, 14.298106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.773797, 14.678870, 13.803037>,  <6.201367, 14.786420, 14.259200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.773797, 14.678870, 13.803037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.946637, 14.470204, 14.097290>,  <7.050341, 14.345005, 14.273842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.946637, 14.470204, 14.097290>,  <6.773797, 14.678870, 13.803037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.946637, 14.470204, 14.097290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874814, 0.440610, -0.201401,
		-0.219064, 0.730568, 0.646747,
		0.432100, -0.521664, 0.735633,
		7.076267, 14.313705, 14.317980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.207302, 15.121030, 14.132132>,  <6.773797, 14.678870, 13.803037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.207302, 15.121030, 14.132132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.348292, 14.752345, 14.196890>,  <7.432886, 14.531135, 14.235745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.348292, 14.752345, 14.196890>,  <7.207302, 15.121030, 14.132132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.348292, 14.752345, 14.196890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934175, 0.356806, -0.002471,
		-0.055488, 0.152111, 0.986804,
		0.352474, -0.921711, 0.161897,
		7.454034, 14.475832, 14.245459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.584250, 15.225892, 14.812205>,  <7.207302, 15.121030, 14.132132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.584250, 15.225892, 14.812205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.711507, 14.887749, 14.640552>,  <7.787861, 14.684863, 14.537560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.711507, 14.887749, 14.640552>,  <7.584250, 15.225892, 14.812205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.711507, 14.887749, 14.640552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938543, 0.216922, 0.268480,
		-0.133873, -0.488176, 0.862416,
		0.318143, -0.845357, -0.429134,
		7.806950, 14.634142, 14.511811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.994542, 14.795147, 15.292998>,  <7.584250, 15.225892, 14.812205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.994542, 14.795147, 15.292998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.124495, 14.716218, 14.923022>,  <8.202466, 14.668860, 14.701036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.124495, 14.716218, 14.923022>,  <7.994542, 14.795147, 15.292998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.124495, 14.716218, 14.923022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943646, 0.132903, 0.303099,
		0.063120, -0.971288, 0.229379,
		0.324882, -0.197321, -0.924941,
		8.221959, 14.657022, 14.645540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.597570, 14.493278, 15.450256>,  <7.994542, 14.795147, 15.292998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.597570, 14.493278, 15.450256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.631474, 14.568810, 15.058918>,  <8.651816, 14.614130, 14.824115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.631474, 14.568810, 15.058918>,  <8.597570, 14.493278, 15.450256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.631474, 14.568810, 15.058918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983418, 0.142137, 0.112633,
		0.160328, -0.971668, -0.173653,
		0.084759, 0.188832, -0.978345,
		8.656902, 14.625460, 14.765414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.122690, 14.098637, 15.239120>,  <8.597570, 14.493278, 15.450256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.122690, 14.098637, 15.239120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.088032, 14.387914, 14.965045>,  <9.067237, 14.561481, 14.800600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.088032, 14.387914, 14.965045>,  <9.122690, 14.098637, 15.239120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.088032, 14.387914, 14.965045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996099, 0.074426, -0.047408,
		0.016711, -0.686624, -0.726821,
		-0.086646, 0.723193, -0.685189,
		9.062037, 14.604872, 14.759488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.644222, 13.950839, 14.809544>,  <9.122690, 14.098637, 15.239120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.644222, 13.950839, 14.809544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.535994, 14.329068, 14.737231>,  <9.471057, 14.556005, 14.693844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.535994, 14.329068, 14.737231>,  <9.644222, 13.950839, 14.809544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.535994, 14.329068, 14.737231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958253, 0.246501, -0.144874,
		-0.092427, -0.212432, -0.972795,
		-0.270570, 0.945574, -0.180781,
		9.454823, 14.612741, 14.682997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.993577, 14.142130, 14.171148>,  <9.644222, 13.950839, 14.809544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.993577, 14.142130, 14.171148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.921259, 14.506600, 14.319242>,  <9.877868, 14.725283, 14.408097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.921259, 14.506600, 14.319242>,  <9.993577, 14.142130, 14.171148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.921259, 14.506600, 14.319242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929147, 0.281667, -0.239477,
		-0.322488, 0.300705, -0.897540,
		-0.180796, 0.911175, 0.370234,
		9.867021, 14.779953, 14.430311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.333364, 14.701566, 13.720430>,  <9.993577, 14.142130, 14.171148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.333364, 14.701566, 13.720430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.286690, 14.882645, 14.074029>,  <10.258685, 14.991292, 14.286188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.286690, 14.882645, 14.074029>,  <10.333364, 14.701566, 13.720430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.286690, 14.882645, 14.074029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950737, 0.308301, -0.032386,
		-0.287198, 0.836670, -0.466369,
		-0.116686, 0.452696, 0.883997,
		10.251684, 15.018454, 14.339228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468380, 15.320113, 13.462212>,  <10.333364, 14.701566, 13.720430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468380, 15.320113, 13.462212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.494595, 15.334755, 13.861083>,  <10.510324, 15.343540, 14.100406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.494595, 15.334755, 13.861083>,  <10.468380, 15.320113, 13.462212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.494595, 15.334755, 13.861083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752268, 0.654747, -0.073474,
		-0.655589, 0.754961, 0.015374,
		0.065536, 0.036603, 0.997179,
		10.514256, 15.345736, 14.160236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.334201, 15.941196, 13.713434>,  <10.468380, 15.320113, 13.462212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.334201, 15.941196, 13.713434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.561878, 15.748963, 13.980285>,  <10.698484, 15.633623, 14.140395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.561878, 15.748963, 13.980285>,  <10.334201, 15.941196, 13.713434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.561878, 15.748963, 13.980285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775924, 0.582350, -0.242509,
		-0.271955, 0.655674, 0.704366,
		0.569194, -0.480583, 0.667126,
		10.732636, 15.604789, 14.180423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.720783, 16.484688, 13.963132>,  <10.334201, 15.941196, 13.713434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.720783, 16.484688, 13.963132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.929845, 16.165255, 14.082528>,  <11.055282, 15.973595, 14.154166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.929845, 16.165255, 14.082528>,  <10.720783, 16.484688, 13.963132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.929845, 16.165255, 14.082528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851742, 0.473924, -0.223454,
		0.036985, 0.371026, 0.927886,
		0.522654, -0.798584, 0.298490,
		11.086641, 15.925679, 14.172075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.254987, 16.693178, 14.498629>,  <10.720783, 16.484688, 13.963132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.254987, 16.693178, 14.498629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.370266, 16.361864, 14.306426>,  <11.439433, 16.163076, 14.191105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.370266, 16.361864, 14.306426>,  <11.254987, 16.693178, 14.498629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.370266, 16.361864, 14.306426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811390, 0.477710, -0.336809,
		0.508516, -0.292810, 0.809737,
		0.288198, -0.828285, -0.480506,
		11.456725, 16.113379, 14.162274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997923, 16.772198, 14.279530>,  <11.254987, 16.693178, 14.498629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997923, 16.772198, 14.279530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.918554, 16.448566, 14.058253>,  <11.870934, 16.254387, 13.925488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.918554, 16.448566, 14.058253>,  <11.997923, 16.772198, 14.279530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.918554, 16.448566, 14.058253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854659, 0.133458, -0.501744,
		0.479779, -0.572345, 0.665006,
		-0.198420, -0.809080, -0.553190,
		11.859028, 16.205843, 13.892296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.593462, 16.313427, 14.329875>,  <11.997923, 16.772198, 14.279530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.593462, 16.313427, 14.329875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.387229, 16.219421, 14.000283>,  <12.263490, 16.163017, 13.802528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.387229, 16.219421, 14.000283>,  <12.593462, 16.313427, 14.329875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.387229, 16.219421, 14.000283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833330, 0.086189, -0.546015,
		0.199340, -0.968163, 0.151408,
		-0.515582, -0.235015, -0.823980,
		12.232554, 16.148916, 13.753089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022724, 15.756862, 13.954632>,  <12.593462, 16.313427, 14.329875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022724, 15.756862, 13.954632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.789397, 15.881564, 13.654619>,  <12.649401, 15.956386, 13.474611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.789397, 15.881564, 13.654619>,  <13.022724, 15.756862, 13.954632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789397, 15.881564, 13.654619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809838, 0.152204, -0.566566,
		-0.062473, -0.937892, -0.341255,
		-0.583318, 0.311756, -0.750032,
		12.614402, 15.975091, 13.429609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.359246, 15.440831, 13.408792>,  <13.022724, 15.756862, 13.954632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.359246, 15.440831, 13.408792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.134433, 15.720721, 13.232382>,  <12.999545, 15.888656, 13.126535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.134433, 15.720721, 13.232382>,  <13.359246, 15.440831, 13.408792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.134433, 15.720721, 13.232382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646324, 0.038817, -0.762075,
		-0.516124, -0.713356, -0.474066,
		-0.562033, 0.699726, -0.441025,
		12.965823, 15.930639, 13.100075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.177752, 15.246160, 12.772203>,  <13.359246, 15.440831, 13.408792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.177752, 15.246160, 12.772203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.143881, 15.644272, 12.753250>,  <13.123558, 15.883140, 12.741879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.143881, 15.644272, 12.753250>,  <13.177752, 15.246160, 12.772203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.143881, 15.644272, 12.753250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562565, 0.008504, -0.826709,
		-0.822405, -0.096659, -0.560631,
		-0.084677, 0.995281, -0.047383,
		13.118478, 15.942856, 12.739036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.233941, 15.441107, 12.122354>,  <13.177752, 15.246160, 12.772203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.233941, 15.441107, 12.122354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.300323, 15.812267, 12.255895>,  <13.340153, 16.034964, 12.336020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.300323, 15.812267, 12.255895>,  <13.233941, 15.441107, 12.122354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.300323, 15.812267, 12.255895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639646, 0.156378, -0.752595,
		-0.750541, 0.338445, -0.567576,
		0.165956, 0.927902, 0.333853,
		13.350110, 16.090637, 12.356050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119805, 15.886539, 11.604082>,  <13.233941, 15.441107, 12.122354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119805, 15.886539, 11.604082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.358252, 16.091221, 11.851567>,  <13.501319, 16.214029, 12.000058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.358252, 16.091221, 11.851567>,  <13.119805, 15.886539, 11.604082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358252, 16.091221, 11.851567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591323, 0.241473, -0.769433,
		-0.543124, 0.824531, -0.158637,
		0.596115, 0.511703, 0.618714,
		13.537086, 16.244732, 12.037182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270079, 16.487598, 11.316176>,  <13.119805, 15.886539, 11.604082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270079, 16.487598, 11.316176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.576324, 16.395861, 11.556588>,  <13.760072, 16.340818, 11.700835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.576324, 16.395861, 11.556588>,  <13.270079, 16.487598, 11.316176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.576324, 16.395861, 11.556588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640420, 0.183417, -0.745802,
		0.060808, 0.955907, 0.287304,
		0.765614, -0.229346, 0.601029,
		13.806008, 16.327057, 11.736897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.824988, 18.034889, 25.031445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.515943, 17.793278, 25.109640>,  <14.330515, 17.648312, 25.156557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.515943, 17.793278, 25.109640>,  <14.824988, 18.034889, 25.031445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515943, 17.793278, 25.109640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026986, 0.276394, 0.960666,
		-0.634302, 0.747500, -0.197245,
		-0.772614, -0.604029, 0.195489,
		14.284159, 17.612068, 25.168287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462786, 18.431080, 25.471424>,  <14.824988, 18.034889, 25.031445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462786, 18.431080, 25.471424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.376137, 18.043503, 25.519127>,  <14.324147, 17.810957, 25.547749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.376137, 18.043503, 25.519127>,  <14.462786, 18.431080, 25.471424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376137, 18.043503, 25.519127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176159, 0.158950, 0.971444,
		-0.960230, 0.189429, -0.205121,
		-0.216623, -0.968943, 0.119259,
		14.311150, 17.752819, 25.554905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047340, 18.488060, 26.062977>,  <14.462786, 18.431080, 25.471424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047340, 18.488060, 26.062977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.109163, 18.093639, 26.038271>,  <14.146256, 17.856987, 26.023447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.109163, 18.093639, 26.038271>,  <14.047340, 18.488060, 26.062977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.109163, 18.093639, 26.038271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158622, -0.086470, 0.983545,
		-0.975167, -0.142216, -0.169774,
		0.154556, -0.986051, -0.061764,
		14.155530, 17.797825, 26.019741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.412369, 18.270260, 26.233185>,  <14.047340, 18.488060, 26.062977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.412369, 18.270260, 26.233185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.686165, 17.989012, 26.310228>,  <13.850442, 17.820263, 26.356455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.686165, 17.989012, 26.310228>,  <13.412369, 18.270260, 26.233185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686165, 17.989012, 26.310228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254859, 0.016743, 0.966833,
		-0.683024, -0.710875, -0.167736,
		0.684489, -0.703119, 0.192609,
		13.891512, 17.778076, 26.368011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.086042, 18.036112, 26.718536>,  <13.412369, 18.270260, 26.233185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.086042, 18.036112, 26.718536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.447725, 17.869234, 26.755104>,  <13.664735, 17.769108, 26.777044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.447725, 17.869234, 26.755104>,  <13.086042, 18.036112, 26.718536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447725, 17.869234, 26.755104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142661, -0.093268, 0.985367,
		-0.402566, -0.904017, -0.143851,
		0.904206, -0.417197, 0.091421,
		13.718987, 17.744076, 26.782530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.924372, 17.362576, 26.945982>,  <13.086042, 18.036112, 26.718536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.924372, 17.362576, 26.945982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.301661, 17.452511, 27.043783>,  <13.528034, 17.506472, 27.102463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.301661, 17.452511, 27.043783>,  <12.924372, 17.362576, 26.945982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.301661, 17.452511, 27.043783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270987, 0.095186, 0.957865,
		0.192093, -0.969735, 0.150710,
		0.943221, 0.224840, 0.244501,
		13.584627, 17.519962, 27.117134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.026407, 17.069582, 27.565184>,  <12.924372, 17.362576, 26.945982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.026407, 17.069582, 27.565184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.338860, 17.319220, 27.572540>,  <13.526331, 17.469002, 27.576954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.338860, 17.319220, 27.572540>,  <13.026407, 17.069582, 27.565184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338860, 17.319220, 27.572540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018234, -0.006639, 0.999812,
		0.624100, -0.781320, 0.006194,
		0.781131, 0.624096, 0.018390,
		13.573199, 17.506449, 27.578058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478108, 16.837219, 28.094774>,  <13.026407, 17.069582, 27.565184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478108, 16.837219, 28.094774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.580987, 17.220415, 28.044006>,  <13.642715, 17.450333, 28.013546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.580987, 17.220415, 28.044006>,  <13.478108, 16.837219, 28.094774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580987, 17.220415, 28.044006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117855, 0.099263, 0.988057,
		0.959146, -0.269084, -0.087373,
		0.257197, 0.957988, -0.126920,
		13.658146, 17.507811, 28.005930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065375, 16.923683, 28.479094>,  <13.478108, 16.837219, 28.094774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065375, 16.923683, 28.479094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.899905, 17.284029, 28.426462>,  <13.800623, 17.500237, 28.394884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.899905, 17.284029, 28.426462>,  <14.065375, 16.923683, 28.479094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899905, 17.284029, 28.426462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040105, 0.126350, 0.991175,
		0.909541, 0.415302, -0.016139,
		-0.413676, 0.900866, -0.131576,
		13.775803, 17.554289, 28.386990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252009, 17.325243, 29.105915>,  <14.065375, 16.923683, 28.479094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252009, 17.325243, 29.105915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.955271, 17.542942, 28.949221>,  <13.777227, 17.673561, 28.855204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.955271, 17.542942, 28.949221>,  <14.252009, 17.325243, 29.105915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955271, 17.542942, 28.949221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241894, 0.327658, 0.913306,
		0.625420, 0.772292, -0.111422,
		-0.741847, 0.544247, -0.391737,
		13.732717, 17.706217, 28.831699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289580, 17.908651, 29.461950>,  <14.252009, 17.325243, 29.105915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289580, 17.908651, 29.461950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.917634, 17.894825, 29.315443>,  <13.694466, 17.886530, 29.227539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.917634, 17.894825, 29.315443>,  <14.289580, 17.908651, 29.461950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.917634, 17.894825, 29.315443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364722, 0.217116, 0.905450,
		0.048227, 0.975534, -0.214495,
		-0.929867, -0.034564, -0.366269,
		13.638674, 17.884457, 29.205563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.799394, 18.400625, 29.948412>,  <14.289580, 17.908651, 29.461950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.799394, 18.400625, 29.948412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.541891, 18.183966, 29.732193>,  <13.387389, 18.053970, 29.602461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.541891, 18.183966, 29.732193>,  <13.799394, 18.400625, 29.948412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.541891, 18.183966, 29.732193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672956, 0.064444, 0.736870,
		-0.364291, 0.838130, -0.405992,
		-0.643757, -0.541649, -0.540549,
		13.348764, 18.021471, 29.570028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033517, 18.742088, 29.971083>,  <13.799394, 18.400625, 29.948412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033517, 18.742088, 29.971083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.033083, 18.344465, 29.927538>,  <13.032823, 18.105892, 29.901411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.033083, 18.344465, 29.927538>,  <13.033517, 18.742088, 29.971083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.033083, 18.344465, 29.927538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692351, -0.077804, 0.717355,
		-0.721561, 0.076149, -0.688151,
		-0.001085, -0.994057, -0.108862,
		13.032758, 18.046247, 29.894880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374453, 18.462456, 29.853704>,  <13.033517, 18.742088, 29.971083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374453, 18.462456, 29.853704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.541883, 18.152227, 30.042715>,  <12.642342, 17.966091, 30.156122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.541883, 18.152227, 30.042715>,  <12.374453, 18.462456, 29.853704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541883, 18.152227, 30.042715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644208, 0.113185, 0.756429,
		-0.640148, -0.621030, -0.452252,
		0.418577, -0.775571, 0.472528,
		12.667457, 17.919556, 30.184473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.638186, 18.715488, 30.091343>,  <12.374453, 18.462456, 29.853704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.638186, 18.715488, 30.091343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.254724, 18.829174, 30.096991>,  <11.024646, 18.897385, 30.100378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.254724, 18.829174, 30.096991>,  <11.638186, 18.715488, 30.091343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.254724, 18.829174, 30.096991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072533, -0.196084, -0.977901,
		-0.275162, -0.938496, 0.208592,
		-0.958658, 0.284211, 0.014118,
		10.967126, 18.914438, 30.101225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.378160, 18.294008, 29.629192>,  <11.638186, 18.715488, 30.091343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.378160, 18.294008, 29.629192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.121180, 18.600365, 29.639542>,  <10.966991, 18.784178, 29.645752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.121180, 18.600365, 29.639542>,  <11.378160, 18.294008, 29.629192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121180, 18.600365, 29.639542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174720, -0.113521, -0.978052,
		-0.746143, -0.632871, 0.206748,
		-0.642451, 0.765890, 0.025873,
		10.928444, 18.830132, 29.647303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.765096, 18.090788, 29.219385>,  <11.378160, 18.294008, 29.629192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.765096, 18.090788, 29.219385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.754779, 18.489944, 29.243217>,  <10.748589, 18.729439, 29.257517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.754779, 18.489944, 29.243217>,  <10.765096, 18.090788, 29.219385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.754779, 18.489944, 29.243217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335457, 0.047506, -0.940857,
		-0.941702, -0.044253, 0.333524,
		-0.025791, 0.997890, 0.059581,
		10.747042, 18.789312, 29.261091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.240365, 18.103912, 28.858828>,  <10.765096, 18.090788, 29.219385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.240365, 18.103912, 28.858828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.422482, 18.459352, 28.836571>,  <10.531754, 18.672617, 28.823217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.422482, 18.459352, 28.836571>,  <10.240365, 18.103912, 28.858828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.422482, 18.459352, 28.836571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125644, 0.002257, -0.992073,
		-0.881431, 0.458676, 0.112675,
		0.455295, 0.888600, -0.055640,
		10.559071, 18.725933, 28.819880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.881842, 18.440008, 28.284794>,  <10.240365, 18.103912, 28.858828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.881842, 18.440008, 28.284794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.209376, 18.668451, 28.307907>,  <10.405897, 18.805517, 28.321775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.209376, 18.668451, 28.307907>,  <9.881842, 18.440008, 28.284794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.209376, 18.668451, 28.307907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125977, -0.080584, -0.988755,
		-0.560031, 0.816909, -0.137931,
		0.818838, 0.571109, 0.057782,
		10.455028, 18.839785, 28.325241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.697091, 19.001221, 27.831139>,  <9.881842, 18.440008, 28.284794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.697091, 19.001221, 27.831139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.090397, 18.953815, 27.886490>,  <10.326380, 18.925373, 27.919701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.090397, 18.953815, 27.886490>,  <9.697091, 19.001221, 27.831139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.090397, 18.953815, 27.886490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131645, -0.062898, -0.989299,
		0.125946, 0.990959, -0.046244,
		0.983263, -0.118511, 0.138377,
		10.385376, 18.918262, 27.928003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.972802, 19.506697, 27.356110>,  <9.697091, 19.001221, 27.831139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.972802, 19.506697, 27.356110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.268864, 19.254168, 27.448717>,  <10.446501, 19.102650, 27.504282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.268864, 19.254168, 27.448717>,  <9.972802, 19.506697, 27.356110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.268864, 19.254168, 27.448717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255350, -0.054629, -0.965304,
		0.622068, 0.773592, 0.120775,
		0.740154, -0.631325, 0.231520,
		10.490910, 19.064770, 27.518173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.582163, 19.704521, 27.120632>,  <9.972802, 19.506697, 27.356110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.582163, 19.704521, 27.120632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.690891, 19.323210, 27.173359>,  <10.756128, 19.094423, 27.204994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.690891, 19.323210, 27.173359>,  <10.582163, 19.704521, 27.120632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.690891, 19.323210, 27.173359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368586, -0.023401, -0.929299,
		0.888964, 0.301190, 0.345004,
		0.271822, -0.953277, 0.131817,
		10.772438, 19.037226, 27.212904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.223313, 19.655600, 26.734797>,  <10.582163, 19.704521, 27.120632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.223313, 19.655600, 26.734797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.121733, 19.271557, 26.781618>,  <11.060784, 19.041130, 26.809711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.121733, 19.271557, 26.781618>,  <11.223313, 19.655600, 26.734797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121733, 19.271557, 26.781618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309581, -0.195339, -0.930592,
		0.916334, -0.200088, 0.346838,
		-0.253951, -0.960108, 0.117052,
		11.045547, 18.983524, 26.816734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.698760, 19.350981, 26.433342>,  <11.223313, 19.655600, 26.734797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.698760, 19.350981, 26.433342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.424102, 19.060822, 26.452610>,  <11.259307, 18.886726, 26.464170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.424102, 19.060822, 26.452610>,  <11.698760, 19.350981, 26.433342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.424102, 19.060822, 26.452610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383612, -0.417810, -0.823576,
		0.617545, -0.547025, 0.565157,
		-0.686644, -0.725396, 0.048171,
		11.218108, 18.843203, 26.467062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974539, 18.864420, 25.965166>,  <11.698760, 19.350981, 26.433342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974539, 18.864420, 25.965166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.615100, 18.692274, 25.999365>,  <11.399437, 18.588987, 26.019884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.615100, 18.692274, 25.999365>,  <11.974539, 18.864420, 25.965166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.615100, 18.692274, 25.999365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137911, -0.462003, -0.876090,
		0.416538, -0.775461, 0.474507,
		-0.898597, -0.430364, 0.085498,
		11.345521, 18.563166, 26.025015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.953228, 18.077179, 25.704012>,  <11.974539, 18.864420, 25.965166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.953228, 18.077179, 25.704012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.592587, 18.242619, 25.653343>,  <11.376202, 18.341883, 25.622942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.592587, 18.242619, 25.653343>,  <11.953228, 18.077179, 25.704012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.592587, 18.242619, 25.653343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007495, -0.307737, -0.951442,
		-0.432501, -0.856873, 0.280557,
		-0.901603, 0.413602, -0.126675,
		11.322105, 18.366699, 25.615341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.598648, 17.597996, 25.320568>,  <11.953228, 18.077179, 25.704012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.598648, 17.597996, 25.320568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.395516, 17.934679, 25.247206>,  <11.273637, 18.136688, 25.203188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.395516, 17.934679, 25.247206>,  <11.598648, 17.597996, 25.320568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.395516, 17.934679, 25.247206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113062, -0.276181, -0.954432,
		-0.854006, -0.463953, 0.235418,
		-0.507829, 0.841708, -0.183405,
		11.243168, 18.187191, 25.192184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.072404, 17.416357, 24.878569>,  <11.598648, 17.597996, 25.320568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.072404, 17.416357, 24.878569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.107068, 17.813133, 24.841593>,  <11.127867, 18.051199, 24.819408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.107068, 17.813133, 24.841593>,  <11.072404, 17.416357, 24.878569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.107068, 17.813133, 24.841593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116367, -0.082074, -0.989809,
		-0.989418, 0.096533, 0.108317,
		0.086659, 0.991940, -0.092439,
		11.133066, 18.110716, 24.813862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.300498, 17.370205, 24.682331>,  <11.072404, 17.416357, 24.878569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.300498, 17.370205, 24.682331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.062826, 17.068750, 24.569916>,  <9.920223, 16.887878, 24.502466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.062826, 17.068750, 24.569916>,  <10.300498, 17.370205, 24.682331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.062826, 17.068750, 24.569916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606905, 0.190783, 0.771536,
		-0.527840, 0.628995, -0.570745,
		-0.594181, -0.753636, -0.281038,
		9.884572, 16.842659, 24.485605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.582992, 17.578228, 24.612074>,  <10.300498, 17.370205, 24.682331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.582992, 17.578228, 24.612074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.560075, 17.181252, 24.655493>,  <9.546325, 16.943066, 24.681543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.560075, 17.181252, 24.655493>,  <9.582992, 17.578228, 24.612074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.560075, 17.181252, 24.655493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604932, 0.121002, 0.787030,
		-0.794214, -0.020571, -0.607291,
		-0.057293, -0.992440, 0.108545,
		9.542887, 16.883520, 24.688057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.920459, 17.408737, 24.658083>,  <9.582992, 17.578228, 24.612074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.920459, 17.408737, 24.658083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.056622, 17.059721, 24.798250>,  <9.138319, 16.850311, 24.882351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.056622, 17.059721, 24.798250>,  <8.920459, 17.408737, 24.658083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.056622, 17.059721, 24.798250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619649, 0.072131, 0.781558,
		-0.707218, -0.483184, -0.516116,
		0.340408, -0.872543, 0.350416,
		9.158744, 16.797958, 24.903376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.314674, 17.081348, 24.895313>,  <8.920459, 17.408737, 24.658083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.314674, 17.081348, 24.895313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.614696, 16.897491, 25.085533>,  <8.794708, 16.787178, 25.199665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.614696, 16.897491, 25.085533>,  <8.314674, 17.081348, 24.895313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.614696, 16.897491, 25.085533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570610, -0.086176, 0.816687,
		-0.334404, -0.883912, -0.326914,
		0.750052, -0.459644, 0.475552,
		8.839711, 16.759598, 25.228199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.102749, 16.402016, 25.166353>,  <8.314674, 17.081348, 24.895313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.102749, 16.402016, 25.166353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.412859, 16.509901, 25.394810>,  <8.598925, 16.574633, 25.531883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.412859, 16.509901, 25.394810>,  <8.102749, 16.402016, 25.166353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.412859, 16.509901, 25.394810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528787, -0.217389, 0.820443,
		0.345446, -0.938081, -0.025914,
		0.775275, 0.269715, 0.571141,
		8.645442, 16.590816, 25.566153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.949994, 16.074657, 25.746811>,  <8.102749, 16.402016, 25.166353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.949994, 16.074657, 25.746811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.271346, 16.289173, 25.850328>,  <8.464157, 16.417883, 25.912439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.271346, 16.289173, 25.850328>,  <7.949994, 16.074657, 25.746811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.271346, 16.289173, 25.850328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282388, -0.039503, 0.958486,
		0.524251, -0.843108, 0.119706,
		0.803379, 0.536291, 0.258794,
		8.512360, 16.450060, 25.927967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.277854, 15.635196, 26.293215>,  <7.949994, 16.074657, 25.746811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.277854, 15.635196, 26.293215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.344986, 16.027912, 26.328810>,  <8.385265, 16.263542, 26.350166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.344986, 16.027912, 26.328810>,  <8.277854, 15.635196, 26.293215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.344986, 16.027912, 26.328810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256768, -0.043616, 0.965489,
		0.951790, -0.184886, 0.244772,
		0.167830, 0.981792, 0.088986,
		8.395335, 16.322449, 26.355505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.882994, 15.180928, 26.568953>,  <8.277854, 15.635196, 26.293215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.882994, 15.180928, 26.568953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.711273, 14.838898, 26.685259>,  <8.608241, 14.633679, 26.755043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.711273, 14.838898, 26.685259>,  <8.882994, 15.180928, 26.568953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.711273, 14.838898, 26.685259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243604, -0.419638, -0.874392,
		0.869688, -0.304546, 0.388451,
		-0.429302, -0.855076, 0.290766,
		8.582482, 14.582375, 26.772488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.337452, 14.689918, 26.393711>,  <8.882994, 15.180928, 26.568953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.337452, 14.689918, 26.393711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.995946, 14.483197, 26.419020>,  <8.791042, 14.359165, 26.434204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.995946, 14.483197, 26.419020>,  <9.337452, 14.689918, 26.393711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.995946, 14.483197, 26.419020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126576, -0.323890, -0.937590,
		0.505040, -0.792472, 0.341940,
		-0.853764, -0.516801, 0.063269,
		8.739817, 14.328156, 26.438000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.521689, 13.984082, 26.266287>,  <9.337452, 14.689918, 26.393711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.521689, 13.984082, 26.266287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.131466, 14.015084, 26.184038>,  <8.897332, 14.033686, 26.134689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.131466, 14.015084, 26.184038>,  <9.521689, 13.984082, 26.266287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.131466, 14.015084, 26.184038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163955, -0.366282, -0.915945,
		-0.146304, -0.927270, 0.344622,
		-0.975558, 0.077504, -0.205620,
		8.838799, 14.038336, 26.122353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261354, 13.327019, 25.863726>,  <9.521689, 13.984082, 26.266287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261354, 13.327019, 25.863726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.986696, 13.607531, 25.787069>,  <8.821901, 13.775838, 25.741076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.986696, 13.607531, 25.787069>,  <9.261354, 13.327019, 25.863726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.986696, 13.607531, 25.787069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017460, -0.279438, -0.960005,
		-0.726784, -0.655836, 0.204119,
		-0.686644, 0.701280, -0.191641,
		8.780703, 13.817915, 25.729578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.968264, 12.962438, 25.354090>,  <9.261354, 13.327019, 25.863726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.968264, 12.962438, 25.354090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.832201, 13.338466, 25.344608>,  <8.750564, 13.564082, 25.338921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.832201, 13.338466, 25.344608>,  <8.968264, 12.962438, 25.354090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.832201, 13.338466, 25.344608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064562, -0.048492, -0.996735,
		-0.938150, -0.337515, 0.077188,
		-0.340156, 0.940070, -0.023702,
		8.730154, 13.620487, 25.337498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.341178, 13.044118, 24.970268>,  <8.968264, 12.962438, 25.354090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.341178, 13.044118, 24.970268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.526899, 13.397840, 24.950573>,  <8.638332, 13.610074, 24.938757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.526899, 13.397840, 24.950573>,  <8.341178, 13.044118, 24.970268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.526899, 13.397840, 24.950573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073512, -0.016923, -0.997150,
		-0.882620, 0.466600, 0.057150,
		0.464304, 0.884306, -0.049237,
		8.666190, 13.663133, 24.935802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.936152, 13.500756, 24.568207>,  <8.341178, 13.044118, 24.970268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.936152, 13.500756, 24.568207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.312123, 13.636826, 24.556787>,  <8.537706, 13.718467, 24.549936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.312123, 13.636826, 24.556787>,  <7.936152, 13.500756, 24.568207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.312123, 13.636826, 24.556787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058797, 0.078949, -0.995143,
		-0.336267, 0.937043, 0.094208,
		0.939929, 0.340173, -0.028547,
		8.594102, 13.738877, 24.548223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<11.041814, 16.103676, 25.948593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.903481, 15.947231, 25.607435>,  <10.820480, 15.853364, 25.402740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.903481, 15.947231, 25.607435>,  <11.041814, 16.103676, 25.948593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.903481, 15.947231, 25.607435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585974, -0.619907, 0.521872,
		-0.732826, 0.680255, -0.014797,
		-0.345833, -0.391112, -0.852896,
		10.799730, 15.829898, 25.351566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593785, 15.882341, 26.433783>,  <11.041814, 16.103676, 25.948593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593785, 15.882341, 26.433783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.929333, 15.829604, 26.645033>,  <12.130661, 15.797962, 26.771782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.929333, 15.829604, 26.645033>,  <11.593785, 15.882341, 26.433783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.929333, 15.829604, 26.645033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368696, -0.576146, -0.729465,
		0.400451, 0.806644, -0.434701,
		0.838870, -0.131842, 0.528125,
		12.180994, 15.790051, 26.803471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.155857, 15.761039, 25.952869>,  <11.593785, 15.882341, 26.433783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.155857, 15.761039, 25.952869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.332211, 15.662216, 26.298027>,  <12.438023, 15.602922, 26.505121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.332211, 15.662216, 26.298027>,  <12.155857, 15.761039, 25.952869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.332211, 15.662216, 26.298027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576789, -0.658608, -0.483270,
		0.687704, 0.710773, -0.147869,
		0.440883, -0.247057, 0.862893,
		12.464476, 15.588099, 26.556894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268185, 16.386484, 26.404770>,  <12.155857, 15.761039, 25.952869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268185, 16.386484, 26.404770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.195026, 16.311214, 26.018787>,  <12.151132, 16.266052, 25.787197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.195026, 16.311214, 26.018787>,  <12.268185, 16.386484, 26.404770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.195026, 16.311214, 26.018787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537309, 0.802826, -0.258399,
		0.823316, -0.565739, -0.045726,
		-0.182896, -0.188175, -0.964956,
		12.140158, 16.254763, 25.729301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.868009, 16.493134, 26.063740>,  <12.268185, 16.386484, 26.404770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.868009, 16.493134, 26.063740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.599419, 16.492437, 25.767330>,  <12.438265, 16.492020, 25.589485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.599419, 16.492437, 25.767330>,  <12.868009, 16.493134, 26.063740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.599419, 16.492437, 25.767330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508693, 0.726073, -0.462654,
		0.538843, -0.687615, -0.486656,
		-0.671476, -0.001740, -0.741024,
		12.397976, 16.491915, 25.545023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004903, 15.735625, 25.801708>,  <12.868009, 16.493134, 26.063740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.004903, 15.735625, 25.801708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.905613, 15.529983, 26.130117>,  <12.846039, 15.406597, 26.327164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.905613, 15.529983, 26.130117>,  <13.004903, 15.735625, 25.801708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905613, 15.529983, 26.130117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355023, -0.836858, -0.416687,
		0.901301, 0.188049, 0.390249,
		-0.248225, -0.514107, 0.821022,
		12.831145, 15.375751, 26.376425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.687045, 15.453687, 25.920221>,  <13.004903, 15.735625, 25.801708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.687045, 15.453687, 25.920221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.415195, 15.226386, 26.105780>,  <13.252085, 15.090006, 26.217115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.415195, 15.226386, 26.105780>,  <13.687045, 15.453687, 25.920221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.415195, 15.226386, 26.105780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371873, -0.811999, -0.449854,
		0.632313, -0.133223, 0.763173,
		-0.679626, -0.568251, 0.463895,
		13.211307, 15.055911, 26.244947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.086251, 14.928335, 26.129498>,  <13.687045, 15.453687, 25.920221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.086251, 14.928335, 26.129498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.705914, 14.804749, 26.137848>,  <13.477711, 14.730597, 26.142859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.705914, 14.804749, 26.137848>,  <14.086251, 14.928335, 26.129498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705914, 14.804749, 26.137848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237202, -0.770014, -0.592295,
		0.199073, -0.558229, 0.805450,
		-0.950844, -0.308965, 0.020876,
		13.420660, 14.712060, 26.144112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125834, 14.334422, 26.335497>,  <14.086251, 14.928335, 26.129498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125834, 14.334422, 26.335497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.768047, 14.321633, 26.157099>,  <13.553375, 14.313960, 26.050060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.768047, 14.321633, 26.157099>,  <14.125834, 14.334422, 26.335497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.768047, 14.321633, 26.157099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314451, -0.754096, -0.576593,
		-0.317887, -0.655986, 0.684566,
		-0.894465, -0.031971, -0.445993,
		13.499708, 14.312042, 26.023300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913584, 13.613271, 26.175602>,  <14.125834, 14.334422, 26.335497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913584, 13.613271, 26.175602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.699566, 13.835690, 25.921188>,  <13.571156, 13.969141, 25.768539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.699566, 13.835690, 25.921188>,  <13.913584, 13.613271, 26.175602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.699566, 13.835690, 25.921188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122522, -0.693829, -0.709641,
		-0.835892, -0.457617, 0.303101,
		-0.535044, 0.556047, -0.636034,
		13.539053, 14.002503, 25.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.570425, 13.095475, 25.763704>,  <13.913584, 13.613271, 26.175602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.570425, 13.095475, 25.763704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.518956, 13.430972, 25.552061>,  <13.488075, 13.632270, 25.425076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.518956, 13.430972, 25.552061>,  <13.570425, 13.095475, 25.763704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518956, 13.430972, 25.552061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027504, -0.536357, -0.843543,
		-0.991306, -0.093987, 0.092083,
		-0.128672, 0.838741, -0.529109,
		13.480354, 13.682594, 25.393328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.058201, 12.988878, 25.237963>,  <13.570425, 13.095475, 25.763704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.058201, 12.988878, 25.237963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.280298, 13.290978, 25.098650>,  <13.413557, 13.472239, 25.015062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.280298, 13.290978, 25.098650>,  <13.058201, 12.988878, 25.237963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280298, 13.290978, 25.098650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262808, -0.556636, -0.788092,
		-0.789074, 0.346051, -0.507554,
		0.555243, 0.755252, -0.348282,
		13.446871, 13.517554, 24.994165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529230, 12.483474, 25.328030>,  <13.058201, 12.988878, 25.237963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529230, 12.483474, 25.328030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.185817, 12.296285, 25.244200>,  <11.979769, 12.183971, 25.193901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.185817, 12.296285, 25.244200>,  <12.529230, 12.483474, 25.328030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.185817, 12.296285, 25.244200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366850, 0.275024, 0.888697,
		-0.358247, 0.839860, -0.407793,
		-0.858534, -0.467972, -0.209576,
		11.928257, 12.155893, 25.181328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.983213, 12.936909, 25.467041>,  <12.529230, 12.483474, 25.328030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.983213, 12.936909, 25.467041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.808513, 12.577841, 25.490499>,  <11.703692, 12.362400, 25.504574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.808513, 12.577841, 25.490499>,  <11.983213, 12.936909, 25.467041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808513, 12.577841, 25.490499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380956, 0.243621, 0.891920,
		-0.814936, 0.367206, -0.448373,
		-0.436751, -0.897669, 0.058647,
		11.677487, 12.308540, 25.508093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.331384, 13.134933, 25.626707>,  <11.983213, 12.936909, 25.467041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.331384, 13.134933, 25.626707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.364381, 12.747067, 25.718750>,  <11.384179, 12.514348, 25.773975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.364381, 12.747067, 25.718750>,  <11.331384, 13.134933, 25.626707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.364381, 12.747067, 25.718750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519362, 0.155231, 0.840337,
		-0.850564, -0.188830, -0.490800,
		0.082493, -0.969663, 0.230105,
		11.389129, 12.456168, 25.787781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591214, 12.780856, 25.806395>,  <11.331384, 13.134933, 25.626707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591214, 12.780856, 25.806395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.856413, 12.533015, 25.974457>,  <11.015532, 12.384311, 26.075294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.856413, 12.533015, 25.974457>,  <10.591214, 12.780856, 25.806395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.856413, 12.533015, 25.974457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460196, 0.105354, 0.881544,
		-0.590471, -0.777814, -0.215289,
		0.662996, -0.619602, 0.420155,
		11.055311, 12.347135, 26.100504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.232712, 12.400421, 26.423233>,  <10.591214, 12.780856, 25.806395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.232712, 12.400421, 26.423233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.619379, 12.340238, 26.506096>,  <10.851379, 12.304128, 26.555813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.619379, 12.340238, 26.506096>,  <10.232712, 12.400421, 26.423233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.619379, 12.340238, 26.506096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227353, -0.132362, 0.964775,
		-0.117714, -0.979720, -0.162152,
		0.966672, -0.150433, 0.207161,
		10.909380, 12.295100, 26.568243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.267377, 11.811646, 26.780588>,  <10.232712, 12.400421, 26.423233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.267377, 11.811646, 26.780588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.577355, 12.039439, 26.890238>,  <10.763343, 12.176116, 26.956028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.577355, 12.039439, 26.890238>,  <10.267377, 11.811646, 26.780588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.577355, 12.039439, 26.890238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350571, 0.026424, 0.936163,
		0.525889, -0.821576, 0.220122,
		0.774946, 0.569486, 0.274125,
		10.809839, 12.210285, 26.972475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.411294, 11.529954, 27.401030>,  <10.267377, 11.811646, 26.780588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.411294, 11.529954, 27.401030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.647462, 11.852080, 27.422451>,  <10.789163, 12.045357, 27.435305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.647462, 11.852080, 27.422451>,  <10.411294, 11.529954, 27.401030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.647462, 11.852080, 27.422451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070629, -0.014546, 0.997397,
		0.803999, -0.592666, 0.048290,
		0.590421, 0.805317, 0.053554,
		10.824588, 12.093676, 27.438517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.861940, 11.384834, 28.003519>,  <10.411294, 11.529954, 27.401030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.861940, 11.384834, 28.003519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.882739, 11.782664, 27.967484>,  <10.895219, 12.021362, 27.945862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.882739, 11.782664, 27.967484>,  <10.861940, 11.384834, 28.003519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.882739, 11.782664, 27.967484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276402, 0.101020, 0.955718,
		0.959634, -0.024794, 0.280155,
		0.051997, 0.994576, -0.090089,
		10.898338, 12.081037, 27.940456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.289464, 11.520429, 28.492247>,  <10.861940, 11.384834, 28.003519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.289464, 11.520429, 28.492247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.097659, 11.864054, 28.420603>,  <10.982576, 12.070229, 28.377617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.097659, 11.864054, 28.420603>,  <11.289464, 11.520429, 28.492247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.097659, 11.864054, 28.420603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062847, 0.169960, 0.983445,
		0.875282, 0.482830, -0.027508,
		-0.479512, 0.859063, -0.179108,
		10.953806, 12.121773, 28.366871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548803, 11.937255, 29.028896>,  <11.289464, 11.520429, 28.492247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548803, 11.937255, 29.028896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.233819, 12.144891, 28.895960>,  <11.044828, 12.269472, 28.816198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.233819, 12.144891, 28.895960>,  <11.548803, 11.937255, 29.028896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.233819, 12.144891, 28.895960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270378, 0.193632, 0.943081,
		0.553896, 0.832497, -0.012127,
		-0.787461, 0.519090, -0.332341,
		10.997581, 12.300618, 28.796257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.534799, 12.548985, 29.450787>,  <11.548803, 11.937255, 29.028896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.534799, 12.548985, 29.450787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.158773, 12.498118, 29.324226>,  <10.933158, 12.467599, 29.248289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.158773, 12.498118, 29.324226>,  <11.534799, 12.548985, 29.450787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.158773, 12.498118, 29.324226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336574, 0.196994, 0.920821,
		-0.054766, 0.972123, -0.227987,
		-0.940063, -0.127164, -0.316403,
		10.876755, 12.459970, 29.229305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.215185, 13.137801, 29.625523>,  <11.534799, 12.548985, 29.450787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.215185, 13.137801, 29.625523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.915470, 12.877658, 29.575556>,  <10.735641, 12.721572, 29.545576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.915470, 12.877658, 29.575556>,  <11.215185, 13.137801, 29.625523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.915470, 12.877658, 29.575556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395657, 0.288365, 0.871953,
		-0.531060, 0.702766, -0.473386,
		-0.749287, -0.650357, -0.124915,
		10.690684, 12.682550, 29.538082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.578133, 13.505255, 29.593653>,  <11.215185, 13.137801, 29.625523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.578133, 13.505255, 29.593653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.473000, 13.126201, 29.666214>,  <10.409920, 12.898768, 29.709751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.473000, 13.126201, 29.666214>,  <10.578133, 13.505255, 29.593653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.473000, 13.126201, 29.666214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508556, 0.295841, 0.808609,
		-0.819933, 0.120275, -0.559683,
		-0.262833, -0.947635, 0.181403,
		10.394150, 12.841910, 29.720634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.828050, 13.447844, 29.592287>,  <10.578133, 13.505255, 29.593653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.828050, 13.447844, 29.592287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.975051, 13.139039, 29.799725>,  <10.063251, 12.953756, 29.924187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.975051, 13.139039, 29.799725>,  <9.828050, 13.447844, 29.592287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975051, 13.139039, 29.799725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689148, 0.148386, 0.709265,
		-0.624513, -0.618044, -0.477498,
		0.367504, -0.772012, 0.518593,
		10.085302, 12.907435, 29.955303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.204193, 13.741399, 29.825438>,  <9.828050, 13.447844, 29.592287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.204193, 13.741399, 29.825438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.042800, 14.097883, 29.742544>,  <8.945964, 14.311773, 29.692808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.042800, 14.097883, 29.742544>,  <9.204193, 13.741399, 29.825438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.042800, 14.097883, 29.742544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134252, -0.281700, -0.950064,
		-0.905085, -0.355512, 0.233307,
		-0.403482, 0.891211, -0.207234,
		8.921755, 14.365247, 29.680374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.597210, 13.599093, 29.371212>,  <9.204193, 13.741399, 29.825438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.597210, 13.599093, 29.371212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.669099, 13.987532, 29.308380>,  <8.712232, 14.220594, 29.270681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.669099, 13.987532, 29.308380>,  <8.597210, 13.599093, 29.371212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.669099, 13.987532, 29.308380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276807, -0.103305, -0.955356,
		-0.943969, 0.215179, 0.250240,
		0.179721, 0.971096, -0.157080,
		8.723015, 14.278860, 29.261255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.022944, 13.783455, 28.957783>,  <8.597210, 13.599093, 29.371212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.022944, 13.783455, 28.957783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.264423, 14.097123, 28.900337>,  <8.409310, 14.285324, 28.865870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.264423, 14.097123, 28.900337>,  <8.022944, 13.783455, 28.957783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.264423, 14.097123, 28.900337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160046, -0.057264, -0.985447,
		-0.780983, 0.617897, 0.090933,
		0.603697, 0.784171, -0.143614,
		8.445533, 14.332375, 28.857252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.603388, 14.374216, 28.733082>,  <8.022944, 13.783455, 28.957783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.603388, 14.374216, 28.733082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.973018, 14.394488, 28.581547>,  <8.194797, 14.406651, 28.490625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.973018, 14.394488, 28.581547>,  <7.603388, 14.374216, 28.733082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.973018, 14.394488, 28.581547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382139, 0.141836, -0.913155,
		0.007454, 0.988592, 0.150434,
		0.924075, 0.050680, -0.378837,
		8.250240, 14.409693, 28.467896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.592682, 14.669338, 28.135729>,  <7.603388, 14.374216, 28.733082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.592682, 14.669338, 28.135729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.976212, 14.565930, 28.088699>,  <8.206329, 14.503885, 28.060482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.976212, 14.565930, 28.088699>,  <7.592682, 14.669338, 28.135729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.976212, 14.565930, 28.088699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107575, 0.052532, -0.992808,
		0.262838, 0.964576, 0.022558,
		0.958824, -0.258521, -0.117572,
		8.263859, 14.488374, 28.053429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.881437, 15.170987, 27.712389>,  <7.592682, 14.669338, 28.135729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.881437, 15.170987, 27.712389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.127765, 14.858309, 27.672956>,  <8.275561, 14.670702, 27.649298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.127765, 14.858309, 27.672956>,  <7.881437, 15.170987, 27.712389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.127765, 14.858309, 27.672956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037712, 0.095733, -0.994692,
		0.786984, 0.616269, 0.029476,
		0.615820, -0.781695, -0.098581,
		8.312510, 14.623800, 27.643383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.301337, 15.364200, 27.037115>,  <7.881437, 15.170987, 27.712389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.301337, 15.364200, 27.037115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.375783, 14.977055, 27.104767>,  <8.420450, 14.744767, 27.145357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.375783, 14.977055, 27.104767>,  <8.301337, 15.364200, 27.037115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.375783, 14.977055, 27.104767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114947, -0.149505, -0.982057,
		0.975781, 0.202215, 0.083429,
		0.186113, -0.967862, 0.169128,
		8.431617, 14.686696, 27.155506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.943935, 15.714909, 27.055149>,  <8.301337, 15.364200, 27.037115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.943935, 15.714909, 27.055149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.777845, 16.065737, 26.958540>,  <8.678191, 16.276234, 26.900574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.777845, 16.065737, 26.958540>,  <8.943935, 15.714909, 27.055149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.777845, 16.065737, 26.958540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008412, 0.269185, 0.963052,
		0.909679, 0.397852, -0.119151,
		-0.415226, 0.877071, -0.241525,
		8.653277, 16.328857, 26.886082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.414809, 16.248363, 27.183680>,  <8.943935, 15.714909, 27.055149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.414809, 16.248363, 27.183680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.066244, 16.443367, 27.205498>,  <8.857105, 16.560369, 27.218590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.066244, 16.443367, 27.205498>,  <9.414809, 16.248363, 27.183680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.066244, 16.443367, 27.205498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335498, 0.511155, 0.791304,
		0.357887, 0.707852, -0.608985,
		-0.871412, 0.487510, 0.054547,
		8.804821, 16.589621, 27.221863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.593684, 16.855154, 27.429468>,  <9.414809, 16.248363, 27.183680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.593684, 16.855154, 27.429468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.200856, 16.836716, 27.502583>,  <8.965159, 16.825653, 27.546452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.200856, 16.836716, 27.502583>,  <9.593684, 16.855154, 27.429468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.200856, 16.836716, 27.502583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142980, 0.449783, 0.881619,
		-0.122854, 0.891948, -0.435128,
		-0.982071, -0.046095, 0.182788,
		8.906235, 16.822887, 27.557419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.352229, 17.549723, 27.580236>,  <9.593684, 16.855154, 27.429468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.352229, 17.549723, 27.580236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.080312, 17.320837, 27.763737>,  <8.917161, 17.183506, 27.873837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.080312, 17.320837, 27.763737>,  <9.352229, 17.549723, 27.580236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.080312, 17.320837, 27.763737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139836, 0.512908, 0.846978,
		-0.719949, 0.639920, -0.268656,
		-0.679794, -0.572213, 0.458752,
		8.876373, 17.149174, 27.901361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.875786, 18.055590, 28.069464>,  <9.352229, 17.549723, 27.580236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.875786, 18.055590, 28.069464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.832835, 17.675077, 28.185074>,  <8.807065, 17.446770, 28.254440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.832835, 17.675077, 28.185074>,  <8.875786, 18.055590, 28.069464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.832835, 17.675077, 28.185074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304890, 0.245191, 0.920285,
		-0.946315, 0.186938, 0.263708,
		-0.107378, -0.951281, 0.289023,
		8.800622, 17.389692, 28.271780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.605879, 18.132013, 28.793564>,  <8.875786, 18.055590, 28.069464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.605879, 18.132013, 28.793564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.730350, 17.753027, 28.763958>,  <8.805034, 17.525635, 28.746195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.730350, 17.753027, 28.763958>,  <8.605879, 18.132013, 28.793564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.730350, 17.753027, 28.763958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150119, -0.027900, 0.988274,
		-0.938420, -0.318641, 0.133550,
		0.311179, -0.947465, -0.074016,
		8.823704, 17.468788, 28.741753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.251714, 17.852703, 29.253769>,  <8.605879, 18.132013, 28.793564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.251714, 17.852703, 29.253769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.543522, 17.584406, 29.200249>,  <8.718607, 17.423428, 29.168137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.543522, 17.584406, 29.200249>,  <8.251714, 17.852703, 29.253769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.543522, 17.584406, 29.200249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153419, -0.030168, 0.987701,
		-0.666530, -0.741076, 0.080896,
		0.729521, -0.670743, -0.133803,
		8.762378, 17.383183, 29.160109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.104284, 17.245781, 29.699160>,  <8.251714, 17.852703, 29.253769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.104284, 17.245781, 29.699160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.496697, 17.248955, 29.621687>,  <8.732145, 17.250858, 29.575203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.496697, 17.248955, 29.621687>,  <8.104284, 17.245781, 29.699160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.496697, 17.248955, 29.621687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193471, -0.102184, 0.975770,
		-0.012048, -0.994734, -0.101781,
		0.981032, 0.007936, -0.193683,
		8.791007, 17.251335, 29.563581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.431376, 16.727392, 30.161644>,  <8.104284, 17.245781, 29.699160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.431376, 16.727392, 30.161644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.743589, 16.946295, 30.040796>,  <8.930918, 17.077637, 29.968288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.743589, 16.946295, 30.040796>,  <8.431376, 16.727392, 30.161644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.743589, 16.946295, 30.040796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339883, 0.034093, 0.939850,
		0.524640, -0.836270, -0.159393,
		0.780534, 0.547258, -0.302120,
		8.977750, 17.110472, 29.950161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.560355, 14.189215, 14.767618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.926742, 14.228481, 14.923244>,  <13.146573, 14.252041, 15.016619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.926742, 14.228481, 14.923244>,  <12.560355, 14.189215, 14.767618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926742, 14.228481, 14.923244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395013, 0.390977, 0.831325,
		-0.070507, -0.915150, 0.396899,
		0.915966, 0.098166, 0.389063,
		13.201531, 14.257931, 15.039963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.590686, 13.840747, 15.388966>,  <12.560355, 14.189215, 14.767618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.590686, 13.840747, 15.388966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876361, 14.120403, 15.402452>,  <13.047766, 14.288198, 15.410544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876361, 14.120403, 15.402452>,  <12.590686, 13.840747, 15.388966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.876361, 14.120403, 15.402452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228296, 0.187133, 0.955438,
		0.661677, -0.690060, 0.293259,
		0.714188, 0.699141, 0.033717,
		13.090617, 14.330146, 15.412567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.085244, 13.652408, 15.951520>,  <12.590686, 13.840747, 15.388966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.085244, 13.652408, 15.951520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.116476, 14.049132, 15.911094>,  <13.135215, 14.287167, 15.886838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.116476, 14.049132, 15.911094>,  <13.085244, 13.652408, 15.951520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.116476, 14.049132, 15.911094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099839, 0.108644, 0.989054,
		0.991935, -0.067135, 0.107504,
		0.078080, 0.991811, -0.101065,
		13.139900, 14.346676, 15.880774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.603639, 13.815323, 16.412750>,  <13.085244, 13.652408, 15.951520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.603639, 13.815323, 16.412750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.415359, 14.159842, 16.336218>,  <13.302390, 14.366554, 16.290298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.415359, 14.159842, 16.336218>,  <13.603639, 13.815323, 16.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.415359, 14.159842, 16.336218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192851, 0.111174, 0.974910,
		0.860958, 0.495788, 0.113772,
		-0.470701, 0.861298, -0.191329,
		13.274148, 14.418232, 16.278820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925759, 14.290172, 16.904791>,  <13.603639, 13.815323, 16.412750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925759, 14.290172, 16.904791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561585, 14.398178, 16.779444>,  <13.343081, 14.462982, 16.704235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561585, 14.398178, 16.779444>,  <13.925759, 14.290172, 16.904791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561585, 14.398178, 16.779444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285660, 0.137501, 0.948416,
		0.299176, 0.952988, -0.048053,
		-0.910435, 0.270016, -0.313367,
		13.288455, 14.479183, 16.685434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691550, 14.687273, 17.422174>,  <13.925759, 14.290172, 16.904791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691550, 14.687273, 17.422174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.341707, 14.640784, 17.233896>,  <13.131802, 14.612891, 17.120930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.341707, 14.640784, 17.233896>,  <13.691550, 14.687273, 17.422174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.341707, 14.640784, 17.233896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484832, 0.210861, 0.848808,
		0.000602, 0.970582, -0.240768,
		-0.874607, -0.116221, -0.470697,
		13.079325, 14.605918, 17.092688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.338884, 15.321889, 17.575285>,  <13.691550, 14.687273, 17.422174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.338884, 15.321889, 17.575285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064612, 15.052305, 17.465288>,  <12.900049, 14.890555, 17.399290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064612, 15.052305, 17.465288>,  <13.338884, 15.321889, 17.575285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064612, 15.052305, 17.465288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566225, 0.256448, 0.783341,
		-0.457419, 0.692830, -0.557454,
		-0.685680, -0.673959, -0.274994,
		12.858909, 14.850118, 17.382790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724989, 15.596025, 17.532669>,  <13.338884, 15.321889, 17.575285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724989, 15.596025, 17.532669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.578342, 15.224626, 17.556282>,  <12.490355, 15.001786, 17.570450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.578342, 15.224626, 17.556282>,  <12.724989, 15.596025, 17.532669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.578342, 15.224626, 17.556282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666448, 0.306360, 0.679699,
		-0.649184, 0.209848, -0.731112,
		-0.366617, -0.928498, 0.059031,
		12.468357, 14.946076, 17.573992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970721, 15.572701, 17.502666>,  <12.724989, 15.596025, 17.532669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970721, 15.572701, 17.502666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076688, 15.240116, 17.698008>,  <12.140267, 15.040565, 17.815212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076688, 15.240116, 17.698008>,  <11.970721, 15.572701, 17.502666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.076688, 15.240116, 17.698008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667161, 0.207616, 0.715396,
		-0.696215, -0.515330, -0.499719,
		0.264915, -0.831463, 0.488353,
		12.156162, 14.990677, 17.844513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.300474, 15.150380, 17.683962>,  <11.970721, 15.572701, 17.502666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.300474, 15.150380, 17.683962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595787, 15.026044, 17.923401>,  <11.772975, 14.951442, 18.067064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595787, 15.026044, 17.923401>,  <11.300474, 15.150380, 17.683962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595787, 15.026044, 17.923401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610780, 0.068416, 0.788839,
		-0.286157, -0.947996, -0.139346,
		0.738283, -0.310842, 0.598595,
		11.817272, 14.932792, 18.102980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959429, 14.741343, 18.168634>,  <11.300474, 15.150380, 17.683962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959429, 14.741343, 18.168634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300352, 14.799221, 18.369684>,  <11.504906, 14.833948, 18.490314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300352, 14.799221, 18.369684>,  <10.959429, 14.741343, 18.168634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.300352, 14.799221, 18.369684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507913, -0.000469, 0.861408,
		0.124882, -0.989475, 0.073096,
		0.852308, 0.144701, 0.502626,
		11.556045, 14.842630, 18.520472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.850218, 14.335393, 18.718473>,  <10.959429, 14.741343, 18.168634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.850218, 14.335393, 18.718473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.138300, 14.589150, 18.830793>,  <11.311150, 14.741405, 18.898186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.138300, 14.589150, 18.830793>,  <10.850218, 14.335393, 18.718473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.138300, 14.589150, 18.830793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485189, 0.171276, 0.857471,
		0.495878, -0.753797, 0.431155,
		0.720206, 0.634393, 0.280802,
		11.354362, 14.779469, 18.915033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.135649, 13.642204, 18.799215>,  <10.850218, 14.335393, 18.718473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.135649, 13.642204, 18.799215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905397, 13.328922, 18.893229>,  <10.767246, 13.140953, 18.949636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905397, 13.328922, 18.893229>,  <11.135649, 13.642204, 18.799215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905397, 13.328922, 18.893229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371889, -0.506726, -0.777771,
		0.728251, -0.360302, 0.582952,
		-0.575629, -0.783206, 0.235031,
		10.732709, 13.093961, 18.963737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.516644, 12.992537, 18.724129>,  <11.135649, 13.642204, 18.799215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.516644, 12.992537, 18.724129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.130246, 12.899274, 18.679432>,  <10.898407, 12.843315, 18.652613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.130246, 12.899274, 18.679432>,  <11.516644, 12.992537, 18.724129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.130246, 12.899274, 18.679432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211503, -0.464008, -0.860211,
		0.148717, -0.854595, 0.497544,
		-0.965997, -0.233160, -0.111743,
		10.840447, 12.829326, 18.645908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.667912, 12.353473, 18.554043>,  <11.516644, 12.992537, 18.724129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.667912, 12.353473, 18.554043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300202, 12.450855, 18.430325>,  <11.079576, 12.509285, 18.356094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.300202, 12.450855, 18.430325>,  <11.667912, 12.353473, 18.554043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.300202, 12.450855, 18.430325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154552, -0.499423, -0.852461,
		-0.362004, -0.831449, 0.421481,
		-0.919275, 0.243454, -0.309295,
		11.024420, 12.523891, 18.337536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298004, 11.761788, 18.250439>,  <11.667912, 12.353473, 18.554043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.298004, 11.761788, 18.250439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109249, 12.074768, 18.087912>,  <10.995996, 12.262556, 17.990396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109249, 12.074768, 18.087912>,  <11.298004, 11.761788, 18.250439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109249, 12.074768, 18.087912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137615, -0.389838, -0.910543,
		-0.870852, -0.485590, 0.076283,
		-0.471888, 0.782450, -0.406316,
		10.967683, 12.309504, 17.966017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.805605, 11.496548, 17.763937>,  <11.298004, 11.761788, 18.250439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.805605, 11.496548, 17.763937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.874692, 11.873499, 17.649332>,  <10.916144, 12.099670, 17.580568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.874692, 11.873499, 17.649332>,  <10.805605, 11.496548, 17.763937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.874692, 11.873499, 17.649332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145196, -0.263348, -0.953712,
		-0.974211, 0.206324, 0.091345,
		0.172718, 0.942379, -0.286514,
		10.926507, 12.156213, 17.563377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.289191, 11.717291, 17.244886>,  <10.805605, 11.496548, 17.763937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.289191, 11.717291, 17.244886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596787, 11.967377, 17.191578>,  <10.781345, 12.117428, 17.159592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596787, 11.967377, 17.191578>,  <10.289191, 11.717291, 17.244886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.596787, 11.967377, 17.191578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096564, -0.092478, -0.991021,
		-0.631925, 0.774955, -0.010742,
		0.768991, 0.625214, -0.133272,
		10.827485, 12.154941, 17.151596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.080478, 12.340100, 16.842007>,  <10.289191, 11.717291, 17.244886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.080478, 12.340100, 16.842007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.474820, 12.285424, 16.803221>,  <10.711426, 12.252619, 16.779949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.474820, 12.285424, 16.803221>,  <10.080478, 12.340100, 16.842007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.474820, 12.285424, 16.803221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097008, 0.006347, -0.995263,
		0.136659, 0.990593, -0.007002,
		0.985857, -0.136691, -0.096963,
		10.770577, 12.244417, 16.774132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.199884, 12.651722, 16.238466>,  <10.080478, 12.340100, 16.842007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.199884, 12.651722, 16.238466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556388, 12.479319, 16.294878>,  <10.770290, 12.375876, 16.328726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556388, 12.479319, 16.294878>,  <10.199884, 12.651722, 16.238466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.556388, 12.479319, 16.294878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138203, -0.038049, -0.989673,
		0.431923, 0.901546, 0.025655,
		0.891259, -0.431008, 0.141031,
		10.823766, 12.350017, 16.337187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.655474, 12.901314, 15.606572>,  <10.199884, 12.651722, 16.238466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.655474, 12.901314, 15.606572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.831689, 12.563227, 15.727590>,  <10.937418, 12.360374, 15.800200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.831689, 12.563227, 15.727590>,  <10.655474, 12.901314, 15.606572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.831689, 12.563227, 15.727590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360394, -0.142152, -0.921905,
		0.822218, 0.515170, 0.241988,
		0.440539, -0.845218, 0.302544,
		10.963851, 12.309662, 15.818353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.310933, 12.994730, 15.379414>,  <10.655474, 12.901314, 15.606572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.310933, 12.994730, 15.379414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289161, 12.602281, 15.453638>,  <11.276097, 12.366811, 15.498173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289161, 12.602281, 15.453638>,  <11.310933, 12.994730, 15.379414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289161, 12.602281, 15.453638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433694, -0.190622, -0.880666,
		0.899414, 0.032541, 0.435884,
		-0.054431, -0.981124, 0.185561,
		11.272831, 12.307943, 15.509306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.962153, 12.724377, 15.279409>,  <11.310933, 12.994730, 15.379414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.962153, 12.724377, 15.279409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695589, 12.428749, 15.240065>,  <11.535650, 12.251372, 15.216458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695589, 12.428749, 15.240065>,  <11.962153, 12.724377, 15.279409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.695589, 12.428749, 15.240065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420008, -0.263125, -0.868538,
		0.616029, -0.620115, 0.485763,
		-0.666410, -0.739069, -0.098361,
		11.495666, 12.207028, 15.210556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.182380, 12.486172, 14.682949>,  <11.962153, 12.724377, 15.279409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.182380, 12.486172, 14.682949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891094, 12.232962, 14.788007>,  <11.716323, 12.081036, 14.851042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891094, 12.232962, 14.788007>,  <12.182380, 12.486172, 14.682949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891094, 12.232962, 14.788007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113423, -0.489259, -0.864732,
		0.675899, -0.599920, 0.428084,
		-0.728214, -0.633026, 0.262645,
		11.672630, 12.043054, 14.866800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.492130, 11.800881, 14.806363>,  <12.182380, 12.486172, 14.682949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.492130, 11.800881, 14.806363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117048, 11.822708, 14.669116>,  <11.891998, 11.835804, 14.586768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117048, 11.822708, 14.669116>,  <12.492130, 11.800881, 14.806363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117048, 11.822708, 14.669116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327670, -0.189406, -0.925612,
		-0.115495, -0.980381, 0.159728,
		-0.937706, 0.054565, -0.343117,
		11.835736, 11.839078, 14.566181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.283619, 11.253677, 14.261548>,  <12.492130, 11.800881, 14.806363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.283619, 11.253677, 14.261548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.079012, 11.594606, 14.217918>,  <11.956247, 11.799164, 14.191740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.079012, 11.594606, 14.217918>,  <12.283619, 11.253677, 14.261548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.079012, 11.594606, 14.217918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267969, 0.037621, -0.962693,
		-0.816420, -0.521663, -0.247640,
		-0.511518, 0.852322, -0.109075,
		11.925556, 11.850303, 14.185196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724537, 11.617694, 13.654187>,  <12.283619, 11.253677, 14.261548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724537, 11.617694, 13.654187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508298, 11.373240, 13.422923>,  <12.378554, 11.226568, 13.284164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508298, 11.373240, 13.422923>,  <12.724537, 11.617694, 13.654187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508298, 11.373240, 13.422923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018308, -0.695621, 0.718176,
		-0.841082, 0.377660, 0.387239,
		-0.540598, -0.611134, -0.578160,
		12.346119, 11.189900, 13.249475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099054, 11.418940, 14.177422>,  <12.724537, 11.617694, 13.654187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099054, 11.418940, 14.177422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.405170, 11.297410, 13.950434>,  <13.588840, 11.224492, 13.814241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.405170, 11.297410, 13.950434>,  <13.099054, 11.418940, 14.177422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405170, 11.297410, 13.950434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629458, -0.168913, -0.758453,
		0.134584, 0.937635, -0.320512,
		0.765290, -0.303824, -0.567469,
		13.634758, 11.206263, 13.780193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.143647, 11.066014, 14.850188>,  <13.099054, 11.418940, 14.177422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.143647, 11.066014, 14.850188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498449, 11.244293, 14.898484>,  <13.711330, 11.351260, 14.927462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.498449, 11.244293, 14.898484>,  <13.143647, 11.066014, 14.850188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498449, 11.244293, 14.898484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001577, -0.264398, 0.964413,
		0.461759, -0.855247, -0.235224,
		0.887004, 0.445697, 0.120739,
		13.764550, 11.378002, 14.934706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563027, 10.529452, 15.195174>,  <13.143647, 11.066014, 14.850188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563027, 10.529452, 15.195174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753492, 10.879230, 15.232301>,  <13.867771, 11.089097, 15.254577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753492, 10.879230, 15.232301>,  <13.563027, 10.529452, 15.195174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753492, 10.879230, 15.232301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249419, -0.235519, 0.939319,
		0.843244, -0.424118, -0.330248,
		0.476162, 0.874445, 0.092817,
		13.896341, 11.141564, 15.260146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060835, 10.384144, 15.697605>,  <13.563027, 10.529452, 15.195174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060835, 10.384144, 15.697605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043695, 10.781721, 15.738087>,  <14.033412, 11.020267, 15.762376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043695, 10.781721, 15.738087>,  <14.060835, 10.384144, 15.697605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043695, 10.781721, 15.738087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097042, -0.096677, 0.990574,
		0.994358, 0.052265, -0.092312,
		-0.042848, 0.993943, 0.101203,
		14.030841, 11.079904, 15.768448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.491344, 10.557263, 16.231537>,  <14.060835, 10.384144, 15.697605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.491344, 10.557263, 16.231537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306761, 10.908248, 16.179205>,  <14.196011, 11.118839, 16.147806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306761, 10.908248, 16.179205>,  <14.491344, 10.557263, 16.231537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306761, 10.908248, 16.179205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142102, 0.218673, 0.965396,
		0.875707, 0.426899, -0.225598,
		-0.461458, 0.877462, -0.130830,
		14.168324, 11.171487, 16.139956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920129, 11.106722, 16.630234>,  <14.491344, 10.557263, 16.231537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.920129, 11.106722, 16.630234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540494, 11.232628, 16.625229>,  <14.312713, 11.308171, 16.622227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540494, 11.232628, 16.625229>,  <14.920129, 11.106722, 16.630234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.540494, 11.232628, 16.625229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031868, 0.135452, 0.990271,
		0.313397, 0.939455, -0.138587,
		-0.949087, 0.314765, -0.012511,
		14.255768, 11.327057, 16.621475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873027, 11.442913, 17.218632>,  <14.920129, 11.106722, 16.630234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873027, 11.442913, 17.218632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491644, 11.401490, 17.105356>,  <14.262815, 11.376637, 17.037392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491644, 11.401490, 17.105356>,  <14.873027, 11.442913, 17.218632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491644, 11.401490, 17.105356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287027, 0.023965, 0.957623,
		-0.092382, 0.994335, -0.052573,
		-0.953458, -0.103557, -0.283187,
		14.205606, 11.370423, 17.020401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572973, 12.015398, 17.469851>,  <14.873027, 11.442913, 17.218632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572973, 12.015398, 17.469851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291341, 11.741006, 17.396420>,  <14.122361, 11.576370, 17.352360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291341, 11.741006, 17.396420>,  <14.572973, 12.015398, 17.469851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.291341, 11.741006, 17.396420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269689, 0.019155, 0.962757,
		-0.656916, 0.727368, -0.198488,
		-0.704081, -0.685980, -0.183580,
		14.080116, 11.535212, 17.341345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.954102, 12.238802, 17.864075>,  <14.572973, 12.015398, 17.469851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.954102, 12.238802, 17.864075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868911, 11.855779, 17.786386>,  <13.817797, 11.625964, 17.739773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868911, 11.855779, 17.786386>,  <13.954102, 12.238802, 17.864075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.868911, 11.855779, 17.786386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509610, -0.060735, 0.858259,
		-0.833630, 0.281766, -0.475047,
		-0.212976, -0.957559, -0.194222,
		13.805018, 11.568511, 17.728121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.222232, 12.104425, 17.918978>,  <13.954102, 12.238802, 17.864075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.222232, 12.104425, 17.918978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433600, 11.769667, 17.976070>,  <13.560422, 11.568811, 18.010326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433600, 11.769667, 17.976070>,  <13.222232, 12.104425, 17.918978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433600, 11.769667, 17.976070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529060, -0.193122, 0.826317,
		-0.663978, -0.512158, -0.544819,
		0.528421, -0.836898, 0.142734,
		13.592127, 11.518598, 18.018890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690989, 11.623122, 18.104418>,  <13.222232, 12.104425, 17.918978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690989, 11.623122, 18.104418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.042530, 11.470054, 18.218390>,  <13.253454, 11.378212, 18.286772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.042530, 11.470054, 18.218390>,  <12.690989, 11.623122, 18.104418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.042530, 11.470054, 18.218390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392957, -0.241907, 0.887167,
		-0.270570, -0.891651, -0.362974,
		0.878850, -0.382674, 0.284928,
		13.306185, 11.355252, 18.303867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.408824, 11.257189, 18.599461>,  <12.690989, 11.623122, 18.104418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.408824, 11.257189, 18.599461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798850, 11.274390, 18.686546>,  <13.032866, 11.284711, 18.738798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798850, 11.274390, 18.686546>,  <12.408824, 11.257189, 18.599461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798850, 11.274390, 18.686546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204371, -0.208374, 0.956458,
		0.086499, -0.977103, -0.194389,
		0.975064, 0.043006, 0.217716,
		13.091370, 11.287292, 18.751862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.582867, 10.605453, 19.053114>,  <12.408824, 11.257189, 18.599461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.582867, 10.605453, 19.053114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.854055, 10.887715, 19.135487>,  <13.016768, 11.057073, 19.184910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.854055, 10.887715, 19.135487>,  <12.582867, 10.605453, 19.053114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.854055, 10.887715, 19.135487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133826, -0.156976, 0.978493,
		0.722804, -0.690949, -0.011990,
		0.677971, 0.705654, 0.205930,
		13.057446, 11.099412, 19.197266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.943102, 10.346998, 19.602736>,  <12.582867, 10.605453, 19.053114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.943102, 10.346998, 19.602736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.019581, 10.739028, 19.624264>,  <13.065469, 10.974246, 19.637180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.019581, 10.739028, 19.624264>,  <12.943102, 10.346998, 19.602736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.019581, 10.739028, 19.624264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227553, -0.009081, 0.973723,
		0.954810, -0.198422, 0.221283,
		0.191198, 0.980074, 0.053822,
		13.076941, 11.033051, 19.640409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258066, 10.281219, 20.219988>,  <12.943102, 10.346998, 19.602736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258066, 10.281219, 20.219988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214308, 10.675356, 20.167627>,  <13.188052, 10.911838, 20.136211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214308, 10.675356, 20.167627>,  <13.258066, 10.281219, 20.219988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214308, 10.675356, 20.167627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314920, 0.090550, 0.944789,
		0.942793, 0.144580, 0.300398,
		-0.109397, 0.985341, -0.130901,
		13.181489, 10.970959, 20.128357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.566257, 10.684505, 20.815830>,  <13.258066, 10.281219, 20.219988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.566257, 10.684505, 20.815830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356792, 10.977639, 20.642056>,  <13.231114, 11.153520, 20.537790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356792, 10.977639, 20.642056>,  <13.566257, 10.684505, 20.815830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.356792, 10.977639, 20.642056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336255, 0.290750, 0.895766,
		0.782760, 0.615158, 0.094165,
		-0.523659, 0.732834, -0.434437,
		13.199695, 11.197490, 20.511724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766165, 11.218122, 21.231882>,  <13.566257, 10.684505, 20.815830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766165, 11.218122, 21.231882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409515, 11.325593, 21.086105>,  <13.195526, 11.390076, 20.998638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409515, 11.325593, 21.086105>,  <13.766165, 11.218122, 21.231882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.409515, 11.325593, 21.086105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343367, 0.123432, 0.931055,
		0.295139, 0.955289, -0.017799,
		-0.891623, 0.268679, -0.364444,
		13.142029, 11.406197, 20.976772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638244, 11.979427, 21.512379>,  <13.766165, 11.218122, 21.231882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.638244, 11.979427, 21.512379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291665, 11.813549, 21.401169>,  <13.083718, 11.714022, 21.334442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291665, 11.813549, 21.401169>,  <13.638244, 11.979427, 21.512379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.291665, 11.813549, 21.401169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363123, 0.141240, 0.920974,
		-0.342655, 0.898932, -0.272962,
		-0.866446, -0.414696, -0.278027,
		13.031732, 11.689140, 21.317760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.012496, 12.510679, 21.608406>,  <13.638244, 11.979427, 21.512379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.012496, 12.510679, 21.608406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.872543, 12.136035, 21.601013>,  <12.788572, 11.911248, 21.596579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.872543, 12.136035, 21.601013>,  <13.012496, 12.510679, 21.608406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.872543, 12.136035, 21.601013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587711, 0.204097, 0.782905,
		-0.729506, 0.284785, -0.621867,
		-0.349881, -0.936612, -0.018481,
		12.767579, 11.855051, 21.595469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.387222, 12.623094, 21.670483>,  <13.012496, 12.510679, 21.608406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.387222, 12.623094, 21.670483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.421375, 12.246037, 21.799562>,  <12.441867, 12.019802, 21.877010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.421375, 12.246037, 21.799562>,  <12.387222, 12.623094, 21.670483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.421375, 12.246037, 21.799562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555833, 0.223734, 0.800620,
		-0.826897, -0.247725, -0.504850,
		0.085382, -0.942643, 0.322698,
		12.446990, 11.963243, 21.896372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.715041, 12.418671, 21.910872>,  <12.387222, 12.623094, 21.670483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.715041, 12.418671, 21.910872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.961025, 12.161949, 22.094135>,  <12.108616, 12.007916, 22.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.961025, 12.161949, 22.094135>,  <11.715041, 12.418671, 21.910872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961025, 12.161949, 22.094135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603061, -0.008424, 0.797650,
		-0.508075, -0.766823, -0.392227,
		0.614961, -0.641803, 0.458162,
		12.145514, 11.969408, 22.231585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.316103, 12.112984, 22.425423>,  <11.715041, 12.418671, 21.910872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.316103, 12.112984, 22.425423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682698, 12.008405, 22.546547>,  <11.902656, 11.945658, 22.619221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682698, 12.008405, 22.546547>,  <11.316103, 12.112984, 22.425423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.682698, 12.008405, 22.546547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318965, -0.020666, 0.947541,
		-0.241476, -0.964996, -0.102333,
		0.916488, -0.261449, 0.302809,
		11.957644, 11.929971, 22.637390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.226967, 11.628196, 22.943398>,  <11.316103, 12.112984, 22.425423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.226967, 11.628196, 22.943398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598211, 11.757801, 23.016747>,  <11.820958, 11.835565, 23.060757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598211, 11.757801, 23.016747>,  <11.226967, 11.628196, 22.943398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598211, 11.757801, 23.016747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189292, -0.013447, 0.981829,
		0.320592, -0.945957, 0.048853,
		0.928111, 0.324014, 0.183373,
		11.876644, 11.855005, 23.071758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.490706, 11.180787, 23.412922>,  <11.226967, 11.628196, 22.943398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.490706, 11.180787, 23.412922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703194, 11.515067, 23.468653>,  <11.830687, 11.715635, 23.502090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703194, 11.515067, 23.468653>,  <11.490706, 11.180787, 23.412922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703194, 11.515067, 23.468653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129963, -0.082124, 0.988112,
		0.837207, -0.543011, 0.064984,
		0.531219, 0.835700, 0.139326,
		11.862559, 11.765778, 23.510450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.964880, 10.933700, 24.116924>,  <11.490706, 11.180787, 23.412922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.964880, 10.933700, 24.116924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004514, 11.325027, 24.044178>,  <12.028295, 11.559824, 24.000530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004514, 11.325027, 24.044178>,  <11.964880, 10.933700, 24.116924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004514, 11.325027, 24.044178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074536, 0.189547, 0.979038,
		0.992283, -0.083452, 0.091701,
		0.099085, 0.978319, -0.181864,
		12.034239, 11.618523, 23.989618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561576, 11.154586, 24.485939>,  <11.964880, 10.933700, 24.116924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561576, 11.154586, 24.485939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301194, 11.457160, 24.460442>,  <12.144965, 11.638704, 24.445143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301194, 11.457160, 24.460442>,  <12.561576, 11.154586, 24.485939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301194, 11.457160, 24.460442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052025, 0.039319, 0.997872,
		0.757332, 0.652885, 0.013759,
		-0.650955, 0.756436, -0.063744,
		12.105907, 11.684091, 24.441319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671207, 11.639586, 25.099161>,  <12.561576, 11.154586, 24.485939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.671207, 11.639586, 25.099161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.321012, 11.768135, 24.954803>,  <12.110896, 11.845264, 24.868189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.321012, 11.768135, 24.954803>,  <12.671207, 11.639586, 25.099161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.321012, 11.768135, 24.954803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176669, 0.482265, 0.858026,
		0.449791, 0.814948, -0.365440,
		-0.875486, 0.321371, -0.360895,
		12.058367, 11.864546, 24.846535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
