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
	<3.287397, 3.904189, 3.542224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.145446, 3.559669, 3.687675>,  <3.060275, 3.352958, 3.774946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.145446, 3.559669, 3.687675>,  <3.287397, 3.904189, 3.542224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.145446, 3.559669, 3.687675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839015, -0.464989, -0.282556,
		0.412448, 0.204817, 0.887658,
		-0.354879, -0.861298, 0.363628,
		3.038982, 3.301280, 3.796764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.716396, 3.485346, 3.995991>,  <3.287397, 3.904189, 3.542224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.716396, 3.485346, 3.995991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.453098, 3.237955, 3.824318>,  <3.295119, 3.089520, 3.721314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.453098, 3.237955, 3.824318>,  <3.716396, 3.485346, 3.995991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.453098, 3.237955, 3.824318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750436, -0.584274, -0.308983,
		-0.059661, -0.525461, 0.848723,
		-0.658245, -0.618478, -0.429183,
		3.255625, 3.052412, 3.695563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.725467, 2.733128, 4.314080>,  <3.716396, 3.485346, 3.995991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.725467, 2.733128, 4.314080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.642960, 2.798574, 3.928192>,  <3.593455, 2.837842, 3.696660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.642960, 2.798574, 3.928192>,  <3.725467, 2.733128, 4.314080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.642960, 2.798574, 3.928192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814800, -0.517198, -0.261931,
		-0.541806, -0.840082, -0.026632,
		-0.206270, 0.163615, -0.964719,
		3.581079, 2.847659, 3.638776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.769687, 2.128226, 4.003842>,  <3.725467, 2.733128, 4.314080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.769687, 2.128226, 4.003842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826792, 2.395645, 3.711906>,  <3.861055, 2.556097, 3.536745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826792, 2.395645, 3.711906>,  <3.769687, 2.128226, 4.003842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826792, 2.395645, 3.711906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663132, -0.612022, -0.430911,
		-0.734762, -0.422461, -0.530709,
		0.142763, 0.668547, -0.729838,
		3.869621, 2.596209, 3.492955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.632147, 1.774291, 3.427205>,  <3.769687, 2.128226, 4.003842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.632147, 1.774291, 3.427205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.856713, 2.087532, 3.320198>,  <3.991453, 2.275476, 3.255994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.856713, 2.087532, 3.320198>,  <3.632147, 1.774291, 3.427205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.856713, 2.087532, 3.320198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625306, -0.613185, -0.482697,
		-0.542037, 0.103714, -0.833930,
		0.561415, 0.783101, -0.267516,
		4.025138, 2.322463, 3.239943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.759098, 1.646793, 2.704773>,  <3.632147, 1.774291, 3.427205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.759098, 1.646793, 2.704773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.042107, 1.893269, 2.843178>,  <4.211912, 2.041154, 2.926221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.042107, 1.893269, 2.843178>,  <3.759098, 1.646793, 2.704773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.042107, 1.893269, 2.843178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685027, -0.477696, -0.550041,
		-0.173641, 0.626193, -0.760086,
		0.707522, 0.616189, 0.346012,
		4.254363, 2.078125, 2.946981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.093853, 1.836578, 2.073938>,  <3.759098, 1.646793, 2.704773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.093853, 1.836578, 2.073938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.327445, 1.927879, 2.385544>,  <4.467601, 1.982660, 2.572508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.327445, 1.927879, 2.385544>,  <4.093853, 1.836578, 2.073938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.327445, 1.927879, 2.385544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760880, -0.488339, -0.427301,
		0.282891, 0.842273, -0.458855,
		0.583982, 0.228254, 0.779016,
		4.502640, 1.996356, 2.619248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.703891, 2.015562, 1.751646>,  <4.093853, 1.836578, 2.073938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.703891, 2.015562, 1.751646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.787546, 1.909138, 2.128044>,  <4.837739, 1.845284, 2.353883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.787546, 1.909138, 2.128044>,  <4.703891, 2.015562, 1.751646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.787546, 1.909138, 2.128044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837257, -0.448451, -0.312877,
		0.505235, 0.853290, 0.128973,
		0.209137, -0.266059, 0.940996,
		4.850287, 1.829320, 2.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.390130, 0.504188, 2.134904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.651745, 0.746464, 2.316177>,  <5.808714, 0.891829, 2.424941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.651745, 0.746464, 2.316177>,  <5.390130, 0.504188, 2.134904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.651745, 0.746464, 2.316177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756457, 0.525604, 0.389247,
		-0.002432, -0.597396, 0.801943,
		0.654039, 0.605689, 0.453182,
		5.847957, 0.928171, 2.452132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.131123, 0.605496, 2.820691>,  <5.390130, 0.504188, 2.134904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.131123, 0.605496, 2.820691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.342010, 0.916042, 2.682533>,  <5.468543, 1.102370, 2.599639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.342010, 0.916042, 2.682533>,  <5.131123, 0.605496, 2.820691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.342010, 0.916042, 2.682533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689936, 0.628388, 0.359329,
		0.496012, 0.048854, 0.866940,
		0.527220, 0.776365, -0.345394,
		5.500176, 1.148952, 2.578915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.013657, 0.987872, 3.342335>,  <5.131123, 0.605496, 2.820691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.013657, 0.987872, 3.342335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.162321, 1.235909, 3.065971>,  <5.251520, 1.384730, 2.900153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.162321, 1.235909, 3.065971>,  <5.013657, 0.987872, 3.342335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.162321, 1.235909, 3.065971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581248, 0.735727, 0.347642,
		0.723893, 0.272388, 0.633864,
		0.371658, 0.620089, -0.690913,
		5.273819, 1.421936, 2.858698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.258218, 1.639154, 3.645059>,  <5.013657, 0.987872, 3.342335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.258218, 1.639154, 3.645059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.152563, 1.695053, 3.263336>,  <5.089170, 1.728593, 3.034302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.152563, 1.695053, 3.263336>,  <5.258218, 1.639154, 3.645059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.152563, 1.695053, 3.263336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466162, 0.847704, 0.253163,
		0.844349, 0.511732, -0.158764,
		-0.264136, 0.139748, -0.954307,
		5.073322, 1.736977, 2.977044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.393040, 2.322575, 3.531293>,  <5.258218, 1.639154, 3.645059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.393040, 2.322575, 3.531293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.123760, 2.169792, 3.278023>,  <4.962193, 2.078122, 3.126060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.123760, 2.169792, 3.278023>,  <5.393040, 2.322575, 3.531293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.123760, 2.169792, 3.278023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669426, 0.678536, 0.302419,
		0.314121, 0.627453, -0.712482,
		-0.673198, -0.381958, -0.633176,
		4.921801, 2.055205, 3.088070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.176360, 2.910480, 3.326046>,  <5.393040, 2.322575, 3.531293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.176360, 2.910480, 3.326046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.887131, 2.657322, 3.215332>,  <4.713593, 2.505427, 3.148904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.887131, 2.657322, 3.215332>,  <5.176360, 2.910480, 3.326046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.887131, 2.657322, 3.215332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661025, 0.750279, 0.011274,
		0.200530, 0.191114, -0.960866,
		-0.723072, -0.632896, -0.276784,
		4.670209, 2.467453, 3.132297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.724117, 3.287295, 2.736567>,  <5.176360, 2.910480, 3.326046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.724117, 3.287295, 2.736567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.518866, 2.989578, 2.907555>,  <4.395715, 2.810948, 3.010147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.518866, 2.989578, 2.907555>,  <4.724117, 3.287295, 2.736567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.518866, 2.989578, 2.907555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761703, 0.624431, 0.172898,
		-0.395611, -0.236885, -0.887343,
		-0.513128, -0.744292, 0.427468,
		4.364927, 2.766290, 3.035795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.114423, 3.473521, 2.541812>,  <4.724117, 3.287295, 2.736567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.114423, 3.473521, 2.541812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.025726, 3.202286, 2.822105>,  <3.972508, 3.039545, 2.990282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.025726, 3.202286, 2.822105>,  <4.114423, 3.473521, 2.541812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.025726, 3.202286, 2.822105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795440, 0.541446, 0.272236,
		-0.564009, -0.497025, -0.659439,
		-0.221742, -0.678087, 0.700734,
		3.959203, 2.998859, 3.032326>
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
