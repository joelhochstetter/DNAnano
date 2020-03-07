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
	<2.038562, 4.037384, 2.983472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.256966, 3.803604, 3.223570>,  <2.388008, 3.663337, 3.367629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.256966, 3.803604, 3.223570>,  <2.038562, 4.037384, 2.983472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.256966, 3.803604, 3.223570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099134, 0.756510, 0.646424,
		-0.831894, -0.293448, 0.471000,
		0.546008, -0.584449, 0.600245,
		2.420768, 3.628269, 3.403644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.802343, 4.292215, 3.668904>,  <2.038562, 4.037384, 2.983472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.802343, 4.292215, 3.668904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.150887, 4.096642, 3.685287>,  <2.360013, 3.979298, 3.695118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.150887, 4.096642, 3.685287>,  <1.802343, 4.292215, 3.668904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.150887, 4.096642, 3.685287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386991, 0.736193, 0.555209,
		-0.301614, -0.467936, 0.830701,
		0.871359, -0.488933, 0.040959,
		2.412294, 3.949962, 3.697575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064216, 4.327451, 4.383433>,  <1.802343, 4.292215, 3.668904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064216, 4.327451, 4.383433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.346901, 4.263226, 4.107817>,  <2.516512, 4.224690, 3.942447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.346901, 4.263226, 4.107817>,  <2.064216, 4.327451, 4.383433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.346901, 4.263226, 4.107817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550668, 0.736308, 0.393212,
		0.444212, -0.657320, 0.608774,
		0.706711, -0.160563, -0.689042,
		2.558914, 4.215057, 3.901104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.724358, 4.082696, 4.676127>,  <2.064216, 4.327451, 4.383433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.724358, 4.082696, 4.676127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.758728, 4.287006, 4.333963>,  <2.779350, 4.409593, 4.128665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.758728, 4.287006, 4.333963>,  <2.724358, 4.082696, 4.676127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.758728, 4.287006, 4.333963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560516, 0.685036, 0.465348,
		0.823674, -0.519456, -0.227436,
		0.085925, 0.510776, -0.855409,
		2.784506, 4.440239, 4.077341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.454377, 4.098474, 4.555621>,  <2.724358, 4.082696, 4.676127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.454377, 4.098474, 4.555621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.268936, 4.389992, 4.354055>,  <3.157671, 4.564903, 4.233116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.268936, 4.389992, 4.354055>,  <3.454377, 4.098474, 4.555621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.268936, 4.389992, 4.354055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664799, 0.662091, 0.345944,
		0.585760, -0.174621, -0.791450,
		-0.463603, 0.728795, -0.503915,
		3.129855, 4.608630, 4.202881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.010947, 4.423754, 4.223089>,  <3.454377, 4.098474, 4.555621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.010947, 4.423754, 4.223089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.713684, 4.690567, 4.201979>,  <3.535326, 4.850655, 4.189312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.713684, 4.690567, 4.201979>,  <4.010947, 4.423754, 4.223089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.713684, 4.690567, 4.201979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627378, 0.722050, 0.291616,
		0.232624, 0.183606, -0.955078,
		-0.743157, 0.667032, -0.052776,
		3.490737, 4.890676, 4.186146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.169523, 4.998816, 3.861351>,  <4.010947, 4.423754, 4.223089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.169523, 4.998816, 3.861351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.874062, 5.141502, 4.090137>,  <3.696785, 5.227114, 4.227409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.874062, 5.141502, 4.090137>,  <4.169523, 4.998816, 3.861351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.874062, 5.141502, 4.090137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534809, 0.826625, 0.175131,
		-0.410330, 0.435253, -0.801364,
		-0.738654, 0.356715, 0.571966,
		3.652465, 5.248517, 4.261727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.066998, 5.776433, 3.577119>,  <4.169523, 4.998816, 3.861351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.066998, 5.776433, 3.577119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.911118, 5.722210, 3.941483>,  <3.817589, 5.689676, 4.160101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.911118, 5.722210, 3.941483>,  <4.066998, 5.776433, 3.577119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.911118, 5.722210, 3.941483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475905, 0.817162, 0.325207,
		-0.788446, 0.560240, -0.253936,
		-0.389701, -0.135558, 0.910910,
		3.794207, 5.681542, 4.214756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.423589, 1.824258, 4.691676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163361, 1.802593, 4.994680>,  <4.007223, 1.789594, 5.176483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163361, 1.802593, 4.994680>,  <4.423589, 1.824258, 4.691676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.163361, 1.802593, 4.994680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498170, -0.722433, -0.479497,
		0.573221, -0.689317, 0.443012,
		-0.650572, -0.054163, 0.757511,
		3.968189, 1.786344, 5.221934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436639, 1.085441, 5.023824>,  <4.423589, 1.824258, 4.691676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436639, 1.085441, 5.023824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099129, 1.299793, 5.011988>,  <3.896623, 1.428404, 5.004886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099129, 1.299793, 5.011988>,  <4.436639, 1.085441, 5.023824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.099129, 1.299793, 5.011988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455158, -0.743709, -0.489620,
		-0.284383, -0.399662, 0.871434,
		-0.843776, 0.535880, -0.029590,
		3.845996, 1.460557, 5.003111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.997272, 0.597788, 5.414062>,  <4.436639, 1.085441, 5.023824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.997272, 0.597788, 5.414062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880730, 0.846836, 5.123558>,  <3.810804, 0.996265, 4.949255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880730, 0.846836, 5.123558>,  <3.997272, 0.597788, 5.414062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880730, 0.846836, 5.123558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416550, -0.766017, -0.489596,
		-0.861161, 0.159877, 0.482536,
		-0.291356, 0.622621, -0.726261,
		3.793323, 1.033622, 4.905680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.283735, 0.451767, 5.410103>,  <3.997272, 0.597788, 5.414062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.283735, 0.451767, 5.410103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.405739, 0.575394, 5.049782>,  <3.478941, 0.649570, 4.833589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.405739, 0.575394, 5.049782>,  <3.283735, 0.451767, 5.410103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.405739, 0.575394, 5.049782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387428, -0.823799, -0.413829,
		-0.869982, 0.475218, -0.131525,
		0.305010, 0.309068, -0.900803,
		3.497242, 0.668114, 4.779541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.626142, 0.531884, 4.981346>,  <3.283735, 0.451767, 5.410103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.626142, 0.531884, 4.981346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.949036, 0.462479, 4.755686>,  <3.142772, 0.420835, 4.620290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.949036, 0.462479, 4.755686>,  <2.626142, 0.531884, 4.981346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.949036, 0.462479, 4.755686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491511, -0.726812, -0.479751,
		-0.326788, 0.664558, -0.671992,
		0.807234, -0.173514, -0.564151,
		3.191206, 0.410424, 4.586441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.469016, 0.693478, 4.315705>,  <2.626142, 0.531884, 4.981346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.469016, 0.693478, 4.315705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.782776, 0.449005, 4.273426>,  <2.971032, 0.302321, 4.248059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.782776, 0.449005, 4.273426>,  <2.469016, 0.693478, 4.315705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.782776, 0.449005, 4.273426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534393, -0.579423, -0.615380,
		0.314867, 0.539188, -0.781112,
		0.784400, -0.611184, -0.105698,
		3.018096, 0.265650, 4.241717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.645085, 0.584581, 3.551206>,  <2.469016, 0.693478, 4.315705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.645085, 0.584581, 3.551206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.768219, 0.278526, 3.777411>,  <2.842099, 0.094893, 3.913133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.768219, 0.278526, 3.777411>,  <2.645085, 0.584581, 3.551206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.768219, 0.278526, 3.777411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421547, -0.642533, -0.639882,
		0.852957, -0.041412, -0.520336,
		0.307835, -0.765138, 0.565510,
		2.860569, 0.048985, 3.947064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.613505, 0.167489, 3.030856>,  <2.645085, 0.584581, 3.551206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.613505, 0.167489, 3.030856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670555, -0.053337, 3.359461>,  <2.704785, -0.185833, 3.556624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670555, -0.053337, 3.359461>,  <2.613505, 0.167489, 3.030856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.670555, -0.053337, 3.359461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412489, -0.787639, -0.457688,
		0.899728, -0.273586, -0.340059,
		0.142626, -0.552065, 0.821512,
		2.713343, -0.218957, 3.605914>
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
