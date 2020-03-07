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
	<1.379593, 3.833138, 1.274656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.562908, 3.489452, 1.183685>,  <1.672897, 3.283241, 1.129103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.562908, 3.489452, 1.183685>,  <1.379593, 3.833138, 1.274656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.562908, 3.489452, 1.183685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887740, 0.429982, 0.164418,
		-0.043482, -0.277245, 0.959815,
		0.458287, -0.859215, -0.227426,
		1.700394, 3.231688, 1.115458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.836962, 3.583026, 1.795689>,  <1.379593, 3.833138, 1.274656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.836962, 3.583026, 1.795689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.977905, 3.476997, 1.436672>,  <2.062471, 3.413380, 1.221262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.977905, 3.476997, 1.436672>,  <1.836962, 3.583026, 1.795689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.977905, 3.476997, 1.436672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886772, 0.401107, 0.229671,
		0.299131, -0.876841, 0.376392,
		0.352358, -0.265072, -0.897542,
		2.083613, 3.397476, 1.167410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.255440, 2.938776, 1.800662>,  <1.836962, 3.583026, 1.795689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.255440, 2.938776, 1.800662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.337841, 3.226215, 1.534977>,  <2.387282, 3.398679, 1.375566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.337841, 3.226215, 1.534977>,  <2.255440, 2.938776, 1.800662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.337841, 3.226215, 1.534977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764570, 0.305436, 0.567575,
		0.610734, -0.624758, -0.486499,
		0.206003, 0.718600, -0.664212,
		2.399642, 3.441795, 1.335713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.932135, 2.826375, 1.439713>,  <2.255440, 2.938776, 1.800662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.932135, 2.826375, 1.439713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.819939, 3.206322, 1.494961>,  <2.752621, 3.434290, 1.528109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.819939, 3.206322, 1.494961>,  <2.932135, 2.826375, 1.439713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.819939, 3.206322, 1.494961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806704, 0.155305, 0.570184,
		0.520148, 0.271351, -0.809824,
		-0.280490, 0.949868, 0.138118,
		2.735792, 3.491282, 1.536396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502060, 3.300822, 1.309538>,  <2.932135, 2.826375, 1.439713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502060, 3.300822, 1.309538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.251495, 3.528725, 1.522324>,  <3.101156, 3.665466, 1.649995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.251495, 3.528725, 1.522324>,  <3.502060, 3.300822, 1.309538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.251495, 3.528725, 1.522324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749965, 0.254472, 0.610570,
		0.212507, 0.781423, -0.586702,
		-0.626413, 0.569757, 0.531963,
		3.063571, 3.699652, 1.681912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.887169, 3.983495, 1.414235>,  <3.502060, 3.300822, 1.309538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.887169, 3.983495, 1.414235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.610462, 3.919113, 1.695816>,  <3.444438, 3.880484, 1.864765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.610462, 3.919113, 1.695816>,  <3.887169, 3.983495, 1.414235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.610462, 3.919113, 1.695816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667067, 0.230896, 0.708314,
		-0.276547, 0.959573, -0.052358,
		-0.691768, -0.160956, 0.703953,
		3.402932, 3.870826, 1.907002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.090241, 4.489051, 1.854547>,  <3.887169, 3.983495, 1.414235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.090241, 4.489051, 1.854547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.865097, 4.222961, 2.050777>,  <3.730011, 4.063308, 2.168516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.865097, 4.222961, 2.050777>,  <4.090241, 4.489051, 1.854547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.865097, 4.222961, 2.050777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651664, 0.007953, 0.758466,
		-0.508451, 0.746601, 0.429026,
		-0.562860, -0.665224, 0.490577,
		3.696239, 4.023394, 2.197951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.939383, 4.639265, 2.552037>,  <4.090241, 4.489051, 1.854547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.939383, 4.639265, 2.552037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.951229, 4.239552, 2.561455>,  <3.958337, 3.999723, 2.567105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.951229, 4.239552, 2.561455>,  <3.939383, 4.639265, 2.552037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.951229, 4.239552, 2.561455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671133, 0.037334, 0.740396,
		-0.740745, -0.006126, 0.671758,
		0.029615, -0.999284, 0.023544,
		3.960114, 3.939766, 2.568518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.676826, 4.169566, 3.475589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.639709, 3.773689, 3.431953>,  <4.617439, 3.536163, 3.405772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.639709, 3.773689, 3.431953>,  <4.676826, 4.169566, 3.475589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.639709, 3.773689, 3.431953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803239, 0.139149, -0.579175,
		0.588385, 0.033881, -0.807871,
		-0.092792, -0.989691, -0.109088,
		4.611872, 3.476782, 3.399227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.707517, 3.855240, 2.725730>,  <4.676826, 4.169566, 3.475589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.707517, 3.855240, 2.725730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.445030, 3.701714, 2.985596>,  <4.287538, 3.609598, 3.141515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.445030, 3.701714, 2.985596>,  <4.707517, 3.855240, 2.725730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.445030, 3.701714, 2.985596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704056, 0.001715, -0.710143,
		0.271450, -0.923408, -0.271353,
		-0.656217, -0.383816, 0.649665,
		4.248165, 3.586569, 3.180495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.341756, 3.309848, 2.440126>,  <4.707517, 3.855240, 2.725730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.341756, 3.309848, 2.440126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.118021, 3.501060, 2.711014>,  <3.983780, 3.615788, 2.873547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.118021, 3.501060, 2.711014>,  <4.341756, 3.309848, 2.440126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.118021, 3.501060, 2.711014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775084, -0.011929, -0.631746,
		-0.293917, -0.878261, 0.377188,
		-0.559337, 0.478032, 0.677220,
		3.950220, 3.644470, 2.914180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.614855, 2.908078, 2.623302>,  <4.341756, 3.309848, 2.440126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.614855, 2.908078, 2.623302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614164, 3.302521, 2.689743>,  <3.613750, 3.539186, 2.729608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.614164, 3.302521, 2.689743>,  <3.614855, 2.908078, 2.623302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.614164, 3.302521, 2.689743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660085, 0.123651, -0.740944,
		-0.751189, -0.110921, 0.650701,
		-0.001727, 0.986107, 0.166103,
		3.613646, 3.598353, 2.739574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.937134, 3.172107, 2.865254>,  <3.614855, 2.908078, 2.623302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.937134, 3.172107, 2.865254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.148188, 3.457428, 2.680733>,  <3.274820, 3.628621, 2.570020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.148188, 3.457428, 2.680733>,  <2.937134, 3.172107, 2.865254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.148188, 3.457428, 2.680733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733363, 0.108443, -0.671132,
		-0.428695, 0.692416, 0.580328,
		0.527635, 0.713302, -0.461303,
		3.306478, 3.671419, 2.542342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.494026, 3.728636, 2.800572>,  <2.937134, 3.172107, 2.865254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.494026, 3.728636, 2.800572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.777576, 3.769615, 2.521431>,  <2.947707, 3.794203, 2.353946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.777576, 3.769615, 2.521431>,  <2.494026, 3.728636, 2.800572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.777576, 3.769615, 2.521431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704568, 0.148914, -0.693836,
		0.032837, 0.983529, 0.177744,
		0.708877, 0.102449, -0.697853,
		2.990239, 3.800350, 2.312075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.258399, 4.353712, 2.425052>,  <2.494026, 3.728636, 2.800572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.258399, 4.353712, 2.425052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515179, 4.128807, 2.216530>,  <2.669247, 3.993864, 2.091416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515179, 4.128807, 2.216530>,  <2.258399, 4.353712, 2.425052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.515179, 4.128807, 2.216530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616019, 0.026610, -0.787282,
		0.456531, 0.826530, -0.329282,
		0.641950, -0.562263, -0.521306,
		2.707764, 3.960128, 2.060138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.252730, 4.681520, 1.796598>,  <2.258399, 4.353712, 2.425052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.252730, 4.681520, 1.796598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.369781, 4.304764, 1.730614>,  <2.440012, 4.078710, 1.691023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.369781, 4.304764, 1.730614>,  <2.252730, 4.681520, 1.796598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.369781, 4.304764, 1.730614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470675, 0.008288, -0.882267,
		0.832366, 0.335818, -0.440899,
		0.292627, -0.941890, -0.164960,
		2.457570, 4.022197, 1.681126>
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
