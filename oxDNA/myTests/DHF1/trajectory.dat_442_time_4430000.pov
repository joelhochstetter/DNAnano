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
	<1.842072, -1.006220, 3.437108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.556980, -0.731445, 3.380348>,  <1.385925, -0.566581, 3.346292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.556980, -0.731445, 3.380348>,  <1.842072, -1.006220, 3.437108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.556980, -0.731445, 3.380348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426268, 0.584832, 0.690121,
		0.557056, 0.431382, -0.709647,
		-0.712730, 0.686935, -0.141900,
		1.343161, -0.525365, 3.337778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.114388, -0.268711, 3.211056>,  <1.842072, -1.006220, 3.437108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.114388, -0.268711, 3.211056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.763271, -0.238785, 3.400322>,  <1.552601, -0.220829, 3.513881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.763271, -0.238785, 3.400322>,  <2.114388, -0.268711, 3.211056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.763271, -0.238785, 3.400322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455157, 0.438258, 0.775088,
		-0.149379, 0.895730, -0.418753,
		-0.877792, 0.074816, 0.473164,
		1.499934, -0.216340, 3.542271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.952238, 0.359426, 3.325521>,  <2.114388, -0.268711, 3.211056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.952238, 0.359426, 3.325521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.783710, 0.133423, 3.609283>,  <1.682594, -0.002179, 3.779541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.783710, 0.133423, 3.609283>,  <1.952238, 0.359426, 3.325521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.783710, 0.133423, 3.609283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525676, 0.485271, 0.698696,
		-0.739024, 0.667291, 0.092558,
		-0.421318, -0.565009, 0.709406,
		1.657315, -0.036080, 3.822105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.672832, 0.758998, 3.809644>,  <1.952238, 0.359426, 3.325521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.672832, 0.758998, 3.809644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.753052, 0.411613, 3.990997>,  <1.801184, 0.203183, 4.099809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.753052, 0.411613, 3.990997>,  <1.672832, 0.758998, 3.809644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.753052, 0.411613, 3.990997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620826, 0.470661, 0.626940,
		-0.757862, 0.155739, 0.633554,
		0.200550, -0.868460, 0.453383,
		1.813217, 0.151075, 4.127012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.724057, 0.950415, 4.532114>,  <1.672832, 0.758998, 3.809644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.724057, 0.950415, 4.532114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.924078, 0.607140, 4.485710>,  <2.044091, 0.401174, 4.457868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.924078, 0.607140, 4.485710>,  <1.724057, 0.950415, 4.532114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.924078, 0.607140, 4.485710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669298, 0.297984, 0.680622,
		-0.549533, -0.417992, 0.723392,
		0.500053, -0.858189, -0.116009,
		2.074094, 0.349683, 4.450907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.967018, 0.750697, 5.184074>,  <1.724057, 0.950415, 4.532114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.967018, 0.750697, 5.184074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.212204, 0.556267, 4.934914>,  <2.359316, 0.439609, 4.785418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.212204, 0.556267, 4.934914>,  <1.967018, 0.750697, 5.184074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.212204, 0.556267, 4.934914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782743, 0.266172, 0.562552,
		-0.107644, -0.832396, 0.543626,
		0.612965, -0.486075, -0.622901,
		2.396093, 0.410444, 4.748044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.338563, 0.316023, 5.620543>,  <1.967018, 0.750697, 5.184074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.338563, 0.316023, 5.620543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548773, 0.362305, 5.283394>,  <2.674899, 0.390074, 5.081104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548773, 0.362305, 5.283394>,  <2.338563, 0.316023, 5.620543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.548773, 0.362305, 5.283394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781626, 0.325582, 0.532032,
		0.335983, -0.938407, 0.080665,
		0.525526, 0.115704, -0.842874,
		2.706430, 0.397016, 5.030532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.937746, -0.003641, 5.808436>,  <2.338563, 0.316023, 5.620543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.937746, -0.003641, 5.808436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.970726, 0.270592, 5.519112>,  <2.990514, 0.435131, 5.345517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.970726, 0.270592, 5.519112>,  <2.937746, -0.003641, 5.808436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.970726, 0.270592, 5.519112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860561, 0.317069, 0.398626,
		0.502631, -0.655320, -0.563842,
		0.082451, 0.685582, -0.723312,
		2.995461, 0.476266, 5.302118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.063237, 1.121309, 5.795709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.164104, 0.992073, 5.430847>,  <4.224623, 0.914531, 5.211930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.164104, 0.992073, 5.430847>,  <4.063237, 1.121309, 5.795709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.164104, 0.992073, 5.430847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951665, 0.088003, -0.294260,
		0.175345, 0.942267, -0.285282,
		0.252165, -0.323090, -0.912154,
		4.239753, 0.895146, 5.157201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.626582, 1.570638, 5.273685>,  <4.063237, 1.121309, 5.795709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.626582, 1.570638, 5.273685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.741256, 1.204773, 5.159698>,  <3.810061, 0.985254, 5.091307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.741256, 1.204773, 5.159698>,  <3.626582, 1.570638, 5.273685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.741256, 1.204773, 5.159698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899064, -0.154126, -0.409791,
		0.330899, 0.373684, -0.866525,
		0.286686, -0.914662, -0.284965,
		3.827262, 0.930374, 5.074209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.231572, 1.447919, 4.598329>,  <3.626582, 1.570638, 5.273685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.231572, 1.447919, 4.598329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.403425, 1.105080, 4.712029>,  <3.506537, 0.899376, 4.780248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.403425, 1.105080, 4.712029>,  <3.231572, 1.447919, 4.598329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.403425, 1.105080, 4.712029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754845, -0.513650, -0.407889,
		0.495606, -0.039321, -0.867657,
		0.429633, -0.857099, 0.284249,
		3.532315, 0.847950, 4.797303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.234448, 0.948961, 4.099662>,  <3.231572, 1.447919, 4.598329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.234448, 0.948961, 4.099662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.279690, 0.713120, 4.419556>,  <3.306834, 0.571615, 4.611492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.279690, 0.713120, 4.419556>,  <3.234448, 0.948961, 4.099662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.279690, 0.713120, 4.419556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708670, -0.612035, -0.350997,
		0.696415, -0.527049, -0.487058,
		0.113104, -0.589603, 0.799735,
		3.313621, 0.536238, 4.659476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.359269, 0.333648, 3.910954>,  <3.234448, 0.948961, 4.099662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.359269, 0.333648, 3.910954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.169724, 0.336273, 4.263184>,  <3.055997, 0.337849, 4.474522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.169724, 0.336273, 4.263184>,  <3.359269, 0.333648, 3.910954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.169724, 0.336273, 4.263184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714949, -0.586663, -0.380362,
		0.514103, -0.809805, 0.282690,
		-0.473863, 0.006564, 0.880574,
		3.027565, 0.338242, 4.527356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.171309, -0.421213, 4.086379>,  <3.359269, 0.333648, 3.910954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.171309, -0.421213, 4.086379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.933352, -0.165359, 4.281097>,  <2.790578, -0.011847, 4.397929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.933352, -0.165359, 4.281097>,  <3.171309, -0.421213, 4.086379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.933352, -0.165359, 4.281097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802755, -0.503715, -0.319147,
		0.041070, -0.580638, 0.813126,
		-0.594893, 0.639633, 0.486797,
		2.754884, 0.026531, 4.427136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.687590, -0.816805, 4.376613>,  <3.171309, -0.421213, 4.086379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.687590, -0.816805, 4.376613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.497381, -0.465828, 4.401825>,  <2.383256, -0.255242, 4.416952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.497381, -0.465828, 4.401825>,  <2.687590, -0.816805, 4.376613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.497381, -0.465828, 4.401825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835150, -0.427766, -0.345746,
		-0.276410, -0.217049, 0.936209,
		-0.475522, 0.877443, 0.063030,
		2.354725, -0.202595, 4.420733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.992049, -0.951023, 4.650636>,  <2.687590, -0.816805, 4.376613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.992049, -0.951023, 4.650636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.997605, -0.609268, 4.442856>,  <2.000939, -0.404215, 4.318188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.997605, -0.609268, 4.442856>,  <1.992049, -0.951023, 4.650636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.997605, -0.609268, 4.442856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797652, -0.303798, -0.521016,
		-0.602958, 0.421578, 0.677284,
		0.013892, 0.854388, -0.519450,
		2.001773, -0.352952, 4.287021>
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
