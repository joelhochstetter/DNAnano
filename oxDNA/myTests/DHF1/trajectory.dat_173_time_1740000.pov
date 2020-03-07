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
	<3.369768, -0.249535, 1.484804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.615044, 0.061012, 1.543114>,  <3.762209, 0.247341, 1.578100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.615044, 0.061012, 1.543114>,  <3.369768, -0.249535, 1.484804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.615044, 0.061012, 1.543114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369019, -0.118366, -0.921854,
		-0.698443, 0.619065, -0.359076,
		0.613190, 0.776368, 0.145775,
		3.799001, 0.293923, 1.586846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.733940, 0.213087, 1.392951>,  <3.369768, -0.249535, 1.484804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.733940, 0.213087, 1.392951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.383255, 0.404648, 1.374931>,  <2.172844, 0.519584, 1.364119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.383255, 0.404648, 1.374931>,  <2.733940, 0.213087, 1.392951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.383255, 0.404648, 1.374931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132562, -0.330578, -0.934423,
		-0.462391, -0.813246, 0.353306,
		-0.876711, 0.478904, -0.045051,
		2.120242, 0.548319, 1.361416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.980249, -0.215743, 1.307662>,  <2.733940, 0.213087, 1.392951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.980249, -0.215743, 1.307662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.011948, 0.144859, 1.137482>,  <2.030967, 0.361221, 1.035373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.011948, 0.144859, 1.137482>,  <1.980249, -0.215743, 1.307662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.011948, 0.144859, 1.137482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059615, -0.430315, -0.900708,
		-0.995071, 0.046015, -0.087844,
		0.079247, 0.901505, -0.425451,
		2.035722, 0.415311, 1.009846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.584600, -0.110152, 0.635297>,  <1.980249, -0.215743, 1.307662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.584600, -0.110152, 0.635297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876060, 0.162552, 0.609161>,  <2.050937, 0.326174, 0.593480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876060, 0.162552, 0.609161>,  <1.584600, -0.110152, 0.635297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.876060, 0.162552, 0.609161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209424, -0.312623, -0.926503,
		-0.652080, 0.661414, -0.370570,
		0.728652, 0.681761, -0.065340,
		2.094656, 0.367080, 0.589559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.472766, 0.424500, 0.155055>,  <1.584600, -0.110152, 0.635297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.472766, 0.424500, 0.155055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.872208, 0.411926, 0.172035>,  <2.111873, 0.404382, 0.182223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.872208, 0.411926, 0.172035>,  <1.472766, 0.424500, 0.155055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.872208, 0.411926, 0.172035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033012, -0.255986, -0.966117,
		0.041236, 0.966169, -0.254591,
		0.998604, -0.031434, 0.042451,
		2.171789, 0.402496, 0.184771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.701329, 0.737238, -0.438088>,  <1.472766, 0.424500, 0.155055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.701329, 0.737238, -0.438088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.052856, 0.579811, -0.330177>,  <2.263773, 0.485355, -0.265431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.052856, 0.579811, -0.330177>,  <1.701329, 0.737238, -0.438088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.052856, 0.579811, -0.330177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249223, -0.103530, -0.962896,
		0.406895, 0.913447, 0.007102,
		0.878820, -0.393568, 0.269778,
		2.316502, 0.461741, -0.249244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.150994, 1.100137, -0.861093>,  <1.701329, 0.737238, -0.438088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.150994, 1.100137, -0.861093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.350540, 0.774590, -0.741928>,  <2.470268, 0.579261, -0.670429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.350540, 0.774590, -0.741928>,  <2.150994, 1.100137, -0.861093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.350540, 0.774590, -0.741928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193291, -0.230603, -0.953656,
		0.844850, 0.533330, 0.042274,
		0.498865, -0.813868, 0.297913,
		2.500200, 0.530429, -0.652554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.846857, 1.144545, -1.036136>,  <2.150994, 1.100137, -0.861093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.846857, 1.144545, -1.036136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.775238, 0.751495, -1.016563>,  <2.732267, 0.515666, -1.004820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.775238, 0.751495, -1.016563>,  <2.846857, 1.144545, -1.036136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.775238, 0.751495, -1.016563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369486, -0.113253, -0.922309,
		0.911824, -0.147057, 0.383343,
		-0.179047, -0.982623, 0.048931,
		2.721524, 0.456708, -1.001884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.935349, 5.350122, 2.451048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.766048, 4.988220, 2.431969>,  <2.664468, 4.771079, 2.420521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.766048, 4.988220, 2.431969>,  <2.935349, 5.350122, 2.451048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.766048, 4.988220, 2.431969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048276, -0.030051, 0.998382,
		-0.904725, 0.424869, -0.030958,
		-0.423252, -0.904756, -0.047699,
		2.639073, 4.716794, 2.417659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.260983, 5.303102, 2.873770>,  <2.935349, 5.350122, 2.451048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.260983, 5.303102, 2.873770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.443661, 4.947266, 2.870766>,  <2.553268, 4.733764, 2.868963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.443661, 4.947266, 2.870766>,  <2.260983, 5.303102, 2.873770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.443661, 4.947266, 2.870766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131608, 0.059211, 0.989532,
		-0.879834, -0.452904, 0.144119,
		0.456696, -0.889591, -0.007510,
		2.580669, 4.680388, 2.868513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.906324, 4.772511, 3.341614>,  <2.260983, 5.303102, 2.873770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.906324, 4.772511, 3.341614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.301311, 4.717178, 3.311226>,  <2.538304, 4.683979, 3.292993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.301311, 4.717178, 3.311226>,  <1.906324, 4.772511, 3.341614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.301311, 4.717178, 3.311226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109537, 0.254193, 0.960931,
		-0.113616, -0.957210, 0.266160,
		0.987468, -0.138332, -0.075970,
		2.597552, 4.675679, 3.288435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.062405, 4.313117, 3.886535>,  <1.906324, 4.772511, 3.341614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.062405, 4.313117, 3.886535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.378315, 4.530914, 3.773552>,  <2.567861, 4.661593, 3.705762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.378315, 4.530914, 3.773552>,  <2.062405, 4.313117, 3.886535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.378315, 4.530914, 3.773552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054106, 0.396850, 0.916288,
		0.611006, -0.738944, 0.283961,
		0.789775, 0.544494, -0.282459,
		2.615247, 4.694263, 3.688814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.787781, 4.180432, 4.143667>,  <2.062405, 4.313117, 3.886535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.787781, 4.180432, 4.143667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.771465, 4.578430, 4.107178>,  <2.761676, 4.817229, 4.085284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.771465, 4.578430, 4.107178>,  <2.787781, 4.180432, 4.143667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.771465, 4.578430, 4.107178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087753, 0.094514, 0.991648,
		0.995307, 0.032443, -0.091169,
		-0.040789, 0.994995, -0.091224,
		2.759229, 4.876929, 4.079811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.066514, 4.382971, 4.676848>,  <2.787781, 4.180432, 4.143667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.066514, 4.382971, 4.676848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944721, 4.748978, 4.570992>,  <2.871646, 4.968582, 4.507478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944721, 4.748978, 4.570992>,  <3.066514, 4.382971, 4.676848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944721, 4.748978, 4.570992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006757, 0.279900, 0.960006,
		0.952494, 0.290516, -0.091407,
		-0.304481, 0.915017, -0.264641,
		2.853377, 5.023483, 4.491599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.450123, 4.943626, 4.993485>,  <3.066514, 4.382971, 4.676848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.450123, 4.943626, 4.993485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.088223, 5.101822, 4.930222>,  <2.871082, 5.196739, 4.892263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.088223, 5.101822, 4.930222>,  <3.450123, 4.943626, 4.993485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.088223, 5.101822, 4.930222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022722, 0.325974, 0.945106,
		0.425334, 0.858679, -0.285939,
		-0.904751, 0.395489, -0.158159,
		2.816797, 5.220469, 4.882774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.442652, 5.508536, 5.418653>,  <3.450123, 4.943626, 4.993485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.442652, 5.508536, 5.418653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056595, 5.454971, 5.328705>,  <2.824961, 5.422832, 5.274735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056595, 5.454971, 5.328705>,  <3.442652, 5.508536, 5.418653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.056595, 5.454971, 5.328705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257675, 0.335618, 0.906071,
		-0.045862, 0.932431, -0.358425,
		-0.965143, -0.133911, -0.224872,
		2.767052, 5.414798, 5.261243>
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
