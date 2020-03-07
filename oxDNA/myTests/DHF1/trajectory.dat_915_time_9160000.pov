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
	<2.918683, 4.678226, 2.176513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579880, 4.598728, 1.979301>,  <2.376598, 4.551030, 1.860975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579880, 4.598728, 1.979301>,  <2.918683, 4.678226, 2.176513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.579880, 4.598728, 1.979301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436430, -0.269521, 0.858421,
		-0.303487, 0.942263, 0.141549,
		-0.847009, -0.198743, -0.493028,
		2.325777, 4.539105, 1.831393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.340194, 4.932705, 2.484515>,  <2.918683, 4.678226, 2.176513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.340194, 4.932705, 2.484515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.189629, 4.615040, 2.293678>,  <2.099289, 4.424440, 2.179176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.189629, 4.615040, 2.293678>,  <2.340194, 4.932705, 2.484515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.189629, 4.615040, 2.293678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639317, -0.150040, 0.754163,
		-0.670511, 0.588890, -0.451246,
		-0.376414, -0.794164, -0.477091,
		2.076704, 4.376791, 2.150551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.618846, 4.976144, 2.373059>,  <2.340194, 4.932705, 2.484515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.618846, 4.976144, 2.373059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.719841, 4.590916, 2.410461>,  <1.780438, 4.359778, 2.432903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.719841, 4.590916, 2.410461>,  <1.618846, 4.976144, 2.373059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.719841, 4.590916, 2.410461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661791, -0.101381, 0.742802,
		-0.705892, -0.249428, -0.662949,
		0.252487, -0.963072, 0.093505,
		1.795587, 4.301994, 2.438513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.974446, 4.532294, 2.496861>,  <1.618846, 4.976144, 2.373059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.974446, 4.532294, 2.496861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.290573, 4.340874, 2.649902>,  <1.480250, 4.226022, 2.741727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.290573, 4.340874, 2.649902>,  <0.974446, 4.532294, 2.496861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.290573, 4.340874, 2.649902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441404, -0.011630, 0.897233,
		-0.424922, -0.877983, -0.220425,
		0.790319, -0.478551, 0.382603,
		1.527669, 4.197309, 2.764683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.754357, 3.998032, 2.880851>,  <0.974446, 4.532294, 2.496861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.754357, 3.998032, 2.880851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.109070, 4.110071, 3.027908>,  <1.321898, 4.177295, 3.116143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.109070, 4.110071, 3.027908>,  <0.754357, 3.998032, 2.880851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.109070, 4.110071, 3.027908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403377, 0.080729, 0.911466,
		0.225623, -0.956570, 0.184575,
		0.886781, 0.280101, 0.367644,
		1.375104, 4.194101, 3.138202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.900450, 3.566620, 3.457011>,  <0.754357, 3.998032, 2.880851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.900450, 3.566620, 3.457011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.095238, 3.912712, 3.504742>,  <1.212110, 4.120367, 3.533381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.095238, 3.912712, 3.504742>,  <0.900450, 3.566620, 3.457011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.095238, 3.912712, 3.504742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409496, 0.105496, 0.906192,
		0.771475, -0.490152, 0.405681,
		0.486969, 0.865229, 0.119328,
		1.241329, 4.172281, 3.540540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.285605, 3.498205, 4.079105>,  <0.900450, 3.566620, 3.457011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.285605, 3.498205, 4.079105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.230499, 3.890194, 4.021591>,  <1.197436, 4.125387, 3.987083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.230499, 3.890194, 4.021591>,  <1.285605, 3.498205, 4.079105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.230499, 3.890194, 4.021591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190292, 0.116278, 0.974817,
		0.972013, 0.161657, 0.170462,
		-0.137765, 0.979973, -0.143786,
		1.189170, 4.184186, 3.978456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.530502, 3.933313, 4.632498>,  <1.285605, 3.498205, 4.079105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.530502, 3.933313, 4.632498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253067, 4.158203, 4.452347>,  <1.086606, 4.293137, 4.344256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253067, 4.158203, 4.452347>,  <1.530502, 3.933313, 4.632498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.253067, 4.158203, 4.452347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365792, 0.263730, 0.892549,
		0.620591, 0.783805, 0.022738,
		-0.693587, 0.562225, -0.450378,
		1.044991, 4.326871, 4.317234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.269224, 4.292714, 5.350315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.192032, 4.674976, 5.261337>,  <0.145716, 4.904334, 5.207951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.192032, 4.674976, 5.261337>,  <0.269224, 4.292714, 5.350315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.192032, 4.674976, 5.261337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458779, -0.112516, -0.881398,
		-0.867341, -0.272145, -0.416721,
		-0.192981, 0.955656, -0.222444,
		0.134138, 4.961673, 5.194604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.065958, 4.202299, 4.594569>,  <0.269224, 4.292714, 5.350315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.065958, 4.202299, 4.594569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.195114, 4.570831, 4.681187>,  <0.272608, 4.791951, 4.733157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.195114, 4.570831, 4.681187>,  <0.065958, 4.202299, 4.594569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.195114, 4.570831, 4.681187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699488, -0.078184, -0.710355,
		-0.637542, 0.380836, -0.669704,
		0.322889, 0.921331, 0.216544,
		0.291981, 4.847230, 4.746150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.010239, 4.769696, 4.032174>,  <0.065958, 4.202299, 4.594569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.010239, 4.769696, 4.032174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.317535, 4.809013, 4.258045>,  <0.514200, 4.832604, 4.393568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.317535, 4.809013, 4.258045>,  <-0.010239, 4.769696, 4.032174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.317535, 4.809013, 4.258045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570281, -0.041033, -0.820424,
		-0.057472, 0.994311, -0.089679,
		0.819437, 0.098294, 0.564678,
		0.563367, 4.838501, 4.427449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.510169, 5.244496, 3.710762>,  <-0.010239, 4.769696, 4.032174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.510169, 5.244496, 3.710762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.715195, 5.010536, 3.962212>,  <0.838210, 4.870160, 4.113082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.715195, 5.010536, 3.962212>,  <0.510169, 5.244496, 3.710762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.715195, 5.010536, 3.962212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654422, -0.207858, -0.726998,
		0.555886, 0.784020, 0.276231,
		0.512564, -0.584900, 0.628625,
		0.868964, 4.835066, 4.150799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.124889, 5.404764, 3.570758>,  <0.510169, 5.244496, 3.710762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.124889, 5.404764, 3.570758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.170013, 5.039307, 3.726978>,  <1.197088, 4.820032, 3.820710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.170013, 5.039307, 3.726978>,  <1.124889, 5.404764, 3.570758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.170013, 5.039307, 3.726978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598853, -0.251129, -0.760466,
		0.792873, 0.319671, 0.518808,
		0.112811, -0.913643, 0.390550,
		1.203857, 4.765213, 3.844143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.809215, 5.297351, 3.677939>,  <1.124889, 5.404764, 3.570758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.809215, 5.297351, 3.677939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.634079, 4.941711, 3.624577>,  <1.528998, 4.728327, 3.592559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.634079, 4.941711, 3.624577>,  <1.809215, 5.297351, 3.677939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.634079, 4.941711, 3.624577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608212, -0.183644, -0.772239,
		0.662099, -0.419256, 0.621168,
		-0.437839, -0.889100, -0.133406,
		1.502727, 4.674981, 3.584555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.389199, 4.889045, 3.569890>,  <1.809215, 5.297351, 3.677939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.389199, 4.889045, 3.569890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074753, 4.681122, 3.436131>,  <1.886085, 4.556368, 3.355875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074753, 4.681122, 3.436131>,  <2.389199, 4.889045, 3.569890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.074753, 4.681122, 3.436131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527076, -0.281207, -0.801943,
		0.322821, -0.806674, 0.495040,
		-0.786115, -0.519808, -0.334399,
		1.838918, 4.525179, 3.335811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.625851, 4.159563, 3.345535>,  <2.389199, 4.889045, 3.569890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.625851, 4.159563, 3.345535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.306183, 4.294312, 3.146400>,  <2.114382, 4.375161, 3.026920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.306183, 4.294312, 3.146400>,  <2.625851, 4.159563, 3.345535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.306183, 4.294312, 3.146400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364271, -0.387391, -0.846897,
		-0.478154, -0.858164, 0.186879,
		-0.799172, 0.336873, -0.497837,
		2.066431, 4.395373, 2.997049>
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
