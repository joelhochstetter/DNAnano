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
	<5.902340, -0.467812, 1.624353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.809341, -0.142929, 1.838367>,  <5.753542, 0.052001, 1.966776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.809341, -0.142929, 1.838367>,  <5.902340, -0.467812, 1.624353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.809341, -0.142929, 1.838367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475552, 0.384936, -0.790996,
		-0.848408, -0.438342, 0.296751,
		-0.232496, 0.812207, 0.535037,
		5.739593, 0.100733, 1.998879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.084122, -0.414050, 1.639397>,  <5.902340, -0.467812, 1.624353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.084122, -0.414050, 1.639397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.255188, -0.053070, 1.660137>,  <5.357828, 0.163518, 1.672581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.255188, -0.053070, 1.660137>,  <5.084122, -0.414050, 1.639397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.255188, -0.053070, 1.660137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624409, 0.336407, -0.704942,
		-0.653617, 0.269104, 0.707367,
		0.427666, 0.902449, 0.051851,
		5.383488, 0.217665, 1.675692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.575318, 0.172289, 1.827377>,  <5.084122, -0.414050, 1.639397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.575318, 0.172289, 1.827377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.859528, 0.316086, 1.585411>,  <5.030053, 0.402364, 1.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.859528, 0.316086, 1.585411>,  <4.575318, 0.172289, 1.827377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.859528, 0.316086, 1.585411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702419, 0.413679, -0.579205,
		0.042021, 0.836442, 0.546442,
		0.710523, 0.359492, -0.604916,
		5.072684, 0.423933, 1.403936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.568648, 0.868950, 1.690291>,  <4.575318, 0.172289, 1.827377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.568648, 0.868950, 1.690291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.739780, 0.706146, 1.367477>,  <4.842460, 0.608464, 1.173789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.739780, 0.706146, 1.367477>,  <4.568648, 0.868950, 1.690291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.739780, 0.706146, 1.367477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586240, 0.554643, -0.590503,
		0.687956, 0.725751, -0.001312,
		0.427830, -0.407009, -0.807035,
		4.868129, 0.584043, 1.125367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.752781, 1.395743, 1.321143>,  <4.568648, 0.868950, 1.690291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.752781, 1.395743, 1.321143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.697735, 1.082825, 1.078136>,  <4.664707, 0.895074, 0.932333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.697735, 1.082825, 1.078136>,  <4.752781, 1.395743, 1.321143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.697735, 1.082825, 1.078136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574107, 0.562810, -0.594682,
		0.807133, 0.266941, -0.526573,
		-0.137615, -0.782296, -0.607515,
		4.656450, 0.848136, 0.895882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.896080, 1.673685, 0.628119>,  <4.752781, 1.395743, 1.321143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.896080, 1.673685, 0.628119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.682487, 1.337204, 0.594078>,  <4.554332, 1.135315, 0.573653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.682487, 1.337204, 0.594078>,  <4.896080, 1.673685, 0.628119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.682487, 1.337204, 0.594078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530625, 0.411783, -0.740859,
		0.658257, -0.350446, -0.666247,
		-0.533980, -0.841203, -0.085103,
		4.522294, 1.084843, 0.568547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.882741, 1.509886, -0.215694>,  <4.896080, 1.673685, 0.628119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.882741, 1.509886, -0.215694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.606518, 1.330444, 0.011246>,  <4.440784, 1.222780, 0.147409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.606518, 1.330444, 0.011246>,  <4.882741, 1.509886, -0.215694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.606518, 1.330444, 0.011246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710727, 0.275386, -0.647325,
		0.134152, -0.850246, -0.509003,
		-0.690558, -0.448602, 0.567349,
		4.399350, 1.195863, 0.181450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.422220, 1.163707, -0.704406>,  <4.882741, 1.509886, -0.215694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.422220, 1.163707, -0.704406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.190571, 1.222946, -0.383736>,  <4.051581, 1.258490, -0.191334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.190571, 1.222946, -0.383736>,  <4.422220, 1.163707, -0.704406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.190571, 1.222946, -0.383736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751145, 0.285264, -0.595320,
		-0.316856, -0.946938, -0.053959,
		-0.579123, 0.148100, 0.801675,
		4.016834, 1.267376, -0.143233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.022845, 1.827668, -1.219004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.863339, 2.052155, -0.928894>,  <2.767636, 2.186846, -0.754828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.863339, 2.052155, -0.928894>,  <3.022845, 1.827668, -1.219004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.863339, 2.052155, -0.928894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164391, -0.734320, 0.658597,
		0.902200, 0.381853, 0.200561,
		-0.398763, 0.561216, 0.725276,
		2.743711, 2.220519, -0.711311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.550727, 2.147770, -0.711928>,  <3.022845, 1.827668, -1.219004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.550727, 2.147770, -0.711928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.191335, 2.036362, -0.576187>,  <2.975700, 1.969517, -0.494742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.191335, 2.036362, -0.576187>,  <3.550727, 2.147770, -0.711928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.191335, 2.036362, -0.576187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429100, -0.720494, 0.544758,
		0.092776, 0.635071, 0.766862,
		-0.898480, -0.278520, 0.339353,
		2.921791, 1.952806, -0.474381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.556306, 2.229076, 0.004923>,  <3.550727, 2.147770, -0.711928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.556306, 2.229076, 0.004923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.303845, 1.933945, -0.090790>,  <3.152369, 1.756866, -0.148218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.303845, 1.933945, -0.090790>,  <3.556306, 2.229076, 0.004923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.303845, 1.933945, -0.090790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565719, -0.648927, 0.508779,
		-0.530669, 0.185750, 0.826975,
		-0.631152, -0.737828, -0.239283,
		3.114500, 1.712596, -0.162575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.228542, 1.921028, 0.646331>,  <3.556306, 2.229076, 0.004923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.228542, 1.921028, 0.646331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.298079, 1.679306, 0.335308>,  <3.339802, 1.534273, 0.148694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.298079, 1.679306, 0.335308>,  <3.228542, 1.921028, 0.646331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.298079, 1.679306, 0.335308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719874, -0.460804, 0.519076,
		-0.671981, -0.649981, 0.354916,
		0.173843, -0.604304, -0.777557,
		3.350233, 1.498015, 0.102041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175904, 1.236326, 0.862309>,  <3.228542, 1.921028, 0.646331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175904, 1.236326, 0.862309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434215, 1.240723, 0.556931>,  <3.589201, 1.243361, 0.373703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434215, 1.240723, 0.556931>,  <3.175904, 1.236326, 0.862309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.434215, 1.240723, 0.556931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562827, -0.682522, 0.466251,
		-0.515944, -0.730782, -0.446944,
		0.645777, 0.010993, -0.763447,
		3.627948, 1.244020, 0.327896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.341252, 0.539812, 0.726128>,  <3.175904, 1.236326, 0.862309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.341252, 0.539812, 0.726128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.642375, 0.753510, 0.572315>,  <3.823049, 0.881728, 0.480027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.642375, 0.753510, 0.572315>,  <3.341252, 0.539812, 0.726128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.642375, 0.753510, 0.572315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657183, -0.643116, 0.393080,
		-0.037299, -0.548622, -0.835238,
		0.752807, 0.534243, -0.384533,
		3.868217, 0.913782, 0.456955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.740173, 0.066641, 0.479269>,  <3.341252, 0.539812, 0.726128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.740173, 0.066641, 0.479269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.987365, 0.379791, 0.508125>,  <4.135680, 0.567682, 0.525439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.987365, 0.379791, 0.508125>,  <3.740173, 0.066641, 0.479269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.987365, 0.379791, 0.508125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727683, -0.604312, 0.324475,
		0.297620, -0.148024, -0.943139,
		0.617980, 0.782877, 0.072141,
		4.172759, 0.614654, 0.529768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.348134, -0.196417, 0.166123>,  <3.740173, 0.066641, 0.479269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.348134, -0.196417, 0.166123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.441941, 0.115173, 0.398743>,  <4.498226, 0.302128, 0.538314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.441941, 0.115173, 0.398743>,  <4.348134, -0.196417, 0.166123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.441941, 0.115173, 0.398743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756523, -0.521928, 0.394036,
		0.610470, 0.347546, -0.711715,
		0.234518, 0.778976, 0.581548,
		4.512297, 0.348866, 0.573207>
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
