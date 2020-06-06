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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.075819, 34.806225, 35.439335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208254, 34.830761, 35.062695>,  <24.287714, 34.845482, 34.836708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208254, 34.830761, 35.062695>,  <24.075819, 34.806225, 35.439335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208254, 34.830761, 35.062695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661270, 0.696770, 0.277908,
		0.673130, -0.714667, 0.190126,
		0.331086, 0.061344, -0.941605,
		24.307579, 34.849163, 34.780212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843611, 34.624641, 35.352100>,  <24.075819, 34.806225, 35.439335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843611, 34.624641, 35.352100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722095, 34.890644, 35.079193>,  <24.649187, 35.050243, 34.915451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722095, 34.890644, 35.079193>,  <24.843611, 34.624641, 35.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722095, 34.890644, 35.079193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741137, 0.614940, 0.269379,
		0.598690, -0.423817, -0.679669,
		-0.303788, 0.665002, -0.682265,
		24.630959, 35.090145, 34.874516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452879, 34.949043, 35.044056>,  <24.843611, 34.624641, 35.352100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452879, 34.949043, 35.044056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134182, 35.187820, 35.006386>,  <24.942965, 35.331085, 34.983784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134182, 35.187820, 35.006386>,  <25.452879, 34.949043, 35.044056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134182, 35.187820, 35.006386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550285, 0.781046, 0.295219,
		0.249782, 0.183390, -0.950777,
		-0.796741, 0.596938, -0.094175,
		24.895161, 35.366901, 34.978134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459768, 35.395874, 34.504387>,  <25.452879, 34.949043, 35.044056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459768, 35.395874, 34.504387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216129, 35.565659, 34.772369>,  <25.069946, 35.667530, 34.933159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216129, 35.565659, 34.772369>,  <25.459768, 35.395874, 34.504387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216129, 35.565659, 34.772369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659382, 0.740415, 0.130387,
		-0.440700, 0.521173, -0.730864,
		-0.609097, 0.424457, 0.669953,
		25.033400, 35.692997, 34.973354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034119, 35.465698, 34.128502>,  <25.459768, 35.395874, 34.504387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034119, 35.465698, 34.128502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158781, 35.843918, 34.166054>,  <26.233580, 36.070850, 34.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158781, 35.843918, 34.166054>,  <26.034119, 35.465698, 34.128502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158781, 35.843918, 34.166054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342689, -0.203997, 0.917033,
		0.886247, -0.253631, -0.387605,
		0.311658, 0.945546, 0.093875,
		26.252279, 36.127583, 34.194218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554379, 35.738308, 34.514530>,  <26.034119, 35.465698, 34.128502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554379, 35.738308, 34.514530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948870, 35.672718, 34.505924>,  <27.185564, 35.633362, 34.500763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948870, 35.672718, 34.505924>,  <26.554379, 35.738308, 34.514530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948870, 35.672718, 34.505924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060058, -0.233918, -0.970399,
		0.154091, 0.958329, -0.240545,
		0.986230, -0.163976, -0.021511,
		27.244740, 35.623524, 34.499470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894979, 36.120743, 34.100826>,  <26.554379, 35.738308, 34.514530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894979, 36.120743, 34.100826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143543, 35.808857, 34.131531>,  <27.292681, 35.621723, 34.149956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143543, 35.808857, 34.131531>,  <26.894979, 36.120743, 34.100826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143543, 35.808857, 34.131531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082074, -0.162220, -0.983335,
		0.779175, 0.604754, -0.164799,
		0.621410, -0.779716, 0.076763,
		27.329966, 35.574944, 34.154560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353495, 36.176815, 33.495930>,  <26.894979, 36.120743, 34.100826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353495, 36.176815, 33.495930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408161, 35.800926, 33.621304>,  <27.440960, 35.575394, 33.696526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408161, 35.800926, 33.621304>,  <27.353495, 36.176815, 33.495930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408161, 35.800926, 33.621304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052247, -0.309122, -0.949586,
		0.989239, 0.146151, 0.006852,
		0.136665, -0.939725, 0.313431,
		27.449160, 35.519009, 33.715332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934507, 35.903473, 33.149448>,  <27.353495, 36.176815, 33.495930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934507, 35.903473, 33.149448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751575, 35.566494, 33.263382>,  <27.641817, 35.364307, 33.331741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751575, 35.566494, 33.263382>,  <27.934507, 35.903473, 33.149448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751575, 35.566494, 33.263382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002832, -0.318907, -0.947782,
		0.889294, -0.434253, 0.143459,
		-0.457327, -0.842450, 0.284832,
		27.614378, 35.313759, 33.348831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252584, 35.362816, 32.733463>,  <27.934507, 35.903473, 33.149448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252584, 35.362816, 32.733463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909742, 35.190361, 32.846241>,  <27.704037, 35.086887, 32.913906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909742, 35.190361, 32.846241>,  <28.252584, 35.362816, 32.733463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909742, 35.190361, 32.846241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137472, -0.336029, -0.931765,
		0.496458, -0.837381, 0.228743,
		-0.857106, -0.431136, 0.281940,
		27.652611, 35.061020, 32.930824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108343, 34.658508, 32.352791>,  <28.252584, 35.362816, 32.733463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108343, 34.658508, 32.352791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745642, 34.768929, 32.480286>,  <27.528021, 34.835178, 32.556782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745642, 34.768929, 32.480286>,  <28.108343, 34.658508, 32.352791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745642, 34.768929, 32.480286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385667, -0.237367, -0.891582,
		-0.170459, -0.931373, 0.321695,
		-0.906755, 0.276045, 0.318738,
		27.473616, 34.851742, 32.575909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683933, 34.102604, 32.241821>,  <28.108343, 34.658508, 32.352791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683933, 34.102604, 32.241821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464327, 34.436829, 32.233639>,  <27.332563, 34.637363, 32.228729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464327, 34.436829, 32.233639>,  <27.683933, 34.102604, 32.241821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464327, 34.436829, 32.233639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388099, -0.276528, -0.879154,
		-0.740242, -0.474733, 0.476099,
		-0.549018, 0.835560, -0.020454,
		27.299622, 34.687496, 32.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115238, 33.995163, 31.822874>,  <27.683933, 34.102604, 32.241821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115238, 33.995163, 31.822874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059162, 34.389717, 31.857241>,  <27.025517, 34.626450, 31.877861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059162, 34.389717, 31.857241>,  <27.115238, 33.995163, 31.822874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059162, 34.389717, 31.857241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463529, 0.011295, -0.886010,
		-0.874922, -0.164034, 0.455637,
		-0.140189, 0.986390, 0.085917,
		27.017105, 34.685635, 31.883017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501181, 34.075981, 31.478241>,  <27.115238, 33.995163, 31.822874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501181, 34.075981, 31.478241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699635, 34.422943, 31.463013>,  <26.818707, 34.631123, 31.453876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699635, 34.422943, 31.463013>,  <26.501181, 34.075981, 31.478241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699635, 34.422943, 31.463013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148761, 0.041725, -0.987992,
		-0.855406, 0.495843, 0.149738,
		0.496136, 0.867409, -0.038070,
		26.848476, 34.683167, 31.451591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032541, 34.578148, 31.315359>,  <26.501181, 34.075981, 31.478241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032541, 34.578148, 31.315359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393684, 34.696823, 31.190895>,  <26.610371, 34.768028, 31.116217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393684, 34.696823, 31.190895>,  <26.032541, 34.578148, 31.315359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393684, 34.696823, 31.190895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304919, -0.068357, -0.949922,
		-0.303101, 0.952525, 0.028749,
		0.902859, 0.296689, -0.311161,
		26.664541, 34.785831, 31.097548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932339, 34.899914, 30.728857>,  <26.032541, 34.578148, 31.315359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932339, 34.899914, 30.728857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323706, 34.819588, 30.709389>,  <26.558527, 34.771393, 30.697708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323706, 34.819588, 30.709389>,  <25.932339, 34.899914, 30.728857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323706, 34.819588, 30.709389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090058, -0.202435, -0.975146,
		0.185970, 0.958485, -0.216151,
		0.978419, -0.200814, -0.048673,
		26.617231, 34.759342, 30.694786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204309, 35.213844, 30.189445>,  <25.932339, 34.899914, 30.728857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204309, 35.213844, 30.189445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478130, 34.926819, 30.240820>,  <26.642424, 34.754604, 30.271645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478130, 34.926819, 30.240820>,  <26.204309, 35.213844, 30.189445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478130, 34.926819, 30.240820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077904, -0.247194, -0.965829,
		0.724788, 0.651156, -0.225118,
		0.684553, -0.717559, 0.128435,
		26.683496, 34.711552, 30.279350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529163, 35.222683, 29.587328>,  <26.204309, 35.213844, 30.189445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529163, 35.222683, 29.587328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670437, 34.879486, 29.736521>,  <26.755201, 34.673569, 29.826036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670437, 34.879486, 29.736521>,  <26.529163, 35.222683, 29.587328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670437, 34.879486, 29.736521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012806, -0.403069, -0.915080,
		0.935466, 0.318414, -0.153345,
		0.353183, -0.857990, 0.372980,
		26.776392, 34.622089, 29.848415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980261, 34.944950, 29.040194>,  <26.529163, 35.222683, 29.587328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980261, 34.944950, 29.040194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966034, 34.611706, 29.260977>,  <26.957497, 34.411758, 29.393446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966034, 34.611706, 29.260977>,  <26.980261, 34.944950, 29.040194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966034, 34.611706, 29.260977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023278, -0.552848, -0.832957,
		0.999096, -0.016779, 0.039057,
		-0.035569, -0.833113, 0.551958,
		26.955362, 34.361771, 29.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583521, 34.537025, 28.934618>,  <26.980261, 34.944950, 29.040194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583521, 34.537025, 28.934618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277351, 34.297421, 29.028696>,  <27.093649, 34.153660, 29.085142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277351, 34.297421, 29.028696>,  <27.583521, 34.537025, 28.934618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277351, 34.297421, 29.028696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082797, -0.454106, -0.887092,
		0.638178, -0.659528, 0.397180,
		-0.765424, -0.599008, 0.235193,
		27.047724, 34.117718, 29.099255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774343, 33.906635, 28.648472>,  <27.583521, 34.537025, 28.934618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774343, 33.906635, 28.648472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378578, 33.875965, 28.697754>,  <27.141119, 33.857563, 28.727324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378578, 33.875965, 28.697754>,  <27.774343, 33.906635, 28.648472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378578, 33.875965, 28.697754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061155, -0.549625, -0.833170,
		0.131601, -0.831885, 0.539117,
		-0.989414, -0.076676, 0.123205,
		27.081755, 33.852962, 28.734716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779369, 33.240723, 28.444427>,  <27.774343, 33.906635, 28.648472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779369, 33.240723, 28.444427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421209, 33.416733, 28.417204>,  <27.206312, 33.522339, 28.400869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421209, 33.416733, 28.417204>,  <27.779369, 33.240723, 28.444427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421209, 33.416733, 28.417204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108775, -0.364398, -0.924869,
		-0.431770, -0.820725, 0.374146,
		-0.895401, 0.440029, -0.068062,
		27.152588, 33.548740, 28.396786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403505, 32.614578, 28.269787>,  <27.779369, 33.240723, 28.444427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403505, 32.614578, 28.269787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201708, 32.949837, 28.186842>,  <27.080629, 33.150993, 28.137075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201708, 32.949837, 28.186842>,  <27.403505, 32.614578, 28.269787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201708, 32.949837, 28.186842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187601, -0.340835, -0.921215,
		-0.842789, -0.425844, 0.329185,
		-0.504492, 0.838146, -0.207364,
		27.050360, 33.201279, 28.124634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912539, 32.404675, 27.796036>,  <27.403505, 32.614578, 28.269787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912539, 32.404675, 27.796036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924829, 32.801720, 27.749104>,  <26.932203, 33.039948, 27.720943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924829, 32.801720, 27.749104>,  <26.912539, 32.404675, 27.796036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924829, 32.801720, 27.749104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126092, -0.112599, -0.985607,
		-0.991543, 0.045080, 0.121701,
		0.030728, 0.992617, -0.117331,
		26.934048, 33.099506, 27.713903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242262, 32.507950, 27.424900>,  <26.912539, 32.404675, 27.796036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242262, 32.507950, 27.424900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514688, 32.795887, 27.371269>,  <26.678144, 32.968647, 27.339090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514688, 32.795887, 27.371269>,  <26.242262, 32.507950, 27.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514688, 32.795887, 27.371269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276795, 0.083579, -0.957287,
		-0.677889, 0.689089, 0.256171,
		0.681067, 0.719841, -0.134079,
		26.719009, 33.011841, 27.331045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954346, 32.910370, 26.968023>,  <26.242262, 32.507950, 27.424900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954346, 32.910370, 26.968023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349897, 32.969208, 26.959223>,  <26.587229, 33.004509, 26.953941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349897, 32.969208, 26.959223>,  <25.954346, 32.910370, 26.968023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349897, 32.969208, 26.959223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033107, 0.073475, -0.996747,
		-0.144999, 0.986390, 0.077528,
		0.988878, 0.147094, -0.022002,
		26.646561, 33.013336, 26.952621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211411, 33.576206, 26.716812>,  <25.954346, 32.910370, 26.968023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211411, 33.576206, 26.716812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475496, 33.299187, 26.600540>,  <26.633947, 33.132977, 26.530777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475496, 33.299187, 26.600540>,  <26.211411, 33.576206, 26.716812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475496, 33.299187, 26.600540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263534, 0.148812, -0.953103,
		0.703328, 0.705854, -0.084263,
		0.660212, -0.692550, -0.290680,
		26.673559, 33.091423, 26.513336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688229, 33.867989, 26.297752>,  <26.211411, 33.576206, 26.716812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688229, 33.867989, 26.297752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671755, 33.485348, 26.182364>,  <26.661871, 33.255764, 26.113131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671755, 33.485348, 26.182364>,  <26.688229, 33.867989, 26.297752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671755, 33.485348, 26.182364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154273, 0.291342, -0.944097,
		0.987170, 0.005620, -0.159577,
		-0.041186, -0.956603, -0.288471,
		26.659399, 33.198368, 26.095821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074291, 33.808174, 25.714054>,  <26.688229, 33.867989, 26.297752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074291, 33.808174, 25.714054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774382, 33.544998, 25.742216>,  <26.594435, 33.387093, 25.759113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774382, 33.544998, 25.742216>,  <27.074291, 33.808174, 25.714054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774382, 33.544998, 25.742216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153115, 0.068997, -0.985797,
		0.643734, -0.749906, -0.152472,
		-0.749775, -0.657936, 0.070406,
		26.549450, 33.347618, 25.763338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161713, 33.183620, 25.419035>,  <27.074291, 33.808174, 25.714054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161713, 33.183620, 25.419035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767704, 33.252563, 25.421129>,  <26.531300, 33.293930, 25.422386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767704, 33.252563, 25.421129>,  <27.161713, 33.183620, 25.419035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767704, 33.252563, 25.421129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008928, -0.020650, -0.999747,
		-0.172212, -0.984817, 0.021879,
		-0.985020, 0.172363, 0.005236,
		26.472198, 33.304272, 25.422701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239307, 32.838055, 26.128338>,  <27.161713, 33.183620, 25.419035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239307, 32.838055, 26.128338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184927, 32.493092, 26.323387>,  <27.152298, 32.286114, 26.440416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184927, 32.493092, 26.323387>,  <27.239307, 32.838055, 26.128338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184927, 32.493092, 26.323387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990333, -0.131968, 0.042711,
		0.027516, 0.488717, 0.872008,
		-0.135951, -0.862403, 0.487624,
		27.144142, 32.234371, 26.469675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545216, 32.713409, 26.904993>,  <27.239307, 32.838055, 26.128338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545216, 32.713409, 26.904993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524990, 32.368408, 26.703583>,  <27.512856, 32.161407, 26.582737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524990, 32.368408, 26.703583>,  <27.545216, 32.713409, 26.904993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524990, 32.368408, 26.703583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972595, -0.157090, 0.171413,
		-0.226942, -0.481059, 0.846805,
		-0.050564, -0.862499, -0.503526,
		27.509821, 32.109657, 26.552525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923609, 32.209942, 27.217638>,  <27.545216, 32.713409, 26.904993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923609, 32.209942, 27.217638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889082, 32.066216, 26.845953>,  <27.868366, 31.979979, 26.622942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889082, 32.066216, 26.845953>,  <27.923609, 32.209942, 27.217638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889082, 32.066216, 26.845953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942179, -0.332583, 0.041087,
		-0.323804, -0.871940, 0.367249,
		-0.086315, -0.359318, -0.929215,
		27.863188, 31.958420, 26.567188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612253, 32.119282, 27.040176>,  <27.923609, 32.209942, 27.217638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612253, 32.119282, 27.040176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908779, 32.148827, 26.773344>,  <29.086695, 32.166553, 26.613245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908779, 32.148827, 26.773344>,  <28.612253, 32.119282, 27.040176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908779, 32.148827, 26.773344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366988, 0.787571, 0.495027,
		0.561936, -0.611781, 0.556733,
		0.741315, 0.073859, -0.667080,
		29.131174, 32.170986, 26.573219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209808, 32.272217, 27.405645>,  <28.612253, 32.119282, 27.040176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209808, 32.272217, 27.405645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294291, 32.389507, 27.032677>,  <29.344980, 32.459881, 26.808895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294291, 32.389507, 27.032677>,  <29.209808, 32.272217, 27.405645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294291, 32.389507, 27.032677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469843, 0.806048, 0.359910,
		0.857111, -0.514107, 0.032471,
		0.211205, 0.293227, -0.932422,
		29.357653, 32.477474, 26.752951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982023, 32.414352, 27.266207>,  <29.209808, 32.272217, 27.405645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982023, 32.414352, 27.266207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715528, 32.645546, 27.077711>,  <29.555632, 32.784264, 26.964613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715528, 32.645546, 27.077711>,  <29.982023, 32.414352, 27.266207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715528, 32.645546, 27.077711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326258, 0.794129, 0.512752,
		0.670587, 0.187868, -0.717648,
		-0.666235, 0.577984, -0.471239,
		29.515657, 32.818939, 26.936338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257122, 32.988567, 26.949741>,  <29.982023, 32.414352, 27.266207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257122, 32.988567, 26.949741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874371, 33.100414, 26.981234>,  <29.644720, 33.167522, 27.000130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874371, 33.100414, 26.981234>,  <30.257122, 32.988567, 26.949741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874371, 33.100414, 26.981234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286466, 0.863326, 0.415457,
		0.048198, 0.420096, -0.906199,
		-0.956877, 0.279620, 0.078733,
		29.587307, 33.184299, 27.004854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213415, 33.704216, 26.948009>,  <30.257122, 32.988567, 26.949741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213415, 33.704216, 26.948009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850636, 33.617188, 27.092289>,  <29.632967, 33.564972, 27.178858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850636, 33.617188, 27.092289>,  <30.213415, 33.704216, 26.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850636, 33.617188, 27.092289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114392, 0.696900, 0.707986,
		-0.405408, 0.683370, -0.607166,
		-0.906950, -0.217568, 0.360701,
		29.578550, 33.551918, 27.200499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920477, 34.364883, 27.157736>,  <30.213415, 33.704216, 26.948009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920477, 34.364883, 27.157736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730062, 34.075974, 27.358419>,  <29.615814, 33.902630, 27.478828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730062, 34.075974, 27.358419>,  <29.920477, 34.364883, 27.157736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730062, 34.075974, 27.358419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173184, 0.482330, 0.858700,
		-0.862203, 0.495662, -0.104521,
		-0.476038, -0.722273, 0.501707,
		29.587252, 33.859291, 27.508932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484737, 34.705978, 27.609447>,  <29.920477, 34.364883, 27.157736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484737, 34.705978, 27.609447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523130, 34.337444, 27.760138>,  <29.546165, 34.116322, 27.850552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523130, 34.337444, 27.760138>,  <29.484737, 34.705978, 27.609447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523130, 34.337444, 27.760138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027743, 0.380801, 0.924241,
		-0.994996, -0.078258, 0.062111,
		0.095981, -0.921339, 0.376725,
		29.551926, 34.061043, 27.873156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935848, 34.614803, 28.161386>,  <29.484737, 34.705978, 27.609447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935848, 34.614803, 28.161386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221636, 34.341839, 28.223150>,  <29.393108, 34.178059, 28.260208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221636, 34.341839, 28.223150>,  <28.935848, 34.614803, 28.161386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221636, 34.341839, 28.223150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074583, 0.145151, 0.986594,
		-0.695680, -0.716408, 0.052810,
		0.714470, -0.682415, 0.154411,
		29.435976, 34.137115, 28.269474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755466, 34.157433, 28.666647>,  <28.935848, 34.614803, 28.161386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755466, 34.157433, 28.666647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154732, 34.134552, 28.674635>,  <29.394291, 34.120823, 28.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154732, 34.134552, 28.674635>,  <28.755466, 34.157433, 28.666647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154732, 34.134552, 28.674635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024801, -0.085067, 0.996067,
		-0.055267, -0.994733, -0.086329,
		0.998163, -0.057190, 0.019969,
		29.454180, 34.117390, 28.680626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829308, 33.776649, 29.216404>,  <28.755466, 34.157433, 28.666647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829308, 33.776649, 29.216404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192106, 33.935551, 29.160480>,  <29.409784, 34.030891, 29.126926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192106, 33.935551, 29.160480>,  <28.829308, 33.776649, 29.216404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192106, 33.935551, 29.160480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191967, -0.094501, 0.976841,
		0.374844, -0.912829, -0.161972,
		0.906996, 0.397256, -0.139810,
		29.464205, 34.054726, 29.118538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336744, 33.467770, 29.522497>,  <28.829308, 33.776649, 29.216404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336744, 33.467770, 29.522497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535564, 33.811886, 29.477173>,  <29.654856, 34.018356, 29.449978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535564, 33.811886, 29.477173>,  <29.336744, 33.467770, 29.522497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535564, 33.811886, 29.477173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260042, -0.023102, 0.965321,
		0.827840, -0.509278, -0.235195,
		0.497051, 0.860292, -0.113308,
		29.684679, 34.069973, 29.443180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996725, 33.359138, 29.964983>,  <29.336744, 33.467770, 29.522497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996725, 33.359138, 29.964983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963148, 33.750122, 29.887497>,  <29.943001, 33.984711, 29.841005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963148, 33.750122, 29.887497>,  <29.996725, 33.359138, 29.964983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963148, 33.750122, 29.887497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416882, 0.211021, 0.884127,
		0.905076, -0.006540, -0.425199,
		-0.083944, 0.977460, -0.193716,
		29.937965, 34.043362, 29.829382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665096, 33.705784, 30.055017>,  <29.996725, 33.359138, 29.964983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665096, 33.705784, 30.055017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411236, 34.011402, 30.101398>,  <30.258919, 34.194775, 30.129227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411236, 34.011402, 30.101398>,  <30.665096, 33.705784, 30.055017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411236, 34.011402, 30.101398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386439, 0.183827, 0.903810,
		0.669240, 0.618413, -0.411925,
		-0.634651, 0.764050, 0.115954,
		30.220840, 34.240616, 30.136185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018122, 34.240425, 30.394922>,  <30.665096, 33.705784, 30.055017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018122, 34.240425, 30.394922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637379, 34.346077, 30.457150>,  <30.408934, 34.409470, 30.494486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637379, 34.346077, 30.457150>,  <31.018122, 34.240425, 30.394922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637379, 34.346077, 30.457150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226685, 0.264877, 0.937259,
		0.206353, 0.927402, -0.312000,
		-0.951857, 0.264132, 0.155570,
		30.351822, 34.425316, 30.503820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064377, 34.830566, 30.732691>,  <31.018122, 34.240425, 30.394922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064377, 34.830566, 30.732691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702261, 34.693344, 30.832897>,  <30.484991, 34.611012, 30.893021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702261, 34.693344, 30.832897>,  <31.064377, 34.830566, 30.732691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702261, 34.693344, 30.832897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224470, 0.114345, 0.967749,
		-0.360640, 0.932329, -0.026509,
		-0.905291, -0.343058, 0.250517,
		30.430674, 34.590427, 30.908052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804752, 35.224346, 31.226658>,  <31.064377, 34.830566, 30.732691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804752, 35.224346, 31.226658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588417, 34.892487, 31.282057>,  <30.458616, 34.693371, 31.315296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588417, 34.892487, 31.282057>,  <30.804752, 35.224346, 31.226658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588417, 34.892487, 31.282057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021317, 0.178125, 0.983777,
		-0.840855, 0.529114, -0.114023,
		-0.540840, -0.829645, 0.138498,
		30.426165, 34.643593, 31.323606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283434, 35.477356, 31.640375>,  <30.804752, 35.224346, 31.226658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283434, 35.477356, 31.640375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271032, 35.083084, 31.706680>,  <30.263592, 34.846523, 31.746464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271032, 35.083084, 31.706680>,  <30.283434, 35.477356, 31.640375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271032, 35.083084, 31.706680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072030, 0.167616, 0.983218,
		-0.996921, 0.018545, -0.076195,
		-0.031005, -0.985678, 0.165764,
		30.261730, 34.787380, 31.756409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699961, 35.356735, 32.212124>,  <30.283434, 35.477356, 31.640375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699961, 35.356735, 32.212124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944862, 35.040859, 32.196407>,  <30.091803, 34.851334, 32.186977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944862, 35.040859, 32.196407>,  <29.699961, 35.356735, 32.212124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944862, 35.040859, 32.196407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265567, -0.252195, 0.930522,
		-0.744729, -0.559280, -0.364122,
		0.612252, -0.789686, -0.039291,
		30.128538, 34.803955, 32.184620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308084, 34.918274, 32.474770>,  <29.699961, 35.356735, 32.212124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308084, 34.918274, 32.474770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679411, 34.777470, 32.522629>,  <29.902206, 34.692986, 32.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679411, 34.777470, 32.522629>,  <29.308084, 34.918274, 32.474770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679411, 34.777470, 32.522629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244142, -0.334451, 0.910240,
		-0.280398, -0.874203, -0.396417,
		0.928316, -0.352012, 0.119651,
		29.957905, 34.671864, 32.558525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312677, 34.207832, 32.789612>,  <29.308084, 34.918274, 32.474770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312677, 34.207832, 32.789612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698824, 34.259022, 32.880558>,  <29.930511, 34.289734, 32.935123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698824, 34.259022, 32.880558>,  <29.312677, 34.207832, 32.789612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698824, 34.259022, 32.880558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175009, -0.328695, 0.928079,
		0.193501, -0.935726, -0.294914,
		0.965364, 0.127972, 0.227364,
		29.988434, 34.297413, 32.948769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413040, 33.676849, 33.234234>,  <29.312677, 34.207832, 32.789612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413040, 33.676849, 33.234234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692835, 33.952297, 33.310673>,  <29.860712, 34.117565, 33.356537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692835, 33.952297, 33.310673>,  <29.413040, 33.676849, 33.234234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692835, 33.952297, 33.310673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170728, -0.098643, 0.980368,
		0.693951, -0.718383, 0.048567,
		0.699489, 0.688619, 0.191101,
		29.902681, 34.158882, 33.368004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719736, 33.377357, 33.734184>,  <29.413040, 33.676849, 33.234234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719736, 33.377357, 33.734184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795874, 33.769665, 33.751453>,  <29.841557, 34.005051, 33.761814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795874, 33.769665, 33.751453>,  <29.719736, 33.377357, 33.734184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795874, 33.769665, 33.751453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083287, -0.027689, 0.996141,
		0.978178, -0.193204, 0.076415,
		0.190343, 0.980768, 0.043176,
		29.852976, 34.063896, 33.764408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148550, 33.397930, 34.282097>,  <29.719736, 33.377357, 33.734184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148550, 33.397930, 34.282097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022644, 33.775681, 34.244003>,  <29.947102, 34.002331, 34.221146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022644, 33.775681, 34.244003>,  <30.148550, 33.397930, 34.282097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022644, 33.775681, 34.244003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109739, 0.063453, 0.991933,
		0.942805, 0.322676, 0.083662,
		-0.314764, 0.944380, -0.095234,
		29.928215, 34.058994, 34.215435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589399, 33.827641, 34.821743>,  <30.148550, 33.397930, 34.282097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589399, 33.827641, 34.821743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261555, 34.034874, 34.723904>,  <30.064848, 34.159214, 34.665199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261555, 34.034874, 34.723904>,  <30.589399, 33.827641, 34.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261555, 34.034874, 34.723904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104016, 0.285275, 0.952785,
		0.563401, 0.806354, -0.179925,
		-0.819610, 0.518084, -0.244598,
		30.015671, 34.190300, 34.650524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621910, 34.561241, 35.095505>,  <30.589399, 33.827641, 34.821743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621910, 34.561241, 35.095505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237089, 34.468761, 35.037533>,  <30.006197, 34.413273, 35.002750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237089, 34.468761, 35.037533>,  <30.621910, 34.561241, 35.095505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237089, 34.468761, 35.037533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203545, 0.254298, 0.945464,
		-0.181736, 0.939084, -0.291707,
		-0.962051, -0.231201, -0.144931,
		29.948475, 34.399403, 34.994053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139357, 34.639721, 35.605049>,  <30.621910, 34.561241, 35.095505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139357, 34.639721, 35.605049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437738, 34.560600, 35.859428>,  <31.616768, 34.513130, 36.012054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437738, 34.560600, 35.859428>,  <31.139357, 34.639721, 35.605049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437738, 34.560600, 35.859428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379321, 0.658685, 0.649807,
		-0.547421, -0.725954, 0.416319,
		0.745953, -0.197800, 0.635947,
		31.661524, 34.501259, 36.050213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883926, 34.405773, 36.326817>,  <31.139357, 34.639721, 35.605049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883926, 34.405773, 36.326817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246262, 34.574139, 36.345959>,  <31.463663, 34.675156, 36.357445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246262, 34.574139, 36.345959>,  <30.883926, 34.405773, 36.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246262, 34.574139, 36.345959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285310, 0.522668, 0.803378,
		0.313137, -0.741386, 0.593543,
		0.905839, 0.420911, 0.047858,
		31.518013, 34.700413, 36.360317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361485, 34.298069, 36.875935>,  <30.883926, 34.405773, 36.326817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361485, 34.298069, 36.875935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447809, 34.675465, 36.775341>,  <31.499603, 34.901901, 36.714985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447809, 34.675465, 36.775341>,  <31.361485, 34.298069, 36.875935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447809, 34.675465, 36.775341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297936, 0.308901, 0.903225,
		0.929871, -0.120000, 0.347765,
		0.215811, 0.943494, -0.251485,
		31.512552, 34.958511, 36.699894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894455, 34.644028, 37.312946>,  <31.361485, 34.298069, 36.875935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894455, 34.644028, 37.312946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618845, 34.895615, 37.168922>,  <31.453480, 35.046566, 37.082508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618845, 34.895615, 37.168922>,  <31.894455, 34.644028, 37.312946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618845, 34.895615, 37.168922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185671, 0.327041, 0.926591,
		0.700552, 0.705296, -0.108558,
		-0.689024, 0.628969, -0.360062,
		31.412138, 35.084305, 37.060905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954479, 35.304691, 37.608311>,  <31.894455, 34.644028, 37.312946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954479, 35.304691, 37.608311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572546, 35.229828, 37.515995>,  <31.343386, 35.184910, 37.460606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572546, 35.229828, 37.515995>,  <31.954479, 35.304691, 37.608311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572546, 35.229828, 37.515995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278873, 0.296342, 0.913461,
		-0.102573, 0.936564, -0.335152,
		-0.954835, -0.187162, -0.230785,
		31.286097, 35.173679, 37.446758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548635, 35.847652, 37.867279>,  <31.954479, 35.304691, 37.608311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548635, 35.847652, 37.867279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377005, 35.486576, 37.854416>,  <31.274027, 35.269928, 37.846699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377005, 35.486576, 37.854416>,  <31.548635, 35.847652, 37.867279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377005, 35.486576, 37.854416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218447, 0.069162, 0.973395,
		-0.876455, 0.424685, -0.226867,
		-0.429077, -0.902695, -0.032153,
		31.248281, 35.215767, 37.844769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915194, 35.805775, 38.205101>,  <31.548635, 35.847652, 37.867279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915194, 35.805775, 38.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012882, 35.417896, 38.207802>,  <31.071495, 35.185169, 38.209423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012882, 35.417896, 38.207802>,  <30.915194, 35.805775, 38.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012882, 35.417896, 38.207802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282505, -0.064484, 0.957096,
		-0.927657, -0.235651, -0.289692,
		0.244221, -0.969696, 0.006753,
		31.086149, 35.126987, 38.209827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387581, 35.458858, 38.557518>,  <30.915194, 35.805775, 38.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387581, 35.458858, 38.557518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724380, 35.243767, 38.574860>,  <30.926460, 35.114712, 38.585262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724380, 35.243767, 38.574860>,  <30.387581, 35.458858, 38.557518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724380, 35.243767, 38.574860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180983, -0.205859, 0.961700,
		-0.508214, -0.817597, -0.270653,
		0.842000, -0.537733, 0.043351,
		30.976980, 35.082447, 38.587864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239986, 34.911407, 39.045067>,  <30.387581, 35.458858, 38.557518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239986, 34.911407, 39.045067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639597, 34.928883, 39.042496>,  <30.879362, 34.939369, 39.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639597, 34.928883, 39.042496>,  <30.239986, 34.911407, 39.045067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639597, 34.928883, 39.042496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015742, -0.216327, 0.976194,
		0.041258, -0.975343, -0.216804,
		0.999024, 0.043689, -0.006429,
		30.939304, 34.941990, 39.040565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369781, 34.518570, 39.537685>,  <30.239986, 34.911407, 39.045067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369781, 34.518570, 39.537685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733604, 34.678226, 39.491398>,  <30.951899, 34.774021, 39.463627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733604, 34.678226, 39.491398>,  <30.369781, 34.518570, 39.537685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733604, 34.678226, 39.491398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202763, -0.183163, 0.961945,
		0.362760, -0.898407, -0.247529,
		0.909556, 0.399145, -0.115720,
		31.006472, 34.797970, 39.456680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738163, 34.023666, 39.921795>,  <30.369781, 34.518570, 39.537685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738163, 34.023666, 39.921795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941475, 34.364620, 39.872669>,  <31.063463, 34.569195, 39.843193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941475, 34.364620, 39.872669>,  <30.738163, 34.023666, 39.921795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941475, 34.364620, 39.872669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326763, -0.058940, 0.943267,
		0.796791, -0.519576, -0.308487,
		0.508281, 0.852389, -0.122816,
		31.093960, 34.620338, 39.835823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527285, 33.946728, 40.141884>,  <30.738163, 34.023666, 39.921795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527285, 33.946728, 40.141884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433907, 34.330986, 40.202099>,  <31.377880, 34.561543, 40.238228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433907, 34.330986, 40.202099>,  <31.527285, 33.946728, 40.141884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433907, 34.330986, 40.202099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259759, -0.087581, 0.961694,
		0.937032, 0.263608, -0.229091,
		-0.233447, 0.960646, 0.150541,
		31.363873, 34.619179, 40.247261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081902, 34.310219, 40.598297>,  <31.527285, 33.946728, 40.141884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081902, 34.310219, 40.598297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766014, 34.553272, 40.632084>,  <31.576483, 34.699104, 40.652355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766014, 34.553272, 40.632084>,  <32.081902, 34.310219, 40.598297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766014, 34.553272, 40.632084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144329, 0.050203, 0.988255,
		0.596256, 0.792630, -0.127346,
		-0.789714, 0.607633, 0.084466,
		31.529100, 34.735561, 40.657425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389809, 34.802223, 40.926380>,  <32.081902, 34.310219, 40.598297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389809, 34.802223, 40.926380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997395, 34.856068, 40.982159>,  <31.761946, 34.888374, 41.015625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997395, 34.856068, 40.982159>,  <32.389809, 34.802223, 40.926380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997395, 34.856068, 40.982159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143346, 0.019658, 0.989477,
		0.130454, 0.990703, -0.038581,
		-0.981037, 0.134612, 0.139449,
		31.703083, 34.896450, 41.023994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301025, 35.391392, 41.416637>,  <32.389809, 34.802223, 40.926380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301025, 35.391392, 41.416637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954462, 35.193237, 41.441715>,  <31.746525, 35.074345, 41.456764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954462, 35.193237, 41.441715>,  <32.301025, 35.391392, 41.416637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954462, 35.193237, 41.441715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007638, 0.138697, 0.990306,
		-0.499278, 0.857530, -0.123952,
		-0.866408, -0.495385, 0.062698,
		31.694540, 35.044621, 41.460526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898809, 35.755314, 42.008137>,  <32.301025, 35.391392, 41.416637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898809, 35.755314, 42.008137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708111, 35.406334, 41.965168>,  <31.593693, 35.196945, 41.939384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708111, 35.406334, 41.965168>,  <31.898809, 35.755314, 42.008137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708111, 35.406334, 41.965168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243575, 0.013688, 0.969785,
		-0.844622, 0.488507, -0.219033,
		-0.476745, -0.872453, -0.107427,
		31.565088, 35.144600, 41.932941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329199, 35.896069, 42.445461>,  <31.898809, 35.755314, 42.008137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329199, 35.896069, 42.445461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339216, 35.502438, 42.375072>,  <31.345226, 35.266258, 42.332840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339216, 35.502438, 42.375072>,  <31.329199, 35.896069, 42.445461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339216, 35.502438, 42.375072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055914, -0.177134, 0.982597,
		-0.998122, -0.014769, -0.059460,
		0.025044, -0.984076, -0.175976,
		31.346729, 35.207214, 42.322281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789236, 35.680214, 42.837811>,  <31.329199, 35.896069, 42.445461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789236, 35.680214, 42.837811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039009, 35.370502, 42.796680>,  <31.188873, 35.184673, 42.772003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039009, 35.370502, 42.796680>,  <30.789236, 35.680214, 42.837811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039009, 35.370502, 42.796680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258967, -0.329431, 0.907971,
		-0.736901, -0.540336, -0.406220,
		0.624431, -0.774282, -0.102829,
		31.226339, 35.138218, 42.765831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485624, 35.066460, 43.113899>,  <30.789236, 35.680214, 42.837811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485624, 35.066460, 43.113899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872757, 34.966824, 43.099739>,  <31.105038, 34.907043, 43.091244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872757, 34.966824, 43.099739>,  <30.485624, 35.066460, 43.113899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872757, 34.966824, 43.099739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103176, -0.521294, 0.847117,
		-0.229463, -0.816215, -0.530225,
		0.967833, -0.249089, -0.035404,
		31.163107, 34.892097, 43.089119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474169, 34.375340, 43.281902>,  <30.485624, 35.066460, 43.113899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474169, 34.375340, 43.281902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828915, 34.539207, 43.367359>,  <31.041761, 34.637527, 43.418633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828915, 34.539207, 43.367359>,  <30.474169, 34.375340, 43.281902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828915, 34.539207, 43.367359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092823, -0.610960, 0.786201,
		0.452610, -0.677422, -0.579865,
		0.886864, 0.409667, 0.213646,
		31.094975, 34.662109, 43.431454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843142, 33.847054, 43.458973>,  <30.474169, 34.375340, 43.281902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843142, 33.847054, 43.458973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037817, 34.152718, 43.628296>,  <31.154623, 34.336117, 43.729889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037817, 34.152718, 43.628296>,  <30.843142, 33.847054, 43.458973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037817, 34.152718, 43.628296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173053, -0.390630, 0.904136,
		0.856263, -0.513288, -0.057875,
		0.486689, 0.764162, 0.423308,
		31.183825, 34.381966, 43.755287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417273, 33.627346, 43.930172>,  <30.843142, 33.847054, 43.458973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417273, 33.627346, 43.930172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364923, 34.003422, 44.055981>,  <31.333513, 34.229065, 44.131466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364923, 34.003422, 44.055981>,  <31.417273, 33.627346, 43.930172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364923, 34.003422, 44.055981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212139, -0.336461, 0.917492,
		0.968436, 0.053352, 0.243484,
		-0.130872, 0.940185, 0.314523,
		31.325663, 34.285477, 44.150337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858328, 33.771130, 44.585529>,  <31.417273, 33.627346, 43.930172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858328, 33.771130, 44.585529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541988, 34.015919, 44.588421>,  <31.352184, 34.162792, 44.590157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541988, 34.015919, 44.588421>,  <31.858328, 33.771130, 44.585529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541988, 34.015919, 44.588421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244428, -0.326650, 0.912992,
		0.561085, 0.720272, 0.407913,
		-0.790847, 0.611971, 0.007224,
		31.304733, 34.199509, 44.590588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823027, 33.950684, 45.289120>,  <31.858328, 33.771130, 44.585529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823027, 33.950684, 45.289120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479885, 34.069237, 45.121197>,  <31.274000, 34.140369, 45.020443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479885, 34.069237, 45.121197>,  <31.823027, 33.950684, 45.289120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479885, 34.069237, 45.121197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481946, -0.180480, 0.857412,
		0.178359, 0.937860, 0.297668,
		-0.857856, 0.296387, -0.419807,
		31.222528, 34.158154, 44.995255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581951, 34.446953, 45.689053>,  <31.823027, 33.950684, 45.289120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581951, 34.446953, 45.689053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256609, 34.308655, 45.501900>,  <31.061403, 34.225677, 45.389610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256609, 34.308655, 45.501900>,  <31.581951, 34.446953, 45.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256609, 34.308655, 45.501900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428194, -0.188654, 0.883775,
		-0.393827, 0.919169, 0.005398,
		-0.813357, -0.345743, -0.467880,
		31.012602, 34.204933, 45.361534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014931, 34.710629, 46.039829>,  <31.581951, 34.446953, 45.689053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014931, 34.710629, 46.039829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872311, 34.392555, 45.843643>,  <30.786739, 34.201714, 45.725929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872311, 34.392555, 45.843643>,  <31.014931, 34.710629, 46.039829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872311, 34.392555, 45.843643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437379, -0.321826, 0.839719,
		-0.825574, 0.513923, -0.233048,
		-0.356550, -0.795180, -0.490470,
		30.765347, 34.153999, 45.696503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211031, 34.596077, 46.272762>,  <31.014931, 34.710629, 46.039829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211031, 34.596077, 46.272762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346092, 34.258415, 46.106197>,  <30.427130, 34.055820, 46.006260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346092, 34.258415, 46.106197>,  <30.211031, 34.596077, 46.272762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346092, 34.258415, 46.106197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214540, -0.499770, 0.839168,
		-0.916495, -0.194010, -0.349853,
		0.337653, -0.844150, -0.416414,
		30.447388, 34.005169, 45.981274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804071, 34.159573, 46.484467>,  <30.211031, 34.596077, 46.272762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804071, 34.159573, 46.484467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107185, 33.918404, 46.384670>,  <30.289053, 33.773701, 46.324791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107185, 33.918404, 46.384670>,  <29.804071, 34.159573, 46.484467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107185, 33.918404, 46.384670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015708, -0.399103, 0.916772,
		-0.652317, -0.690796, -0.311904,
		0.757784, -0.602925, -0.249491,
		30.334520, 33.737526, 46.309822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555252, 33.528542, 46.820564>,  <29.804071, 34.159573, 46.484467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555252, 33.528542, 46.820564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929235, 33.447178, 46.704308>,  <30.153625, 33.398357, 46.634556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929235, 33.447178, 46.704308>,  <29.555252, 33.528542, 46.820564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929235, 33.447178, 46.704308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108852, -0.615259, 0.780774,
		-0.337638, -0.761630, -0.553101,
		0.934961, -0.203413, -0.290640,
		30.209724, 33.386154, 46.617115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661358, 32.774738, 46.721718>,  <29.555252, 33.528542, 46.820564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661358, 32.774738, 46.721718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028320, 32.912308, 46.801800>,  <30.248497, 32.994850, 46.849850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028320, 32.912308, 46.801800>,  <29.661358, 32.774738, 46.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028320, 32.912308, 46.801800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030465, -0.562298, 0.826374,
		0.396785, -0.752021, -0.526333,
		0.917406, 0.343928, 0.200201,
		30.303541, 33.015488, 46.861858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032885, 32.205956, 46.822067>,  <29.661358, 32.774738, 46.721718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032885, 32.205956, 46.822067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239128, 32.494072, 47.007683>,  <30.362875, 32.666943, 47.119053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239128, 32.494072, 47.007683>,  <30.032885, 32.205956, 46.822067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239128, 32.494072, 47.007683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042516, -0.519401, 0.853472,
		0.855769, -0.459787, -0.237183,
		0.515608, 0.720291, 0.464035,
		30.393810, 32.710159, 47.146893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627317, 31.861790, 47.117531>,  <30.032885, 32.205956, 46.822067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627317, 31.861790, 47.117531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586432, 32.199898, 47.327316>,  <30.561901, 32.402763, 47.453190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586432, 32.199898, 47.327316>,  <30.627317, 31.861790, 47.117531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586432, 32.199898, 47.327316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037674, -0.530141, 0.847072,
		0.994049, 0.066823, 0.086032,
		-0.102213, 0.845273, 0.524468,
		30.555767, 32.453480, 47.484657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983738, 31.752712, 47.679005>,  <30.627317, 31.861790, 47.117531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983738, 31.752712, 47.679005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736753, 32.051926, 47.776318>,  <30.588562, 32.231453, 47.834705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736753, 32.051926, 47.776318>,  <30.983738, 31.752712, 47.679005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736753, 32.051926, 47.776318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304377, -0.512402, 0.802994,
		0.725325, 0.421767, 0.544073,
		-0.617461, 0.748035, 0.243282,
		30.551516, 32.276337, 47.849300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975613, 31.891949, 48.385647>,  <30.983738, 31.752712, 47.679005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975613, 31.891949, 48.385647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616594, 32.009422, 48.254093>,  <30.401184, 32.079906, 48.175159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616594, 32.009422, 48.254093>,  <30.975613, 31.891949, 48.385647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616594, 32.009422, 48.254093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434597, -0.463324, 0.772306,
		0.074432, 0.836111, 0.543487,
		-0.897544, 0.293682, -0.328885,
		30.347332, 32.097527, 48.155426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649336, 32.209747, 48.934460>,  <30.975613, 31.891949, 48.385647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649336, 32.209747, 48.934460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359894, 32.122749, 48.672440>,  <30.186228, 32.070549, 48.515228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359894, 32.122749, 48.672440>,  <30.649336, 32.209747, 48.934460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359894, 32.122749, 48.672440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597737, -0.277069, 0.752292,
		-0.345117, 0.935909, 0.070481,
		-0.723605, -0.217499, -0.655049,
		30.142813, 32.057499, 48.475925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072805, 32.538494, 49.139553>,  <30.649336, 32.209747, 48.934460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072805, 32.538494, 49.139553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910860, 32.261597, 48.900593>,  <29.813694, 32.095459, 48.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910860, 32.261597, 48.900593>,  <30.072805, 32.538494, 49.139553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910860, 32.261597, 48.900593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650639, -0.240951, 0.720147,
		-0.642462, 0.680250, -0.352849,
		-0.404861, -0.692244, -0.597399,
		29.789402, 32.053925, 48.721375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359802, 32.539776, 49.380154>,  <30.072805, 32.538494, 49.139553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359802, 32.539776, 49.380154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405514, 32.221954, 49.141617>,  <29.432941, 32.031261, 48.998493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405514, 32.221954, 49.141617>,  <29.359802, 32.539776, 49.380154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405514, 32.221954, 49.141617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527786, -0.557114, 0.641144,
		-0.841655, 0.241473, -0.483020,
		0.114278, -0.794553, -0.596344,
		29.439796, 31.983589, 48.962715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698431, 32.246803, 49.341808>,  <29.359802, 32.539776, 49.380154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698431, 32.246803, 49.341808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955791, 31.952335, 49.257816>,  <29.110209, 31.775654, 49.207420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955791, 31.952335, 49.257816>,  <28.698431, 32.246803, 49.341808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955791, 31.952335, 49.257816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455448, -0.588571, 0.667945,
		-0.615310, -0.334120, -0.713973,
		0.643398, -0.736171, -0.209980,
		29.148811, 31.731483, 49.194824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286943, 31.631031, 49.408901>,  <28.698431, 32.246803, 49.341808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286943, 31.631031, 49.408901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656580, 31.478563, 49.419937>,  <28.878363, 31.387083, 49.426559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656580, 31.478563, 49.419937>,  <28.286943, 31.631031, 49.408901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656580, 31.478563, 49.419937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259922, -0.573929, 0.776561,
		-0.280165, -0.724786, -0.629438,
		0.924093, -0.381170, 0.027593,
		28.933807, 31.364212, 49.428215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193275, 30.830873, 49.377724>,  <28.286943, 31.631031, 49.408901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193275, 30.830873, 49.377724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559347, 30.911074, 49.517578>,  <28.778990, 30.959194, 49.601490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559347, 30.911074, 49.517578>,  <28.193275, 30.830873, 49.377724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559347, 30.911074, 49.517578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133671, -0.667401, 0.732603,
		0.380239, -0.717199, -0.583989,
		0.915177, 0.200502, 0.349641,
		28.833900, 30.971224, 49.622471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457731, 30.174627, 49.443443>,  <28.193275, 30.830873, 49.377724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457731, 30.174627, 49.443443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661846, 30.417006, 49.687553>,  <28.784315, 30.562431, 49.834019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661846, 30.417006, 49.687553>,  <28.457731, 30.174627, 49.443443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661846, 30.417006, 49.687553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074352, -0.675882, 0.733250,
		0.856785, -0.419543, -0.299840,
		0.510286, 0.605944, 0.610279,
		28.814932, 30.598789, 49.870636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862696, 29.717388, 49.886093>,  <28.457731, 30.174627, 49.443443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862696, 29.717388, 49.886093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851713, 30.076504, 50.061924>,  <28.845123, 30.291973, 50.167423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851713, 30.076504, 50.061924>,  <28.862696, 29.717388, 49.886093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851713, 30.076504, 50.061924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017529, -0.439239, 0.898199,
		0.999469, 0.032368, -0.003676,
		-0.027458, 0.897787, 0.439573,
		28.843475, 30.345840, 50.193794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348536, 29.694262, 50.397697>,  <28.862696, 29.717388, 49.886093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348536, 29.694262, 50.397697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071474, 29.967709, 50.489693>,  <28.905237, 30.131777, 50.544891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071474, 29.967709, 50.489693>,  <29.348536, 29.694262, 50.397697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071474, 29.967709, 50.489693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004936, -0.323356, 0.946265,
		0.721254, 0.654298, 0.227347,
		-0.692653, 0.683619, 0.229992,
		28.863678, 30.172794, 50.558689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416962, 29.864204, 51.060059>,  <29.348536, 29.694262, 50.397697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416962, 29.864204, 51.060059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037500, 29.985674, 51.024639>,  <28.809824, 30.058556, 51.003387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037500, 29.985674, 51.024639>,  <29.416962, 29.864204, 51.060059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037500, 29.985674, 51.024639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188007, -0.316183, 0.929883,
		0.254385, 0.898783, 0.357041,
		-0.948653, 0.303675, -0.088545,
		28.752905, 30.076777, 50.998077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359579, 29.963707, 51.707893>,  <29.416962, 29.864204, 51.060059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359579, 29.963707, 51.707893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998465, 29.950163, 51.536392>,  <28.781796, 29.942036, 51.433491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998465, 29.950163, 51.536392>,  <29.359579, 29.963707, 51.707893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998465, 29.950163, 51.536392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384329, -0.383961, 0.839563,
		-0.193054, 0.922728, 0.333620,
		-0.902785, -0.033861, -0.428756,
		28.727629, 29.940004, 51.407764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974699, 30.169128, 52.201908>,  <29.359579, 29.963707, 51.707893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974699, 30.169128, 52.201908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726254, 29.979961, 51.951927>,  <28.577187, 29.866461, 51.801937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726254, 29.979961, 51.951927>,  <28.974699, 30.169128, 52.201908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726254, 29.979961, 51.951927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424847, -0.466913, 0.775563,
		-0.658575, 0.747223, 0.089089,
		-0.621115, -0.472917, -0.624953,
		28.539919, 29.838087, 51.764442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274157, 30.172705, 52.522415>,  <28.974699, 30.169128, 52.201908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274157, 30.172705, 52.522415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299931, 29.876093, 52.255287>,  <28.315395, 29.698126, 52.095009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299931, 29.876093, 52.255287>,  <28.274157, 30.172705, 52.522415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299931, 29.876093, 52.255287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379551, -0.637128, 0.670827,
		-0.922925, 0.210248, -0.322500,
		0.064433, -0.741528, -0.667821,
		28.319260, 29.653635, 52.054939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626251, 29.684822, 52.208244>,  <28.274157, 30.172705, 52.522415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626251, 29.684822, 52.208244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951450, 29.462952, 52.279091>,  <28.146570, 29.329830, 52.321598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951450, 29.462952, 52.279091>,  <27.626251, 29.684822, 52.208244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951450, 29.462952, 52.279091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540519, -0.605844, 0.583774,
		-0.216502, -0.570341, -0.792363,
		0.812999, -0.554675, 0.177113,
		28.195351, 29.296549, 52.332226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579178, 28.881895, 52.073296>,  <27.626251, 29.684822, 52.208244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579178, 28.881895, 52.073296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838491, 28.948614, 52.370457>,  <27.994080, 28.988646, 52.548752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838491, 28.948614, 52.370457>,  <27.579178, 28.881895, 52.073296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838491, 28.948614, 52.370457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553233, -0.567180, 0.610115,
		0.523127, -0.806527, -0.275415,
		0.648284, 0.166799, 0.742904,
		28.032976, 28.998653, 52.593327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030519, 28.184980, 52.268223>,  <27.579178, 28.881895, 52.073296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030519, 28.184980, 52.268223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974365, 28.470207, 52.542980>,  <27.940674, 28.641344, 52.707836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974365, 28.470207, 52.542980>,  <28.030519, 28.184980, 52.268223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974365, 28.470207, 52.542980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534956, -0.638409, 0.553404,
		0.833136, -0.289770, 0.471082,
		-0.140384, 0.713069, 0.686895,
		27.932251, 28.684128, 52.749050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147829, 27.893215, 52.975380>,  <28.030519, 28.184980, 52.268223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147829, 27.893215, 52.975380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901712, 28.207632, 52.999214>,  <27.754042, 28.396282, 53.013515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901712, 28.207632, 52.999214>,  <28.147829, 27.893215, 52.975380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901712, 28.207632, 52.999214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631218, -0.536559, 0.560062,
		0.472205, 0.306989, 0.826305,
		-0.615294, 0.786042, 0.059589,
		27.717125, 28.443445, 53.017090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070625, 27.994884, 53.654991>,  <28.147829, 27.893215, 52.975380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070625, 27.994884, 53.654991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768160, 28.051497, 53.399433>,  <27.586679, 28.085464, 53.246098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768160, 28.051497, 53.399433>,  <28.070625, 27.994884, 53.654991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768160, 28.051497, 53.399433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600637, -0.537596, 0.591799,
		-0.259709, 0.831240, 0.491519,
		-0.756165, 0.141529, -0.638892,
		27.541309, 28.093956, 53.207764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702494, 27.997215, 53.788101>,  <28.070625, 27.994884, 53.654991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702494, 27.997215, 53.788101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094530, 27.987356, 53.866909>,  <29.329752, 27.981441, 53.914192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094530, 27.987356, 53.866909>,  <28.702494, 27.997215, 53.788101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094530, 27.987356, 53.866909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195517, -0.053123, -0.979260,
		0.034602, 0.998284, -0.047247,
		0.980090, -0.024647, 0.197019,
		29.388557, 27.979961, 53.926014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034351, 28.511974, 53.342575>,  <28.702494, 27.997215, 53.788101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034351, 28.511974, 53.342575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255304, 28.191151, 53.433414>,  <29.387877, 27.998657, 53.487919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255304, 28.191151, 53.433414>,  <29.034351, 28.511974, 53.342575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255304, 28.191151, 53.433414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189270, -0.144646, -0.971213,
		0.811819, 0.579465, 0.071905,
		0.552383, -0.802058, 0.227102,
		29.421019, 27.950533, 53.501545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718990, 28.658628, 53.098385>,  <29.034351, 28.511974, 53.342575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718990, 28.658628, 53.098385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628378, 28.269600, 53.119511>,  <29.574011, 28.036182, 53.132187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628378, 28.269600, 53.119511>,  <29.718990, 28.658628, 53.098385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628378, 28.269600, 53.119511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163996, -0.091537, -0.982205,
		0.960098, -0.213840, 0.180233,
		-0.226533, -0.972571, 0.052816,
		29.560417, 27.977829, 53.135357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152937, 28.070213, 52.727489>,  <29.718990, 28.658628, 53.098385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152937, 28.070213, 52.727489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785503, 27.912804, 52.742165>,  <29.565044, 27.818357, 52.750969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785503, 27.912804, 52.742165>,  <30.152937, 28.070213, 52.727489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785503, 27.912804, 52.742165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088337, -0.294892, -0.951438,
		0.385231, -0.870734, 0.305645,
		-0.918582, -0.393524, 0.036684,
		29.509928, 27.794746, 52.753170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070992, 27.544952, 52.266171>,  <30.152937, 28.070213, 52.727489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070992, 27.544952, 52.266171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676107, 27.595392, 52.305195>,  <29.439177, 27.625656, 52.328609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676107, 27.595392, 52.305195>,  <30.070992, 27.544952, 52.266171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676107, 27.595392, 52.305195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127466, -0.256653, -0.958061,
		-0.095771, -0.958242, 0.269444,
		-0.987208, 0.126100, 0.097563,
		29.379946, 27.633223, 52.334465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612453, 26.964836, 52.033199>,  <30.070992, 27.544952, 52.266171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612453, 26.964836, 52.033199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416348, 27.310051, 51.984520>,  <29.298685, 27.517179, 51.955311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416348, 27.310051, 51.984520>,  <29.612453, 26.964836, 52.033199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416348, 27.310051, 51.984520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001932, -0.138553, -0.990353,
		-0.871572, -0.485769, 0.066260,
		-0.490263, 0.863036, -0.121698,
		29.269268, 27.568962, 51.948009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202333, 26.814142, 51.427608>,  <29.612453, 26.964836, 52.033199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202333, 26.814142, 51.427608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181772, 27.210682, 51.475918>,  <29.169436, 27.448606, 51.504902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181772, 27.210682, 51.475918>,  <29.202333, 26.814142, 51.427608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181772, 27.210682, 51.475918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125256, 0.126375, -0.984043,
		-0.990792, -0.035455, -0.130668,
		-0.051402, 0.991349, 0.120771,
		29.166351, 27.508087, 51.512150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859426, 26.917740, 50.892807>,  <29.202333, 26.814142, 51.427608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859426, 26.917740, 50.892807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060230, 27.245899, 51.002300>,  <29.180714, 27.442795, 51.067997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060230, 27.245899, 51.002300>,  <28.859426, 26.917740, 50.892807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060230, 27.245899, 51.002300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366485, 0.084891, -0.926543,
		-0.783373, 0.565453, -0.258048,
		0.502011, 0.820400, 0.273731,
		29.210835, 27.492020, 51.084419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709841, 27.365116, 50.351582>,  <28.859426, 26.917740, 50.892807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709841, 27.365116, 50.351582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047281, 27.490238, 50.526165>,  <29.249744, 27.565311, 50.630913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047281, 27.490238, 50.526165>,  <28.709841, 27.365116, 50.351582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047281, 27.490238, 50.526165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343786, 0.309758, -0.886488,
		-0.412494, 0.897888, 0.153773,
		0.843599, 0.312806, 0.436455,
		29.300362, 27.584080, 50.657101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736113, 28.035357, 50.142464>,  <28.709841, 27.365116, 50.351582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736113, 28.035357, 50.142464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106070, 27.924170, 50.246239>,  <29.328043, 27.857458, 50.308506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106070, 27.924170, 50.246239>,  <28.736113, 28.035357, 50.142464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106070, 27.924170, 50.246239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361685, 0.432677, -0.825818,
		0.117295, 0.857628, 0.500716,
		0.924893, -0.277965, 0.259440,
		29.383537, 27.840780, 50.324070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192812, 28.633652, 50.105518>,  <28.736113, 28.035357, 50.142464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192812, 28.633652, 50.105518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461447, 28.340508, 50.061905>,  <29.622627, 28.164621, 50.035736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461447, 28.340508, 50.061905>,  <29.192812, 28.633652, 50.105518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461447, 28.340508, 50.061905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545867, 0.588897, -0.596011,
		0.501001, 0.340757, 0.795540,
		0.671586, -0.732861, -0.109030,
		29.662922, 28.120649, 50.029198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910835, 28.961481, 50.025875>,  <29.192812, 28.633652, 50.105518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910835, 28.961481, 50.025875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984890, 28.593296, 49.888195>,  <30.029324, 28.372385, 49.805588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984890, 28.593296, 49.888195>,  <29.910835, 28.961481, 50.025875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984890, 28.593296, 49.888195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656997, 0.376407, -0.653202,
		0.730807, -0.105208, 0.674427,
		0.185137, -0.920461, -0.344202,
		30.040430, 28.317158, 49.784935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662569, 28.927500, 49.841148>,  <29.910835, 28.961481, 50.025875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662569, 28.927500, 49.841148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476021, 28.627567, 49.653423>,  <30.364092, 28.447607, 49.540791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476021, 28.627567, 49.653423>,  <30.662569, 28.927500, 49.841148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476021, 28.627567, 49.653423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498541, 0.215460, -0.839663,
		0.730724, -0.625563, 0.273338,
		-0.466368, -0.749832, -0.469311,
		30.336111, 28.402618, 49.512630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123722, 28.587011, 49.594944>,  <30.662569, 28.927500, 49.841148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123722, 28.587011, 49.594944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820957, 28.453579, 49.370159>,  <30.639297, 28.373520, 49.235287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820957, 28.453579, 49.370159>,  <31.123722, 28.587011, 49.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820957, 28.453579, 49.370159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546323, 0.148898, -0.824233,
		0.358626, -0.930887, 0.069541,
		-0.756913, -0.333583, -0.561964,
		30.593884, 28.353504, 49.201569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412678, 28.110888, 49.212032>,  <31.123722, 28.587011, 49.594944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412678, 28.110888, 49.212032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085468, 28.182888, 48.993515>,  <30.889143, 28.226088, 48.862404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085468, 28.182888, 48.993515>,  <31.412678, 28.110888, 49.212032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085468, 28.182888, 48.993515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564325, 0.067497, -0.822789,
		-0.111230, -0.981348, -0.156794,
		-0.818025, 0.180001, -0.546291,
		30.840061, 28.236889, 48.829628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493031, 27.679279, 48.611546>,  <31.412678, 28.110888, 49.212032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493031, 27.679279, 48.611546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250546, 27.989841, 48.542614>,  <31.105055, 28.176180, 48.501255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250546, 27.989841, 48.542614>,  <31.493031, 27.679279, 48.611546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250546, 27.989841, 48.542614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313920, 0.034505, -0.948822,
		-0.730727, -0.629286, -0.264648,
		-0.606212, 0.776408, -0.172332,
		31.068682, 28.222763, 48.490913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208607, 27.521038, 48.065338>,  <31.493031, 27.679279, 48.611546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208607, 27.521038, 48.065338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146526, 27.916172, 48.069214>,  <31.109278, 28.153252, 48.071541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146526, 27.916172, 48.069214>,  <31.208607, 27.521038, 48.065338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146526, 27.916172, 48.069214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337740, 0.062278, -0.939177,
		-0.928356, -0.142488, -0.343297,
		-0.155201, 0.987835, 0.009693,
		31.099966, 28.212523, 48.072121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880785, 27.730371, 47.428097>,  <31.208607, 27.521038, 48.065338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880785, 27.730371, 47.428097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999065, 28.089081, 47.559769>,  <31.070034, 28.304306, 47.638771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999065, 28.089081, 47.559769>,  <30.880785, 27.730371, 47.428097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999065, 28.089081, 47.559769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293825, 0.242501, -0.924586,
		-0.908971, 0.370121, -0.191787,
		0.295701, 0.896774, 0.329178,
		31.087776, 28.358112, 47.658524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455582, 28.252842, 47.175056>,  <30.880785, 27.730371, 47.428097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455582, 28.252842, 47.175056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794931, 28.446434, 47.260872>,  <30.998541, 28.562590, 47.312363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794931, 28.446434, 47.260872>,  <30.455582, 28.252842, 47.175056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794931, 28.446434, 47.260872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007416, 0.416074, -0.909301,
		-0.529349, 0.769834, 0.356574,
		0.848372, 0.483981, 0.214539,
		31.049442, 28.591629, 47.325233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408226, 28.963276, 47.078461>,  <30.455582, 28.252842, 47.175056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408226, 28.963276, 47.078461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801426, 28.902483, 47.037251>,  <31.037346, 28.866007, 47.012524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801426, 28.902483, 47.037251>,  <30.408226, 28.963276, 47.078461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801426, 28.902483, 47.037251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004222, 0.579676, -0.814836,
		0.183565, 0.800548, 0.570462,
		0.982998, -0.151984, -0.103028,
		31.096325, 28.856888, 47.006344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656782, 29.558731, 47.027355>,  <30.408226, 28.963276, 47.078461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656782, 29.558731, 47.027355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927523, 29.324785, 46.848557>,  <31.089966, 29.184418, 46.741276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927523, 29.324785, 46.848557>,  <30.656782, 29.558731, 47.027355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927523, 29.324785, 46.848557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132053, 0.693859, -0.707900,
		0.724180, 0.420114, 0.546871,
		0.676850, -0.584863, -0.447001,
		31.130577, 29.149326, 46.714455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170475, 30.035780, 46.860367>,  <30.656782, 29.558731, 47.027355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170475, 30.035780, 46.860367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244287, 29.727375, 46.616566>,  <31.288574, 29.542332, 46.470287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244287, 29.727375, 46.616566>,  <31.170475, 30.035780, 46.860367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244287, 29.727375, 46.616566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103412, 0.631937, -0.768089,
		0.977371, 0.078705, 0.196343,
		0.184529, -0.771013, -0.609498,
		31.299646, 29.496071, 46.433716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590303, 30.266970, 46.304142>,  <31.170475, 30.035780, 46.860367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590303, 30.266970, 46.304142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461842, 29.916098, 46.161362>,  <31.384766, 29.705574, 46.075695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461842, 29.916098, 46.161362>,  <31.590303, 30.266970, 46.304142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461842, 29.916098, 46.161362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016072, 0.371815, -0.928168,
		0.946891, -0.303821, -0.105312,
		-0.321153, -0.877181, -0.356951,
		31.365496, 29.652943, 46.054276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964010, 30.235315, 45.752583>,  <31.590303, 30.266970, 46.304142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964010, 30.235315, 45.752583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670893, 29.965042, 45.720432>,  <31.495022, 29.802877, 45.701141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670893, 29.965042, 45.720432>,  <31.964010, 30.235315, 45.752583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670893, 29.965042, 45.720432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049685, 0.170942, -0.984028,
		0.678632, -0.717098, -0.158837,
		-0.732796, -0.675685, -0.080378,
		31.451054, 29.762337, 45.696320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075905, 29.820259, 45.089085>,  <31.964010, 30.235315, 45.752583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075905, 29.820259, 45.089085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684124, 29.788839, 45.163383>,  <31.449055, 29.769987, 45.207962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684124, 29.788839, 45.163383>,  <32.075905, 29.820259, 45.089085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684124, 29.788839, 45.163383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199097, 0.229731, -0.952672,
		0.032156, -0.970079, -0.240649,
		-0.979452, -0.078546, 0.185752,
		31.390289, 29.765274, 45.219109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815958, 29.452328, 44.493935>,  <32.075905, 29.820259, 45.089085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815958, 29.452328, 44.493935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507269, 29.640728, 44.664864>,  <31.322056, 29.753769, 44.767422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507269, 29.640728, 44.664864>,  <31.815958, 29.452328, 44.493935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507269, 29.640728, 44.664864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300313, 0.322394, -0.897705,
		-0.560585, -0.821109, -0.107352,
		-0.771724, 0.471001, 0.427318,
		31.275751, 29.782028, 44.793060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069859, 29.249113, 44.132290>,  <31.815958, 29.452328, 44.493935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069859, 29.249113, 44.132290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049856, 29.603165, 44.317352>,  <31.037855, 29.815596, 44.428391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049856, 29.603165, 44.317352>,  <31.069859, 29.249113, 44.132290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049856, 29.603165, 44.317352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340052, 0.420467, -0.841173,
		-0.939076, -0.199388, 0.279964,
		-0.050004, 0.885128, 0.462653,
		31.034855, 29.868704, 44.456150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562338, 29.519548, 43.737289>,  <31.069859, 29.249113, 44.132290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562338, 29.519548, 43.737289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733721, 29.827705, 43.926147>,  <30.836550, 30.012600, 44.039463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733721, 29.827705, 43.926147>,  <30.562338, 29.519548, 43.737289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733721, 29.827705, 43.926147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359268, 0.624709, -0.693300,
		-0.829066, 0.127422, 0.544438,
		0.428457, 0.770391, 0.472146,
		30.862259, 30.058823, 44.067791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094374, 29.944464, 43.671947>,  <30.562338, 29.519548, 43.737289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094374, 29.944464, 43.671947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411089, 30.166113, 43.774727>,  <30.601118, 30.299103, 43.836395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411089, 30.166113, 43.774727>,  <30.094374, 29.944464, 43.671947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411089, 30.166113, 43.774727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223640, 0.654472, -0.722255,
		-0.568381, 0.514409, 0.642126,
		0.791788, 0.554121, 0.256947,
		30.648626, 30.332350, 43.851810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832163, 30.675241, 43.613640>,  <30.094374, 29.944464, 43.671947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832163, 30.675241, 43.613640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231041, 30.663342, 43.586163>,  <30.470367, 30.656200, 43.569675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231041, 30.663342, 43.586163>,  <29.832163, 30.675241, 43.613640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231041, 30.663342, 43.586163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039940, 0.564660, -0.824356,
		0.063314, 0.824787, 0.561888,
		0.997194, -0.029751, -0.068693,
		30.530199, 30.654417, 43.565556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043221, 31.290920, 43.436069>,  <29.832163, 30.675241, 43.613640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043221, 31.290920, 43.436069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345667, 31.059515, 43.313683>,  <30.527134, 30.920671, 43.240250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345667, 31.059515, 43.313683>,  <30.043221, 31.290920, 43.436069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345667, 31.059515, 43.313683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029532, 0.497207, -0.867129,
		0.653773, 0.646614, 0.393030,
		0.756114, -0.578513, -0.305964,
		30.572502, 30.885962, 43.221893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602198, 31.759760, 43.183781>,  <30.043221, 31.290920, 43.436069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602198, 31.759760, 43.183781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701151, 31.412825, 43.011024>,  <30.760523, 31.204664, 42.907372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701151, 31.412825, 43.011024>,  <30.602198, 31.759760, 43.183781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701151, 31.412825, 43.011024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041486, 0.454814, -0.889620,
		0.968029, 0.202160, 0.148496,
		0.247383, -0.867338, -0.431886,
		30.775366, 31.152622, 42.881458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132921, 31.938507, 42.692200>,  <30.602198, 31.759760, 43.183781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132921, 31.938507, 42.692200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998333, 31.581253, 42.572803>,  <30.917580, 31.366899, 42.501167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998333, 31.581253, 42.572803>,  <31.132921, 31.938507, 42.692200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998333, 31.581253, 42.572803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079540, 0.288880, -0.954056,
		0.938329, -0.344754, -0.026159,
		-0.336472, -0.893137, -0.298486,
		30.897392, 31.313313, 42.483257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652866, 31.693153, 42.186398>,  <31.132921, 31.938507, 42.692200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652866, 31.693153, 42.186398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331196, 31.464500, 42.121239>,  <31.138193, 31.327309, 42.082142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331196, 31.464500, 42.121239>,  <31.652866, 31.693153, 42.186398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331196, 31.464500, 42.121239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068287, 0.183398, -0.980664,
		0.590457, -0.799750, -0.108449,
		-0.804175, -0.571634, -0.162901,
		31.089943, 31.293011, 42.072369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886065, 31.152151, 41.705536>,  <31.652866, 31.693153, 42.186398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886065, 31.152151, 41.705536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494295, 31.221710, 41.664574>,  <31.259233, 31.263447, 41.639996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494295, 31.221710, 41.664574>,  <31.886065, 31.152151, 41.705536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494295, 31.221710, 41.664574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136553, 0.197403, -0.970765,
		-0.148599, -0.964775, -0.217088,
		-0.979424, 0.173899, -0.102409,
		31.200468, 31.273880, 41.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639122, 30.663830, 41.210918>,  <31.886065, 31.152151, 41.705536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639122, 30.663830, 41.210918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386164, 30.972095, 41.242294>,  <31.234388, 31.157055, 41.261120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386164, 30.972095, 41.242294>,  <31.639122, 30.663830, 41.210918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386164, 30.972095, 41.242294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099433, 0.181177, -0.978411,
		-0.768237, -0.610945, -0.191205,
		-0.632397, 0.770663, 0.078439,
		31.196445, 31.203295, 41.265827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385149, 30.553484, 40.607422>,  <31.639122, 30.663830, 41.210918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385149, 30.553484, 40.607422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237818, 30.910770, 40.710571>,  <31.149420, 31.125143, 40.772461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237818, 30.910770, 40.710571>,  <31.385149, 30.553484, 40.607422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237818, 30.910770, 40.710571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122585, 0.321616, -0.938901,
		-0.921579, -0.314211, -0.227955,
		-0.368327, 0.893216, 0.257877,
		31.127319, 31.178736, 40.787933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025818, 30.749760, 40.021832>,  <31.385149, 30.553484, 40.607422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025818, 30.749760, 40.021832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066105, 31.089256, 40.229485>,  <31.090277, 31.292953, 40.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066105, 31.089256, 40.229485>,  <31.025818, 30.749760, 40.021832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066105, 31.089256, 40.229485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512175, 0.403100, -0.758411,
		-0.852955, 0.342270, -0.394105,
		0.100718, 0.848741, 0.519128,
		31.096321, 31.343880, 40.385223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691469, 31.181696, 39.618343>,  <31.025818, 30.749760, 40.021832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691469, 31.181696, 39.618343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961069, 31.373867, 39.842812>,  <31.122829, 31.489170, 39.977493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961069, 31.373867, 39.842812>,  <30.691469, 31.181696, 39.618343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961069, 31.373867, 39.842812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289519, 0.527086, -0.798974,
		-0.679635, 0.700978, 0.216164,
		0.674000, 0.480427, 0.561172,
		31.163269, 31.517996, 40.011162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709557, 31.884747, 39.488029>,  <30.691469, 31.181696, 39.618343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709557, 31.884747, 39.488029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080259, 31.861145, 39.636429>,  <31.302681, 31.846983, 39.725468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080259, 31.861145, 39.636429>,  <30.709557, 31.884747, 39.488029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080259, 31.861145, 39.636429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354662, 0.462983, -0.812318,
		-0.123835, 0.884401, 0.450000,
		0.926758, -0.059005, 0.370997,
		31.358286, 31.843443, 39.747726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999325, 32.496078, 39.323505>,  <30.709557, 31.884747, 39.488029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999325, 32.496078, 39.323505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317097, 32.265469, 39.399929>,  <31.507759, 32.127102, 39.445782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317097, 32.265469, 39.399929>,  <30.999325, 32.496078, 39.323505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317097, 32.265469, 39.399929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459374, 0.364580, -0.809973,
		0.397316, 0.731231, 0.554474,
		0.794428, -0.576526, 0.191056,
		31.555426, 32.092510, 39.457245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578053, 32.910812, 39.473362>,  <30.999325, 32.496078, 39.323505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578053, 32.910812, 39.473362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684841, 32.559345, 39.315033>,  <31.748915, 32.348465, 39.220036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684841, 32.559345, 39.315033>,  <31.578053, 32.910812, 39.473362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684841, 32.559345, 39.315033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467400, 0.477245, -0.744160,
		0.842771, 0.013663, 0.538099,
		0.266972, -0.878664, -0.395822,
		31.764933, 32.295746, 39.196285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189667, 33.088028, 39.144363>,  <31.578053, 32.910812, 39.473362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189667, 33.088028, 39.144363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148006, 32.718842, 38.996155>,  <32.123009, 32.497330, 38.907230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148006, 32.718842, 38.996155>,  <32.189667, 33.088028, 39.144363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148006, 32.718842, 38.996155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538382, 0.260924, -0.801289,
		0.836240, -0.282940, 0.469731,
		-0.104153, -0.922965, -0.370525,
		32.116760, 32.441952, 38.884998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872692, 32.827423, 38.935703>,  <32.189667, 33.088028, 39.144363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872692, 32.827423, 38.935703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615898, 32.609379, 38.720036>,  <32.461823, 32.478550, 38.590633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615898, 32.609379, 38.720036>,  <32.872692, 32.827423, 38.935703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615898, 32.609379, 38.720036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444101, 0.308869, -0.841055,
		0.625005, -0.779391, 0.043797,
		-0.641984, -0.545114, -0.539173,
		32.423302, 32.445847, 38.558285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273205, 32.511623, 38.297573>,  <32.872692, 32.827423, 38.935703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273205, 32.511623, 38.297573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879272, 32.545036, 38.236732>,  <32.642914, 32.565086, 38.200230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879272, 32.545036, 38.236732>,  <33.273205, 32.511623, 38.297573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879272, 32.545036, 38.236732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172422, 0.372247, -0.911978,
		-0.019566, -0.924367, -0.381003,
		-0.984829, 0.083537, -0.152098,
		32.583824, 32.570099, 38.191105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627331, 32.384136, 38.850109>,  <33.273205, 32.511623, 38.297573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627331, 32.384136, 38.850109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984425, 32.524429, 38.736965>,  <34.198681, 32.608604, 38.669079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984425, 32.524429, 38.736965>,  <33.627331, 32.384136, 38.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984425, 32.524429, 38.736965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450258, -0.718056, 0.530719,
		-0.016971, -0.601153, -0.798954,
		0.892737, 0.350729, -0.282860,
		34.252247, 32.629646, 38.652107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251602, 32.055943, 38.669487>,  <33.627331, 32.384136, 38.850109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251602, 32.055943, 38.669487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587341, 32.256187, 38.754227>,  <34.788784, 32.376335, 38.805069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587341, 32.256187, 38.754227>,  <34.251602, 32.055943, 38.669487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587341, 32.256187, 38.754227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266790, 0.039822, 0.962932,
		0.473621, -0.864754, 0.166983,
		0.839348, 0.500615, 0.211847,
		34.839146, 32.406372, 38.817780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723907, 31.661484, 39.179531>,  <34.251602, 32.055943, 38.669487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723907, 31.661484, 39.179531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799072, 32.053841, 39.199699>,  <34.844170, 32.289253, 39.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799072, 32.053841, 39.199699>,  <34.723907, 31.661484, 39.179531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799072, 32.053841, 39.199699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012997, -0.048849, 0.998722,
		0.982100, -0.188328, 0.003569,
		0.187913, 0.980891, 0.050422,
		34.855446, 32.348106, 39.214825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330093, 31.358149, 39.612209>,  <34.723907, 31.661484, 39.179531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330093, 31.358149, 39.612209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312130, 31.755529, 39.654221>,  <35.301350, 31.993958, 39.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312130, 31.755529, 39.654221>,  <35.330093, 31.358149, 39.612209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312130, 31.755529, 39.654221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554000, -0.062721, 0.830151,
		0.831304, 0.095471, -0.547557,
		-0.044912, 0.993454, 0.105031,
		35.298656, 32.053566, 39.685730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024910, 31.591528, 39.838566>,  <35.330093, 31.358149, 39.612209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024910, 31.591528, 39.838566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747257, 31.862467, 39.936039>,  <35.580666, 32.025032, 39.994522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747257, 31.862467, 39.936039>,  <36.024910, 31.591528, 39.838566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747257, 31.862467, 39.936039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278805, -0.059128, 0.958526,
		0.663664, 0.733283, -0.147805,
		-0.694131, 0.677347, 0.243685,
		35.539017, 32.065670, 40.009144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352177, 32.029606, 40.254379>,  <36.024910, 31.591528, 39.838566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352177, 32.029606, 40.254379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963547, 32.079811, 40.334675>,  <35.730370, 32.109932, 40.382851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963547, 32.079811, 40.334675>,  <36.352177, 32.029606, 40.254379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963547, 32.079811, 40.334675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210755, 0.072299, 0.974861,
		0.107843, 0.989454, -0.096696,
		-0.971572, 0.125511, 0.200736,
		35.672073, 32.117466, 40.394897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336254, 32.344742, 40.947464>,  <36.352177, 32.029606, 40.254379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336254, 32.344742, 40.947464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955585, 32.224209, 40.923721>,  <35.727184, 32.151890, 40.909477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955585, 32.224209, 40.923721>,  <36.336254, 32.344742, 40.947464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955585, 32.224209, 40.923721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017918, -0.138454, 0.990207,
		-0.306604, 0.943412, 0.126363,
		-0.951669, -0.301337, -0.059354,
		35.670086, 32.133808, 40.905914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875397, 32.562103, 41.627151>,  <36.336254, 32.344742, 40.947464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875397, 32.562103, 41.627151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687675, 32.266964, 41.433109>,  <35.575043, 32.089878, 41.316685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687675, 32.266964, 41.433109>,  <35.875397, 32.562103, 41.627151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687675, 32.266964, 41.433109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152375, -0.473454, 0.867539,
		-0.869792, 0.481055, 0.109762,
		-0.469302, -0.737853, -0.485107,
		35.546886, 32.045609, 41.287579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280289, 32.376850, 42.043724>,  <35.875397, 32.562103, 41.627151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280289, 32.376850, 42.043724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370014, 32.073322, 41.799145>,  <35.423851, 31.891205, 41.652397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370014, 32.073322, 41.799145>,  <35.280289, 32.376850, 42.043724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370014, 32.073322, 41.799145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248937, -0.651240, 0.716880,
		-0.942185, -0.008596, -0.334983,
		0.224317, -0.758823, -0.611449,
		35.437309, 31.845675, 41.615711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760666, 31.801792, 42.062756>,  <35.280289, 32.376850, 42.043724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760666, 31.801792, 42.062756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082695, 31.618015, 41.912674>,  <35.275913, 31.507750, 41.822624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082695, 31.618015, 41.912674>,  <34.760666, 31.801792, 42.062756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082695, 31.618015, 41.912674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196660, -0.803484, 0.561906,
		-0.559632, -0.378586, -0.737214,
		0.805069, -0.459441, -0.375203,
		35.324215, 31.480183, 41.800114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594139, 31.089531, 42.246208>,  <34.760666, 31.801792, 42.062756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594139, 31.089531, 42.246208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982708, 31.097672, 42.151611>,  <35.215847, 31.102556, 42.094852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982708, 31.097672, 42.151611>,  <34.594139, 31.089531, 42.246208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982708, 31.097672, 42.151611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167658, -0.764119, 0.622907,
		-0.168034, -0.644754, -0.745692,
		0.971419, 0.020352, -0.236496,
		35.274136, 31.103777, 42.080662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745010, 30.407869, 41.935913>,  <34.594139, 31.089531, 42.246208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745010, 30.407869, 41.935913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065262, 30.587801, 42.094223>,  <35.257412, 30.695761, 42.189209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065262, 30.587801, 42.094223>,  <34.745010, 30.407869, 41.935913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065262, 30.587801, 42.094223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131051, -0.776039, 0.616919,
		0.584647, -0.442058, -0.680273,
		0.800633, 0.449831, 0.395777,
		35.305450, 30.722750, 42.212955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377373, 29.908035, 41.985806>,  <34.745010, 30.407869, 41.935913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377373, 29.908035, 41.985806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399563, 30.190977, 42.267677>,  <35.412876, 30.360743, 42.436802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399563, 30.190977, 42.267677>,  <35.377373, 29.908035, 41.985806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399563, 30.190977, 42.267677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005214, -0.705962, 0.708230,
		0.998446, -0.035617, -0.042852,
		0.055477, 0.707354, 0.704679,
		35.416206, 30.403183, 42.479080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714764, 29.595116, 42.539024>,  <35.377373, 29.908035, 41.985806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714764, 29.595116, 42.539024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545441, 29.911184, 42.716312>,  <35.443848, 30.100824, 42.822685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545441, 29.911184, 42.716312>,  <35.714764, 29.595116, 42.539024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545441, 29.911184, 42.716312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081068, -0.520284, 0.850137,
		0.902352, 0.323938, 0.284298,
		-0.423307, 0.790170, 0.443218,
		35.418449, 30.148235, 42.849277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081116, 29.721710, 43.124790>,  <35.714764, 29.595116, 42.539024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081116, 29.721710, 43.124790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733994, 29.902065, 43.208324>,  <35.525719, 30.010279, 43.258446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733994, 29.902065, 43.208324>,  <36.081116, 29.721710, 43.124790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733994, 29.902065, 43.208324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061715, -0.319217, 0.945670,
		0.493055, 0.833547, 0.249192,
		-0.867807, 0.450888, 0.208834,
		35.473652, 30.037333, 43.270973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099358, 29.704954, 43.828716>,  <36.081116, 29.721710, 43.124790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099358, 29.704954, 43.828716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724064, 29.826410, 43.762360>,  <35.498886, 29.899284, 43.722546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724064, 29.826410, 43.762360>,  <36.099358, 29.704954, 43.828716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724064, 29.826410, 43.762360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236685, -0.213497, 0.947839,
		0.252385, 0.928559, 0.272177,
		-0.938234, 0.303640, -0.165892,
		35.442593, 29.917501, 43.712593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867676, 30.212448, 44.316940>,  <36.099358, 29.704954, 43.828716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867676, 30.212448, 44.316940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517544, 30.057417, 44.201302>,  <35.307465, 29.964397, 44.131920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517544, 30.057417, 44.201302>,  <35.867676, 30.212448, 44.316940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517544, 30.057417, 44.201302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250427, -0.148054, 0.956748,
		-0.413617, 0.909869, 0.032536,
		-0.875333, -0.387580, -0.289093,
		35.254944, 29.941143, 44.114574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324394, 30.509226, 44.764500>,  <35.867676, 30.212448, 44.316940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324394, 30.509226, 44.764500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170586, 30.165932, 44.628513>,  <35.078300, 29.959955, 44.546921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170586, 30.165932, 44.628513>,  <35.324394, 30.509226, 44.764500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170586, 30.165932, 44.628513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456467, -0.143331, 0.878120,
		-0.802361, 0.492838, -0.336642,
		-0.384520, -0.858235, -0.339967,
		35.055229, 29.908461, 44.526524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650448, 30.580370, 44.905090>,  <35.324394, 30.509226, 44.764500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650448, 30.580370, 44.905090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726784, 30.189732, 44.865402>,  <34.772583, 29.955349, 44.841591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726784, 30.189732, 44.865402>,  <34.650448, 30.580370, 44.905090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726784, 30.189732, 44.865402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528553, -0.187405, 0.827956,
		-0.827171, -0.105562, -0.551946,
		0.190838, -0.976594, -0.099221,
		34.784035, 29.896753, 44.835636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956703, 30.235062, 44.999027>,  <34.650448, 30.580370, 44.905090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956703, 30.235062, 44.999027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236713, 29.955820, 45.059177>,  <34.404720, 29.788275, 45.095268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236713, 29.955820, 45.059177>,  <33.956703, 30.235062, 44.999027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236713, 29.955820, 45.059177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461951, -0.282106, 0.840844,
		-0.544575, -0.658079, -0.519972,
		0.700029, -0.698104, 0.150372,
		34.446720, 29.746389, 45.104290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638416, 29.643007, 45.188019>,  <33.956703, 30.235062, 44.999027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638416, 29.643007, 45.188019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011234, 29.580465, 45.318768>,  <34.234924, 29.542940, 45.397217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011234, 29.580465, 45.318768>,  <33.638416, 29.643007, 45.188019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011234, 29.580465, 45.318768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357714, -0.253252, 0.898835,
		-0.057755, -0.954681, -0.291972,
		0.932043, -0.156354, 0.326876,
		34.290848, 29.533558, 45.416832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709633, 28.912348, 45.486832>,  <33.638416, 29.643007, 45.188019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709633, 28.912348, 45.486832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961277, 29.185112, 45.636078>,  <34.112263, 29.348770, 45.725628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961277, 29.185112, 45.636078>,  <33.709633, 28.912348, 45.486832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961277, 29.185112, 45.636078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254742, -0.272634, 0.927781,
		0.734389, -0.678725, 0.002195,
		0.629110, 0.681911, 0.373119,
		34.150009, 29.389685, 45.748013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925041, 28.577557, 46.036537>,  <33.709633, 28.912348, 45.486832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925041, 28.577557, 46.036537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029068, 28.959877, 46.091400>,  <34.091484, 29.189268, 46.124317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029068, 28.959877, 46.091400>,  <33.925041, 28.577557, 46.036537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029068, 28.959877, 46.091400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027117, -0.134764, 0.990506,
		0.965210, -0.261316, -0.009129,
		0.260066, 0.955799, 0.137162,
		34.107086, 29.246616, 46.132549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424023, 28.544790, 46.589672>,  <33.925041, 28.577557, 46.036537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424023, 28.544790, 46.589672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245323, 28.902527, 46.580109>,  <34.138103, 29.117168, 46.574371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245323, 28.902527, 46.580109>,  <34.424023, 28.544790, 46.589672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245323, 28.902527, 46.580109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173647, -0.060465, 0.982950,
		0.877646, 0.443282, 0.182312,
		-0.446748, 0.894341, -0.023908,
		34.111298, 29.170830, 46.572937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693249, 28.808006, 47.280693>,  <34.424023, 28.544790, 46.589672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693249, 28.808006, 47.280693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408848, 29.063318, 47.162663>,  <34.238205, 29.216505, 47.091843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408848, 29.063318, 47.162663>,  <34.693249, 28.808006, 47.280693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408848, 29.063318, 47.162663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423398, -0.053556, 0.904359,
		0.561432, 0.767939, 0.308325,
		-0.711005, 0.638281, -0.295076,
		34.195545, 29.254803, 47.074139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706448, 29.533092, 47.713959>,  <34.693249, 28.808006, 47.280693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706448, 29.533092, 47.713959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333801, 29.493282, 47.574142>,  <34.110214, 29.469397, 47.490253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333801, 29.493282, 47.574142>,  <34.706448, 29.533092, 47.713959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333801, 29.493282, 47.574142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353320, 0.022725, 0.935226,
		-0.085138, 0.994775, -0.056336,
		-0.931620, -0.099528, -0.349540,
		34.054314, 29.463425, 47.469280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391090, 30.069618, 48.020473>,  <34.706448, 29.533092, 47.713959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391090, 30.069618, 48.020473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138664, 29.772520, 47.930954>,  <33.987209, 29.594261, 47.877243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138664, 29.772520, 47.930954>,  <34.391090, 30.069618, 48.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138664, 29.772520, 47.930954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341178, 0.006650, 0.939975,
		-0.696676, 0.669539, -0.257605,
		-0.631063, -0.742747, -0.223799,
		33.949345, 29.549696, 47.863815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892925, 30.231312, 48.531635>,  <34.391090, 30.069618, 48.020473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892925, 30.231312, 48.531635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789848, 29.874672, 48.382694>,  <33.728001, 29.660688, 48.293331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789848, 29.874672, 48.382694>,  <33.892925, 30.231312, 48.531635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789848, 29.874672, 48.382694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480580, -0.216045, 0.849922,
		-0.838233, 0.397966, -0.372811,
		-0.257696, -0.891599, -0.372350,
		33.712540, 29.607193, 48.270988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262897, 30.193693, 48.654404>,  <33.892925, 30.231312, 48.531635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262897, 30.193693, 48.654404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384441, 29.813425, 48.629444>,  <33.457367, 29.585264, 48.614468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384441, 29.813425, 48.629444>,  <33.262897, 30.193693, 48.654404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384441, 29.813425, 48.629444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385048, -0.182451, 0.904682,
		-0.871438, -0.250875, -0.421494,
		0.303864, -0.950670, -0.062396,
		33.475601, 29.528225, 48.610725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647514, 29.709272, 48.736931>,  <33.262897, 30.193693, 48.654404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647514, 29.709272, 48.736931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970638, 29.500689, 48.846859>,  <33.164513, 29.375538, 48.912815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970638, 29.500689, 48.846859>,  <32.647514, 29.709272, 48.736931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970638, 29.500689, 48.846859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351277, -0.051490, 0.934855,
		-0.473339, -0.851720, -0.224771,
		0.807808, -0.521460, 0.274818,
		33.212982, 29.344250, 48.929306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325771, 29.100599, 48.988712>,  <32.647514, 29.709272, 48.736931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325771, 29.100599, 48.988712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699593, 29.108536, 49.130821>,  <32.923885, 29.113298, 49.216087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699593, 29.108536, 49.130821>,  <32.325771, 29.100599, 48.988712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699593, 29.108536, 49.130821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351456, -0.104543, 0.930349,
		0.055601, -0.994322, -0.090728,
		0.934552, 0.019841, 0.355273,
		32.979958, 29.114489, 49.237404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362209, 28.667206, 49.513073>,  <32.325771, 29.100599, 48.988712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362209, 28.667206, 49.513073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699768, 28.852018, 49.622154>,  <32.902302, 28.962906, 49.687603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699768, 28.852018, 49.622154>,  <32.362209, 28.667206, 49.513073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699768, 28.852018, 49.622154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224581, -0.157397, 0.961660,
		0.487238, -0.872785, -0.029063,
		0.843897, 0.462030, 0.272701,
		32.952938, 28.990627, 49.703964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520756, 28.232624, 50.057316>,  <32.362209, 28.667206, 49.513073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520756, 28.232624, 50.057316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738819, 28.564480, 50.105469>,  <32.869659, 28.763594, 50.134361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738819, 28.564480, 50.105469>,  <32.520756, 28.232624, 50.057316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738819, 28.564480, 50.105469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108240, -0.072739, 0.991460,
		0.831313, -0.553538, 0.050146,
		0.545163, 0.829642, 0.120384,
		32.902367, 28.813372, 50.141582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098331, 28.141989, 50.508663>,  <32.520756, 28.232624, 50.057316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098331, 28.141989, 50.508663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067635, 28.539984, 50.534298>,  <33.049217, 28.778782, 50.549679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067635, 28.539984, 50.534298>,  <33.098331, 28.141989, 50.508663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067635, 28.539984, 50.534298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059915, -0.059560, 0.996425,
		0.995250, 0.080303, -0.055044,
		-0.076738, 0.994990, 0.064089,
		33.044613, 28.838480, 50.553524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602905, 28.312407, 51.063995>,  <33.098331, 28.141989, 50.508663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602905, 28.312407, 51.063995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369877, 28.636986, 51.045425>,  <33.230057, 28.831734, 51.034283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369877, 28.636986, 51.045425>,  <33.602905, 28.312407, 51.063995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369877, 28.636986, 51.045425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035192, 0.082250, 0.995990,
		0.812014, 0.578606, -0.076473,
		-0.582576, 0.811449, -0.046426,
		33.195103, 28.880421, 51.031498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769970, 28.782007, 51.619781>,  <33.602905, 28.312407, 51.063995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769970, 28.782007, 51.619781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403370, 28.892874, 51.504402>,  <33.183411, 28.959394, 51.435173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403370, 28.892874, 51.504402>,  <33.769970, 28.782007, 51.619781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403370, 28.892874, 51.504402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308275, -0.029827, 0.950830,
		0.254936, 0.960358, 0.112781,
		-0.916501, 0.277168, -0.288451,
		33.128418, 28.976025, 51.417866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495895, 29.287052, 52.141422>,  <33.769970, 28.782007, 51.619781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495895, 29.287052, 52.141422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181519, 29.087626, 51.995148>,  <32.992893, 28.967970, 51.907383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181519, 29.087626, 51.995148>,  <33.495895, 29.287052, 52.141422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181519, 29.087626, 51.995148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370602, -0.093573, 0.924066,
		-0.494929, 0.861785, -0.111228,
		-0.785939, -0.498569, -0.365691,
		32.945736, 28.938055, 51.885441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928143, 29.674458, 52.367123>,  <33.495895, 29.287052, 52.141422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928143, 29.674458, 52.367123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834526, 29.290100, 52.307922>,  <32.778355, 29.059484, 52.272404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834526, 29.290100, 52.307922>,  <32.928143, 29.674458, 52.367123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834526, 29.290100, 52.307922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528691, -0.001965, 0.848812,
		-0.815911, 0.276903, -0.507557,
		-0.234042, -0.960896, -0.148000,
		32.764313, 29.001831, 52.263523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302261, 29.503693, 52.947029>,  <32.928143, 29.674458, 52.367123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302261, 29.503693, 52.947029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646038, 29.597828, 53.128563>,  <33.852306, 29.654310, 53.237484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646038, 29.597828, 53.128563>,  <33.302261, 29.503693, 52.947029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646038, 29.597828, 53.128563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412840, 0.204091, -0.887643,
		-0.301522, 0.950243, 0.078248,
		0.859446, 0.235341, 0.453836,
		33.903873, 29.668430, 53.264713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412457, 30.176931, 52.816574>,  <33.302261, 29.503693, 52.947029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412457, 30.176931, 52.816574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774597, 30.023849, 52.890202>,  <33.991882, 29.932001, 52.934380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774597, 30.023849, 52.890202>,  <33.412457, 30.176931, 52.816574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774597, 30.023849, 52.890202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344439, 0.408203, -0.845419,
		0.248408, 0.828799, 0.501384,
		0.905348, -0.382704, 0.184070,
		34.046204, 29.909039, 52.945423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800484, 30.694933, 52.641949>,  <33.412457, 30.176931, 52.816574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800484, 30.694933, 52.641949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068413, 30.397978, 52.636261>,  <34.229172, 30.219805, 52.632847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068413, 30.397978, 52.636261>,  <33.800484, 30.694933, 52.641949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068413, 30.397978, 52.636261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424637, 0.398701, -0.812848,
		0.609116, 0.538425, 0.582303,
		0.669822, -0.742386, -0.014220,
		34.269360, 30.175262, 52.631996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412945, 30.925142, 52.334148>,  <33.800484, 30.694933, 52.641949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412945, 30.925142, 52.334148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514236, 30.538298, 52.324642>,  <34.575012, 30.306190, 52.318939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514236, 30.538298, 52.324642>,  <34.412945, 30.925142, 52.334148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514236, 30.538298, 52.324642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698939, 0.199884, -0.686681,
		0.668849, 0.157281, 0.726570,
		0.253232, -0.967114, -0.023762,
		34.590206, 30.248163, 52.317513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139091, 30.947403, 52.352077>,  <34.412945, 30.925142, 52.334148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139091, 30.947403, 52.352077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996315, 30.614515, 52.182369>,  <34.910648, 30.414783, 52.080544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996315, 30.614515, 52.182369>,  <35.139091, 30.947403, 52.352077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996315, 30.614515, 52.182369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577718, 0.160237, -0.800354,
		0.734053, -0.530788, 0.423592,
		-0.356943, -0.832219, -0.424268,
		34.889233, 30.364849, 52.055088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748627, 30.545202, 52.144295>,  <35.139091, 30.947403, 52.352077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748627, 30.545202, 52.144295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418442, 30.454840, 51.937386>,  <35.220329, 30.400621, 51.813240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418442, 30.454840, 51.937386>,  <35.748627, 30.545202, 52.144295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418442, 30.454840, 51.937386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480789, 0.198716, -0.854022,
		0.295724, -0.953665, -0.055417,
		-0.825463, -0.225910, -0.517277,
		35.170803, 30.387068, 51.782204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048294, 30.553057, 51.387379>,  <35.748627, 30.545202, 52.144295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048294, 30.553057, 51.387379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653114, 30.512453, 51.340641>,  <35.416008, 30.488091, 51.312599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653114, 30.512453, 51.340641>,  <36.048294, 30.553057, 51.387379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653114, 30.512453, 51.340641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090972, 0.229916, -0.968949,
		0.125223, -0.967902, -0.217911,
		-0.987949, -0.101510, -0.116843,
		35.356731, 30.482000, 51.305588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036358, 30.153976, 50.732269>,  <36.048294, 30.553057, 51.387379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036358, 30.153976, 50.732269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681889, 30.318907, 50.816822>,  <35.469208, 30.417866, 50.867554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681889, 30.318907, 50.816822>,  <36.036358, 30.153976, 50.732269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681889, 30.318907, 50.816822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167105, 0.141104, -0.975790,
		-0.432171, -0.900043, -0.056141,
		-0.886174, 0.412326, 0.211383,
		35.416035, 30.442604, 50.880238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448097, 29.735178, 50.385597>,  <36.036358, 30.153976, 50.732269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448097, 29.735178, 50.385597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345978, 30.120062, 50.423500>,  <35.284706, 30.350992, 50.446239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345978, 30.120062, 50.423500>,  <35.448097, 29.735178, 50.385597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345978, 30.120062, 50.423500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092700, 0.073189, -0.993001,
		-0.962408, -0.262294, 0.070512,
		-0.255297, 0.962209, 0.094753,
		35.269390, 30.408724, 50.451927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122623, 29.735561, 49.847977>,  <35.448097, 29.735178, 50.385597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122623, 29.735561, 49.847977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167561, 30.123724, 49.933475>,  <35.194523, 30.356621, 49.984776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167561, 30.123724, 49.933475>,  <35.122623, 29.735561, 49.847977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167561, 30.123724, 49.933475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005189, 0.214536, -0.976702,
		-0.993656, 0.110836, 0.019066,
		0.112344, 0.970407, 0.213750,
		35.201263, 30.414846, 49.997601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534641, 30.111998, 49.545479>,  <35.122623, 29.735561, 49.847977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534641, 30.111998, 49.545479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867760, 30.332870, 49.561192>,  <35.067631, 30.465395, 49.570618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867760, 30.332870, 49.561192>,  <34.534641, 30.111998, 49.545479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867760, 30.332870, 49.561192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014561, 0.049084, -0.998688,
		-0.553386, 0.832277, 0.032837,
		0.832798, 0.552182, 0.039281,
		35.117599, 30.498526, 49.572975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426655, 30.568157, 48.980808>,  <34.534641, 30.111998, 49.545479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426655, 30.568157, 48.980808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820072, 30.605221, 49.042843>,  <35.056122, 30.627459, 49.080063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820072, 30.605221, 49.042843>,  <34.426655, 30.568157, 48.980808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820072, 30.605221, 49.042843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144670, 0.110222, -0.983322,
		-0.108208, 0.989579, 0.095003,
		0.983546, 0.092659, 0.155089,
		35.115135, 30.633018, 49.089371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690964, 31.196573, 48.664284>,  <34.426655, 30.568157, 48.980808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690964, 31.196573, 48.664284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016773, 30.966249, 48.692566>,  <35.212257, 30.828054, 48.709538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016773, 30.966249, 48.692566>,  <34.690964, 31.196573, 48.664284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016773, 30.966249, 48.692566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325693, 0.353003, -0.877105,
		0.480086, 0.737449, 0.475065,
		0.814519, -0.575811, 0.070710,
		35.261127, 30.793507, 48.713779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274868, 31.661217, 48.471767>,  <34.690964, 31.196573, 48.664284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274868, 31.661217, 48.471767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441235, 31.298775, 48.440811>,  <35.541054, 31.081310, 48.422237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441235, 31.298775, 48.440811>,  <35.274868, 31.661217, 48.471767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441235, 31.298775, 48.440811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424133, 0.268552, -0.864865,
		0.804443, 0.326883, 0.496003,
		0.415912, -0.906106, -0.077393,
		35.566010, 31.026943, 48.417595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990215, 31.805027, 48.333641>,  <35.274868, 31.661217, 48.471767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990215, 31.805027, 48.333641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906635, 31.438154, 48.197926>,  <35.856487, 31.218031, 48.116497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906635, 31.438154, 48.197926>,  <35.990215, 31.805027, 48.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906635, 31.438154, 48.197926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400625, 0.236218, -0.885269,
		0.892098, -0.320906, 0.318087,
		-0.208950, -0.917180, -0.339293,
		35.843948, 31.163000, 48.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621395, 31.671322, 47.879604>,  <35.990215, 31.805027, 48.333641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621395, 31.671322, 47.879604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344208, 31.399244, 47.784000>,  <36.177895, 31.235998, 47.726639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344208, 31.399244, 47.784000>,  <36.621395, 31.671322, 47.879604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344208, 31.399244, 47.784000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142968, 0.195285, -0.970270,
		0.706647, -0.706541, -0.038082,
		-0.692972, -0.680194, -0.239010,
		36.136314, 31.195187, 47.712296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943218, 31.076355, 47.556160>,  <36.621395, 31.671322, 47.879604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943218, 31.076355, 47.556160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564861, 31.110741, 47.431011>,  <36.337845, 31.131372, 47.355923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564861, 31.110741, 47.431011>,  <36.943218, 31.076355, 47.556160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564861, 31.110741, 47.431011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322086, 0.132061, -0.937454,
		-0.039272, -0.987507, -0.152604,
		-0.945896, 0.085967, -0.312876,
		36.281094, 31.136530, 47.337147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030117, 31.156662, 46.894863>,  <36.943218, 31.076355, 47.556160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030117, 31.156662, 46.894863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633148, 31.204916, 46.885567>,  <36.394966, 31.233868, 46.879990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633148, 31.204916, 46.885567>,  <37.030117, 31.156662, 46.894863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633148, 31.204916, 46.885567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060034, 0.311112, -0.948475,
		-0.107187, -0.942686, -0.315998,
		-0.992425, 0.120635, -0.023246,
		36.335423, 31.241106, 46.878593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798298, 30.615387, 46.388344>,  <37.030117, 31.156662, 46.894863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798298, 30.615387, 46.388344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525780, 30.907820, 46.403061>,  <36.362267, 31.083279, 46.411892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525780, 30.907820, 46.403061>,  <36.798298, 30.615387, 46.388344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525780, 30.907820, 46.403061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140582, 0.180006, -0.973568,
		-0.718379, -0.658119, -0.225414,
		-0.681299, 0.731080, 0.036793,
		36.321388, 31.127144, 46.414101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364811, 30.504295, 45.869865>,  <36.798298, 30.615387, 46.388344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364811, 30.504295, 45.869865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296181, 30.890661, 45.947399>,  <36.255001, 31.122480, 45.993919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296181, 30.890661, 45.947399>,  <36.364811, 30.504295, 45.869865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296181, 30.890661, 45.947399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115213, 0.175732, -0.977673,
		-0.978410, -0.190080, 0.081134,
		-0.171579, 0.965913, 0.193838,
		36.244705, 31.180435, 46.005550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918621, 30.724136, 45.324059>,  <36.364811, 30.504295, 45.869865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918621, 30.724136, 45.324059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038033, 31.068199, 45.489471>,  <36.109680, 31.274637, 45.588718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038033, 31.068199, 45.489471>,  <35.918621, 30.724136, 45.324059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038033, 31.068199, 45.489471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104792, 0.460212, -0.881603,
		-0.948631, 0.219845, 0.227522,
		0.298524, 0.860159, 0.413533,
		36.127590, 31.326246, 45.613533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473316, 31.278740, 45.126732>,  <35.918621, 30.724136, 45.324059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473316, 31.278740, 45.126732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839443, 31.415775, 45.211422>,  <36.059120, 31.497997, 45.262238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839443, 31.415775, 45.211422>,  <35.473316, 31.278740, 45.126732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839443, 31.415775, 45.211422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027237, 0.471857, -0.881254,
		-0.401813, 0.812393, 0.422568,
		0.915317, 0.342590, 0.211725,
		36.114037, 31.518553, 45.274940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512531, 31.957226, 44.970619>,  <35.473316, 31.278740, 45.126732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512531, 31.957226, 44.970619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903191, 31.874413, 44.947636>,  <36.137585, 31.824724, 44.933846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903191, 31.874413, 44.947636>,  <35.512531, 31.957226, 44.970619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903191, 31.874413, 44.947636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051363, 0.484630, -0.873210,
		0.208628, 0.849865, 0.483945,
		0.976645, -0.207033, -0.057456,
		36.196186, 31.812304, 44.930397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938339, 32.615608, 44.828293>,  <35.512531, 31.957226, 44.970619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938339, 32.615608, 44.828293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156910, 32.307480, 44.696831>,  <36.288052, 32.122601, 44.617954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156910, 32.307480, 44.696831>,  <35.938339, 32.615608, 44.828293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156910, 32.307480, 44.696831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207112, 0.504525, -0.838188,
		0.811491, 0.389943, 0.435232,
		0.546431, -0.770324, -0.328656,
		36.320839, 32.076382, 44.598232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373745, 32.937500, 44.419018>,  <35.938339, 32.615608, 44.828293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373745, 32.937500, 44.419018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432606, 32.561741, 44.295158>,  <36.467922, 32.336285, 44.220840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432606, 32.561741, 44.295158>,  <36.373745, 32.937500, 44.419018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432606, 32.561741, 44.295158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494610, 0.340993, -0.799428,
		0.856567, -0.035520, 0.514812,
		0.147152, -0.939394, -0.309652,
		36.476749, 32.279922, 44.202263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972336, 32.979843, 44.068707>,  <36.373745, 32.937500, 44.419018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972336, 32.979843, 44.068707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867867, 32.607288, 43.967274>,  <36.805183, 32.383755, 43.906414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867867, 32.607288, 43.967274>,  <36.972336, 32.979843, 44.068707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867867, 32.607288, 43.967274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480835, 0.102257, -0.870828,
		0.837009, -0.349369, 0.421137,
		-0.261177, -0.931389, -0.253579,
		36.789513, 32.327873, 43.891201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584549, 32.534630, 43.863720>,  <36.972336, 32.979843, 44.068707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584549, 32.534630, 43.863720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247612, 32.407894, 43.689331>,  <37.045452, 32.331852, 43.584698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247612, 32.407894, 43.689331>,  <37.584549, 32.534630, 43.863720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247612, 32.407894, 43.689331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336432, 0.322842, -0.884639,
		0.421044, -0.891842, -0.165347,
		-0.842340, -0.316844, -0.435975,
		36.994911, 32.312840, 43.558540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853401, 32.047192, 43.425919>,  <37.584549, 32.534630, 43.863720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853401, 32.047192, 43.425919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501461, 32.157188, 43.270874>,  <37.290298, 32.223186, 43.177849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501461, 32.157188, 43.270874>,  <37.853401, 32.047192, 43.425919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501461, 32.157188, 43.270874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465676, 0.335960, -0.818704,
		-0.094918, -0.900838, -0.423653,
		-0.879850, 0.274995, -0.387610,
		37.237507, 32.239685, 43.154591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881649, 31.893112, 42.740807>,  <37.853401, 32.047192, 43.425919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881649, 31.893112, 42.740807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572033, 32.145634, 42.721584>,  <37.386261, 32.297146, 42.710052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572033, 32.145634, 42.721584>,  <37.881649, 31.893112, 42.740807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572033, 32.145634, 42.721584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416814, 0.450982, -0.789228,
		-0.476573, -0.630927, -0.612217,
		-0.774044, 0.631306, -0.048053,
		37.339821, 32.335026, 42.707169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927429, 32.004089, 42.005783>,  <37.881649, 31.893112, 42.740807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927429, 32.004089, 42.005783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717979, 32.296379, 42.180988>,  <37.592312, 32.471752, 42.286110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717979, 32.296379, 42.180988>,  <37.927429, 32.004089, 42.005783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717979, 32.296379, 42.180988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364330, 0.656808, -0.660203,
		-0.770120, -0.186115, -0.610145,
		-0.523621, 0.730729, 0.438014,
		37.560894, 32.515598, 42.312393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478367, 32.253601, 41.535332>,  <37.927429, 32.004089, 42.005783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478367, 32.253601, 41.535332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549568, 32.553173, 41.790649>,  <37.592289, 32.732918, 41.943840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549568, 32.553173, 41.790649>,  <37.478367, 32.253601, 41.535332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549568, 32.553173, 41.790649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317199, 0.570358, -0.757679,
		-0.931504, 0.337336, -0.136034,
		0.178004, 0.748930, 0.638293,
		37.602970, 32.777851, 41.982136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258945, 32.734859, 41.191628>,  <37.478367, 32.253601, 41.535332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258945, 32.734859, 41.191628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485279, 32.917030, 41.466560>,  <37.621078, 33.026333, 41.631519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485279, 32.917030, 41.466560>,  <37.258945, 32.734859, 41.191628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485279, 32.917030, 41.466560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320910, 0.646238, -0.692382,
		-0.759506, 0.612344, 0.219513,
		0.565834, 0.455424, 0.687329,
		37.655029, 33.053658, 41.672760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243351, 33.488575, 40.997627>,  <37.258945, 32.734859, 41.191628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243351, 33.488575, 40.997627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569889, 33.436909, 41.222801>,  <37.765812, 33.405910, 41.357906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569889, 33.436909, 41.222801>,  <37.243351, 33.488575, 40.997627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569889, 33.436909, 41.222801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528506, 0.560138, -0.637908,
		-0.232926, 0.818268, 0.525531,
		0.816350, -0.129161, 0.562930,
		37.814793, 33.398159, 41.391682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559406, 34.220390, 41.048275>,  <37.243351, 33.488575, 40.997627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559406, 34.220390, 41.048275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843975, 33.952000, 41.131870>,  <38.014717, 33.790966, 41.182026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843975, 33.952000, 41.131870>,  <37.559406, 34.220390, 41.048275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843975, 33.952000, 41.131870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689531, 0.609002, -0.391999,
		0.135749, 0.422978, 0.895914,
		0.711421, -0.670974, 0.208985,
		38.057400, 33.750706, 41.194565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097641, 34.652229, 41.200241>,  <37.559406, 34.220390, 41.048275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097641, 34.652229, 41.200241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283768, 34.306095, 41.125767>,  <38.395443, 34.098415, 41.081081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283768, 34.306095, 41.125767>,  <38.097641, 34.652229, 41.200241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283768, 34.306095, 41.125767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757205, 0.498089, -0.422549,
		0.458386, 0.055639, 0.887010,
		0.465320, -0.865339, -0.186186,
		38.423363, 34.046494, 41.069912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731388, 34.644894, 41.529919>,  <38.097641, 34.652229, 41.200241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731388, 34.644894, 41.529919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763172, 34.392658, 41.221104>,  <38.782242, 34.241318, 41.035816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763172, 34.392658, 41.221104>,  <38.731388, 34.644894, 41.529919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763172, 34.392658, 41.221104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772345, 0.528586, -0.352249,
		0.630213, -0.568290, 0.529034,
		0.079460, -0.630589, -0.772038,
		38.787010, 34.203480, 40.989491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398834, 34.583714, 41.434124>,  <38.731388, 34.644894, 41.529919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398834, 34.583714, 41.434124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244900, 34.447205, 41.091095>,  <39.152538, 34.365299, 40.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244900, 34.447205, 41.091095>,  <39.398834, 34.583714, 41.434124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244900, 34.447205, 41.091095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702512, 0.494332, -0.511969,
		0.598648, -0.799480, 0.049513,
		-0.384833, -0.341273, -0.857576,
		39.129448, 34.344822, 40.833820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938644, 34.313732, 41.097752>,  <39.398834, 34.583714, 41.434124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938644, 34.313732, 41.097752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665363, 34.402332, 40.819420>,  <39.501396, 34.455490, 40.652420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665363, 34.402332, 40.819420>,  <39.938644, 34.313732, 41.097752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665363, 34.402332, 40.819420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728174, 0.278142, -0.626418,
		0.054790, -0.934653, -0.351315,
		-0.683199, 0.221497, -0.695829,
		39.460403, 34.468781, 40.610672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313248, 34.078400, 40.506413>,  <39.938644, 34.313732, 41.097752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313248, 34.078400, 40.506413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026691, 34.349304, 40.439362>,  <39.854755, 34.511845, 40.399132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026691, 34.349304, 40.439362>,  <40.313248, 34.078400, 40.506413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026691, 34.349304, 40.439362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687523, 0.644392, -0.334770,
		-0.118707, -0.355076, -0.927270,
		-0.716394, 0.677259, -0.167628,
		39.811771, 34.552483, 40.389072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214169, 34.293900, 39.797104>,  <40.313248, 34.078400, 40.506413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214169, 34.293900, 39.797104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116844, 34.597393, 40.038807>,  <40.058449, 34.779488, 40.183826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116844, 34.597393, 40.038807>,  <40.214169, 34.293900, 39.797104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116844, 34.597393, 40.038807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689867, 0.573288, -0.442068,
		-0.681824, 0.309297, -0.662911,
		-0.243309, 0.758733, 0.604255,
		40.043850, 34.825012, 40.220085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269756, 34.905891, 39.416451>,  <40.214169, 34.293900, 39.797104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269756, 34.905891, 39.416451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296616, 35.022350, 39.798180>,  <40.312733, 35.092224, 40.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296616, 35.022350, 39.798180>,  <40.269756, 34.905891, 39.416451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296616, 35.022350, 39.798180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682895, 0.683928, -0.256704,
		-0.727424, 0.668939, -0.152893,
		0.067152, 0.291142, 0.954320,
		40.316761, 35.109692, 40.084476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024132, 35.554375, 39.463909>,  <40.269756, 34.905891, 39.416451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024132, 35.554375, 39.463909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295532, 35.485317, 39.749519>,  <40.458374, 35.443882, 39.920883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295532, 35.485317, 39.749519>,  <40.024132, 35.554375, 39.463909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295532, 35.485317, 39.749519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659850, 0.570415, -0.489106,
		-0.322847, 0.803008, 0.500947,
		0.678504, -0.172643, 0.714022,
		40.499084, 35.433525, 39.963726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321514, 36.194172, 39.683430>,  <40.024132, 35.554375, 39.463909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321514, 36.194172, 39.683430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594143, 35.917271, 39.778290>,  <40.757721, 35.751129, 39.835205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594143, 35.917271, 39.778290>,  <40.321514, 36.194172, 39.683430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594143, 35.917271, 39.778290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716378, 0.565171, -0.409127,
		0.149186, 0.448744, 0.881120,
		0.681577, -0.692251, 0.237154,
		40.798615, 35.709595, 39.849438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919376, 36.587002, 39.723389>,  <40.321514, 36.194172, 39.683430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919376, 36.587002, 39.723389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036869, 36.209217, 39.664455>,  <41.107365, 35.982544, 39.629097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036869, 36.209217, 39.664455>,  <40.919376, 36.587002, 39.723389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036869, 36.209217, 39.664455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729018, 0.321031, -0.604542,
		0.618268, 0.070165, 0.782829,
		0.293730, -0.944466, -0.147331,
		41.124989, 35.925877, 39.620255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626587, 36.322792, 39.893414>,  <40.919376, 36.587002, 39.723389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626587, 36.322792, 39.893414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465775, 36.173023, 39.559185>,  <41.369286, 36.083160, 39.358650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465775, 36.173023, 39.559185>,  <41.626587, 36.322792, 39.893414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465775, 36.173023, 39.559185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758470, 0.375028, -0.532989,
		0.512926, -0.848033, 0.133216,
		-0.402033, -0.374425, -0.835569,
		41.345165, 36.060696, 39.308514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083801, 35.902355, 39.496838>,  <41.626587, 36.322792, 39.893414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083801, 35.902355, 39.496838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812439, 36.087906, 39.268948>,  <41.649624, 36.199238, 39.132214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812439, 36.087906, 39.268948>,  <42.083801, 35.902355, 39.496838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812439, 36.087906, 39.268948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727000, 0.535769, -0.429446,
		0.106028, -0.705526, -0.700708,
		-0.678402, 0.463881, -0.569724,
		41.608917, 36.227070, 39.098030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376923, 35.952396, 38.815948>,  <42.083801, 35.902355, 39.496838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376923, 35.952396, 38.815948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133141, 36.261120, 38.888477>,  <41.986870, 36.446354, 38.931995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133141, 36.261120, 38.888477>,  <42.376923, 35.952396, 38.815948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133141, 36.261120, 38.888477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686508, 0.628143, -0.366257,
		-0.396577, -0.098737, -0.912676,
		-0.609454, 0.771808, 0.181323,
		41.950306, 36.492661, 38.942875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498817, 36.693546, 38.697315>,  <42.376923, 35.952396, 38.815948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498817, 36.693546, 38.697315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514294, 36.373734, 38.457565>,  <42.523579, 36.181847, 38.313717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514294, 36.373734, 38.457565>,  <42.498817, 36.693546, 38.697315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514294, 36.373734, 38.457565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371552, 0.545303, -0.751394,
		0.927605, 0.251767, -0.275974,
		0.038686, -0.799536, -0.599371,
		42.525898, 36.133873, 38.277756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602070, 36.927452, 38.097820>,  <42.498817, 36.693546, 38.697315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602070, 36.927452, 38.097820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517319, 36.557255, 37.972233>,  <42.466469, 36.335136, 37.896881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517319, 36.557255, 37.972233>,  <42.602070, 36.927452, 38.097820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517319, 36.557255, 37.972233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324295, 0.369639, -0.870746,
		0.921923, -0.082669, -0.378449,
		-0.211874, -0.925490, -0.313970,
		42.453758, 36.279606, 37.878040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839123, 36.931549, 37.344425>,  <42.602070, 36.927452, 38.097820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839123, 36.931549, 37.344425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565548, 36.643650, 37.392082>,  <42.401402, 36.470913, 37.420677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565548, 36.643650, 37.392082>,  <42.839123, 36.931549, 37.344425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565548, 36.643650, 37.392082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460225, 0.298956, -0.835954,
		0.566056, -0.626573, -0.535712,
		-0.683940, -0.719744, 0.119139,
		42.360367, 36.427727, 37.427822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880318, 36.658325, 36.730881>,  <42.839123, 36.931549, 37.344425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880318, 36.658325, 36.730881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543621, 36.501530, 36.879372>,  <42.341602, 36.407452, 36.968468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543621, 36.501530, 36.879372>,  <42.880318, 36.658325, 36.730881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543621, 36.501530, 36.879372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508421, 0.344273, -0.789293,
		0.181591, -0.853124, -0.489086,
		-0.841744, -0.391990, 0.371229,
		42.291100, 36.383934, 36.990742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489567, 36.298779, 36.217190>,  <42.880318, 36.658325, 36.730881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489567, 36.298779, 36.217190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199944, 36.330139, 36.491299>,  <42.026169, 36.348953, 36.655766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199944, 36.330139, 36.491299>,  <42.489567, 36.298779, 36.217190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199944, 36.330139, 36.491299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624746, 0.346481, -0.699745,
		-0.292292, -0.934775, -0.201893,
		-0.724057, 0.078398, 0.685271,
		41.982727, 36.353661, 36.696880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866657, 35.865738, 35.970955>,  <42.489567, 36.298779, 36.217190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866657, 35.865738, 35.970955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731804, 36.151646, 36.216049>,  <41.650890, 36.323189, 36.363106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731804, 36.151646, 36.216049>,  <41.866657, 35.865738, 35.970955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731804, 36.151646, 36.216049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627230, 0.314831, -0.712365,
		-0.702083, -0.624492, 0.342182,
		-0.337137, 0.714766, 0.612738,
		41.630661, 36.366074, 36.399872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152252, 35.943409, 35.801922>,  <41.866657, 35.865738, 35.970955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152252, 35.943409, 35.801922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259609, 36.278736, 35.991741>,  <41.324024, 36.479931, 36.105633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259609, 36.278736, 35.991741>,  <41.152252, 35.943409, 35.801922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259609, 36.278736, 35.991741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627353, 0.525944, -0.574292,
		-0.731023, -0.143575, 0.667077,
		0.268391, 0.838314, 0.474549,
		41.340126, 36.530231, 36.134106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501450, 36.398449, 35.905865>,  <41.152252, 35.943409, 35.801922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501450, 36.398449, 35.905865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799950, 36.661903, 35.944454>,  <40.979050, 36.819977, 35.967609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799950, 36.661903, 35.944454>,  <40.501450, 36.398449, 35.905865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799950, 36.661903, 35.944454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504233, 0.653918, -0.564040,
		-0.434585, 0.372268, 0.820093,
		0.746247, 0.658641, 0.096473,
		41.023823, 36.859497, 35.973396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216927, 37.080486, 36.024803>,  <40.501450, 36.398449, 35.905865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216927, 37.080486, 36.024803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585896, 37.148468, 35.886093>,  <40.807278, 37.189259, 35.802868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585896, 37.148468, 35.886093>,  <40.216927, 37.080486, 36.024803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585896, 37.148468, 35.886093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364995, 0.677013, -0.639087,
		0.126154, 0.716079, 0.686524,
		0.922423, 0.169954, -0.346774,
		40.862621, 37.199455, 35.782063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158646, 37.741432, 35.720509>,  <40.216927, 37.080486, 36.024803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158646, 37.741432, 35.720509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497791, 37.585491, 35.576771>,  <40.701279, 37.491924, 35.490528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497791, 37.585491, 35.576771>,  <40.158646, 37.741432, 35.720509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497791, 37.585491, 35.576771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075181, 0.582502, -0.809345,
		0.524849, 0.713234, 0.464576,
		0.847869, -0.389857, -0.359347,
		40.752151, 37.468533, 35.468967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573181, 38.265003, 35.398247>,  <40.158646, 37.741432, 35.720509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573181, 38.265003, 35.398247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692017, 37.932419, 35.210453>,  <40.763317, 37.732868, 35.097778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692017, 37.932419, 35.210453>,  <40.573181, 38.265003, 35.398247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692017, 37.932419, 35.210453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123125, 0.454216, -0.882342,
		0.946878, 0.319941, 0.032570,
		0.297091, -0.831460, -0.469480,
		40.781143, 37.682980, 35.069611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896114, 38.552631, 34.914345>,  <40.573181, 38.265003, 35.398247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896114, 38.552631, 34.914345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857983, 38.181744, 34.769470>,  <40.835102, 37.959213, 34.682545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857983, 38.181744, 34.769470>,  <40.896114, 38.552631, 34.914345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857983, 38.181744, 34.769470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263214, 0.374375, -0.889135,
		0.960016, 0.010574, -0.279745,
		-0.095328, -0.927217, -0.362189,
		40.829384, 37.903580, 34.660812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408257, 38.464073, 34.297611>,  <40.896114, 38.552631, 34.914345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408257, 38.464073, 34.297611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103996, 38.204922, 34.281315>,  <40.921440, 38.049431, 34.271538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103996, 38.204922, 34.281315>,  <41.408257, 38.464073, 34.297611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103996, 38.204922, 34.281315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129881, 0.213373, -0.968299,
		0.636033, -0.731248, -0.246450,
		-0.760653, -0.647879, -0.040737,
		40.875801, 38.010559, 34.269093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397171, 38.397251, 33.584373>,  <41.408257, 38.464073, 34.297611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397171, 38.397251, 33.584373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061359, 38.218746, 33.708336>,  <40.859871, 38.111645, 33.782711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061359, 38.218746, 33.708336>,  <41.397171, 38.397251, 33.584373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061359, 38.218746, 33.708336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398755, 0.118668, -0.909347,
		0.369034, -0.886998, -0.277575,
		-0.839529, -0.446265, 0.309902,
		40.809502, 38.084866, 33.801308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188530, 38.010418, 32.972355>,  <41.397171, 38.397251, 33.584373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188530, 38.010418, 32.972355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865501, 38.054333, 33.204140>,  <40.671684, 38.080681, 33.343212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865501, 38.054333, 33.204140>,  <41.188530, 38.010418, 32.972355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865501, 38.054333, 33.204140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581057, 0.020150, -0.813613,
		-0.101001, -0.993751, 0.047520,
		-0.807571, 0.109787, 0.579461,
		40.623230, 38.087269, 33.377979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658039, 37.673683, 32.745090>,  <41.188530, 38.010418, 32.972355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658039, 37.673683, 32.745090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427330, 37.901917, 32.978931>,  <40.288902, 38.038857, 33.119236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427330, 37.901917, 32.978931>,  <40.658039, 37.673683, 32.745090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427330, 37.901917, 32.978931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664644, 0.088297, -0.741924,
		-0.474948, -0.816479, 0.328307,
		-0.576777, 0.570583, 0.584605,
		40.254295, 38.073090, 33.154312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969147, 37.468063, 32.615288>,  <40.658039, 37.673683, 32.745090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969147, 37.468063, 32.615288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917706, 37.829487, 32.778767>,  <39.886841, 38.046341, 32.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917706, 37.829487, 32.778767>,  <39.969147, 37.468063, 32.615288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917706, 37.829487, 32.778767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641209, 0.238624, -0.729321,
		-0.756513, -0.355855, 0.548685,
		-0.128603, 0.903563, 0.408700,
		39.879124, 38.100555, 32.901375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215611, 37.663372, 32.731655>,  <39.969147, 37.468063, 32.615288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215611, 37.663372, 32.731655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391964, 38.021389, 32.704754>,  <39.497776, 38.236198, 32.688614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391964, 38.021389, 32.704754>,  <39.215611, 37.663372, 32.731655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391964, 38.021389, 32.704754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727508, 0.312462, -0.610819,
		-0.525695, 0.318227, 0.788909,
		0.440883, 0.895042, -0.067253,
		39.524227, 38.289902, 32.684578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638004, 38.107410, 32.802567>,  <39.215611, 37.663372, 32.731655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638004, 38.107410, 32.802567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925510, 38.321377, 32.624916>,  <39.098015, 38.449757, 32.518326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925510, 38.321377, 32.624916>,  <38.638004, 38.107410, 32.802567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925510, 38.321377, 32.624916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694985, 0.535045, -0.480336,
		-0.019313, 0.653906, 0.756329,
		0.718765, 0.534914, -0.444121,
		39.141140, 38.481850, 32.491680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481346, 38.881805, 32.837158>,  <38.638004, 38.107410, 32.802567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481346, 38.881805, 32.837158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747532, 38.880089, 32.538593>,  <38.907246, 38.879059, 32.359455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747532, 38.880089, 32.538593>,  <38.481346, 38.881805, 32.837158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747532, 38.880089, 32.538593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585159, 0.617819, -0.525252,
		0.463404, 0.786309, 0.408626,
		0.665467, -0.004292, -0.746415,
		38.947170, 38.878799, 32.314671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745247, 39.561100, 32.722267>,  <38.481346, 38.881805, 32.837158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745247, 39.561100, 32.722267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732773, 39.315144, 32.407066>,  <38.725288, 39.167572, 32.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732773, 39.315144, 32.407066>,  <38.745247, 39.561100, 32.722267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732773, 39.315144, 32.407066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756978, 0.529351, -0.383107,
		0.652696, 0.584551, -0.481963,
		-0.031182, -0.614888, -0.787998,
		38.723419, 39.130676, 32.170666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533348, 39.888210, 32.123363>,  <38.745247, 39.561100, 32.722267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533348, 39.888210, 32.123363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440529, 39.511898, 32.024498>,  <38.384838, 39.286110, 31.965179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440529, 39.511898, 32.024498>,  <38.533348, 39.888210, 32.123363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440529, 39.511898, 32.024498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843486, 0.321171, -0.430559,
		0.484442, 0.108566, -0.868061,
		-0.232051, -0.940778, -0.247163,
		38.370914, 39.229664, 31.950350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633976, 40.500847, 32.648026>,  <38.533348, 39.888210, 32.123363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633976, 40.500847, 32.648026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886669, 40.268097, 32.852898>,  <39.038284, 40.128448, 32.975822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886669, 40.268097, 32.852898>,  <38.633976, 40.500847, 32.648026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886669, 40.268097, 32.852898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755780, 0.609240, -0.240050,
		-0.172364, 0.538746, 0.824648,
		0.631734, -0.581876, 0.512184,
		39.076191, 40.093533, 33.006554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211807, 40.948528, 32.955418>,  <38.633976, 40.500847, 32.648026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211807, 40.948528, 32.955418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360222, 40.577278, 32.967499>,  <39.449272, 40.354527, 32.974747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360222, 40.577278, 32.967499>,  <39.211807, 40.948528, 32.955418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360222, 40.577278, 32.967499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924262, 0.365958, -0.108696,
		0.089831, 0.068247, 0.993616,
		0.371040, -0.928126, 0.030204,
		39.471535, 40.298840, 32.976559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444965, 40.811161, 32.180172>,  <39.211807, 40.948528, 32.955418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444965, 40.811161, 32.180172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627186, 41.121845, 32.006187>,  <39.736519, 41.308254, 31.901796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627186, 41.121845, 32.006187>,  <39.444965, 40.811161, 32.180172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627186, 41.121845, 32.006187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458293, -0.623508, -0.633408,
		-0.763176, 0.089212, -0.640002,
		0.455554, 0.776710, -0.434962,
		39.763851, 41.354858, 31.875698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416313, 40.629333, 31.470850>,  <39.444965, 40.811161, 32.180172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416313, 40.629333, 31.470850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717690, 40.890038, 31.505566>,  <39.898514, 41.046459, 31.526394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717690, 40.890038, 31.505566>,  <39.416313, 40.629333, 31.470850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717690, 40.890038, 31.505566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560187, -0.567187, -0.603729,
		-0.344263, 0.503492, -0.792451,
		0.753441, 0.651762, 0.086788,
		39.943722, 41.085567, 31.531603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448650, 41.018440, 30.859648>,  <39.416313, 40.629333, 31.470850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448650, 41.018440, 30.859648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773857, 40.924297, 31.072666>,  <39.968983, 40.867813, 31.200478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773857, 40.924297, 31.072666>,  <39.448650, 41.018440, 30.859648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773857, 40.924297, 31.072666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348162, -0.536586, -0.768673,
		0.466668, 0.810359, -0.354314,
		0.813021, -0.235357, 0.532544,
		40.017765, 40.853691, 31.232430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079697, 41.362015, 30.567570>,  <39.448650, 41.018440, 30.859648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079697, 41.362015, 30.567570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082714, 40.996746, 30.730576>,  <40.084526, 40.777584, 30.828379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082714, 40.996746, 30.730576>,  <40.079697, 41.362015, 30.567570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082714, 40.996746, 30.730576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110265, -0.404280, -0.907965,
		0.993874, 0.051783, 0.097640,
		0.007544, -0.913168, 0.407513,
		40.084976, 40.722797, 30.852829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849869, 41.044266, 30.587429>,  <40.079697, 41.362015, 30.567570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849869, 41.044266, 30.587429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183834, 41.263512, 30.607368>,  <41.384212, 41.395061, 30.619331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183834, 41.263512, 30.607368>,  <40.849869, 41.044266, 30.587429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183834, 41.263512, 30.607368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439974, -0.719101, 0.537881,
		0.330667, -0.427154, -0.841545,
		0.834915, 0.548118, 0.049847,
		41.434307, 41.427948, 30.622322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301762, 40.531345, 30.494158>,  <40.849869, 41.044266, 30.587429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301762, 40.531345, 30.494158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440910, 40.845108, 30.699558>,  <41.524399, 41.033367, 30.822800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440910, 40.845108, 30.699558>,  <41.301762, 40.531345, 30.494158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440910, 40.845108, 30.699558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462250, -0.620015, 0.633961,
		0.815665, 0.016829, -0.578280,
		0.347873, 0.784410, 0.513503,
		41.545273, 41.080433, 30.853609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125546, 40.527012, 30.576899>,  <41.301762, 40.531345, 30.494158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125546, 40.527012, 30.576899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916073, 40.719662, 30.857983>,  <41.790390, 40.835251, 31.026632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916073, 40.719662, 30.857983>,  <42.125546, 40.527012, 30.576899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916073, 40.719662, 30.857983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432797, -0.560079, 0.706398,
		0.733789, 0.674057, 0.084859,
		-0.523680, 0.481620, 0.702710,
		41.758968, 40.864147, 31.068796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637020, 40.661049, 31.085217>,  <42.125546, 40.527012, 30.576899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637020, 40.661049, 31.085217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275249, 40.649086, 31.255451>,  <42.058189, 40.641907, 31.357592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275249, 40.649086, 31.255451>,  <42.637020, 40.661049, 31.085217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275249, 40.649086, 31.255451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373465, -0.537766, 0.755865,
		0.206260, 0.842564, 0.497537,
		-0.904423, -0.029908, 0.425588,
		42.003922, 40.640114, 31.383127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798717, 40.854450, 31.855478>,  <42.637020, 40.661049, 31.085217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798717, 40.854450, 31.855478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455845, 40.651852, 31.818150>,  <42.250122, 40.530293, 31.795753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455845, 40.651852, 31.818150>,  <42.798717, 40.854450, 31.855478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455845, 40.651852, 31.818150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272291, -0.599488, 0.752644,
		-0.437156, 0.619739, 0.651781,
		-0.857177, -0.506496, -0.093320,
		42.198692, 40.499901, 31.790154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320507, 40.908585, 32.542774>,  <42.798717, 40.854450, 31.855478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320507, 40.908585, 32.542774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227501, 40.573559, 32.345020>,  <42.171696, 40.372543, 32.226368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227501, 40.573559, 32.345020>,  <42.320507, 40.908585, 32.542774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227501, 40.573559, 32.345020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386862, -0.546024, 0.743099,
		-0.892342, -0.018477, 0.450982,
		-0.232517, -0.837566, -0.494388,
		42.157745, 40.322289, 32.196705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133930, 40.450653, 33.082409>,  <42.320507, 40.908585, 32.542774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133930, 40.450653, 33.082409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179329, 40.216831, 32.761059>,  <42.206570, 40.076538, 32.568249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179329, 40.216831, 32.761059>,  <42.133930, 40.450653, 33.082409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179329, 40.216831, 32.761059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322220, -0.743242, 0.586315,
		-0.939836, -0.325411, 0.103998,
		0.113498, -0.584550, -0.803380,
		42.213379, 40.041466, 32.520046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839504, 39.793137, 33.375168>,  <42.133930, 40.450653, 33.082409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839504, 39.793137, 33.375168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071785, 39.714951, 33.059048>,  <42.211155, 39.668037, 32.869373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071785, 39.714951, 33.059048>,  <41.839504, 39.793137, 33.375168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071785, 39.714951, 33.059048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468115, -0.714055, 0.520571,
		-0.666071, -0.672250, -0.323155,
		0.580704, -0.195463, -0.790302,
		42.245995, 39.656311, 32.821957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743382, 39.111813, 33.225842>,  <41.839504, 39.793137, 33.375168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743382, 39.111813, 33.225842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100883, 39.214935, 33.079018>,  <42.315384, 39.276810, 32.990925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100883, 39.214935, 33.079018>,  <41.743382, 39.111813, 33.225842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100883, 39.214935, 33.079018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447142, -0.576844, 0.683604,
		-0.035497, -0.775104, -0.630836,
		0.893758, 0.257808, -0.367058,
		42.369011, 39.292278, 32.968899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045940, 38.538879, 33.132969>,  <41.743382, 39.111813, 33.225842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045940, 38.538879, 33.132969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356346, 38.790913, 33.144238>,  <42.542591, 38.942135, 33.151001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356346, 38.790913, 33.144238>,  <42.045940, 38.538879, 33.132969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356346, 38.790913, 33.144238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486184, -0.626048, 0.609663,
		0.401779, -0.459409, -0.792160,
		0.776014, 0.630085, 0.028176,
		42.589149, 38.979939, 33.152691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667336, 38.160370, 32.909920>,  <42.045940, 38.538879, 33.132969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667336, 38.160370, 32.909920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799931, 38.467758, 33.128853>,  <42.879486, 38.652191, 33.260212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799931, 38.467758, 33.128853>,  <42.667336, 38.160370, 32.909920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799931, 38.467758, 33.128853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704759, -0.587382, 0.397866,
		0.627242, 0.253853, -0.736292,
		0.331486, 0.768467, 0.547336,
		42.899376, 38.698299, 33.293053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467056, 38.112751, 32.911663>,  <42.667336, 38.160370, 32.909920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467056, 38.112751, 32.911663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357330, 38.341228, 33.221111>,  <43.291496, 38.478313, 33.406780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357330, 38.341228, 33.221111>,  <43.467056, 38.112751, 32.911663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357330, 38.341228, 33.221111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597258, -0.529310, 0.602589,
		0.753680, 0.627351, -0.195952,
		-0.274316, 0.571193, 0.773621,
		43.275036, 38.512585, 33.453197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085087, 38.268265, 33.332035>,  <43.467056, 38.112751, 32.911663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085087, 38.268265, 33.332035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787930, 38.364513, 33.581902>,  <43.609634, 38.422264, 33.731819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787930, 38.364513, 33.581902>,  <44.085087, 38.268265, 33.332035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787930, 38.364513, 33.581902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426282, -0.549437, 0.718611,
		0.516127, 0.800137, 0.305603,
		-0.742897, 0.240622, 0.624664,
		43.565060, 38.436699, 33.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368885, 38.277199, 33.942497>,  <44.085087, 38.268265, 33.332035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368885, 38.277199, 33.942497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979755, 38.230911, 34.022720>,  <43.746277, 38.203136, 34.070854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979755, 38.230911, 34.022720>,  <44.368885, 38.277199, 33.942497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979755, 38.230911, 34.022720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224106, -0.688408, 0.689834,
		0.058234, 0.716033, 0.695633,
		-0.972824, -0.115723, 0.200556,
		43.687908, 38.196194, 34.082886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356346, 38.203766, 34.652370>,  <44.368885, 38.277199, 33.942497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356346, 38.203766, 34.652370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000782, 38.066803, 34.530655>,  <43.787441, 37.984623, 34.457626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000782, 38.066803, 34.530655>,  <44.356346, 38.203766, 34.652370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000782, 38.066803, 34.530655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050455, -0.733413, 0.677908,
		-0.455291, 0.587248, 0.669216,
		-0.888912, -0.342411, -0.304286,
		43.734108, 37.964081, 34.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943813, 38.147587, 35.344349>,  <44.356346, 38.203766, 34.652370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943813, 38.147587, 35.344349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793289, 37.896904, 35.071400>,  <43.702972, 37.746494, 34.907631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793289, 37.896904, 35.071400>,  <43.943813, 38.147587, 35.344349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793289, 37.896904, 35.071400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026389, -0.743463, 0.668256,
		-0.926117, 0.233467, 0.296313,
		-0.376313, -0.626703, -0.682372,
		43.680397, 37.708893, 34.866688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369652, 37.728794, 35.588772>,  <43.943813, 38.147587, 35.344349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369652, 37.728794, 35.588772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516380, 37.490322, 35.303112>,  <43.604416, 37.347237, 35.131718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516380, 37.490322, 35.303112>,  <43.369652, 37.728794, 35.588772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516380, 37.490322, 35.303112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150522, -0.719510, 0.677974,
		-0.918034, -0.356189, -0.174190,
		0.366819, -0.596184, -0.714149,
		43.626427, 37.311466, 35.088867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110249, 37.186798, 35.891720>,  <43.369652, 37.728794, 35.588772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110249, 37.186798, 35.891720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339611, 37.063702, 35.588009>,  <43.477230, 36.989845, 35.405781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339611, 37.063702, 35.588009>,  <43.110249, 37.186798, 35.891720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339611, 37.063702, 35.588009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170340, -0.861736, 0.477907,
		-0.801365, -0.403371, -0.441708,
		0.573409, -0.307737, -0.759275,
		43.511635, 36.971378, 35.360226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714893, 36.584427, 35.564644>,  <43.110249, 37.186798, 35.891720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714893, 36.584427, 35.564644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106350, 36.556328, 35.487362>,  <43.341225, 36.539467, 35.440994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106350, 36.556328, 35.487362>,  <42.714893, 36.584427, 35.564644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106350, 36.556328, 35.487362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035168, -0.868739, 0.494020,
		-0.202551, -0.490262, -0.847712,
		0.978640, -0.070252, -0.193205,
		43.399940, 36.535252, 35.429401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802177, 35.863049, 35.323006>,  <42.714893, 36.584427, 35.564644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802177, 35.863049, 35.323006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175186, 35.979057, 35.409058>,  <43.398991, 36.048664, 35.460690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175186, 35.979057, 35.409058>,  <42.802177, 35.863049, 35.323006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175186, 35.979057, 35.409058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203633, -0.914352, 0.349992,
		0.298209, -0.282570, -0.911716,
		0.932526, 0.290026, 0.215127,
		43.454945, 36.066067, 35.473595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264957, 35.229675, 35.109100>,  <42.802177, 35.863049, 35.323006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264957, 35.229675, 35.109100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467731, 35.462341, 35.363560>,  <43.589394, 35.601940, 35.516235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467731, 35.462341, 35.363560>,  <43.264957, 35.229675, 35.109100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467731, 35.462341, 35.363560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298923, -0.810835, 0.503182,
		0.808495, -0.064920, -0.584912,
		0.506933, 0.581663, 0.636150,
		43.619812, 35.636841, 35.554405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770481, 34.788811, 35.285065>,  <43.264957, 35.229675, 35.109100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770481, 34.788811, 35.285065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773861, 35.083515, 35.555504>,  <43.775887, 35.260338, 35.717770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773861, 35.083515, 35.555504>,  <43.770481, 34.788811, 35.285065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773861, 35.083515, 35.555504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226606, -0.659946, 0.716325,
		0.973950, 0.147159, -0.172527,
		0.008445, 0.736761, 0.676101,
		43.776394, 35.304543, 35.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431915, 34.965031, 35.534805>,  <43.770481, 34.788811, 35.285065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431915, 34.965031, 35.534805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188057, 35.057571, 35.838070>,  <44.041744, 35.113098, 36.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188057, 35.057571, 35.838070>,  <44.431915, 34.965031, 35.534805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188057, 35.057571, 35.838070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429284, -0.707693, 0.561147,
		0.666371, 0.667566, 0.332123,
		-0.609644, 0.231357, 0.758162,
		44.005165, 35.126980, 36.065517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763748, 35.080948, 36.077065>,  <44.431915, 34.965031, 35.534805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763748, 35.080948, 36.077065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412739, 34.923157, 36.186127>,  <44.202133, 34.828484, 36.251564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412739, 34.923157, 36.186127>,  <44.763748, 35.080948, 36.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412739, 34.923157, 36.186127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479523, -0.718520, 0.503772,
		-0.002818, 0.572817, 0.819679,
		-0.877525, -0.394474, 0.272654,
		44.149483, 34.804813, 36.267921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596188, 34.969711, 36.100624>,  <44.763748, 35.080948, 36.077065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596188, 34.969711, 36.100624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705280, 35.036804, 35.721684>,  <45.770737, 35.077061, 35.494320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705280, 35.036804, 35.721684>,  <45.596188, 34.969711, 36.100624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705280, 35.036804, 35.721684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774063, 0.546516, 0.319605,
		0.571352, -0.820480, 0.019222,
		0.272734, 0.167728, -0.947356,
		45.787102, 35.087124, 35.437477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272823, 35.080341, 36.220188>,  <45.596188, 34.969711, 36.100624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272823, 35.080341, 36.220188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189110, 35.225887, 35.857132>,  <46.138882, 35.313213, 35.639297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189110, 35.225887, 35.857132>,  <46.272823, 35.080341, 36.220188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189110, 35.225887, 35.857132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799466, 0.598147, 0.055448,
		0.563076, -0.714020, -0.416079,
		-0.209285, 0.363862, -0.907636,
		46.126324, 35.335045, 35.584843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881065, 35.207729, 35.757908>,  <46.272823, 35.080341, 36.220188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881065, 35.207729, 35.757908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601959, 35.464699, 35.631149>,  <46.434498, 35.618881, 35.555096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601959, 35.464699, 35.631149>,  <46.881065, 35.207729, 35.757908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601959, 35.464699, 35.631149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699853, 0.705713, -0.110342,
		0.152750, -0.298773, -0.942020,
		-0.697763, 0.642421, -0.316895,
		46.392632, 35.657425, 35.536079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273094, 35.225086, 35.105560>,  <46.881065, 35.207729, 35.757908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273094, 35.225086, 35.105560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528351, 34.927307, 35.026997>,  <47.681503, 34.748638, 34.979858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528351, 34.927307, 35.026997>,  <47.273094, 35.225086, 35.105560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528351, 34.927307, 35.026997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057088, 0.300148, -0.952183,
		0.767803, 0.596411, 0.234035,
		0.638137, -0.744449, -0.196407,
		47.719791, 34.703972, 34.968075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.848347, 34.538994, 47.781105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452099, 34.589447, 47.760109>,  <33.214348, 34.619717, 47.747509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452099, 34.589447, 47.760109>,  <33.848347, 34.538994, 47.781105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452099, 34.589447, 47.760109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069742, 0.136496, -0.988183,
		-0.117476, -0.982578, -0.144013,
		-0.990624, 0.126131, -0.052492,
		33.154911, 34.627285, 47.744362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703102, 34.125118, 47.276974>,  <33.848347, 34.538994, 47.781105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703102, 34.125118, 47.276974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.387287, 34.370491, 47.284248>,  <33.197800, 34.517715, 47.288612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.387287, 34.370491, 47.284248>,  <33.703102, 34.125118, 47.276974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387287, 34.370491, 47.284248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121760, 0.185620, -0.975049,
		-0.601505, -0.767621, -0.221246,
		-0.789535, 0.613435, 0.018186,
		33.150425, 34.554523, 47.289703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415726, 34.044373, 46.593079>,  <33.703102, 34.125118, 47.276974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415726, 34.044373, 46.593079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.241562, 34.381130, 46.720592>,  <33.137062, 34.583187, 46.797100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.241562, 34.381130, 46.720592>,  <33.415726, 34.044373, 46.593079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241562, 34.381130, 46.720592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037869, 0.336671, -0.940860,
		-0.899433, -0.421736, -0.114710,
		-0.435414, 0.841897, 0.318784,
		33.110939, 34.633701, 46.816227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825901, 34.217766, 46.127277>,  <33.415726, 34.044373, 46.593079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825901, 34.217766, 46.127277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924271, 34.568447, 46.292645>,  <32.983292, 34.778854, 46.391865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924271, 34.568447, 46.292645>,  <32.825901, 34.217766, 46.127277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924271, 34.568447, 46.292645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247402, 0.469167, -0.847747,
		-0.937184, 0.106199, 0.332277,
		0.245923, 0.876701, 0.413422,
		32.998047, 34.831459, 46.416672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432419, 34.655102, 45.878925>,  <32.825901, 34.217766, 46.127277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432419, 34.655102, 45.878925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.729408, 34.889389, 46.008953>,  <32.907600, 35.029961, 46.086967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.729408, 34.889389, 46.008953>,  <32.432419, 34.655102, 45.878925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729408, 34.889389, 46.008953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065146, 0.419828, -0.905262,
		-0.666701, 0.693309, 0.273554,
		0.742473, 0.585719, 0.325066,
		32.952148, 35.065105, 46.106472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279175, 35.273670, 45.690052>,  <32.432419, 34.655102, 45.878925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279175, 35.273670, 45.690052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676048, 35.236301, 45.723129>,  <32.914173, 35.213879, 45.742977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676048, 35.236301, 45.723129>,  <32.279175, 35.273670, 45.690052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676048, 35.236301, 45.723129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118834, 0.505671, -0.854502,
		0.038016, 0.857652, 0.512822,
		0.992186, -0.093426, 0.082695,
		32.973705, 35.208275, 45.747936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449039, 35.839970, 45.394657>,  <32.279175, 35.273670, 45.690052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449039, 35.839970, 45.394657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811062, 35.671070, 45.414955>,  <33.028275, 35.569729, 45.427135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811062, 35.671070, 45.414955>,  <32.449039, 35.839970, 45.394657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811062, 35.671070, 45.414955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198869, 0.314716, -0.928119,
		0.375928, 0.850093, 0.368809,
		0.905057, -0.422251, 0.050747,
		33.082581, 35.544395, 45.430180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869217, 36.311928, 45.015560>,  <32.449039, 35.839970, 45.394657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869217, 36.311928, 45.015560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.080406, 35.972549, 45.030495>,  <33.207119, 35.768925, 45.039455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.080406, 35.972549, 45.030495>,  <32.869217, 36.311928, 45.015560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080406, 35.972549, 45.030495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301963, 0.146455, -0.942003,
		0.793768, 0.508621, 0.333522,
		0.527968, -0.848443, 0.037333,
		33.238796, 35.718018, 45.041695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411976, 36.401611, 44.641132>,  <32.869217, 36.311928, 45.015560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411976, 36.401611, 44.641132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425667, 36.002041, 44.653679>,  <33.433880, 35.762299, 44.661209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425667, 36.002041, 44.653679>,  <33.411976, 36.401611, 44.641132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425667, 36.002041, 44.653679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340563, -0.017854, -0.940052,
		0.939599, 0.042856, 0.339584,
		0.034224, -0.998922, 0.031370,
		33.435936, 35.702366, 44.663090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038906, 36.332874, 44.229187>,  <33.411976, 36.401611, 44.641132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038906, 36.332874, 44.229187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816254, 36.000683, 44.220592>,  <33.682663, 35.801369, 44.215435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816254, 36.000683, 44.220592>,  <34.038906, 36.332874, 44.229187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816254, 36.000683, 44.220592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531345, -0.336019, -0.777665,
		0.638615, -0.444292, 0.628311,
		-0.556635, -0.830479, -0.021486,
		33.649261, 35.751537, 44.214146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401035, 35.702606, 44.331886>,  <34.038906, 36.332874, 44.229187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401035, 35.702606, 44.331886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100498, 35.635887, 44.076492>,  <33.920177, 35.595856, 43.923256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100498, 35.635887, 44.076492>,  <34.401035, 35.702606, 44.331886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100498, 35.635887, 44.076492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653553, -0.054033, -0.754950,
		0.091425, -0.984509, 0.149609,
		-0.751339, -0.166798, -0.638489,
		33.875095, 35.585850, 43.884945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563595, 35.090229, 43.863724>,  <34.401035, 35.702606, 44.331886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563595, 35.090229, 43.863724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286091, 35.302723, 43.669209>,  <34.119587, 35.430218, 43.552498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286091, 35.302723, 43.669209>,  <34.563595, 35.090229, 43.863724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286091, 35.302723, 43.669209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503856, -0.124450, -0.854775,
		-0.514607, -0.838033, -0.181327,
		-0.693764, 0.531236, -0.486291,
		34.077961, 35.462093, 43.523319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488716, 34.654167, 43.307156>,  <34.563595, 35.090229, 43.863724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488716, 34.654167, 43.307156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.353115, 35.010822, 43.187119>,  <34.271755, 35.224815, 43.115097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.353115, 35.010822, 43.187119>,  <34.488716, 34.654167, 43.307156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353115, 35.010822, 43.187119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444187, -0.129487, -0.886528,
		-0.829321, -0.433835, -0.352157,
		-0.339006, 0.891639, -0.300090,
		34.251411, 35.278313, 43.097092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146828, 34.528984, 42.625038>,  <34.488716, 34.654167, 43.307156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146828, 34.528984, 42.625038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.247341, 34.915329, 42.650249>,  <34.307648, 35.147137, 42.665375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.247341, 34.915329, 42.650249>,  <34.146828, 34.528984, 42.625038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247341, 34.915329, 42.650249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415530, -0.048836, -0.908268,
		-0.874181, 0.254421, -0.413615,
		0.251282, 0.965860, 0.063028,
		34.322727, 35.205086, 42.669159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017075, 34.864243, 41.954693>,  <34.146828, 34.528984, 42.625038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017075, 34.864243, 41.954693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251183, 35.142593, 42.121166>,  <34.391647, 35.309605, 42.221050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251183, 35.142593, 42.121166>,  <34.017075, 34.864243, 41.954693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251183, 35.142593, 42.121166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451237, 0.146922, -0.880226,
		-0.673677, 0.702970, -0.228017,
		0.585272, 0.695878, 0.416185,
		34.426765, 35.351357, 42.246021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009861, 35.367916, 41.407417>,  <34.017075, 34.864243, 41.954693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009861, 35.367916, 41.407417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.323574, 35.475590, 41.631001>,  <34.511803, 35.540195, 41.765152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.323574, 35.475590, 41.631001>,  <34.009861, 35.367916, 41.407417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323574, 35.475590, 41.631001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475128, 0.318746, -0.820155,
		-0.398940, 0.908813, 0.122090,
		0.784283, 0.269184, 0.558963,
		34.558861, 35.556347, 41.798691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279419, 35.972706, 41.114208>,  <34.009861, 35.367916, 41.407417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279419, 35.972706, 41.114208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587067, 35.845871, 41.336163>,  <34.771656, 35.769768, 41.469337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587067, 35.845871, 41.336163>,  <34.279419, 35.972706, 41.114208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587067, 35.845871, 41.336163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639000, 0.396900, -0.658900,
		-0.011306, 0.861350, 0.507885,
		0.769124, -0.317089, 0.554890,
		34.817802, 35.750744, 41.502628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743507, 36.533539, 41.260788>,  <34.279419, 35.972706, 41.114208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743507, 36.533539, 41.260788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.965168, 36.201820, 41.289623>,  <35.098164, 36.002789, 41.306923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.965168, 36.201820, 41.289623>,  <34.743507, 36.533539, 41.260788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965168, 36.201820, 41.289623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677150, 0.398725, -0.618454,
		0.484137, 0.391527, 0.782508,
		0.554147, -0.829292, 0.072085,
		35.131413, 35.953033, 41.311249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425335, 36.716763, 41.158073>,  <34.743507, 36.533539, 41.260788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425335, 36.716763, 41.158073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.493019, 36.324642, 41.117329>,  <35.533630, 36.089371, 41.092880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.493019, 36.324642, 41.117329>,  <35.425335, 36.716763, 41.158073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493019, 36.324642, 41.117329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605287, 0.184929, -0.774228,
		0.777814, 0.069355, 0.624656,
		0.169214, -0.980301, -0.101861,
		35.543785, 36.030552, 41.086769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128223, 36.695465, 41.154541>,  <35.425335, 36.716763, 41.158073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128223, 36.695465, 41.154541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993084, 36.360798, 40.982105>,  <35.911999, 36.159996, 40.878643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993084, 36.360798, 40.982105>,  <36.128223, 36.695465, 41.154541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993084, 36.360798, 40.982105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521143, 0.215115, -0.825915,
		0.783754, -0.503694, 0.363349,
		-0.337847, -0.836670, -0.431094,
		35.891731, 36.109798, 40.852776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669376, 36.492863, 40.794029>,  <36.128223, 36.695465, 41.154541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669376, 36.492863, 40.794029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398766, 36.257832, 40.616463>,  <36.236397, 36.116814, 40.509922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398766, 36.257832, 40.616463>,  <36.669376, 36.492863, 40.794029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398766, 36.257832, 40.616463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487857, 0.093957, -0.867853,
		0.551638, -0.803696, 0.223088,
		-0.676529, -0.587576, -0.443919,
		36.195808, 36.081558, 40.483288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032074, 35.906155, 40.649334>,  <36.669376, 36.492863, 40.794029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032074, 35.906155, 40.649334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747494, 35.976360, 40.377148>,  <36.576744, 36.018486, 40.213837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747494, 35.976360, 40.377148>,  <37.032074, 35.906155, 40.649334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747494, 35.976360, 40.377148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692721, 0.012276, -0.721101,
		-0.118214, -0.984399, -0.130320,
		-0.711452, 0.175520, -0.680462,
		36.534058, 36.029015, 40.173008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823326, 35.814529, 40.731945>,  <37.032074, 35.906155, 40.649334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823326, 35.814529, 40.731945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118256, 36.064800, 40.833836>,  <38.295212, 36.214962, 40.894970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118256, 36.064800, 40.833836>,  <37.823326, 35.814529, 40.731945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118256, 36.064800, 40.833836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058097, -0.316944, 0.946663,
		0.673038, -0.712795, -0.197340,
		0.737323, 0.625676, 0.254727,
		38.339451, 36.252502, 40.910255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434425, 35.368561, 41.132938>,  <37.823326, 35.814529, 40.731945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434425, 35.368561, 41.132938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.514610, 35.750397, 41.221088>,  <38.562721, 35.979500, 41.273979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.514610, 35.750397, 41.221088>,  <38.434425, 35.368561, 41.132938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514610, 35.750397, 41.221088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103811, -0.202975, 0.973666,
		0.974186, -0.218062, 0.058409,
		0.200464, 0.954595, 0.220373,
		38.574749, 36.036774, 41.287201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973698, 35.354385, 41.767353>,  <38.434425, 35.368561, 41.132938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973698, 35.354385, 41.767353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831219, 35.727932, 41.754543>,  <38.745731, 35.952061, 41.746857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831219, 35.727932, 41.754543>,  <38.973698, 35.354385, 41.767353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831219, 35.727932, 41.754543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084084, 0.002104, 0.996456,
		0.930621, 0.357626, 0.077773,
		-0.356195, 0.933863, -0.032029,
		38.724361, 36.008091, 41.744934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323803, 35.737202, 42.261009>,  <38.973698, 35.354385, 41.767353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323803, 35.737202, 42.261009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.983788, 35.946472, 42.236595>,  <38.779778, 36.072033, 42.221947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.983788, 35.946472, 42.236595>,  <39.323803, 35.737202, 42.261009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983788, 35.946472, 42.236595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046106, 0.041534, 0.998073,
		0.524700, 0.851214, -0.011184,
		-0.850038, 0.523173, -0.061039,
		38.728775, 36.103424, 42.218285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395664, 36.337456, 42.667252>,  <39.323803, 35.737202, 42.261009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395664, 36.337456, 42.667252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005081, 36.265030, 42.620361>,  <38.770729, 36.221573, 42.592228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005081, 36.265030, 42.620361>,  <39.395664, 36.337456, 42.667252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005081, 36.265030, 42.620361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140934, 0.124137, 0.982205,
		-0.163289, 0.975605, -0.146733,
		-0.976460, -0.181063, -0.117226,
		38.712143, 36.210712, 42.585194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160027, 36.864574, 43.095352>,  <39.395664, 36.337456, 42.667252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160027, 36.864574, 43.095352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875137, 36.588554, 43.043861>,  <38.704205, 36.422943, 43.012966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875137, 36.588554, 43.043861>,  <39.160027, 36.864574, 43.095352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875137, 36.588554, 43.043861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181274, 0.003650, 0.983426,
		-0.678140, 0.723755, -0.127688,
		-0.712226, -0.690047, -0.128723,
		38.661469, 36.381538, 43.005245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600712, 36.972878, 43.654621>,  <39.160027, 36.864574, 43.095352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600712, 36.972878, 43.654621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498878, 36.608681, 43.524269>,  <38.437778, 36.390163, 43.446056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498878, 36.608681, 43.524269>,  <38.600712, 36.972878, 43.654621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498878, 36.608681, 43.524269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318600, -0.239203, 0.917211,
		-0.913063, 0.337328, -0.229186,
		-0.254580, -0.910490, -0.325880,
		38.422504, 36.335533, 43.426506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916500, 36.894093, 43.873657>,  <38.600712, 36.972878, 43.654621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916500, 36.894093, 43.873657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091412, 36.538784, 43.817417>,  <38.196358, 36.325600, 43.783672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091412, 36.538784, 43.817417>,  <37.916500, 36.894093, 43.873657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091412, 36.538784, 43.817417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402941, -0.333285, 0.852385,
		-0.804006, -0.316075, -0.503657,
		0.437279, -0.888267, -0.140604,
		38.222595, 36.272305, 43.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396221, 36.349476, 43.681690>,  <37.916500, 36.894093, 43.873657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396221, 36.349476, 43.681690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709770, 36.152733, 43.833279>,  <37.897900, 36.034687, 43.924232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.709770, 36.152733, 43.833279>,  <37.396221, 36.349476, 43.681690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709770, 36.152733, 43.833279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578840, -0.357997, 0.732654,
		-0.224689, -0.793673, -0.565330,
		0.783874, -0.491855, 0.378972,
		37.944931, 36.005177, 43.946968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152645, 35.636299, 43.809368>,  <37.396221, 36.349476, 43.681690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152645, 35.636299, 43.809368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484833, 35.632462, 44.032158>,  <37.684147, 35.630157, 44.165833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484833, 35.632462, 44.032158>,  <37.152645, 35.636299, 43.809368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484833, 35.632462, 44.032158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514674, -0.395759, 0.760583,
		0.213132, -0.918304, -0.333605,
		0.830473, -0.009593, 0.556976,
		37.733974, 35.629585, 44.199249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204861, 34.994724, 44.018417>,  <37.152645, 35.636299, 43.809368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204861, 34.994724, 44.018417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455624, 35.169037, 44.276749>,  <37.606079, 35.273624, 44.431747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455624, 35.169037, 44.276749>,  <37.204861, 34.994724, 44.018417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455624, 35.169037, 44.276749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507402, -0.400670, 0.762894,
		0.591214, -0.805954, -0.030067,
		0.626904, 0.435778, 0.645824,
		37.643696, 35.299770, 44.470497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408642, 34.497055, 44.446697>,  <37.204861, 34.994724, 44.018417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408642, 34.497055, 44.446697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469925, 34.812920, 44.684338>,  <37.506695, 35.002438, 44.826923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469925, 34.812920, 44.684338>,  <37.408642, 34.497055, 44.446697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469925, 34.812920, 44.684338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361274, -0.514821, 0.777457,
		0.919786, -0.333749, 0.206409,
		0.153212, 0.789665, 0.594101,
		37.515888, 35.049820, 44.862568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639755, 34.211414, 45.053909>,  <37.408642, 34.497055, 44.446697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639755, 34.211414, 45.053909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522152, 34.578220, 45.161713>,  <37.451588, 34.798306, 45.226395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522152, 34.578220, 45.161713>,  <37.639755, 34.211414, 45.053909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522152, 34.578220, 45.161713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360809, -0.367591, 0.857143,
		0.885085, 0.154768, 0.438944,
		-0.294010, 0.917019, 0.269507,
		37.433949, 34.853325, 45.242565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735416, 34.278080, 45.785122>,  <37.639755, 34.211414, 45.053909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735416, 34.278080, 45.785122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451656, 34.544666, 45.693405>,  <37.281403, 34.704617, 45.638374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451656, 34.544666, 45.693405>,  <37.735416, 34.278080, 45.785122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451656, 34.544666, 45.693405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533925, -0.295800, 0.792102,
		0.460085, 0.684342, 0.565683,
		-0.709398, 0.666467, -0.229294,
		37.238838, 34.744606, 45.624619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511349, 34.588173, 46.374702>,  <37.735416, 34.278080, 45.785122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511349, 34.588173, 46.374702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192886, 34.675781, 46.149082>,  <37.001808, 34.728348, 46.013710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192886, 34.675781, 46.149082>,  <37.511349, 34.588173, 46.374702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192886, 34.675781, 46.149082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571757, 0.032798, 0.819767,
		0.198049, 0.975168, 0.099116,
		-0.796160, 0.219024, -0.564055,
		36.954037, 34.741489, 45.979866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220707, 35.118752, 46.616047>,  <37.511349, 34.588173, 46.374702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220707, 35.118752, 46.616047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911682, 34.995789, 46.393822>,  <36.726269, 34.922009, 46.260487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911682, 34.995789, 46.393822>,  <37.220707, 35.118752, 46.616047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911682, 34.995789, 46.393822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617314, 0.158913, 0.770500,
		-0.148575, 0.938214, -0.312539,
		-0.772560, -0.307411, -0.555562,
		36.679913, 34.903564, 46.227154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629951, 35.535709, 46.818645>,  <37.220707, 35.118752, 46.616047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629951, 35.535709, 46.818645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461285, 35.230515, 46.622665>,  <36.360085, 35.047398, 46.505077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461285, 35.230515, 46.622665>,  <36.629951, 35.535709, 46.818645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461285, 35.230515, 46.622665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730511, -0.034253, 0.682041,
		-0.537172, 0.645503, -0.542929,
		-0.421663, -0.762989, -0.489947,
		36.334785, 35.001617, 46.475681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894901, 35.625854, 46.797428>,  <36.629951, 35.535709, 46.818645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894901, 35.625854, 46.797428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899418, 35.229309, 46.745171>,  <35.902130, 34.991383, 46.713814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899418, 35.229309, 46.745171>,  <35.894901, 35.625854, 46.797428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899418, 35.229309, 46.745171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712472, -0.099654, 0.694589,
		-0.701610, 0.085237, -0.707445,
		0.011295, -0.991365, -0.130648,
		35.902805, 34.931900, 46.705975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.090302, 35.387527, 46.847427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318550, 35.069553, 46.929871>,  <35.455498, 34.878769, 46.979336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318550, 35.069553, 46.929871>,  <35.090302, 35.387527, 46.847427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318550, 35.069553, 46.929871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459762, -0.101284, 0.882248,
		-0.680452, -0.598185, -0.423274,
		0.570618, -0.794932, 0.206103,
		35.489735, 34.831074, 46.991703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586182, 34.926849, 47.043671>,  <35.090302, 35.387527, 46.847427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586182, 34.926849, 47.043671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935825, 34.793362, 47.184849>,  <35.145611, 34.713268, 47.269554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935825, 34.793362, 47.184849>,  <34.586182, 34.926849, 47.043671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935825, 34.793362, 47.184849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444501, -0.256593, 0.858241,
		-0.195846, -0.907079, -0.372627,
		0.874107, -0.333716, 0.352945,
		35.198059, 34.693245, 47.290733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484478, 34.191875, 47.152203>,  <34.586182, 34.926849, 47.043671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484478, 34.191875, 47.152203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780811, 34.323254, 47.386566>,  <34.958611, 34.402081, 47.527184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780811, 34.323254, 47.386566>,  <34.484478, 34.191875, 47.152203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780811, 34.323254, 47.386566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485817, -0.340356, 0.805071,
		0.463838, -0.881069, -0.092584,
		0.740835, 0.328444, 0.585908,
		35.003063, 34.421787, 47.562340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508602, 33.666100, 47.756123>,  <34.484478, 34.191875, 47.152203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508602, 33.666100, 47.756123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694061, 33.996468, 47.884422>,  <34.805336, 34.194687, 47.961403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694061, 33.996468, 47.884422>,  <34.508602, 33.666100, 47.756123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694061, 33.996468, 47.884422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331497, -0.174019, 0.927269,
		0.821668, -0.536257, 0.193107,
		0.463650, 0.825921, 0.320753,
		34.833157, 34.244244, 47.980648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876122, 33.458736, 48.353844>,  <34.508602, 33.666100, 47.756123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876122, 33.458736, 48.353844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856503, 33.853794, 48.413387>,  <34.844730, 34.090828, 48.449112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856503, 33.853794, 48.413387>,  <34.876122, 33.458736, 48.353844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856503, 33.853794, 48.413387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207696, -0.155867, 0.965696,
		0.976963, 0.016449, 0.212774,
		-0.049049, 0.987641, 0.148859,
		34.841789, 34.150085, 48.458046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204449, 33.633900, 49.057598>,  <34.876122, 33.458736, 48.353844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204449, 33.633900, 49.057598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970985, 33.942596, 48.956593>,  <34.830910, 34.127815, 48.895988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970985, 33.942596, 48.956593>,  <35.204449, 33.633900, 49.057598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970985, 33.942596, 48.956593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276093, 0.103841, 0.955505,
		0.763623, 0.627403, 0.152465,
		-0.583655, 0.771740, -0.252517,
		34.795891, 34.174118, 48.880836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305103, 34.102333, 49.579426>,  <35.204449, 33.633900, 49.057598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305103, 34.102333, 49.579426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948036, 34.185974, 49.419720>,  <34.733795, 34.236156, 49.323895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948036, 34.185974, 49.419720>,  <35.305103, 34.102333, 49.579426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948036, 34.185974, 49.419720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430356, -0.132247, 0.892919,
		0.133906, 0.968911, 0.208039,
		-0.892672, 0.209098, -0.399268,
		34.680233, 34.248703, 49.299938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002430, 34.661777, 50.022148>,  <35.305103, 34.102333, 49.579426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002430, 34.661777, 50.022148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696510, 34.477600, 49.841896>,  <34.512959, 34.367092, 49.733746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696510, 34.477600, 49.841896>,  <35.002430, 34.661777, 50.022148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696510, 34.477600, 49.841896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474312, -0.070958, 0.877492,
		-0.436015, 0.884847, -0.164127,
		-0.764800, -0.460447, -0.450632,
		34.467072, 34.339466, 49.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462025, 35.109848, 50.114952>,  <35.002430, 34.661777, 50.022148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462025, 35.109848, 50.114952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353546, 34.726425, 50.080021>,  <34.288460, 34.496372, 50.059063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353546, 34.726425, 50.080021>,  <34.462025, 35.109848, 50.114952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353546, 34.726425, 50.080021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387238, 0.025596, 0.921624,
		-0.881192, 0.283757, -0.378130,
		-0.271196, -0.958554, -0.087327,
		34.272186, 34.438858, 50.053822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863495, 35.039444, 50.538536>,  <34.462025, 35.109848, 50.114952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863495, 35.039444, 50.538536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912682, 34.652321, 50.450687>,  <33.942192, 34.420048, 50.397976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912682, 34.652321, 50.450687>,  <33.863495, 35.039444, 50.538536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912682, 34.652321, 50.450687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503233, -0.251550, 0.826728,
		-0.855357, 0.008862, -0.517963,
		0.122967, -0.967804, -0.219625,
		33.949574, 34.361980, 50.384800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216862, 34.663273, 50.754608>,  <33.863495, 35.039444, 50.538536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216862, 34.663273, 50.754608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495918, 34.376995, 50.741543>,  <33.663353, 34.205227, 50.733704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495918, 34.376995, 50.741543>,  <33.216862, 34.663273, 50.754608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495918, 34.376995, 50.741543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375903, -0.404467, 0.833729,
		-0.609909, -0.569369, -0.551207,
		0.697644, -0.715699, -0.032660,
		33.705212, 34.162285, 50.731747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783276, 34.043354, 50.840069>,  <33.216862, 34.663273, 50.754608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783276, 34.043354, 50.840069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164753, 33.958565, 50.925419>,  <33.393639, 33.907692, 50.976627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164753, 33.958565, 50.925419>,  <32.783276, 34.043354, 50.840069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164753, 33.958565, 50.925419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287999, -0.439069, 0.851043,
		-0.086716, -0.873089, -0.479788,
		0.953696, -0.211977, 0.213375,
		33.450863, 33.894970, 50.989429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695263, 33.389229, 50.945255>,  <32.783276, 34.043354, 50.840069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695263, 33.389229, 50.945255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030033, 33.511429, 51.126904>,  <33.230896, 33.584747, 51.235893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030033, 33.511429, 51.126904>,  <32.695263, 33.389229, 50.945255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030033, 33.511429, 51.126904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276265, -0.480467, 0.832364,
		0.472478, -0.822084, -0.317715,
		0.836924, 0.305500, 0.454123,
		33.281109, 33.603077, 51.263142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881626, 32.841202, 51.292564>,  <32.695263, 33.389229, 50.945255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881626, 32.841202, 51.292564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101017, 33.118111, 51.480152>,  <33.232651, 33.284256, 51.592705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101017, 33.118111, 51.480152>,  <32.881626, 32.841202, 51.292564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101017, 33.118111, 51.480152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107888, -0.497584, 0.860680,
		0.829174, -0.522662, -0.198228,
		0.548480, 0.692268, 0.468972,
		33.265560, 33.325790, 51.620842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505875, 32.532246, 51.725979>,  <32.881626, 32.841202, 51.292564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505875, 32.532246, 51.725979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441757, 32.891441, 51.889889>,  <33.403286, 33.106960, 51.988235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441757, 32.891441, 51.889889>,  <33.505875, 32.532246, 51.725979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441757, 32.891441, 51.889889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026343, -0.418883, 0.907658,
		0.986717, 0.134701, 0.090802,
		-0.160297, 0.897994, 0.409770,
		33.393669, 33.160839, 52.012821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869549, 32.534031, 52.392654>,  <33.505875, 32.532246, 51.725979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869549, 32.534031, 52.392654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593159, 32.823044, 52.401600>,  <33.427326, 32.996452, 52.406967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593159, 32.823044, 52.401600>,  <33.869549, 32.534031, 52.392654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593159, 32.823044, 52.401600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285246, -0.300953, 0.909979,
		0.664219, 0.622395, 0.414050,
		-0.690976, 0.722532, 0.022363,
		33.385864, 33.039803, 52.408310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090027, 32.761723, 52.951408>,  <33.869549, 32.534031, 52.392654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090027, 32.761723, 52.951408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718800, 32.897907, 52.891045>,  <33.496063, 32.979618, 52.854824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718800, 32.897907, 52.891045>,  <34.090027, 32.761723, 52.951408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718800, 32.897907, 52.891045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296768, -0.431303, 0.852002,
		0.224987, 0.835501, 0.501317,
		-0.928068, 0.340464, -0.150912,
		33.440380, 33.000046, 52.845772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865150, 33.027439, 53.519375>,  <34.090027, 32.761723, 52.951408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865150, 33.027439, 53.519375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513687, 32.946041, 53.346607>,  <33.302811, 32.897202, 53.242947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513687, 32.946041, 53.346607>,  <33.865150, 33.027439, 53.519375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513687, 32.946041, 53.346607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294152, -0.481844, 0.825410,
		-0.376086, 0.852301, 0.363515,
		-0.878655, -0.203496, -0.431921,
		33.250092, 32.884991, 53.217030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334824, 33.093941, 54.084278>,  <33.865150, 33.027439, 53.519375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334824, 33.093941, 54.084278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.165844, 32.868683, 53.800194>,  <33.064457, 32.733528, 53.629742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.165844, 32.868683, 53.800194>,  <33.334824, 33.093941, 54.084278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165844, 32.868683, 53.800194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332348, -0.632745, 0.699413,
		-0.843256, 0.531505, 0.080143,
		-0.422451, -0.563149, -0.710210,
		33.039108, 32.699738, 53.587132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770962, 32.819603, 54.416843>,  <33.334824, 33.093941, 54.084278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770962, 32.819603, 54.416843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758018, 32.583500, 54.094215>,  <32.750252, 32.441837, 53.900639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758018, 32.583500, 54.094215>,  <32.770962, 32.819603, 54.416843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758018, 32.583500, 54.094215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466859, -0.704615, 0.534379,
		-0.883740, 0.393843, -0.252768,
		-0.032358, -0.590259, -0.806565,
		32.748310, 32.406422, 53.852245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094101, 32.486423, 54.422173>,  <32.770962, 32.819603, 54.416843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094101, 32.486423, 54.422173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.338284, 32.254276, 54.206573>,  <32.484795, 32.114990, 54.077213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.338284, 32.254276, 54.206573>,  <32.094101, 32.486423, 54.422173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338284, 32.254276, 54.206573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314431, -0.802164, 0.507609,
		-0.726964, -0.140395, -0.672170,
		0.610456, -0.580364, -0.539000,
		32.521420, 32.080166, 54.044872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680943, 31.960754, 54.185627>,  <32.094101, 32.486423, 54.422173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680943, 31.960754, 54.185627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057343, 31.828836, 54.155289>,  <32.283184, 31.749685, 54.137085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057343, 31.828836, 54.155289>,  <31.680943, 31.960754, 54.185627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057343, 31.828836, 54.155289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261429, -0.850773, 0.455894,
		-0.214879, -0.409168, -0.886797,
		0.941001, -0.329797, -0.075845,
		32.339642, 31.729897, 54.132534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473677, 31.417208, 54.463551>,  <31.680943, 31.960754, 54.185627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473677, 31.417208, 54.463551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287872, 31.067749, 54.405624>,  <31.176390, 30.858074, 54.370869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287872, 31.067749, 54.405624>,  <31.473677, 31.417208, 54.463551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287872, 31.067749, 54.405624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104187, -0.216310, 0.970750,
		-0.879417, 0.435836, 0.191501,
		-0.464511, -0.873646, -0.144818,
		31.148520, 30.805655, 54.362179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806837, 31.327421, 54.864319>,  <31.473677, 31.417208, 54.463551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806837, 31.327421, 54.864319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002066, 30.986078, 54.791035>,  <31.119202, 30.781273, 54.747066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002066, 30.986078, 54.791035>,  <30.806837, 31.327421, 54.864319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002066, 30.986078, 54.791035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173590, -0.110806, 0.978565,
		-0.855368, -0.509411, 0.094054,
		0.488070, -0.853360, -0.183209,
		31.148487, 30.730070, 54.736073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069643, 31.629230, 54.597363>,  <30.806837, 31.327421, 54.864319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069643, 31.629230, 54.597363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.700237, 31.584904, 54.450481>,  <29.478594, 31.558308, 54.362354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.700237, 31.584904, 54.450481>,  <30.069643, 31.629230, 54.597363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700237, 31.584904, 54.450481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373114, -0.037648, -0.927022,
		0.088906, -0.993127, 0.076116,
		-0.923516, -0.110818, -0.367202,
		29.423182, 31.551659, 54.340321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004145, 31.026190, 54.170639>,  <30.069643, 31.629230, 54.597363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004145, 31.026190, 54.170639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735844, 31.291164, 54.037212>,  <29.574863, 31.450150, 53.957157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735844, 31.291164, 54.037212>,  <30.004145, 31.026190, 54.170639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735844, 31.291164, 54.037212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476438, 0.040165, -0.878290,
		-0.568415, -0.748039, -0.342551,
		-0.670754, 0.662438, -0.333564,
		29.534616, 31.489895, 53.937141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728607, 30.714422, 53.632038>,  <30.004145, 31.026190, 54.170639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728607, 30.714422, 53.632038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.668596, 31.106794, 53.582619>,  <29.632589, 31.342218, 53.552967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.668596, 31.106794, 53.582619>,  <29.728607, 30.714422, 53.632038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668596, 31.106794, 53.582619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339133, -0.066320, -0.938398,
		-0.928698, -0.182685, -0.322716,
		-0.150029, 0.980932, -0.123546,
		29.623587, 31.401073, 53.545555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321762, 30.746487, 52.943439>,  <29.728607, 30.714422, 53.632038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321762, 30.746487, 52.943439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.485279, 31.102079, 53.026001>,  <29.583389, 31.315435, 53.075539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.485279, 31.102079, 53.026001>,  <29.321762, 30.746487, 52.943439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485279, 31.102079, 53.026001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421549, 0.016660, -0.906653,
		-0.809434, 0.457643, -0.367938,
		0.408794, 0.888980, 0.206404,
		29.607918, 31.368773, 53.087921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180164, 31.286337, 52.322563>,  <29.321762, 30.746487, 52.943439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180164, 31.286337, 52.322563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.470684, 31.488262, 52.509178>,  <29.644995, 31.609417, 52.621147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.470684, 31.488262, 52.509178>,  <29.180164, 31.286337, 52.322563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470684, 31.488262, 52.509178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230947, 0.460053, -0.857330,
		-0.647422, 0.730422, 0.217550,
		0.726298, 0.504812, 0.466537,
		29.688574, 31.639706, 52.649139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143564, 32.054596, 52.142742>,  <29.180164, 31.286337, 52.322563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143564, 32.054596, 52.142742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524761, 31.993391, 52.247349>,  <29.753479, 31.956669, 52.310112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524761, 31.993391, 52.247349>,  <29.143564, 32.054596, 52.142742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524761, 31.993391, 52.247349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288743, 0.720170, -0.630858,
		-0.091809, 0.676715, 0.730498,
		0.952995, -0.153008, 0.261514,
		29.810659, 31.947489, 52.325802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479931, 32.733574, 52.232452>,  <29.143564, 32.054596, 52.142742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479931, 32.733574, 52.232452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749689, 32.447998, 52.157104>,  <29.911545, 32.276653, 52.111897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749689, 32.447998, 52.157104>,  <29.479931, 32.733574, 52.232452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749689, 32.447998, 52.157104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377786, 0.552835, -0.742732,
		0.634403, 0.429730, 0.642546,
		0.674396, -0.713936, -0.188374,
		29.952007, 32.233818, 52.100594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099882, 33.114605, 52.094315>,  <29.479931, 32.733574, 52.232452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099882, 33.114605, 52.094315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135830, 32.748707, 51.936752>,  <30.157398, 32.529167, 51.842216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135830, 32.748707, 51.936752>,  <30.099882, 33.114605, 52.094315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135830, 32.748707, 51.936752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655327, 0.352140, -0.668239,
		0.749979, -0.198082, 0.631106,
		0.089871, -0.914746, -0.393906,
		30.162790, 32.474281, 51.818581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718399, 33.054798, 52.025909>,  <30.099882, 33.114605, 52.094315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718399, 33.054798, 52.025909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603399, 32.767666, 51.772274>,  <30.534399, 32.595387, 51.620094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603399, 32.767666, 51.772274>,  <30.718399, 33.054798, 52.025909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603399, 32.767666, 51.772274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700750, 0.293659, -0.650164,
		0.652912, -0.631258, 0.418592,
		-0.287498, -0.717828, -0.634088,
		30.517149, 32.552319, 51.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331884, 32.845871, 51.762402>,  <30.718399, 33.054798, 52.025909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331884, 32.845871, 51.762402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055273, 32.703159, 51.511166>,  <30.889307, 32.617531, 51.360424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055273, 32.703159, 51.511166>,  <31.331884, 32.845871, 51.762402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055273, 32.703159, 51.511166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586200, 0.230899, -0.776566,
		0.422091, -0.905203, 0.049473,
		-0.691526, -0.356782, -0.628091,
		30.847815, 32.596127, 51.322739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701977, 32.508598, 51.286674>,  <31.331884, 32.845871, 51.762402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701977, 32.508598, 51.286674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348450, 32.541615, 51.102478>,  <31.136333, 32.561424, 50.991962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348450, 32.541615, 51.102478>,  <31.701977, 32.508598, 51.286674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348450, 32.541615, 51.102478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464811, 0.043348, -0.884348,
		-0.053033, -0.995644, -0.076677,
		-0.883820, 0.082540, -0.460488,
		31.083303, 32.566376, 50.964333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820383, 32.140923, 50.731670>,  <31.701977, 32.508598, 51.286674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820383, 32.140923, 50.731670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.526405, 32.396576, 50.641014>,  <31.350019, 32.549969, 50.586620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.526405, 32.396576, 50.641014>,  <31.820383, 32.140923, 50.731670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526405, 32.396576, 50.641014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406521, 0.147747, -0.901616,
		-0.542769, -0.754770, -0.368407,
		-0.734944, 0.639135, -0.226637,
		31.305922, 32.588318, 50.573025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865234, 32.166306, 50.015484>,  <31.820383, 32.140923, 50.731670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865234, 32.166306, 50.015484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.635443, 32.486671, 50.083015>,  <31.497568, 32.678890, 50.123535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.635443, 32.486671, 50.083015>,  <31.865234, 32.166306, 50.015484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635443, 32.486671, 50.083015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373944, 0.440288, -0.816280,
		-0.728107, -0.405803, -0.552435,
		-0.574479, 0.800919, 0.168829,
		31.463099, 32.726948, 50.133663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346430, 32.323112, 49.477905>,  <31.865234, 32.166306, 50.015484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346430, 32.323112, 49.477905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414906, 32.676754, 49.651825>,  <31.455992, 32.888939, 49.756176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414906, 32.676754, 49.651825>,  <31.346430, 32.323112, 49.477905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414906, 32.676754, 49.651825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161836, 0.410090, -0.897572,
		-0.971855, 0.224023, -0.072876,
		0.171192, 0.884104, 0.434803,
		31.466263, 32.941986, 49.782265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094549, 32.772343, 49.026203>,  <31.346430, 32.323112, 49.477905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094549, 32.772343, 49.026203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.319033, 33.015465, 49.250923>,  <31.453724, 33.161339, 49.385754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.319033, 33.015465, 49.250923>,  <31.094549, 32.772343, 49.026203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319033, 33.015465, 49.250923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186782, 0.568253, -0.801374,
		-0.806322, 0.554673, 0.205382,
		0.561210, 0.607804, 0.561798,
		31.487396, 33.197807, 49.419464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101900, 33.381668, 48.691036>,  <31.094549, 32.772343, 49.026203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101900, 33.381668, 48.691036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.415787, 33.459301, 48.926510>,  <31.604118, 33.505882, 49.067795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.415787, 33.459301, 48.926510>,  <31.101900, 33.381668, 48.691036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415787, 33.459301, 48.926510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370740, 0.614159, -0.696678,
		-0.496759, 0.764945, 0.409987,
		0.784718, 0.194082, 0.588685,
		31.651201, 33.517525, 49.103115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141878, 34.050758, 48.834435>,  <31.101900, 33.381668, 48.691036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141878, 34.050758, 48.834435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.515562, 33.920067, 48.891708>,  <31.739773, 33.841652, 48.926071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.515562, 33.920067, 48.891708>,  <31.141878, 34.050758, 48.834435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515562, 33.920067, 48.891708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337228, 0.677982, -0.653159,
		0.116333, 0.658472, 0.743560,
		0.934207, -0.326733, 0.143183,
		31.795824, 33.822048, 48.934662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562756, 34.616524, 49.141300>,  <31.141878, 34.050758, 48.834435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562756, 34.616524, 49.141300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810549, 34.360893, 48.958946>,  <31.959225, 34.207516, 48.849533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810549, 34.360893, 48.958946>,  <31.562756, 34.616524, 49.141300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810549, 34.360893, 48.958946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354115, 0.745786, -0.564274,
		0.700604, 0.188122, 0.688305,
		0.619481, -0.639072, -0.455884,
		31.996393, 34.169170, 48.822182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973497, 35.052689, 48.978168>,  <31.562756, 34.616524, 49.141300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973497, 35.052689, 48.978168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110275, 34.733345, 48.779900>,  <32.192341, 34.541737, 48.660938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110275, 34.733345, 48.779900>,  <31.973497, 35.052689, 48.978168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110275, 34.733345, 48.779900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399545, 0.600936, -0.692272,
		0.850552, 0.038672, 0.524467,
		0.341942, -0.798361, -0.495676,
		32.212856, 34.493835, 48.631195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633682, 35.169586, 48.926479>,  <31.973497, 35.052689, 48.978168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633682, 35.169586, 48.926479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556137, 34.921757, 48.622231>,  <32.509609, 34.773060, 48.439682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556137, 34.921757, 48.622231>,  <32.633682, 35.169586, 48.926479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556137, 34.921757, 48.622231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434237, 0.641044, -0.632852,
		0.879690, -0.452976, 0.144768,
		-0.193864, -0.619577, -0.760619,
		32.497978, 34.735882, 48.394047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.228428, 38.318844, 31.174303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224266, 38.658737, 31.385147>,  <39.221771, 38.862675, 31.511654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224266, 38.658737, 31.385147>,  <39.228428, 38.318844, 31.174303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224266, 38.658737, 31.385147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648655, -0.395447, 0.650283,
		0.761011, 0.348678, -0.547070,
		-0.010402, 0.849733, 0.527111,
		39.221146, 38.913658, 31.543280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866123, 38.682869, 31.406719>,  <39.228428, 38.318844, 31.174303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866123, 38.682869, 31.406719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585716, 38.768993, 31.678667>,  <39.417473, 38.820667, 31.841835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585716, 38.768993, 31.678667>,  <39.866123, 38.682869, 31.406719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585716, 38.768993, 31.678667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547136, -0.449085, 0.706375,
		0.457407, 0.867159, 0.197012,
		-0.701014, 0.215308, 0.679868,
		39.375412, 38.833588, 31.882627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131111, 39.147388, 31.913149>,  <39.866123, 38.682869, 31.406719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131111, 39.147388, 31.913149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832233, 38.959549, 32.101265>,  <39.652905, 38.846844, 32.214134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832233, 38.959549, 32.101265>,  <40.131111, 39.147388, 31.913149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832233, 38.959549, 32.101265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620277, -0.238650, 0.747196,
		-0.238650, 0.850012, 0.469601,
		-0.747196, -0.469601, 0.470289,
		39.608074, 38.818668, 32.242352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078156, 39.443634, 32.571873>,  <40.131111, 39.147388, 31.913149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078156, 39.443634, 32.571873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918564, 39.078201, 32.603325>,  <39.822807, 38.858940, 32.622196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918564, 39.078201, 32.603325>,  <40.078156, 39.443634, 32.571873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918564, 39.078201, 32.603325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678610, -0.236512, 0.695378,
		-0.616686, 0.330805, 0.714329,
		-0.398981, -0.913581, 0.078634,
		39.798870, 38.804127, 32.626915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972889, 39.349468, 33.331051>,  <40.078156, 39.443634, 32.571873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972889, 39.349468, 33.331051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941940, 38.977291, 33.187778>,  <39.923370, 38.753986, 33.101814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941940, 38.977291, 33.187778>,  <39.972889, 39.349468, 33.331051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941940, 38.977291, 33.187778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382359, -0.359475, 0.851222,
		-0.920769, -0.071093, 0.383576,
		-0.077369, -0.930443, -0.358176,
		39.918728, 38.698158, 33.080326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694939, 38.938595, 33.835060>,  <39.972889, 39.349468, 33.331051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694939, 38.938595, 33.835060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896080, 38.671154, 33.615932>,  <40.016766, 38.510689, 33.484455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896080, 38.671154, 33.615932>,  <39.694939, 38.938595, 33.835060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896080, 38.671154, 33.615932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318732, -0.445687, 0.836525,
		-0.803461, -0.595256, -0.011009,
		0.502853, -0.668606, -0.547819,
		40.046936, 38.470573, 33.451588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725410, 38.422527, 34.193138>,  <39.694939, 38.938595, 33.835060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725410, 38.422527, 34.193138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987167, 38.286770, 33.922855>,  <40.144222, 38.205315, 33.760685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987167, 38.286770, 33.922855>,  <39.725410, 38.422527, 34.193138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987167, 38.286770, 33.922855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498968, -0.477621, 0.723124,
		-0.568161, -0.810362, -0.143200,
		0.654388, -0.339399, -0.675710,
		40.183483, 38.184952, 33.720142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657372, 37.654324, 34.276829>,  <39.725410, 38.422527, 34.193138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657372, 37.654324, 34.276829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011662, 37.769787, 34.131405>,  <40.224236, 37.839066, 34.044151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.011662, 37.769787, 34.131405>,  <39.657372, 37.654324, 34.276829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011662, 37.769787, 34.131405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463294, -0.500239, 0.731519,
		0.029294, -0.816355, -0.576806,
		0.885720, 0.288660, -0.363558,
		40.277378, 37.856384, 34.022339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033142, 37.061123, 34.087971>,  <39.657372, 37.654324, 34.276829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033142, 37.061123, 34.087971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.297062, 37.352993, 34.159782>,  <40.455414, 37.528114, 34.202869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.297062, 37.352993, 34.159782>,  <40.033142, 37.061123, 34.087971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297062, 37.352993, 34.159782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428800, -0.561807, 0.707463,
		0.617082, -0.389802, -0.683568,
		0.659803, 0.729676, 0.179534,
		40.495003, 37.571896, 34.213642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607845, 36.721920, 34.261909>,  <40.033142, 37.061123, 34.087971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607845, 36.721920, 34.261909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676937, 37.093510, 34.392857>,  <40.718391, 37.316463, 34.471424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676937, 37.093510, 34.392857>,  <40.607845, 36.721920, 34.261909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676937, 37.093510, 34.392857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385814, -0.369620, 0.845298,
		0.906262, -0.019706, -0.422257,
		0.172732, 0.928974, 0.327370,
		40.728756, 37.372200, 34.491066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288078, 36.663391, 34.476765>,  <40.607845, 36.721920, 34.261909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288078, 36.663391, 34.476765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124279, 36.980751, 34.656910>,  <41.026001, 37.171165, 34.764999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124279, 36.980751, 34.656910>,  <41.288078, 36.663391, 34.476765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124279, 36.980751, 34.656910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223740, -0.391241, 0.892676,
		0.884449, 0.466316, -0.017302,
		-0.409499, 0.793398, 0.450366,
		41.001431, 37.218769, 34.792019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859871, 37.012524, 34.865028>,  <41.288078, 36.663391, 34.476765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859871, 37.012524, 34.865028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527100, 37.127834, 35.054676>,  <41.327438, 37.197021, 35.168465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527100, 37.127834, 35.054676>,  <41.859871, 37.012524, 34.865028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527100, 37.127834, 35.054676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377886, -0.331338, 0.864533,
		0.406320, 0.898393, 0.166713,
		-0.831929, 0.288279, 0.474120,
		41.277519, 37.214317, 35.196911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031715, 37.478138, 35.356148>,  <41.859871, 37.012524, 34.865028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031715, 37.478138, 35.356148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.669281, 37.384689, 35.497250>,  <41.451820, 37.328621, 35.581909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.669281, 37.384689, 35.497250>,  <42.031715, 37.478138, 35.356148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669281, 37.384689, 35.497250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417190, -0.354499, 0.836829,
		-0.070448, 0.905402, 0.418669,
		-0.906085, -0.233617, 0.352751,
		41.397457, 37.314606, 35.603073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961063, 37.751057, 36.054409>,  <42.031715, 37.478138, 35.356148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961063, 37.751057, 36.054409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.680557, 37.466938, 36.030079>,  <41.512253, 37.296467, 36.015480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.680557, 37.466938, 36.030079>,  <41.961063, 37.751057, 36.054409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680557, 37.466938, 36.030079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452006, -0.508986, 0.732546,
		-0.551286, 0.486217, 0.677995,
		-0.701266, -0.710301, -0.060824,
		41.470177, 37.253849, 36.011833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598083, 37.692944, 36.745266>,  <41.961063, 37.751057, 36.054409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598083, 37.692944, 36.745266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527222, 37.333599, 36.584488>,  <41.484707, 37.117992, 36.488022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527222, 37.333599, 36.584488>,  <41.598083, 37.692944, 36.745266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527222, 37.333599, 36.584488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326164, -0.438914, 0.837240,
		-0.928566, 0.017218, 0.370768,
		-0.177151, -0.898364, -0.401945,
		41.474075, 37.064091, 36.463905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250233, 37.268692, 37.316196>,  <41.598083, 37.692944, 36.745266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250233, 37.268692, 37.316196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388435, 37.027016, 37.028980>,  <41.471355, 36.882011, 36.856651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388435, 37.027016, 37.028980>,  <41.250233, 37.268692, 37.316196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388435, 37.027016, 37.028980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325974, -0.640240, 0.695582,
		-0.879981, -0.474389, -0.024257,
		0.345507, -0.604192, -0.718037,
		41.492088, 36.845757, 36.813568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039352, 36.686047, 37.513252>,  <41.250233, 37.268692, 37.316196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039352, 36.686047, 37.513252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320210, 36.567673, 37.254200>,  <41.488724, 36.496647, 37.098770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320210, 36.567673, 37.254200>,  <41.039352, 36.686047, 37.513252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320210, 36.567673, 37.254200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327758, -0.673124, 0.662933,
		-0.632116, -0.677738, -0.375634,
		0.702143, -0.295933, -0.647626,
		41.530853, 36.478893, 37.059914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181683, 36.041775, 37.694855>,  <41.039352, 36.686047, 37.513252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181683, 36.041775, 37.694855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494148, 36.149445, 37.469524>,  <41.681625, 36.214046, 37.334328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494148, 36.149445, 37.469524>,  <41.181683, 36.041775, 37.694855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494148, 36.149445, 37.469524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608451, -0.530435, 0.590277,
		-0.139915, -0.803855, -0.578136,
		0.781160, 0.269179, -0.563322,
		41.728497, 36.230198, 37.300529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484341, 35.462524, 37.490551>,  <41.181683, 36.041775, 37.694855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484341, 35.462524, 37.490551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.762413, 35.748810, 37.463772>,  <41.929256, 35.920582, 37.447704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.762413, 35.748810, 37.463772>,  <41.484341, 35.462524, 37.490551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762413, 35.748810, 37.463772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582384, -0.506173, 0.636096,
		0.421371, -0.481193, -0.768700,
		0.695180, 0.715711, -0.066952,
		41.970966, 35.963524, 37.443687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083538, 35.121853, 37.568417>,  <41.484341, 35.462524, 37.490551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083538, 35.121853, 37.568417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207169, 35.494213, 37.646286>,  <42.281345, 35.717628, 37.693008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207169, 35.494213, 37.646286>,  <42.083538, 35.121853, 37.568417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207169, 35.494213, 37.646286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701668, -0.361375, 0.614060,
		0.641978, -0.053195, -0.764875,
		0.309072, 0.930902, 0.194670,
		42.299889, 35.773483, 37.704685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747726, 35.116642, 37.553436>,  <42.083538, 35.121853, 37.568417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747726, 35.116642, 37.553436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659424, 35.434593, 37.779510>,  <42.606441, 35.625362, 37.915154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659424, 35.434593, 37.779510>,  <42.747726, 35.116642, 37.553436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659424, 35.434593, 37.779510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691183, -0.281352, 0.665663,
		0.688137, 0.537597, -0.487296,
		-0.220757, 0.794878, 0.565186,
		42.593197, 35.673058, 37.949066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090992, 34.963501, 36.844814>,  <42.747726, 35.116642, 37.553436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090992, 34.963501, 36.844814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479713, 35.042137, 36.792744>,  <43.712948, 35.089317, 36.761501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479713, 35.042137, 36.792744>,  <43.090992, 34.963501, 36.844814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479713, 35.042137, 36.792744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235199, 0.769534, -0.593716,
		-0.016541, 0.607595, 0.794075,
		0.971807, 0.196586, -0.130176,
		43.771255, 35.101112, 36.753693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375885, 35.658916, 37.027786>,  <43.090992, 34.963501, 36.844814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375885, 35.658916, 37.027786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587204, 35.494965, 36.730354>,  <43.713993, 35.396595, 36.551895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587204, 35.494965, 36.730354>,  <43.375885, 35.658916, 37.027786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587204, 35.494965, 36.730354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177610, 0.803040, -0.568842,
		0.830277, 0.432583, 0.351443,
		0.528294, -0.409877, -0.743577,
		43.745693, 35.372002, 36.507282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625687, 36.223785, 36.704464>,  <43.375885, 35.658916, 37.027786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625687, 36.223785, 36.704464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675209, 35.948040, 36.418961>,  <43.704922, 35.782593, 36.247658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675209, 35.948040, 36.418961>,  <43.625687, 36.223785, 36.704464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675209, 35.948040, 36.418961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076931, 0.710461, -0.699519,
		0.989320, 0.141514, 0.034926,
		0.123805, -0.689361, -0.713760,
		43.712349, 35.741230, 36.204834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252563, 36.381405, 36.400555>,  <43.625687, 36.223785, 36.704464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252563, 36.381405, 36.400555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087177, 36.147617, 36.121284>,  <43.987946, 36.007343, 35.953724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087177, 36.147617, 36.121284>,  <44.252563, 36.381405, 36.400555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087177, 36.147617, 36.121284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005894, 0.765050, -0.643943,
		0.910502, -0.270361, -0.312875,
		-0.413462, -0.584468, -0.698173,
		43.963139, 35.972279, 35.911831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705120, 36.432407, 35.786583>,  <44.252563, 36.381405, 36.400555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705120, 36.432407, 35.786583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336628, 36.324715, 35.674267>,  <44.115532, 36.260098, 35.606876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336628, 36.324715, 35.674267>,  <44.705120, 36.432407, 35.786583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336628, 36.324715, 35.674267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068087, 0.822256, -0.565030,
		0.383002, -0.501407, -0.775822,
		-0.921235, -0.269231, -0.280786,
		44.060257, 36.243946, 35.590031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668827, 36.359180, 35.016136>,  <44.705120, 36.432407, 35.786583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668827, 36.359180, 35.016136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294579, 36.408978, 35.148270>,  <44.070030, 36.438854, 35.227551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294579, 36.408978, 35.148270>,  <44.668827, 36.359180, 35.016136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294579, 36.408978, 35.148270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093725, 0.814567, -0.572448,
		-0.340343, -0.566553, -0.750456,
		-0.935619, 0.124492, 0.330332,
		44.013893, 36.446323, 35.247368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278095, 36.453045, 34.414070>,  <44.668827, 36.359180, 35.016136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278095, 36.453045, 34.414070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032162, 36.602428, 34.691921>,  <43.884602, 36.692059, 34.858631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032162, 36.602428, 34.691921>,  <44.278095, 36.453045, 34.414070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032162, 36.602428, 34.691921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146294, 0.811479, -0.565773,
		-0.774967, -0.449477, -0.444293,
		-0.614837, 0.373458, 0.694626,
		43.847710, 36.714466, 34.900311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730576, 36.608124, 34.004433>,  <44.278095, 36.453045, 34.414070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730576, 36.608124, 34.004433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698975, 36.832027, 34.334385>,  <43.680016, 36.966370, 34.532356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698975, 36.832027, 34.334385>,  <43.730576, 36.608124, 34.004433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698975, 36.832027, 34.334385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247145, 0.790634, -0.560194,
		-0.965753, -0.248119, 0.075883,
		-0.078999, 0.559763, 0.824879,
		43.675274, 36.999958, 34.581848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120743, 36.936852, 33.982891>,  <43.730576, 36.608124, 34.004433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120743, 36.936852, 33.982891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282455, 37.173248, 34.262115>,  <43.379482, 37.315086, 34.429649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282455, 37.173248, 34.262115>,  <43.120743, 36.936852, 33.982891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282455, 37.173248, 34.262115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364168, 0.804116, -0.469871,
		-0.839008, -0.064247, 0.540313,
		0.404286, 0.590990, 0.698057,
		43.403740, 37.350544, 34.471531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542076, 37.452335, 34.173012>,  <43.120743, 36.936852, 33.982891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542076, 37.452335, 34.173012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890484, 37.610645, 34.289417>,  <43.099529, 37.705631, 34.359261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890484, 37.610645, 34.289417>,  <42.542076, 37.452335, 34.173012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890484, 37.610645, 34.289417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209361, 0.834965, -0.508921,
		-0.444403, 0.382354, 0.810130,
		0.871019, 0.395775, 0.291011,
		43.151791, 37.729378, 34.376720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432251, 38.125561, 34.540627>,  <42.542076, 37.452335, 34.173012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432251, 38.125561, 34.540627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.806988, 38.155956, 34.404068>,  <43.031830, 38.174194, 34.322132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.806988, 38.155956, 34.404068>,  <42.432251, 38.125561, 34.540627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806988, 38.155956, 34.404068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226709, 0.875219, -0.427311,
		0.266326, 0.477721, 0.837170,
		0.936842, 0.075990, -0.341397,
		43.088039, 38.178753, 34.301647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533127, 38.759956, 34.467785>,  <42.432251, 38.125561, 34.540627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533127, 38.759956, 34.467785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872234, 38.657364, 34.282093>,  <43.075699, 38.595810, 34.170677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872234, 38.657364, 34.282093>,  <42.533127, 38.759956, 34.467785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872234, 38.657364, 34.282093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123714, 0.755521, -0.643337,
		0.515736, 0.602832, 0.608777,
		0.847768, -0.256478, -0.464229,
		43.126564, 38.580421, 34.142826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821533, 39.367123, 34.282475>,  <42.533127, 38.759956, 34.467785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821533, 39.367123, 34.282475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980335, 39.105053, 34.025372>,  <43.075615, 38.947811, 33.871109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980335, 39.105053, 34.025372>,  <42.821533, 39.367123, 34.282475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980335, 39.105053, 34.025372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049504, 0.684009, -0.727793,
		0.916480, 0.320757, 0.239122,
		0.397006, -0.655170, -0.642759,
		43.099438, 38.908501, 33.832542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285908, 39.738579, 33.963299>,  <42.821533, 39.367123, 34.282475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285908, 39.738579, 33.963299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175179, 39.420078, 33.748135>,  <43.108742, 39.228977, 33.619034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175179, 39.420078, 33.748135>,  <43.285908, 39.738579, 33.963299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175179, 39.420078, 33.748135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241427, 0.599464, -0.763122,
		0.930099, -0.081380, -0.358181,
		-0.276819, -0.796254, -0.537914,
		43.092133, 39.181202, 33.586761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495407, 39.897640, 33.239700>,  <43.285908, 39.738579, 33.963299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495407, 39.897640, 33.239700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230984, 39.601433, 33.191303>,  <43.072330, 39.423710, 33.162266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230984, 39.601433, 33.191303>,  <43.495407, 39.897640, 33.239700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230984, 39.601433, 33.191303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327236, 0.429630, -0.841626,
		0.675219, -0.516771, -0.526334,
		-0.661057, -0.740517, -0.120988,
		43.032665, 39.379276, 33.155006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416176, 39.864227, 32.443008>,  <43.495407, 39.897640, 33.239700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416176, 39.864227, 32.443008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.107544, 39.642273, 32.567432>,  <42.922363, 39.509098, 32.642086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.107544, 39.642273, 32.567432>,  <43.416176, 39.864227, 32.443008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107544, 39.642273, 32.567432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565501, 0.374371, -0.734885,
		0.291325, -0.742931, -0.602647,
		-0.771582, -0.554888, 0.311064,
		42.876068, 39.475807, 32.660751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120403, 39.525291, 31.823851>,  <43.416176, 39.864227, 32.443008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120403, 39.525291, 31.823851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850971, 39.557777, 32.117706>,  <42.689312, 39.577267, 32.294018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850971, 39.557777, 32.117706>,  <43.120403, 39.525291, 31.823851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850971, 39.557777, 32.117706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622415, 0.473715, -0.623052,
		-0.398610, -0.876925, -0.268537,
		-0.673580, 0.081213, 0.734639,
		42.648895, 39.582142, 32.338097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439598, 39.246494, 31.579681>,  <43.120403, 39.525291, 31.823851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439598, 39.246494, 31.579681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363636, 39.496777, 31.882317>,  <42.318058, 39.646946, 32.063896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363636, 39.496777, 31.882317>,  <42.439598, 39.246494, 31.579681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363636, 39.496777, 31.882317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645413, 0.501144, -0.576451,
		-0.739850, -0.597783, 0.308671,
		-0.189904, 0.625708, 0.756589,
		42.306664, 39.684490, 32.109295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721394, 39.289036, 31.522032>,  <42.439598, 39.246494, 31.579681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721394, 39.289036, 31.522032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.836163, 39.599648, 31.746414>,  <41.905025, 39.786015, 31.881044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.836163, 39.599648, 31.746414>,  <41.721394, 39.289036, 31.522032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836163, 39.599648, 31.746414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607652, 0.600224, -0.520087,
		-0.740564, -0.191642, 0.644079,
		0.286921, 0.776533, 0.560956,
		41.922237, 39.832607, 31.914701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108891, 39.774517, 31.704653>,  <41.721394, 39.289036, 31.522032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108891, 39.774517, 31.704653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433708, 40.005459, 31.738708>,  <41.628597, 40.144024, 31.759142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433708, 40.005459, 31.738708>,  <41.108891, 39.774517, 31.704653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433708, 40.005459, 31.738708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446783, 0.708879, -0.545779,
		-0.375461, 0.405158, 0.833592,
		0.812043, 0.577354, 0.085138,
		41.677322, 40.178665, 31.764250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851372, 40.428734, 31.907608>,  <41.108891, 39.774517, 31.704653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851372, 40.428734, 31.907608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208405, 40.503822, 31.743626>,  <41.422623, 40.548874, 31.645237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208405, 40.503822, 31.743626>,  <40.851372, 40.428734, 31.907608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208405, 40.503822, 31.743626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412220, 0.708134, -0.573255,
		0.182693, 0.680668, 0.709447,
		0.892580, 0.187718, -0.409956,
		41.476177, 40.560139, 31.620640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.633263, 36.094322, 45.665775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584618, 35.799232, 45.400150>,  <37.555431, 35.622181, 45.240776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584618, 35.799232, 45.400150>,  <37.633263, 36.094322, 45.665775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584618, 35.799232, 45.400150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822475, 0.299624, -0.483487,
		0.555647, -0.604974, 0.570318,
		-0.121616, -0.737721, -0.664061,
		37.548134, 35.577915, 45.200932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213398, 36.092983, 45.395817>,  <37.633263, 36.094322, 45.665775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213398, 36.092983, 45.395817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040600, 35.863987, 45.117065>,  <37.936920, 35.726589, 44.949814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040600, 35.863987, 45.117065>,  <38.213398, 36.092983, 45.395817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040600, 35.863987, 45.117065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699949, 0.274444, -0.659357,
		0.568731, -0.772613, 0.282159,
		-0.431991, -0.572494, -0.696875,
		37.911003, 35.692238, 44.908005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843136, 35.752026, 44.967598>,  <38.213398, 36.092983, 45.395817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843136, 35.752026, 44.967598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501297, 35.750641, 44.759888>,  <38.296192, 35.749809, 44.635262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501297, 35.750641, 44.759888>,  <38.843136, 35.752026, 44.967598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501297, 35.750641, 44.759888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502074, 0.249824, -0.827955,
		0.132592, -0.968285, -0.211762,
		-0.854600, -0.003460, -0.519276,
		38.244919, 35.749603, 44.604103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960171, 35.319481, 44.352798>,  <38.843136, 35.752026, 44.967598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960171, 35.319481, 44.352798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641922, 35.542068, 44.257030>,  <38.450974, 35.675621, 44.199570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641922, 35.542068, 44.257030>,  <38.960171, 35.319481, 44.352798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641922, 35.542068, 44.257030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387424, 0.163582, -0.907273,
		-0.465708, -0.814604, -0.345740,
		-0.795625, 0.556473, -0.239416,
		38.403236, 35.709011, 44.185207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801113, 35.090363, 43.625092>,  <38.960171, 35.319481, 44.352798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801113, 35.090363, 43.625092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626366, 35.447220, 43.671078>,  <38.521515, 35.661335, 43.698669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626366, 35.447220, 43.671078>,  <38.801113, 35.090363, 43.625092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626366, 35.447220, 43.671078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270390, 0.252137, -0.929148,
		-0.857924, -0.374832, -0.351379,
		-0.436870, 0.892148, 0.114963,
		38.495304, 35.714863, 43.705566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257236, 35.118649, 43.093414>,  <38.801113, 35.090363, 43.625092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257236, 35.118649, 43.093414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318745, 35.502926, 43.185875>,  <38.355648, 35.733490, 43.241352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318745, 35.502926, 43.185875>,  <38.257236, 35.118649, 43.093414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318745, 35.502926, 43.185875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033281, 0.238834, -0.970490,
		-0.987547, 0.141536, 0.068697,
		0.153766, 0.960690, 0.231149,
		38.364876, 35.791134, 43.255219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783768, 35.434975, 42.679192>,  <38.257236, 35.118649, 43.093414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783768, 35.434975, 42.679192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060555, 35.704372, 42.783184>,  <38.226627, 35.866009, 42.845581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060555, 35.704372, 42.783184>,  <37.783768, 35.434975, 42.679192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060555, 35.704372, 42.783184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066393, 0.299224, -0.951870,
		-0.718870, 0.675923, 0.162338,
		0.691967, 0.673493, 0.259980,
		38.268143, 35.906422, 42.861179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424297, 36.106743, 42.498199>,  <37.783768, 35.434975, 42.679192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424297, 36.106743, 42.498199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824177, 36.111034, 42.507050>,  <38.064106, 36.113609, 42.512360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824177, 36.111034, 42.507050>,  <37.424297, 36.106743, 42.498199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824177, 36.111034, 42.507050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013146, 0.527161, -0.849664,
		-0.020776, 0.849698, 0.526860,
		0.999698, 0.010726, 0.022123,
		38.124084, 36.114254, 42.513687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633221, 36.706264, 42.135620>,  <37.424297, 36.106743, 42.498199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633221, 36.706264, 42.135620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974289, 36.497292, 42.137413>,  <38.178928, 36.371906, 42.138489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974289, 36.497292, 42.137413>,  <37.633221, 36.706264, 42.135620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974289, 36.497292, 42.137413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208662, 0.332674, -0.919668,
		0.478977, 0.785105, 0.392672,
		0.852667, -0.522435, 0.004478,
		38.230087, 36.340561, 42.138756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980705, 37.109764, 41.790203>,  <37.633221, 36.706264, 42.135620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980705, 37.109764, 41.790203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210163, 36.782436, 41.775845>,  <38.347836, 36.586040, 41.767231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210163, 36.782436, 41.775845>,  <37.980705, 37.109764, 41.790203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210163, 36.782436, 41.775845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318825, 0.263432, -0.910469,
		0.754510, 0.510840, 0.412016,
		0.573642, -0.818319, -0.035894,
		38.382256, 36.536942, 41.765076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697651, 37.302864, 41.593273>,  <37.980705, 37.109764, 41.790203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697651, 37.302864, 41.593273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633633, 36.920338, 41.495415>,  <38.595222, 36.690823, 41.436699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633633, 36.920338, 41.495415>,  <38.697651, 37.302864, 41.593273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633633, 36.920338, 41.495415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312095, 0.186104, -0.931645,
		0.936473, -0.225462, 0.268675,
		-0.160049, -0.956312, -0.244647,
		38.585617, 36.633446, 41.422020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215786, 37.164703, 41.114418>,  <38.697651, 37.302864, 41.593273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215786, 37.164703, 41.114418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944778, 36.875736, 41.059162>,  <38.782173, 36.702358, 41.026009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944778, 36.875736, 41.059162>,  <39.215786, 37.164703, 41.114418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944778, 36.875736, 41.059162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172145, 0.026846, -0.984706,
		0.715076, -0.690937, 0.106171,
		-0.677520, -0.722416, -0.138138,
		38.741524, 36.659012, 41.017719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444153, 36.438896, 40.830593>,  <39.215786, 37.164703, 41.114418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444153, 36.438896, 40.830593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085323, 36.541031, 40.686337>,  <38.870026, 36.602314, 40.599781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085323, 36.541031, 40.686337>,  <39.444153, 36.438896, 40.830593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085323, 36.541031, 40.686337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406112, 0.154701, -0.900634,
		-0.174174, -0.954395, -0.242473,
		-0.897071, 0.255339, -0.360646,
		38.816200, 36.617634, 40.578144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696278, 35.750500, 40.816662>,  <39.444153, 36.438896, 40.830593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696278, 35.750500, 40.816662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818993, 35.639122, 40.452606>,  <39.892620, 35.572296, 40.234173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818993, 35.639122, 40.452606>,  <39.696278, 35.750500, 40.816662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818993, 35.639122, 40.452606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618476, -0.785162, 0.031735,
		-0.723444, 0.553164, -0.413085,
		0.306784, -0.278442, -0.910140,
		39.911026, 35.555588, 40.179565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228485, 35.755577, 40.281208>,  <39.696278, 35.750500, 40.816662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228485, 35.755577, 40.281208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499115, 35.466850, 40.222919>,  <39.661491, 35.293613, 40.187946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499115, 35.466850, 40.222919>,  <39.228485, 35.755577, 40.281208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499115, 35.466850, 40.222919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731051, -0.682153, -0.015232,
		-0.088407, 0.116832, -0.989209,
		0.676571, -0.721815, -0.145718,
		39.702087, 35.250305, 40.179203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962631, 35.287842, 39.861416>,  <39.228485, 35.755577, 40.281208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962631, 35.287842, 39.861416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228020, 35.041054, 40.030720>,  <39.387253, 34.892982, 40.132301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228020, 35.041054, 40.030720>,  <38.962631, 35.287842, 39.861416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228020, 35.041054, 40.030720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730416, -0.656706, 0.187693,
		0.162157, -0.433686, -0.886353,
		0.663473, -0.616971, 0.423261,
		39.427063, 34.855961, 40.157700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546932, 34.693005, 39.734325>,  <38.962631, 35.287842, 39.861416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546932, 34.693005, 39.734325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838558, 34.599754, 39.991734>,  <39.013535, 34.543804, 40.146179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838558, 34.599754, 39.991734>,  <38.546932, 34.693005, 39.734325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838558, 34.599754, 39.991734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641934, -0.559093, 0.524725,
		0.237457, -0.795654, -0.557269,
		0.729065, -0.233130, 0.643518,
		39.057278, 34.529816, 40.184788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480160, 34.014534, 39.777077>,  <38.546932, 34.693005, 39.734325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480160, 34.014534, 39.777077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703075, 34.114647, 40.093758>,  <38.836826, 34.174713, 40.283764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703075, 34.114647, 40.093758>,  <38.480160, 34.014534, 39.777077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703075, 34.114647, 40.093758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521346, -0.636631, 0.568242,
		0.646241, -0.729424, -0.224305,
		0.557289, 0.250281, 0.791700,
		38.870262, 34.189732, 40.331268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885063, 33.361805, 40.027534>,  <38.480160, 34.014534, 39.777077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885063, 33.361805, 40.027534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864048, 33.619720, 40.332558>,  <38.851437, 33.774471, 40.515572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864048, 33.619720, 40.332558>,  <38.885063, 33.361805, 40.027534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864048, 33.619720, 40.332558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442053, -0.699735, 0.561213,
		0.895449, -0.307602, 0.321796,
		-0.052541, 0.644788, 0.762553,
		38.848286, 33.813156, 40.561325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948269, 32.948311, 40.680004>,  <38.885063, 33.361805, 40.027534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948269, 32.948311, 40.680004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782558, 33.280510, 40.828945>,  <38.683132, 33.479828, 40.918312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782558, 33.280510, 40.828945>,  <38.948269, 32.948311, 40.680004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782558, 33.280510, 40.828945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513141, -0.551023, 0.658073,
		0.751704, 0.081556, 0.654439,
		-0.414281, 0.830496, 0.372356,
		38.658276, 33.529659, 40.940651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010445, 32.947720, 41.519424>,  <38.948269, 32.948311, 40.680004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010445, 32.947720, 41.519424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710075, 33.170296, 41.377159>,  <38.529854, 33.303841, 41.291801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710075, 33.170296, 41.377159>,  <39.010445, 32.947720, 41.519424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710075, 33.170296, 41.377159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612479, -0.385411, 0.690165,
		0.246960, 0.736093, 0.630221,
		-0.750920, 0.556440, -0.355660,
		38.484798, 33.337227, 41.270462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890533, 33.442646, 42.086643>,  <39.010445, 32.947720, 41.519424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890533, 33.442646, 42.086643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563652, 33.379078, 41.865044>,  <38.367523, 33.340939, 41.732082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563652, 33.379078, 41.865044>,  <38.890533, 33.442646, 42.086643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563652, 33.379078, 41.865044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500470, -0.281049, 0.818866,
		-0.285835, 0.946444, 0.150141,
		-0.817208, -0.158920, -0.554000,
		38.318489, 33.331402, 41.698845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425350, 33.786545, 42.438988>,  <38.890533, 33.442646, 42.086643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425350, 33.786545, 42.438988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195370, 33.544853, 42.218319>,  <38.057381, 33.399837, 42.085918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195370, 33.544853, 42.218319>,  <38.425350, 33.786545, 42.438988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195370, 33.544853, 42.218319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537071, -0.229948, 0.811590,
		-0.617243, 0.762908, -0.192308,
		-0.574948, -0.604232, -0.551670,
		38.022884, 33.363583, 42.052818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868660, 33.654404, 42.860023>,  <38.425350, 33.786545, 42.438988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868660, 33.654404, 42.860023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772270, 33.385036, 42.580471>,  <37.714436, 33.223415, 42.412739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772270, 33.385036, 42.580471>,  <37.868660, 33.654404, 42.860023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772270, 33.385036, 42.580471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677777, -0.398645, 0.617819,
		-0.694658, 0.622565, -0.360365,
		-0.240974, -0.673420, -0.698882,
		37.699978, 33.183010, 42.370808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047878, 33.578175, 42.843327>,  <37.868660, 33.654404, 42.860023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047878, 33.578175, 42.843327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210800, 33.245461, 42.692471>,  <37.308556, 33.045834, 42.601955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210800, 33.245461, 42.692471>,  <37.047878, 33.578175, 42.843327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210800, 33.245461, 42.692471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589738, -0.554849, 0.586815,
		-0.697360, -0.016601, -0.716529,
		0.407307, -0.831786, -0.377139,
		37.332993, 32.995926, 42.579330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444672, 33.249310, 42.669495>,  <37.047878, 33.578175, 42.843327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444672, 33.249310, 42.669495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713467, 32.953136, 42.664055>,  <36.874744, 32.775433, 42.660789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713467, 32.953136, 42.664055>,  <36.444672, 33.249310, 42.669495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713467, 32.953136, 42.664055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622477, -0.574698, 0.531267,
		-0.401186, -0.348540, -0.847095,
		0.671991, -0.740435, -0.013603,
		36.915066, 32.731007, 42.659973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070488, 32.574360, 42.481834>,  <36.444672, 33.249310, 42.669495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070488, 32.574360, 42.481834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399403, 32.496571, 42.695759>,  <36.596752, 32.449898, 42.824116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399403, 32.496571, 42.695759>,  <36.070488, 32.574360, 42.481834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399403, 32.496571, 42.695759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531688, -0.597562, 0.600189,
		0.202862, -0.777881, -0.594767,
		0.822286, -0.194475, 0.534814,
		36.646088, 32.438229, 42.856201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030159, 31.907265, 42.800926>,  <36.070488, 32.574360, 42.481834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030159, 31.907265, 42.800926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325886, 32.010422, 43.049732>,  <36.503323, 32.072315, 43.199017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325886, 32.010422, 43.049732>,  <36.030159, 31.907265, 42.800926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325886, 32.010422, 43.049732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452220, -0.494267, 0.742427,
		0.498907, -0.830176, -0.248796,
		0.739316, 0.257892, 0.622015,
		36.547680, 32.087788, 43.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421360, 31.326572, 42.552788>,  <36.030159, 31.907265, 42.800926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421360, 31.326572, 42.552788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097824, 31.114679, 42.450684>,  <35.903702, 30.987543, 42.389420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097824, 31.114679, 42.450684>,  <36.421360, 31.326572, 42.552788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097824, 31.114679, 42.450684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022689, 0.405657, -0.913744,
		0.587588, -0.744866, -0.316093,
		-0.808842, -0.529733, -0.255260,
		35.855171, 30.955759, 42.374107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544762, 31.006609, 41.855389>,  <36.421360, 31.326572, 42.552788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544762, 31.006609, 41.855389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156403, 31.060984, 41.934261>,  <35.923386, 31.093609, 41.981583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156403, 31.060984, 41.934261>,  <36.544762, 31.006609, 41.855389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156403, 31.060984, 41.934261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141170, 0.340238, -0.929682,
		-0.193468, -0.930461, -0.311145,
		-0.970897, 0.135939, 0.197179,
		35.865135, 31.101765, 41.993416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305416, 30.875788, 41.136375>,  <36.544762, 31.006609, 41.855389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305416, 30.875788, 41.136375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039665, 31.069027, 41.364487>,  <35.880215, 31.184971, 41.501354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039665, 31.069027, 41.364487>,  <36.305416, 30.875788, 41.136375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039665, 31.069027, 41.364487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205121, 0.615867, -0.760679,
		-0.718699, -0.622355, -0.310075,
		-0.664377, 0.483096, 0.570281,
		35.840351, 31.213955, 41.535572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662632, 30.812090, 40.865093>,  <36.305416, 30.875788, 41.136375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662632, 30.812090, 40.865093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634571, 31.143208, 41.087746>,  <35.617733, 31.341879, 41.221336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634571, 31.143208, 41.087746>,  <35.662632, 30.812090, 40.865093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634571, 31.143208, 41.087746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313927, 0.511331, -0.799994,
		-0.946852, -0.230864, 0.223994,
		-0.070154, 0.827794, 0.556629,
		35.613525, 31.391546, 41.254734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943295, 31.065639, 40.662788>,  <35.662632, 30.812090, 40.865093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943295, 31.065639, 40.662788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136826, 31.359041, 40.853737>,  <35.252945, 31.535082, 40.968307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136826, 31.359041, 40.853737>,  <34.943295, 31.065639, 40.662788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136826, 31.359041, 40.853737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341243, 0.660409, -0.668890,
		-0.805896, 0.160724, 0.569824,
		0.483823, 0.733504, 0.477375,
		35.281971, 31.579092, 40.996948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502796, 31.597595, 40.698380>,  <34.943295, 31.065639, 40.662788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502796, 31.597595, 40.698380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859829, 31.768890, 40.754829>,  <35.074047, 31.871668, 40.788700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859829, 31.768890, 40.754829>,  <34.502796, 31.597595, 40.698380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859829, 31.768890, 40.754829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156705, 0.588104, -0.793459,
		-0.422783, 0.686110, 0.592037,
		0.892580, 0.428236, 0.141123,
		35.127602, 31.897362, 40.797165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412899, 32.288116, 40.623039>,  <34.502796, 31.597595, 40.698380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412899, 32.288116, 40.623039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805405, 32.244347, 40.559605>,  <35.040909, 32.218082, 40.521542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805405, 32.244347, 40.559605>,  <34.412899, 32.288116, 40.623039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805405, 32.244347, 40.559605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066402, 0.580597, -0.811479,
		0.180876, 0.806804, 0.562452,
		0.981262, -0.109429, -0.158589,
		35.099785, 32.211517, 40.512028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596874, 32.987633, 40.220612>,  <34.412899, 32.288116, 40.623039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596874, 32.987633, 40.220612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902035, 32.734055, 40.169872>,  <35.085133, 32.581909, 40.139431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902035, 32.734055, 40.169872>,  <34.596874, 32.987633, 40.220612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902035, 32.734055, 40.169872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010519, 0.208344, -0.977999,
		0.646424, 0.744787, 0.165615,
		0.762906, -0.633944, -0.126844,
		35.130905, 32.543873, 40.131821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076420, 33.286453, 39.802986>,  <34.596874, 32.987633, 40.220612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076420, 33.286453, 39.802986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129402, 32.893028, 39.753895>,  <35.161190, 32.656975, 39.724442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129402, 32.893028, 39.753895>,  <35.076420, 33.286453, 39.802986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129402, 32.893028, 39.753895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002084, 0.123543, -0.992337,
		0.991187, 0.131695, 0.014315,
		0.132454, -0.983561, -0.122729,
		35.169140, 32.597961, 39.717075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679497, 33.265244, 39.484631>,  <35.076420, 33.286453, 39.802986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679497, 33.265244, 39.484631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484089, 32.924919, 39.407207>,  <35.366844, 32.720726, 39.360756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484089, 32.924919, 39.407207>,  <35.679497, 33.265244, 39.484631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484089, 32.924919, 39.407207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077011, 0.178917, -0.980846,
		0.869145, -0.494072, -0.021884,
		-0.488524, -0.850812, -0.193554,
		35.337532, 32.669674, 39.349140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058430, 32.650127, 39.084213>,  <35.679497, 33.265244, 39.484631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058430, 32.650127, 39.084213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666088, 32.674084, 39.010082>,  <35.430683, 32.688457, 38.965603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666088, 32.674084, 39.010082>,  <36.058430, 32.650127, 39.084213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666088, 32.674084, 39.010082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192103, 0.140714, -0.971234,
		-0.032087, -0.988237, -0.149524,
		-0.980850, 0.059888, -0.185329,
		35.371834, 32.692051, 38.954483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048141, 32.176556, 38.566586>,  <36.058430, 32.650127, 39.084213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048141, 32.176556, 38.566586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774746, 32.468498, 38.561619>,  <35.610710, 32.643665, 38.558640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774746, 32.468498, 38.561619>,  <36.048141, 32.176556, 38.566586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774746, 32.468498, 38.561619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104794, 0.081278, -0.991167,
		-0.722400, -0.678752, -0.132037,
		-0.683488, 0.729856, -0.012414,
		35.569698, 32.687454, 38.557896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.456367, 29.295471, 45.800129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084061, 29.383961, 45.683697>,  <34.860676, 29.437056, 45.613838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084061, 29.383961, 45.683697>,  <35.456367, 29.295471, 45.800129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084061, 29.383961, 45.683697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251504, -0.190413, -0.948941,
		-0.265356, -0.956452, 0.121592,
		-0.930769, 0.221226, -0.291079,
		34.804829, 29.450329, 45.596375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344227, 28.844488, 45.309322>,  <35.456367, 29.295471, 45.800129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344227, 28.844488, 45.309322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062569, 29.119282, 45.237507>,  <34.893574, 29.284159, 45.194420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062569, 29.119282, 45.237507>,  <35.344227, 28.844488, 45.309322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062569, 29.119282, 45.237507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267961, 0.022945, -0.963157,
		-0.657553, -0.726310, -0.200242,
		-0.704145, 0.686984, -0.179535,
		34.851326, 29.325377, 45.183647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946880, 28.609125, 44.653172>,  <35.344227, 28.844488, 45.309322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946880, 28.609125, 44.653172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.893501, 29.000137, 44.718441>,  <34.861473, 29.234745, 44.757603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.893501, 29.000137, 44.718441>,  <34.946880, 28.609125, 44.653172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893501, 29.000137, 44.718441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058117, 0.172085, -0.983366,
		-0.989350, -0.121748, -0.079776,
		-0.133451, 0.977530, 0.163177,
		34.853466, 29.293396, 44.767395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586460, 28.818958, 44.041168>,  <34.946880, 28.609125, 44.653172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586460, 28.818958, 44.041168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698383, 29.172981, 44.189968>,  <34.765537, 29.385395, 44.279247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698383, 29.172981, 44.189968>,  <34.586460, 28.818958, 44.041168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698383, 29.172981, 44.189968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166908, 0.336734, -0.926689,
		-0.945437, 0.321381, -0.053503,
		0.279804, 0.885056, 0.372002,
		34.782326, 29.438498, 44.301567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258652, 29.250742, 43.597130>,  <34.586460, 28.818958, 44.041168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258652, 29.250742, 43.597130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534477, 29.482929, 43.770363>,  <34.699974, 29.622242, 43.874302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534477, 29.482929, 43.770363>,  <34.258652, 29.250742, 43.597130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534477, 29.482929, 43.770363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202846, 0.419256, -0.884917,
		-0.695239, 0.698054, 0.171357,
		0.689562, 0.580470, 0.433081,
		34.741344, 29.657070, 43.900288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167919, 29.962000, 43.455048>,  <34.258652, 29.250742, 43.597130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167919, 29.962000, 43.455048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.559029, 29.943018, 43.536739>,  <34.793694, 29.931629, 43.585754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.559029, 29.943018, 43.536739>,  <34.167919, 29.962000, 43.455048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559029, 29.943018, 43.536739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196469, 0.547493, -0.813419,
		-0.073210, 0.835463, 0.544648,
		0.977773, -0.047456, 0.204225,
		34.852360, 29.928782, 43.598007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378651, 30.657547, 43.550129>,  <34.167919, 29.962000, 43.455048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378651, 30.657547, 43.550129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702099, 30.448545, 43.441971>,  <34.896168, 30.323145, 43.377075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702099, 30.448545, 43.441971>,  <34.378651, 30.657547, 43.550129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702099, 30.448545, 43.441971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247412, 0.719001, -0.649480,
		0.533774, 0.458285, 0.710676,
		0.808624, -0.522505, -0.270399,
		34.944687, 30.291794, 43.360851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877384, 31.145508, 43.399784>,  <34.378651, 30.657547, 43.550129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877384, 31.145508, 43.399784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062717, 30.829132, 43.239914>,  <35.173916, 30.639307, 43.143993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062717, 30.829132, 43.239914>,  <34.877384, 31.145508, 43.399784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062717, 30.829132, 43.239914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447152, 0.598042, -0.665132,
		0.765102, 0.129459, 0.630761,
		0.463329, -0.790940, -0.399675,
		35.201717, 30.591850, 43.120010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499863, 31.330557, 43.384651>,  <34.877384, 31.145508, 43.399784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499863, 31.330557, 43.384651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483231, 31.053610, 43.096512>,  <35.473251, 30.887442, 42.923630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483231, 31.053610, 43.096512>,  <35.499863, 31.330557, 43.384651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483231, 31.053610, 43.096512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455841, 0.628417, -0.630318,
		0.889089, -0.354572, 0.289479,
		-0.041579, -0.692366, -0.720348,
		35.470757, 30.845900, 42.880409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149872, 31.211740, 43.532341>,  <35.499863, 31.330557, 43.384651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149872, 31.211740, 43.532341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.351612, 31.545080, 43.622814>,  <36.472656, 31.745085, 43.677097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.351612, 31.545080, 43.622814>,  <36.149872, 31.211740, 43.532341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351612, 31.545080, 43.622814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035765, -0.281875, 0.958785,
		0.862760, -0.475471, -0.171968,
		0.504347, 0.833351, 0.226185,
		36.502914, 31.795086, 43.690670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875908, 31.043285, 43.786018>,  <36.149872, 31.211740, 43.532341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875908, 31.043285, 43.786018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737381, 31.387474, 43.935501>,  <36.654266, 31.593987, 44.025192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737381, 31.387474, 43.935501>,  <36.875908, 31.043285, 43.786018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737381, 31.387474, 43.935501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030006, -0.408313, 0.912349,
		0.937637, 0.304749, 0.167226,
		-0.346318, 0.860470, 0.373705,
		36.633484, 31.645615, 44.047611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169945, 31.080999, 44.384621>,  <36.875908, 31.043285, 43.786018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169945, 31.080999, 44.384621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906109, 31.375422, 44.445511>,  <36.747807, 31.552074, 44.482044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906109, 31.375422, 44.445511>,  <37.169945, 31.080999, 44.384621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906109, 31.375422, 44.445511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038541, -0.235379, 0.971139,
		0.750641, 0.634683, 0.183621,
		-0.659586, 0.736053, 0.152223,
		36.708233, 31.596237, 44.491177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452221, 31.484358, 44.956799>,  <37.169945, 31.080999, 44.384621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452221, 31.484358, 44.956799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070553, 31.603983, 44.961224>,  <36.841553, 31.675758, 44.963879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070553, 31.603983, 44.961224>,  <37.452221, 31.484358, 44.956799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070553, 31.603983, 44.961224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069135, -0.256252, 0.964135,
		0.291171, 0.919183, 0.265184,
		-0.954170, 0.299062, 0.011066,
		36.784302, 31.693701, 44.964542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286446, 31.960770, 45.492500>,  <37.452221, 31.484358, 44.956799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286446, 31.960770, 45.492500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.910820, 31.849409, 45.411858>,  <36.685444, 31.782593, 45.363472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.910820, 31.849409, 45.411858>,  <37.286446, 31.960770, 45.492500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910820, 31.849409, 45.411858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181983, -0.094902, 0.978711,
		-0.291608, 0.955765, 0.038455,
		-0.939067, -0.278402, -0.201607,
		36.629101, 31.765888, 45.351376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752159, 32.419651, 45.927864>,  <37.286446, 31.960770, 45.492500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752159, 32.419651, 45.927864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545517, 32.086582, 45.848091>,  <36.421532, 31.886740, 45.800228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545517, 32.086582, 45.848091>,  <36.752159, 32.419651, 45.927864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545517, 32.086582, 45.848091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118627, -0.161066, 0.979788,
		-0.847966, 0.529822, -0.015569,
		-0.516606, -0.832674, -0.199430,
		36.390533, 31.836781, 45.788261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070801, 32.390533, 46.461212>,  <36.752159, 32.419651, 45.927864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070801, 32.390533, 46.461212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097275, 32.021267, 46.309746>,  <36.113159, 31.799707, 46.218868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097275, 32.021267, 46.309746>,  <36.070801, 32.390533, 46.461212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097275, 32.021267, 46.309746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266725, -0.382053, 0.884813,
		-0.961498, 0.042440, -0.271517,
		0.066182, -0.923166, -0.378663,
		36.117130, 31.744318, 46.196148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423187, 32.063175, 46.707001>,  <36.070801, 32.390533, 46.461212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423187, 32.063175, 46.707001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673836, 31.771166, 46.597885>,  <35.824223, 31.595961, 46.532417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673836, 31.771166, 46.597885>,  <35.423187, 32.063175, 46.707001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673836, 31.771166, 46.597885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142371, -0.451374, 0.880904,
		-0.766211, -0.513154, -0.386774,
		0.626619, -0.730024, -0.272790,
		35.861820, 31.552158, 46.516048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048244, 31.549431, 46.992554>,  <35.423187, 32.063175, 46.707001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048244, 31.549431, 46.992554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431061, 31.443897, 46.944443>,  <35.660751, 31.380577, 46.915577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431061, 31.443897, 46.944443>,  <35.048244, 31.549431, 46.992554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431061, 31.443897, 46.944443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011620, -0.449372, 0.893269,
		-0.289723, -0.853497, -0.433133,
		0.957040, -0.263833, -0.120276,
		35.718174, 31.364746, 46.908360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995506, 30.906057, 47.098541>,  <35.048244, 31.549431, 46.992554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995506, 30.906057, 47.098541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383904, 30.992336, 47.139801>,  <35.616943, 31.044104, 47.164558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383904, 30.992336, 47.139801>,  <34.995506, 30.906057, 47.098541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383904, 30.992336, 47.139801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015826, -0.488462, 0.872442,
		0.238571, -0.845505, -0.477708,
		0.970996, 0.215700, 0.103152,
		35.675201, 31.057047, 47.170746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291245, 30.295282, 47.307713>,  <34.995506, 30.906057, 47.098541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291245, 30.295282, 47.307713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557045, 30.571907, 47.420979>,  <35.716526, 30.737881, 47.488937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557045, 30.571907, 47.420979>,  <35.291245, 30.295282, 47.307713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557045, 30.571907, 47.420979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054932, -0.423099, 0.904417,
		0.745264, -0.585433, -0.319139,
		0.664503, 0.691560, 0.283161,
		35.756397, 30.779375, 47.505928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899529, 29.968582, 47.634747>,  <35.291245, 30.295282, 47.307713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899529, 29.968582, 47.634747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863472, 30.335466, 47.789974>,  <35.841839, 30.555597, 47.883110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863472, 30.335466, 47.789974>,  <35.899529, 29.968582, 47.634747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863472, 30.335466, 47.789974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014408, -0.388417, 0.921371,
		0.995825, 0.088648, 0.021799,
		-0.090144, 0.917210, 0.388073,
		35.836430, 30.610630, 47.906395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188789, 29.882996, 48.340965>,  <35.899529, 29.968582, 47.634747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188789, 29.882996, 48.340965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990353, 30.230246, 48.347374>,  <35.871292, 30.438595, 48.351219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990353, 30.230246, 48.347374>,  <36.188789, 29.882996, 48.340965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990353, 30.230246, 48.347374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206812, -0.136065, 0.968873,
		0.843282, 0.477333, 0.247038,
		-0.496089, 0.868124, 0.016023,
		35.841526, 30.490683, 48.352180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384380, 30.186939, 48.916340>,  <36.188789, 29.882996, 48.340965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384380, 30.186939, 48.916340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038841, 30.375736, 48.845921>,  <35.831516, 30.489014, 48.803669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038841, 30.375736, 48.845921>,  <36.384380, 30.186939, 48.916340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038841, 30.375736, 48.845921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186417, 0.025149, 0.982149,
		0.467993, 0.881244, 0.066262,
		-0.863846, 0.471992, -0.176049,
		35.779686, 30.517334, 48.793106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.908251, 33.311607, 48.226059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.141766, 33.002079, 48.127754>,  <30.281874, 32.816364, 48.068771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.141766, 33.002079, 48.127754>,  <29.908251, 33.311607, 48.226059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141766, 33.002079, 48.127754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326648, 0.500973, -0.801453,
		0.743299, 0.387600, 0.545227,
		0.583788, -0.773817, -0.245764,
		30.316902, 32.769936, 48.054024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495729, 33.693474, 48.048191>,  <29.908251, 33.311607, 48.226059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495729, 33.693474, 48.048191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528893, 33.318069, 47.914127>,  <30.548790, 33.092827, 47.833691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528893, 33.318069, 47.914127>,  <30.495729, 33.693474, 48.048191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528893, 33.318069, 47.914127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173259, 0.344767, -0.922560,
		0.981381, 0.018418, 0.191189,
		0.082907, -0.938508, -0.335157,
		30.553764, 33.036518, 47.813580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140596, 33.667465, 47.677498>,  <30.495729, 33.693474, 48.048191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140596, 33.667465, 47.677498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.918362, 33.372299, 47.524242>,  <30.785021, 33.195198, 47.432289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.918362, 33.372299, 47.524242>,  <31.140596, 33.667465, 47.677498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918362, 33.372299, 47.524242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238524, 0.299987, -0.923642,
		0.796510, -0.604553, 0.009342,
		-0.555588, -0.737919, -0.383143,
		30.751686, 33.150925, 47.409298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466717, 33.417755, 47.145020>,  <31.140596, 33.667465, 47.677498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466717, 33.417755, 47.145020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.099047, 33.287560, 47.056316>,  <30.878445, 33.209442, 47.003094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.099047, 33.287560, 47.056316>,  <31.466717, 33.417755, 47.145020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099047, 33.287560, 47.056316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121815, 0.300505, -0.945969,
		0.374542, -0.896524, -0.236567,
		-0.919173, -0.325488, -0.221762,
		30.823296, 33.189915, 46.989788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510572, 33.299942, 46.475861>,  <31.466717, 33.417755, 47.145020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510572, 33.299942, 46.475861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111895, 33.290615, 46.506981>,  <30.872688, 33.285019, 46.525654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111895, 33.290615, 46.506981>,  <31.510572, 33.299942, 46.475861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111895, 33.290615, 46.506981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081120, 0.333092, -0.939398,
		-0.004007, -0.942606, -0.333884,
		-0.996696, -0.023320, 0.077799,
		30.812885, 33.283619, 46.530319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212435, 32.885948, 45.948078>,  <31.510572, 33.299942, 46.475861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212435, 32.885948, 45.948078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957869, 33.171177, 46.065723>,  <30.805128, 33.342316, 46.136311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957869, 33.171177, 46.065723>,  <31.212435, 32.885948, 45.948078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957869, 33.171177, 46.065723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117641, 0.287104, -0.950648,
		-0.762322, -0.639607, -0.098831,
		-0.636416, 0.713074, 0.294109,
		30.766943, 33.385098, 46.153957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755005, 32.883873, 45.425373>,  <31.212435, 32.885948, 45.948078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755005, 32.883873, 45.425373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664251, 33.225002, 45.613506>,  <30.609798, 33.429680, 45.726387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664251, 33.225002, 45.613506>,  <30.755005, 32.883873, 45.425373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664251, 33.225002, 45.613506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008064, 0.484557, -0.874722,
		-0.973888, -0.194670, -0.116816,
		-0.226886, 0.852823, 0.470334,
		30.596186, 33.480850, 45.754608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337948, 33.142128, 44.979351>,  <30.755005, 32.883873, 45.425373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337948, 33.142128, 44.979351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432884, 33.461895, 45.200115>,  <30.489845, 33.653755, 45.332573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432884, 33.461895, 45.200115>,  <30.337948, 33.142128, 44.979351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432884, 33.461895, 45.200115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183644, 0.520980, -0.833580,
		-0.953910, 0.299197, -0.023158,
		0.237339, 0.799413, 0.551913,
		30.504086, 33.701717, 45.365688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043648, 33.709888, 44.689632>,  <30.337948, 33.142128, 44.979351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043648, 33.709888, 44.689632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357431, 33.849392, 44.894764>,  <30.545702, 33.933094, 45.017841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357431, 33.849392, 44.894764>,  <30.043648, 33.709888, 44.689632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357431, 33.849392, 44.894764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295736, 0.516467, -0.803618,
		-0.545126, 0.782067, 0.302008,
		0.784460, 0.348759, 0.512825,
		30.592770, 33.954021, 45.048611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020439, 34.386040, 44.473591>,  <30.043648, 33.709888, 44.689632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020439, 34.386040, 44.473591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374619, 34.327164, 44.649918>,  <30.587126, 34.291840, 44.755714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374619, 34.327164, 44.649918>,  <30.020439, 34.386040, 44.473591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374619, 34.327164, 44.649918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426180, 0.635462, -0.643863,
		-0.185353, 0.757973, 0.625396,
		0.885446, -0.147189, 0.440817,
		30.640253, 34.283009, 44.782162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326502, 35.057095, 44.519337>,  <30.020439, 34.386040, 44.473591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326502, 35.057095, 44.519337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643763, 34.818039, 44.566223>,  <30.834120, 34.674606, 44.594357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643763, 34.818039, 44.566223>,  <30.326502, 35.057095, 44.519337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643763, 34.818039, 44.566223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462101, 0.465193, -0.755022,
		0.396701, 0.653013, 0.645138,
		0.793153, -0.597637, 0.117216,
		30.881708, 34.638748, 44.601387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952396, 35.439789, 44.485519>,  <30.326502, 35.057095, 44.519337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952396, 35.439789, 44.485519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.104845, 35.077820, 44.409771>,  <31.196314, 34.860638, 44.364323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.104845, 35.077820, 44.409771>,  <30.952396, 35.439789, 44.485519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104845, 35.077820, 44.409771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430140, 0.354871, -0.830088,
		0.818369, 0.234906, 0.524492,
		0.381120, -0.904923, -0.189373,
		31.219181, 34.806343, 44.352959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699097, 35.409473, 44.255138>,  <30.952396, 35.439789, 44.485519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699097, 35.409473, 44.255138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556784, 35.077312, 44.083622>,  <31.471395, 34.878017, 43.980713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556784, 35.077312, 44.083622>,  <31.699097, 35.409473, 44.255138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556784, 35.077312, 44.083622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259530, 0.352974, -0.898918,
		0.897811, -0.431102, 0.089932,
		-0.355781, -0.830398, -0.428788,
		31.450048, 34.828194, 43.954987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236023, 35.147907, 43.889156>,  <31.699097, 35.409473, 44.255138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236023, 35.147907, 43.889156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.914806, 34.974941, 43.725132>,  <31.722076, 34.871162, 43.626717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.914806, 34.974941, 43.725132>,  <32.236023, 35.147907, 43.889156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914806, 34.974941, 43.725132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318330, 0.270445, -0.908584,
		0.503782, -0.860162, -0.079528,
		-0.803038, -0.432412, -0.410060,
		31.673895, 34.845219, 43.602116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644676, 34.768261, 44.347282>,  <32.236023, 35.147907, 43.889156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644676, 34.768261, 44.347282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983341, 34.978378, 44.313267>,  <33.186539, 35.104450, 44.292858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.983341, 34.978378, 44.313267>,  <32.644676, 34.768261, 44.347282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983341, 34.978378, 44.313267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011129, 0.142301, 0.989761,
		0.532019, -0.838936, 0.114635,
		0.846659, 0.525296, -0.085044,
		33.237339, 35.135967, 44.287754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173416, 34.470882, 44.729523>,  <32.644676, 34.768261, 44.347282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173416, 34.470882, 44.729523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264839, 34.858925, 44.696877>,  <33.319695, 35.091751, 44.677288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264839, 34.858925, 44.696877>,  <33.173416, 34.470882, 44.729523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264839, 34.858925, 44.696877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152411, 0.047143, 0.987192,
		0.961525, -0.238074, -0.137079,
		0.228562, 0.970102, -0.081615,
		33.333408, 35.149956, 44.672394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843601, 34.627190, 45.062321>,  <33.173416, 34.470882, 44.729523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843601, 34.627190, 45.062321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648540, 34.976372, 45.057381>,  <33.531506, 35.185879, 45.054417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648540, 34.976372, 45.057381>,  <33.843601, 34.627190, 45.062321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648540, 34.976372, 45.057381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227505, 0.140725, 0.963555,
		0.842877, 0.467064, -0.267225,
		-0.487647, 0.872953, -0.012354,
		33.502247, 35.238258, 45.053673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296890, 34.990231, 45.497292>,  <33.843601, 34.627190, 45.062321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296890, 34.990231, 45.497292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944954, 35.179199, 45.476490>,  <33.733791, 35.292580, 45.464008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944954, 35.179199, 45.476490>,  <34.296890, 34.990231, 45.497292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944954, 35.179199, 45.476490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060925, -0.003593, 0.998136,
		0.471350, 0.881368, 0.031944,
		-0.879840, 0.472417, -0.052003,
		33.681004, 35.320923, 45.460888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370937, 35.459396, 46.012600>,  <34.296890, 34.990231, 45.497292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370937, 35.459396, 46.012600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991131, 35.376915, 45.918026>,  <33.763248, 35.327427, 45.861282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991131, 35.376915, 45.918026>,  <34.370937, 35.459396, 46.012600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991131, 35.376915, 45.918026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228725, -0.060810, 0.971590,
		-0.214722, 0.976618, 0.010576,
		-0.949515, -0.206203, -0.236434,
		33.706276, 35.315056, 45.847095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949097, 35.716171, 46.653748>,  <34.370937, 35.459396, 46.012600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949097, 35.716171, 46.653748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649612, 35.528984, 46.465939>,  <33.469921, 35.416672, 46.353252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649612, 35.528984, 46.465939>,  <33.949097, 35.716171, 46.653748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649612, 35.528984, 46.465939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359561, -0.308355, 0.880700,
		-0.556916, 0.828206, 0.062605,
		-0.748706, -0.467965, -0.469518,
		33.424999, 35.388596, 46.325085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291271, 35.950687, 46.974545>,  <33.949097, 35.716171, 46.653748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291271, 35.950687, 46.974545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222500, 35.588200, 46.820038>,  <33.181236, 35.370705, 46.727333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222500, 35.588200, 46.820038>,  <33.291271, 35.950687, 46.974545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222500, 35.588200, 46.820038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359307, -0.307407, 0.881135,
		-0.917245, 0.290282, -0.272759,
		-0.171930, -0.906221, -0.386268,
		33.170921, 35.316334, 46.704159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708710, 35.746834, 47.333344>,  <33.291271, 35.950687, 46.974545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708710, 35.746834, 47.333344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815693, 35.391571, 47.183865>,  <32.879883, 35.178413, 47.094177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815693, 35.391571, 47.183865>,  <32.708710, 35.746834, 47.333344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815693, 35.391571, 47.183865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303480, -0.445729, 0.842155,
		-0.914531, -0.111831, -0.388750,
		0.267456, -0.888155, -0.373695,
		32.895931, 35.125126, 47.071754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108372, 35.322620, 47.280689>,  <32.708710, 35.746834, 47.333344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108372, 35.322620, 47.280689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427055, 35.081322, 47.295391>,  <32.618267, 34.936543, 47.304211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427055, 35.081322, 47.295391>,  <32.108372, 35.322620, 47.280689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427055, 35.081322, 47.295391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370341, -0.439245, 0.818481,
		-0.477603, -0.665700, -0.573357,
		0.796708, -0.603246, 0.036751,
		32.666069, 34.900349, 47.306416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884985, 34.576412, 47.444927>,  <32.108372, 35.322620, 47.280689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884985, 34.576412, 47.444927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262531, 34.596863, 47.575466>,  <32.489059, 34.609135, 47.653790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262531, 34.596863, 47.575466>,  <31.884985, 34.576412, 47.444927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262531, 34.596863, 47.575466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220509, -0.638087, 0.737713,
		0.245957, -0.768265, -0.590994,
		0.943865, 0.051126, 0.326351,
		32.545692, 34.612202, 47.673370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170151, 33.946453, 47.424938>,  <31.884985, 34.576412, 47.444927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170151, 33.946453, 47.424938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289696, 34.188313, 47.720257>,  <32.361423, 34.333427, 47.897446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289696, 34.188313, 47.720257>,  <32.170151, 33.946453, 47.424938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289696, 34.188313, 47.720257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270504, -0.688243, 0.673163,
		0.915155, -0.400895, -0.042129,
		0.298863, 0.604653, 0.738293,
		32.379356, 34.369709, 47.941746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396084, 33.476189, 47.809982>,  <32.170151, 33.946453, 47.424938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396084, 33.476189, 47.809982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373055, 33.789394, 48.057713>,  <32.359238, 33.977318, 48.206352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373055, 33.789394, 48.057713>,  <32.396084, 33.476189, 47.809982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373055, 33.789394, 48.057713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290102, -0.606710, 0.740097,
		0.955263, -0.137061, 0.262083,
		-0.057570, 0.783018, 0.619329,
		32.355785, 34.024300, 48.243511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909878, 33.339046, 48.353672>,  <32.396084, 33.476189, 47.809982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909878, 33.339046, 48.353672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616600, 33.584793, 48.470276>,  <32.440632, 33.732243, 48.540237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616600, 33.584793, 48.470276>,  <32.909878, 33.339046, 48.353672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616600, 33.584793, 48.470276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179104, -0.588003, 0.788780,
		0.656008, 0.526120, 0.541157,
		-0.733195, 0.614370, 0.291505,
		32.396641, 33.769104, 48.557728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991238, 33.325893, 49.078133>,  <32.909878, 33.339046, 48.353672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991238, 33.325893, 49.078133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618057, 33.467587, 49.052444>,  <32.394150, 33.552601, 49.037029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618057, 33.467587, 49.052444>,  <32.991238, 33.325893, 49.078133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618057, 33.467587, 49.052444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228121, -0.443672, 0.866669,
		0.278508, 0.823210, 0.494731,
		-0.932949, 0.354233, -0.064225,
		32.338173, 33.573856, 49.033176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430813, 33.967403, 49.110886>,  <32.991238, 33.325893, 49.078133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430813, 33.967403, 49.110886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771400, 34.066921, 49.295532>,  <33.975754, 34.126633, 49.406322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771400, 34.066921, 49.295532>,  <33.430813, 33.967403, 49.110886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771400, 34.066921, 49.295532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391233, 0.284774, -0.875123,
		-0.349187, 0.925745, 0.145139,
		0.851473, 0.248798, 0.461621,
		34.026844, 34.141560, 49.434017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608551, 34.622700, 48.721554>,  <33.430813, 33.967403, 49.110886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608551, 34.622700, 48.721554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938652, 34.486984, 48.902145>,  <34.136715, 34.405556, 49.010502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938652, 34.486984, 48.902145>,  <33.608551, 34.622700, 48.721554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938652, 34.486984, 48.902145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542549, 0.254322, -0.800600,
		0.156816, 0.905650, 0.393963,
		0.825257, -0.339292, 0.451478,
		34.186230, 34.385197, 49.037590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009254, 35.149139, 48.577538>,  <33.608551, 34.622700, 48.721554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009254, 35.149139, 48.577538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.265388, 34.854553, 48.664795>,  <34.419067, 34.677799, 48.717152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.265388, 34.854553, 48.664795>,  <34.009254, 35.149139, 48.577538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265388, 34.854553, 48.664795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554310, 0.246476, -0.794978,
		0.531709, 0.629971, 0.566059,
		0.640333, -0.736469, 0.218146,
		34.457489, 34.633614, 48.730240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705029, 35.425896, 48.550961>,  <34.009254, 35.149139, 48.577538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705029, 35.425896, 48.550961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737293, 35.030537, 48.499470>,  <34.756653, 34.793324, 48.468575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737293, 35.030537, 48.499470>,  <34.705029, 35.425896, 48.550961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737293, 35.030537, 48.499470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649445, 0.150088, -0.745450,
		0.756118, -0.023467, 0.654014,
		0.080666, -0.988394, -0.128724,
		34.761494, 34.734020, 48.460854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415810, 35.163849, 48.602985>,  <34.705029, 35.425896, 48.550961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415810, 35.163849, 48.602985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227352, 34.900639, 48.368031>,  <35.114277, 34.742710, 48.227058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227352, 34.900639, 48.368031>,  <35.415810, 35.163849, 48.602985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227352, 34.900639, 48.368031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800427, -0.039166, -0.598149,
		0.370595, -0.751972, 0.545158,
		-0.471143, -0.658031, -0.587384,
		35.086010, 34.703228, 48.191814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995888, 34.853443, 48.286160>,  <35.415810, 35.163849, 48.602985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995888, 34.853443, 48.286160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685528, 34.710007, 48.078548>,  <35.499313, 34.623943, 47.953979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685528, 34.710007, 48.078548>,  <35.995888, 34.853443, 48.286160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685528, 34.710007, 48.078548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550328, 0.017482, -0.834765,
		0.308413, -0.933331, 0.183779,
		-0.775900, -0.358591, -0.519030,
		35.452759, 34.602428, 47.922840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271629, 34.344257, 47.862503>,  <35.995888, 34.853443, 48.286160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271629, 34.344257, 47.862503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930138, 34.424164, 47.670155>,  <35.725243, 34.472107, 47.554745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930138, 34.424164, 47.670155>,  <36.271629, 34.344257, 47.862503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930138, 34.424164, 47.670155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482870, -0.041922, -0.874688,
		-0.194895, -0.978946, -0.060673,
		-0.853729, 0.199769, -0.480874,
		35.674019, 34.484093, 47.525894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227894, 33.841881, 47.241756>,  <36.271629, 34.344257, 47.862503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227894, 33.841881, 47.241756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997288, 34.160828, 47.170380>,  <35.858925, 34.352196, 47.127552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.997288, 34.160828, 47.170380>,  <36.227894, 33.841881, 47.241756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997288, 34.160828, 47.170380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427397, 0.108148, -0.897572,
		-0.696396, -0.593726, -0.403141,
		-0.576511, 0.797366, -0.178443,
		35.824333, 34.400036, 47.116848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921227, 33.647690, 46.526730>,  <36.227894, 33.841881, 47.241756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921227, 33.647690, 46.526730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910679, 34.042297, 46.591328>,  <35.904350, 34.279064, 46.630085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910679, 34.042297, 46.591328>,  <35.921227, 33.647690, 46.526730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910679, 34.042297, 46.591328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564450, 0.148026, -0.812086,
		-0.825046, 0.069738, -0.560746,
		-0.026372, 0.986522, 0.161492,
		35.902767, 34.338253, 46.639774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958115, 33.909374, 45.879093>,  <35.921227, 33.647690, 46.526730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958115, 33.909374, 45.879093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055115, 34.260334, 46.044682>,  <36.113316, 34.470909, 46.144035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055115, 34.260334, 46.044682>,  <35.958115, 33.909374, 45.879093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055115, 34.260334, 46.044682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517476, 0.243956, -0.820185,
		-0.820617, 0.413115, -0.394871,
		0.242499, 0.877395, 0.413972,
		36.127865, 34.523552, 46.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717068, 34.450729, 45.433533>,  <35.958115, 33.909374, 45.879093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717068, 34.450729, 45.433533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028282, 34.578529, 45.649895>,  <36.215012, 34.655209, 45.779713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028282, 34.578529, 45.649895>,  <35.717068, 34.450729, 45.433533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028282, 34.578529, 45.649895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499955, 0.206469, -0.841080,
		-0.380409, 0.924818, 0.000903,
		0.778032, 0.319503, 0.540910,
		36.261692, 34.674381, 45.812168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986622, 35.030270, 45.099152>,  <35.717068, 34.450729, 45.433533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986622, 35.030270, 45.099152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264652, 34.974243, 45.381214>,  <36.431469, 34.940628, 45.550453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264652, 34.974243, 45.381214>,  <35.986622, 35.030270, 45.099152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264652, 34.974243, 45.381214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711822, 0.271732, -0.647666,
		-0.100897, 0.952125, 0.288579,
		0.695075, -0.140070, 0.705160,
		36.473175, 34.932220, 45.592762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304581, 35.600941, 45.141426>,  <35.986622, 35.030270, 45.099152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304581, 35.600941, 45.141426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565224, 35.353127, 45.316502>,  <36.721611, 35.204437, 45.421547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565224, 35.353127, 45.316502>,  <36.304581, 35.600941, 45.141426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565224, 35.353127, 45.316502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723219, 0.333356, -0.604837,
		0.228813, 0.710666, 0.665281,
		0.651612, -0.619538, 0.437691,
		36.760708, 35.167267, 45.447807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914841, 35.985580, 45.428608>,  <36.304581, 35.600941, 45.141426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914841, 35.985580, 45.428608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070137, 35.622948, 45.362411>,  <37.163315, 35.405369, 45.322693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070137, 35.622948, 45.362411>,  <36.914841, 35.985580, 45.428608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070137, 35.622948, 45.362411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743437, 0.414223, -0.525091,
		0.544585, 0.080831, 0.834801,
		0.388238, -0.906579, -0.165487,
		37.186607, 35.350975, 45.312767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.329229, 34.094559, 26.974323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128212, 33.764084, 27.076200>,  <27.007603, 33.565800, 27.137327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128212, 33.764084, 27.076200>,  <27.329229, 34.094559, 26.974323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128212, 33.764084, 27.076200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009035, 0.289560, 0.957117,
		-0.864505, 0.483293, -0.138052,
		-0.502543, -0.826185, 0.254693,
		26.977449, 33.516228, 27.152609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728418, 34.372250, 27.340633>,  <27.329229, 34.094559, 26.974323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728418, 34.372250, 27.340633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789967, 33.997383, 27.465883>,  <26.826895, 33.772465, 27.541033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789967, 33.997383, 27.465883>,  <26.728418, 34.372250, 27.340633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789967, 33.997383, 27.465883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238036, 0.272409, 0.932273,
		-0.958991, -0.217985, -0.181163,
		0.153871, -0.937164, 0.313126,
		26.836128, 33.716232, 27.559820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234549, 34.255859, 27.820238>,  <26.728418, 34.372250, 27.340633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234549, 34.255859, 27.820238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486723, 33.959801, 27.913816>,  <26.638027, 33.782166, 27.969963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486723, 33.959801, 27.913816>,  <26.234549, 34.255859, 27.820238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486723, 33.959801, 27.913816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145736, 0.183166, 0.972220,
		-0.762437, -0.647018, 0.007608,
		0.630438, -0.740147, 0.233946,
		26.675854, 33.737755, 27.984001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938515, 33.953972, 28.414057>,  <26.234549, 34.255859, 27.820238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938515, 33.953972, 28.414057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305679, 33.795261, 28.415009>,  <26.525978, 33.700035, 28.415581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305679, 33.795261, 28.415009>,  <25.938515, 33.953972, 28.414057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305679, 33.795261, 28.415009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063175, -0.140222, 0.988103,
		-0.391721, -0.907142, -0.153778,
		0.917912, -0.396776, 0.002381,
		26.581053, 33.676228, 28.415722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929968, 33.418167, 28.953669>,  <25.938515, 33.953972, 28.414057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929968, 33.418167, 28.953669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.301367, 33.551949, 28.889132>,  <26.524206, 33.632217, 28.850409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.301367, 33.551949, 28.889132>,  <25.929968, 33.418167, 28.953669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301367, 33.551949, 28.889132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059053, 0.295968, 0.953371,
		0.366615, -0.894729, 0.255054,
		0.928497, 0.334459, -0.161342,
		26.579916, 33.652287, 28.840729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253393, 33.134335, 29.447786>,  <25.929968, 33.418167, 28.953669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253393, 33.134335, 29.447786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480721, 33.446678, 29.344036>,  <26.617117, 33.634083, 29.281786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480721, 33.446678, 29.344036>,  <26.253393, 33.134335, 29.447786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480721, 33.446678, 29.344036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144582, 0.215556, 0.965729,
		0.810006, -0.586343, 0.009607,
		0.568319, 0.780857, -0.259376,
		26.651217, 33.680935, 29.266224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647112, 33.325436, 30.068504>,  <26.253393, 33.134335, 29.447786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647112, 33.325436, 30.068504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.758957, 33.651527, 29.865637>,  <26.826063, 33.847183, 29.743916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.758957, 33.651527, 29.865637>,  <26.647112, 33.325436, 30.068504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758957, 33.651527, 29.865637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279759, 0.436137, 0.855289,
		0.918451, -0.381033, -0.106119,
		0.279611, 0.815229, -0.507169,
		26.842840, 33.896095, 29.713486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219738, 33.561298, 30.446259>,  <26.647112, 33.325436, 30.068504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219738, 33.561298, 30.446259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124432, 33.884731, 30.231068>,  <27.067247, 34.078793, 30.101954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124432, 33.884731, 30.231068>,  <27.219738, 33.561298, 30.446259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124432, 33.884731, 30.231068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175376, 0.580644, 0.795044,
		0.955234, 0.095084, -0.280155,
		-0.238267, 0.808586, -0.537976,
		27.052952, 34.127308, 30.069675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771845, 34.021824, 30.521154>,  <27.219738, 33.561298, 30.446259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771845, 34.021824, 30.521154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457069, 34.248230, 30.422890>,  <27.268204, 34.384075, 30.363932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457069, 34.248230, 30.422890>,  <27.771845, 34.021824, 30.521154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457069, 34.248230, 30.422890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226559, 0.635383, 0.738213,
		0.573930, 0.525273, -0.628245,
		-0.786940, 0.566018, -0.245660,
		27.220987, 34.418034, 30.349192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939545, 34.618324, 30.741875>,  <27.771845, 34.021824, 30.521154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939545, 34.618324, 30.741875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543381, 34.665909, 30.713774>,  <27.305683, 34.694458, 30.696913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543381, 34.665909, 30.713774>,  <27.939545, 34.618324, 30.741875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543381, 34.665909, 30.713774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002601, 0.492359, 0.870388,
		0.138132, 0.862224, -0.487328,
		-0.990410, 0.118961, -0.070254,
		27.246258, 34.701595, 30.692698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795769, 35.374210, 30.925844>,  <27.939545, 34.618324, 30.741875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795769, 35.374210, 30.925844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451984, 35.174118, 30.967968>,  <27.245714, 35.054062, 30.993242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451984, 35.174118, 30.967968>,  <27.795769, 35.374210, 30.925844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451984, 35.174118, 30.967968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045893, 0.280676, 0.958705,
		-0.509135, 0.819137, -0.264188,
		-0.859462, -0.500235, 0.105310,
		27.194145, 35.024048, 30.999561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387489, 35.815166, 31.334042>,  <27.795769, 35.374210, 30.925844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387489, 35.815166, 31.334042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.219103, 35.454388, 31.372591>,  <27.118071, 35.237923, 31.395720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.219103, 35.454388, 31.372591>,  <27.387489, 35.815166, 31.334042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219103, 35.454388, 31.372591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077466, 0.141605, 0.986888,
		-0.903763, 0.407980, -0.129481,
		-0.420965, -0.901943, 0.096372,
		27.092813, 35.183804, 31.401503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832323, 35.891151, 31.803860>,  <27.387489, 35.815166, 31.334042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832323, 35.891151, 31.803860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934235, 35.504372, 31.807583>,  <26.995382, 35.272305, 31.809816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934235, 35.504372, 31.807583>,  <26.832323, 35.891151, 31.803860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934235, 35.504372, 31.807583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005943, 0.011193, 0.999920,
		-0.966981, -0.254705, 0.008598,
		0.254781, -0.966954, 0.009310,
		27.010670, 35.214287, 31.810375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431805, 35.683647, 32.301365>,  <26.832323, 35.891151, 31.803860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431805, 35.683647, 32.301365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718809, 35.406525, 32.272533>,  <26.891012, 35.240250, 32.255234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718809, 35.406525, 32.272533>,  <26.431805, 35.683647, 32.301365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718809, 35.406525, 32.272533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101885, 0.002025, 0.994794,
		-0.689056, -0.721119, 0.072039,
		0.717511, -0.692809, -0.072076,
		26.934063, 35.198681, 32.250912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310936, 35.231964, 32.845505>,  <26.431805, 35.683647, 32.301365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310936, 35.231964, 32.845505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682762, 35.119671, 32.749920>,  <26.905857, 35.052296, 32.692570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682762, 35.119671, 32.749920>,  <26.310936, 35.231964, 32.845505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682762, 35.119671, 32.749920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256844, 0.028160, 0.966043,
		-0.264469, -0.959373, 0.098280,
		0.929563, -0.280731, -0.238962,
		26.961632, 35.035450, 32.678230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465597, 34.615650, 33.145580>,  <26.310936, 35.231964, 32.845505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465597, 34.615650, 33.145580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826496, 34.776264, 33.082691>,  <27.043036, 34.872631, 33.044956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826496, 34.776264, 33.082691>,  <26.465597, 34.615650, 33.145580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826496, 34.776264, 33.082691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122054, 0.111892, 0.986196,
		0.413582, -0.908984, 0.051945,
		0.902249, 0.401533, -0.157222,
		27.097170, 34.896725, 33.035526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858843, 34.266678, 33.672836>,  <26.465597, 34.615650, 33.145580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858843, 34.266678, 33.672836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077137, 34.586720, 33.573231>,  <27.208115, 34.778744, 33.513466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077137, 34.586720, 33.573231>,  <26.858843, 34.266678, 33.672836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077137, 34.586720, 33.573231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251285, 0.127232, 0.959515,
		0.799392, -0.586216, -0.131618,
		0.545737, 0.800102, -0.249015,
		27.240858, 34.826752, 33.498528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501589, 34.283466, 34.040657>,  <26.858843, 34.266678, 33.672836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501589, 34.283466, 34.040657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489634, 34.669994, 33.938416>,  <27.482460, 34.901913, 33.877071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489634, 34.669994, 33.938416>,  <27.501589, 34.283466, 34.040657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489634, 34.669994, 33.938416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348288, 0.249760, 0.903502,
		0.936911, -0.062019, -0.344022,
		-0.029888, 0.966320, -0.255604,
		27.480667, 34.959888, 33.861736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119987, 34.560150, 34.298653>,  <27.501589, 34.283466, 34.040657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119987, 34.560150, 34.298653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848751, 34.852642, 34.269001>,  <27.686010, 35.028137, 34.251209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848751, 34.852642, 34.269001>,  <28.119987, 34.560150, 34.298653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848751, 34.852642, 34.269001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161644, 0.246766, 0.955499,
		0.716983, 0.635931, -0.285528,
		-0.678090, 0.731231, -0.074133,
		27.645325, 35.072010, 34.246761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694038, 34.263615, 34.685528>,  <28.119987, 34.560150, 34.298653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694038, 34.263615, 34.685528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078392, 34.319359, 34.781265>,  <29.309004, 34.352806, 34.838707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078392, 34.319359, 34.781265>,  <28.694038, 34.263615, 34.685528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078392, 34.319359, 34.781265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232777, 0.061879, -0.970560,
		-0.150070, 0.988306, 0.027018,
		0.960882, 0.139363, 0.239341,
		29.366657, 34.361168, 34.853069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978437, 34.902336, 34.384052>,  <28.694038, 34.263615, 34.685528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978437, 34.902336, 34.384052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281132, 34.643959, 34.424263>,  <29.462748, 34.488934, 34.448391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281132, 34.643959, 34.424263>,  <28.978437, 34.902336, 34.384052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281132, 34.643959, 34.424263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352704, 0.273948, -0.894736,
		0.550412, 0.712534, 0.435133,
		0.756734, -0.645947, 0.100529,
		29.508152, 34.450176, 34.454422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477585, 35.238899, 34.003170>,  <28.978437, 34.902336, 34.384052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477585, 35.238899, 34.003170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627424, 34.874393, 34.071609>,  <29.717327, 34.655689, 34.112675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627424, 34.874393, 34.071609>,  <29.477585, 35.238899, 34.003170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627424, 34.874393, 34.071609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428548, 0.006525, -0.903495,
		0.822206, 0.411773, 0.392965,
		0.374599, -0.911263, 0.171100,
		29.739803, 34.601013, 34.122940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202389, 35.320114, 33.724323>,  <29.477585, 35.238899, 34.003170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202389, 35.320114, 33.724323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107220, 34.932724, 33.753834>,  <30.050117, 34.700291, 33.771542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.107220, 34.932724, 33.753834>,  <30.202389, 35.320114, 33.724323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107220, 34.932724, 33.753834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447194, -0.176654, -0.876818,
		0.862212, -0.175622, 0.475128,
		-0.237922, -0.968478, 0.073776,
		30.035843, 34.642181, 33.775967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836811, 34.965466, 33.706070>,  <30.202389, 35.320114, 33.724323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836811, 34.965466, 33.706070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.559448, 34.703880, 33.585060>,  <30.393030, 34.546928, 33.512455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.559448, 34.703880, 33.585060>,  <30.836811, 34.965466, 33.706070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559448, 34.703880, 33.585060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440567, -0.052571, -0.896179,
		0.570163, -0.754698, 0.324568,
		-0.693408, -0.653962, -0.302521,
		30.351425, 34.507690, 33.494305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215456, 34.522675, 33.274548>,  <30.836811, 34.965466, 33.706070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215456, 34.522675, 33.274548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.827026, 34.478817, 33.189701>,  <30.593969, 34.452503, 33.138794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.827026, 34.478817, 33.189701>,  <31.215456, 34.522675, 33.274548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827026, 34.478817, 33.189701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223479, -0.104429, -0.969099,
		0.084107, -0.988470, 0.125912,
		-0.971073, -0.109647, -0.212119,
		30.535704, 34.445923, 33.126064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202282, 34.169914, 32.628643>,  <31.215456, 34.522675, 33.274548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202282, 34.169914, 32.628643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.832489, 34.322350, 32.624599>,  <30.610613, 34.413811, 32.622173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.832489, 34.322350, 32.624599>,  <31.202282, 34.169914, 32.628643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832489, 34.322350, 32.624599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023350, -0.083060, -0.996271,
		-0.380508, -0.920799, 0.085686,
		-0.924483, 0.381090, -0.010105,
		30.555143, 34.436676, 32.621567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810440, 33.653381, 32.378281>,  <31.202282, 34.169914, 32.628643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810440, 33.653381, 32.378281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.594198, 33.982323, 32.307308>,  <30.464453, 34.179688, 32.264725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.594198, 33.982323, 32.307308>,  <30.810440, 33.653381, 32.378281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594198, 33.982323, 32.307308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003972, -0.213403, -0.976956,
		-0.841267, -0.527443, 0.118633,
		-0.540605, 0.822352, -0.177433,
		30.432016, 34.229027, 32.254078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325525, 33.525032, 31.865234>,  <30.810440, 33.653381, 32.378281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325525, 33.525032, 31.865234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308388, 33.924152, 31.845011>,  <30.298105, 34.163624, 31.832876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308388, 33.924152, 31.845011>,  <30.325525, 33.525032, 31.865234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308388, 33.924152, 31.845011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298935, -0.061091, -0.952316,
		-0.953312, -0.025685, 0.300895,
		-0.042842, 0.997802, -0.050560,
		30.295536, 34.223492, 31.829844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684242, 33.678085, 31.693012>,  <30.325525, 33.525032, 31.865234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684242, 33.678085, 31.693012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.942926, 33.955208, 31.565395>,  <30.098137, 34.121483, 31.488825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.942926, 33.955208, 31.565395>,  <29.684242, 33.678085, 31.693012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942926, 33.955208, 31.565395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390930, -0.058095, -0.918585,
		-0.654935, 0.718781, 0.233267,
		0.646710, 0.692805, -0.319042,
		30.136940, 34.163048, 31.469683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328213, 34.061211, 31.201225>,  <29.684242, 33.678085, 31.693012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328213, 34.061211, 31.201225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689930, 34.209614, 31.116743>,  <29.906960, 34.298656, 31.066053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689930, 34.209614, 31.116743>,  <29.328213, 34.061211, 31.201225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689930, 34.209614, 31.116743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282392, 0.148802, -0.947688,
		-0.320174, 0.916629, 0.239330,
		0.904292, 0.371010, -0.211206,
		29.961218, 34.320915, 31.053381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133059, 34.590130, 30.820763>,  <29.328213, 34.061211, 31.201225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133059, 34.590130, 30.820763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.516485, 34.527420, 30.725622>,  <29.746540, 34.489792, 30.668537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.516485, 34.527420, 30.725622>,  <29.133059, 34.590130, 30.820763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516485, 34.527420, 30.725622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235312, 0.034845, -0.971295,
		0.160567, 0.987019, -0.003491,
		0.958565, -0.156779, -0.237852,
		29.804054, 34.480385, 30.654266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387602, 35.148373, 30.316225>,  <29.133059, 34.590130, 30.820763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387602, 35.148373, 30.316225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634773, 34.838200, 30.264280>,  <29.783077, 34.652096, 30.233114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634773, 34.838200, 30.264280>,  <29.387602, 35.148373, 30.316225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634773, 34.838200, 30.264280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124611, 0.066490, -0.989975,
		0.776295, 0.627917, -0.055542,
		0.617930, -0.775435, -0.129862,
		29.820152, 34.605568, 30.225323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751753, 35.317772, 29.691868>,  <29.387602, 35.148373, 30.316225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751753, 35.317772, 29.691868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818695, 34.926464, 29.740812>,  <29.858860, 34.691677, 29.770180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818695, 34.926464, 29.740812>,  <29.751753, 35.317772, 29.691868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818695, 34.926464, 29.740812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219878, -0.158022, -0.962644,
		0.961065, 0.134199, -0.241546,
		0.167355, -0.978274, 0.122362,
		29.868902, 34.632980, 29.777521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239697, 35.167355, 29.180344>,  <29.751753, 35.317772, 29.691868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239697, 35.167355, 29.180344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086746, 34.809135, 29.271370>,  <29.994976, 34.594204, 29.325985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086746, 34.809135, 29.271370>,  <30.239697, 35.167355, 29.180344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086746, 34.809135, 29.271370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006674, -0.243598, -0.969853,
		0.923982, -0.372369, 0.087169,
		-0.382377, -0.895545, 0.227565,
		29.972033, 34.540470, 29.339640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601463, 34.592396, 28.858435>,  <30.239697, 35.167355, 29.180344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601463, 34.592396, 28.858435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259069, 34.414085, 28.963182>,  <30.053633, 34.307098, 29.026031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259069, 34.414085, 28.963182>,  <30.601463, 34.592396, 28.858435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259069, 34.414085, 28.963182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017138, -0.481774, -0.876128,
		0.516715, -0.754441, 0.404752,
		-0.855986, -0.445772, 0.261870,
		30.002274, 34.280354, 29.041744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702599, 33.861450, 28.853748>,  <30.601463, 34.592396, 28.858435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702599, 33.861450, 28.853748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316240, 33.948853, 28.798185>,  <30.084425, 34.001293, 28.764847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316240, 33.948853, 28.798185>,  <30.702599, 33.861450, 28.853748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316240, 33.948853, 28.798185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031695, -0.432672, -0.900994,
		-0.256974, -0.874671, 0.410992,
		-0.965898, 0.218506, -0.138908,
		30.026470, 34.014404, 28.756514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367022, 33.276333, 28.527203>,  <30.702599, 33.861450, 28.853748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367022, 33.276333, 28.527203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105295, 33.564232, 28.434393>,  <29.948259, 33.736973, 28.378706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105295, 33.564232, 28.434393>,  <30.367022, 33.276333, 28.527203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105295, 33.564232, 28.434393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296233, -0.526251, -0.797060,
		-0.695788, -0.452793, 0.557547,
		-0.654313, 0.719749, -0.232027,
		29.909000, 33.780155, 28.364784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771925, 32.856583, 28.289694>,  <30.367022, 33.276333, 28.527203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771925, 32.856583, 28.289694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705015, 33.235649, 28.180918>,  <29.664869, 33.463089, 28.115652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705015, 33.235649, 28.180918>,  <29.771925, 32.856583, 28.289694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705015, 33.235649, 28.180918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411058, -0.317746, -0.854440,
		-0.896131, -0.031143, 0.442696,
		-0.167275, 0.947664, -0.271940,
		29.654833, 33.519947, 28.099335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049465, 32.889355, 28.148302>,  <29.771925, 32.856583, 28.289694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049465, 32.889355, 28.148302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.201382, 33.199516, 27.946507>,  <29.292532, 33.385612, 27.825428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.201382, 33.199516, 27.946507>,  <29.049465, 32.889355, 28.148302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201382, 33.199516, 27.946507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478539, -0.302035, -0.824485,
		-0.791681, 0.554551, 0.256349,
		0.379793, 0.775402, -0.504490,
		29.315319, 33.432137, 27.795160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498260, 33.147289, 27.798853>,  <29.049465, 32.889355, 28.148302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498260, 33.147289, 27.798853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826275, 33.272682, 27.607323>,  <29.023083, 33.347919, 27.492405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826275, 33.272682, 27.607323>,  <28.498260, 33.147289, 27.798853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826275, 33.272682, 27.607323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361269, -0.365357, -0.857904,
		-0.443879, 0.876495, -0.186354,
		0.820035, 0.313482, -0.478824,
		29.072285, 33.366726, 27.463675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349337, 33.545967, 27.221069>,  <28.498260, 33.147289, 27.798853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349337, 33.545967, 27.221069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.720047, 33.412895, 27.151316>,  <28.942472, 33.333050, 27.109463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.720047, 33.412895, 27.151316>,  <28.349337, 33.545967, 27.221069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720047, 33.412895, 27.151316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281288, -0.307027, -0.909182,
		0.248928, 0.891660, -0.378124,
		0.926775, -0.332682, -0.174386,
		28.998079, 33.313091, 27.099001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569208, 33.904652, 26.626118>,  <28.349337, 33.545967, 27.221069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569208, 33.904652, 26.626118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730539, 33.542454, 26.678894>,  <28.827337, 33.325134, 26.710560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730539, 33.542454, 26.678894>,  <28.569208, 33.904652, 26.626118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730539, 33.542454, 26.678894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370274, -0.293358, -0.881384,
		0.836794, 0.306631, -0.453600,
		0.403327, -0.905494, 0.131943,
		28.851538, 33.270805, 26.718477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.306564, 30.654448, 49.502991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939110, 30.692141, 49.349510>,  <35.718636, 30.714756, 49.257423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939110, 30.692141, 49.349510>,  <36.306564, 30.654448, 49.502991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939110, 30.692141, 49.349510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372797, 0.114967, 0.920763,
		0.130878, 0.988890, -0.070483,
		-0.918637, 0.094231, -0.383702,
		35.663517, 30.720409, 49.234398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045040, 31.381649, 49.665646>,  <36.306564, 30.654448, 49.502991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045040, 31.381649, 49.665646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773720, 31.087803, 49.659386>,  <35.610928, 30.911495, 49.655628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773720, 31.087803, 49.659386>,  <36.045040, 31.381649, 49.665646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773720, 31.087803, 49.659386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221908, 0.184496, 0.957454,
		-0.700473, 0.652917, -0.288161,
		-0.678302, -0.734616, -0.015653,
		35.570229, 30.867418, 49.654690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508720, 31.601814, 50.222595>,  <36.045040, 31.381649, 49.665646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508720, 31.601814, 50.222595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396908, 31.223974, 50.153782>,  <35.329819, 30.997271, 50.112495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396908, 31.223974, 50.153782>,  <35.508720, 31.601814, 50.222595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396908, 31.223974, 50.153782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281142, -0.090794, 0.955362,
		-0.918053, 0.315418, -0.240187,
		-0.279531, -0.944600, -0.172031,
		35.313049, 30.940594, 50.102173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883522, 31.617622, 50.615795>,  <35.508720, 31.601814, 50.222595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883522, 31.617622, 50.615795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986176, 31.236139, 50.553082>,  <35.047768, 31.007250, 50.515453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986176, 31.236139, 50.553082>,  <34.883522, 31.617622, 50.615795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986176, 31.236139, 50.553082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115981, -0.191433, 0.974629,
		-0.959526, -0.231934, -0.159739,
		0.256629, -0.953709, -0.156785,
		35.063164, 30.950027, 50.506046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290550, 31.149334, 50.900307>,  <34.883522, 31.617622, 50.615795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290550, 31.149334, 50.900307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626102, 30.931787, 50.909210>,  <34.827435, 30.801260, 50.914551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626102, 30.931787, 50.909210>,  <34.290550, 31.149334, 50.900307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626102, 30.931787, 50.909210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328105, -0.472606, 0.817919,
		-0.434315, -0.693439, -0.574903,
		0.838879, -0.543863, 0.022261,
		34.877766, 30.768627, 50.915886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074993, 30.513914, 51.131844>,  <34.290550, 31.149334, 50.900307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074993, 30.513914, 51.131844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471867, 30.495152, 51.178112>,  <34.709991, 30.483894, 51.205875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471867, 30.495152, 51.178112>,  <34.074993, 30.513914, 51.131844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471867, 30.495152, 51.178112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118223, -0.650464, 0.750280,
		0.040050, -0.758088, -0.650921,
		0.992179, -0.046905, 0.115675,
		34.769520, 30.481079, 51.212814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300354, 29.893633, 51.016136>,  <34.074993, 30.513914, 51.131844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300354, 29.893633, 51.016136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565613, 30.066568, 51.260536>,  <34.724770, 30.170330, 51.407177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565613, 30.066568, 51.260536>,  <34.300354, 29.893633, 51.016136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565613, 30.066568, 51.260536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165267, -0.711587, 0.682884,
		0.730015, -0.553831, -0.400436,
		0.663148, 0.432337, 0.610999,
		34.764557, 30.196270, 51.443836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382664, 29.332363, 51.538113>,  <34.300354, 29.893633, 51.016136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382664, 29.332363, 51.538113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584362, 29.641220, 51.692791>,  <34.705379, 29.826534, 51.785599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584362, 29.641220, 51.692791>,  <34.382664, 29.332363, 51.538113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584362, 29.641220, 51.692791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158244, -0.357593, 0.920373,
		0.848940, -0.525284, -0.058127,
		0.504242, 0.772143, 0.386697,
		34.735634, 29.872864, 51.808800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966316, 29.102121, 51.938080>,  <34.382664, 29.332363, 51.538113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966316, 29.102121, 51.938080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823833, 29.453520, 52.065430>,  <34.738346, 29.664360, 52.141838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823833, 29.453520, 52.065430>,  <34.966316, 29.102121, 51.938080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823833, 29.453520, 52.065430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201326, -0.404874, 0.891933,
		0.912462, 0.253613, 0.321083,
		-0.356204, 0.878497, 0.318373,
		34.716972, 29.717070, 52.160942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039352, 29.080376, 52.685482>,  <34.966316, 29.102121, 51.938080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039352, 29.080376, 52.685482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818954, 29.413649, 52.666676>,  <34.686714, 29.613613, 52.655392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818954, 29.413649, 52.666676>,  <35.039352, 29.080376, 52.685482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818954, 29.413649, 52.666676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269542, -0.124371, 0.954924,
		0.789779, 0.538830, 0.293105,
		-0.550995, 0.833183, -0.047012,
		34.653656, 29.663603, 52.652573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178879, 29.444353, 53.260780>,  <35.039352, 29.080376, 52.685482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178879, 29.444353, 53.260780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827538, 29.613194, 53.171043>,  <34.616734, 29.714499, 53.117199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827538, 29.613194, 53.171043>,  <35.178879, 29.444353, 53.260780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827538, 29.613194, 53.171043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283345, -0.081757, 0.955527,
		0.384987, 0.902855, 0.191412,
		-0.878351, 0.422101, -0.224344,
		34.564034, 29.739824, 53.103741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007454, 29.933773, 53.859940>,  <35.178879, 29.444353, 53.260780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007454, 29.933773, 53.859940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672604, 29.860518, 53.653763>,  <34.471695, 29.816565, 53.530056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672604, 29.860518, 53.653763>,  <35.007454, 29.933773, 53.859940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672604, 29.860518, 53.653763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496479, -0.141190, 0.856489,
		-0.229631, 0.972896, 0.027270,
		-0.837125, -0.183137, -0.515444,
		34.421467, 29.805576, 53.499130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572826, 30.533676, 54.101070>,  <35.007454, 29.933773, 53.859940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572826, 30.533676, 54.101070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361385, 30.221573, 53.967339>,  <34.234520, 30.034309, 53.887100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361385, 30.221573, 53.967339>,  <34.572826, 30.533676, 54.101070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361385, 30.221573, 53.967339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669519, 0.141097, 0.729270,
		-0.521848, 0.609332, -0.596983,
		-0.528600, -0.780261, -0.334328,
		34.202805, 29.987495, 53.867039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778702, 30.679554, 53.996937>,  <34.572826, 30.533676, 54.101070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778702, 30.679554, 53.996937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847614, 30.292006, 54.068054>,  <33.888962, 30.059477, 54.110725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847614, 30.292006, 54.068054>,  <33.778702, 30.679554, 53.996937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847614, 30.292006, 54.068054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796644, -0.030884, 0.603659,
		-0.579375, -0.245641, -0.777164,
		0.172286, -0.968868, 0.177795,
		33.899300, 30.001345, 54.121391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580124, 31.310217, 54.039211>,  <33.778702, 30.679554, 53.996937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580124, 31.310217, 54.039211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196930, 31.422880, 54.060848>,  <32.967014, 31.490479, 54.073830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196930, 31.422880, 54.060848>,  <33.580124, 31.310217, 54.039211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196930, 31.422880, 54.060848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226579, 0.858868, -0.459356,
		-0.175843, -0.427801, -0.886603,
		-0.957988, 0.281661, 0.054096,
		32.909534, 31.507378, 54.077076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414612, 31.330929, 53.393353>,  <33.580124, 31.310217, 54.039211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414612, 31.330929, 53.393353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164619, 31.566689, 53.598099>,  <33.014622, 31.708145, 53.720947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164619, 31.566689, 53.598099>,  <33.414612, 31.330929, 53.393353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164619, 31.566689, 53.598099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119519, 0.720213, -0.683380,
		-0.771435, -0.365923, -0.520565,
		-0.624983, 0.589401, 0.511863,
		32.977123, 31.743509, 53.751659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862144, 31.540350, 52.970570>,  <33.414612, 31.330929, 53.393353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862144, 31.540350, 52.970570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832558, 31.820000, 53.255035>,  <32.814804, 31.987789, 53.425716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832558, 31.820000, 53.255035>,  <32.862144, 31.540350, 52.970570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832558, 31.820000, 53.255035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054340, 0.714883, -0.697129,
		-0.995779, -0.012923, -0.090871,
		-0.073971, 0.699125, 0.711163,
		32.810368, 32.029736, 53.468384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267323, 32.010212, 52.739418>,  <32.862144, 31.540350, 52.970570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267323, 32.010212, 52.739418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501751, 32.214893, 52.990711>,  <32.642410, 32.337704, 53.141487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501751, 32.214893, 52.990711>,  <32.267323, 32.010212, 52.739418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501751, 32.214893, 52.990711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081974, 0.733924, -0.674266,
		-0.806101, 0.446668, 0.388186,
		0.586073, 0.511705, 0.628232,
		32.677574, 32.368404, 53.179180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063488, 32.788654, 52.706287>,  <32.267323, 32.010212, 52.739418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063488, 32.788654, 52.706287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427952, 32.826992, 52.866589>,  <32.646629, 32.849995, 52.962769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427952, 32.826992, 52.866589>,  <32.063488, 32.788654, 52.706287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427952, 32.826992, 52.866589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247171, 0.651044, -0.717669,
		-0.329692, 0.752965, 0.569514,
		0.911158, 0.095842, 0.400755,
		32.701298, 32.855743, 52.986816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193661, 33.453930, 52.619778>,  <32.063488, 32.788654, 52.706287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193661, 33.453930, 52.619778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561852, 33.309258, 52.678986>,  <32.782764, 33.222454, 52.714508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561852, 33.309258, 52.678986>,  <32.193661, 33.453930, 52.619778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561852, 33.309258, 52.678986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373803, 0.704380, -0.603424,
		0.113986, 0.610767, 0.783563,
		0.920477, -0.361680, 0.148017,
		32.837994, 33.200752, 52.723392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575027, 34.017235, 52.452625>,  <32.193661, 33.453930, 52.619778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575027, 34.017235, 52.452625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839481, 33.717564, 52.436466>,  <32.998154, 33.537762, 52.426769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839481, 33.717564, 52.436466>,  <32.575027, 34.017235, 52.452625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839481, 33.717564, 52.436466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474299, 0.459067, -0.751198,
		0.581329, 0.477480, 0.658840,
		0.661134, -0.749180, -0.040401,
		33.037823, 33.492809, 52.424347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197750, 34.350372, 52.411285>,  <32.575027, 34.017235, 52.452625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197750, 34.350372, 52.411285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245090, 33.977192, 52.275291>,  <33.273495, 33.753284, 52.193695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245090, 33.977192, 52.275291>,  <33.197750, 34.350372, 52.411285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245090, 33.977192, 52.275291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519939, 0.349930, -0.779238,
		0.845964, -0.084546, 0.526495,
		0.118355, -0.932953, -0.339987,
		33.280598, 33.697308, 52.173294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911728, 34.303452, 52.196743>,  <33.197750, 34.350372, 52.411285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911728, 34.303452, 52.196743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724888, 34.002193, 52.011444>,  <33.612785, 33.821438, 51.900265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724888, 34.002193, 52.011444>,  <33.911728, 34.303452, 52.196743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724888, 34.002193, 52.011444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569858, 0.144177, -0.808996,
		0.676079, -0.641864, 0.361839,
		-0.467097, -0.753142, -0.463246,
		33.584759, 33.776249, 51.872471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434025, 33.975887, 51.830853>,  <33.911728, 34.303452, 52.196743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434025, 33.975887, 51.830853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093689, 33.857548, 51.657169>,  <33.889488, 33.786545, 51.552959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093689, 33.857548, 51.657169>,  <34.434025, 33.975887, 51.830853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093689, 33.857548, 51.657169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468696, -0.053872, -0.881716,
		0.237464, -0.953714, 0.184500,
		-0.850844, -0.295850, -0.434209,
		33.838436, 33.768791, 51.526905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627110, 33.506050, 51.347122>,  <34.434025, 33.975887, 51.830853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627110, 33.506050, 51.347122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264053, 33.621677, 51.225384>,  <34.046219, 33.691051, 51.152340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264053, 33.621677, 51.225384>,  <34.627110, 33.506050, 51.347122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264053, 33.621677, 51.225384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381874, 0.267715, -0.884591,
		-0.174227, -0.919114, -0.353376,
		-0.907644, 0.289065, -0.304342,
		33.991760, 33.708397, 51.134083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576363, 33.251625, 50.624378>,  <34.627110, 33.506050, 51.347122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576363, 33.251625, 50.624378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312824, 33.550770, 50.656952>,  <34.154701, 33.730255, 50.676498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312824, 33.550770, 50.656952>,  <34.576363, 33.251625, 50.624378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312824, 33.550770, 50.656952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252943, 0.322178, -0.912262,
		-0.708481, -0.580438, -0.401431,
		-0.658843, 0.747859, 0.081439,
		34.115170, 33.775127, 50.681385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088505, 33.129631, 50.103477>,  <34.576363, 33.251625, 50.624378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088505, 33.129631, 50.103477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068233, 33.517807, 50.197865>,  <34.056068, 33.750713, 50.254498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068233, 33.517807, 50.197865>,  <34.088505, 33.129631, 50.103477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068233, 33.517807, 50.197865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105253, 0.240147, -0.965014,
		-0.993153, -0.024072, -0.114312,
		-0.050682, 0.970438, 0.235969,
		34.053028, 33.808937, 50.268654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559898, 33.442307, 49.678295>,  <34.088505, 33.129631, 50.103477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559898, 33.442307, 49.678295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813206, 33.723083, 49.808674>,  <33.965191, 33.891548, 49.886902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813206, 33.723083, 49.808674>,  <33.559898, 33.442307, 49.678295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813206, 33.723083, 49.808674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257152, 0.206388, -0.944075,
		-0.729959, 0.681674, -0.049806,
		0.633272, 0.701943, 0.325949,
		34.003189, 33.933666, 49.906460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730286, 33.504993, 49.732132>,  <33.559898, 33.442307, 49.678295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730286, 33.504993, 49.732132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384422, 33.483463, 49.532341>,  <32.176907, 33.470547, 49.412468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384422, 33.483463, 49.532341>,  <32.730286, 33.504993, 49.732132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384422, 33.483463, 49.532341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493688, -0.092975, 0.864655,
		-0.092975, 0.994213, 0.053821,
		-0.864655, -0.053821, -0.499475,
		32.125027, 33.467316, 49.382500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301037, 33.842846, 50.208302>,  <32.730286, 33.504993, 49.732132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301037, 33.842846, 50.208302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035603, 33.657944, 49.973022>,  <31.876341, 33.547005, 49.831856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035603, 33.657944, 49.973022>,  <32.301037, 33.842846, 50.208302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035603, 33.657944, 49.973022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541803, -0.245196, 0.803945,
		-0.515849, 0.852174, -0.087741,
		-0.663588, -0.462253, -0.588195,
		31.836527, 33.519268, 49.796562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588715, 34.108585, 50.358349>,  <32.301037, 33.842846, 50.208302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588715, 34.108585, 50.358349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538143, 33.760479, 50.167915>,  <31.507801, 33.551617, 50.053654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538143, 33.760479, 50.167915>,  <31.588715, 34.108585, 50.358349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538143, 33.760479, 50.167915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542816, -0.341011, 0.767504,
		-0.830281, 0.355460, -0.429280,
		-0.126428, -0.870264, -0.476084,
		31.500216, 33.499401, 50.025089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974094, 33.877789, 50.558418>,  <31.588715, 34.108585, 50.358349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974094, 33.877789, 50.558418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.114656, 33.522930, 50.438763>,  <31.198994, 33.310013, 50.366970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.114656, 33.522930, 50.438763>,  <30.974094, 33.877789, 50.558418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114656, 33.522930, 50.438763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604944, -0.459016, 0.650651,
		-0.714534, -0.047677, -0.697974,
		0.351402, -0.887148, -0.299140,
		31.220078, 33.256786, 50.349022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284624, 33.388119, 50.403343>,  <30.974094, 33.877789, 50.558418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284624, 33.388119, 50.403343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.595196, 33.139797, 50.446716>,  <30.781538, 32.990803, 50.472740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.595196, 33.139797, 50.446716>,  <30.284624, 33.388119, 50.403343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595196, 33.139797, 50.446716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530370, -0.550749, 0.644502,
		-0.340391, -0.557921, -0.756874,
		0.776429, -0.620806, 0.108434,
		30.828125, 32.953556, 50.479248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938751, 32.747742, 50.366478>,  <30.284624, 33.388119, 50.403343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938751, 32.747742, 50.366478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287779, 32.685471, 50.551685>,  <30.497196, 32.648109, 50.662811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287779, 32.685471, 50.551685>,  <29.938751, 32.747742, 50.366478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287779, 32.685471, 50.551685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455152, -0.603249, 0.654925,
		0.177360, -0.782212, -0.597233,
		0.872571, -0.155674, 0.463018,
		30.549551, 32.638767, 50.690590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056282, 32.004864, 50.393929>,  <29.938751, 32.747742, 50.366478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056282, 32.004864, 50.393929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.252254, 32.192905, 50.687584>,  <30.369839, 32.305733, 50.863777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.252254, 32.192905, 50.687584>,  <30.056282, 32.004864, 50.393929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252254, 32.192905, 50.687584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422936, -0.608211, 0.671717,
		0.762293, -0.639591, -0.099156,
		0.489932, 0.470109, 0.734142,
		30.399235, 32.333939, 50.907825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992817, 31.255299, 50.136738>,  <30.056282, 32.004864, 50.393929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992817, 31.255299, 50.136738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650145, 31.135798, 49.968529>,  <29.444540, 31.064096, 49.867603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650145, 31.135798, 49.968529>,  <29.992817, 31.255299, 50.136738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650145, 31.135798, 49.968529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273871, 0.427417, -0.861574,
		0.437156, -0.853258, -0.284332,
		-0.856674, -0.298772, -0.420531,
		29.393139, 31.046171, 49.842373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105864, 30.807306, 49.476837>,  <29.992817, 31.255299, 50.136738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105864, 30.807306, 49.476837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754568, 30.998585, 49.474934>,  <29.543791, 31.113352, 49.473793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754568, 30.998585, 49.474934>,  <30.105864, 30.807306, 49.476837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754568, 30.998585, 49.474934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229075, 0.411938, -0.881948,
		-0.419784, -0.775652, -0.471323,
		-0.878241, 0.478196, -0.004758,
		29.491096, 31.142044, 49.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862803, 30.726460, 48.819122>,  <30.105864, 30.807306, 49.476837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862803, 30.726460, 48.819122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651825, 31.036531, 48.958206>,  <29.525238, 31.222574, 49.041656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651825, 31.036531, 48.958206>,  <29.862803, 30.726460, 48.819122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651825, 31.036531, 48.958206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143651, 0.484743, -0.862780,
		-0.837358, -0.405118, -0.367029,
		-0.527443, 0.775180, 0.347708,
		29.493591, 31.269085, 49.062519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494230, 30.903740, 48.256207>,  <29.862803, 30.726460, 48.819122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494230, 30.903740, 48.256207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.486485, 31.242023, 48.469524>,  <29.481838, 31.444994, 48.597515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.486485, 31.242023, 48.469524>,  <29.494230, 30.903740, 48.256207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486485, 31.242023, 48.469524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203173, 0.525592, -0.826120,
		-0.978951, 0.092355, -0.182002,
		-0.019363, 0.845709, 0.533293,
		29.480677, 31.495737, 48.629513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093334, 31.331076, 47.948933>,  <29.494230, 30.903740, 48.256207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093334, 31.331076, 47.948933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.330587, 31.564741, 48.170544>,  <29.472939, 31.704941, 48.303509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.330587, 31.564741, 48.170544>,  <29.093334, 31.331076, 47.948933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330587, 31.564741, 48.170544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184676, 0.571079, -0.799852,
		-0.783639, 0.576733, 0.230844,
		0.593131, 0.584163, 0.554029,
		29.508528, 31.739990, 48.336754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093781, 31.978844, 47.682983>,  <29.093334, 31.331076, 47.948933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093781, 31.978844, 47.682983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.421070, 32.011745, 47.910576>,  <29.617443, 32.031487, 48.047131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.421070, 32.011745, 47.910576>,  <29.093781, 31.978844, 47.682983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421070, 32.011745, 47.910576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459401, 0.501468, -0.733130,
		-0.345629, 0.861257, 0.372527,
		0.818224, 0.082252, 0.568985,
		29.666538, 32.036423, 48.081272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263592, 32.585957, 47.620758>,  <29.093781, 31.978844, 47.682983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263592, 32.585957, 47.620758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.596367, 32.438808, 47.786915>,  <29.796032, 32.350521, 47.886608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.596367, 32.438808, 47.786915>,  <29.263592, 32.585957, 47.620758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596367, 32.438808, 47.786915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554178, 0.588244, -0.588945,
		-0.027701, 0.720168, 0.693246,
		0.831937, -0.367867, 0.415396,
		29.845947, 32.328449, 47.911533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.736275, 28.148472, 51.152313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751175, 27.907124, 50.833675>,  <32.760113, 27.762316, 50.642494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.751175, 27.907124, 50.833675>,  <32.736275, 28.148472, 51.152313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751175, 27.907124, 50.833675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013199, 0.796778, -0.604128,
		0.999219, 0.033016, 0.021714,
		0.037248, -0.603369, -0.796592,
		32.762348, 27.726112, 50.594696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054150, 28.494583, 51.309299>,  <32.736275, 28.148472, 51.152313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054150, 28.494583, 51.309299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.291008, 28.766069, 51.483059>,  <32.433125, 28.928961, 51.587315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.291008, 28.766069, 51.483059>,  <32.054150, 28.494583, 51.309299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291008, 28.766069, 51.483059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309183, 0.306457, -0.900272,
		-0.744155, 0.667404, -0.028380,
		0.592148, 0.678717, 0.434401,
		32.468651, 28.969685, 51.613380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894196, 29.238960, 51.133957>,  <32.054150, 28.494583, 51.309299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894196, 29.238960, 51.133957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282471, 29.210615, 51.225819>,  <32.515438, 29.193607, 51.280933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282471, 29.210615, 51.225819>,  <31.894196, 29.238960, 51.133957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282471, 29.210615, 51.225819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240316, 0.273864, -0.931261,
		0.003098, 0.959154, 0.282866,
		0.970690, -0.070862, 0.229652,
		32.573677, 29.189356, 51.294716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225216, 29.834372, 50.956306>,  <31.894196, 29.238960, 51.133957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225216, 29.834372, 50.956306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.508896, 29.553467, 50.981152>,  <32.679104, 29.384924, 50.996059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.508896, 29.553467, 50.981152>,  <32.225216, 29.834372, 50.956306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508896, 29.553467, 50.981152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272680, 0.191996, -0.942753,
		0.650136, 0.685539, 0.327657,
		0.709203, -0.702263, 0.062109,
		32.721657, 29.342789, 50.999783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826180, 30.115192, 50.696617>,  <32.225216, 29.834372, 50.956306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826180, 30.115192, 50.696617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882298, 29.720104, 50.669117>,  <32.915966, 29.483051, 50.652618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882298, 29.720104, 50.669117>,  <32.826180, 30.115192, 50.696617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882298, 29.720104, 50.669117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339729, 0.113242, -0.933681,
		0.930001, 0.107632, 0.351444,
		0.140292, -0.987720, -0.068750,
		32.924385, 29.423788, 50.648491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451012, 30.029999, 50.282589>,  <32.826180, 30.115192, 50.696617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451012, 30.029999, 50.282589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293732, 29.664295, 50.243542>,  <33.199364, 29.444874, 50.220112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293732, 29.664295, 50.243542>,  <33.451012, 30.029999, 50.282589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293732, 29.664295, 50.243542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253035, -0.005526, -0.967441,
		0.883951, -0.405096, 0.233512,
		-0.393197, -0.914257, -0.097619,
		33.175774, 29.390018, 50.214256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970680, 29.668753, 49.888874>,  <33.451012, 30.029999, 50.282589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970680, 29.668753, 49.888874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622383, 29.477943, 49.841122>,  <33.413406, 29.363457, 49.812469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622383, 29.477943, 49.841122>,  <33.970680, 29.668753, 49.888874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622383, 29.477943, 49.841122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262328, -0.245271, -0.933288,
		0.415921, -0.843972, 0.338705,
		-0.870743, -0.477025, -0.119384,
		33.361160, 29.334835, 49.805305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196526, 29.077370, 49.731674>,  <33.970680, 29.668753, 49.888874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196526, 29.077370, 49.731674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826584, 29.127628, 49.588089>,  <33.604618, 29.157784, 49.501938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826584, 29.127628, 49.588089>,  <34.196526, 29.077370, 49.731674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826584, 29.127628, 49.588089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344531, -0.122887, -0.930697,
		-0.161055, -0.984434, 0.070362,
		-0.924857, 0.125651, -0.358960,
		33.549126, 29.165323, 49.480400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234795, 28.626488, 49.179028>,  <34.196526, 29.077370, 49.731674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234795, 28.626488, 49.179028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.918446, 28.861736, 49.111332>,  <33.728638, 29.002886, 49.070713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.918446, 28.861736, 49.111332>,  <34.234795, 28.626488, 49.179028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918446, 28.861736, 49.111332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232958, 0.033588, -0.971906,
		-0.565913, -0.808076, -0.163571,
		-0.790868, 0.588120, -0.169240,
		33.681187, 29.038172, 49.060558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029144, 28.399561, 48.384769>,  <34.234795, 28.626488, 49.179028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029144, 28.399561, 48.384769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.837891, 28.742151, 48.462574>,  <33.723137, 28.947706, 48.509258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.837891, 28.742151, 48.462574>,  <34.029144, 28.399561, 48.384769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837891, 28.742151, 48.462574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158348, 0.301903, -0.940096,
		-0.863894, -0.418691, -0.279972,
		-0.478134, 0.856477, 0.194513,
		33.694450, 28.999094, 48.520927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544754, 28.446611, 47.779663>,  <34.029144, 28.399561, 48.384769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544754, 28.446611, 47.779663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566536, 28.814692, 47.934719>,  <33.579605, 29.035540, 48.027752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566536, 28.814692, 47.934719>,  <33.544754, 28.446611, 47.779663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566536, 28.814692, 47.934719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025577, 0.389370, -0.920726,
		-0.998189, 0.040226, 0.044741,
		0.054458, 0.920203, 0.387636,
		33.582874, 29.090752, 48.051010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937668, 28.805691, 47.561169>,  <33.544754, 28.446611, 47.779663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937668, 28.805691, 47.561169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219990, 29.080154, 47.631622>,  <33.389385, 29.244833, 47.673893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219990, 29.080154, 47.631622>,  <32.937668, 28.805691, 47.561169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219990, 29.080154, 47.631622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037828, 0.211774, -0.976586,
		-0.707393, 0.695945, 0.123516,
		0.705808, 0.686158, 0.176134,
		33.431732, 29.286001, 47.684464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204975, 29.104998, 47.696468>,  <32.937668, 28.805691, 47.561169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204975, 29.104998, 47.696468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.855881, 28.947428, 47.581127>,  <31.646423, 28.852886, 47.511921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.855881, 28.947428, 47.581127>,  <32.204975, 29.104998, 47.696468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855881, 28.947428, 47.581127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241799, -0.164316, 0.956312,
		-0.424098, 0.904335, 0.048154,
		-0.872739, -0.393927, -0.288354,
		31.594059, 28.829250, 47.494621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631161, 29.495455, 48.065567>,  <32.204975, 29.104998, 47.696468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631161, 29.495455, 48.065567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466516, 29.151711, 47.944191>,  <31.367731, 28.945463, 47.871365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466516, 29.151711, 47.944191>,  <31.631161, 29.495455, 48.065567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466516, 29.151711, 47.944191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408093, -0.123913, 0.904492,
		-0.814885, 0.496130, -0.299695,
		-0.411610, -0.859360, -0.303442,
		31.343033, 28.893902, 47.853157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905680, 29.493725, 48.247463>,  <31.631161, 29.495455, 48.065567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905680, 29.493725, 48.247463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.953262, 29.100573, 48.191193>,  <30.981812, 28.864681, 48.157429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.953262, 29.100573, 48.191193>,  <30.905680, 29.493725, 48.247463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953262, 29.100573, 48.191193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617847, -0.184189, 0.764421,
		-0.777248, -0.004014, -0.629182,
		0.118957, -0.982882, -0.140681,
		30.988949, 28.805708, 48.148987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215866, 29.234915, 48.400043>,  <30.905680, 29.493725, 48.247463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215866, 29.234915, 48.400043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.459488, 28.917679, 48.396885>,  <30.605661, 28.727337, 48.394989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.459488, 28.917679, 48.396885>,  <30.215866, 29.234915, 48.400043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459488, 28.917679, 48.396885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557227, -0.434968, 0.707320,
		-0.564404, -0.426395, -0.706849,
		0.609054, -0.793090, -0.007899,
		30.642204, 28.679752, 48.394516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681437, 28.605452, 48.278912>,  <30.215866, 29.234915, 48.400043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681437, 28.605452, 48.278912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.025215, 28.491032, 48.448391>,  <30.231483, 28.422379, 48.550079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.025215, 28.491032, 48.448391>,  <29.681437, 28.605452, 48.278912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025215, 28.491032, 48.448391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509878, -0.539735, 0.669859,
		0.037073, -0.791745, -0.609725,
		0.859448, -0.286052, 0.423703,
		30.283049, 28.405216, 48.575500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595087, 27.945774, 48.491508>,  <29.681437, 28.605452, 48.278912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595087, 27.945774, 48.491508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.908600, 28.074703, 48.703846>,  <30.096706, 28.152061, 48.831249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.908600, 28.074703, 48.703846>,  <29.595087, 27.945774, 48.491508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908600, 28.074703, 48.703846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289359, -0.566785, 0.771379,
		0.549508, -0.758197, -0.350967,
		0.783781, 0.322324, 0.530844,
		30.143734, 28.171400, 48.863098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822062, 27.363333, 48.885647>,  <29.595087, 27.945774, 48.491508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822062, 27.363333, 48.885647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.981153, 27.674341, 49.080490>,  <30.076609, 27.860947, 49.197395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.981153, 27.674341, 49.080490>,  <29.822062, 27.363333, 48.885647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981153, 27.674341, 49.080490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201049, -0.444143, 0.873107,
		0.895204, -0.445194, -0.020330,
		0.397731, 0.777521, 0.487104,
		30.100473, 27.907598, 49.226620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152304, 27.081358, 49.390224>,  <29.822062, 27.363333, 48.885647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152304, 27.081358, 49.390224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.114941, 27.461857, 49.507801>,  <30.092524, 27.690157, 49.578346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.114941, 27.461857, 49.507801>,  <30.152304, 27.081358, 49.390224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114941, 27.461857, 49.507801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382389, -0.306865, 0.871557,
		0.919268, -0.030989, 0.392411,
		-0.093408, 0.951248, 0.293940,
		30.086918, 27.747231, 49.595982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573029, 27.223507, 50.000591>,  <30.152304, 27.081358, 49.390224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573029, 27.223507, 50.000591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.281179, 27.496519, 50.017563>,  <30.106070, 27.660326, 50.027744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.281179, 27.496519, 50.017563>,  <30.573029, 27.223507, 50.000591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281179, 27.496519, 50.017563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249672, -0.323634, 0.912647,
		0.636642, 0.655295, 0.406540,
		-0.729624, 0.682531, 0.042430,
		30.062292, 27.701279, 50.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607904, 27.566868, 50.666420>,  <30.573029, 27.223507, 50.000591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607904, 27.566868, 50.666420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.228607, 27.643459, 50.565090>,  <30.001030, 27.689415, 50.504292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.228607, 27.643459, 50.565090>,  <30.607904, 27.566868, 50.666420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228607, 27.643459, 50.565090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287462, -0.178656, 0.940982,
		0.134921, 0.965100, 0.224452,
		-0.948242, 0.191480, -0.253325,
		29.944134, 27.700903, 50.489094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433149, 27.939932, 51.220459>,  <30.607904, 27.566868, 50.666420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433149, 27.939932, 51.220459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.090496, 27.853426, 51.033096>,  <29.884903, 27.801523, 50.920677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.090496, 27.853426, 51.033096>,  <30.433149, 27.939932, 51.220459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090496, 27.853426, 51.033096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493596, 0.079349, 0.866064,
		-0.150131, 0.973105, -0.174720,
		-0.856635, -0.216264, -0.468408,
		29.833506, 27.788548, 50.892574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000845, 28.506187, 51.393646>,  <30.433149, 27.939932, 51.220459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000845, 28.506187, 51.393646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.751139, 28.210211, 51.293423>,  <29.601315, 28.032625, 51.233288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.751139, 28.210211, 51.293423>,  <30.000845, 28.506187, 51.393646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751139, 28.210211, 51.293423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496587, 0.128268, 0.858457,
		-0.603069, 0.660329, -0.447519,
		-0.624266, -0.739941, -0.250556,
		29.563858, 27.988228, 51.218254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348267, 28.792305, 51.644459>,  <30.000845, 28.506187, 51.393646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348267, 28.792305, 51.644459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.342178, 28.396303, 51.588367>,  <29.338526, 28.158703, 51.554714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.342178, 28.396303, 51.588367>,  <29.348267, 28.792305, 51.644459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342178, 28.396303, 51.588367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213935, -0.133772, 0.967645,
		-0.976729, 0.044726, -0.209760,
		-0.015219, -0.990002, -0.140227,
		29.337612, 28.099302, 51.546299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752726, 28.358488, 51.801159>,  <29.348267, 28.792305, 51.644459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752726, 28.358488, 51.801159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086493, 28.147600, 51.865391>,  <29.286753, 28.021067, 51.903931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086493, 28.147600, 51.865391>,  <28.752726, 28.358488, 51.801159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086493, 28.147600, 51.865391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280156, -0.154852, 0.947383,
		-0.474616, -0.835498, -0.276915,
		0.834417, -0.527222, 0.160575,
		29.336819, 27.989433, 51.913563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365759, 28.649525, 51.309299>,  <28.752726, 28.358488, 51.801159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365759, 28.649525, 51.309299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277468, 28.958092, 51.548027>,  <28.224493, 29.143232, 51.691265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277468, 28.958092, 51.548027>,  <28.365759, 28.649525, 51.309299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277468, 28.958092, 51.548027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213160, 0.635275, -0.742286,
		-0.951758, -0.036624, -0.304657,
		-0.220726, 0.771417, 0.596821,
		28.211250, 29.189516, 51.727074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847368, 29.123590, 50.942394>,  <28.365759, 28.649525, 51.309299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847368, 29.123590, 50.942394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.065573, 29.330238, 51.206371>,  <28.196495, 29.454227, 51.364758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.065573, 29.330238, 51.206371>,  <27.847368, 29.123590, 50.942394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065573, 29.330238, 51.206371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240424, 0.657864, -0.713730,
		-0.802879, 0.548013, 0.234664,
		0.545511, 0.516620, 0.659941,
		28.229225, 29.485224, 51.404354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582094, 29.866884, 50.907516>,  <27.847368, 29.123590, 50.942394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582094, 29.866884, 50.907516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.958252, 29.871899, 51.043457>,  <28.183947, 29.874908, 51.125023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.958252, 29.871899, 51.043457>,  <27.582094, 29.866884, 50.907516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958252, 29.871899, 51.043457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183375, 0.822905, -0.537774,
		-0.286407, 0.568041, 0.771557,
		0.940396, 0.012538, 0.339850,
		28.240372, 29.875660, 51.145412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637880, 30.611341, 51.018940>,  <27.582094, 29.866884, 50.907516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637880, 30.611341, 51.018940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.988646, 30.422108, 50.984962>,  <28.199104, 30.308567, 50.964577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.988646, 30.422108, 50.984962>,  <27.637880, 30.611341, 51.018940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988646, 30.422108, 50.984962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306319, 0.686243, -0.659727,
		0.370396, 0.552504, 0.746690,
		0.876912, -0.473085, -0.084939,
		28.251719, 30.280182, 50.959480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158947, 31.132149, 50.973515>,  <27.637880, 30.611341, 51.018940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158947, 31.132149, 50.973515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.362392, 30.818834, 50.830532>,  <28.484459, 30.630846, 50.744743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.362392, 30.818834, 50.830532>,  <28.158947, 31.132149, 50.973515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362392, 30.818834, 50.830532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428062, 0.590267, -0.684359,
		0.747044, 0.195061, 0.635513,
		0.508614, -0.783286, -0.357457,
		28.514977, 30.583849, 50.723293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755333, 31.506247, 50.775620>,  <28.158947, 31.132149, 50.973515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755333, 31.506247, 50.775620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.791174, 31.139378, 50.620308>,  <28.812679, 30.919256, 50.527119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.791174, 31.139378, 50.620308>,  <28.755333, 31.506247, 50.775620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791174, 31.139378, 50.620308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567065, 0.367473, -0.737157,
		0.818784, -0.154129, 0.553025,
		0.089605, -0.917174, -0.388282,
		28.818056, 30.864225, 50.503822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497282, 31.401867, 50.677853>,  <28.755333, 31.506247, 50.775620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497282, 31.401867, 50.677853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.311598, 31.139450, 50.439819>,  <29.200188, 30.982000, 50.297001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.311598, 31.139450, 50.439819>,  <29.497282, 31.401867, 50.677853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311598, 31.139450, 50.439819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557536, 0.305618, -0.771849,
		0.688231, -0.690079, 0.223895,
		-0.464210, -0.656040, -0.595080,
		29.172335, 30.942638, 50.261295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180567, 31.497997, 50.915714>,  <29.497282, 31.401867, 50.677853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180567, 31.497997, 50.915714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273083, 31.835260, 51.109863>,  <30.328592, 32.037621, 51.226353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273083, 31.835260, 51.109863>,  <30.180567, 31.497997, 50.915714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273083, 31.835260, 51.109863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183028, -0.452282, 0.872892,
		0.955514, -0.290726, 0.049714,
		0.231288, 0.843160, 0.485373,
		30.342468, 32.088207, 51.255474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524698, 31.227993, 51.521694>,  <30.180567, 31.497997, 50.915714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524698, 31.227993, 51.521694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424595, 31.607626, 51.598228>,  <30.364532, 31.835405, 51.644150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.424595, 31.607626, 51.598228>,  <30.524698, 31.227993, 51.521694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424595, 31.607626, 51.598228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049744, -0.184759, 0.981524,
		0.966900, 0.255153, -0.000974,
		-0.250259, 0.949085, 0.191336,
		30.349518, 31.892351, 51.655628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965172, 31.436863, 52.066280>,  <30.524698, 31.227993, 51.521694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965172, 31.436863, 52.066280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.642427, 31.672958, 52.056511>,  <30.448782, 31.814615, 52.050652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.642427, 31.672958, 52.056511>,  <30.965172, 31.436863, 52.066280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642427, 31.672958, 52.056511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156565, -0.173800, 0.972256,
		0.569618, 0.788297, 0.232643,
		-0.806860, 0.590238, -0.024420,
		30.400370, 31.850029, 52.049187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967796, 31.681253, 52.750603>,  <30.965172, 31.436863, 52.066280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967796, 31.681253, 52.750603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.604105, 31.783129, 52.618885>,  <30.385889, 31.844254, 52.539856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.604105, 31.783129, 52.618885>,  <30.967796, 31.681253, 52.750603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604105, 31.783129, 52.618885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369633, -0.130044, 0.920033,
		0.191500, 0.958239, 0.212382,
		-0.909230, 0.254689, -0.329293,
		30.331335, 31.859535, 52.520096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710989, 32.105999, 53.250633>,  <30.967796, 31.681253, 52.750603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710989, 32.105999, 53.250633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385952, 31.973511, 53.058804>,  <30.190929, 31.894018, 52.943707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385952, 31.973511, 53.058804>,  <30.710989, 32.105999, 53.250633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385952, 31.973511, 53.058804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488164, -0.062749, 0.870493,
		-0.318415, 0.941466, -0.110699,
		-0.812593, -0.331217, -0.479570,
		30.142174, 31.874146, 52.914932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060856, 32.565983, 53.292870>,  <30.710989, 32.105999, 53.250633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060856, 32.565983, 53.292870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932730, 32.193989, 53.220737>,  <29.855854, 31.970791, 53.177456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932730, 32.193989, 53.220737>,  <30.060856, 32.565983, 53.292870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932730, 32.193989, 53.220737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640442, 0.072327, 0.764593,
		-0.698019, 0.360406, -0.618771,
		-0.320317, -0.929988, -0.180334,
		29.836634, 31.914993, 53.166637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373016, 32.623844, 53.225071>,  <30.060856, 32.565983, 53.292870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373016, 32.623844, 53.225071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.451101, 32.248009, 53.337543>,  <29.497953, 32.022507, 53.405025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.451101, 32.248009, 53.337543>,  <29.373016, 32.623844, 53.225071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451101, 32.248009, 53.337543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580462, 0.120402, 0.805337,
		-0.790541, -0.320425, -0.521893,
		0.195213, -0.939591, 0.281177,
		29.509665, 31.966131, 53.421898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693880, 32.331985, 53.428867>,  <29.373016, 32.623844, 53.225071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693880, 32.331985, 53.428867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.947573, 32.073601, 53.598801>,  <29.099789, 31.918570, 53.700760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.947573, 32.073601, 53.598801>,  <28.693880, 32.331985, 53.428867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947573, 32.073601, 53.598801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604595, -0.071892, 0.793282,
		-0.481889, -0.759975, -0.436143,
		0.634230, -0.645964, 0.424834,
		29.137842, 31.879812, 53.726250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250648, 32.001053, 53.850903>,  <28.693880, 32.331985, 53.428867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250648, 32.001053, 53.850903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.598322, 31.869810, 53.998882>,  <28.806927, 31.791065, 54.087669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.598322, 31.869810, 53.998882>,  <28.250648, 32.001053, 53.850903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598322, 31.869810, 53.998882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432175, -0.140483, 0.890780,
		-0.240302, -0.934135, -0.263906,
		0.869184, -0.328110, 0.369952,
		28.859077, 31.771378, 54.109867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.487148, 36.153770, 39.431995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812107, 36.091679, 39.656822>,  <36.007080, 36.054424, 39.791718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812107, 36.091679, 39.656822>,  <35.487148, 36.153770, 39.431995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812107, 36.091679, 39.656822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557412, -0.489729, 0.670416,
		0.171195, -0.857946, -0.484378,
		0.812394, -0.155226, 0.562068,
		36.055824, 36.045113, 39.825443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507336, 35.477165, 39.669811>,  <35.487148, 36.153770, 39.431995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507336, 35.477165, 39.669811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722988, 35.672447, 39.944328>,  <35.852379, 35.789616, 40.109039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722988, 35.672447, 39.944328>,  <35.507336, 35.477165, 39.669811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722988, 35.672447, 39.944328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475044, -0.496597, 0.726446,
		0.695462, -0.717670, -0.035816,
		0.539135, 0.488201, 0.686289,
		35.884727, 35.818909, 40.150215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525757, 35.018368, 40.299728>,  <35.507336, 35.477165, 39.669811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525757, 35.018368, 40.299728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639084, 35.362782, 40.468655>,  <35.707081, 35.569431, 40.570011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639084, 35.362782, 40.468655>,  <35.525757, 35.018368, 40.299728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639084, 35.362782, 40.468655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487457, -0.249937, 0.836611,
		0.825903, -0.442887, 0.348906,
		0.283319, 0.861036, 0.422312,
		35.724079, 35.621094, 40.595348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790058, 34.792690, 40.892384>,  <35.525757, 35.018368, 40.299728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790058, 34.792690, 40.892384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701862, 35.177486, 40.956821>,  <35.648945, 35.408363, 40.995483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701862, 35.177486, 40.956821>,  <35.790058, 34.792690, 40.892384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701862, 35.177486, 40.956821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482410, -0.251102, 0.839183,
		0.847740, 0.107320, 0.519441,
		-0.220494, 0.961993, 0.161097,
		35.635715, 35.466084, 41.005150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807228, 34.873928, 41.599854>,  <35.790058, 34.792690, 40.892384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807228, 34.873928, 41.599854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597157, 35.197216, 41.493298>,  <35.471115, 35.391190, 41.429363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597157, 35.197216, 41.493298>,  <35.807228, 34.873928, 41.599854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597157, 35.197216, 41.493298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487965, -0.029544, 0.872363,
		0.697192, 0.588138, 0.409899,
		-0.525179, 0.808221, -0.266393,
		35.439602, 35.439682, 41.413380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768009, 35.187645, 42.183128>,  <35.807228, 34.873928, 41.599854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768009, 35.187645, 42.183128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473465, 35.370186, 41.983322>,  <35.296738, 35.479710, 41.863438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473465, 35.370186, 41.983322>,  <35.768009, 35.187645, 42.183128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473465, 35.370186, 41.983322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564137, -0.006526, 0.825656,
		0.373531, 0.889775, 0.262251,
		-0.736359, 0.456353, -0.499517,
		35.252556, 35.507092, 41.833466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707592, 35.905460, 42.444416>,  <35.768009, 35.187645, 42.183128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707592, 35.905460, 42.444416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371494, 35.760826, 42.282803>,  <35.169834, 35.674046, 42.185833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371494, 35.760826, 42.282803>,  <35.707592, 35.905460, 42.444416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371494, 35.760826, 42.282803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480291, 0.150555, 0.864091,
		-0.251611, 0.920104, -0.300169,
		-0.840246, -0.361583, -0.404036,
		35.119419, 35.652351, 42.161591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277149, 36.168625, 42.841667>,  <35.707592, 35.905460, 42.444416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277149, 36.168625, 42.841667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013531, 35.927330, 42.661995>,  <34.855358, 35.782555, 42.554192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013531, 35.927330, 42.661995>,  <35.277149, 36.168625, 42.841667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013531, 35.927330, 42.661995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577464, 0.023226, 0.816086,
		-0.481860, 0.797224, -0.363654,
		-0.659049, -0.603237, -0.449176,
		34.815815, 35.746361, 42.527241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679150, 36.464378, 42.996956>,  <35.277149, 36.168625, 42.841667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679150, 36.464378, 42.996956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557652, 36.101704, 42.879887>,  <34.484753, 35.884098, 42.809643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557652, 36.101704, 42.879887>,  <34.679150, 36.464378, 42.996956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557652, 36.101704, 42.879887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754738, 0.041500, 0.654712,
		-0.581472, 0.419758, -0.696917,
		-0.303743, -0.906686, -0.292677,
		34.466530, 35.829697, 42.792084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845612, 36.416550, 42.699936>,  <34.679150, 36.464378, 42.996956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845612, 36.416550, 42.699936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972370, 36.059307, 42.827641>,  <34.048428, 35.844959, 42.904263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972370, 36.059307, 42.827641>,  <33.845612, 36.416550, 42.699936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972370, 36.059307, 42.827641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712675, -0.002109, 0.701491,
		-0.625835, -0.449834, -0.637166,
		0.316898, -0.893110, 0.319265,
		34.067440, 35.791374, 42.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153332, 36.097145, 42.780514>,  <33.845612, 36.416550, 42.699936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153332, 36.097145, 42.780514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430138, 35.901073, 42.992489>,  <33.596222, 35.783432, 43.119675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430138, 35.901073, 42.992489>,  <33.153332, 36.097145, 42.780514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430138, 35.901073, 42.992489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680864, -0.199268, 0.704781,
		-0.239874, -0.848535, -0.471645,
		0.692015, -0.490185, 0.529938,
		33.637741, 35.754021, 43.151470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891209, 35.476242, 42.947910>,  <33.153332, 36.097145, 42.780514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891209, 35.476242, 42.947910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174416, 35.508694, 43.228519>,  <33.344337, 35.528164, 43.396885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174416, 35.508694, 43.228519>,  <32.891209, 35.476242, 42.947910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174416, 35.508694, 43.228519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674407, -0.217017, 0.705747,
		0.209499, -0.972791, -0.098937,
		0.708014, 0.081129, 0.701522,
		33.386822, 35.533031, 43.438976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404018, 34.883564, 43.063557>,  <32.891209, 35.476242, 42.947910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404018, 34.883564, 43.063557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006393, 34.844723, 43.083191>,  <31.767818, 34.821419, 43.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006393, 34.844723, 43.083191>,  <32.404018, 34.883564, 43.063557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006393, 34.844723, 43.083191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063362, 0.149928, -0.986665,
		0.088441, -0.983918, -0.155190,
		-0.994064, -0.097095, 0.049083,
		31.708174, 34.815594, 43.097916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121052, 34.263390, 42.557419>,  <32.404018, 34.883564, 43.063557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121052, 34.263390, 42.557419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826559, 34.523445, 42.632553>,  <31.649862, 34.679478, 42.677635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826559, 34.523445, 42.632553>,  <32.121052, 34.263390, 42.557419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826559, 34.523445, 42.632553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209708, 0.044716, -0.976741,
		-0.643414, -0.758500, 0.103418,
		-0.736234, 0.650136, 0.187835,
		31.605688, 34.718487, 42.688904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573385, 33.933067, 42.207966>,  <32.121052, 34.263390, 42.557419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573385, 33.933067, 42.207966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480621, 34.321095, 42.236778>,  <31.424963, 34.553909, 42.254066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480621, 34.321095, 42.236778>,  <31.573385, 33.933067, 42.207966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480621, 34.321095, 42.236778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168614, 0.032839, -0.985135,
		-0.958012, -0.240607, 0.155952,
		-0.231909, 0.970067, 0.072030,
		31.411049, 34.612114, 42.258389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954226, 34.029964, 41.872704>,  <31.573385, 33.933067, 42.207966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954226, 34.029964, 41.872704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153101, 34.376884, 41.882389>,  <31.272427, 34.585037, 41.888199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153101, 34.376884, 41.882389>,  <30.954226, 34.029964, 41.872704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153101, 34.376884, 41.882389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208014, 0.146247, -0.967131,
		-0.842337, 0.475811, 0.253124,
		0.497190, 0.867304, 0.024214,
		31.302258, 34.637077, 41.889652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567879, 34.493114, 41.553474>,  <30.954226, 34.029964, 41.872704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567879, 34.493114, 41.553474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936071, 34.647217, 41.527260>,  <31.156986, 34.739677, 41.511532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936071, 34.647217, 41.527260>,  <30.567879, 34.493114, 41.553474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936071, 34.647217, 41.527260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124023, 0.128957, -0.983864,
		-0.370588, 0.913755, 0.166483,
		0.920480, 0.385256, -0.065536,
		31.212215, 34.762794, 41.507599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378563, 35.097195, 41.211006>,  <30.567879, 34.493114, 41.553474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378563, 35.097195, 41.211006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768736, 35.023010, 41.163448>,  <31.002840, 34.978500, 41.134914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768736, 35.023010, 41.163448>,  <30.378563, 35.097195, 41.211006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768736, 35.023010, 41.163448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108928, 0.063074, -0.992046,
		0.191487, 0.980625, 0.041322,
		0.975432, -0.185463, -0.118895,
		31.061365, 34.967373, 41.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492226, 35.587765, 40.677528>,  <30.378563, 35.097195, 41.211006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492226, 35.587765, 40.677528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792004, 35.322990, 40.682781>,  <30.971870, 35.164127, 40.685932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792004, 35.322990, 40.682781>,  <30.492226, 35.587765, 40.677528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792004, 35.322990, 40.682781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138842, 0.137743, -0.980688,
		0.647344, 0.736795, 0.195135,
		0.749445, -0.661936, 0.013131,
		31.016838, 35.124409, 40.686722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119270, 35.891766, 40.337658>,  <30.492226, 35.587765, 40.677528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119270, 35.891766, 40.337658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188057, 35.498814, 40.308372>,  <31.229328, 35.263042, 40.290802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188057, 35.498814, 40.308372>,  <31.119270, 35.891766, 40.337658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188057, 35.498814, 40.308372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279740, 0.119958, -0.952552,
		0.944549, 0.143327, 0.295440,
		0.171967, -0.982378, -0.073212,
		31.239647, 35.204102, 40.286407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656219, 35.856670, 39.904495>,  <31.119270, 35.891766, 40.337658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656219, 35.856670, 39.904495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500584, 35.489655, 39.871693>,  <31.407202, 35.269444, 39.852013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500584, 35.489655, 39.871693>,  <31.656219, 35.856670, 39.904495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500584, 35.489655, 39.871693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188963, 0.007631, -0.981955,
		0.901611, -0.397565, 0.170412,
		-0.389090, -0.917543, -0.082005,
		31.383856, 35.214394, 39.847092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095715, 35.473404, 39.459183>,  <31.656219, 35.856670, 39.904495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095715, 35.473404, 39.459183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759739, 35.256344, 39.461395>,  <31.558153, 35.126110, 39.462723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759739, 35.256344, 39.461395>,  <32.095715, 35.473404, 39.459183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759739, 35.256344, 39.461395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082712, -0.138088, -0.986960,
		0.536336, -0.828532, 0.160869,
		-0.839942, -0.542648, 0.005532,
		31.507757, 35.093548, 39.463055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226875, 34.868309, 39.033672>,  <32.095715, 35.473404, 39.459183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226875, 34.868309, 39.033672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826910, 34.871944, 39.029694>,  <31.586931, 34.874126, 39.027306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826910, 34.871944, 39.029694>,  <32.226875, 34.868309, 39.033672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826910, 34.871944, 39.029694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008700, -0.128310, -0.991696,
		-0.010292, -0.991693, 0.128219,
		-0.999909, 0.009091, -0.009949,
		31.526937, 34.874672, 39.026711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037537, 34.300823, 38.656876>,  <32.226875, 34.868309, 39.033672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037537, 34.300823, 38.656876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718760, 34.542423, 38.653374>,  <31.527494, 34.687382, 38.651272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718760, 34.542423, 38.653374>,  <32.037537, 34.300823, 38.656876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718760, 34.542423, 38.653374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080952, -0.121154, -0.989327,
		-0.598612, -0.787724, 0.145448,
		-0.796938, 0.603998, -0.008756,
		31.479677, 34.723621, 38.650745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684601, 33.963203, 38.191338>,  <32.037537, 34.300823, 38.656876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684601, 33.963203, 38.191338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519424, 34.327305, 38.203415>,  <31.420319, 34.545765, 38.210659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519424, 34.327305, 38.203415>,  <31.684601, 33.963203, 38.191338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519424, 34.327305, 38.203415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304627, -0.106805, -0.946465,
		-0.858302, -0.400030, 0.321393,
		-0.412940, 0.910258, 0.030189,
		31.395542, 34.600384, 38.212471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076151, 33.867847, 37.938347>,  <31.684601, 33.963203, 38.191338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076151, 33.867847, 37.938347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107025, 34.265163, 37.903893>,  <31.125549, 34.503551, 37.883221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107025, 34.265163, 37.903893>,  <31.076151, 33.867847, 37.938347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107025, 34.265163, 37.903893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516071, -0.034115, -0.855866,
		-0.853061, 0.110512, 0.509975,
		0.077186, 0.993289, -0.086134,
		31.130180, 34.563148, 37.878052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473581, 33.415844, 37.463306>,  <31.076151, 33.867847, 37.938347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473581, 33.415844, 37.463306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180037, 33.151581, 37.400082>,  <31.003910, 32.993023, 37.362148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180037, 33.151581, 37.400082>,  <31.473581, 33.415844, 37.463306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180037, 33.151581, 37.400082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085319, 0.320481, -0.943405,
		0.673919, -0.678844, -0.291555,
		-0.733862, -0.660654, -0.158060,
		30.959877, 32.953384, 37.352665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874243, 33.051746, 37.948242>,  <31.473581, 33.415844, 37.463306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874243, 33.051746, 37.948242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037056, 32.717991, 37.799583>,  <32.134743, 32.517738, 37.710388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037056, 32.717991, 37.799583>,  <31.874243, 33.051746, 37.948242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037056, 32.717991, 37.799583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043740, -0.388608, 0.920364,
		-0.912366, -0.390874, -0.121680,
		0.407033, -0.834387, -0.371650,
		32.159164, 32.467674, 37.688087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420105, 32.449535, 37.797199>,  <31.874243, 33.051746, 37.948242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420105, 32.449535, 37.797199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796686, 32.367565, 37.904285>,  <32.022636, 32.318382, 37.968536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796686, 32.367565, 37.904285>,  <31.420105, 32.449535, 37.797199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796686, 32.367565, 37.904285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327141, -0.363308, 0.872345,
		-0.081501, -0.908853, -0.409077,
		0.941454, -0.204923, 0.267713,
		32.079121, 32.306087, 37.984600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501112, 31.688976, 38.060032>,  <31.420105, 32.449535, 37.797199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501112, 31.688976, 38.060032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797300, 31.914131, 38.206924>,  <31.975014, 32.049225, 38.295059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797300, 31.914131, 38.206924>,  <31.501112, 31.688976, 38.060032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797300, 31.914131, 38.206924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212926, -0.321786, 0.922560,
		0.637469, -0.761321, -0.118419,
		0.740470, 0.562888, 0.367233,
		32.019440, 32.082996, 38.317093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035301, 31.245102, 38.424915>,  <31.501112, 31.688976, 38.060032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035301, 31.245102, 38.424915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053177, 31.619453, 38.564709>,  <32.063904, 31.844065, 38.648582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053177, 31.619453, 38.564709>,  <32.035301, 31.245102, 38.424915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053177, 31.619453, 38.564709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145775, -0.339977, 0.929067,
		0.988308, -0.092464, 0.121235,
		0.044688, 0.935877, 0.349481,
		32.066582, 31.900217, 38.669552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365257, 31.187960, 39.059078>,  <32.035301, 31.245102, 38.424915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365257, 31.187960, 39.059078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172119, 31.537449, 39.082638>,  <32.056236, 31.747143, 39.096771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172119, 31.537449, 39.082638>,  <32.365257, 31.187960, 39.059078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172119, 31.537449, 39.082638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334819, -0.246341, 0.909512,
		0.809168, 0.419437, 0.411484,
		-0.482848, 0.873721, 0.058896,
		32.027264, 31.799564, 39.100307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553707, 31.364361, 39.772991>,  <32.365257, 31.187960, 39.059078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553707, 31.364361, 39.772991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226624, 31.564177, 39.658585>,  <32.030373, 31.684067, 39.589939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226624, 31.564177, 39.658585>,  <32.553707, 31.364361, 39.772991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226624, 31.564177, 39.658585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398850, -0.133420, 0.907259,
		0.415052, 0.855954, 0.308341,
		-0.817711, 0.499541, -0.286021,
		31.981310, 31.714039, 39.572777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517132, 31.817982, 40.258137>,  <32.553707, 31.364361, 39.772991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517132, 31.817982, 40.258137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150036, 31.808558, 40.099545>,  <31.929779, 31.802902, 40.004387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150036, 31.808558, 40.099545>,  <32.517132, 31.817982, 40.258137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150036, 31.808558, 40.099545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394780, -0.055515, 0.917097,
		-0.043619, 0.998180, 0.041647,
		-0.917740, -0.023561, -0.396483,
		31.874714, 31.801489, 39.980598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002491, 32.259346, 40.619244>,  <32.517132, 31.817982, 40.258137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002491, 32.259346, 40.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753078, 31.995501, 40.451378>,  <31.603430, 31.837194, 40.350658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753078, 31.995501, 40.451378>,  <32.002491, 32.259346, 40.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753078, 31.995501, 40.451378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611671, 0.077298, 0.787327,
		-0.486891, 0.747622, -0.451663,
		-0.623535, -0.659611, -0.419663,
		31.566017, 31.797617, 40.325478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494101, 32.359535, 41.123512>,  <32.002491, 32.259346, 40.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494101, 32.359535, 41.123512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368465, 32.063442, 40.885719>,  <31.293085, 31.885788, 40.743042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368465, 32.063442, 40.885719>,  <31.494101, 32.359535, 41.123512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368465, 32.063442, 40.885719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763878, -0.174799, 0.621236,
		-0.563773, 0.649234, -0.510544,
		-0.314086, -0.740230, -0.594483,
		31.274240, 31.841373, 40.707375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747709, 32.390003, 41.137218>,  <31.494101, 32.359535, 41.123512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747709, 32.390003, 41.137218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851330, 32.019447, 41.027897>,  <30.913502, 31.797113, 40.962303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851330, 32.019447, 41.027897>,  <30.747709, 32.390003, 41.137218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851330, 32.019447, 41.027897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549520, -0.374067, 0.747062,
		-0.794305, -0.043339, -0.605972,
		0.259051, -0.926388, -0.273308,
		30.929045, 31.741531, 40.945904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115294, 32.012691, 41.146675>,  <30.747709, 32.390003, 41.137218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115294, 32.012691, 41.146675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433502, 31.774820, 41.193146>,  <30.624428, 31.632097, 41.221027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433502, 31.774820, 41.193146>,  <30.115294, 32.012691, 41.146675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433502, 31.774820, 41.193146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367144, -0.320557, 0.873183,
		-0.482025, -0.737290, -0.473344,
		0.795523, -0.594682, 0.116175,
		30.672159, 31.596416, 41.227997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878582, 31.392441, 41.471039>,  <30.115294, 32.012691, 41.146675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878582, 31.392441, 41.471039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268448, 31.379858, 41.559620>,  <30.502367, 31.372309, 41.612770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268448, 31.379858, 41.559620>,  <29.878582, 31.392441, 41.471039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268448, 31.379858, 41.559620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221798, -0.264027, 0.938667,
		0.028945, -0.964002, -0.264314,
		0.974663, -0.031455, 0.221456,
		30.560846, 31.370420, 41.626057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975719, 30.763275, 41.760822>,  <29.878582, 31.392441, 41.471039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975719, 30.763275, 41.760822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321787, 30.930168, 41.872105>,  <30.529427, 31.030304, 41.938873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321787, 30.930168, 41.872105>,  <29.975719, 30.763275, 41.760822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321787, 30.930168, 41.872105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114016, -0.376582, 0.919340,
		0.488347, -0.827105, -0.278236,
		0.865169, 0.417234, 0.278206,
		30.581337, 31.055338, 41.955566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274696, 30.279097, 42.060181>,  <29.975719, 30.763275, 41.760822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274696, 30.279097, 42.060181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444504, 30.613232, 42.199894>,  <30.546389, 30.813713, 42.283722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444504, 30.613232, 42.199894>,  <30.274696, 30.279097, 42.060181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444504, 30.613232, 42.199894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065343, -0.356496, 0.932009,
		0.903058, -0.418479, -0.096756,
		0.424519, 0.835336, 0.349282,
		30.571859, 30.863832, 42.304680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014463, 30.000257, 42.363018>,  <30.274696, 30.279097, 42.060181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014463, 30.000257, 42.363018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950451, 30.359953, 42.525871>,  <30.912045, 30.575771, 42.623585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950451, 30.359953, 42.525871>,  <31.014463, 30.000257, 42.363018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950451, 30.359953, 42.525871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235396, -0.365785, 0.900439,
		0.958634, 0.239934, -0.153141,
		-0.160029, 0.899240, 0.407134,
		30.902443, 30.629725, 42.648010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577898, 30.230015, 42.788692>,  <31.014463, 30.000257, 42.363018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577898, 30.230015, 42.788692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256605, 30.419550, 42.933079>,  <31.063829, 30.533272, 43.019711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256605, 30.419550, 42.933079>,  <31.577898, 30.230015, 42.788692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256605, 30.419550, 42.933079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197914, -0.359259, 0.912010,
		0.561825, 0.803996, 0.194789,
		-0.803233, 0.473838, 0.360963,
		31.015635, 30.561701, 43.041367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835106, 30.630127, 43.375435>,  <31.577898, 30.230015, 42.788692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835106, 30.630127, 43.375435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438906, 30.614698, 43.428234>,  <31.201185, 30.605442, 43.459915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438906, 30.614698, 43.428234>,  <31.835106, 30.630127, 43.375435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438906, 30.614698, 43.428234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137345, -0.229344, 0.963607,
		-0.006893, 0.972581, 0.232462,
		-0.990499, -0.038570, 0.131998,
		31.141756, 30.603128, 43.467834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812408, 31.010254, 44.002682>,  <31.835106, 30.630127, 43.375435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812408, 31.010254, 44.002682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473160, 30.801991, 43.963482>,  <31.269611, 30.677032, 43.939960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473160, 30.801991, 43.963482>,  <31.812408, 31.010254, 44.002682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473160, 30.801991, 43.963482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128764, -0.382004, 0.915146,
		-0.513918, 0.763535, 0.391027,
		-0.848120, -0.520660, -0.098003,
		31.218723, 30.645792, 43.934082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391346, 31.157318, 44.618423>,  <31.812408, 31.010254, 44.002682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391346, 31.157318, 44.618423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234373, 30.821911, 44.467220>,  <31.140188, 30.620667, 44.376499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234373, 30.821911, 44.467220>,  <31.391346, 31.157318, 44.618423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234373, 30.821911, 44.467220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092794, -0.444969, 0.890726,
		-0.915087, 0.314475, 0.252430,
		-0.392434, -0.838516, -0.378004,
		31.116642, 30.570356, 44.353821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819721, 30.997496, 45.071648>,  <31.391346, 31.157318, 44.618423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819721, 30.997496, 45.071648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901966, 30.654802, 44.882446>,  <30.951313, 30.449186, 44.768925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901966, 30.654802, 44.882446>,  <30.819721, 30.997496, 45.071648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901966, 30.654802, 44.882446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016472, -0.486295, 0.873639,
		-0.978495, -0.171838, -0.114099,
		0.205610, -0.856731, -0.473007,
		30.963650, 30.397783, 44.740543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302769, 30.446428, 45.274124>,  <30.819721, 30.997496, 45.071648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302769, 30.446428, 45.274124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620127, 30.251255, 45.128551>,  <30.810541, 30.134151, 45.041210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620127, 30.251255, 45.128551>,  <30.302769, 30.446428, 45.274124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620127, 30.251255, 45.128551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074042, -0.516071, 0.853339,
		-0.604187, -0.703981, -0.373321,
		0.793395, -0.487935, -0.363928,
		30.858145, 30.104876, 45.019375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165022, 29.746885, 45.483364>,  <30.302769, 30.446428, 45.274124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165022, 29.746885, 45.483364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555397, 29.756798, 45.396709>,  <30.789621, 29.762745, 45.344715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555397, 29.756798, 45.396709>,  <30.165022, 29.746885, 45.483364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555397, 29.756798, 45.396709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198588, -0.511333, 0.836123,
		-0.090054, -0.859025, -0.503950,
		0.975937, 0.024783, -0.216639,
		30.848179, 29.764233, 45.331718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304945, 29.125347, 45.634480>,  <30.165022, 29.746885, 45.483364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304945, 29.125347, 45.634480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659321, 29.310865, 45.635281>,  <30.871946, 29.422176, 45.635761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659321, 29.310865, 45.635281>,  <30.304945, 29.125347, 45.634480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659321, 29.310865, 45.635281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324290, -0.622528, 0.712246,
		0.331580, -0.630360, -0.701927,
		0.885940, 0.463794, 0.001998,
		30.925102, 29.450005, 45.635880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818968, 28.594206, 45.573959>,  <30.304945, 29.125347, 45.634480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818968, 28.594206, 45.573959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971611, 28.924395, 45.740318>,  <31.063196, 29.122507, 45.840134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971611, 28.924395, 45.740318>,  <30.818968, 28.594206, 45.573959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971611, 28.924395, 45.740318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358227, -0.546861, 0.756714,
		0.852085, -0.139783, -0.504393,
		0.381609, 0.825472, 0.415898,
		31.086094, 29.172037, 45.865089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530342, 28.404684, 45.733742>,  <30.818968, 28.594206, 45.573959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530342, 28.404684, 45.733742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426416, 28.725096, 45.949463>,  <31.364061, 28.917343, 46.078896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426416, 28.725096, 45.949463>,  <31.530342, 28.404684, 45.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426416, 28.725096, 45.949463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303270, -0.462537, 0.833118,
		0.916801, 0.380010, -0.122755,
		-0.259815, 0.801031, 0.539300,
		31.348473, 28.965405, 46.111252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108887, 28.399231, 46.309147>,  <31.530342, 28.404684, 45.733742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108887, 28.399231, 46.309147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816502, 28.650381, 46.416084>,  <31.641071, 28.801071, 46.480247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816502, 28.650381, 46.416084>,  <32.108887, 28.399231, 46.309147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816502, 28.650381, 46.416084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115861, -0.271893, 0.955327,
		0.672515, 0.729280, 0.125996,
		-0.730958, 0.627874, 0.267347,
		31.597214, 28.838743, 46.496288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382835, 28.682878, 46.958481>,  <32.108887, 28.399231, 46.309147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382835, 28.682878, 46.958481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991199, 28.760397, 46.983200>,  <31.756218, 28.806908, 46.998032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991199, 28.760397, 46.983200>,  <32.382835, 28.682878, 46.958481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991199, 28.760397, 46.983200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018398, -0.218185, 0.975734,
		0.202577, 0.956472, 0.210058,
		-0.979094, 0.193796, 0.061796,
		31.697472, 28.818537, 47.001740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860695, 29.332285, 47.065746>,  <32.382835, 28.682878, 46.958481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860695, 29.332285, 47.065746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236031, 29.372936, 47.197922>,  <33.461231, 29.397327, 47.277229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236031, 29.372936, 47.197922>,  <32.860695, 29.332285, 47.065746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236031, 29.372936, 47.197922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289349, 0.292237, -0.911523,
		-0.189203, 0.950931, 0.244811,
		0.938339, 0.101627, 0.330443,
		33.517532, 29.403425, 47.297054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157356, 30.020082, 46.746983>,  <32.860695, 29.332285, 47.065746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157356, 30.020082, 46.746983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482746, 29.807810, 46.842171>,  <33.677982, 29.680447, 46.899284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482746, 29.807810, 46.842171>,  <33.157356, 30.020082, 46.746983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482746, 29.807810, 46.842171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397178, 0.208007, -0.893858,
		0.424855, 0.821651, 0.379984,
		0.813479, -0.530681, 0.237969,
		33.726791, 29.648605, 46.913563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734459, 30.407734, 46.635193>,  <33.157356, 30.020082, 46.746983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734459, 30.407734, 46.635193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861477, 30.028944, 46.615566>,  <33.937687, 29.801670, 46.603790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861477, 30.028944, 46.615566>,  <33.734459, 30.407734, 46.635193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861477, 30.028944, 46.615566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500943, 0.211465, -0.839249,
		0.805124, 0.241914, 0.541528,
		0.317540, -0.946974, -0.049070,
		33.956738, 29.744852, 46.600845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393799, 30.471230, 46.458298>,  <33.734459, 30.407734, 46.635193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393799, 30.471230, 46.458298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329941, 30.087702, 46.364338>,  <34.291626, 29.857586, 46.307961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329941, 30.087702, 46.364338>,  <34.393799, 30.471230, 46.458298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329941, 30.087702, 46.364338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465460, 0.136730, -0.874444,
		0.870552, -0.248937, 0.424464,
		-0.159644, -0.958820, -0.234900,
		34.282047, 29.800056, 46.293869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027088, 30.166821, 46.249420>,  <34.393799, 30.471230, 46.458298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027088, 30.166821, 46.249420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727955, 29.945723, 46.102337>,  <34.548473, 29.813063, 46.014088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727955, 29.945723, 46.102337>,  <35.027088, 30.166821, 46.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727955, 29.945723, 46.102337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534057, -0.171864, -0.827796,
		0.394365, -0.815435, 0.423724,
		-0.747837, -0.552746, -0.367712,
		34.503605, 29.779900, 45.992023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
