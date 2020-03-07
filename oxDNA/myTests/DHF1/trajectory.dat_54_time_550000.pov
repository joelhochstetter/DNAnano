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
	<4.860767, 2.630707, 3.109414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.748869, 3.012585, 3.150013>,  <4.681730, 3.241711, 3.174372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.748869, 3.012585, 3.150013>,  <4.860767, 2.630707, 3.109414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.748869, 3.012585, 3.150013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624575, -0.100678, -0.774448,
		-0.729142, -0.280041, 0.624442,
		-0.279745, 0.954694, 0.101498,
		4.664946, 3.298993, 3.180462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.734976, 2.411853, 2.457794>,  <4.860767, 2.630707, 3.109414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.734976, 2.411853, 2.457794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.662039, 2.691933, 2.181686>,  <4.618276, 2.859981, 2.016022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.662039, 2.691933, 2.181686>,  <4.734976, 2.411853, 2.457794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.662039, 2.691933, 2.181686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635328, 0.451889, 0.626222,
		0.750406, 0.552735, 0.362457,
		-0.182344, 0.700200, -0.690269,
		4.607336, 2.901993, 1.974606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.204337, 2.181023, 2.071707>,  <4.734976, 2.411853, 2.457794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.204337, 2.181023, 2.071707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188475, 2.401249, 2.405247>,  <4.178957, 2.533385, 2.605371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188475, 2.401249, 2.405247>,  <4.204337, 2.181023, 2.071707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188475, 2.401249, 2.405247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185804, 0.815888, -0.547543,
		-0.981786, -0.176645, 0.069943,
		-0.039655, 0.550566, 0.833849,
		4.176578, 2.566419, 2.655401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.521113, 2.543242, 2.255152>,  <4.204337, 2.181023, 2.071707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.521113, 2.543242, 2.255152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.837719, 2.769825, 2.346918>,  <4.027682, 2.905775, 2.401978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.837719, 2.769825, 2.346918>,  <3.521113, 2.543242, 2.255152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.837719, 2.769825, 2.346918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332627, 0.714202, -0.615853,
		-0.512704, 0.411146, 0.753720,
		0.791514, 0.566457, 0.229416,
		4.075173, 2.939762, 2.415743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.276624, 3.164080, 2.403562>,  <3.521113, 2.543242, 2.255152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.276624, 3.164080, 2.403562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.662125, 3.225914, 2.316580>,  <3.893425, 3.263015, 2.264391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.662125, 3.225914, 2.316580>,  <3.276624, 3.164080, 2.403562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.662125, 3.225914, 2.316580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253322, 0.785978, -0.563974,
		0.083732, 0.598617, 0.796647,
		0.963751, 0.154586, -0.217454,
		3.951250, 3.272290, 2.251343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.481672, 3.881729, 2.629163>,  <3.276624, 3.164080, 2.403562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.481672, 3.881729, 2.629163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.727600, 3.778625, 2.331020>,  <3.875157, 3.716763, 2.152135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.727600, 3.778625, 2.331020>,  <3.481672, 3.881729, 2.629163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.727600, 3.778625, 2.331020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092289, 0.915077, -0.392577,
		0.783249, 0.310153, 0.538819,
		0.614819, -0.257759, -0.745357,
		3.912046, 3.701298, 2.107413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.804410, 4.574425, 2.469251>,  <3.481672, 3.881729, 2.629163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.804410, 4.574425, 2.469251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.899496, 4.320744, 2.174965>,  <3.956548, 4.168535, 1.998393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.899496, 4.320744, 2.174965>,  <3.804410, 4.574425, 2.469251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.899496, 4.320744, 2.174965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081824, 0.741660, -0.665766,
		0.967882, 0.218462, 0.124410,
		0.237715, -0.634204, -0.735716,
		3.970811, 4.130483, 1.954250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.330059, 4.964173, 2.110903>,  <3.804410, 4.574425, 2.469251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.330059, 4.964173, 2.110903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.210857, 4.693386, 1.841709>,  <4.139337, 4.530914, 1.680193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.210857, 4.693386, 1.841709>,  <4.330059, 4.964173, 2.110903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.210857, 4.693386, 1.841709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069813, 0.718585, -0.691926,
		0.952009, -0.159213, -0.261402,
		-0.298003, -0.676969, -0.672985,
		4.121457, 4.490295, 1.639814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.173437, 5.794647, 1.213167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.003024, 5.474464, 1.044518>,  <2.900777, 5.282355, 0.943328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.003024, 5.474464, 1.044518>,  <3.173437, 5.794647, 1.213167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.003024, 5.474464, 1.044518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887275, -0.460721, -0.021867,
		-0.176747, -0.383412, 0.906508,
		-0.426032, -0.800457, -0.421623,
		2.875215, 5.234327, 0.918031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.363224, 5.178009, 1.493519>,  <3.173437, 5.794647, 1.213167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.363224, 5.178009, 1.493519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.214822, 5.035477, 1.150501>,  <3.125781, 4.949957, 0.944690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.214822, 5.035477, 1.150501>,  <3.363224, 5.178009, 1.493519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.214822, 5.035477, 1.150501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680224, -0.732932, 0.010261,
		-0.632179, -0.579516, 0.514306,
		-0.371005, -0.356330, -0.857545,
		3.103520, 4.928577, 0.893238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.993243, 4.496343, 1.585104>,  <3.363224, 5.178009, 1.493519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.993243, 4.496343, 1.585104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.201578, 4.531387, 1.245445>,  <3.326579, 4.552414, 1.041650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.201578, 4.531387, 1.245445>,  <2.993243, 4.496343, 1.585104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.201578, 4.531387, 1.245445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598010, -0.747302, 0.289697,
		-0.609189, -0.658684, -0.441615,
		0.520838, 0.087610, -0.849148,
		3.357830, 4.557671, 0.990701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.076042, 3.970301, 1.106185>,  <2.993243, 4.496343, 1.585104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.076042, 3.970301, 1.106185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.412983, 4.185822, 1.101498>,  <3.615147, 4.315134, 1.098685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.412983, 4.185822, 1.101498>,  <3.076042, 3.970301, 1.106185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.412983, 4.185822, 1.101498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480163, -0.740450, 0.470295,
		0.244719, -0.401780, -0.882432,
		0.842352, 0.538801, -0.011718,
		3.665689, 4.347462, 1.097982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.681062, 3.590521, 0.823062>,  <3.076042, 3.970301, 1.106185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.681062, 3.590521, 0.823062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.815778, 3.860474, 1.085697>,  <3.896608, 4.022445, 1.243278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.815778, 3.860474, 1.085697>,  <3.681062, 3.590521, 0.823062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.815778, 3.860474, 1.085697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411560, -0.732699, 0.542007,
		0.846871, 0.087682, -0.524520,
		0.336791, 0.674881, 0.656588,
		3.916815, 4.062938, 1.282674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.376352, 3.318900, 0.983082>,  <3.681062, 3.590521, 0.823062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.376352, 3.318900, 0.983082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.274532, 3.595650, 1.253345>,  <4.213440, 3.761700, 1.415504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.274532, 3.595650, 1.253345>,  <4.376352, 3.318900, 0.983082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.274532, 3.595650, 1.253345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376366, -0.572713, 0.728250,
		0.890816, 0.439670, -0.114615,
		-0.254549, 0.691874, 0.675659,
		4.198168, 3.803212, 1.456043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.967549, 3.408359, 1.390440>,  <4.376352, 3.318900, 0.983082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.967549, 3.408359, 1.390440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.635612, 3.490189, 1.598099>,  <4.436451, 3.539286, 1.722694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.635612, 3.490189, 1.598099>,  <4.967549, 3.408359, 1.390440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.635612, 3.490189, 1.598099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320523, -0.586811, 0.743584,
		0.456760, 0.783455, 0.421389,
		-0.829841, 0.204574, 0.519147,
		4.386660, 3.551561, 1.753843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.176138, 3.626116, 2.015347>,  <4.967549, 3.408359, 1.390440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.176138, 3.626116, 2.015347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.799719, 3.505424, 2.076519>,  <4.573867, 3.433010, 2.113223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.799719, 3.505424, 2.076519>,  <5.176138, 3.626116, 2.015347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.799719, 3.505424, 2.076519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287692, -0.476071, 0.831017,
		-0.177935, 0.826025, 0.534810,
		-0.941048, -0.301728, 0.152931,
		4.517405, 3.414906, 2.122398>
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
