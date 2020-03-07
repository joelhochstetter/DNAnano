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
	<4.340108, 2.479065, 2.585502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.632104, 2.271815, 2.407215>,  <4.807301, 2.147465, 2.300243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.632104, 2.271815, 2.407215>,  <4.340108, 2.479065, 2.585502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.632104, 2.271815, 2.407215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365734, -0.847054, 0.385666,
		-0.577369, -0.118518, -0.807836,
		0.729989, -0.518124, -0.445717,
		4.851100, 2.116378, 2.273500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.979503, 1.964471, 2.172379>,  <4.340108, 2.479065, 2.585502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.979503, 1.964471, 2.172379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344492, 1.820471, 2.250139>,  <4.563486, 1.734071, 2.296795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344492, 1.820471, 2.250139>,  <3.979503, 1.964471, 2.172379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.344492, 1.820471, 2.250139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401165, -0.880583, 0.252270,
		0.080368, -0.308177, -0.947928,
		0.912474, -0.360001, 0.194400,
		4.618234, 1.712471, 2.308459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.975991, 1.350001, 1.799527>,  <3.979503, 1.964471, 2.172379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.975991, 1.350001, 1.799527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247983, 1.310779, 2.090185>,  <4.411178, 1.287245, 2.264580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247983, 1.310779, 2.090185>,  <3.975991, 1.350001, 1.799527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.247983, 1.310779, 2.090185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464416, -0.824484, 0.323332,
		0.567403, -0.557325, -0.606170,
		0.679979, -0.098055, 0.726645,
		4.451977, 1.281362, 2.308179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.348096, 0.764585, 1.771945>,  <3.975991, 1.350001, 1.799527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.348096, 0.764585, 1.771945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.314048, 0.875355, 2.154791>,  <4.293619, 0.941817, 2.384498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.314048, 0.875355, 2.154791>,  <4.348096, 0.764585, 1.771945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.314048, 0.875355, 2.154791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636213, -0.754381, 0.161686,
		0.766803, -0.595166, 0.240397,
		-0.085121, 0.276925, 0.957114,
		4.288512, 0.958432, 2.441925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.393634, 0.133126, 2.207209>,  <4.348096, 0.764585, 1.771945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.393634, 0.133126, 2.207209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176820, 0.407375, 2.401577>,  <4.046731, 0.571925, 2.518198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176820, 0.407375, 2.401577>,  <4.393634, 0.133126, 2.207209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.176820, 0.407375, 2.401577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647497, -0.709327, 0.278572,
		0.535672, -0.163637, 0.828419,
		-0.542036, 0.685623, 0.485921,
		4.014209, 0.613062, 2.547353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.451345, 0.079467, 2.893017>,  <4.393634, 0.133126, 2.207209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.451345, 0.079467, 2.893017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.112177, 0.288449, 2.857084>,  <3.908676, 0.413838, 2.835525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.112177, 0.288449, 2.857084>,  <4.451345, 0.079467, 2.893017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.112177, 0.288449, 2.857084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493443, -0.715904, 0.493960,
		0.193760, 0.463167, 0.864832,
		-0.847922, 0.522455, -0.089832,
		3.857800, 0.445186, 2.830135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.055672, 0.086906, 3.590803>,  <4.451345, 0.079467, 2.893017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.055672, 0.086906, 3.590803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.776104, 0.210662, 3.332876>,  <3.608363, 0.284915, 3.178120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.776104, 0.210662, 3.332876>,  <4.055672, 0.086906, 3.590803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.776104, 0.210662, 3.332876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660189, -0.625846, 0.415292,
		-0.275070, 0.715957, 0.641671,
		-0.698919, 0.309390, -0.644818,
		3.566428, 0.303479, 3.139431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.462105, 0.378713, 3.967852>,  <4.055672, 0.086906, 3.590803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.462105, 0.378713, 3.967852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353955, 0.223085, 3.615597>,  <3.289065, 0.129709, 3.404244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.353955, 0.223085, 3.615597>,  <3.462105, 0.378713, 3.967852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.353955, 0.223085, 3.615597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665404, -0.585555, 0.462995,
		-0.695799, 0.711161, -0.100569,
		-0.270375, -0.389070, -0.880637,
		3.272843, 0.106364, 3.351406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.016964, -0.328938, 3.926896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.969856, -0.371412, 3.531957>,  <1.941592, -0.396897, 3.294993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.969856, -0.371412, 3.531957>,  <2.016964, -0.328938, 3.926896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.969856, -0.371412, 3.531957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832738, 0.531105, -0.156446,
		0.540997, -0.840626, 0.025877,
		-0.117769, -0.106186, -0.987348,
		1.934525, -0.403268, 3.235752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.618859, -0.676402, 3.547131>,  <2.016964, -0.328938, 3.926896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.618859, -0.676402, 3.547131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431561, -0.439969, 3.284417>,  <2.319181, -0.298109, 3.126789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431561, -0.439969, 3.284417>,  <2.618859, -0.676402, 3.547131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.431561, -0.439969, 3.284417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856986, 0.484850, -0.174630,
		0.215221, -0.644625, -0.733580,
		-0.468247, 0.591083, -0.656784,
		2.291086, -0.262644, 3.087382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.855380, -0.646651, 2.749486>,  <2.618859, -0.676402, 3.547131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.855380, -0.646651, 2.749486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.735222, -0.298443, 2.905413>,  <2.663127, -0.089518, 2.998968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.735222, -0.298443, 2.905413>,  <2.855380, -0.646651, 2.749486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.735222, -0.298443, 2.905413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878163, 0.411933, -0.243191,
		-0.372280, 0.269268, -0.888202,
		-0.300396, 0.870521, 0.389816,
		2.645103, -0.037287, 3.022357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.856694, -0.099070, 2.240710>,  <2.855380, -0.646651, 2.749486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.856694, -0.099070, 2.240710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.921436, 0.032181, 2.612976>,  <2.960281, 0.110931, 2.836336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.921436, 0.032181, 2.612976>,  <2.856694, -0.099070, 2.240710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.921436, 0.032181, 2.612976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785297, 0.528287, -0.322833,
		-0.597588, 0.783100, -0.172171,
		0.161855, 0.328126, 0.930664,
		2.969993, 0.130619, 2.892175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.701409, 0.667640, 2.234342>,  <2.856694, -0.099070, 2.240710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.701409, 0.667640, 2.234342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958817, 0.540329, 2.512790>,  <3.113261, 0.463942, 2.679859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958817, 0.540329, 2.512790>,  <2.701409, 0.667640, 2.234342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.958817, 0.540329, 2.512790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680689, 0.653893, -0.330283,
		-0.350067, 0.686385, 0.637440,
		0.643519, -0.318277, 0.696121,
		3.151872, 0.444846, 2.721626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.906823, 1.225683, 2.624150>,  <2.701409, 0.667640, 2.234342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.906823, 1.225683, 2.624150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.209888, 0.965122, 2.640243>,  <3.391728, 0.808785, 2.649898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.209888, 0.965122, 2.640243>,  <2.906823, 1.225683, 2.624150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.209888, 0.965122, 2.640243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652579, 0.755275, -0.060831,
		0.009240, 0.072343, 0.997337,
		0.757665, -0.651403, 0.040231,
		3.437188, 0.769701, 2.652312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.306744, 1.502496, 3.104804>,  <2.906823, 1.225683, 2.624150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.306744, 1.502496, 3.104804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.545708, 1.233502, 2.930051>,  <3.689086, 1.072106, 2.825199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.545708, 1.233502, 2.930051>,  <3.306744, 1.502496, 3.104804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.545708, 1.233502, 2.930051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681745, 0.712763, -0.164899,
		0.422286, -0.199330, 0.884275,
		0.597409, -0.672485, -0.436882,
		3.724931, 1.031757, 2.798986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.056085, 1.469552, 3.406820>,  <3.306744, 1.502496, 3.104804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.056085, 1.469552, 3.406820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.021309, 1.381289, 3.018232>,  <4.000443, 1.328331, 2.785080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.021309, 1.381289, 3.018232>,  <4.056085, 1.469552, 3.406820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.021309, 1.381289, 3.018232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805194, 0.558644, -0.198948,
		0.586605, -0.799517, 0.129104,
		-0.086939, -0.220657, -0.971469,
		3.995227, 1.315091, 2.726792>
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
