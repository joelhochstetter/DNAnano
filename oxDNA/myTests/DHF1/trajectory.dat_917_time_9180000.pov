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
	<2.754570, 3.360310, 3.180150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.652611, 3.533638, 2.834373>,  <2.591435, 3.637635, 2.626907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.652611, 3.533638, 2.834373>,  <2.754570, 3.360310, 3.180150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.652611, 3.533638, 2.834373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963364, 0.036700, -0.265672,
		-0.083397, -0.900492, -0.426801,
		-0.254899, 0.433321, -0.864442,
		2.576141, 3.663634, 2.575041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.788193, 2.889889, 2.546478>,  <2.754570, 3.360310, 3.180150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.788193, 2.889889, 2.546478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.855965, 3.283875, 2.559994>,  <2.896628, 3.520266, 2.568103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.855965, 3.283875, 2.559994>,  <2.788193, 2.889889, 2.546478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.855965, 3.283875, 2.559994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962324, -0.157943, -0.221331,
		-0.212665, 0.070017, -0.974613,
		0.169431, 0.984963, 0.033790,
		2.906794, 3.579363, 2.570131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.039046, 3.184321, 1.922206>,  <2.788193, 2.889889, 2.546478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.039046, 3.184321, 1.922206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.169106, 3.374302, 2.249302>,  <3.247141, 3.488290, 2.445560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.169106, 3.374302, 2.249302>,  <3.039046, 3.184321, 1.922206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.169106, 3.374302, 2.249302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936770, -0.280077, -0.209805,
		0.129383, 0.834253, -0.535987,
		0.325148, 0.474952, 0.817740,
		3.266650, 3.516788, 2.494624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.593005, 3.632506, 1.730346>,  <3.039046, 3.184321, 1.922206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.593005, 3.632506, 1.730346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.654549, 3.535248, 2.113430>,  <3.691475, 3.476892, 2.343280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.654549, 3.535248, 2.113430>,  <3.593005, 3.632506, 1.730346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.654549, 3.535248, 2.113430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935430, -0.276360, -0.220444,
		0.318273, 0.929788, 0.184926,
		0.153860, -0.243147, 0.957709,
		3.700706, 3.462304, 2.400743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.225828, 4.003645, 1.887846>,  <3.593005, 3.632506, 1.730346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.225828, 4.003645, 1.887846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.168327, 3.683819, 2.121094>,  <4.133827, 3.491923, 2.261043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.168327, 3.683819, 2.121094>,  <4.225828, 4.003645, 1.887846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.168327, 3.683819, 2.121094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842311, -0.408161, -0.352019,
		0.519469, 0.440565, 0.732157,
		-0.143751, -0.799566, 0.583120,
		4.125202, 3.443949, 2.296030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.895100, 3.879751, 2.285396>,  <4.225828, 4.003645, 1.887846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.895100, 3.879751, 2.285396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.708740, 3.525852, 2.290440>,  <4.596924, 3.313513, 2.293466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.708740, 3.525852, 2.290440>,  <4.895100, 3.879751, 2.285396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.708740, 3.525852, 2.290440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823202, -0.438628, -0.360478,
		0.324464, -0.157566, 0.932682,
		-0.465899, -0.884748, 0.012610,
		4.568971, 3.260428, 2.294223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.253911, 3.405555, 2.663348>,  <4.895100, 3.879751, 2.285396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.253911, 3.405555, 2.663348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.053833, 3.162731, 2.416355>,  <4.933786, 3.017037, 2.268159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.053833, 3.162731, 2.416355>,  <5.253911, 3.405555, 2.663348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.053833, 3.162731, 2.416355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837323, -0.520815, -0.166256,
		-0.220667, -0.600193, 0.768813,
		-0.500195, -0.607058, -0.617483,
		4.903774, 2.980614, 2.231110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.402121, 2.706548, 2.847096>,  <5.253911, 3.405555, 2.663348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.402121, 2.706548, 2.847096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.278297, 2.704964, 2.466747>,  <5.204003, 2.704013, 2.238538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.278297, 2.704964, 2.466747>,  <5.402121, 2.706548, 2.847096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.278297, 2.704964, 2.466747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698379, -0.679598, -0.224529,
		-0.645322, -0.733574, 0.213142,
		-0.309559, -0.003960, -0.950872,
		5.185430, 2.703776, 2.181486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.217113, 2.505993, 1.858223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.036041, 2.206306, 1.664829>,  <5.927398, 2.026495, 1.548793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.036041, 2.206306, 1.664829>,  <6.217113, 2.505993, 1.858223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.036041, 2.206306, 1.664829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871110, 0.487361, 0.060382,
		0.190392, 0.448501, -0.873268,
		-0.452678, -0.749217, -0.483483,
		5.900238, 1.981541, 1.519784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.903062, 2.569294, 1.052701>,  <6.217113, 2.505993, 1.858223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.903062, 2.569294, 1.052701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.704453, 2.332817, 1.306931>,  <5.585287, 2.190931, 1.459468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.704453, 2.332817, 1.306931>,  <5.903062, 2.569294, 1.052701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.704453, 2.332817, 1.306931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834781, 0.525913, -0.162961,
		-0.237916, -0.611480, -0.754644,
		-0.496525, -0.591192, 0.635575,
		5.555495, 2.155460, 1.497603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.224022, 2.592016, 0.854466>,  <5.903062, 2.569294, 1.052701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.224022, 2.592016, 0.854466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.227722, 2.464081, 1.233437>,  <5.229942, 2.387320, 1.460819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.227722, 2.464081, 1.233437>,  <5.224022, 2.592016, 0.854466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.227722, 2.464081, 1.233437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874085, 0.457605, 0.163015,
		-0.485686, -0.829639, -0.275333,
		0.009250, -0.319839, 0.947427,
		5.230497, 2.368129, 1.517665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.549986, 2.312839, 1.077590>,  <5.224022, 2.592016, 0.854466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.549986, 2.312839, 1.077590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.739136, 2.441956, 1.405540>,  <4.852625, 2.519426, 1.602311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.739136, 2.441956, 1.405540>,  <4.549986, 2.312839, 1.077590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.739136, 2.441956, 1.405540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803786, 0.539242, 0.251289,
		-0.360997, -0.777832, 0.514450,
		0.472874, 0.322793, 0.819875,
		4.880998, 2.538793, 1.651503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.029845, 2.258825, 1.631487>,  <4.549986, 2.312839, 1.077590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.029845, 2.258825, 1.631487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.296494, 2.477489, 1.834179>,  <4.456483, 2.608688, 1.955794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.296494, 2.477489, 1.834179>,  <4.029845, 2.258825, 1.631487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.296494, 2.477489, 1.834179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737116, 0.382413, 0.557153,
		0.110793, -0.744930, 0.657878,
		0.666622, 0.546661, 0.506731,
		4.496480, 2.641488, 1.986198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.031256, 2.109589, 2.353189>,  <4.029845, 2.258825, 1.631487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.031256, 2.109589, 2.353189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.191544, 2.475704, 2.336838>,  <4.287716, 2.695373, 2.327027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.191544, 2.475704, 2.336838>,  <4.031256, 2.109589, 2.353189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.191544, 2.475704, 2.336838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713788, 0.339852, 0.612378,
		0.574395, -0.216213, 0.789507,
		0.400720, 0.915288, -0.040879,
		4.311759, 2.750291, 2.324574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.793968, 2.342178, 3.007804>,  <4.031256, 2.109589, 2.353189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.793968, 2.342178, 3.007804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.893372, 2.664883, 2.793373>,  <3.953014, 2.858505, 2.664715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.893372, 2.664883, 2.793373>,  <3.793968, 2.342178, 3.007804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893372, 2.664883, 2.793373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660105, 0.546079, 0.515809,
		0.708875, 0.225684, 0.668254,
		0.248510, 0.806762, -0.536077,
		3.967925, 2.906911, 2.632550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.091828, 2.891560, 3.493980>,  <3.793968, 2.342178, 3.007804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.091828, 2.891560, 3.493980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.939957, 3.037262, 3.153824>,  <3.848834, 3.124683, 2.949730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.939957, 3.037262, 3.153824>,  <4.091828, 2.891560, 3.493980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.939957, 3.037262, 3.153824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611889, 0.590557, 0.526151,
		0.693856, 0.720112, -0.001339,
		-0.379678, 0.364254, -0.850390,
		3.826053, 3.146538, 2.898707>
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
