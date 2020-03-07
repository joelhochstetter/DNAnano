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
	<3.383200, -0.672954, 4.809549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665672, -0.501816, 4.583893>,  <3.835156, -0.399133, 4.448499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665672, -0.501816, 4.583893>,  <3.383200, -0.672954, 4.809549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.665672, -0.501816, 4.583893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708011, 0.420646, -0.567254,
		-0.005394, 0.800003, 0.599972,
		0.706181, 0.427846, -0.564142,
		3.877527, -0.373462, 4.414650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.166035, -0.024183, 4.540788>,  <3.383200, -0.672954, 4.809549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.166035, -0.024183, 4.540788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.484848, -0.091299, 4.308723>,  <3.676136, -0.131569, 4.169485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.484848, -0.091299, 4.308723>,  <3.166035, -0.024183, 4.540788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.484848, -0.091299, 4.308723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408570, 0.557635, -0.722574,
		0.444759, 0.812951, 0.375899,
		0.797032, -0.167790, -0.580160,
		3.723958, -0.141636, 4.134676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378606, 0.644579, 4.219839>,  <3.166035, -0.024183, 4.540788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378606, 0.644579, 4.219839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.480042, 0.322077, 4.006056>,  <3.540903, 0.128576, 3.877786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.480042, 0.322077, 4.006056>,  <3.378606, 0.644579, 4.219839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.480042, 0.322077, 4.006056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501040, 0.363142, -0.785549,
		0.827437, 0.466992, -0.311877,
		0.253590, -0.806255, -0.534458,
		3.556118, 0.080200, 3.845718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.656756, 0.863188, 3.577893>,  <3.378606, 0.644579, 4.219839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.656756, 0.863188, 3.577893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.515549, 0.491430, 3.534805>,  <3.430824, 0.268376, 3.508953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.515549, 0.491430, 3.534805>,  <3.656756, 0.863188, 3.577893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.515549, 0.491430, 3.534805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524701, 0.291982, -0.799647,
		0.774640, -0.225770, -0.590729,
		-0.353018, -0.929395, -0.107719,
		3.409643, 0.212612, 3.502490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.806267, 0.629327, 2.842623>,  <3.656756, 0.863188, 3.577893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.806267, 0.629327, 2.842623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509377, 0.390480, 2.964312>,  <3.331242, 0.247172, 3.037325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509377, 0.390480, 2.964312>,  <3.806267, 0.629327, 2.842623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.509377, 0.390480, 2.964312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528951, 0.243264, -0.813040,
		0.411476, -0.764377, -0.496403,
		-0.742226, -0.597119, 0.304220,
		3.286709, 0.211344, 3.055578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.558066, 0.392856, 2.167320>,  <3.806267, 0.629327, 2.842623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.558066, 0.392856, 2.167320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.254715, 0.334547, 2.421442>,  <3.072704, 0.299561, 2.573915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.254715, 0.334547, 2.421442>,  <3.558066, 0.392856, 2.167320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.254715, 0.334547, 2.421442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632877, 0.397919, -0.664174,
		-0.155981, -0.905765, -0.394030,
		-0.758378, -0.145773, 0.635306,
		3.027202, 0.290815, 2.612034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.120557, -0.100939, 1.845876>,  <3.558066, 0.392856, 2.167320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.120557, -0.100939, 1.845876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920189, 0.138674, 2.095753>,  <2.799968, 0.282442, 2.245679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920189, 0.138674, 2.095753>,  <3.120557, -0.100939, 1.845876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.920189, 0.138674, 2.095753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636559, 0.234037, -0.734860,
		-0.586406, -0.765759, 0.264086,
		-0.500920, 0.599033, 0.624692,
		2.769913, 0.318384, 2.283160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.482091, -0.147089, 1.569251>,  <3.120557, -0.100939, 1.845876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.482091, -0.147089, 1.569251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.448219, 0.139353, 1.846386>,  <2.427896, 0.311218, 2.012667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.448219, 0.139353, 1.846386>,  <2.482091, -0.147089, 1.569251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.448219, 0.139353, 1.846386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601448, 0.517639, -0.608531,
		-0.794412, -0.468237, 0.386865,
		-0.084680, 0.716103, 0.692838,
		2.422815, 0.354184, 2.054238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.559682, 2.710512, 1.930312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.417282, 2.726593, 2.303761>,  <2.331842, 2.736241, 2.527830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.417282, 2.726593, 2.303761>,  <2.559682, 2.710512, 1.930312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.417282, 2.726593, 2.303761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196809, -0.979891, -0.032851,
		0.913526, -0.195441, 0.356752,
		-0.355999, 0.040202, 0.933621,
		2.310482, 2.738653, 2.583847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.960165, 2.247899, 2.379070>,  <2.559682, 2.710512, 1.930312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.960165, 2.247899, 2.379070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.571091, 2.322182, 2.434776>,  <2.337646, 2.366751, 2.468200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.571091, 2.322182, 2.434776>,  <2.960165, 2.247899, 2.379070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.571091, 2.322182, 2.434776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194646, -0.979415, -0.053460,
		0.126471, -0.079108, 0.988811,
		-0.972686, 0.185707, 0.139266,
		2.279285, 2.377894, 2.476556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.674548, 1.639668, 2.198258>,  <2.960165, 2.247899, 2.379070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.674548, 1.639668, 2.198258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.446213, 1.317070, 2.136665>,  <2.309211, 1.123511, 2.099710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.446213, 1.317070, 2.136665>,  <2.674548, 1.639668, 2.198258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.446213, 1.317070, 2.136665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517301, -0.498906, 0.695337,
		-0.637607, 0.317270, 0.701995,
		-0.570839, -0.806494, -0.153982,
		2.274961, 1.075122, 2.090471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.509548, 1.453522, 2.812679>,  <2.674548, 1.639668, 2.198258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.509548, 1.453522, 2.812679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.429504, 1.126255, 2.597065>,  <2.381478, 0.929895, 2.467696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.429504, 1.126255, 2.597065>,  <2.509548, 1.453522, 2.812679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.429504, 1.126255, 2.597065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336744, -0.574080, 0.746348,
		-0.920087, -0.032165, 0.390392,
		-0.200110, -0.818167, -0.539035,
		2.369472, 0.880805, 2.435354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.084264, 0.909877, 3.230263>,  <2.509548, 1.453522, 2.812679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.084264, 0.909877, 3.230263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.297760, 0.718727, 2.951191>,  <2.425858, 0.604037, 2.783748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.297760, 0.718727, 2.951191>,  <2.084264, 0.909877, 3.230263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.297760, 0.718727, 2.951191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323075, -0.647209, 0.690466,
		-0.781502, -0.593931, -0.191051,
		0.533739, -0.477877, -0.697679,
		2.457882, 0.575364, 2.741887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.097732, 0.299942, 3.589086>,  <2.084264, 0.909877, 3.230263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.097732, 0.299942, 3.589086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359741, 0.271721, 3.288162>,  <2.516947, 0.254788, 3.107608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359741, 0.271721, 3.288162>,  <2.097732, 0.299942, 3.589086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.359741, 0.271721, 3.288162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497370, -0.709264, 0.499568,
		-0.568831, -0.701404, -0.429493,
		0.655022, -0.070553, -0.752308,
		2.556248, 0.250555, 3.062470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.257180, -0.456529, 3.460595>,  <2.097732, 0.299942, 3.589086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.257180, -0.456529, 3.460595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.568069, -0.230541, 3.349792>,  <2.754603, -0.094948, 3.283311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.568069, -0.230541, 3.349792>,  <2.257180, -0.456529, 3.460595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.568069, -0.230541, 3.349792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600551, -0.534675, 0.594525,
		0.187781, -0.628435, -0.754856,
		0.777223, 0.564970, -0.277006,
		2.801237, -0.061050, 3.266691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.706223, -0.943938, 3.380159>,  <2.257180, -0.456529, 3.460595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.706223, -0.943938, 3.380159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.909729, -0.601589, 3.417343>,  <3.031832, -0.396180, 3.439654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.909729, -0.601589, 3.417343>,  <2.706223, -0.943938, 3.380159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.909729, -0.601589, 3.417343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662982, -0.458390, 0.591890,
		0.549194, -0.239501, -0.800640,
		0.508764, 0.855872, 0.092960,
		3.062358, -0.344828, 3.445231>
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
