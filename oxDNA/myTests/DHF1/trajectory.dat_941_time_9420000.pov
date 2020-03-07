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
	<3.385200, -0.160833, 4.560898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.776573, -0.201295, 4.488859>,  <4.011397, -0.225572, 4.445636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.776573, -0.201295, 4.488859>,  <3.385200, -0.160833, 4.560898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.776573, -0.201295, 4.488859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154947, 0.935993, 0.316085,
		0.136596, -0.337174, 0.931480,
		0.978434, -0.101154, -0.180097,
		4.070103, -0.231641, 4.434830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.561349, 0.453845, 4.684438>,  <3.385200, -0.160833, 4.560898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.561349, 0.453845, 4.684438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919258, 0.282476, 4.634102>,  <4.134004, 0.179655, 4.603900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919258, 0.282476, 4.634102>,  <3.561349, 0.453845, 4.684438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.919258, 0.282476, 4.634102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445307, 0.835397, 0.322202,
		-0.032912, -0.344335, 0.938270,
		0.894773, -0.428422, -0.125840,
		4.187690, 0.153950, 4.596350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.933519, 0.601843, 5.292810>,  <3.561349, 0.453845, 4.684438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.933519, 0.601843, 5.292810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.206612, 0.493868, 5.021219>,  <4.370467, 0.429083, 4.858264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.206612, 0.493868, 5.021219>,  <3.933519, 0.601843, 5.292810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.206612, 0.493868, 5.021219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575866, 0.770748, 0.272628,
		0.449729, -0.577132, 0.681662,
		0.682732, -0.269937, -0.678978,
		4.411431, 0.412887, 4.817526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.631280, 0.608256, 5.536205>,  <3.933519, 0.601843, 5.292810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.631280, 0.608256, 5.536205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.632950, 0.710114, 5.149395>,  <4.633952, 0.771228, 4.917309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.632950, 0.710114, 5.149395>,  <4.631280, 0.608256, 5.536205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.632950, 0.710114, 5.149395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347170, 0.906517, 0.240209,
		0.937793, -0.336725, -0.084621,
		0.004174, 0.254644, -0.967026,
		4.634202, 0.786507, 4.859287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.366423, 0.876037, 5.464646>,  <4.631280, 0.608256, 5.536205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.366423, 0.876037, 5.464646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.156853, 1.031826, 5.161644>,  <5.031110, 1.125299, 4.979843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.156853, 1.031826, 5.161644>,  <5.366423, 0.876037, 5.464646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.156853, 1.031826, 5.161644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389350, 0.900493, 0.193697,
		0.757567, -0.193451, -0.623433,
		-0.523926, 0.389472, -0.757504,
		4.999675, 1.148668, 4.934392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.756207, 1.393407, 5.088471>,  <5.366423, 0.876037, 5.464646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.756207, 1.393407, 5.088471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.371536, 1.486847, 5.031048>,  <5.140734, 1.542911, 4.996594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.371536, 1.486847, 5.031048>,  <5.756207, 1.393407, 5.088471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.371536, 1.486847, 5.031048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174438, 0.925212, 0.336977,
		0.211539, 0.299021, -0.930504,
		-0.961677, 0.233599, -0.143557,
		5.083033, 1.556927, 4.987980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.712642, 2.014282, 4.648627>,  <5.756207, 1.393407, 5.088471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.712642, 2.014282, 4.648627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389626, 1.973535, 4.881006>,  <5.195816, 1.949086, 5.020433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389626, 1.973535, 4.881006>,  <5.712642, 2.014282, 4.648627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.389626, 1.973535, 4.881006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275208, 0.806095, 0.523900,
		-0.521668, 0.582952, -0.622920,
		-0.807542, -0.101869, 0.580947,
		5.147363, 1.942974, 5.055290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.630411, 2.548433, 5.044137>,  <5.712642, 2.014282, 4.648627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.630411, 2.548433, 5.044137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355232, 2.344247, 5.250498>,  <5.190125, 2.221735, 5.374314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355232, 2.344247, 5.250498>,  <5.630411, 2.548433, 5.044137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.355232, 2.344247, 5.250498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015839, 0.721233, 0.692512,
		-0.725589, 0.468239, -0.504255,
		-0.687946, -0.510466, 0.515902,
		5.148849, 2.191107, 5.405269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.601276, 3.328343, 1.315880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.241295, 3.373579, 1.147453>,  <5.025306, 3.400720, 1.046397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.241295, 3.373579, 1.147453>,  <5.601276, 3.328343, 1.315880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.241295, 3.373579, 1.147453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111216, -0.874277, -0.472516,
		-0.421564, -0.472072, 0.774230,
		-0.899953, 0.113089, -0.421066,
		4.971309, 3.407506, 1.021134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.592617, 2.770314, 0.864256>,  <5.601276, 3.328343, 1.315880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.592617, 2.770314, 0.864256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.218048, 2.905930, 0.828112>,  <4.993307, 2.987299, 0.806425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.218048, 2.905930, 0.828112>,  <5.592617, 2.770314, 0.864256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.218048, 2.905930, 0.828112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233378, -0.794140, -0.561138,
		-0.262007, -0.504374, 0.822775,
		-0.936423, 0.339040, -0.090361,
		4.937121, 3.007642, 0.801003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.229560, 2.163261, 0.989272>,  <5.592617, 2.770314, 0.864256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.229560, 2.163261, 0.989272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.034683, 2.421473, 0.754007>,  <4.917757, 2.576400, 0.612848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.034683, 2.421473, 0.754007>,  <5.229560, 2.163261, 0.989272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.034683, 2.421473, 0.754007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307418, -0.757161, -0.576369,
		-0.817399, -0.099989, 0.567328,
		-0.487190, 0.645530, -0.588164,
		4.888525, 2.615131, 0.577559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.448230, 1.989587, 0.916551>,  <5.229560, 2.163261, 0.989272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.448230, 1.989587, 0.916551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.625175, 2.185719, 0.616180>,  <4.731343, 2.303397, 0.435958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.625175, 2.185719, 0.616180>,  <4.448230, 1.989587, 0.916551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.625175, 2.185719, 0.616180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297556, -0.709635, -0.638653,
		-0.846035, 0.505960, -0.168017,
		0.442364, 0.490328, -0.750928,
		4.757885, 2.332817, 0.390902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985645, 1.778103, 0.416765>,  <4.448230, 1.989587, 0.916551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985645, 1.778103, 0.416765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.346085, 1.880554, 0.276812>,  <4.562348, 1.942025, 0.192839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.346085, 1.880554, 0.276812>,  <3.985645, 1.778103, 0.416765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.346085, 1.880554, 0.276812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045462, -0.746653, -0.663659,
		-0.431223, 0.613929, -0.661164,
		0.901099, 0.256127, -0.349884,
		4.616415, 1.957392, 0.171846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.938976, 1.938052, -0.337169>,  <3.985645, 1.778103, 0.416765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.938976, 1.938052, -0.337169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.294930, 1.798315, -0.219820>,  <4.508502, 1.714473, -0.149411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.294930, 1.798315, -0.219820>,  <3.938976, 1.938052, -0.337169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.294930, 1.798315, -0.219820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092692, -0.768145, -0.633531,
		0.446672, 0.536575, -0.715941,
		0.889883, -0.349343, 0.293372,
		4.561894, 1.693512, -0.131808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.263854, 1.752400, -0.962719>,  <3.938976, 1.938052, -0.337169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.263854, 1.752400, -0.962719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.467728, 1.559198, -0.677923>,  <4.590052, 1.443277, -0.507046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.467728, 1.559198, -0.677923>,  <4.263854, 1.752400, -0.962719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.467728, 1.559198, -0.677923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146085, -0.864115, -0.481627,
		0.847869, 0.141466, -0.510985,
		0.509684, -0.483004, 0.711990,
		4.620633, 1.414297, -0.464326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.787515, 1.338782, -1.290725>,  <4.263854, 1.752400, -0.962719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.787515, 1.338782, -1.290725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.735825, 1.153959, -0.939772>,  <4.704811, 1.043066, -0.729199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.735825, 1.153959, -0.939772>,  <4.787515, 1.338782, -1.290725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.735825, 1.153959, -0.939772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162190, -0.863039, -0.478391,
		0.978261, -0.204123, 0.036585,
		-0.129225, -0.462058, 0.877385,
		4.697057, 1.015342, -0.676556>
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
