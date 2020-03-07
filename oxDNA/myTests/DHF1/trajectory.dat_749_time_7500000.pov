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
	<4.984267, 1.588753, 5.397088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.903584, 1.409380, 5.048784>,  <4.855174, 1.301756, 4.839802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.903584, 1.409380, 5.048784>,  <4.984267, 1.588753, 5.397088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.903584, 1.409380, 5.048784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163099, 0.861241, -0.481313,
		0.965771, -0.239104, -0.100580,
		-0.201708, -0.448434, -0.870759,
		4.843071, 1.274850, 4.787557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.437023, 1.857177, 5.030285>,  <4.984267, 1.588753, 5.397088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.437023, 1.857177, 5.030285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171177, 1.713894, 4.767996>,  <5.011669, 1.627924, 4.610622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171177, 1.713894, 4.767996>,  <5.437023, 1.857177, 5.030285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171177, 1.713894, 4.767996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170512, 0.781723, -0.599862,
		0.727468, -0.510487, -0.458468,
		-0.664617, -0.358206, -0.655723,
		4.971792, 1.606431, 4.571279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.743948, 1.795456, 4.330917>,  <5.437023, 1.857177, 5.030285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.743948, 1.795456, 4.330917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.347992, 1.850981, 4.342562>,  <5.110418, 1.884295, 4.349548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.347992, 1.850981, 4.342562>,  <5.743948, 1.795456, 4.330917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.347992, 1.850981, 4.342562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069835, 0.655675, -0.751806,
		-0.123446, -0.742173, -0.658741,
		-0.989891, 0.138811, 0.029111,
		5.051024, 1.892624, 4.351295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.486581, 1.721742, 3.664194>,  <5.743948, 1.795456, 4.330917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.486581, 1.721742, 3.664194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232792, 1.949251, 3.873552>,  <5.080519, 2.085757, 3.999167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232792, 1.949251, 3.873552>,  <5.486581, 1.721742, 3.664194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.232792, 1.949251, 3.873552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047352, 0.647271, -0.760788,
		-0.771494, -0.507482, -0.383743,
		-0.634472, 0.568773, 0.523395,
		5.042450, 2.119883, 4.030571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.913023, 1.788936, 3.263355>,  <5.486581, 1.721742, 3.664194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.913023, 1.788936, 3.263355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.911472, 2.107250, 3.505581>,  <4.910542, 2.298239, 3.650917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.911472, 2.107250, 3.505581>,  <4.913023, 1.788936, 3.263355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.911472, 2.107250, 3.505581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123062, 0.600587, -0.790032,
		-0.992392, -0.077586, 0.095602,
		-0.003878, 0.795786, 0.605565,
		4.910309, 2.345986, 3.687251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.348726, 2.136050, 3.087445>,  <4.913023, 1.788936, 3.263355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.348726, 2.136050, 3.087445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554066, 2.423178, 3.275576>,  <4.677269, 2.595454, 3.388454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554066, 2.423178, 3.275576>,  <4.348726, 2.136050, 3.087445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554066, 2.423178, 3.275576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203900, 0.634378, -0.745647,
		-0.833605, 0.286878, 0.472021,
		0.513349, 0.717820, 0.470326,
		4.708071, 2.638524, 3.416673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.923242, 2.769691, 3.149230>,  <4.348726, 2.136050, 3.087445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.923242, 2.769691, 3.149230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299370, 2.898237, 3.193995>,  <4.525046, 2.975365, 3.220854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299370, 2.898237, 3.193995>,  <3.923242, 2.769691, 3.149230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.299370, 2.898237, 3.193995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167293, 0.722942, -0.670349,
		-0.296334, 0.611620, 0.733558,
		0.940319, 0.321366, 0.111913,
		4.581466, 2.994647, 3.227568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.888940, 3.429800, 3.208220>,  <3.923242, 2.769691, 3.149230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.888940, 3.429800, 3.208220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.272514, 3.366819, 3.113859>,  <4.502659, 3.329031, 3.057243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.272514, 3.366819, 3.113859>,  <3.888940, 3.429800, 3.208220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.272514, 3.366819, 3.113859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010684, 0.811105, -0.584803,
		0.283419, 0.563309, 0.776116,
		0.958937, -0.157452, -0.235901,
		4.560195, 3.319584, 3.043089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.300649, 4.049961, 1.299117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.268204, 4.175026, 0.920559>,  <4.248736, 4.250065, 0.693424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.268204, 4.175026, 0.920559>,  <4.300649, 4.049961, 1.299117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.268204, 4.175026, 0.920559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001798, 0.949476, 0.313836,
		0.996703, 0.027158, -0.076453,
		-0.081113, 0.312663, -0.946395,
		4.243870, 4.268825, 0.636641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.859044, 3.794352, 1.721420>,  <4.300649, 4.049961, 1.299117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.859044, 3.794352, 1.721420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.811951, 3.897587, 2.104988>,  <4.783695, 3.959528, 2.335129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.811951, 3.897587, 2.104988>,  <4.859044, 3.794352, 1.721420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.811951, 3.897587, 2.104988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404036, -0.869648, 0.283666,
		0.907135, 0.420836, -0.001890,
		-0.117733, 0.258087, 0.958921,
		4.776631, 3.975013, 2.392664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.445769, 3.543334, 2.005805>,  <4.859044, 3.794352, 1.721420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.445769, 3.543334, 2.005805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191208, 3.591564, 2.310555>,  <5.038471, 3.620502, 2.493404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191208, 3.591564, 2.310555>,  <5.445769, 3.543334, 2.005805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.191208, 3.591564, 2.310555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340956, -0.842005, 0.418061,
		0.691909, 0.525822, 0.494745,
		-0.636404, 0.120574, 0.761874,
		5.000287, 3.627736, 2.539117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.792933, 3.190973, 2.662591>,  <5.445769, 3.543334, 2.005805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.792933, 3.190973, 2.662591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.420464, 3.255878, 2.793180>,  <5.196981, 3.294822, 2.871534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.420464, 3.255878, 2.793180>,  <5.792933, 3.190973, 2.662591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.420464, 3.255878, 2.793180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197844, -0.527256, 0.826353,
		0.306221, 0.834069, 0.458865,
		-0.931175, 0.162263, 0.326473,
		5.141111, 3.304557, 2.891122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.844256, 3.391701, 3.339981>,  <5.792933, 3.190973, 2.662591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.844256, 3.391701, 3.339981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.461739, 3.280796, 3.302830>,  <5.232228, 3.214253, 3.280539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.461739, 3.280796, 3.302830>,  <5.844256, 3.391701, 3.339981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.461739, 3.280796, 3.302830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026777, -0.399335, 0.916414,
		-0.291176, 0.873875, 0.389306,
		-0.956295, -0.277263, -0.092877,
		5.174850, 3.197617, 3.274967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.496580, 3.478794, 4.087606>,  <5.844256, 3.391701, 3.339981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.496580, 3.478794, 4.087606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.264656, 3.227467, 3.880131>,  <5.125502, 3.076670, 3.755646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.264656, 3.227467, 3.880131>,  <5.496580, 3.478794, 4.087606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.264656, 3.227467, 3.880131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139098, -0.550936, 0.822874,
		-0.802791, 0.549258, 0.232040,
		-0.579809, -0.628319, -0.518688,
		5.090714, 3.038971, 3.724524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.898572, 3.347848, 4.549675>,  <5.496580, 3.478794, 4.087606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.898572, 3.347848, 4.549675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.932114, 3.030090, 4.309040>,  <4.952239, 2.839436, 4.164659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.932114, 3.030090, 4.309040>,  <4.898572, 3.347848, 4.549675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.932114, 3.030090, 4.309040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119957, -0.607371, 0.785310,
		-0.989232, 0.006314, -0.146224,
		0.083854, -0.794394, -0.601588,
		4.957270, 2.791772, 4.128564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.413377, 2.915606, 4.811559>,  <4.898572, 3.347848, 4.549675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.413377, 2.915606, 4.811559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594055, 2.678082, 4.545218>,  <4.702462, 2.535567, 4.385413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594055, 2.678082, 4.545218>,  <4.413377, 2.915606, 4.811559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.594055, 2.678082, 4.545218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143916, -0.785050, 0.602482,
		-0.880489, -0.176310, -0.440061,
		0.451694, -0.593811, -0.665855,
		4.729563, 2.499938, 4.345461>
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
