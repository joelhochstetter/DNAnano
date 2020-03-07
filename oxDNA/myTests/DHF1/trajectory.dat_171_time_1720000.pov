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
	<1.351972, 4.219424, 1.282512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.661888, 3.966881, 1.295715>,  <1.847838, 3.815355, 1.303637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.661888, 3.966881, 1.295715>,  <1.351972, 4.219424, 1.282512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.661888, 3.966881, 1.295715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108476, 0.184192, 0.976886,
		-0.622844, -0.753300, 0.211197,
		0.774789, -0.631357, 0.033008,
		1.894325, 3.777473, 1.305618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.244714, 4.050585, 2.046488>,  <1.351972, 4.219424, 1.282512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.244714, 4.050585, 2.046488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.546692, 3.854095, 1.872704>,  <1.727879, 3.736202, 1.768433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.546692, 3.854095, 1.872704>,  <1.244714, 4.050585, 2.046488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.546692, 3.854095, 1.872704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304325, -0.324420, 0.895621,
		-0.580899, -0.808362, -0.095428,
		0.754946, -0.491225, -0.434460,
		1.773176, 3.706728, 1.742365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.211483, 3.365011, 2.331498>,  <1.244714, 4.050585, 2.046488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.211483, 3.365011, 2.331498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.583023, 3.359100, 2.183434>,  <1.805947, 3.355554, 2.094595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.583023, 3.359100, 2.183434>,  <1.211483, 3.365011, 2.331498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.583023, 3.359100, 2.183434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295951, -0.571407, 0.765445,
		-0.222824, -0.820534, -0.526378,
		0.928850, -0.014778, -0.370161,
		1.861678, 3.354667, 2.072385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.437962, 2.659626, 2.132598>,  <1.211483, 3.365011, 2.331498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.437962, 2.659626, 2.132598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.761810, 2.868225, 2.240341>,  <1.956119, 2.993385, 2.304987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.761810, 2.868225, 2.240341>,  <1.437962, 2.659626, 2.132598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.761810, 2.868225, 2.240341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123113, -0.599579, 0.790790,
		0.573897, -0.607078, -0.549635,
		0.809620, 0.521499, 0.269357,
		2.004697, 3.024675, 2.321148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.917004, 2.083780, 2.292812>,  <1.437962, 2.659626, 2.132598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.917004, 2.083780, 2.292812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.998558, 2.422424, 2.489456>,  <2.047490, 2.625611, 2.607443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.998558, 2.422424, 2.489456>,  <1.917004, 2.083780, 2.292812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.998558, 2.422424, 2.489456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038487, -0.494838, 0.868133,
		0.978238, -0.195920, -0.068306,
		0.203885, 0.846611, 0.491610,
		2.059724, 2.676408, 2.636939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.328914, 1.870118, 2.809497>,  <1.917004, 2.083780, 2.292812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.328914, 1.870118, 2.809497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.210503, 2.234825, 2.923370>,  <2.139456, 2.453650, 2.991694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.210503, 2.234825, 2.923370>,  <2.328914, 1.870118, 2.809497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.210503, 2.234825, 2.923370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003676, -0.296952, 0.954885,
		0.955172, 0.283720, 0.084555,
		-0.296029, 0.911769, 0.284683,
		2.121694, 2.508356, 3.008775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.656122, 1.975935, 3.400887>,  <2.328914, 1.870118, 2.809497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.656122, 1.975935, 3.400887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.365288, 2.248840, 3.431511>,  <2.190787, 2.412584, 3.449885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.365288, 2.248840, 3.431511>,  <2.656122, 1.975935, 3.400887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.365288, 2.248840, 3.431511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142918, -0.259483, 0.955114,
		0.671506, 0.683508, 0.286175,
		-0.727086, 0.682264, 0.076558,
		2.147162, 2.453520, 3.454479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.652013, 2.152753, 4.050383>,  <2.656122, 1.975935, 3.400887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.652013, 2.152753, 4.050383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.288460, 2.290359, 3.956078>,  <2.070328, 2.372924, 3.899495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.288460, 2.290359, 3.956078>,  <2.652013, 2.152753, 4.050383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.288460, 2.290359, 3.956078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364066, -0.378710, 0.850902,
		0.203440, 0.859204, 0.469448,
		-0.908883, 0.344017, -0.235762,
		2.015795, 2.393565, 3.885349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.607672, 1.969673, 5.254762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.210751, 1.953018, 5.208115>,  <0.972598, 1.943025, 5.180126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.210751, 1.953018, 5.208115>,  <1.607672, 1.969673, 5.254762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.210751, 1.953018, 5.208115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093097, 0.370119, -0.924308,
		0.081648, -0.928051, -0.363394,
		-0.992303, -0.041637, -0.116619,
		0.913059, 1.940527, 5.173129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.366344, 1.545511, 4.753001>,  <1.607672, 1.969673, 5.254762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.366344, 1.545511, 4.753001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.185024, 1.902054, 4.753853>,  <1.076233, 2.115979, 4.754364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.185024, 1.902054, 4.753853>,  <1.366344, 1.545511, 4.753001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.185024, 1.902054, 4.753853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276010, 0.142635, -0.950512,
		-0.847549, -0.430278, -0.310679,
		-0.453298, 0.891356, 0.002129,
		1.049035, 2.169461, 4.754491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.840200, 1.617605, 4.130581>,  <1.366344, 1.545511, 4.753001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.840200, 1.617605, 4.130581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.024956, 1.949265, 4.256546>,  <1.135809, 2.148260, 4.332125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.024956, 1.949265, 4.256546>,  <0.840200, 1.617605, 4.130581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.024956, 1.949265, 4.256546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342096, 0.161038, -0.925763,
		-0.818309, 0.535330, -0.209267,
		0.461888, 0.829150, 0.314913,
		1.163522, 2.198009, 4.351020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.813876, 2.060207, 3.560724>,  <0.840200, 1.617605, 4.130581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.813876, 2.060207, 3.560724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.107849, 2.198288, 3.794205>,  <1.284233, 2.281137, 3.934293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.107849, 2.198288, 3.794205>,  <0.813876, 2.060207, 3.560724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.107849, 2.198288, 3.794205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473820, 0.354385, -0.806168,
		-0.485147, 0.869049, 0.096885,
		0.734934, 0.345203, 0.583701,
		1.328329, 2.301849, 3.969315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.841224, 2.781731, 3.451412>,  <0.813876, 2.060207, 3.560724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.841224, 2.781731, 3.451412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197964, 2.673889, 3.596695>,  <1.412007, 2.609184, 3.683865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197964, 2.673889, 3.596695>,  <0.841224, 2.781731, 3.451412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.197964, 2.673889, 3.596695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446877, 0.400800, -0.799788,
		0.070052, 0.875599, 0.477933,
		0.891849, -0.269604, 0.363208,
		1.465518, 2.593008, 3.705657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.220702, 3.371120, 3.557670>,  <0.841224, 2.781731, 3.451412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.220702, 3.371120, 3.557670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469673, 3.065277, 3.490784>,  <1.619056, 2.881771, 3.450652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.469673, 3.065277, 3.490784>,  <1.220702, 3.371120, 3.557670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469673, 3.065277, 3.490784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383928, 0.484446, -0.786073,
		0.682044, 0.425074, 0.595087,
		0.622427, -0.764607, -0.167215,
		1.656401, 2.835895, 3.440619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.751263, 3.737470, 3.436520>,  <1.220702, 3.371120, 3.557670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.751263, 3.737470, 3.436520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.819313, 3.371155, 3.290977>,  <1.860143, 3.151366, 3.203652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.819313, 3.371155, 3.290977>,  <1.751263, 3.737470, 3.436520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.819313, 3.371155, 3.290977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512889, 0.397574, -0.760842,
		0.841429, -0.057180, 0.537334,
		0.170125, -0.915787, -0.363857,
		1.870350, 3.096419, 3.181820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.380760, 3.866477, 2.967829>,  <1.751263, 3.737470, 3.436520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.380760, 3.866477, 2.967829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269176, 3.491074, 2.886459>,  <2.202226, 3.265831, 2.837638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269176, 3.491074, 2.886459>,  <2.380760, 3.866477, 2.967829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.269176, 3.491074, 2.886459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303524, 0.114802, -0.945882,
		0.911073, -0.325607, 0.252835,
		-0.278960, -0.938510, -0.203423,
		2.185489, 3.209521, 2.825433>
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
