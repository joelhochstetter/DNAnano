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
	<1.439567, -0.101996, 4.834101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.810703, 0.025635, 4.911357>,  <2.033385, 0.102213, 4.957711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.810703, 0.025635, 4.911357>,  <1.439567, -0.101996, 4.834101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.810703, 0.025635, 4.911357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195868, 0.857516, -0.475712,
		-0.317410, 0.403554, 0.858135,
		0.927840, 0.319077, 0.193141,
		2.089055, 0.121358, 4.969299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.517963, 0.674733, 5.002123>,  <1.439567, -0.101996, 4.834101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.517963, 0.674733, 5.002123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825211, 0.529099, 4.791435>,  <2.009559, 0.441718, 4.665022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.825211, 0.529099, 4.791435>,  <1.517963, 0.674733, 5.002123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825211, 0.529099, 4.791435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164469, 0.682819, -0.711834,
		0.618824, 0.633403, 0.464605,
		0.768119, -0.364087, -0.526720,
		2.055646, 0.419873, 4.633420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.028042, 1.120783, 4.846137>,  <1.517963, 0.674733, 5.002123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.028042, 1.120783, 4.846137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.067852, 0.881477, 4.528099>,  <2.091738, 0.737894, 4.337276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.067852, 0.881477, 4.528099>,  <2.028042, 1.120783, 4.846137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.067852, 0.881477, 4.528099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087900, 0.790651, -0.605925,
		0.991145, 0.130194, 0.026102,
		0.099525, -0.598265, -0.795094,
		2.097709, 0.701998, 4.289571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.552205, 1.388728, 4.382052>,  <2.028042, 1.120783, 4.846137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.552205, 1.388728, 4.382052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.282032, 1.167835, 4.186571>,  <2.119928, 1.035300, 4.069282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.282032, 1.167835, 4.186571>,  <2.552205, 1.388728, 4.382052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.282032, 1.167835, 4.186571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039724, 0.689005, -0.723668,
		0.736353, -0.469374, -0.487312,
		-0.675431, -0.552232, -0.488705,
		2.079402, 1.002166, 4.039960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.797601, 1.401141, 3.779123>,  <2.552205, 1.388728, 4.382052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.797601, 1.401141, 3.779123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.410881, 1.315674, 3.723057>,  <2.178849, 1.264394, 3.689417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.410881, 1.315674, 3.723057>,  <2.797601, 1.401141, 3.779123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.410881, 1.315674, 3.723057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079800, 0.773521, -0.628727,
		0.242759, -0.596667, -0.764889,
		-0.966799, -0.213667, -0.140165,
		2.120842, 1.251574, 3.681007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.753074, 1.386521, 3.062413>,  <2.797601, 1.401141, 3.779123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.753074, 1.386521, 3.062413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.378151, 1.442284, 3.190176>,  <2.153197, 1.475741, 3.266834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.378151, 1.442284, 3.190176>,  <2.753074, 1.386521, 3.062413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.378151, 1.442284, 3.190176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123905, 0.723326, -0.679299,
		-0.325736, -0.676288, -0.660705,
		-0.937307, 0.139408, 0.319409,
		2.096959, 1.484106, 3.285999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.361351, 1.520450, 2.471761>,  <2.753074, 1.386521, 3.062413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.361351, 1.520450, 2.471761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.126301, 1.651772, 2.767575>,  <1.985271, 1.730564, 2.945064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.126301, 1.651772, 2.767575>,  <2.361351, 1.520450, 2.471761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.126301, 1.651772, 2.767575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428631, 0.648900, -0.628652,
		-0.686274, -0.686400, -0.240589,
		-0.587626, 0.328303, 0.739536,
		1.950013, 1.750263, 2.989436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670495, 1.631882, 2.250585>,  <2.361351, 1.520450, 2.471761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670495, 1.631882, 2.250585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.678726, 1.862228, 2.577499>,  <1.683665, 2.000436, 2.773648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.678726, 1.862228, 2.577499>,  <1.670495, 1.631882, 2.250585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.678726, 1.862228, 2.577499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631600, 0.641170, -0.435871,
		-0.775021, -0.507228, 0.376910,
		0.020577, 0.575865, 0.817286,
		1.684899, 2.034988, 2.822685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.333797, 3.072900, 2.172205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.067352, 3.237530, 2.421011>,  <1.907485, 3.336308, 2.570294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.067352, 3.237530, 2.421011>,  <2.333797, 3.072900, 2.172205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.067352, 3.237530, 2.421011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016273, -0.825746, 0.563807,
		0.745674, 0.385681, 0.543342,
		-0.666112, 0.411574, 0.622014,
		1.867519, 3.361002, 2.607615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.564597, 2.947930, 2.933228>,  <2.333797, 3.072900, 2.172205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.564597, 2.947930, 2.933228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.170067, 2.982800, 2.877279>,  <1.933349, 3.003721, 2.843710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.170067, 2.982800, 2.877279>,  <2.564597, 2.947930, 2.933228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.170067, 2.982800, 2.877279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148077, -0.841342, 0.519823,
		-0.072365, 0.533426, 0.842745,
		-0.986325, 0.087175, -0.139872,
		1.874169, 3.008952, 2.835318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.186931, 3.112500, 3.447351>,  <2.564597, 2.947930, 2.933228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.186931, 3.112500, 3.447351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.946609, 2.866161, 3.243481>,  <1.802417, 2.718358, 3.121159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.946609, 2.866161, 3.243481>,  <2.186931, 3.112500, 3.447351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.946609, 2.866161, 3.243481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128937, -0.703882, 0.698517,
		-0.788930, 0.353955, 0.502300,
		-0.600804, -0.615846, -0.509676,
		1.766369, 2.681407, 3.090578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.635542, 2.829276, 3.824111>,  <2.186931, 3.112500, 3.447351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.635542, 2.829276, 3.824111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.658104, 2.569714, 3.520601>,  <1.671641, 2.413976, 3.338495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.658104, 2.569714, 3.520601>,  <1.635542, 2.829276, 3.824111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.658104, 2.569714, 3.520601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000760, -0.760012, 0.649909,
		-0.998408, -0.036081, -0.043362,
		0.056405, -0.648907, -0.758774,
		1.675025, 2.375041, 3.292969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.137832, 2.250831, 3.850229>,  <1.635542, 2.829276, 3.824111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.137832, 2.250831, 3.850229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.418762, 2.107307, 3.604303>,  <1.587320, 2.021193, 3.456748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.418762, 2.107307, 3.604303>,  <1.137832, 2.250831, 3.850229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.418762, 2.107307, 3.604303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088685, -0.901050, 0.424551,
		-0.706310, -0.243648, -0.664651,
		0.702325, -0.358809, -0.614813,
		1.629460, 1.999665, 3.419859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.883758, 1.638079, 3.734237>,  <1.137832, 2.250831, 3.850229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.883758, 1.638079, 3.734237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.260025, 1.581627, 3.610802>,  <1.485785, 1.547756, 3.536741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.260025, 1.581627, 3.610802>,  <0.883758, 1.638079, 3.734237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.260025, 1.581627, 3.610802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023585, -0.880016, 0.474357,
		-0.338508, -0.453491, -0.824474,
		0.940668, -0.141129, -0.308588,
		1.542225, 1.539288, 3.518225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.895540, 0.971839, 3.438200>,  <0.883758, 1.638079, 3.734237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.895540, 0.971839, 3.438200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.279892, 1.051189, 3.515512>,  <1.510503, 1.098799, 3.561900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.279892, 1.051189, 3.515512>,  <0.895540, 0.971839, 3.438200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.279892, 1.051189, 3.515512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090240, -0.884005, 0.458684,
		0.261853, -0.423299, -0.867324,
		0.960879, 0.198375, 0.193281,
		1.568156, 1.110702, 3.573497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.147652, 0.383644, 3.316606>,  <0.895540, 0.971839, 3.438200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.147652, 0.383644, 3.316606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.416931, 0.567993, 3.547915>,  <1.578499, 0.678603, 3.686700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.416931, 0.567993, 3.547915>,  <1.147652, 0.383644, 3.316606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.416931, 0.567993, 3.547915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060419, -0.813685, 0.578157,
		0.736989, -0.354276, -0.575617,
		0.673199, 0.460874, 0.578273,
		1.618891, 0.706255, 3.721396>
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
