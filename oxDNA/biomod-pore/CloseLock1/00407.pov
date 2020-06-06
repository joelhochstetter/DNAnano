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
	<23.767187, 35.116322, 35.163940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085339, 35.119251, 34.921513>,  <24.276230, 35.121010, 34.776058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085339, 35.119251, 34.921513>,  <23.767187, 35.116322, 35.163940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.085339, 35.119251, 34.921513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457851, 0.647966, 0.608698,
		0.397168, -0.761634, 0.512026,
		0.795381, 0.007323, -0.606066,
		24.323952, 35.121449, 34.739693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387957, 34.832951, 35.538410>,  <23.767187, 35.116322, 35.163940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387957, 34.832951, 35.538410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465345, 35.108723, 35.259197>,  <24.511778, 35.274185, 35.091671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465345, 35.108723, 35.259197>,  <24.387957, 34.832951, 35.538410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465345, 35.108723, 35.259197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443104, 0.573377, 0.689128,
		0.875345, -0.442627, -0.194560,
		0.193470, 0.689435, -0.698032,
		24.523386, 35.315552, 35.049789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224154, 35.071938, 35.476929>,  <24.387957, 34.832951, 35.538410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224154, 35.071938, 35.476929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967422, 35.346222, 35.339607>,  <24.813383, 35.510792, 35.257214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967422, 35.346222, 35.339607>,  <25.224154, 35.071938, 35.476929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967422, 35.346222, 35.339607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423566, 0.690191, 0.586710,
		0.639257, 0.231156, -0.733428,
		-0.641827, 0.685714, -0.343299,
		24.774874, 35.551937, 35.236618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988008, 35.743477, 35.651489>,  <25.224154, 35.071938, 35.476929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988008, 35.743477, 35.651489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194448, 35.919373, 35.945503>,  <25.318314, 36.024910, 36.121910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194448, 35.919373, 35.945503>,  <24.988008, 35.743477, 35.651489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194448, 35.919373, 35.945503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356678, 0.669871, -0.651193,
		-0.778730, 0.598252, 0.188878,
		0.516101, 0.439735, 0.735032,
		25.349279, 36.051292, 36.166012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725307, 36.419571, 35.736904>,  <24.988008, 35.743477, 35.651489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725307, 36.419571, 35.736904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112503, 36.383144, 35.830463>,  <25.344820, 36.361290, 35.886597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112503, 36.383144, 35.830463>,  <24.725307, 36.419571, 35.736904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112503, 36.383144, 35.830463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243523, 0.566447, -0.787295,
		-0.060794, 0.819051, 0.570490,
		0.967988, -0.091064, 0.233895,
		25.402899, 36.355824, 35.900631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925091, 37.054180, 35.752380>,  <24.725307, 36.419571, 35.736904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925091, 37.054180, 35.752380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256443, 36.837917, 35.693768>,  <25.455256, 36.708160, 35.658600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256443, 36.837917, 35.693768>,  <24.925091, 37.054180, 35.752380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256443, 36.837917, 35.693768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309039, 0.659271, -0.685460,
		0.467203, 0.522540, 0.713214,
		0.828382, -0.540660, -0.146528,
		25.504957, 36.675720, 35.649811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524914, 37.575447, 35.654587>,  <24.925091, 37.054180, 35.752380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524914, 37.575447, 35.654587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659887, 37.231636, 35.501041>,  <25.740871, 37.025349, 35.408916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659887, 37.231636, 35.501041>,  <25.524914, 37.575447, 35.654587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659887, 37.231636, 35.501041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257642, 0.476533, -0.840557,
		0.905405, 0.184734, 0.382249,
		0.337434, -0.859528, -0.383860,
		25.761118, 36.973778, 35.385883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171099, 37.730339, 35.434204>,  <25.524914, 37.575447, 35.654587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171099, 37.730339, 35.434204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081612, 37.401310, 35.225079>,  <26.027920, 37.203892, 35.099606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081612, 37.401310, 35.225079>,  <26.171099, 37.730339, 35.434204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081612, 37.401310, 35.225079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231432, 0.476232, -0.848317,
		0.946779, -0.310777, 0.083829,
		-0.223715, -0.822570, -0.522810,
		26.014498, 37.154537, 35.068237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679777, 37.706852, 34.886875>,  <26.171099, 37.730339, 35.434204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679777, 37.706852, 34.886875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388622, 37.461735, 34.763805>,  <26.213930, 37.314663, 34.689964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388622, 37.461735, 34.763805>,  <26.679777, 37.706852, 34.886875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388622, 37.461735, 34.763805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126777, 0.320691, -0.938661,
		0.673876, -0.722244, -0.155738,
		-0.727886, -0.612797, -0.307670,
		26.170256, 37.277897, 34.671505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946741, 37.143475, 34.375286>,  <26.679777, 37.706852, 34.886875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946741, 37.143475, 34.375286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559889, 37.231770, 34.324795>,  <26.327778, 37.284744, 34.294502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559889, 37.231770, 34.324795>,  <26.946741, 37.143475, 34.375286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559889, 37.231770, 34.324795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180982, 0.248871, -0.951477,
		-0.178610, -0.943048, -0.280640,
		-0.967131, 0.220734, -0.126224,
		26.269749, 37.297989, 34.286926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745964, 36.857685, 33.719353>,  <26.946741, 37.143475, 34.375286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745964, 36.857685, 33.719353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443787, 37.116253, 33.762142>,  <26.262480, 37.271393, 33.787815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443787, 37.116253, 33.762142>,  <26.745964, 36.857685, 33.719353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443787, 37.116253, 33.762142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044551, 0.213566, -0.975912,
		-0.653696, -0.732482, -0.190135,
		-0.755445, 0.646421, 0.106975,
		26.217154, 37.310181, 33.794235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471691, 37.000832, 32.980724>,  <26.745964, 36.857685, 33.719353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471691, 37.000832, 32.980724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300093, 37.293381, 33.192783>,  <26.197134, 37.468910, 33.320019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300093, 37.293381, 33.192783>,  <26.471691, 37.000832, 32.980724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300093, 37.293381, 33.192783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191398, 0.499978, -0.844624,
		-0.882797, -0.463809, -0.074504,
		-0.428994, 0.731371, 0.530151,
		26.171394, 37.512791, 33.351830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832575, 37.118317, 32.718098>,  <26.471691, 37.000832, 32.980724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832575, 37.118317, 32.718098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935503, 37.466621, 32.885696>,  <25.997259, 37.675606, 32.986256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935503, 37.466621, 32.885696>,  <25.832575, 37.118317, 32.718098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935503, 37.466621, 32.885696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109096, 0.457003, -0.882749,
		-0.960148, 0.181439, 0.212593,
		0.257321, 0.870763, 0.418996,
		26.012699, 37.727852, 33.011395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476805, 37.571121, 32.320377>,  <25.832575, 37.118317, 32.718098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476805, 37.571121, 32.320377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718470, 37.822575, 32.516258>,  <25.863468, 37.973446, 32.633785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718470, 37.822575, 32.516258>,  <25.476805, 37.571121, 32.320377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718470, 37.822575, 32.516258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057556, 0.578506, -0.813645,
		-0.794780, 0.519759, 0.313330,
		0.604163, 0.628634, 0.489700,
		25.899719, 38.011166, 32.663170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180485, 38.349781, 32.184544>,  <25.476805, 37.571121, 32.320377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180485, 38.349781, 32.184544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566067, 38.352238, 32.290943>,  <25.797417, 38.353710, 32.354782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566067, 38.352238, 32.290943>,  <25.180485, 38.349781, 32.184544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566067, 38.352238, 32.290943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215127, 0.570281, -0.792780,
		-0.156562, 0.821427, 0.548404,
		0.963955, 0.006143, 0.265995,
		25.855253, 38.354080, 32.370743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351309, 39.033413, 32.200794>,  <25.180485, 38.349781, 32.184544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351309, 39.033413, 32.200794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705193, 38.848106, 32.180141>,  <25.917522, 38.736923, 32.167751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705193, 38.848106, 32.180141>,  <25.351309, 39.033413, 32.200794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705193, 38.848106, 32.180141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306398, 0.661425, -0.684571,
		0.351291, 0.589829, 0.727115,
		0.884712, -0.463270, -0.051631,
		25.970606, 38.709126, 32.164654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771910, 39.639854, 32.316753>,  <25.351309, 39.033413, 32.200794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771910, 39.639854, 32.316753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961611, 39.333241, 32.143547>,  <26.075432, 39.149273, 32.039623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961611, 39.333241, 32.143547>,  <25.771910, 39.639854, 32.316753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961611, 39.333241, 32.143547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288030, 0.599874, -0.746451,
		0.831938, 0.229285, 0.505279,
		0.474254, -0.766537, -0.433017,
		26.103888, 39.103279, 32.013641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421530, 39.901005, 31.967712>,  <25.771910, 39.639854, 32.316753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421530, 39.901005, 31.967712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370514, 39.539181, 31.804985>,  <26.339905, 39.322086, 31.707348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370514, 39.539181, 31.804985>,  <26.421530, 39.901005, 31.967712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370514, 39.539181, 31.804985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066339, 0.401471, -0.913466,
		0.989612, -0.143492, 0.008804,
		-0.127540, -0.904561, -0.406820,
		26.332253, 39.267811, 31.682940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051603, 39.706676, 31.691761>,  <26.421530, 39.901005, 31.967712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051603, 39.706676, 31.691761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757721, 39.508518, 31.506378>,  <26.581390, 39.389626, 31.395149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757721, 39.508518, 31.506378>,  <27.051603, 39.706676, 31.691761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757721, 39.508518, 31.506378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296714, 0.379700, -0.876236,
		0.610054, -0.781291, -0.131979,
		-0.734707, -0.495392, -0.463457,
		26.537308, 39.359901, 31.367342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314425, 39.714199, 31.101034>,  <27.051603, 39.706676, 31.691761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314425, 39.714199, 31.101034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943752, 39.586212, 31.022163>,  <26.721348, 39.509418, 30.974840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943752, 39.586212, 31.022163>,  <27.314425, 39.714199, 31.101034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943752, 39.586212, 31.022163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136019, 0.203550, -0.969570,
		0.350369, -0.925303, -0.145104,
		-0.926682, -0.319971, -0.197177,
		26.665747, 39.490223, 30.963011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437748, 39.358047, 30.469887>,  <27.314425, 39.714199, 31.101034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437748, 39.358047, 30.469887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041706, 39.398796, 30.508501>,  <26.804081, 39.423244, 30.531670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041706, 39.398796, 30.508501>,  <27.437748, 39.358047, 30.469887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041706, 39.398796, 30.508501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072542, 0.217359, -0.973392,
		-0.120142, -0.970762, -0.207818,
		-0.990103, 0.101869, 0.096535,
		26.744675, 39.429356, 30.537462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116091, 39.007252, 29.898453>,  <27.437748, 39.358047, 30.469887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116091, 39.007252, 29.898453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857862, 39.291931, 30.009253>,  <26.702925, 39.462738, 30.075733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857862, 39.291931, 30.009253>,  <27.116091, 39.007252, 29.898453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857862, 39.291931, 30.009253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161052, 0.227683, -0.960324,
		-0.746527, -0.664568, -0.032366,
		-0.645570, 0.711695, 0.277002,
		26.664192, 39.505440, 30.092354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537415, 39.016113, 29.461121>,  <27.116091, 39.007252, 29.898453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537415, 39.016113, 29.461121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527153, 39.390759, 29.600895>,  <26.520996, 39.615543, 29.684759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527153, 39.390759, 29.600895>,  <26.537415, 39.016113, 29.461121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527153, 39.390759, 29.600895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218032, 0.335895, -0.916317,
		-0.975604, -0.099694, 0.195594,
		-0.025652, 0.936609, 0.349437,
		26.519457, 39.671741, 29.705727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037119, 39.156990, 29.154354>,  <26.537415, 39.016113, 29.461121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037119, 39.156990, 29.154354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211187, 39.491528, 29.287712>,  <26.315628, 39.692249, 29.367727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211187, 39.491528, 29.287712>,  <26.037119, 39.156990, 29.154354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211187, 39.491528, 29.287712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123695, 0.422320, -0.897967,
		-0.891810, 0.349532, 0.287234,
		0.435173, 0.836345, 0.333394,
		26.341740, 39.742432, 29.387730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589895, 39.807816, 28.918344>,  <26.037119, 39.156990, 29.154354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589895, 39.807816, 28.918344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971315, 39.922478, 28.955385>,  <26.200167, 39.991276, 28.977610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971315, 39.922478, 28.955385>,  <25.589895, 39.807816, 28.918344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971315, 39.922478, 28.955385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041965, 0.430808, -0.901468,
		-0.298301, 0.855708, 0.422826,
		0.953549, 0.286652, 0.092601,
		26.257380, 40.008472, 28.983166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777576, 40.362923, 28.398232>,  <25.589895, 39.807816, 28.918344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777576, 40.362923, 28.398232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132410, 40.222076, 28.517628>,  <26.345310, 40.137569, 28.589266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132410, 40.222076, 28.517628>,  <25.777576, 40.362923, 28.398232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132410, 40.222076, 28.517628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362307, 0.130420, -0.922889,
		0.286035, 0.926825, 0.243268,
		0.887084, -0.352116, 0.298491,
		26.398535, 40.116440, 28.607176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323359, 40.668068, 27.901161>,  <25.777576, 40.362923, 28.398232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323359, 40.668068, 27.901161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511662, 40.356236, 28.066399>,  <26.624643, 40.169136, 28.165541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511662, 40.356236, 28.066399>,  <26.323359, 40.668068, 27.901161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511662, 40.356236, 28.066399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534023, -0.120926, -0.836778,
		0.702287, 0.614520, 0.359385,
		0.470757, -0.779578, 0.413093,
		26.652889, 40.122360, 28.190327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044607, 40.647602, 27.549118>,  <26.323359, 40.668068, 27.901161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044607, 40.647602, 27.549118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975309, 40.293594, 27.721968>,  <26.933731, 40.081192, 27.825678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975309, 40.293594, 27.721968>,  <27.044607, 40.647602, 27.549118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975309, 40.293594, 27.721968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310445, -0.465462, -0.828836,
		0.934671, -0.009442, 0.355389,
		-0.173246, -0.885018, 0.432122,
		26.923336, 40.028088, 27.851604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711819, 40.270870, 27.676310>,  <27.044607, 40.647602, 27.549118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711819, 40.270870, 27.676310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387554, 40.056801, 27.581299>,  <27.192995, 39.928360, 27.524292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387554, 40.056801, 27.581299>,  <27.711819, 40.270870, 27.676310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387554, 40.056801, 27.581299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461566, -0.334498, -0.821626,
		0.360259, -0.775694, 0.518181,
		-0.810660, -0.535173, -0.237528,
		27.144356, 39.896248, 27.510040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248625, 40.400631, 28.051394>,  <27.711819, 40.270870, 27.676310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248625, 40.400631, 28.051394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040211, 40.703201, 27.893236>,  <27.915163, 40.884743, 27.798342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040211, 40.703201, 27.893236>,  <28.248625, 40.400631, 28.051394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040211, 40.703201, 27.893236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844621, 0.390160, -0.366593,
		-0.123035, -0.524966, -0.842184,
		-0.521035, 0.756430, -0.395394,
		27.883900, 40.930130, 27.774618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381554, 40.417599, 27.284195>,  <28.248625, 40.400631, 28.051394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381554, 40.417599, 27.284195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323040, 40.798016, 27.393091>,  <28.287931, 41.026268, 27.458429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323040, 40.798016, 27.393091>,  <28.381554, 40.417599, 27.284195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323040, 40.798016, 27.393091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903536, 0.240498, -0.354660,
		-0.402771, 0.194098, -0.894484,
		-0.146282, 0.951045, 0.272241,
		28.279156, 41.083328, 27.474764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977661, 40.217098, 26.950516>,  <28.381554, 40.417599, 27.284195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977661, 40.217098, 26.950516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622364, 40.326283, 26.802721>,  <28.409185, 40.391792, 26.714045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622364, 40.326283, 26.802721>,  <28.977661, 40.217098, 26.950516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622364, 40.326283, 26.802721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158809, 0.572276, 0.804537,
		0.431052, 0.773301, -0.464972,
		-0.888242, 0.272956, -0.369488,
		28.355892, 40.408169, 26.691875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109598, 39.772774, 27.496609>,  <28.977661, 40.217098, 26.950516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109598, 39.772774, 27.496609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508295, 39.751987, 27.521278>,  <29.747513, 39.739517, 27.536081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508295, 39.751987, 27.521278>,  <29.109598, 39.772774, 27.496609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508295, 39.751987, 27.521278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078708, -0.460139, 0.884351,
		-0.017573, -0.886325, -0.462730,
		0.996742, -0.051961, 0.061675,
		29.807318, 39.736401, 27.539782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259384, 39.010216, 27.644714>,  <29.109598, 39.772774, 27.496609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259384, 39.010216, 27.644714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518841, 39.287403, 27.770607>,  <29.674515, 39.453716, 27.846144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518841, 39.287403, 27.770607>,  <29.259384, 39.010216, 27.644714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518841, 39.287403, 27.770607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090503, -0.340366, 0.935927,
		0.755694, -0.635566, -0.158060,
		0.648642, 0.692970, 0.314734,
		29.713434, 39.495293, 27.865026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660547, 38.659084, 28.002901>,  <29.259384, 39.010216, 27.644714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660547, 38.659084, 28.002901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697502, 39.023457, 28.163733>,  <29.719675, 39.242081, 28.260231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697502, 39.023457, 28.163733>,  <29.660547, 38.659084, 28.002901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697502, 39.023457, 28.163733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085418, -0.395065, 0.914673,
		0.992053, -0.118848, 0.041312,
		0.092386, 0.910933, 0.402077,
		29.725218, 39.296738, 28.284355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185820, 38.540237, 28.538488>,  <29.660547, 38.659084, 28.002901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185820, 38.540237, 28.538488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936401, 38.840382, 28.626263>,  <29.786751, 39.020470, 28.678926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936401, 38.840382, 28.626263>,  <30.185820, 38.540237, 28.538488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936401, 38.840382, 28.626263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022797, -0.263110, 0.964496,
		0.781456, 0.606409, 0.146955,
		-0.623544, 0.750361, 0.219433,
		29.749338, 39.065491, 28.692093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469576, 38.862541, 29.081106>,  <30.185820, 38.540237, 28.538488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469576, 38.862541, 29.081106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088102, 38.972473, 29.130024>,  <29.859219, 39.038433, 29.159374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088102, 38.972473, 29.130024>,  <30.469576, 38.862541, 29.081106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088102, 38.972473, 29.130024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072345, -0.185071, 0.980059,
		0.291985, 0.943513, 0.156617,
		-0.953683, 0.274832, 0.122297,
		29.801998, 39.054924, 29.166714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346031, 39.248993, 29.764069>,  <30.469576, 38.862541, 29.081106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346031, 39.248993, 29.764069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983286, 39.125149, 29.649704>,  <29.765638, 39.050842, 29.581085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983286, 39.125149, 29.649704>,  <30.346031, 39.248993, 29.764069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983286, 39.125149, 29.649704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189045, -0.307482, 0.932586,
		-0.376650, 0.899776, 0.220313,
		-0.906861, -0.309609, -0.285912,
		29.711227, 39.032265, 29.563931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804958, 39.502991, 30.211592>,  <30.346031, 39.248993, 29.764069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804958, 39.502991, 30.211592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649364, 39.172523, 30.048550>,  <29.556007, 38.974243, 29.950724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649364, 39.172523, 30.048550>,  <29.804958, 39.502991, 30.211592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649364, 39.172523, 30.048550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230584, -0.341055, 0.911324,
		-0.891920, 0.448478, -0.057835,
		-0.388984, -0.826165, -0.407606,
		29.532669, 38.924675, 29.926268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114882, 39.421162, 30.544447>,  <29.804958, 39.502991, 30.211592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114882, 39.421162, 30.544447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237930, 39.066418, 30.406548>,  <29.311760, 38.853573, 30.323807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237930, 39.066418, 30.406548>,  <29.114882, 39.421162, 30.544447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237930, 39.066418, 30.406548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296981, -0.433709, 0.850705,
		-0.903975, -0.159312, -0.396798,
		0.307622, -0.886858, -0.344749,
		29.330217, 38.800362, 30.303123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757473, 38.982773, 30.858578>,  <29.114882, 39.421162, 30.544447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757473, 38.982773, 30.858578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015413, 38.709724, 30.721056>,  <29.170177, 38.545895, 30.638544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015413, 38.709724, 30.721056>,  <28.757473, 38.982773, 30.858578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015413, 38.709724, 30.721056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171362, -0.567495, 0.805347,
		-0.744852, -0.460413, -0.482924,
		0.644849, -0.682619, -0.343803,
		29.208868, 38.504940, 30.617916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369213, 38.539253, 30.946056>,  <28.757473, 38.982773, 30.858578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369213, 38.539253, 30.946056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729988, 38.366543, 30.942654>,  <28.946453, 38.262917, 30.940613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729988, 38.366543, 30.942654>,  <28.369213, 38.539253, 30.946056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729988, 38.366543, 30.942654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277141, -0.593796, 0.755381,
		-0.331207, -0.678951, -0.655231,
		0.901939, -0.431779, -0.008505,
		29.000570, 38.237007, 30.940102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359222, 37.829285, 30.986086>,  <28.369213, 38.539253, 30.946056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359222, 37.829285, 30.986086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722609, 37.872543, 31.147575>,  <28.940639, 37.898499, 31.244469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722609, 37.872543, 31.147575>,  <28.359222, 37.829285, 30.986086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722609, 37.872543, 31.147575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257546, -0.615923, 0.744519,
		0.329181, -0.780348, -0.531693,
		0.908466, 0.108146, 0.403725,
		28.995148, 37.904987, 31.268692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578602, 37.163311, 31.183128>,  <28.359222, 37.829285, 30.986086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578602, 37.163311, 31.183128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851519, 37.377640, 31.382074>,  <29.015268, 37.506237, 31.501442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851519, 37.377640, 31.382074>,  <28.578602, 37.163311, 31.183128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851519, 37.377640, 31.382074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120244, -0.588804, 0.799281,
		0.721125, -0.605147, -0.337306,
		0.682290, 0.535823, 0.497367,
		29.056206, 37.538387, 31.531284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030111, 36.664925, 31.401775>,  <28.578602, 37.163311, 31.183128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030111, 36.664925, 31.401775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070589, 36.984215, 31.639296>,  <29.094875, 37.175789, 31.781809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070589, 36.984215, 31.639296>,  <29.030111, 36.664925, 31.401775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070589, 36.984215, 31.639296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096152, -0.586225, 0.804422,
		0.990209, -0.138498, 0.017428,
		0.101195, 0.798222, 0.593802,
		29.100948, 37.223682, 31.817436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552553, 36.534321, 31.901472>,  <29.030111, 36.664925, 31.401775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552553, 36.534321, 31.901472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337095, 36.817608, 32.084030>,  <29.207821, 36.987579, 32.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337095, 36.817608, 32.084030>,  <29.552553, 36.534321, 31.901472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337095, 36.817608, 32.084030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022888, -0.553792, 0.832341,
		0.842223, 0.437889, 0.314506,
		-0.538644, 0.708215, 0.456394,
		29.175503, 37.030071, 32.220947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920233, 36.638969, 32.485931>,  <29.552553, 36.534321, 31.901472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920233, 36.638969, 32.485931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561022, 36.790760, 32.574963>,  <29.345495, 36.881832, 32.628384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561022, 36.790760, 32.574963>,  <29.920233, 36.638969, 32.485931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561022, 36.790760, 32.574963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020101, -0.540804, 0.840909,
		0.439476, 0.750687, 0.493286,
		-0.898030, 0.379475, 0.222581,
		29.291613, 36.904602, 32.641735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940302, 36.705036, 33.219006>,  <29.920233, 36.638969, 32.485931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940302, 36.705036, 33.219006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547386, 36.741516, 33.153530>,  <29.311638, 36.763405, 33.114246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547386, 36.741516, 33.153530>,  <29.940302, 36.705036, 33.219006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547386, 36.741516, 33.153530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186817, -0.544253, 0.817856,
		-0.014503, 0.833950, 0.551650,
		-0.982288, 0.091196, -0.163689,
		29.252701, 36.768875, 33.104424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631636, 36.876740, 33.862858>,  <29.940302, 36.705036, 33.219006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631636, 36.876740, 33.862858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324928, 36.714424, 33.663898>,  <29.140903, 36.617035, 33.544525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324928, 36.714424, 33.663898>,  <29.631636, 36.876740, 33.862858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324928, 36.714424, 33.663898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317408, -0.433827, 0.843236,
		-0.557961, 0.804442, 0.203843,
		-0.766767, -0.405791, -0.497395,
		29.094898, 36.592686, 33.514679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971552, 36.880001, 34.305523>,  <29.631636, 36.876740, 33.862858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971552, 36.880001, 34.305523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869326, 36.619133, 34.020042>,  <28.807991, 36.462612, 33.848755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869326, 36.619133, 34.020042>,  <28.971552, 36.880001, 34.305523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869326, 36.619133, 34.020042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420833, -0.589564, 0.689430,
		-0.870394, 0.476542, -0.123782,
		-0.255565, -0.652168, -0.713697,
		28.792656, 36.423481, 33.805935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301760, 36.821781, 34.442047>,  <28.971552, 36.880001, 34.305523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301760, 36.821781, 34.442047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410376, 36.496254, 34.236538>,  <28.475546, 36.300938, 34.113232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410376, 36.496254, 34.236538>,  <28.301760, 36.821781, 34.442047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410376, 36.496254, 34.236538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428717, -0.580222, 0.692491,
		-0.861666, 0.032225, -0.506452,
		0.271539, -0.813821, -0.513773,
		28.491837, 36.252110, 34.082405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653378, 36.330715, 34.426342>,  <28.301760, 36.821781, 34.442047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653378, 36.330715, 34.426342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969883, 36.095001, 34.361057>,  <28.159786, 35.953571, 34.321888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969883, 36.095001, 34.361057>,  <27.653378, 36.330715, 34.426342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969883, 36.095001, 34.361057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332440, -0.638599, 0.694028,
		-0.513206, -0.494905, -0.701205,
		0.791267, -0.589288, -0.163207,
		28.207262, 35.918213, 34.312096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358959, 35.634846, 34.372715>,  <27.653378, 36.330715, 34.426342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358959, 35.634846, 34.372715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749138, 35.585186, 34.445480>,  <27.983246, 35.555389, 34.489140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749138, 35.585186, 34.445480>,  <27.358959, 35.634846, 34.372715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749138, 35.585186, 34.445480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219014, -0.633782, 0.741858,
		0.023194, -0.763484, -0.645410,
		0.975446, -0.124147, 0.181913,
		28.041771, 35.547943, 34.500053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548056, 34.859440, 34.329189>,  <27.358959, 35.634846, 34.372715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548056, 34.859440, 34.329189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849257, 35.037121, 34.523373>,  <28.029978, 35.143730, 34.639881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849257, 35.037121, 34.523373>,  <27.548056, 34.859440, 34.329189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849257, 35.037121, 34.523373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206976, -0.540420, 0.815541,
		0.624618, -0.714583, -0.314998,
		0.753003, 0.444204, 0.485458,
		28.075157, 35.170383, 34.669010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955029, 34.286930, 34.654175>,  <27.548056, 34.859440, 34.329189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955029, 34.286930, 34.654175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060341, 34.611259, 34.863266>,  <28.123529, 34.805859, 34.988720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060341, 34.611259, 34.863266>,  <27.955029, 34.286930, 34.654175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060341, 34.611259, 34.863266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169912, -0.494398, 0.852467,
		0.949638, -0.313257, 0.007603,
		0.263282, 0.810827, 0.522726,
		28.139326, 34.854507, 35.020084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065731, 34.021832, 35.288059>,  <27.955029, 34.286930, 34.654175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065731, 34.021832, 35.288059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068911, 34.404671, 35.403915>,  <28.070818, 34.634377, 35.473431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068911, 34.404671, 35.403915>,  <28.065731, 34.021832, 35.288059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068911, 34.404671, 35.403915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076463, -0.288223, 0.954506,
		0.997041, -0.029733, 0.070893,
		0.007947, 0.957102, 0.289643,
		28.071295, 34.691803, 35.490807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474892, 34.105679, 35.880230>,  <28.065731, 34.021832, 35.288059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474892, 34.105679, 35.880230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224354, 34.416870, 35.899963>,  <28.074030, 34.603584, 35.911804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224354, 34.416870, 35.899963>,  <28.474892, 34.105679, 35.880230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224354, 34.416870, 35.899963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083769, -0.130090, 0.987957,
		0.775031, 0.614670, 0.146652,
		-0.626346, 0.777983, 0.049333,
		28.036449, 34.650265, 35.914764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670961, 34.730843, 36.339745>,  <28.474892, 34.105679, 35.880230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670961, 34.730843, 36.339745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273220, 34.699585, 36.311020>,  <28.034575, 34.680832, 36.293785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273220, 34.699585, 36.311020>,  <28.670961, 34.730843, 36.339745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273220, 34.699585, 36.311020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056439, -0.183646, 0.981371,
		-0.089875, 0.979881, 0.178199,
		-0.994353, -0.078143, -0.071809,
		27.974915, 34.676144, 36.289478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307489, 34.854191, 35.904613>,  <28.670961, 34.730843, 36.339745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307489, 34.854191, 35.904613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194183, 34.714386, 36.261848>,  <29.126200, 34.630505, 36.476189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194183, 34.714386, 36.261848>,  <29.307489, 34.854191, 35.904613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194183, 34.714386, 36.261848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830320, 0.555384, -0.046009,
		-0.479926, -0.754581, -0.447526,
		-0.283266, -0.349509, 0.893086,
		29.109203, 34.609535, 36.529774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633476, 34.557182, 36.519569>,  <29.307489, 34.854191, 35.904613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633476, 34.557182, 36.519569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801394, 34.281696, 36.283112>,  <29.902143, 34.116405, 36.141239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801394, 34.281696, 36.283112>,  <29.633476, 34.557182, 36.519569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801394, 34.281696, 36.283112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813754, -0.002850, 0.581202,
		-0.401966, -0.725029, 0.559246,
		0.419795, -0.688712, -0.591141,
		29.927332, 34.075085, 36.105770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966164, 33.958282, 36.931103>,  <29.633476, 34.557182, 36.519569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966164, 33.958282, 36.931103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154850, 34.058186, 36.592846>,  <30.268061, 34.118130, 36.389893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154850, 34.058186, 36.592846>,  <29.966164, 33.958282, 36.931103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154850, 34.058186, 36.592846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819638, 0.229377, 0.524957,
		0.325084, -0.940747, -0.096513,
		0.471714, 0.249761, -0.845639,
		30.296364, 34.133114, 36.339153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534672, 33.587040, 36.822933>,  <29.966164, 33.958282, 36.931103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534672, 33.587040, 36.822933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619888, 33.937119, 36.649197>,  <30.671019, 34.147163, 36.544956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619888, 33.937119, 36.649197>,  <30.534672, 33.587040, 36.822933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619888, 33.937119, 36.649197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708019, 0.168053, 0.685906,
		0.673293, -0.453645, -0.583852,
		0.213040, 0.875194, -0.434338,
		30.683800, 34.199677, 36.518894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271852, 33.703129, 36.640305>,  <30.534672, 33.587040, 36.822933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271852, 33.703129, 36.640305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096302, 34.057407, 36.700871>,  <30.990971, 34.269974, 36.737209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096302, 34.057407, 36.700871>,  <31.271852, 33.703129, 36.640305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096302, 34.057407, 36.700871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725600, 0.249945, 0.641117,
		0.529991, 0.391238, -0.752358,
		-0.438878, 0.885698, 0.151414,
		30.964638, 34.323116, 36.746296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877125, 34.085274, 36.506592>,  <31.271852, 33.703129, 36.640305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877125, 34.085274, 36.506592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599627, 34.166489, 36.782993>,  <31.433126, 34.215218, 36.948833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599627, 34.166489, 36.782993>,  <31.877125, 34.085274, 36.506592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599627, 34.166489, 36.782993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713633, 0.064328, 0.697560,
		0.097178, 0.977056, -0.189521,
		-0.693747, 0.203036, 0.691008,
		31.391502, 34.227398, 36.990295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114979, 34.661018, 36.991909>,  <31.877125, 34.085274, 36.506592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114979, 34.661018, 36.991909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866585, 34.427803, 37.201462>,  <31.717550, 34.287872, 37.327194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866585, 34.427803, 37.201462>,  <32.114979, 34.661018, 36.991909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866585, 34.427803, 37.201462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507573, 0.210191, 0.835577,
		-0.597288, 0.784784, 0.165410,
		-0.620980, -0.583038, 0.523880,
		31.680290, 34.252892, 37.358627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760878, 35.006802, 37.679199>,  <32.114979, 34.661018, 36.991909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760878, 35.006802, 37.679199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832064, 34.613323, 37.689610>,  <31.874775, 34.377235, 37.695854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832064, 34.613323, 37.689610>,  <31.760878, 35.006802, 37.679199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832064, 34.613323, 37.689610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582470, 0.126620, 0.802930,
		-0.793131, -0.127734, 0.595505,
		0.177965, -0.983693, 0.026025,
		31.885452, 34.318214, 37.697418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901554, 34.864769, 38.329067>,  <31.760878, 35.006802, 37.679199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901554, 34.864769, 38.329067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984573, 34.500923, 38.185104>,  <32.034386, 34.282616, 38.098728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984573, 34.500923, 38.185104>,  <31.901554, 34.864769, 38.329067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984573, 34.500923, 38.185104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592896, -0.175669, 0.785885,
		-0.778073, -0.376496, 0.502845,
		0.207548, -0.909611, -0.359906,
		32.046837, 34.228039, 38.077133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763319, 34.381767, 38.854362>,  <31.901554, 34.864769, 38.329067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763319, 34.381767, 38.854362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054932, 34.240749, 38.619678>,  <32.229900, 34.156139, 38.478870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054932, 34.240749, 38.619678>,  <31.763319, 34.381767, 38.854362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054932, 34.240749, 38.619678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570339, -0.161046, 0.805467,
		-0.378453, -0.921832, 0.083665,
		0.729031, -0.352549, -0.586705,
		32.273640, 34.134983, 38.443668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980539, 33.749023, 39.138824>,  <31.763319, 34.381767, 38.854362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980539, 33.749023, 39.138824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278019, 33.874664, 38.902775>,  <32.456509, 33.950050, 38.761147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278019, 33.874664, 38.902775>,  <31.980539, 33.749023, 39.138824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278019, 33.874664, 38.902775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649013, -0.127598, 0.750000,
		0.160282, -0.940774, -0.298754,
		0.743701, 0.314107, -0.590123,
		32.501129, 33.968895, 38.725739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487255, 33.281174, 39.145386>,  <31.980539, 33.749023, 39.138824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487255, 33.281174, 39.145386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656448, 33.631054, 39.050743>,  <32.757965, 33.840981, 38.993958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656448, 33.631054, 39.050743>,  <32.487255, 33.281174, 39.145386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656448, 33.631054, 39.050743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579741, -0.060553, 0.812548,
		0.696409, -0.480865, -0.532713,
		0.422983, 0.874701, -0.236607,
		32.783344, 33.893463, 38.979759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108494, 33.309982, 39.391411>,  <32.487255, 33.281174, 39.145386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108494, 33.309982, 39.391411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135464, 33.700493, 39.309113>,  <33.151646, 33.934799, 39.259731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135464, 33.700493, 39.309113>,  <33.108494, 33.309982, 39.391411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135464, 33.700493, 39.309113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510682, 0.143386, 0.847729,
		0.857122, -0.162232, -0.488900,
		0.067428, 0.976279, -0.205748,
		33.155693, 33.993378, 39.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776070, 33.432396, 39.469292>,  <33.108494, 33.309982, 39.391411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776070, 33.432396, 39.469292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608089, 33.792984, 39.511223>,  <33.507301, 34.009338, 39.536381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608089, 33.792984, 39.511223>,  <33.776070, 33.432396, 39.469292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608089, 33.792984, 39.511223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580004, 0.177748, 0.794985,
		0.698022, 0.394658, -0.597503,
		-0.419952, 0.901471, 0.104831,
		33.482105, 34.063427, 39.542671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376167, 33.985325, 39.594887>,  <33.776070, 33.432396, 39.469292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376167, 33.985325, 39.594887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018150, 34.112064, 39.720421>,  <33.803341, 34.188110, 39.795742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018150, 34.112064, 39.720421>,  <34.376167, 33.985325, 39.594887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018150, 34.112064, 39.720421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425093, 0.393340, 0.815218,
		0.134859, 0.863069, -0.486749,
		-0.895047, 0.316853, 0.313839,
		33.749638, 34.207119, 39.814571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503536, 34.685490, 39.803329>,  <34.376167, 33.985325, 39.594887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503536, 34.685490, 39.803329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181793, 34.559647, 40.004932>,  <33.988747, 34.484142, 40.125893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181793, 34.559647, 40.004932>,  <34.503536, 34.685490, 39.803329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181793, 34.559647, 40.004932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428068, 0.281403, 0.858819,
		-0.412020, 0.906551, -0.091676,
		-0.804362, -0.314607, 0.504009,
		33.940483, 34.465263, 40.156136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403439, 35.168922, 40.289951>,  <34.503536, 34.685490, 39.803329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403439, 35.168922, 40.289951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154758, 34.889587, 40.431828>,  <34.005550, 34.721985, 40.516953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154758, 34.889587, 40.431828>,  <34.403439, 35.168922, 40.289951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154758, 34.889587, 40.431828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167003, 0.324244, 0.931115,
		-0.765242, 0.638112, -0.084958,
		-0.621703, -0.698340, 0.354692,
		33.968246, 34.680084, 40.538235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982601, 35.496178, 40.715843>,  <34.403439, 35.168922, 40.289951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982601, 35.496178, 40.715843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982803, 35.109886, 40.819660>,  <33.982925, 34.878109, 40.881950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982803, 35.109886, 40.819660>,  <33.982601, 35.496178, 40.715843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982803, 35.109886, 40.819660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254540, 0.251121, 0.933888,
		-0.967062, 0.065595, 0.245944,
		0.000503, -0.965731, 0.259546,
		33.982956, 34.820168, 40.897526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484173, 35.368416, 41.346985>,  <33.982601, 35.496178, 40.715843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484173, 35.368416, 41.346985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790012, 35.110615, 41.347481>,  <33.973518, 34.955936, 41.347778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790012, 35.110615, 41.347481>,  <33.484173, 35.368416, 41.346985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790012, 35.110615, 41.347481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106742, 0.128533, 0.985944,
		-0.635601, -0.753723, 0.167072,
		0.764602, -0.644501, 0.001242,
		34.019394, 34.917263, 41.347855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275822, 34.829342, 41.863003>,  <33.484173, 35.368416, 41.346985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275822, 34.829342, 41.863003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674740, 34.804974, 41.846596>,  <33.914093, 34.790352, 41.836754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674740, 34.804974, 41.846596>,  <33.275822, 34.829342, 41.863003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674740, 34.804974, 41.846596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021773, -0.288087, 0.957357,
		-0.070142, -0.955664, -0.285983,
		0.997300, -0.060924, -0.041015,
		33.973930, 34.786697, 41.834290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488861, 34.128578, 42.044987>,  <33.275822, 34.829342, 41.863003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488861, 34.128578, 42.044987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795261, 34.372662, 42.125877>,  <33.979103, 34.519112, 42.174412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795261, 34.372662, 42.125877>,  <33.488861, 34.128578, 42.044987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795261, 34.372662, 42.125877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005818, -0.307984, 0.951374,
		0.642814, -0.729929, -0.232366,
		0.766000, 0.610204, 0.202223,
		34.025063, 34.555721, 42.186543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664360, 33.779320, 42.670483>,  <33.488861, 34.128578, 42.044987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664360, 33.779320, 42.670483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908279, 34.096317, 42.666519>,  <34.054630, 34.286518, 42.664139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908279, 34.096317, 42.666519>,  <33.664360, 33.779320, 42.670483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908279, 34.096317, 42.666519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230369, -0.165267, 0.958967,
		0.758340, -0.587057, -0.283345,
		0.609795, 0.792497, -0.009911,
		34.091217, 34.334064, 42.663548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313923, 33.584118, 42.980835>,  <33.664360, 33.779320, 42.670483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313923, 33.584118, 42.980835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288517, 33.982620, 43.004307>,  <34.273273, 34.221722, 43.018391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288517, 33.982620, 43.004307>,  <34.313923, 33.584118, 42.980835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288517, 33.982620, 43.004307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160689, -0.068237, 0.984643,
		0.984960, 0.053108, 0.164421,
		-0.063512, 0.996255, 0.058677,
		34.269463, 34.281498, 43.021912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839062, 33.830521, 43.435890>,  <34.313923, 33.584118, 42.980835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839062, 33.830521, 43.435890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523006, 34.075657, 43.431770>,  <34.333374, 34.222736, 43.429298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523006, 34.075657, 43.431770>,  <34.839062, 33.830521, 43.435890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523006, 34.075657, 43.431770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207953, -0.252229, 0.945059,
		0.576568, 0.748873, 0.326738,
		-0.790142, 0.612837, -0.010303,
		34.285965, 34.259506, 43.428680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976051, 34.148891, 44.078911>,  <34.839062, 33.830521, 43.435890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976051, 34.148891, 44.078911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596123, 34.240356, 43.993530>,  <34.368168, 34.295235, 43.942303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596123, 34.240356, 43.993530>,  <34.976051, 34.148891, 44.078911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596123, 34.240356, 43.993530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226707, -0.033056, 0.973402,
		0.215526, 0.972944, 0.083236,
		-0.949817, 0.228664, -0.213449,
		34.311176, 34.308956, 43.929497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921364, 34.797333, 44.430412>,  <34.976051, 34.148891, 44.078911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921364, 34.797333, 44.430412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559982, 34.632137, 44.384426>,  <34.343155, 34.533020, 44.356834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559982, 34.632137, 44.384426>,  <34.921364, 34.797333, 44.430412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559982, 34.632137, 44.384426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119785, -0.014296, 0.992697,
		-0.411616, 0.910624, -0.036554,
		-0.903451, -0.412989, -0.114963,
		34.288948, 34.508240, 44.349937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566059, 35.078995, 44.990360>,  <34.921364, 34.797333, 44.430412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566059, 35.078995, 44.990360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293121, 34.803955, 44.891064>,  <34.129360, 34.638931, 44.831486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293121, 34.803955, 44.891064>,  <34.566059, 35.078995, 44.990360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293121, 34.803955, 44.891064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361851, 0.022627, 0.931961,
		-0.635198, 0.725739, -0.264248,
		-0.682340, -0.687598, -0.248237,
		34.088421, 34.597675, 44.816593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939899, 35.215141, 45.323280>,  <34.566059, 35.078995, 44.990360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939899, 35.215141, 45.323280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914993, 34.819172, 45.272415>,  <33.900051, 34.581589, 45.241894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914993, 34.819172, 45.272415>,  <33.939899, 35.215141, 45.323280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914993, 34.819172, 45.272415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350758, -0.097581, 0.931368,
		-0.934394, 0.102595, -0.341149,
		-0.062264, -0.989925, -0.127165,
		33.896313, 34.522194, 45.234264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371975, 34.925358, 45.812805>,  <33.939899, 35.215141, 45.323280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371975, 34.925358, 45.812805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622520, 34.626255, 45.724689>,  <33.772846, 34.446793, 45.671822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622520, 34.626255, 45.724689>,  <33.371975, 34.925358, 45.812805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622520, 34.626255, 45.724689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011120, -0.291134, 0.956618,
		-0.779453, -0.596740, -0.190671,
		0.626363, -0.747759, -0.220289,
		33.810429, 34.401928, 45.658604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080090, 34.368633, 46.194191>,  <33.371975, 34.925358, 45.812805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080090, 34.368633, 46.194191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463036, 34.285870, 46.113544>,  <33.692802, 34.236210, 46.065155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463036, 34.285870, 46.113544>,  <33.080090, 34.368633, 46.194191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463036, 34.285870, 46.113544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130933, -0.311335, 0.941237,
		-0.257519, -0.927502, -0.270969,
		0.957361, -0.206907, -0.201615,
		33.750244, 34.223797, 46.053059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257072, 33.765350, 46.522522>,  <33.080090, 34.368633, 46.194191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257072, 33.765350, 46.522522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631096, 33.885010, 46.446449>,  <33.855511, 33.956806, 46.400806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631096, 33.885010, 46.446449>,  <33.257072, 33.765350, 46.522522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631096, 33.885010, 46.446449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274122, -0.270057, 0.922998,
		0.224755, -0.915193, -0.334524,
		0.935063, 0.299149, -0.190178,
		33.911613, 33.974754, 46.389397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717304, 33.167320, 46.706509>,  <33.257072, 33.765350, 46.522522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717304, 33.167320, 46.706509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940483, 33.499260, 46.708939>,  <34.074390, 33.698425, 46.710396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940483, 33.499260, 46.708939>,  <33.717304, 33.167320, 46.706509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940483, 33.499260, 46.708939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235893, -0.165614, 0.957563,
		0.795643, -0.532838, -0.288161,
		0.557949, 0.829853, 0.006077,
		34.107868, 33.748215, 46.710762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241028, 33.021057, 47.117374>,  <33.717304, 33.167320, 46.706509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241028, 33.021057, 47.117374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258720, 33.420666, 47.116875>,  <34.269337, 33.660431, 47.116573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258720, 33.420666, 47.116875>,  <34.241028, 33.021057, 47.117374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258720, 33.420666, 47.116875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148617, -0.005343, 0.988881,
		0.987905, -0.043924, -0.148708,
		0.044230, 0.999021, -0.001249,
		34.271988, 33.720371, 47.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893024, 33.218868, 47.494526>,  <34.241028, 33.021057, 47.117374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893024, 33.218868, 47.494526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637600, 33.526184, 47.512283>,  <34.484344, 33.710575, 47.522938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637600, 33.526184, 47.512283>,  <34.893024, 33.218868, 47.494526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637600, 33.526184, 47.512283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017442, -0.043226, 0.998913,
		0.769376, 0.638639, 0.014202,
		-0.638558, 0.768292, 0.044395,
		34.446033, 33.756672, 47.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154495, 33.573879, 48.049767>,  <34.893024, 33.218868, 47.494526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154495, 33.573879, 48.049767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786213, 33.726604, 48.017448>,  <34.565243, 33.818237, 47.998058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786213, 33.726604, 48.017448>,  <35.154495, 33.573879, 48.049767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786213, 33.726604, 48.017448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046478, 0.098284, 0.994072,
		0.387488, 0.919000, -0.072745,
		-0.920702, 0.381810, -0.080798,
		34.510002, 33.841148, 47.993210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122585, 34.245544, 48.432152>,  <35.154495, 33.573879, 48.049767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122585, 34.245544, 48.432152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750946, 34.101807, 48.397156>,  <34.527962, 34.015564, 48.376160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750946, 34.101807, 48.397156>,  <35.122585, 34.245544, 48.432152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750946, 34.101807, 48.397156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069408, -0.062940, 0.995601,
		-0.363272, 0.931079, 0.033536,
		-0.929094, -0.359346, -0.087489,
		34.472218, 33.994003, 48.370911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787819, 34.496147, 48.973682>,  <35.122585, 34.245544, 48.432152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787819, 34.496147, 48.973682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527416, 34.218056, 48.851795>,  <34.371174, 34.051201, 48.778664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527416, 34.218056, 48.851795>,  <34.787819, 34.496147, 48.973682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527416, 34.218056, 48.851795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086990, -0.330459, 0.939803,
		-0.754071, 0.638325, 0.154653,
		-0.651006, -0.695225, -0.304717,
		34.332115, 34.009487, 48.760380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295208, 34.414631, 49.475918>,  <34.787819, 34.496147, 48.973682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295208, 34.414631, 49.475918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283424, 34.052849, 49.305702>,  <34.276356, 33.835777, 49.203571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283424, 34.052849, 49.305702>,  <34.295208, 34.414631, 49.475918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283424, 34.052849, 49.305702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079351, -0.422268, 0.902992,
		-0.996412, 0.060368, -0.059330,
		-0.029459, -0.904459, -0.425542,
		34.274586, 33.781509, 49.178040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779667, 33.989681, 49.810387>,  <34.295208, 34.414631, 49.475918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779667, 33.989681, 49.810387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012894, 33.713718, 49.638779>,  <34.152832, 33.548141, 49.535816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012894, 33.713718, 49.638779>,  <33.779667, 33.989681, 49.810387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012894, 33.713718, 49.638779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012083, -0.535379, 0.844526,
		-0.812331, -0.487235, -0.320499,
		0.583071, -0.689907, -0.429018,
		34.187817, 33.506744, 49.510075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497437, 33.433384, 50.060341>,  <33.779667, 33.989681, 49.810387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497437, 33.433384, 50.060341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853348, 33.318794, 49.918221>,  <34.066895, 33.250042, 49.832947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853348, 33.318794, 49.918221>,  <33.497437, 33.433384, 50.060341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853348, 33.318794, 49.918221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165502, -0.522975, 0.836126,
		-0.425337, -0.802766, -0.417918,
		0.889774, -0.286469, -0.355300,
		34.120281, 33.232853, 49.811630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606026, 32.917873, 50.546070>,  <33.497437, 33.433384, 50.060341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606026, 32.917873, 50.546070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945404, 32.929989, 50.334705>,  <34.149033, 32.937260, 50.207886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945404, 32.929989, 50.334705>,  <33.606026, 32.917873, 50.546070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945404, 32.929989, 50.334705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483687, -0.449740, 0.750853,
		-0.214903, -0.892646, -0.396233,
		0.848448, 0.030292, -0.528412,
		34.199940, 32.939075, 50.176182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913216, 32.177162, 50.431255>,  <33.606026, 32.917873, 50.546070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913216, 32.177162, 50.431255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187382, 32.468422, 50.432125>,  <34.351879, 32.643177, 50.432648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187382, 32.468422, 50.432125>,  <33.913216, 32.177162, 50.431255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187382, 32.468422, 50.432125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391143, -0.370700, 0.842371,
		0.614180, -0.576521, -0.538894,
		0.685412, 0.728152, 0.002174,
		34.393005, 32.686867, 50.432777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486263, 31.815990, 50.663887>,  <33.913216, 32.177162, 50.431255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486263, 31.815990, 50.663887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573639, 32.201706, 50.723793>,  <34.626064, 32.433136, 50.759735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573639, 32.201706, 50.723793>,  <34.486263, 31.815990, 50.663887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573639, 32.201706, 50.723793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290593, -0.210785, 0.933341,
		0.931580, -0.160353, -0.326259,
		0.218434, 0.964291, 0.149766,
		34.639168, 32.490993, 50.768723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092899, 31.817743, 51.063648>,  <34.486263, 31.815990, 50.663887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092899, 31.817743, 51.063648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895821, 32.158569, 51.134338>,  <34.777573, 32.363064, 51.176754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895821, 32.158569, 51.134338>,  <35.092899, 31.817743, 51.063648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895821, 32.158569, 51.134338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093435, -0.150114, 0.984244,
		0.865169, 0.501448, -0.005652,
		-0.492699, 0.852065, 0.176727,
		34.748013, 32.414188, 51.187355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493607, 32.130894, 51.662884>,  <35.092899, 31.817743, 51.063648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493607, 32.130894, 51.662884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146996, 32.328564, 51.634800>,  <34.939030, 32.447166, 51.617950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146996, 32.328564, 51.634800>,  <35.493607, 32.130894, 51.662884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146996, 32.328564, 51.634800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049506, 0.054883, 0.997265,
		0.496673, 0.867630, -0.023093,
		-0.866525, 0.494171, -0.070212,
		34.887039, 32.476814, 51.613735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526783, 32.827374, 51.930325>,  <35.493607, 32.130894, 51.662884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526783, 32.827374, 51.930325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141117, 32.721714, 51.940292>,  <34.909718, 32.658318, 51.946274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141117, 32.721714, 51.940292>,  <35.526783, 32.827374, 51.930325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141117, 32.721714, 51.940292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014710, 0.147004, 0.989026,
		-0.264911, 0.953214, -0.145621,
		-0.964161, -0.264146, 0.024922,
		34.851868, 32.642471, 51.947769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168247, 33.371765, 52.287418>,  <35.526783, 32.827374, 51.930325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168247, 33.371765, 52.287418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965775, 33.031067, 52.341553>,  <34.844292, 32.826649, 52.374031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965775, 33.031067, 52.341553>,  <35.168247, 33.371765, 52.287418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965775, 33.031067, 52.341553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009749, 0.151259, 0.988446,
		-0.862373, 0.501651, -0.068261,
		-0.506180, -0.851744, 0.135332,
		34.813919, 32.775543, 52.382153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548878, 33.495922, 52.693775>,  <35.168247, 33.371765, 52.287418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548878, 33.495922, 52.693775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614967, 33.105774, 52.752235>,  <34.654621, 32.871685, 52.787312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614967, 33.105774, 52.752235>,  <34.548878, 33.495922, 52.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614967, 33.105774, 52.752235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278176, 0.096081, 0.955713,
		-0.946213, -0.198560, -0.255450,
		0.165222, -0.975368, 0.146148,
		34.664536, 32.813164, 52.796082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774403, 33.058712, 53.208389>,  <34.548878, 33.495922, 52.693775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774403, 33.058712, 53.208389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926025, 32.769051, 52.977943>,  <35.016998, 32.595253, 52.839676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926025, 32.769051, 52.977943>,  <34.774403, 33.058712, 53.208389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926025, 32.769051, 52.977943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306375, -0.489255, 0.816556,
		-0.873182, -0.486032, 0.036405,
		0.379061, -0.724156, -0.576117,
		35.039745, 32.551804, 52.805107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487030, 32.429062, 53.441563>,  <34.774403, 33.058712, 53.208389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487030, 32.429062, 53.441563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856152, 32.340733, 53.315273>,  <35.077625, 32.287735, 53.239502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856152, 32.340733, 53.315273>,  <34.487030, 32.429062, 53.441563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856152, 32.340733, 53.315273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217324, -0.378317, 0.899803,
		-0.318133, -0.898953, -0.301123,
		0.922801, -0.220816, -0.315720,
		35.132992, 32.274487, 53.220558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660229, 31.656750, 53.464836>,  <34.487030, 32.429062, 53.441563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660229, 31.656750, 53.464836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974113, 31.898008, 53.522022>,  <35.162445, 32.042763, 53.556335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974113, 31.898008, 53.522022>,  <34.660229, 31.656750, 53.464836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974113, 31.898008, 53.522022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222017, -0.488833, 0.843653,
		0.578733, -0.630284, -0.517503,
		0.784714, 0.603145, 0.142970,
		35.209526, 32.078953, 53.564915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241161, 31.159716, 53.635654>,  <34.660229, 31.656750, 53.464836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241161, 31.159716, 53.635654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243286, 31.519056, 53.811352>,  <35.244560, 31.734661, 53.916771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243286, 31.519056, 53.811352>,  <35.241161, 31.159716, 53.635654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243286, 31.519056, 53.811352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129307, -0.436180, 0.890521,
		0.991590, 0.052071, -0.118478,
		0.005307, 0.898352, 0.439245,
		35.244877, 31.788563, 53.943127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818291, 31.489725, 53.891048>,  <35.241161, 31.159716, 53.635654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818291, 31.489725, 53.891048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539055, 31.638847, 54.135571>,  <35.371513, 31.728321, 54.282284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539055, 31.638847, 54.135571>,  <35.818291, 31.489725, 53.891048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539055, 31.638847, 54.135571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327907, -0.592511, 0.735804,
		0.636513, 0.714107, 0.291380,
		-0.698089, 0.372803, 0.611302,
		35.329628, 31.750689, 54.318962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843307, 30.794935, 53.965015>,  <35.818291, 31.489725, 53.891048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843307, 30.794935, 53.965015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138432, 30.593731, 53.784966>,  <36.315506, 30.473009, 53.676937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138432, 30.593731, 53.784966>,  <35.843307, 30.794935, 53.965015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138432, 30.593731, 53.784966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576651, -0.123082, -0.807666,
		0.350861, 0.855472, -0.380873,
		0.737814, -0.503009, -0.450124,
		36.359776, 30.442829, 53.649929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830681, 30.931505, 53.238827>,  <35.843307, 30.794935, 53.965015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830681, 30.931505, 53.238827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002571, 30.571339, 53.265907>,  <36.105705, 30.355238, 53.282158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002571, 30.571339, 53.265907>,  <35.830681, 30.931505, 53.238827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002571, 30.571339, 53.265907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466761, -0.285699, -0.836965,
		0.772960, 0.328066, -0.543052,
		0.429729, -0.900416, 0.067706,
		36.131489, 30.301214, 53.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432655, 30.246696, 52.895794>,  <35.830681, 30.931505, 53.238827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432655, 30.246696, 52.895794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089264, 30.323296, 53.086098>,  <34.883228, 30.369255, 53.200279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089264, 30.323296, 53.086098>,  <35.432655, 30.246696, 52.895794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089264, 30.323296, 53.086098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512828, -0.310803, -0.800255,
		-0.005378, -0.930983, 0.365022,
		-0.858475, 0.191497, 0.475763,
		34.831722, 30.380745, 53.228825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901478, 29.596466, 52.975182>,  <35.432655, 30.246696, 52.895794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901478, 29.596466, 52.975182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754635, 29.965094, 52.924667>,  <34.666531, 30.186270, 52.894360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754635, 29.965094, 52.924667>,  <34.901478, 29.596466, 52.975182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754635, 29.965094, 52.924667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468688, -0.300534, -0.830669,
		-0.803471, -0.245751, 0.542255,
		-0.367103, 0.921567, -0.126290,
		34.644505, 30.241564, 52.886780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209843, 29.628494, 52.714214>,  <34.901478, 29.596466, 52.975182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209843, 29.628494, 52.714214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325081, 29.997019, 52.609760>,  <34.394222, 30.218134, 52.547089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325081, 29.997019, 52.609760>,  <34.209843, 29.628494, 52.714214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325081, 29.997019, 52.609760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198927, -0.209168, -0.957432,
		-0.936713, 0.327776, 0.123014,
		0.288093, 0.921310, -0.261134,
		34.411510, 30.273411, 52.531422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813736, 29.743252, 52.205265>,  <34.209843, 29.628494, 52.714214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813736, 29.743252, 52.205265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090599, 30.019819, 52.122463>,  <34.256718, 30.185760, 52.072781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090599, 30.019819, 52.122463>,  <33.813736, 29.743252, 52.205265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090599, 30.019819, 52.122463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140814, -0.151938, -0.978308,
		-0.707875, 0.706295, -0.007804,
		0.692159, 0.691421, -0.207009,
		34.298248, 30.227245, 52.060360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631863, 30.043592, 51.632694>,  <33.813736, 29.743252, 52.205265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631863, 30.043592, 51.632694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017860, 30.142536, 51.667553>,  <34.249458, 30.201902, 51.688469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017860, 30.142536, 51.667553>,  <33.631863, 30.043592, 51.632694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017860, 30.142536, 51.667553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141202, -0.209998, -0.967452,
		-0.221006, 0.945893, -0.237575,
		0.964997, 0.247359, 0.087151,
		34.307358, 30.216743, 51.693699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696491, 30.438084, 51.071251>,  <33.631863, 30.043592, 51.632694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696491, 30.438084, 51.071251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075809, 30.347099, 51.159798>,  <34.303398, 30.292509, 51.212925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075809, 30.347099, 51.159798>,  <33.696491, 30.438084, 51.071251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075809, 30.347099, 51.159798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243595, 0.074465, -0.967014,
		0.203473, 0.970936, 0.126022,
		0.948293, -0.227460, 0.221363,
		34.360298, 30.278862, 51.226208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088501, 30.895285, 50.745625>,  <33.696491, 30.438084, 51.071251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088501, 30.895285, 50.745625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367809, 30.618626, 50.819435>,  <34.535393, 30.452631, 50.863720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367809, 30.618626, 50.819435>,  <34.088501, 30.895285, 50.745625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367809, 30.618626, 50.819435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340098, 0.093715, -0.935709,
		0.629887, 0.716130, 0.300666,
		0.698266, -0.691647, 0.184524,
		34.577290, 30.411131, 50.874794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663685, 31.154808, 50.366631>,  <34.088501, 30.895285, 50.745625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663685, 31.154808, 50.366631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732841, 30.768179, 50.442364>,  <34.774338, 30.536201, 50.487804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732841, 30.768179, 50.442364>,  <34.663685, 31.154808, 50.366631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732841, 30.768179, 50.442364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261315, -0.140325, -0.954999,
		0.949643, 0.214590, 0.228318,
		0.172895, -0.966571, 0.189334,
		34.784710, 30.478207, 50.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303669, 30.974806, 50.068363>,  <34.663685, 31.154808, 50.366631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303669, 30.974806, 50.068363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137875, 30.612139, 50.099739>,  <35.038399, 30.394539, 50.118565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137875, 30.612139, 50.099739>,  <35.303669, 30.974806, 50.068363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137875, 30.612139, 50.099739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418336, -0.266364, -0.868358,
		0.808206, -0.327110, 0.489696,
		-0.414486, -0.906669, 0.078436,
		35.013527, 30.340137, 50.123268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762234, 30.527302, 49.818810>,  <35.303669, 30.974806, 50.068363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762234, 30.527302, 49.818810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408524, 30.344160, 49.782112>,  <35.196297, 30.234276, 49.760094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408524, 30.344160, 49.782112>,  <35.762234, 30.527302, 49.818810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408524, 30.344160, 49.782112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228355, -0.252625, -0.940231,
		0.407312, -0.852378, 0.327945,
		-0.884280, -0.457855, -0.091747,
		35.143238, 30.206804, 49.754589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926781, 29.838531, 49.609737>,  <35.762234, 30.527302, 49.818810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926781, 29.838531, 49.609737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547585, 29.901684, 49.499180>,  <35.320068, 29.939575, 49.432846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547585, 29.901684, 49.499180>,  <35.926781, 29.838531, 49.609737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547585, 29.901684, 49.499180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225977, -0.277737, -0.933700,
		-0.224179, -0.947594, 0.227614,
		-0.947986, 0.157881, -0.276397,
		35.263187, 29.949049, 49.416260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713902, 29.250608, 49.232265>,  <35.926781, 29.838531, 49.609737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713902, 29.250608, 49.232265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433529, 29.522728, 49.146576>,  <35.265305, 29.685999, 49.095161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433529, 29.522728, 49.146576>,  <35.713902, 29.250608, 49.232265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433529, 29.522728, 49.146576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054255, -0.350343, -0.935049,
		-0.711162, -0.643782, 0.282476,
		-0.700931, 0.680297, -0.214222,
		35.223248, 29.726816, 49.082310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207172, 28.896824, 48.831490>,  <35.713902, 29.250608, 49.232265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207172, 28.896824, 48.831490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146175, 29.281946, 48.742271>,  <35.109577, 29.513020, 48.688740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146175, 29.281946, 48.742271>,  <35.207172, 28.896824, 48.831490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146175, 29.281946, 48.742271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117309, -0.241718, -0.963229,
		-0.981318, -0.120720, 0.149806,
		-0.152492, 0.962808, -0.223041,
		35.100430, 29.570789, 48.675358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741379, 28.883549, 48.313412>,  <35.207172, 28.896824, 48.831490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741379, 28.883549, 48.313412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851154, 29.266493, 48.277317>,  <34.917019, 29.496260, 48.255661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851154, 29.266493, 48.277317>,  <34.741379, 28.883549, 48.313412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851154, 29.266493, 48.277317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075077, -0.072217, -0.994559,
		-0.958670, 0.279718, 0.052057,
		0.274437, 0.957362, -0.090233,
		34.933487, 29.553701, 48.250248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225250, 29.239471, 47.920765>,  <34.741379, 28.883549, 48.313412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225250, 29.239471, 47.920765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566681, 29.442202, 47.872536>,  <34.771538, 29.563839, 47.843597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566681, 29.442202, 47.872536>,  <34.225250, 29.239471, 47.920765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566681, 29.442202, 47.872536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091457, -0.082059, -0.992422,
		-0.512877, 0.858135, -0.023691,
		0.853576, 0.506824, -0.120569,
		34.822754, 29.594250, 47.836365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066010, 29.719484, 47.484447>,  <34.225250, 29.239471, 47.920765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066010, 29.719484, 47.484447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459419, 29.650351, 47.463276>,  <34.695465, 29.608870, 47.450573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459419, 29.650351, 47.463276>,  <34.066010, 29.719484, 47.484447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459419, 29.650351, 47.463276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054144, -0.002311, -0.998530,
		0.172458, 0.984948, -0.011631,
		0.983528, -0.172835, -0.052931,
		34.754478, 29.598499, 47.447395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324093, 30.262918, 47.212646>,  <34.066010, 29.719484, 47.484447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324093, 30.262918, 47.212646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598804, 29.985174, 47.126675>,  <34.763634, 29.818527, 47.075092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598804, 29.985174, 47.126675>,  <34.324093, 30.262918, 47.212646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598804, 29.985174, 47.126675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053409, 0.246685, -0.967623,
		0.724897, 0.676027, 0.132335,
		0.686784, -0.694359, -0.214927,
		34.804840, 29.776867, 47.062195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756329, 30.589466, 46.773739>,  <34.324093, 30.262918, 47.212646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756329, 30.589466, 46.773739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810261, 30.199623, 46.702229>,  <34.842621, 29.965717, 46.659321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810261, 30.199623, 46.702229>,  <34.756329, 30.589466, 46.773739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810261, 30.199623, 46.702229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063382, 0.171575, -0.983130,
		0.988840, 0.143884, -0.038640,
		0.134827, -0.974607, -0.178780,
		34.850708, 29.907242, 46.648594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280106, 30.602304, 46.324440>,  <34.756329, 30.589466, 46.773739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280106, 30.602304, 46.324440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078121, 30.261868, 46.266949>,  <34.956932, 30.057606, 46.232456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078121, 30.261868, 46.266949>,  <35.280106, 30.602304, 46.324440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078121, 30.261868, 46.266949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006270, 0.170127, -0.985402,
		0.863121, -0.496686, -0.091244,
		-0.504959, -0.851093, -0.143726,
		34.926632, 30.006540, 46.223831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493324, 30.330025, 45.689148>,  <35.280106, 30.602304, 46.324440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493324, 30.330025, 45.689148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172791, 30.096142, 45.739704>,  <34.980469, 29.955812, 45.770039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172791, 30.096142, 45.739704>,  <35.493324, 30.330025, 45.689148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172791, 30.096142, 45.739704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358793, 0.300718, -0.883650,
		0.478672, -0.753448, -0.450766,
		-0.801337, -0.584710, 0.126386,
		34.932388, 29.920729, 45.777618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403728, 29.860395, 45.111801>,  <35.493324, 30.330025, 45.689148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403728, 29.860395, 45.111801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043884, 29.900095, 45.281910>,  <34.827980, 29.923916, 45.383976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043884, 29.900095, 45.281910>,  <35.403728, 29.860395, 45.111801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043884, 29.900095, 45.281910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391460, 0.248351, -0.886048,
		-0.193558, -0.963572, -0.184565,
		-0.899608, 0.099252, 0.425270,
		34.774002, 29.929871, 45.409492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035072, 29.608143, 44.606335>,  <35.403728, 29.860395, 45.111801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035072, 29.608143, 44.606335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750698, 29.777300, 44.831097>,  <34.580074, 29.878794, 44.965954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750698, 29.777300, 44.831097>,  <35.035072, 29.608143, 44.606335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750698, 29.777300, 44.831097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518630, 0.224359, -0.825037,
		-0.474971, -0.877966, 0.059822,
		-0.710932, 0.422894, 0.561903,
		34.537418, 29.904169, 44.999668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424950, 29.319763, 44.460724>,  <35.035072, 29.608143, 44.606335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424950, 29.319763, 44.460724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276550, 29.657660, 44.615009>,  <34.187511, 29.860397, 44.707581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276550, 29.657660, 44.615009>,  <34.424950, 29.319763, 44.460724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276550, 29.657660, 44.615009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591695, 0.105094, -0.799283,
		-0.715722, -0.524757, 0.460838,
		-0.370998, 0.844740, 0.385714,
		34.165249, 29.911081, 44.730724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748722, 29.247412, 44.337208>,  <34.424950, 29.319763, 44.460724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748722, 29.247412, 44.337208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803642, 29.641670, 44.376495>,  <33.836594, 29.878225, 44.400070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803642, 29.641670, 44.376495>,  <33.748722, 29.247412, 44.337208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803642, 29.641670, 44.376495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582371, 0.160539, -0.796913,
		-0.801244, 0.052214, 0.596055,
		0.137300, 0.985647, 0.098223,
		33.844833, 29.937365, 44.405964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168484, 29.515358, 44.089653>,  <33.748722, 29.247412, 44.337208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168484, 29.515358, 44.089653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397324, 29.843147, 44.075966>,  <33.534626, 30.039820, 44.067753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397324, 29.843147, 44.075966>,  <33.168484, 29.515358, 44.089653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397324, 29.843147, 44.075966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374770, 0.224071, -0.899633,
		-0.729556, 0.527502, 0.435304,
		0.572098, 0.819471, -0.034220,
		33.568954, 30.088989, 44.065701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743031, 30.041512, 43.848637>,  <33.168484, 29.515358, 44.089653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743031, 30.041512, 43.848637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118195, 30.158216, 43.773594>,  <33.343292, 30.228239, 43.728569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118195, 30.158216, 43.773594>,  <32.743031, 30.041512, 43.848637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118195, 30.158216, 43.773594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280114, 0.318060, -0.905745,
		-0.204593, 0.902060, 0.380039,
		0.937911, 0.291764, -0.187607,
		33.399567, 30.245745, 43.717312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641338, 30.623493, 43.501122>,  <32.743031, 30.041512, 43.848637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641338, 30.623493, 43.501122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012981, 30.523222, 43.392368>,  <33.235966, 30.463058, 43.327118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012981, 30.523222, 43.392368>,  <32.641338, 30.623493, 43.501122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012981, 30.523222, 43.392368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138562, 0.445660, -0.884414,
		0.342872, 0.859387, 0.379331,
		0.929107, -0.250680, -0.271882,
		33.291714, 30.448017, 43.310802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905312, 31.303423, 43.204372>,  <32.641338, 30.623493, 43.501122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905312, 31.303423, 43.204372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148876, 31.013443, 43.075577>,  <33.295013, 30.839455, 42.998299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148876, 31.013443, 43.075577>,  <32.905312, 31.303423, 43.204372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148876, 31.013443, 43.075577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082684, 0.345705, -0.934693,
		0.788918, 0.595768, 0.150561,
		0.608910, -0.724948, -0.321993,
		33.331551, 30.795959, 42.978977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393787, 31.670582, 42.727310>,  <32.905312, 31.303423, 43.204372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393787, 31.670582, 42.727310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419468, 31.278637, 42.651684>,  <33.434875, 31.043470, 42.606308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419468, 31.278637, 42.651684>,  <33.393787, 31.670582, 42.727310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419468, 31.278637, 42.651684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038414, 0.191746, -0.980693,
		0.997198, 0.055695, 0.049950,
		0.064197, -0.979863, -0.189069,
		33.438728, 30.984678, 42.594963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895046, 31.604057, 42.254299>,  <33.393787, 31.670582, 42.727310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895046, 31.604057, 42.254299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711483, 31.250061, 42.222797>,  <33.601345, 31.037664, 42.203896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711483, 31.250061, 42.222797>,  <33.895046, 31.604057, 42.254299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711483, 31.250061, 42.222797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031593, 0.104839, -0.993987,
		0.887924, -0.453656, -0.076070,
		-0.458904, -0.884988, -0.078757,
		33.573811, 30.984564, 42.199169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218212, 31.301260, 41.737453>,  <33.895046, 31.604057, 42.254299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218212, 31.301260, 41.737453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874767, 31.097027, 41.755756>,  <33.668701, 30.974487, 41.766739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874767, 31.097027, 41.755756>,  <34.218212, 31.301260, 41.737453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874767, 31.097027, 41.755756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072417, 0.032450, -0.996846,
		0.507486, -0.859217, -0.064836,
		-0.858611, -0.510581, 0.045754,
		33.617184, 30.943853, 41.769482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263294, 30.689157, 41.442265>,  <34.218212, 31.301260, 41.737453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263294, 30.689157, 41.442265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866959, 30.731184, 41.408344>,  <33.629158, 30.756399, 41.387993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866959, 30.731184, 41.408344>,  <34.263294, 30.689157, 41.442265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866959, 30.731184, 41.408344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050541, -0.293808, -0.954527,
		-0.125204, -0.950073, 0.285808,
		-0.990843, 0.105066, -0.084803,
		33.569706, 30.762705, 41.382904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957569, 30.133957, 41.013702>,  <34.263294, 30.689157, 41.442265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957569, 30.133957, 41.013702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665760, 30.407354, 41.023792>,  <33.490677, 30.571392, 41.029846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665760, 30.407354, 41.023792>,  <33.957569, 30.133957, 41.013702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665760, 30.407354, 41.023792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261481, -0.244627, -0.933695,
		-0.632003, -0.687745, 0.357180,
		-0.729520, 0.683494, 0.025227,
		33.446903, 30.612402, 41.031361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382965, 29.817369, 40.679081>,  <33.957569, 30.133957, 41.013702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382965, 29.817369, 40.679081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321007, 30.212486, 40.672428>,  <33.283833, 30.449556, 40.668438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321007, 30.212486, 40.672428>,  <33.382965, 29.817369, 40.679081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321007, 30.212486, 40.672428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451419, -0.085742, -0.888183,
		-0.878765, -0.130072, 0.459189,
		-0.154900, 0.987790, -0.016630,
		33.274536, 30.508823, 40.667439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815022, 29.848625, 40.290215>,  <33.382965, 29.817369, 40.679081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815022, 29.848625, 40.290215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931854, 30.230854, 40.274338>,  <33.001953, 30.460192, 40.264812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931854, 30.230854, 40.274338>,  <32.815022, 29.848625, 40.290215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931854, 30.230854, 40.274338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333765, 0.062950, -0.940552,
		-0.896264, 0.287965, 0.337322,
		0.292081, 0.955570, -0.039692,
		33.019478, 30.517525, 40.262428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207893, 30.155590, 40.029320>,  <32.815022, 29.848625, 40.290215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207893, 30.155590, 40.029320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547035, 30.356150, 39.960331>,  <32.750519, 30.476486, 39.918938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547035, 30.356150, 39.960331>,  <32.207893, 30.155590, 40.029320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547035, 30.356150, 39.960331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218785, 0.034517, -0.975163,
		-0.482992, 0.864528, 0.138964,
		0.847852, 0.501399, -0.172474,
		32.801392, 30.506569, 39.908588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951328, 30.738720, 39.510712>,  <32.207893, 30.155590, 40.029320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951328, 30.738720, 39.510712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347874, 30.690361, 39.490372>,  <32.585800, 30.661346, 39.478168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347874, 30.690361, 39.490372>,  <31.951328, 30.738720, 39.510712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347874, 30.690361, 39.490372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032465, 0.149416, -0.988241,
		0.127071, 0.981356, 0.144201,
		0.991362, -0.120895, -0.050846,
		32.645283, 30.654093, 39.475117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140316, 31.237900, 38.932213>,  <31.951328, 30.738720, 39.510712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140316, 31.237900, 38.932213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444485, 30.982460, 38.979469>,  <32.626984, 30.829197, 39.007824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444485, 30.982460, 38.979469>,  <32.140316, 31.237900, 38.932213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444485, 30.982460, 38.979469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094936, -0.070648, -0.992973,
		0.642458, 0.766290, 0.006904,
		0.760417, -0.638599, 0.118137,
		32.672611, 30.790880, 39.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483372, 31.313848, 38.294743>,  <32.140316, 31.237900, 38.932213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483372, 31.313848, 38.294743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625137, 30.976954, 38.457237>,  <32.710197, 30.774817, 38.554733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625137, 30.976954, 38.457237>,  <32.483372, 31.313848, 38.294743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625137, 30.976954, 38.457237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478898, -0.209647, -0.852470,
		0.803149, 0.496671, 0.329044,
		0.354414, -0.842239, 0.406232,
		32.731461, 30.724281, 38.579105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167961, 31.374393, 38.150799>,  <32.483372, 31.313848, 38.294743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167961, 31.374393, 38.150799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080715, 30.986841, 38.197609>,  <33.028366, 30.754311, 38.225697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080715, 30.986841, 38.197609>,  <33.167961, 31.374393, 38.150799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080715, 30.986841, 38.197609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278440, -0.176714, -0.944057,
		0.935359, -0.173329, 0.308319,
		-0.218117, -0.968880, 0.117029,
		33.015282, 30.696177, 38.232719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783569, 30.992481, 38.132851>,  <33.167961, 31.374393, 38.150799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783569, 30.992481, 38.132851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469971, 30.779284, 38.005558>,  <33.281811, 30.651365, 37.929184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469971, 30.779284, 38.005558>,  <33.783569, 30.992481, 38.132851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469971, 30.779284, 38.005558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426758, -0.090474, -0.899829,
		0.450813, -0.841267, 0.298391,
		-0.783993, -0.532995, -0.318231,
		33.234772, 30.619385, 37.910088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954437, 30.272631, 37.838844>,  <33.783569, 30.992481, 38.132851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954437, 30.272631, 37.838844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685158, 30.486296, 37.634308>,  <33.523590, 30.614494, 37.511585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685158, 30.486296, 37.634308>,  <33.954437, 30.272631, 37.838844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685158, 30.486296, 37.634308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433792, -0.274743, -0.858103,
		-0.598853, -0.799493, -0.046757,
		-0.673201, 0.534161, -0.511344,
		33.483196, 30.646544, 37.480904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317703, 29.644691, 37.924763>,  <33.954437, 30.272631, 37.838844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317703, 29.644691, 37.924763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608921, 29.689638, 37.654263>,  <34.783653, 29.716606, 37.491962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608921, 29.689638, 37.654263>,  <34.317703, 29.644691, 37.924763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608921, 29.689638, 37.654263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669323, -0.329728, 0.665797,
		-0.148165, -0.937365, -0.315268,
		0.728048, 0.112368, -0.676254,
		34.827335, 29.723349, 37.451385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781204, 29.126472, 38.008377>,  <34.317703, 29.644691, 37.924763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781204, 29.126472, 38.008377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005791, 29.423597, 37.862507>,  <35.140541, 29.601871, 37.774986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005791, 29.423597, 37.862507>,  <34.781204, 29.126472, 38.008377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005791, 29.423597, 37.862507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736854, -0.248244, 0.628825,
		0.376570, -0.621776, -0.686724,
		0.561464, 0.742812, -0.364676,
		35.174229, 29.646441, 37.753105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487919, 28.864300, 38.114101>,  <34.781204, 29.126472, 38.008377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487919, 28.864300, 38.114101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517849, 29.258709, 38.054550>,  <35.535809, 29.495354, 38.018822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517849, 29.258709, 38.054550>,  <35.487919, 28.864300, 38.114101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517849, 29.258709, 38.054550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668439, 0.061190, 0.741246,
		0.739994, -0.154980, -0.654516,
		0.074828, 0.986021, -0.148875,
		35.540298, 29.554516, 38.009888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231659, 29.077644, 37.829975>,  <35.487919, 28.864300, 38.114101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231659, 29.077644, 37.829975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041721, 29.360111, 38.040062>,  <35.927757, 29.529591, 38.166115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041721, 29.360111, 38.040062>,  <36.231659, 29.077644, 37.829975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041721, 29.360111, 38.040062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773397, 0.050043, 0.631944,
		0.419975, 0.706275, -0.569910,
		-0.474846, 0.706167, 0.525214,
		35.899269, 29.571960, 38.197624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710167, 29.536860, 37.875366>,  <36.231659, 29.077644, 37.829975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710167, 29.536860, 37.875366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461678, 29.633387, 38.173588>,  <36.312584, 29.691303, 38.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461678, 29.633387, 38.173588>,  <36.710167, 29.536860, 37.875366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461678, 29.633387, 38.173588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779569, 0.093519, 0.619295,
		0.079723, 0.965930, -0.246218,
		-0.621222, 0.241316, 0.745553,
		36.275311, 29.705782, 38.397255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097507, 30.003429, 38.323315>,  <36.710167, 29.536860, 37.875366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097507, 30.003429, 38.323315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 29.903942, 38.573700>,  <36.624466, 29.844250, 38.723930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 29.903942, 38.573700>,  <37.097507, 30.003429, 38.323315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801857, 29.903942, 38.573700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653706, -0.040868, 0.755645,
		-0.162360, 0.967713, 0.192794,
		-0.739127, -0.248717, 0.625965,
		36.580120, 29.829327, 38.761490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214550, 30.425249, 38.939434>,  <37.097507, 30.003429, 38.323315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214550, 30.425249, 38.939434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964806, 30.141464, 39.070175>,  <36.814957, 29.971193, 39.148621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964806, 30.141464, 39.070175>,  <37.214550, 30.425249, 38.939434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964806, 30.141464, 39.070175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525845, -0.072320, 0.847500,
		-0.577629, 0.701025, 0.418221,
		-0.624364, -0.709460, 0.326856,
		36.777496, 29.928627, 39.168232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838821, 30.770531, 39.503696>,  <37.214550, 30.425249, 38.939434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838821, 30.770531, 39.503696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851109, 30.371887, 39.534233>,  <36.858479, 30.132702, 39.552555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851109, 30.371887, 39.534233>,  <36.838821, 30.770531, 39.503696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851109, 30.371887, 39.534233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429623, 0.082124, 0.899266,
		-0.902486, 0.005176, 0.430689,
		0.030715, -0.996609, 0.076339,
		36.860325, 30.072905, 39.557137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441559, 30.566767, 40.047413>,  <36.838821, 30.770531, 39.503696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441559, 30.566767, 40.047413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693562, 30.262524, 39.984722>,  <36.844765, 30.079977, 39.947105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693562, 30.262524, 39.984722>,  <36.441559, 30.566767, 40.047413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693562, 30.262524, 39.984722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345663, 0.093924, 0.933646,
		-0.695419, -0.642380, 0.322087,
		0.630007, -0.760609, -0.156730,
		36.882565, 30.034342, 39.937702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208332, 30.149826, 40.590153>,  <36.441559, 30.566767, 40.047413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208332, 30.149826, 40.590153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579998, 30.033092, 40.499390>,  <36.802998, 29.963053, 40.444931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579998, 30.033092, 40.499390>,  <36.208332, 30.149826, 40.590153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579998, 30.033092, 40.499390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208328, -0.093689, 0.973562,
		-0.305378, -0.951870, -0.026255,
		0.929163, -0.291834, -0.226912,
		36.858746, 29.945543, 40.431316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338604, 29.622911, 41.044064>,  <36.208332, 30.149826, 40.590153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338604, 29.622911, 41.044064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687286, 29.756317, 40.900452>,  <36.896496, 29.836361, 40.814285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687286, 29.756317, 40.900452>,  <36.338604, 29.622911, 41.044064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687286, 29.756317, 40.900452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429596, -0.167625, 0.887327,
		0.235755, -0.927723, -0.289396,
		0.871703, 0.333515, -0.359027,
		36.948799, 29.856371, 40.792744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764656, 29.141552, 41.250717>,  <36.338604, 29.622911, 41.044064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764656, 29.141552, 41.250717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012680, 29.443991, 41.166958>,  <37.161495, 29.625454, 41.116703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012680, 29.443991, 41.166958>,  <36.764656, 29.141552, 41.250717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012680, 29.443991, 41.166958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550677, -0.229316, 0.802601,
		0.558825, -0.612970, -0.558554,
		0.620055, 0.756097, -0.209401,
		37.198696, 29.670820, 41.104137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361683, 28.946455, 41.550003>,  <36.764656, 29.141552, 41.250717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361683, 28.946455, 41.550003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381382, 29.344145, 41.511864>,  <37.393200, 29.582760, 41.488979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381382, 29.344145, 41.511864>,  <37.361683, 28.946455, 41.550003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381382, 29.344145, 41.511864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370586, 0.070456, 0.926122,
		0.927492, -0.080942, -0.364976,
		0.049248, 0.994226, -0.095344,
		37.396156, 29.642412, 41.483261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094303, 29.148300, 41.890224>,  <37.361683, 28.946455, 41.550003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094303, 29.148300, 41.890224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847828, 29.462900, 41.873566>,  <37.699944, 29.651659, 41.863571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847828, 29.462900, 41.873566>,  <38.094303, 29.148300, 41.890224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847828, 29.462900, 41.873566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020159, 0.068609, 0.997440,
		0.787343, 0.613769, -0.058131,
		-0.616186, 0.786499, -0.041645,
		37.662971, 29.698851, 41.861073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396893, 29.677238, 42.272976>,  <38.094303, 29.148300, 41.890224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396893, 29.677238, 42.272976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010826, 29.781889, 42.273617>,  <37.779186, 29.844679, 42.274002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010826, 29.781889, 42.273617>,  <38.396893, 29.677238, 42.272976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010826, 29.781889, 42.273617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018010, 0.060333, 0.998016,
		0.261012, 0.963281, -0.062943,
		-0.965167, 0.261628, 0.001601,
		37.721275, 29.860378, 42.274097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379124, 30.128080, 42.898804>,  <38.396893, 29.677238, 42.272976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379124, 30.128080, 42.898804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001995, 30.029028, 42.809570>,  <37.775719, 29.969597, 42.756031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001995, 30.029028, 42.809570>,  <38.379124, 30.128080, 42.898804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001995, 30.029028, 42.809570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226051, -0.016770, 0.973971,
		-0.244925, 0.968710, -0.040166,
		-0.942822, -0.247630, -0.223086,
		37.719147, 29.954739, 42.742645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016510, 30.590775, 43.317623>,  <38.379124, 30.128080, 42.898804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016510, 30.590775, 43.317623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732178, 30.328876, 43.214844>,  <37.561577, 30.171738, 43.153175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732178, 30.328876, 43.214844>,  <38.016510, 30.590775, 43.317623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732178, 30.328876, 43.214844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227711, -0.131417, 0.964820,
		-0.665479, 0.744337, -0.055677,
		-0.710834, -0.654746, -0.256950,
		37.518929, 30.132452, 43.137760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462227, 30.798824, 43.589005>,  <38.016510, 30.590775, 43.317623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462227, 30.798824, 43.589005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431255, 30.402864, 43.541496>,  <37.412674, 30.165289, 43.512993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431255, 30.402864, 43.541496>,  <37.462227, 30.798824, 43.589005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431255, 30.402864, 43.541496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229638, -0.098220, 0.968307,
		-0.970192, 0.102246, -0.219713,
		-0.077425, -0.989898, -0.118772,
		37.408028, 30.105894, 43.505863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899860, 30.660597, 43.938648>,  <37.462227, 30.798824, 43.589005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899860, 30.660597, 43.938648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071571, 30.300095, 43.915123>,  <37.174599, 30.083794, 43.901009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071571, 30.300095, 43.915123>,  <36.899860, 30.660597, 43.938648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071571, 30.300095, 43.915123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250485, -0.181369, 0.950980,
		-0.867742, -0.393503, -0.303609,
		0.429279, -0.901255, -0.058815,
		37.200356, 30.029718, 43.897480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413185, 30.201935, 44.151600>,  <36.899860, 30.660597, 43.938648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413185, 30.201935, 44.151600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754539, 30.001226, 44.208103>,  <36.959354, 29.880802, 44.242004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754539, 30.001226, 44.208103>,  <36.413185, 30.201935, 44.151600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754539, 30.001226, 44.208103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232558, -0.123951, 0.964652,
		-0.466524, -0.856074, -0.222469,
		0.853388, -0.501770, 0.141261,
		37.010555, 29.850695, 44.250481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262337, 29.659616, 44.602493>,  <36.413185, 30.201935, 44.151600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262337, 29.659616, 44.602493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661011, 29.634562, 44.623291>,  <36.900215, 29.619530, 44.635769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661011, 29.634562, 44.623291>,  <36.262337, 29.659616, 44.602493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661011, 29.634562, 44.623291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070863, -0.353220, 0.932853,
		-0.040064, -0.933441, -0.356487,
		0.996681, -0.062635, 0.051995,
		36.960014, 29.615770, 44.638889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358250, 29.024979, 45.001411>,  <36.262337, 29.659616, 44.602493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358250, 29.024979, 45.001411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707077, 29.217905, 45.034561>,  <36.916374, 29.333660, 45.054451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707077, 29.217905, 45.034561>,  <36.358250, 29.024979, 45.001411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707077, 29.217905, 45.034561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069027, -0.288880, 0.954874,
		0.484492, -0.826994, -0.285216,
		0.872068, 0.482317, 0.082875,
		36.968697, 29.362600, 45.059425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828297, 28.583067, 45.533493>,  <36.358250, 29.024979, 45.001411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828297, 28.583067, 45.533493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913891, 28.972794, 45.505436>,  <36.965248, 29.206629, 45.488602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913891, 28.972794, 45.505436>,  <36.828297, 28.583067, 45.533493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913891, 28.972794, 45.505436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129895, 0.042783, 0.990604,
		0.968162, -0.221084, -0.117404,
		0.213984, 0.974316, -0.070138,
		36.978085, 29.265089, 45.484394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499290, 28.629337, 45.939503>,  <36.828297, 28.583067, 45.533493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499290, 28.629337, 45.939503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344360, 28.998070, 45.933739>,  <37.251400, 29.219309, 45.930283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344360, 28.998070, 45.933739>,  <37.499290, 28.629337, 45.939503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344360, 28.998070, 45.933739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319446, 0.148848, 0.935841,
		0.864830, 0.357876, -0.352127,
		-0.387329, 0.921829, -0.014407,
		37.228161, 29.274618, 45.929417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906166, 28.999798, 46.319351>,  <37.499290, 28.629337, 45.939503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906166, 28.999798, 46.319351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581947, 29.232916, 46.342567>,  <37.387417, 29.372787, 46.356499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581947, 29.232916, 46.342567>,  <37.906166, 28.999798, 46.319351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581947, 29.232916, 46.342567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191465, 0.170019, 0.966662,
		0.553499, 0.794633, -0.249393,
		-0.810543, 0.582797, 0.058039,
		37.338783, 29.407755, 46.359978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109776, 29.555275, 46.712372>,  <37.906166, 28.999798, 46.319351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109776, 29.555275, 46.712372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711094, 29.578392, 46.735123>,  <37.471886, 29.592262, 46.748772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711094, 29.578392, 46.735123>,  <38.109776, 29.555275, 46.712372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711094, 29.578392, 46.735123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062116, 0.093284, 0.993700,
		0.052121, 0.993961, -0.096567,
		-0.996707, 0.057791, 0.056878,
		37.412083, 29.595730, 46.752186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963970, 30.173328, 47.072353>,  <38.109776, 29.555275, 46.712372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963970, 30.173328, 47.072353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619434, 29.970732, 47.088161>,  <37.412712, 29.849174, 47.097645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619434, 29.970732, 47.088161>,  <37.963970, 30.173328, 47.072353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619434, 29.970732, 47.088161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023280, 0.038359, 0.998993,
		-0.507498, 0.861391, -0.021249,
		-0.861339, -0.506492, 0.039521,
		37.361034, 29.818785, 47.100018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326698, 30.571745, 47.456371>,  <37.963970, 30.173328, 47.072353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326698, 30.571745, 47.456371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268166, 30.176434, 47.473774>,  <37.233047, 29.939247, 47.484215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268166, 30.176434, 47.473774>,  <37.326698, 30.571745, 47.456371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268166, 30.176434, 47.473774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010623, 0.042411, 0.999044,
		-0.989179, 0.146654, 0.004293,
		-0.146331, -0.988278, 0.043510,
		37.224266, 29.879950, 47.486828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029968, 30.589041, 48.055668>,  <37.326698, 30.571745, 47.456371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029968, 30.589041, 48.055668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141529, 30.211460, 47.985043>,  <37.208466, 29.984913, 47.942669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141529, 30.211460, 47.985043>,  <37.029968, 30.589041, 48.055668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141529, 30.211460, 47.985043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092191, -0.156693, 0.983335,
		-0.955885, -0.290528, 0.043322,
		0.278898, -0.943950, -0.176565,
		37.225197, 29.928276, 47.932072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604065, 30.237005, 48.469257>,  <37.029968, 30.589041, 48.055668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604065, 30.237005, 48.469257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920643, 30.000626, 48.406788>,  <37.110592, 29.858797, 48.369305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920643, 30.000626, 48.406788>,  <36.604065, 30.237005, 48.469257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920643, 30.000626, 48.406788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015131, -0.236486, 0.971517,
		-0.611051, -0.771267, -0.178224,
		0.791446, -0.590950, -0.156176,
		37.158077, 29.823341, 48.359936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483414, 29.670563, 48.868298>,  <36.604065, 30.237005, 48.469257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483414, 29.670563, 48.868298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879814, 29.657740, 48.816322>,  <37.117657, 29.650045, 48.785137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879814, 29.657740, 48.816322>,  <36.483414, 29.670563, 48.868298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879814, 29.657740, 48.816322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125178, -0.121516, 0.984665,
		-0.047353, -0.992072, -0.116411,
		0.991004, -0.032055, -0.129940,
		37.177116, 29.648123, 48.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729980, 29.028795, 49.302120>,  <36.483414, 29.670563, 48.868298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729980, 29.028795, 49.302120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038464, 29.276863, 49.244671>,  <37.223553, 29.425705, 49.210201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038464, 29.276863, 49.244671>,  <36.729980, 29.028795, 49.302120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038464, 29.276863, 49.244671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253939, -0.092818, 0.962756,
		0.583743, -0.778956, -0.229068,
		0.771206, 0.620171, -0.143626,
		37.269825, 29.462914, 49.201584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311825, 28.761648, 49.519688>,  <36.729980, 29.028795, 49.302120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311825, 28.761648, 49.519688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433151, 29.142792, 49.522690>,  <37.505947, 29.371479, 49.524490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433151, 29.142792, 49.522690>,  <37.311825, 28.761648, 49.519688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433151, 29.142792, 49.522690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450090, -0.150202, 0.880261,
		0.839893, -0.263619, -0.474431,
		0.303314, 0.952861, 0.007501,
		37.524147, 29.428650, 49.524940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942909, 28.728565, 49.810787>,  <37.311825, 28.761648, 49.519688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942909, 28.728565, 49.810787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868980, 29.120459, 49.841682>,  <37.824623, 29.355595, 49.860218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868980, 29.120459, 49.841682>,  <37.942909, 28.728565, 49.810787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868980, 29.120459, 49.841682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462380, 0.017339, 0.886512,
		0.867205, 0.199563, -0.456213,
		-0.184825, 0.979732, 0.077238,
		37.813534, 29.414377, 49.864853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591354, 28.966619, 50.064232>,  <37.942909, 28.728565, 49.810787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591354, 28.966619, 50.064232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340542, 29.267685, 50.144558>,  <38.190056, 29.448324, 50.192753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340542, 29.267685, 50.144558>,  <38.591354, 28.966619, 50.064232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340542, 29.267685, 50.144558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391053, 0.081178, 0.916781,
		0.673727, 0.653380, -0.345233,
		-0.627032, 0.752665, 0.200814,
		38.152431, 29.493484, 50.204803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024857, 29.389587, 50.330490>,  <38.591354, 28.966619, 50.064232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024857, 29.389587, 50.330490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662689, 29.504471, 50.455540>,  <38.445389, 29.573400, 50.530571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662689, 29.504471, 50.455540>,  <39.024857, 29.389587, 50.330490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662689, 29.504471, 50.455540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346023, 0.072640, 0.935410,
		0.245947, 0.955110, -0.165150,
		-0.905416, 0.287207, 0.312625,
		38.391064, 29.590633, 50.549328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249355, 29.935825, 50.611347>,  <39.024857, 29.389587, 50.330490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249355, 29.935825, 50.611347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890388, 29.845959, 50.763222>,  <38.675007, 29.792038, 50.854347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890388, 29.845959, 50.763222>,  <39.249355, 29.935825, 50.611347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890388, 29.845959, 50.763222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382539, 0.032441, 0.923370,
		-0.219769, 0.973895, 0.056831,
		-0.897422, -0.224668, 0.379682,
		38.621162, 29.778559, 50.877125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964977, 30.489029, 51.076565>,  <39.249355, 29.935825, 50.611347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964977, 30.489029, 51.076565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824131, 30.123093, 51.155643>,  <38.739624, 29.903532, 51.203091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824131, 30.123093, 51.155643>,  <38.964977, 30.489029, 51.076565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824131, 30.123093, 51.155643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291460, 0.093550, 0.951998,
		-0.889420, 0.392832, 0.233699,
		-0.352112, -0.914840, 0.197700,
		38.718498, 29.848640, 51.214954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229404, 31.059244, 51.388882>,  <38.964977, 30.489029, 51.076565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229404, 31.059244, 51.388882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624481, 31.115223, 51.360962>,  <39.861526, 31.148811, 51.344212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624481, 31.115223, 51.360962>,  <39.229404, 31.059244, 51.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624481, 31.115223, 51.360962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085460, 0.109203, -0.990339,
		-0.130974, 0.984118, 0.119819,
		0.987695, 0.139949, -0.069800,
		39.920792, 31.157207, 51.340023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302475, 31.612108, 50.920841>,  <39.229404, 31.059244, 51.388882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302475, 31.612108, 50.920841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633526, 31.387785, 50.911648>,  <39.832157, 31.253191, 50.906132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633526, 31.387785, 50.911648>,  <39.302475, 31.612108, 50.920841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633526, 31.387785, 50.911648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093864, 0.178659, -0.979424,
		0.553375, 0.808440, 0.200503,
		0.827627, -0.560808, -0.022982,
		39.881813, 31.219543, 50.904755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816124, 32.020695, 50.677853>,  <39.302475, 31.612108, 50.920841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816124, 32.020695, 50.677853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964321, 31.653151, 50.623558>,  <40.053242, 31.432623, 50.590981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964321, 31.653151, 50.623558>,  <39.816124, 32.020695, 50.677853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964321, 31.653151, 50.623558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030339, 0.158034, -0.986968,
		0.928339, 0.361549, 0.086428,
		0.370496, -0.918862, -0.135740,
		40.075470, 31.377491, 50.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298653, 32.187271, 50.149036>,  <39.816124, 32.020695, 50.677853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298653, 32.187271, 50.149036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255291, 31.789709, 50.141098>,  <40.229275, 31.551170, 50.136337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255291, 31.789709, 50.141098>,  <40.298653, 32.187271, 50.149036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255291, 31.789709, 50.141098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032610, 0.023505, -0.999192,
		0.993572, -0.107670, -0.034960,
		-0.108405, -0.993909, -0.019842,
		40.222771, 31.491537, 50.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829685, 32.024963, 49.731976>,  <40.298653, 32.187271, 50.149036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829685, 32.024963, 49.731976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557701, 31.732109, 49.715786>,  <40.394512, 31.556398, 49.706074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557701, 31.732109, 49.715786>,  <40.829685, 32.024963, 49.731976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557701, 31.732109, 49.715786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143589, -0.078826, -0.986493,
		0.719053, -0.676587, 0.158724,
		-0.679960, -0.732132, -0.040471,
		40.353714, 31.512470, 49.703644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081184, 31.462938, 49.233669>,  <40.829685, 32.024963, 49.731976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081184, 31.462938, 49.233669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692982, 31.373610, 49.269985>,  <40.460060, 31.320011, 49.291775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692982, 31.373610, 49.269985>,  <41.081184, 31.462938, 49.233669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692982, 31.373610, 49.269985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066706, -0.113133, -0.991338,
		0.231662, -0.968157, 0.094900,
		-0.970507, -0.223325, 0.090790,
		40.401829, 31.306612, 49.297222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969490, 30.922289, 48.777843>,  <41.081184, 31.462938, 49.233669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969490, 30.922289, 48.777843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603752, 31.068285, 48.847992>,  <40.384308, 31.155882, 48.890083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603752, 31.068285, 48.847992>,  <40.969490, 30.922289, 48.777843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603752, 31.068285, 48.847992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223805, -0.094572, -0.970035,
		-0.337467, -0.926196, 0.168158,
		-0.914345, 0.364989, 0.175373,
		40.329449, 31.177782, 48.900604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623283, 30.528456, 48.379829>,  <40.969490, 30.922289, 48.777843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623283, 30.528456, 48.379829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368999, 30.830330, 48.444733>,  <40.216431, 31.011454, 48.483673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368999, 30.830330, 48.444733>,  <40.623283, 30.528456, 48.379829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368999, 30.830330, 48.444733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193266, 0.047900, -0.979977,
		-0.747346, -0.654336, 0.115405,
		-0.635706, 0.754685, 0.162259,
		40.178288, 31.056736, 48.493412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045223, 30.306854, 48.081470>,  <40.623283, 30.528456, 48.379829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045223, 30.306854, 48.081470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043015, 30.706610, 48.095257>,  <40.041691, 30.946463, 48.103527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043015, 30.706610, 48.095257>,  <40.045223, 30.306854, 48.081470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043015, 30.706610, 48.095257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230019, 0.032273, -0.972651,
		-0.973170, -0.013294, 0.229700,
		-0.005517, 0.999390, 0.034466,
		40.041359, 31.006428, 48.105595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476452, 30.405594, 47.706692>,  <40.045223, 30.306854, 48.081470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476452, 30.405594, 47.706692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662018, 30.759150, 47.730415>,  <39.773357, 30.971283, 47.744652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662018, 30.759150, 47.730415>,  <39.476452, 30.405594, 47.706692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662018, 30.759150, 47.730415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330036, 0.234578, -0.914357,
		-0.822106, 0.404610, 0.400541,
		0.463916, 0.883891, 0.059313,
		39.801193, 31.024317, 47.748211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982456, 30.833071, 47.346130>,  <39.476452, 30.405594, 47.706692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982456, 30.833071, 47.346130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298386, 31.077991, 47.360371>,  <39.487942, 31.224945, 47.368916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298386, 31.077991, 47.360371>,  <38.982456, 30.833071, 47.346130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298386, 31.077991, 47.360371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216790, 0.333002, -0.917667,
		-0.573746, 0.717074, 0.395753,
		0.789821, 0.612303, 0.035604,
		39.535332, 31.261683, 47.371052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840839, 31.539883, 47.256413>,  <38.982456, 30.833071, 47.346130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840839, 31.539883, 47.256413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215927, 31.475538, 47.133247>,  <39.440979, 31.436932, 47.059349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215927, 31.475538, 47.133247>,  <38.840839, 31.539883, 47.256413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215927, 31.475538, 47.133247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282960, 0.160534, -0.945602,
		0.201541, 0.973834, 0.105018,
		0.937718, -0.160862, -0.307910,
		39.497242, 31.427280, 47.040874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982887, 32.173344, 46.710274>,  <38.840839, 31.539883, 47.256413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982887, 32.173344, 46.710274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241673, 31.872677, 46.658993>,  <39.396942, 31.692276, 46.628223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241673, 31.872677, 46.658993>,  <38.982887, 32.173344, 46.710274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241673, 31.872677, 46.658993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201720, -0.006573, -0.979421,
		0.735357, 0.659509, -0.155879,
		0.646961, -0.751668, -0.128203,
		39.435760, 31.647177, 46.620533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355251, 32.356571, 46.088650>,  <38.982887, 32.173344, 46.710274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355251, 32.356571, 46.088650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455879, 31.973104, 46.141819>,  <39.516254, 31.743023, 46.173721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455879, 31.973104, 46.141819>,  <39.355251, 32.356571, 46.088650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455879, 31.973104, 46.141819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131913, -0.102092, -0.985990,
		0.958808, 0.265575, 0.100778,
		0.251566, -0.958669, 0.132920,
		39.531349, 31.685503, 46.181694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021496, 32.227554, 45.753532>,  <39.355251, 32.356571, 46.088650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021496, 32.227554, 45.753532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823296, 31.880672, 45.773281>,  <39.704376, 31.672544, 45.785130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823296, 31.880672, 45.773281>,  <40.021496, 32.227554, 45.753532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823296, 31.880672, 45.773281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064227, -0.093259, -0.993568,
		0.866229, -0.489144, 0.101908,
		-0.495502, -0.867203, 0.049368,
		39.674644, 31.620512, 45.788090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433853, 31.820684, 45.310406>,  <40.021496, 32.227554, 45.753532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433853, 31.820684, 45.310406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073528, 31.649607, 45.340382>,  <39.857334, 31.546961, 45.358368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073528, 31.649607, 45.340382>,  <40.433853, 31.820684, 45.310406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073528, 31.649607, 45.340382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081206, -0.335484, -0.938539,
		0.426548, -0.839362, 0.336939,
		-0.900812, -0.427693, 0.074938,
		39.803284, 31.521299, 45.362862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513676, 31.251131, 45.001564>,  <40.433853, 31.820684, 45.310406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513676, 31.251131, 45.001564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115696, 31.290777, 45.007942>,  <39.876907, 31.314566, 45.011768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115696, 31.290777, 45.007942>,  <40.513676, 31.251131, 45.001564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115696, 31.290777, 45.007942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046654, -0.315865, -0.947657,
		-0.088889, -0.943613, 0.318893,
		-0.994949, 0.099114, 0.015947,
		39.817211, 31.320513, 45.012726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250065, 30.684288, 44.726387>,  <40.513676, 31.251131, 45.001564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250065, 30.684288, 44.726387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968285, 30.962753, 44.671104>,  <39.799217, 31.129833, 44.637936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968285, 30.962753, 44.671104>,  <40.250065, 30.684288, 44.726387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968285, 30.962753, 44.671104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073700, -0.265425, -0.961311,
		-0.705913, -0.667013, 0.238287,
		-0.704454, 0.696163, -0.138208,
		39.756947, 31.171602, 44.629642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940044, 30.441132, 44.176414>,  <40.250065, 30.684288, 44.726387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940044, 30.441132, 44.176414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793152, 30.812300, 44.202049>,  <39.705017, 31.035000, 44.217430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793152, 30.812300, 44.202049>,  <39.940044, 30.441132, 44.176414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793152, 30.812300, 44.202049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176488, -0.001867, -0.984301,
		-0.913233, -0.372774, 0.164452,
		-0.367229, 0.927920, 0.064086,
		39.682983, 31.090675, 44.221275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277046, 30.487309, 43.805721>,  <39.940044, 30.441132, 44.176414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277046, 30.487309, 43.805721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398285, 30.867876, 43.827396>,  <39.471027, 31.096216, 43.840401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398285, 30.867876, 43.827396>,  <39.277046, 30.487309, 43.805721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398285, 30.867876, 43.827396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176414, 0.111894, -0.977936,
		-0.936489, 0.286848, 0.201757,
		0.303094, 0.951419, 0.054183,
		39.489212, 31.153301, 43.843651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710041, 30.861586, 43.518322>,  <39.277046, 30.487309, 43.805721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710041, 30.861586, 43.518322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020977, 31.112619, 43.500988>,  <39.207539, 31.263239, 43.490589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020977, 31.112619, 43.500988>,  <38.710041, 30.861586, 43.518322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020977, 31.112619, 43.500988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248445, 0.242982, -0.937675,
		-0.577940, 0.739661, 0.344800,
		0.777342, 0.627583, -0.043336,
		39.254181, 31.300894, 43.487988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448818, 31.567911, 43.188389>,  <38.710041, 30.861586, 43.518322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448818, 31.567911, 43.188389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839695, 31.532249, 43.111286>,  <39.074219, 31.510853, 43.065025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839695, 31.532249, 43.111286>,  <38.448818, 31.567911, 43.188389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839695, 31.532249, 43.111286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158071, 0.300799, -0.940496,
		0.141829, 0.949511, 0.279844,
		0.977189, -0.089155, -0.192752,
		39.132851, 31.505503, 43.053459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585518, 32.163250, 42.732803>,  <38.448818, 31.567911, 43.188389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585518, 32.163250, 42.732803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873287, 31.890417, 42.680355>,  <39.045948, 31.726719, 42.648888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873287, 31.890417, 42.680355>,  <38.585518, 32.163250, 42.732803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873287, 31.890417, 42.680355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059615, 0.127442, -0.990053,
		0.692004, 0.720088, 0.051023,
		0.719428, -0.682079, -0.131118,
		39.089115, 31.685793, 42.641018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875507, 32.381100, 42.184772>,  <38.585518, 32.163250, 42.732803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875507, 32.381100, 42.184772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059345, 32.025856, 42.182526>,  <39.169647, 31.812710, 42.181179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059345, 32.025856, 42.182526>,  <38.875507, 32.381100, 42.184772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059345, 32.025856, 42.182526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085854, 0.050720, -0.995016,
		0.883970, 0.456820, 0.099559,
		0.459593, -0.888112, -0.005615,
		39.197224, 31.759422, 42.180840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473370, 32.428616, 41.741131>,  <38.875507, 32.381100, 42.184772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473370, 32.428616, 41.741131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344208, 32.050835, 41.765587>,  <39.266708, 31.824165, 41.780262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344208, 32.050835, 41.765587>,  <39.473370, 32.428616, 41.741131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344208, 32.050835, 41.765587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061977, -0.043361, -0.997135,
		0.944399, -0.325771, -0.044532,
		-0.322907, -0.944454, 0.061141,
		39.247337, 31.767498, 41.783928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864651, 32.167377, 41.217365>,  <39.473370, 32.428616, 41.741131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864651, 32.167377, 41.217365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570179, 31.907438, 41.292988>,  <39.393497, 31.751474, 41.338360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570179, 31.907438, 41.292988>,  <39.864651, 32.167377, 41.217365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570179, 31.907438, 41.292988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193425, -0.065663, -0.978915,
		0.648561, -0.757221, -0.077358,
		-0.736176, -0.649849, 0.189052,
		39.349327, 31.712482, 41.349705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992611, 31.590240, 40.877251>,  <39.864651, 32.167377, 41.217365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992611, 31.590240, 40.877251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596764, 31.573357, 40.932213>,  <39.359257, 31.563227, 40.965191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596764, 31.573357, 40.932213>,  <39.992611, 31.590240, 40.877251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596764, 31.573357, 40.932213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136608, -0.021153, -0.990399,
		0.044715, -0.998885, 0.015166,
		-0.989616, -0.042214, 0.137401,
		39.299877, 31.560694, 40.973434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693958, 31.127483, 40.318550>,  <39.992611, 31.590240, 40.877251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693958, 31.127483, 40.318550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376495, 31.334606, 40.446293>,  <39.186020, 31.458879, 40.522938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376495, 31.334606, 40.446293>,  <39.693958, 31.127483, 40.318550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376495, 31.334606, 40.446293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399269, -0.047258, -0.915615,
		-0.459019, -0.854191, 0.244251,
		-0.793654, 0.517807, 0.319360,
		39.138401, 31.489948, 40.542099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043087, 30.850090, 39.959827>,  <39.693958, 31.127483, 40.318550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043087, 30.850090, 39.959827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952290, 31.212822, 40.101887>,  <38.897812, 31.430462, 40.187122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952290, 31.212822, 40.101887>,  <39.043087, 30.850090, 39.959827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952290, 31.212822, 40.101887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295645, 0.283298, -0.912325,
		-0.927938, -0.312089, 0.203793,
		-0.226992, 0.906831, 0.355150,
		38.884193, 31.484871, 40.208431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725517, 31.084024, 39.470634>,  <39.043087, 30.850090, 39.959827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725517, 31.084024, 39.470634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723911, 31.436739, 39.659286>,  <38.722950, 31.648367, 39.772480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723911, 31.436739, 39.659286>,  <38.725517, 31.084024, 39.470634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723911, 31.436739, 39.659286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337480, 0.442772, -0.830699,
		-0.941324, -0.162499, 0.295809,
		-0.004011, 0.881786, 0.471632,
		38.722710, 31.701275, 39.800777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094559, 31.356470, 39.305790>,  <38.725517, 31.084024, 39.470634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094559, 31.356470, 39.305790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356819, 31.644392, 39.397011>,  <38.514175, 31.817144, 39.451744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356819, 31.644392, 39.397011>,  <38.094559, 31.356470, 39.305790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356819, 31.644392, 39.397011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116896, 0.395149, -0.911149,
		-0.745964, 0.570734, 0.343221,
		0.655647, 0.719805, 0.228051,
		38.553513, 31.860334, 39.465427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847099, 31.927198, 38.930195>,  <38.094559, 31.356470, 39.305790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847099, 31.927198, 38.930195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234352, 32.002880, 38.995823>,  <38.466705, 32.048290, 39.035198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234352, 32.002880, 38.995823>,  <37.847099, 31.927198, 38.930195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234352, 32.002880, 38.995823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070047, 0.424409, -0.902757,
		-0.240437, 0.885482, 0.397632,
		0.968134, 0.189204, 0.164069,
		38.524792, 32.059643, 39.045044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962505, 32.499008, 38.553532>,  <37.847099, 31.927198, 38.930195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962505, 32.499008, 38.553532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342258, 32.398960, 38.629547>,  <38.570110, 32.338932, 38.675156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342258, 32.398960, 38.629547>,  <37.962505, 32.499008, 38.553532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342258, 32.398960, 38.629547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275656, 0.373289, -0.885815,
		0.150623, 0.893361, 0.423342,
		0.949382, -0.250121, 0.190034,
		38.627071, 32.323925, 38.686558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305649, 33.034451, 38.395645>,  <37.962505, 32.499008, 38.553532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305649, 33.034451, 38.395645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572716, 32.736767, 38.387871>,  <38.732956, 32.558155, 38.383205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572716, 32.736767, 38.387871>,  <38.305649, 33.034451, 38.395645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572716, 32.736767, 38.387871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237875, 0.238005, -0.941684,
		0.705435, 0.624106, 0.335936,
		0.667665, -0.744208, -0.019438,
		38.773014, 32.513504, 38.382038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970764, 33.330189, 38.089481>,  <38.305649, 33.034451, 38.395645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970764, 33.330189, 38.089481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952244, 32.932644, 38.049305>,  <38.941132, 32.694115, 38.025200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952244, 32.932644, 38.049305>,  <38.970764, 33.330189, 38.089481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952244, 32.932644, 38.049305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396982, 0.073959, -0.914841,
		0.916658, -0.082230, 0.391123,
		-0.046301, -0.993865, -0.100439,
		38.938354, 32.634483, 38.019173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564720, 33.246178, 37.756752>,  <38.970764, 33.330189, 38.089481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564720, 33.246178, 37.756752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392567, 32.889118, 37.703167>,  <39.289276, 32.674881, 37.671017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392567, 32.889118, 37.703167>,  <39.564720, 33.246178, 37.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392567, 32.889118, 37.703167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446206, -0.081382, -0.891222,
		0.784649, -0.443339, 0.433332,
		-0.430379, -0.892652, -0.133965,
		39.263454, 32.621323, 37.662979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021782, 32.943203, 37.360058>,  <39.564720, 33.246178, 37.756752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021782, 32.943203, 37.360058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703159, 32.704563, 37.320915>,  <39.511986, 32.561378, 37.297432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703159, 32.704563, 37.320915>,  <40.021782, 32.943203, 37.360058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703159, 32.704563, 37.320915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325425, -0.286706, -0.901054,
		0.509510, -0.749582, 0.422524,
		-0.796554, -0.596596, -0.097854,
		39.464191, 32.525585, 37.291557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315998, 32.249199, 37.268562>,  <40.021782, 32.943203, 37.360058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315998, 32.249199, 37.268562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953953, 32.295143, 37.104816>,  <39.736725, 32.322712, 37.006569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953953, 32.295143, 37.104816>,  <40.315998, 32.249199, 37.268562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953953, 32.295143, 37.104816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399401, -0.100447, -0.911257,
		-0.145795, -0.988289, 0.045037,
		-0.905109, 0.114869, -0.409368,
		39.682419, 32.329601, 36.982006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310528, 31.807182, 36.781574>,  <40.315998, 32.249199, 37.268562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310528, 31.807182, 36.781574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028454, 32.066891, 36.667618>,  <39.859211, 32.222717, 36.599243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028454, 32.066891, 36.667618>,  <40.310528, 31.807182, 36.781574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028454, 32.066891, 36.667618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328405, -0.057013, -0.942815,
		-0.628387, -0.758415, -0.173020,
		-0.705181, 0.649273, -0.284894,
		39.816898, 32.261673, 36.582150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099655, 31.538601, 36.178417>,  <40.310528, 31.807182, 36.781574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099655, 31.538601, 36.178417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984715, 31.921631, 36.169628>,  <39.915749, 32.151447, 36.164356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984715, 31.921631, 36.169628>,  <40.099655, 31.538601, 36.178417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984715, 31.921631, 36.169628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449046, 0.114419, -0.886152,
		-0.846041, -0.264505, -0.462873,
		-0.287353, 0.957573, -0.021971,
		39.898510, 32.208904, 36.163036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862957, 31.723595, 35.536816>,  <40.099655, 31.538601, 36.178417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862957, 31.723595, 35.536816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040565, 32.049854, 35.685173>,  <40.147129, 32.245609, 35.774189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040565, 32.049854, 35.685173>,  <39.862957, 31.723595, 35.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040565, 32.049854, 35.685173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596474, 0.039817, -0.801644,
		-0.668628, 0.577176, -0.468833,
		0.444022, 0.815649, 0.370893,
		40.173771, 32.294548, 35.796440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772850, 32.375175, 35.064632>,  <39.862957, 31.723595, 35.536816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772850, 32.375175, 35.064632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098682, 32.380379, 35.296593>,  <40.294182, 32.383499, 35.435768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098682, 32.380379, 35.296593>,  <39.772850, 32.375175, 35.064632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098682, 32.380379, 35.296593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558780, 0.250627, -0.790538,
		-0.155621, 0.967996, 0.196889,
		0.814584, 0.013007, 0.579900,
		40.343056, 32.384281, 35.470562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170822, 32.979389, 35.037842>,  <39.772850, 32.375175, 35.064632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170822, 32.979389, 35.037842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457317, 32.723118, 35.148499>,  <40.629215, 32.569355, 35.214893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457317, 32.723118, 35.148499>,  <40.170822, 32.979389, 35.037842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457317, 32.723118, 35.148499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587920, 0.340395, -0.733813,
		0.375972, 0.688229, 0.620473,
		0.716237, -0.640682, 0.276645,
		40.672188, 32.530914, 35.231491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828918, 33.305470, 35.143738>,  <40.170822, 32.979389, 35.037842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828918, 33.305470, 35.143738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898361, 32.935200, 35.009285>,  <40.940025, 32.713036, 34.928612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898361, 32.935200, 35.009285>,  <40.828918, 33.305470, 35.143738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898361, 32.935200, 35.009285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642034, 0.365192, -0.674113,
		0.746763, -0.098779, 0.657714,
		0.173604, -0.925677, -0.336131,
		40.950443, 32.657497, 34.908447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587242, 33.150852, 35.197220>,  <40.828918, 33.305470, 35.143738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587242, 33.150852, 35.197220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401299, 32.963295, 34.896809>,  <41.289734, 32.850761, 34.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401299, 32.963295, 34.896809>,  <41.587242, 33.150852, 35.197220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401299, 32.963295, 34.896809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638184, 0.410510, -0.651309,
		0.613700, -0.782060, 0.108413,
		-0.464858, -0.468896, -0.751028,
		41.261841, 32.822628, 34.671501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261726, 33.271805, 35.372402>,  <41.587242, 33.150852, 35.197220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261726, 33.271805, 35.372402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275932, 32.878658, 35.444752>,  <42.284454, 32.642769, 35.488163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275932, 32.878658, 35.444752>,  <42.261726, 33.271805, 35.372402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275932, 32.878658, 35.444752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729095, 0.149261, 0.667938,
		-0.683491, 0.108154, 0.721903,
		0.035512, -0.982865, 0.180873,
		42.286587, 32.583797, 35.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712067, 33.834332, 35.433136>,  <42.261726, 33.271805, 35.372402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712067, 33.834332, 35.433136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953003, 33.889385, 35.747650>,  <42.097565, 33.922417, 35.936359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953003, 33.889385, 35.747650>,  <41.712067, 33.834332, 35.433136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953003, 33.889385, 35.747650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052327, 0.989713, -0.133157,
		-0.796522, 0.039062, 0.603346,
		0.602341, 0.137633, 0.786284,
		42.133705, 33.930676, 35.983536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457142, 34.435078, 35.621143>,  <41.712067, 33.834332, 35.433136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457142, 34.435078, 35.621143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822365, 34.403801, 35.781246>,  <42.041500, 34.385036, 35.877308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822365, 34.403801, 35.781246>,  <41.457142, 34.435078, 35.621143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822365, 34.403801, 35.781246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160810, 0.970956, -0.177155,
		-0.374780, 0.226119, 0.899117,
		0.913061, -0.078193, 0.400257,
		42.096283, 34.380344, 35.901321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538586, 34.984169, 36.192581>,  <41.457142, 34.435078, 35.621143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538586, 34.984169, 36.192581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917107, 34.906952, 36.088860>,  <42.144218, 34.860622, 36.026627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917107, 34.906952, 36.088860>,  <41.538586, 34.984169, 36.192581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917107, 34.906952, 36.088860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225294, 0.969068, 0.100747,
		0.231836, -0.153758, 0.960526,
		0.946306, -0.193044, -0.259306,
		42.201000, 34.849037, 36.011066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063171, 35.398857, 36.652699>,  <41.538586, 34.984169, 36.192581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063171, 35.398857, 36.652699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267406, 35.309513, 36.320576>,  <42.389946, 35.255909, 36.121300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267406, 35.309513, 36.320576>,  <42.063171, 35.398857, 36.652699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267406, 35.309513, 36.320576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318177, 0.946202, -0.058872,
		0.798789, -0.234126, 0.554185,
		0.510587, -0.223355, -0.830309,
		42.420582, 35.242508, 36.071484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614285, 35.963657, 36.585255>,  <42.063171, 35.398857, 36.652699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614285, 35.963657, 36.585255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588955, 35.825245, 36.210819>,  <42.573757, 35.742199, 35.986160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588955, 35.825245, 36.210819>,  <42.614285, 35.963657, 36.585255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588955, 35.825245, 36.210819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307318, 0.885628, -0.348163,
		0.949498, -0.309722, 0.050262,
		-0.063321, -0.346027, -0.936085,
		42.569958, 35.721436, 35.929993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262653, 36.118008, 36.333336>,  <42.614285, 35.963657, 36.585255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262653, 36.118008, 36.333336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029240, 36.082077, 36.010494>,  <42.889191, 36.060520, 35.816788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029240, 36.082077, 36.010494>,  <43.262653, 36.118008, 36.333336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029240, 36.082077, 36.010494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419938, 0.817290, -0.394575,
		0.695081, -0.569183, -0.439197,
		-0.583537, -0.089826, -0.807104,
		42.854179, 36.055130, 35.768364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671783, 36.369934, 35.720768>,  <43.262653, 36.118008, 36.333336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671783, 36.369934, 35.720768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289726, 36.369858, 35.602306>,  <43.060493, 36.369812, 35.531231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289726, 36.369858, 35.602306>,  <43.671783, 36.369934, 35.720768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289726, 36.369858, 35.602306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130834, 0.896850, -0.422542,
		0.265683, -0.442334, -0.856594,
		-0.955141, -0.000190, -0.296150,
		43.003185, 36.369801, 35.513462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680794, 36.536160, 34.995472>,  <43.671783, 36.369934, 35.720768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680794, 36.536160, 34.995472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328297, 36.653973, 35.143349>,  <43.116798, 36.724659, 35.232075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328297, 36.653973, 35.143349>,  <43.680794, 36.536160, 34.995472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328297, 36.653973, 35.143349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010918, 0.794600, -0.607035,
		-0.472546, -0.530906, -0.703448,
		-0.881238, 0.294532, 0.369689,
		43.063927, 36.742332, 35.254257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358284, 36.797836, 34.404232>,  <43.680794, 36.536160, 34.995472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358284, 36.797836, 34.404232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130150, 36.933586, 34.703442>,  <42.993271, 37.015034, 34.882969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130150, 36.933586, 34.703442>,  <43.358284, 36.797836, 34.404232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130150, 36.933586, 34.703442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130911, 0.936574, -0.325101,
		-0.810913, -0.087492, -0.578589,
		-0.570335, 0.339373, 0.748027,
		42.959049, 37.035397, 34.927849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032356, 37.295315, 34.145321>,  <43.358284, 36.797836, 34.404232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032356, 37.295315, 34.145321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956154, 37.391319, 34.526077>,  <42.910431, 37.448921, 34.754532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956154, 37.391319, 34.526077>,  <43.032356, 37.295315, 34.145321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956154, 37.391319, 34.526077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043018, 0.970761, -0.236164,
		-0.980743, -0.004042, -0.195261,
		-0.190506, 0.240016, 0.951893,
		42.899002, 37.463326, 34.811646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586285, 37.865219, 34.114254>,  <43.032356, 37.295315, 34.145321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586285, 37.865219, 34.114254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713440, 37.880394, 34.493202>,  <42.789734, 37.889500, 34.720570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713440, 37.880394, 34.493202>,  <42.586285, 37.865219, 34.114254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713440, 37.880394, 34.493202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049250, 0.998511, -0.023460,
		-0.946847, -0.039200, 0.319287,
		0.317892, 0.037938, 0.947367,
		42.808807, 37.891777, 34.777412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030273, 38.171124, 34.528320>,  <42.586285, 37.865219, 34.114254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030273, 38.171124, 34.528320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377590, 38.228756, 34.718185>,  <42.585979, 38.263336, 34.832104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377590, 38.228756, 34.718185>,  <42.030273, 38.171124, 34.528320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377590, 38.228756, 34.718185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181198, 0.982889, 0.033118,
		-0.461773, -0.114764, 0.879542,
		0.868293, 0.144078, 0.474666,
		42.638077, 38.271980, 34.860584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961937, 38.600246, 35.190907>,  <42.030273, 38.171124, 34.528320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961937, 38.600246, 35.190907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346542, 38.645580, 35.090790>,  <42.577305, 38.672783, 35.030720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346542, 38.645580, 35.090790>,  <41.961937, 38.600246, 35.190907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346542, 38.645580, 35.090790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062773, 0.977481, 0.201472,
		0.267489, -0.178007, 0.946976,
		0.961514, 0.113336, -0.250291,
		42.634998, 38.679581, 35.015701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227345, 39.059734, 35.575813>,  <41.961937, 38.600246, 35.190907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227345, 39.059734, 35.575813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523956, 39.069569, 35.307625>,  <42.701923, 39.075470, 35.146709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523956, 39.069569, 35.307625>,  <42.227345, 39.059734, 35.575813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523956, 39.069569, 35.307625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151337, 0.967444, 0.202853,
		0.653634, -0.251888, 0.713663,
		0.741525, 0.024588, -0.670475,
		42.746414, 39.076946, 35.106483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705040, 39.425034, 35.836506>,  <42.227345, 39.059734, 35.575813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705040, 39.425034, 35.836506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765049, 39.474777, 35.444176>,  <42.801056, 39.504623, 35.208778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765049, 39.474777, 35.444176>,  <42.705040, 39.425034, 35.836506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765049, 39.474777, 35.444176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158540, 0.976194, 0.148023,
		0.975885, -0.177711, 0.126757,
		0.150045, 0.124357, -0.980827,
		42.810055, 39.512085, 35.149925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218925, 39.844307, 35.854946>,  <42.705040, 39.425034, 35.836506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218925, 39.844307, 35.854946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093681, 39.876190, 35.476398>,  <43.018536, 39.895321, 35.249271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093681, 39.876190, 35.476398>,  <43.218925, 39.844307, 35.854946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093681, 39.876190, 35.476398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081540, 0.995049, 0.056826,
		0.946209, -0.059374, -0.318062,
		-0.313114, 0.079704, -0.946365,
		42.999748, 39.900101, 35.192490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763634, 40.221302, 35.543232>,  <43.218925, 39.844307, 35.854946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763634, 40.221302, 35.543232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448166, 40.265945, 35.301388>,  <43.258884, 40.292732, 35.156281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448166, 40.265945, 35.301388>,  <43.763634, 40.221302, 35.543232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448166, 40.265945, 35.301388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196487, 0.977568, -0.075852,
		0.582578, -0.178619, -0.792905,
		-0.788667, 0.111606, -0.604606,
		43.211567, 40.299427, 35.120007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943680, 40.614536, 34.994953>,  <43.763634, 40.221302, 35.543232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943680, 40.614536, 34.994953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545563, 40.652878, 35.000744>,  <43.306694, 40.675880, 35.004219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545563, 40.652878, 35.000744>,  <43.943680, 40.614536, 34.994953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545563, 40.652878, 35.000744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093525, 0.988752, -0.116719,
		-0.025500, -0.114815, -0.993059,
		-0.995290, 0.095852, 0.014475,
		43.246975, 40.681633, 35.005085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874508, 41.235157, 34.546062>,  <43.943680, 40.614536, 34.994953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874508, 41.235157, 34.546062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517773, 41.192570, 34.721924>,  <43.303734, 41.167019, 34.827442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517773, 41.192570, 34.721924>,  <43.874508, 41.235157, 34.546062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517773, 41.192570, 34.721924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217975, 0.952775, -0.211438,
		-0.396383, -0.284402, -0.872924,
		-0.891834, -0.106465, 0.439656,
		43.250221, 41.160629, 34.853821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448437, 41.440193, 34.027195>,  <43.874508, 41.235157, 34.546062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448437, 41.440193, 34.027195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300541, 41.497181, 34.394455>,  <43.211803, 41.531372, 34.614811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300541, 41.497181, 34.394455>,  <43.448437, 41.440193, 34.027195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300541, 41.497181, 34.394455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093919, 0.988844, -0.115617,
		-0.924375, 0.043482, -0.379000,
		-0.369744, 0.142468, 0.918146,
		43.189617, 41.539921, 34.669899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868107, 41.845722, 34.000759>,  <43.448437, 41.440193, 34.027195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868107, 41.845722, 34.000759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033108, 41.907154, 34.359928>,  <43.132107, 41.944012, 34.575428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033108, 41.907154, 34.359928>,  <42.868107, 41.845722, 34.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033108, 41.907154, 34.359928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003122, 0.985442, -0.169982,
		-0.910953, 0.072920, 0.406013,
		0.412498, 0.153578, 0.897920,
		43.156857, 41.953228, 34.629303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363029, 42.163403, 34.528355>,  <42.868107, 41.845722, 34.000759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363029, 42.163403, 34.528355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742260, 42.260239, 34.610855>,  <42.969799, 42.318340, 34.660355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742260, 42.260239, 34.610855>,  <42.363029, 42.163403, 34.528355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742260, 42.260239, 34.610855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229772, 0.969778, -0.082071,
		-0.219882, 0.030420, 0.975052,
		0.948080, 0.242086, 0.206247,
		43.026684, 42.332863, 34.672729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506042, 42.614574, 35.067543>,  <42.363029, 42.163403, 34.528355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506042, 42.614574, 35.067543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783325, 42.681000, 34.787003>,  <42.949696, 42.720856, 34.618679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783325, 42.681000, 34.787003>,  <42.506042, 42.614574, 35.067543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783325, 42.681000, 34.787003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235987, 0.971751, -0.003156,
		0.681012, 0.167697, 0.712811,
		0.693204, 0.166065, -0.701349,
		42.991287, 42.730820, 34.576599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057892, 43.189762, 35.287766>,  <42.506042, 42.614574, 35.067543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057892, 43.189762, 35.287766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952042, 43.158379, 34.903305>,  <42.888531, 43.139549, 34.672626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952042, 43.158379, 34.903305>,  <43.057892, 43.189762, 35.287766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952042, 43.158379, 34.903305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301256, 0.953530, 0.005101,
		0.916089, 0.290904, -0.275963,
		-0.264622, -0.078462, -0.961155,
		42.872654, 43.134838, 34.614960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352379, 43.769020, 34.837570>,  <43.057892, 43.189762, 35.287766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352379, 43.769020, 34.837570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005951, 43.643929, 34.681557>,  <42.798096, 43.568874, 34.587948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005951, 43.643929, 34.681557>,  <43.352379, 43.769020, 34.837570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005951, 43.643929, 34.681557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386625, 0.913592, 0.125976,
		0.316935, 0.259900, -0.912143,
		-0.866068, -0.312731, -0.390033,
		42.746132, 43.550110, 34.564548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902504, 43.274197, 34.884712>,  <43.352379, 43.769020, 34.837570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902504, 43.274197, 34.884712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932137, 43.611111, 34.671143>,  <43.949917, 43.813259, 34.542999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932137, 43.611111, 34.671143>,  <43.902504, 43.274197, 34.884712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932137, 43.611111, 34.671143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010602, -0.536029, -0.844133,
		-0.997196, 0.056874, -0.048640,
		0.074082, 0.842282, -0.533923,
		43.954361, 43.863796, 34.510967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324528, 42.929390, 35.400505>,  <43.902504, 43.274197, 34.884712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324528, 42.929390, 35.400505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579876, 42.667183, 35.239120>,  <44.733086, 42.509857, 35.142292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579876, 42.667183, 35.239120>,  <44.324528, 42.929390, 35.400505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579876, 42.667183, 35.239120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371092, -0.197123, 0.907432,
		-0.674373, -0.728995, 0.117422,
		0.638367, -0.655522, -0.403458,
		44.771385, 42.470528, 35.118084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449825, 42.366211, 35.842304>,  <44.324528, 42.929390, 35.400505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449825, 42.366211, 35.842304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797508, 42.393597, 35.646427>,  <45.006119, 42.410027, 35.528900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797508, 42.393597, 35.646427>,  <44.449825, 42.366211, 35.842304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797508, 42.393597, 35.646427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493305, -0.187421, 0.849425,
		-0.033626, -0.979891, -0.196679,
		0.869206, 0.068460, -0.489688,
		45.058270, 42.414135, 35.499519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782555, 41.676460, 35.977112>,  <44.449825, 42.366211, 35.842304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782555, 41.676460, 35.977112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030853, 41.986233, 35.928230>,  <45.179832, 42.172096, 35.898903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030853, 41.986233, 35.928230>,  <44.782555, 41.676460, 35.977112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030853, 41.986233, 35.928230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345989, -0.130720, 0.929088,
		0.703542, -0.619004, -0.349088,
		0.620742, 0.774432, -0.122202,
		45.217075, 42.218563, 35.891571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493565, 41.572491, 36.250938>,  <44.782555, 41.676460, 35.977112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493565, 41.572491, 36.250938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476963, 41.972122, 36.246506>,  <45.467003, 42.211899, 36.243847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476963, 41.972122, 36.246506>,  <45.493565, 41.572491, 36.250938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476963, 41.972122, 36.246506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208997, 0.019527, 0.977721,
		0.977035, 0.038263, -0.209614,
		-0.041504, 0.999077, -0.011082,
		45.464512, 42.271847, 36.243179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186382, 42.121712, 36.660431>,  <45.493565, 41.572491, 36.250938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186382, 42.121712, 36.660431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296925, 42.146526, 37.044052>,  <45.363251, 42.161415, 37.274223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296925, 42.146526, 37.044052>,  <45.186382, 42.121712, 36.660431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296925, 42.146526, 37.044052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212957, -0.969154, 0.124054,
		0.937164, -0.238520, -0.254623,
		0.276358, 0.062035, 0.959051,
		45.379833, 42.165138, 37.331768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806824, 41.834099, 36.923946>,  <45.186382, 42.121712, 36.660431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806824, 41.834099, 36.923946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549763, 41.801800, 37.228703>,  <45.395527, 41.782421, 37.411556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549763, 41.801800, 37.228703>,  <45.806824, 41.834099, 36.923946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549763, 41.801800, 37.228703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130189, -0.991478, 0.004737,
		0.755019, 0.102235, 0.647684,
		-0.642649, -0.080745, 0.761894,
		45.356968, 41.777576, 37.457272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139500, 41.404133, 37.449062>,  <45.806824, 41.834099, 36.923946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139500, 41.404133, 37.449062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740211, 41.383244, 37.460560>,  <45.500637, 41.370712, 37.467457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740211, 41.383244, 37.460560>,  <46.139500, 41.404133, 37.449062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740211, 41.383244, 37.460560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046746, -0.985006, -0.166066,
		0.036985, -0.164427, 0.985696,
		-0.998222, -0.052220, 0.028744,
		45.440746, 41.367577, 37.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008320, 40.838764, 37.900093>,  <46.139500, 41.404133, 37.449062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008320, 40.838764, 37.900093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704971, 40.912922, 37.650135>,  <45.522961, 40.957417, 37.500160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704971, 40.912922, 37.650135>,  <46.008320, 40.838764, 37.900093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704971, 40.912922, 37.650135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094757, -0.979871, -0.175711,
		-0.644895, -0.074041, 0.760676,
		-0.758374, 0.185395, -0.624898,
		45.477459, 40.968540, 37.462666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568031, 40.269501, 38.066303>,  <46.008320, 40.838764, 37.900093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568031, 40.269501, 38.066303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443943, 40.419025, 37.716667>,  <45.369492, 40.508739, 37.506886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443943, 40.419025, 37.716667>,  <45.568031, 40.269501, 38.066303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443943, 40.419025, 37.716667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147692, -0.927235, -0.344125,
		-0.939123, 0.022342, 0.342854,
		-0.310217, 0.373813, -0.874088,
		45.350876, 40.531170, 37.454441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033749, 39.954369, 38.035160>,  <45.568031, 40.269501, 38.066303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033749, 39.954369, 38.035160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119625, 40.068119, 37.661415>,  <45.171150, 40.136372, 37.437168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119625, 40.068119, 37.661415>,  <45.033749, 39.954369, 38.035160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119625, 40.068119, 37.661415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068956, -0.958698, -0.275941,
		-0.974245, -0.005189, -0.225432,
		0.214689, 0.284379, -0.934364,
		45.184032, 40.153435, 37.381107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758221, 39.433441, 37.629082>,  <45.033749, 39.954369, 38.035160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758221, 39.433441, 37.629082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998474, 39.591801, 37.351231>,  <45.142628, 39.686817, 37.184521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998474, 39.591801, 37.351231>,  <44.758221, 39.433441, 37.629082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998474, 39.591801, 37.351231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048591, -0.885267, -0.462539,
		-0.798046, 0.244065, -0.550959,
		0.600635, 0.395898, -0.694624,
		45.178665, 39.710571, 37.142845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469406, 39.308079, 37.038181>,  <44.758221, 39.433441, 37.629082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469406, 39.308079, 37.038181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848404, 39.388481, 36.938702>,  <45.075802, 39.436722, 36.879013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848404, 39.388481, 36.938702>,  <44.469406, 39.308079, 37.038181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848404, 39.388481, 36.938702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065192, -0.882827, -0.465151,
		-0.313054, 0.424516, -0.849578,
		0.947495, 0.201003, -0.248698,
		45.132652, 39.448784, 36.864094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550480, 39.049915, 36.353230>,  <44.469406, 39.308079, 37.038181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550480, 39.049915, 36.353230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923908, 39.081692, 36.493019>,  <45.147964, 39.100758, 36.576893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923908, 39.081692, 36.493019>,  <44.550480, 39.049915, 36.353230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923908, 39.081692, 36.493019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176092, -0.950978, -0.254230,
		0.312143, 0.298882, -0.901796,
		0.933573, 0.079443, 0.349472,
		45.203979, 39.105526, 36.597862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960285, 38.841484, 35.828693>,  <44.550480, 39.049915, 36.353230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960285, 38.841484, 35.828693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201611, 38.804619, 36.145557>,  <45.346405, 38.782501, 36.335678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201611, 38.804619, 36.145557>,  <44.960285, 38.841484, 35.828693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201611, 38.804619, 36.145557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313849, -0.885712, -0.342073,
		0.733155, 0.454996, -0.505432,
		0.603309, -0.092163, 0.792164,
		45.382603, 38.776970, 36.383205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642426, 38.482716, 35.541321>,  <44.960285, 38.841484, 35.828693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642426, 38.482716, 35.541321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609520, 38.435928, 35.937210>,  <45.589775, 38.407856, 36.174744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609520, 38.435928, 35.937210>,  <45.642426, 38.482716, 35.541321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609520, 38.435928, 35.937210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225140, -0.969598, -0.095877,
		0.970847, 0.214939, 0.106096,
		-0.082263, -0.116968, 0.989723,
		45.584843, 38.400837, 36.234127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222900, 38.155334, 35.691776>,  <45.642426, 38.482716, 35.541321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222900, 38.155334, 35.691776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967339, 38.092842, 35.993076>,  <45.813999, 38.055347, 36.173859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967339, 38.092842, 35.993076>,  <46.222900, 38.155334, 35.691776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967339, 38.092842, 35.993076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223598, -0.974601, -0.012487,
		0.736072, 0.160448, 0.657613,
		-0.638907, -0.156232, 0.753253,
		45.775665, 38.045971, 36.219051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570107, 37.583984, 36.042297>,  <46.222900, 38.155334, 35.691776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570107, 37.583984, 36.042297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204967, 37.598488, 36.204975>,  <45.985886, 37.607189, 36.302582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204967, 37.598488, 36.204975>,  <46.570107, 37.583984, 36.042297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204967, 37.598488, 36.204975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045575, -0.980779, 0.189725,
		0.405755, 0.191725, 0.893647,
		-0.912845, 0.036255, 0.406694,
		45.931114, 37.609364, 36.326984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586582, 37.154091, 36.663990>,  <46.570107, 37.583984, 36.042297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586582, 37.154091, 36.663990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.200886, 37.180119, 36.561226>,  <45.969467, 37.195736, 36.499569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.200886, 37.180119, 36.561226>,  <46.586582, 37.154091, 36.663990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.200886, 37.180119, 36.561226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112414, -0.978284, 0.174137,
		-0.239999, 0.196790, 0.950618,
		-0.964243, 0.065070, -0.256909,
		45.911613, 37.199638, 36.484154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325806, 36.812439, 37.153305>,  <46.586582, 37.154091, 36.663990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325806, 36.812439, 37.153305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087395, 36.832565, 36.832752>,  <45.944347, 36.844639, 36.640419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087395, 36.832565, 36.832752>,  <46.325806, 36.812439, 37.153305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087395, 36.832565, 36.832752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264069, -0.954802, 0.136457,
		-0.758299, 0.292954, 0.582375,
		-0.596029, 0.050312, -0.801385,
		45.908585, 36.847660, 36.592339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666862, 36.621040, 37.433746>,  <46.325806, 36.812439, 37.153305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666862, 36.621040, 37.433746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701458, 36.527493, 37.046379>,  <45.722214, 36.471363, 36.813961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701458, 36.527493, 37.046379>,  <45.666862, 36.621040, 37.433746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701458, 36.527493, 37.046379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229995, -0.950486, 0.208995,
		-0.969341, 0.204655, -0.135993,
		0.086488, -0.233865, -0.968414,
		45.727406, 36.457333, 36.755856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232296, 36.068745, 37.287380>,  <45.666862, 36.621040, 37.433746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232296, 36.068745, 37.287380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424053, 36.076527, 36.936424>,  <45.539108, 36.081196, 36.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424053, 36.076527, 36.936424>,  <45.232296, 36.068745, 37.287380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424053, 36.076527, 36.936424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258502, -0.952270, -0.162355,
		-0.838666, 0.304637, -0.451481,
		0.479391, 0.019452, -0.877386,
		45.567871, 36.082363, 36.673210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744102, 35.814800, 36.811539>,  <45.232296, 36.068745, 37.287380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744102, 35.814800, 36.811539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095692, 35.754406, 36.630600>,  <45.306644, 35.718170, 36.522038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095692, 35.754406, 36.630600>,  <44.744102, 35.814800, 36.811539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095692, 35.754406, 36.630600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273599, -0.936576, -0.219018,
		-0.390585, 0.316271, -0.864532,
		0.878969, -0.150991, -0.452344,
		45.359383, 35.709110, 36.494896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679077, 35.695724, 36.035892>,  <44.744102, 35.814800, 36.811539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679077, 35.695724, 36.035892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017155, 35.528229, 36.168743>,  <45.220001, 35.427731, 36.248451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017155, 35.528229, 36.168743>,  <44.679077, 35.695724, 36.035892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017155, 35.528229, 36.168743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337419, -0.899978, -0.276023,
		0.414487, 0.121227, -0.901945,
		0.845192, -0.418741, 0.332125,
		45.270714, 35.402607, 36.268379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855152, 35.161404, 35.506966>,  <44.679077, 35.695724, 36.035892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855152, 35.161404, 35.506966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101021, 35.063091, 35.806770>,  <45.248543, 35.004105, 35.986652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101021, 35.063091, 35.806770>,  <44.855152, 35.161404, 35.506966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101021, 35.063091, 35.806770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165568, -0.969248, -0.182061,
		0.771211, -0.012188, -0.636463,
		0.614671, -0.245785, 0.749513,
		45.285423, 34.989357, 36.031624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484375, 34.819351, 35.243198>,  <44.855152, 35.161404, 35.506966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484375, 34.819351, 35.243198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407055, 34.711815, 35.620636>,  <45.360664, 34.647293, 35.847099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407055, 34.711815, 35.620636>,  <45.484375, 34.819351, 35.243198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407055, 34.711815, 35.620636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289957, -0.903119, -0.316705,
		0.937316, -0.334819, 0.096618,
		-0.193297, -0.268837, 0.943591,
		45.349068, 34.631165, 35.903713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771271, 34.119068, 35.348598>,  <45.484375, 34.819351, 35.243198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771271, 34.119068, 35.348598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505482, 34.160572, 35.644630>,  <45.346008, 34.185474, 35.822250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505482, 34.160572, 35.644630>,  <45.771271, 34.119068, 35.348598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505482, 34.160572, 35.644630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301554, -0.943337, -0.138493,
		0.683771, -0.315197, 0.658109,
		-0.664472, 0.103758, 0.740076,
		45.306141, 34.191700, 35.866653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.020458, 33.674454, 35.930344>,  <45.771271, 34.119068, 35.348598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.020458, 33.674454, 35.930344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630882, 33.727291, 36.004086>,  <45.397137, 33.758995, 36.048332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630882, 33.727291, 36.004086>,  <46.020458, 33.674454, 35.930344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630882, 33.727291, 36.004086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130347, -0.991232, 0.021639,
		0.185598, -0.002955, 0.982621,
		-0.973942, 0.132098, 0.184356,
		45.338699, 33.766922, 36.059391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741825, 33.592667, 36.041679>,  <46.020458, 33.674454, 35.930344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741825, 33.592667, 36.041679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022255, 33.308559, 36.016331>,  <47.190514, 33.138096, 36.001122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022255, 33.308559, 36.016331>,  <46.741825, 33.592667, 36.041679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022255, 33.308559, 36.016331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217930, -0.128788, -0.967430,
		0.678974, 0.692048, -0.245079,
		0.701071, -0.710270, -0.063374,
		47.232574, 33.095478, 35.997318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266388, 33.696526, 35.487144>,  <46.741825, 33.592667, 36.041679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266388, 33.696526, 35.487144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246479, 33.299156, 35.528381>,  <47.234531, 33.060734, 35.553123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246479, 33.299156, 35.528381>,  <47.266388, 33.696526, 35.487144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246479, 33.299156, 35.528381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171309, -0.093203, -0.980799,
		0.983959, -0.066480, -0.165544,
		-0.049775, -0.993425, 0.103096,
		47.231548, 33.001129, 35.559311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518929, 34.400440, 35.136490>,  <47.266388, 33.696526, 35.487144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518929, 34.400440, 35.136490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.733810, 34.684704, 35.318203>,  <47.862740, 34.855263, 35.427231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.733810, 34.684704, 35.318203>,  <47.518929, 34.400440, 35.136490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.733810, 34.684704, 35.318203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771034, -0.195418, -0.606068,
		-0.341931, 0.675853, -0.652921,
		0.537206, 0.710657, 0.454286,
		47.894974, 34.897900, 35.454491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.697395, 34.950855, 34.662045>,  <47.518929, 34.400440, 35.136490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.697395, 34.950855, 34.662045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.970615, 34.954708, 34.954166>,  <48.134548, 34.957020, 35.129440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.970615, 34.954708, 34.954166>,  <47.697395, 34.950855, 34.662045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.970615, 34.954708, 34.954166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730333, -0.018991, -0.682827,
		0.007294, 0.999773, -0.020005,
		0.683052, 0.009629, 0.730306,
		48.175529, 34.957596, 35.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.872795, 34.086876, 44.788288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483707, 34.159649, 44.845867>,  <37.250256, 34.203312, 44.880413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483707, 34.159649, 44.845867>,  <37.872795, 34.086876, 44.788288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483707, 34.159649, 44.845867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162031, -0.088713, -0.982790,
		-0.166033, -0.979301, 0.115771,
		-0.972717, 0.181934, 0.143948,
		37.191891, 34.214230, 44.889053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699509, 33.883339, 44.208286>,  <37.872795, 34.086876, 44.788288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699509, 33.883339, 44.208286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358524, 34.028797, 44.358524>,  <37.153934, 34.116074, 44.448669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358524, 34.028797, 44.358524>,  <37.699509, 33.883339, 44.208286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358524, 34.028797, 44.358524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450105, -0.145058, -0.881115,
		-0.265931, -0.920174, 0.287335,
		-0.852459, 0.363647, 0.375599,
		37.102787, 34.137890, 44.471203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223057, 33.474857, 44.023315>,  <37.699509, 33.883339, 44.208286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223057, 33.474857, 44.023315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004181, 33.803043, 44.089546>,  <36.872856, 33.999954, 44.129284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004181, 33.803043, 44.089546>,  <37.223057, 33.474857, 44.023315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004181, 33.803043, 44.089546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480920, -0.146284, -0.864475,
		-0.685052, -0.552662, 0.474624,
		-0.547193, 0.820467, 0.165574,
		36.840023, 34.049183, 44.139217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679592, 33.302891, 43.640667>,  <37.223057, 33.474857, 44.023315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679592, 33.302891, 43.640667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684208, 33.697392, 43.706600>,  <36.686977, 33.934093, 43.746159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684208, 33.697392, 43.706600>,  <36.679592, 33.302891, 43.640667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684208, 33.697392, 43.706600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341405, 0.158826, -0.926400,
		-0.939846, -0.045582, 0.338545,
		0.011542, 0.986254, 0.164834,
		36.687672, 33.993267, 43.756050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029285, 33.529221, 43.390694>,  <36.679592, 33.302891, 43.640667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029285, 33.529221, 43.390694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255138, 33.859074, 43.404381>,  <36.390652, 34.056984, 43.412594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255138, 33.859074, 43.404381>,  <36.029285, 33.529221, 43.390694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255138, 33.859074, 43.404381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313259, 0.252477, -0.915491,
		-0.763581, 0.506200, 0.400881,
		0.564635, 0.824631, 0.034215,
		36.424530, 34.106464, 43.414646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551563, 34.154114, 43.125069>,  <36.029285, 33.529221, 43.390694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551563, 34.154114, 43.125069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931179, 34.278561, 43.104931>,  <36.158947, 34.353230, 43.092846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931179, 34.278561, 43.104931>,  <35.551563, 34.154114, 43.125069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931179, 34.278561, 43.104931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185520, 0.422320, -0.887259,
		-0.254781, 0.851381, 0.458516,
		0.949036, 0.311120, -0.050349,
		36.215889, 34.371895, 43.089825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557838, 34.929634, 42.984852>,  <35.551563, 34.154114, 43.125069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557838, 34.929634, 42.984852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900650, 34.752388, 42.879665>,  <36.106335, 34.646042, 42.816551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900650, 34.752388, 42.879665>,  <35.557838, 34.929634, 42.984852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900650, 34.752388, 42.879665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035455, 0.458432, -0.888022,
		0.514050, 0.770382, 0.377179,
		0.857027, -0.443115, -0.262971,
		36.157757, 34.619453, 42.800774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798344, 35.435722, 42.533772>,  <35.557838, 34.929634, 42.984852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798344, 35.435722, 42.533772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.016731, 35.113216, 42.442684>,  <36.147762, 34.919712, 42.388031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.016731, 35.113216, 42.442684>,  <35.798344, 35.435722, 42.533772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016731, 35.113216, 42.442684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006593, 0.267665, -0.963489,
		0.837781, 0.527535, 0.140821,
		0.545967, -0.806264, -0.227723,
		36.180523, 34.871338, 42.374367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353592, 35.683064, 42.009087>,  <35.798344, 35.435722, 42.533772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353592, 35.683064, 42.009087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336575, 35.285675, 41.966755>,  <36.326363, 35.047241, 41.941357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336575, 35.285675, 41.966755>,  <36.353592, 35.683064, 42.009087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336575, 35.285675, 41.966755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022634, 0.104941, -0.994221,
		0.998838, -0.044694, 0.018022,
		-0.042544, -0.993474, -0.105831,
		36.323811, 34.987633, 41.935005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746326, 35.556171, 41.453876>,  <36.353592, 35.683064, 42.009087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746326, 35.556171, 41.453876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532715, 35.218056, 41.460724>,  <36.404549, 35.015186, 41.464832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532715, 35.218056, 41.460724>,  <36.746326, 35.556171, 41.453876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532715, 35.218056, 41.460724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048486, 0.010408, -0.998770,
		0.844073, -0.534204, -0.046542,
		-0.534032, -0.845291, 0.017116,
		36.372505, 34.964470, 41.465858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092667, 35.022118, 40.961365>,  <36.746326, 35.556171, 41.453876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092667, 35.022118, 40.961365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716248, 34.899971, 41.019573>,  <36.490395, 34.826683, 41.054501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716248, 34.899971, 41.019573>,  <37.092667, 35.022118, 40.961365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716248, 34.899971, 41.019573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040978, -0.324127, -0.945126,
		0.335775, -0.895374, 0.292507,
		-0.941051, -0.305363, 0.145525,
		36.433933, 34.808361, 41.063232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082680, 34.314610, 40.948006>,  <37.092667, 35.022118, 40.961365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082680, 34.314610, 40.948006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716652, 34.436508, 40.842339>,  <36.497036, 34.509647, 40.778938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716652, 34.436508, 40.842339>,  <37.082680, 34.314610, 40.948006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716652, 34.436508, 40.842339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179213, -0.279541, -0.943260,
		-0.361300, -0.910488, 0.201184,
		-0.915066, 0.304745, -0.264169,
		36.442131, 34.527931, 40.763088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829739, 33.854336, 40.400909>,  <37.082680, 34.314610, 40.948006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829739, 33.854336, 40.400909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572899, 34.159103, 40.366989>,  <36.418797, 34.341965, 40.346638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572899, 34.159103, 40.366989>,  <36.829739, 33.854336, 40.400909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572899, 34.159103, 40.366989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111916, -0.202590, -0.972847,
		-0.758410, -0.615172, 0.215354,
		-0.642097, 0.761919, -0.084798,
		36.380268, 34.387680, 40.341549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310993, 33.653198, 39.920570>,  <36.829739, 33.854336, 40.400909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310993, 33.653198, 39.920570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311405, 34.053188, 39.917927>,  <36.311653, 34.293182, 39.916340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311405, 34.053188, 39.917927>,  <36.310993, 33.653198, 39.920570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311405, 34.053188, 39.917927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011068, -0.006598, -0.999917,
		-0.999938, 0.001099, 0.011061,
		0.001026, 0.999978, -0.006609,
		36.311714, 34.353180, 39.915943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887112, 33.835083, 39.319572>,  <36.310993, 33.653198, 39.920570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887112, 33.835083, 39.319572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070595, 34.184692, 39.383671>,  <36.180683, 34.394459, 39.422131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070595, 34.184692, 39.383671>,  <35.887112, 33.835083, 39.319572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070595, 34.184692, 39.383671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012871, 0.186853, -0.982304,
		-0.888496, 0.448525, 0.096960,
		0.458705, 0.874020, 0.160245,
		36.208206, 34.446899, 39.431744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408401, 34.395466, 39.079098>,  <35.887112, 33.835083, 39.319572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408401, 34.395466, 39.079098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787167, 34.523705, 39.088715>,  <36.014423, 34.600647, 39.094486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787167, 34.523705, 39.088715>,  <35.408401, 34.395466, 39.079098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787167, 34.523705, 39.088715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099446, 0.363189, -0.926393,
		-0.305732, 0.874820, 0.375790,
		0.946910, 0.320599, 0.024041,
		36.071239, 34.619884, 39.095928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404942, 35.022076, 38.732986>,  <35.408401, 34.395466, 39.079098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404942, 35.022076, 38.732986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797745, 34.946568, 38.730785>,  <36.033424, 34.901264, 38.729465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797745, 34.946568, 38.730785>,  <35.404942, 35.022076, 38.732986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797745, 34.946568, 38.730785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055023, 0.313885, -0.947865,
		0.180655, 0.930506, 0.318624,
		0.982006, -0.188768, -0.005506,
		36.092346, 34.889938, 38.729134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712017, 35.401333, 38.237419>,  <35.404942, 35.022076, 38.732986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712017, 35.401333, 38.237419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034542, 35.164764, 38.240993>,  <36.228058, 35.022823, 38.243137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034542, 35.164764, 38.240993>,  <35.712017, 35.401333, 38.237419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034542, 35.164764, 38.240993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178874, 0.229405, -0.956753,
		0.563793, 0.773043, 0.290763,
		0.806314, -0.591420, 0.008940,
		36.276436, 34.987339, 38.243675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351940, 35.797905, 37.820087>,  <35.712017, 35.401333, 38.237419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351940, 35.797905, 37.820087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431679, 35.406300, 37.836987>,  <36.479523, 35.171333, 37.847126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431679, 35.406300, 37.836987>,  <36.351940, 35.797905, 37.820087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431679, 35.406300, 37.836987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234526, 0.005803, -0.972093,
		0.951451, 0.203690, 0.230762,
		0.199345, -0.979018, 0.042250,
		36.491482, 35.112595, 37.849663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019070, 35.653313, 37.487812>,  <36.351940, 35.797905, 37.820087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019070, 35.653313, 37.487812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822235, 35.305210, 37.478836>,  <36.704136, 35.096348, 37.473450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822235, 35.305210, 37.478836>,  <37.019070, 35.653313, 37.487812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822235, 35.305210, 37.478836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018142, 0.015516, -0.999715,
		0.870359, -0.492351, 0.008153,
		-0.492084, -0.870258, -0.022437,
		36.674610, 35.044132, 37.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492546, 35.162495, 37.124504>,  <37.019070, 35.653313, 37.487812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492546, 35.162495, 37.124504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105019, 35.066452, 37.100025>,  <36.872501, 35.008827, 37.085339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105019, 35.066452, 37.100025>,  <37.492546, 35.162495, 37.124504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105019, 35.066452, 37.100025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077912, -0.060735, -0.995109,
		0.235212, -0.968846, 0.077548,
		-0.968816, -0.240104, -0.061199,
		36.814373, 34.994423, 37.081665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565178, 34.612404, 36.589153>,  <37.492546, 35.162495, 37.124504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565178, 34.612404, 36.589153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193630, 34.759220, 36.609043>,  <36.970699, 34.847309, 36.620979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193630, 34.759220, 36.609043>,  <37.565178, 34.612404, 36.589153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193630, 34.759220, 36.609043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052984, 0.001204, -0.998595,
		-0.366587, -0.930203, 0.018329,
		-0.928874, 0.367043, 0.049727,
		36.914967, 34.869331, 36.623962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162205, 35.093937, 36.557907>,  <37.565178, 34.612404, 36.589153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162205, 35.093937, 36.557907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562138, 35.099281, 36.552814>,  <38.802097, 35.102489, 36.549759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562138, 35.099281, 36.552814>,  <38.162205, 35.093937, 36.557907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562138, 35.099281, 36.552814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011578, 0.083040, 0.996479,
		0.014371, -0.996457, 0.082871,
		0.999830, 0.013361, -0.012730,
		38.862087, 35.103291, 36.548996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418129, 34.501812, 37.044579>,  <38.162205, 35.093937, 36.557907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418129, 34.501812, 37.044579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715824, 34.768604, 37.030426>,  <38.894440, 34.928680, 37.021935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715824, 34.768604, 37.030426>,  <38.418129, 34.501812, 37.044579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715824, 34.768604, 37.030426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018900, 0.031925, 0.999311,
		0.667648, -0.744393, 0.011154,
		0.744237, 0.666977, -0.035384,
		38.939095, 34.968697, 37.019810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916145, 34.194176, 37.449959>,  <38.418129, 34.501812, 37.044579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916145, 34.194176, 37.449959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993702, 34.585945, 37.427532>,  <39.040234, 34.821007, 37.414078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993702, 34.585945, 37.427532>,  <38.916145, 34.194176, 37.449959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993702, 34.585945, 37.427532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206585, 0.015105, 0.978312,
		0.959025, -0.201266, -0.199405,
		0.193889, 0.979420, -0.056065,
		39.051868, 34.879772, 37.410713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648830, 34.307739, 37.590549>,  <38.916145, 34.194176, 37.449959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648830, 34.307739, 37.590549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.437393, 34.639542, 37.662682>,  <39.310532, 34.838623, 37.705959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.437393, 34.639542, 37.662682>,  <39.648830, 34.307739, 37.590549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437393, 34.639542, 37.662682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323823, 0.000673, 0.946118,
		0.784686, 0.558501, -0.268968,
		-0.528589, 0.829503, 0.180327,
		39.278816, 34.888393, 37.716782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124546, 34.786606, 37.943165>,  <39.648830, 34.307739, 37.590549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124546, 34.786606, 37.943165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.760551, 34.927071, 38.031353>,  <39.542152, 35.011349, 38.084267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.760551, 34.927071, 38.031353>,  <40.124546, 34.786606, 37.943165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760551, 34.927071, 38.031353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283164, 0.137901, 0.949106,
		0.302884, 0.926105, -0.224924,
		-0.909989, 0.351159, 0.220471,
		39.487556, 35.032417, 38.097496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221317, 35.324203, 38.333244>,  <40.124546, 34.786606, 37.943165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221317, 35.324203, 38.333244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839596, 35.247753, 38.425133>,  <39.610561, 35.201881, 38.480267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839596, 35.247753, 38.425133>,  <40.221317, 35.324203, 38.333244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839596, 35.247753, 38.425133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180323, 0.244688, 0.952686,
		-0.238293, 0.950578, -0.199043,
		-0.954306, -0.191127, 0.229719,
		39.553303, 35.190414, 38.494049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990990, 36.020771, 38.542088>,  <40.221317, 35.324203, 38.333244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990990, 36.020771, 38.542088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783169, 35.709717, 38.683712>,  <39.658478, 35.523087, 38.768688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783169, 35.709717, 38.683712>,  <39.990990, 36.020771, 38.542088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783169, 35.709717, 38.683712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347218, 0.186472, 0.919058,
		-0.780711, 0.600431, 0.173126,
		-0.519548, -0.777632, 0.354061,
		39.627304, 35.476429, 38.789932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777950, 36.331371, 39.205547>,  <39.990990, 36.020771, 38.542088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777950, 36.331371, 39.205547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682457, 35.944176, 39.236530>,  <39.625160, 35.711857, 39.255119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682457, 35.944176, 39.236530>,  <39.777950, 36.331371, 39.205547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682457, 35.944176, 39.236530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254909, 0.014503, 0.966856,
		-0.937032, 0.250566, 0.243287,
		-0.238733, -0.967991, 0.077462,
		39.610836, 35.653778, 39.259769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329037, 36.370693, 39.870766>,  <39.777950, 36.331371, 39.205547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329037, 36.370693, 39.870766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489441, 36.009525, 39.808903>,  <39.585686, 35.792824, 39.771786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489441, 36.009525, 39.808903>,  <39.329037, 36.370693, 39.870766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489441, 36.009525, 39.808903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010225, -0.164408, 0.986339,
		-0.916015, -0.397116, -0.056698,
		0.401013, -0.902922, -0.154660,
		39.609745, 35.738647, 39.762505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961521, 35.871372, 40.301182>,  <39.329037, 36.370693, 39.870766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961521, 35.871372, 40.301182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311417, 35.690887, 40.230476>,  <39.521355, 35.582596, 40.188053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311417, 35.690887, 40.230476>,  <38.961521, 35.871372, 40.301182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311417, 35.690887, 40.230476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007470, -0.377268, 0.926074,
		-0.484545, -0.808749, -0.333380,
		0.874735, -0.451215, -0.176762,
		39.573837, 35.555523, 40.177448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849918, 35.169678, 40.574013>,  <38.961521, 35.871372, 40.301182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849918, 35.169678, 40.574013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241844, 35.248608, 40.561207>,  <39.477001, 35.295967, 40.553524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241844, 35.248608, 40.561207>,  <38.849918, 35.169678, 40.574013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241844, 35.248608, 40.561207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108229, -0.388992, 0.914862,
		0.168072, -0.899860, -0.402497,
		0.979816, 0.197324, -0.032012,
		39.535789, 35.307804, 40.551601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137142, 34.528622, 40.804771>,  <38.849918, 35.169678, 40.574013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137142, 34.528622, 40.804771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394249, 34.829624, 40.862160>,  <39.548512, 35.010227, 40.896595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394249, 34.829624, 40.862160>,  <39.137142, 34.528622, 40.804771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394249, 34.829624, 40.862160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164378, -0.318406, 0.933594,
		0.748219, -0.576498, -0.328356,
		0.642765, 0.752507, 0.143474,
		39.587078, 35.055378, 40.905201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911560, 34.320499, 41.026932>,  <39.137142, 34.528622, 40.804771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911560, 34.320499, 41.026932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.836678, 34.689293, 41.162521>,  <39.791748, 34.910568, 41.243874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.836678, 34.689293, 41.162521>,  <39.911560, 34.320499, 41.026932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836678, 34.689293, 41.162521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238257, -0.292149, 0.926219,
		0.952989, 0.254156, -0.164977,
		-0.187207, 0.921983, 0.338970,
		39.780514, 34.965889, 41.264214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254341, 34.312538, 41.665928>,  <39.911560, 34.320499, 41.026932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254341, 34.312538, 41.665928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059116, 34.660263, 41.697147>,  <39.941982, 34.868896, 41.715878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059116, 34.660263, 41.697147>,  <40.254341, 34.312538, 41.665928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059116, 34.660263, 41.697147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109659, -0.027639, 0.993585,
		0.865892, 0.493491, -0.081838,
		-0.488063, 0.869312, 0.078048,
		39.912697, 34.921055, 41.720562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659336, 34.831924, 42.041122>,  <40.254341, 34.312538, 41.665928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659336, 34.831924, 42.041122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271530, 34.914860, 42.093372>,  <40.038849, 34.964619, 42.124722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271530, 34.914860, 42.093372>,  <40.659336, 34.831924, 42.041122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271530, 34.914860, 42.093372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123120, -0.048735, 0.991194,
		0.211875, 0.977056, 0.021722,
		-0.969511, 0.207335, 0.130620,
		39.980679, 34.977058, 42.132557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624321, 35.305626, 42.639725>,  <40.659336, 34.831924, 42.041122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624321, 35.305626, 42.639725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.252674, 35.169445, 42.581989>,  <40.029686, 35.087738, 42.547348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.252674, 35.169445, 42.581989>,  <40.624321, 35.305626, 42.639725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252674, 35.169445, 42.581989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103858, -0.134359, 0.985475,
		-0.354901, 0.930613, 0.089476,
		-0.929117, -0.340453, -0.144336,
		39.973938, 35.067310, 42.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202553, 35.627609, 43.203854>,  <40.624321, 35.305626, 42.639725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202553, 35.627609, 43.203854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986870, 35.319168, 43.068409>,  <39.857460, 35.134106, 42.987144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986870, 35.319168, 43.068409>,  <40.202553, 35.627609, 43.203854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986870, 35.319168, 43.068409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138575, -0.315350, 0.938803,
		-0.830692, 0.553135, 0.063185,
		-0.539210, -0.771101, -0.338609,
		39.825108, 35.087837, 42.966827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658779, 35.726933, 43.585842>,  <40.202553, 35.627609, 43.203854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658779, 35.726933, 43.585842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626972, 35.349613, 43.456932>,  <39.607887, 35.123222, 43.379585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626972, 35.349613, 43.456932>,  <39.658779, 35.726933, 43.585842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626972, 35.349613, 43.456932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189857, -0.303051, 0.933870,
		-0.978587, 0.135441, -0.154996,
		-0.079513, -0.943300, -0.322276,
		39.603119, 35.066624, 43.360249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.077461, 35.407539, 43.931065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326260, 35.111465, 43.828892>,  <39.475540, 34.933819, 43.767590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326260, 35.111465, 43.828892>,  <39.077461, 35.407539, 43.931065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326260, 35.111465, 43.828892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203592, -0.467872, 0.860027,
		-0.756090, -0.482928, -0.441710,
		0.621995, -0.740187, -0.255433,
		39.512859, 34.889408, 43.752262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703178, 34.887505, 44.273033>,  <39.077461, 35.407539, 43.931065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703178, 34.887505, 44.273033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060253, 34.739895, 44.169544>,  <39.274498, 34.651329, 44.107452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060253, 34.739895, 44.169544>,  <38.703178, 34.887505, 44.273033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060253, 34.739895, 44.169544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038117, -0.510183, 0.859221,
		-0.449067, -0.776875, -0.441366,
		0.892685, -0.369024, -0.258718,
		39.328056, 34.629189, 44.091927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618484, 34.275566, 44.476830>,  <38.703178, 34.887505, 44.273033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618484, 34.275566, 44.476830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014042, 34.330082, 44.453140>,  <39.251377, 34.362789, 44.438927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014042, 34.330082, 44.453140>,  <38.618484, 34.275566, 44.476830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014042, 34.330082, 44.453140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111706, -0.418985, 0.901096,
		0.097993, -0.897707, -0.429557,
		0.988898, 0.136285, -0.059221,
		39.310711, 34.370968, 44.435375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930424, 33.645573, 44.399834>,  <38.618484, 34.275566, 44.476830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930424, 33.645573, 44.399834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208744, 33.879105, 44.567165>,  <39.375736, 34.019226, 44.667564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208744, 33.879105, 44.567165>,  <38.930424, 33.645573, 44.399834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208744, 33.879105, 44.567165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118471, -0.481168, 0.868586,
		0.708396, -0.653923, -0.265630,
		0.695801, 0.583833, 0.418329,
		39.417484, 34.054253, 44.692665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135685, 33.282902, 44.895039>,  <38.930424, 33.645573, 44.399834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135685, 33.282902, 44.895039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303097, 33.619190, 45.032459>,  <39.403542, 33.820961, 45.114910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303097, 33.619190, 45.032459>,  <39.135685, 33.282902, 44.895039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303097, 33.619190, 45.032459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202929, -0.282144, 0.937664,
		0.885243, -0.462153, 0.052522,
		0.418526, 0.840719, 0.343551,
		39.428654, 33.871407, 45.135525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393337, 33.018585, 45.434616>,  <39.135685, 33.282902, 44.895039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393337, 33.018585, 45.434616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399605, 33.413967, 45.494896>,  <39.403366, 33.651196, 45.531063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399605, 33.413967, 45.494896>,  <39.393337, 33.018585, 45.434616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399605, 33.413967, 45.494896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017335, -0.150423, 0.988470,
		0.999727, -0.018104, 0.014777,
		0.015672, 0.988456, 0.150696,
		39.404308, 33.710503, 45.540104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908379, 33.170509, 45.966557>,  <39.393337, 33.018585, 45.434616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908379, 33.170509, 45.966557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696198, 33.508492, 45.993889>,  <39.568890, 33.711281, 46.010288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696198, 33.508492, 45.993889>,  <39.908379, 33.170509, 45.966557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696198, 33.508492, 45.993889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035295, -0.102548, 0.994102,
		0.846977, 0.524917, 0.084220,
		-0.530457, 0.844953, 0.068329,
		39.537060, 33.761978, 46.014389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273884, 33.684525, 46.382309>,  <39.908379, 33.170509, 45.966557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273884, 33.684525, 46.382309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.884850, 33.774231, 46.406929>,  <39.651428, 33.828056, 46.421700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.884850, 33.774231, 46.406929>,  <40.273884, 33.684525, 46.382309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884850, 33.774231, 46.406929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048527, -0.063111, 0.996826,
		0.227438, 0.972483, 0.050497,
		-0.972583, 0.224266, 0.061545,
		39.593075, 33.841511, 46.425392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213631, 34.261997, 46.882030>,  <40.273884, 33.684525, 46.382309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213631, 34.261997, 46.882030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844654, 34.109230, 46.859283>,  <39.623268, 34.017570, 46.845634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844654, 34.109230, 46.859283>,  <40.213631, 34.261997, 46.882030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844654, 34.109230, 46.859283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044562, -0.041004, 0.998165,
		-0.383547, 0.923287, 0.020804,
		-0.922446, -0.381916, -0.056871,
		39.567921, 33.994656, 46.842224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897217, 34.605270, 47.489491>,  <40.213631, 34.261997, 46.882030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897217, 34.605270, 47.489491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643833, 34.310944, 47.393738>,  <39.491802, 34.134350, 47.336285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.643833, 34.310944, 47.393738>,  <39.897217, 34.605270, 47.489491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643833, 34.310944, 47.393738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210307, -0.133999, 0.968409,
		-0.744645, 0.663795, -0.069863,
		-0.633463, -0.735813, -0.239382,
		39.453793, 34.090199, 47.321922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289200, 34.759567, 47.817665>,  <39.897217, 34.605270, 47.489491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289200, 34.759567, 47.817665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295708, 34.363186, 47.764385>,  <39.299614, 34.125355, 47.732418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295708, 34.363186, 47.764385>,  <39.289200, 34.759567, 47.817665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295708, 34.363186, 47.764385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307663, -0.131713, 0.942335,
		-0.951356, 0.025646, -0.307024,
		0.016272, -0.990956, -0.133197,
		39.300591, 34.065899, 47.724426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608150, 34.557484, 48.084095>,  <39.289200, 34.759567, 47.817665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608150, 34.557484, 48.084095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861458, 34.248238, 48.069881>,  <39.013443, 34.062691, 48.061352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861458, 34.248238, 48.069881>,  <38.608150, 34.557484, 48.084095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861458, 34.248238, 48.069881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208362, -0.214534, 0.954233,
		-0.745357, -0.596880, -0.296945,
		0.633268, -0.773116, -0.035538,
		39.051437, 34.016304, 48.059219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431816, 34.229332, 48.579826>,  <38.608150, 34.557484, 48.084095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431816, 34.229332, 48.579826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.787418, 34.053799, 48.527519>,  <39.000778, 33.948479, 48.496136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.787418, 34.053799, 48.527519>,  <38.431816, 34.229332, 48.579826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787418, 34.053799, 48.527519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034302, -0.220965, 0.974678,
		-0.456617, -0.870976, -0.181386,
		0.889002, -0.438833, -0.130773,
		39.054119, 33.922150, 48.488289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446026, 33.568253, 48.998005>,  <38.431816, 34.229332, 48.579826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446026, 33.568253, 48.998005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830177, 33.666138, 48.944668>,  <39.060669, 33.724869, 48.912666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830177, 33.666138, 48.944668>,  <38.446026, 33.568253, 48.998005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830177, 33.666138, 48.944668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166366, -0.119556, 0.978789,
		0.223578, -0.962197, -0.155531,
		0.960383, 0.244711, -0.133347,
		39.118294, 33.739552, 48.904663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766479, 33.091785, 49.519962>,  <38.446026, 33.568253, 48.998005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766479, 33.091785, 49.519962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042358, 33.368641, 49.434860>,  <39.207886, 33.534756, 49.383801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042358, 33.368641, 49.434860>,  <38.766479, 33.091785, 49.519962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042358, 33.368641, 49.434860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262193, 0.035163, 0.964375,
		0.674962, -0.720908, -0.157222,
		0.689697, 0.692139, -0.212751,
		39.249268, 33.576283, 49.371037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435528, 32.768631, 49.568626>,  <38.766479, 33.091785, 49.519962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435528, 32.768631, 49.568626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486126, 33.162045, 49.620266>,  <39.516487, 33.398090, 49.651249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486126, 33.162045, 49.620266>,  <39.435528, 32.768631, 49.568626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486126, 33.162045, 49.620266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344133, -0.165570, 0.924207,
		0.930360, -0.072484, -0.359410,
		0.126498, 0.983531, 0.129096,
		39.524075, 33.457104, 49.658997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977139, 32.835484, 49.996269>,  <39.435528, 32.768631, 49.568626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977139, 32.835484, 49.996269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879093, 33.220421, 50.043278>,  <39.820267, 33.451382, 50.071484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879093, 33.220421, 50.043278>,  <39.977139, 32.835484, 49.996269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879093, 33.220421, 50.043278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418648, -0.004273, 0.908138,
		0.874444, 0.271799, -0.401837,
		-0.245114, 0.962344, 0.117525,
		39.805557, 33.509125, 50.078537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566433, 33.123161, 50.207020>,  <39.977139, 32.835484, 49.996269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566433, 33.123161, 50.207020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.284416, 33.383427, 50.319847>,  <40.115208, 33.539585, 50.387543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.284416, 33.383427, 50.319847>,  <40.566433, 33.123161, 50.207020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284416, 33.383427, 50.319847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365899, -0.006957, 0.930628,
		0.607486, 0.759337, -0.233171,
		-0.705038, 0.650661, 0.282067,
		40.072906, 33.578625, 50.404469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891418, 33.638401, 50.626072>,  <40.566433, 33.123161, 50.207020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891418, 33.638401, 50.626072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502041, 33.631145, 50.717350>,  <40.268414, 33.626793, 50.772118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502041, 33.631145, 50.717350>,  <40.891418, 33.638401, 50.626072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502041, 33.631145, 50.717350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228465, -0.014374, 0.973446,
		-0.014374, 0.999732, 0.018136,
		-0.973446, -0.018136, 0.228197,
		40.210007, 33.625706, 50.785809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769440, 34.250187, 51.049545>,  <40.891418, 33.638401, 50.626072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769440, 34.250187, 51.049545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478069, 33.994610, 51.148449>,  <40.303246, 33.841263, 51.207790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478069, 33.994610, 51.148449>,  <40.769440, 34.250187, 51.049545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478069, 33.994610, 51.148449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266751, 0.067921, 0.961369,
		-0.631057, 0.766248, 0.120964,
		-0.728431, -0.638946, 0.247260,
		40.259541, 33.802925, 51.222626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413338, 34.521042, 51.673672>,  <40.769440, 34.250187, 51.049545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413338, 34.521042, 51.673672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.312210, 34.134083, 51.667778>,  <40.251534, 33.901905, 51.664242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.312210, 34.134083, 51.667778>,  <40.413338, 34.521042, 51.673672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312210, 34.134083, 51.667778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124674, -0.047672, 0.991052,
		-0.959448, 0.248719, 0.132662,
		-0.252818, -0.967402, -0.014730,
		40.236366, 33.843861, 51.663361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126888, 34.436558, 52.285694>,  <40.413338, 34.521042, 51.673672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126888, 34.436558, 52.285694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203213, 34.060829, 52.171669>,  <40.249008, 33.835392, 52.103256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203213, 34.060829, 52.171669>,  <40.126888, 34.436558, 52.285694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203213, 34.060829, 52.171669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217852, -0.242632, 0.945341,
		-0.957148, -0.242479, 0.158338,
		0.190807, -0.939326, -0.285059,
		40.260456, 33.779030, 52.086151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877457, 34.057121, 52.897930>,  <40.126888, 34.436558, 52.285694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877457, 34.057121, 52.897930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123875, 33.822960, 52.687107>,  <40.271725, 33.682461, 52.560612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123875, 33.822960, 52.687107>,  <39.877457, 34.057121, 52.897930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123875, 33.822960, 52.687107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259899, -0.480579, 0.837554,
		-0.743603, -0.652951, -0.143910,
		0.616041, -0.585406, -0.527061,
		40.308685, 33.647339, 52.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160843, 34.194313, 52.748569>,  <39.877457, 34.057121, 52.897930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160843, 34.194313, 52.748569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319931, 34.058170, 53.089386>,  <39.415382, 33.976486, 53.293877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319931, 34.058170, 53.089386>,  <39.160843, 34.194313, 52.748569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319931, 34.058170, 53.089386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822700, 0.278822, 0.495402,
		-0.406181, -0.898007, -0.169116,
		0.397721, -0.340355, 0.852042,
		39.439247, 33.956062, 53.344997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620056, 33.613811, 52.698555>,  <39.160843, 34.194313, 52.748569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620056, 33.613811, 52.698555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306076, 33.848797, 52.777290>,  <38.117687, 33.989788, 52.824532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306076, 33.848797, 52.777290>,  <38.620056, 33.613811, 52.698555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306076, 33.848797, 52.777290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490372, -0.394901, -0.776910,
		-0.378663, -0.706366, 0.598049,
		-0.784953, 0.587453, 0.196847,
		38.070591, 34.025036, 52.836342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016388, 33.272755, 52.620789>,  <38.620056, 33.613811, 52.698555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016388, 33.272755, 52.620789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824215, 33.621651, 52.584171>,  <37.708912, 33.830986, 52.562199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824215, 33.621651, 52.584171>,  <38.016388, 33.272755, 52.620789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824215, 33.621651, 52.584171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475356, -0.346699, -0.808602,
		-0.737033, -0.344964, 0.581191,
		-0.480436, 0.872239, -0.091548,
		37.680084, 33.883324, 52.556705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308189, 33.138012, 52.385818>,  <38.016388, 33.272755, 52.620789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308189, 33.138012, 52.385818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.366562, 33.527809, 52.317616>,  <37.401585, 33.761688, 52.276695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.366562, 33.527809, 52.317616>,  <37.308189, 33.138012, 52.385818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366562, 33.527809, 52.317616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544356, -0.064820, -0.836346,
		-0.826064, 0.214863, 0.521011,
		0.145927, 0.974491, -0.170508,
		37.410339, 33.820156, 52.266464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651646, 33.436836, 52.201927>,  <37.308189, 33.138012, 52.385818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651646, 33.436836, 52.201927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928947, 33.685513, 52.056110>,  <37.095329, 33.834721, 51.968620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928947, 33.685513, 52.056110>,  <36.651646, 33.436836, 52.201927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928947, 33.685513, 52.056110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470876, 0.007800, -0.882165,
		-0.545592, 0.783222, 0.298147,
		0.693257, 0.621693, -0.364545,
		37.136925, 33.872021, 51.946747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272419, 33.908909, 51.818645>,  <36.651646, 33.436836, 52.201927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272419, 33.908909, 51.818645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642067, 33.911888, 51.665836>,  <36.863857, 33.913677, 51.574150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642067, 33.911888, 51.665836>,  <36.272419, 33.908909, 51.818645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642067, 33.911888, 51.665836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379625, -0.095607, -0.920187,
		-0.043381, 0.995391, -0.085524,
		0.924123, 0.007452, -0.382023,
		36.919304, 33.914124, 51.551231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228859, 34.373253, 51.257355>,  <36.272419, 33.908909, 51.818645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228859, 34.373253, 51.257355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549530, 34.160336, 51.148560>,  <36.741932, 34.032585, 51.083282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549530, 34.160336, 51.148560>,  <36.228859, 34.373253, 51.257355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549530, 34.160336, 51.148560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366083, -0.077502, -0.927349,
		0.472541, 0.843006, -0.256995,
		0.801678, -0.532292, -0.271987,
		36.790035, 34.000648, 51.066963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372097, 34.643501, 50.631710>,  <36.228859, 34.373253, 51.257355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372097, 34.643501, 50.631710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579086, 34.301552, 50.616661>,  <36.703281, 34.096382, 50.607632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579086, 34.301552, 50.616661>,  <36.372097, 34.643501, 50.631710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579086, 34.301552, 50.616661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201788, -0.079182, -0.976223,
		0.831565, 0.512764, -0.213477,
		0.517476, -0.854870, -0.037625,
		36.734329, 34.045090, 50.605373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768505, 34.844646, 50.090717>,  <36.372097, 34.643501, 50.631710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768505, 34.844646, 50.090717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798363, 34.449123, 50.142380>,  <36.816277, 34.211807, 50.173378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798363, 34.449123, 50.142380>,  <36.768505, 34.844646, 50.090717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798363, 34.449123, 50.142380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094588, -0.121915, -0.988023,
		0.992714, 0.085965, 0.084430,
		0.074642, -0.988811, 0.129158,
		36.820755, 34.152481, 50.181126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368340, 34.621986, 49.791229>,  <36.768505, 34.844646, 50.090717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368340, 34.621986, 49.791229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.137707, 34.297142, 49.827091>,  <36.999329, 34.102238, 49.848610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.137707, 34.297142, 49.827091>,  <37.368340, 34.621986, 49.791229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137707, 34.297142, 49.827091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020861, -0.095064, -0.995253,
		0.816776, -0.575710, 0.037870,
		-0.576577, -0.812109, 0.089656,
		36.964733, 34.053509, 49.853989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645981, 34.127346, 49.387955>,  <37.368340, 34.621986, 49.791229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645981, 34.127346, 49.387955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266743, 34.002800, 49.413792>,  <37.039200, 33.928070, 49.429295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266743, 34.002800, 49.413792>,  <37.645981, 34.127346, 49.387955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266743, 34.002800, 49.413792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029928, -0.114844, -0.992933,
		0.316586, -0.943324, 0.099564,
		-0.948091, -0.311369, 0.064590,
		36.982315, 33.909389, 49.433170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629494, 33.551060, 49.032135>,  <37.645981, 34.127346, 49.387955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629494, 33.551060, 49.032135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242043, 33.649536, 49.045708>,  <37.009571, 33.708622, 49.053852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242043, 33.649536, 49.045708>,  <37.629494, 33.551060, 49.032135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242043, 33.649536, 49.045708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031816, 0.012556, -0.999415,
		-0.246473, -0.969140, -0.004329,
		-0.968627, 0.246191, 0.033929,
		36.951454, 33.723392, 49.055885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245872, 33.036358, 48.664577>,  <37.629494, 33.551060, 49.032135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245872, 33.036358, 48.664577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005264, 33.355526, 48.649075>,  <36.860901, 33.547028, 48.639774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005264, 33.355526, 48.649075>,  <37.245872, 33.036358, 48.664577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005264, 33.355526, 48.649075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186410, -0.187372, -0.964439,
		-0.776804, -0.572905, 0.261447,
		-0.601520, 0.797917, -0.038756,
		36.824810, 33.594902, 48.637447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633686, 32.822044, 48.403835>,  <37.245872, 33.036358, 48.664577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633686, 32.822044, 48.403835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664795, 33.214531, 48.333229>,  <36.683460, 33.450024, 48.290867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664795, 33.214531, 48.333229>,  <36.633686, 32.822044, 48.403835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664795, 33.214531, 48.333229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207638, -0.157229, -0.965487,
		-0.975109, 0.111736, 0.191511,
		0.077769, 0.981221, -0.176516,
		36.688126, 33.508896, 48.280273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248722, 33.024769, 47.780678>,  <36.633686, 32.822044, 48.403835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248722, 33.024769, 47.780678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436749, 33.375832, 47.818096>,  <36.549564, 33.586472, 47.840549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436749, 33.375832, 47.818096>,  <36.248722, 33.024769, 47.780678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436749, 33.375832, 47.818096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131827, 0.034989, -0.990655,
		-0.872731, 0.478005, -0.099252,
		0.470066, 0.877660, 0.093550,
		36.577766, 33.639130, 47.846161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899586, 33.469284, 47.334492>,  <36.248722, 33.024769, 47.780678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899586, 33.469284, 47.334492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256550, 33.640945, 47.390247>,  <36.470730, 33.743942, 47.423698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256550, 33.640945, 47.390247>,  <35.899586, 33.469284, 47.334492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256550, 33.640945, 47.390247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157447, -0.006676, -0.987505,
		-0.422860, 0.903207, -0.073527,
		0.892412, 0.429153, 0.139384,
		36.524273, 33.769691, 47.432064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934669, 33.795853, 46.781860>,  <35.899586, 33.469284, 47.334492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934669, 33.795853, 46.781860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315033, 33.878605, 46.873920>,  <36.543251, 33.928257, 46.929157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315033, 33.878605, 46.873920>,  <35.934669, 33.795853, 46.781860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315033, 33.878605, 46.873920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190981, 0.192862, -0.962460,
		-0.243504, 0.959168, 0.143884,
		0.950911, 0.206884, 0.230146,
		36.600307, 33.940670, 46.942963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133476, 34.559013, 46.686619>,  <35.934669, 33.795853, 46.781860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133476, 34.559013, 46.686619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464813, 34.337479, 46.652855>,  <36.663616, 34.204559, 46.632599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464813, 34.337479, 46.652855>,  <36.133476, 34.559013, 46.686619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464813, 34.337479, 46.652855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030141, 0.194502, -0.980439,
		0.559417, 0.809591, 0.177806,
		0.828338, -0.553833, -0.084405,
		36.713314, 34.171329, 46.627533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643703, 35.001038, 46.336674>,  <36.133476, 34.559013, 46.686619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643703, 35.001038, 46.336674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807518, 34.641102, 46.276596>,  <36.905807, 34.425140, 46.240551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807518, 34.641102, 46.276596>,  <36.643703, 35.001038, 46.336674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807518, 34.641102, 46.276596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074212, 0.196950, -0.977601,
		0.909268, 0.389221, 0.147438,
		0.409541, -0.899843, -0.150195,
		36.930382, 34.371147, 46.231537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304466, 35.081337, 45.853588>,  <36.643703, 35.001038, 46.336674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304466, 35.081337, 45.853588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170158, 34.707584, 45.805950>,  <37.089573, 34.483334, 45.777367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170158, 34.707584, 45.805950>,  <37.304466, 35.081337, 45.853588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170158, 34.707584, 45.805950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140929, 0.075175, -0.987162,
		0.931342, -0.348243, 0.106440,
		-0.335771, -0.934385, -0.119091,
		37.069427, 34.427269, 45.770222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805290, 34.702023, 45.399391>,  <37.304466, 35.081337, 45.853588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805290, 34.702023, 45.399391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474888, 34.478535, 45.369610>,  <37.276646, 34.344440, 45.351742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474888, 34.478535, 45.369610>,  <37.805290, 34.702023, 45.399391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474888, 34.478535, 45.369610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022165, 0.099784, -0.994762,
		0.563225, -0.823330, -0.070038,
		-0.826006, -0.558723, -0.074450,
		37.227085, 34.310917, 45.347275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.462967, 42.005421, 36.532722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254543, 42.314587, 36.387890>,  <43.129490, 42.500088, 36.300991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254543, 42.314587, 36.387890>,  <43.462967, 42.005421, 36.532722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254543, 42.314587, 36.387890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084621, 0.468909, 0.879183,
		0.849315, 0.427468, -0.309735,
		-0.521060, 0.772913, -0.362079,
		43.098225, 42.546459, 36.279266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275978, 42.153519, 35.816071>,  <43.462967, 42.005421, 36.532722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275978, 42.153519, 35.816071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122780, 42.072964, 35.455460>,  <43.030861, 42.024632, 35.239094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122780, 42.072964, 35.455460>,  <43.275978, 42.153519, 35.816071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122780, 42.072964, 35.455460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061040, -0.968295, 0.242236,
		-0.921730, 0.147806, 0.358564,
		-0.383000, -0.201390, -0.901528,
		43.007881, 42.012547, 35.185001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640118, 41.650349, 35.849762>,  <43.275978, 42.153519, 35.816071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640118, 41.650349, 35.849762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793617, 41.628922, 35.481010>,  <42.885715, 41.616066, 35.259758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793617, 41.628922, 35.481010>,  <42.640118, 41.650349, 35.849762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793617, 41.628922, 35.481010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068882, -0.997195, 0.029269,
		-0.920865, 0.052270, -0.386362,
		0.383748, -0.053566, -0.921883,
		42.908741, 41.612850, 35.204445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122658, 41.206177, 35.549267>,  <42.640118, 41.650349, 35.849762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122658, 41.206177, 35.549267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453079, 41.199715, 35.323921>,  <42.651333, 41.195839, 35.188713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453079, 41.199715, 35.323921>,  <42.122658, 41.206177, 35.549267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453079, 41.199715, 35.323921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095099, -0.989251, -0.111076,
		-0.555511, 0.145330, -0.818710,
		0.826053, -0.016155, -0.563361,
		42.700893, 41.194870, 35.154911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947418, 40.802490, 34.837658>,  <42.122658, 41.206177, 35.549267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947418, 40.802490, 34.837658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343502, 40.780548, 34.889011>,  <42.581150, 40.767384, 34.919823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.343502, 40.780548, 34.889011>,  <41.947418, 40.802490, 34.837658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343502, 40.780548, 34.889011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023599, -0.972114, -0.233320,
		0.137600, 0.228005, -0.963888,
		0.990207, -0.054852, 0.128382,
		42.640564, 40.764091, 34.927525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163403, 40.397251, 34.305359>,  <41.947418, 40.802490, 34.837658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163403, 40.397251, 34.305359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491375, 40.378769, 34.533596>,  <42.688156, 40.367680, 34.670540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491375, 40.378769, 34.533596>,  <42.163403, 40.397251, 34.305359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491375, 40.378769, 34.533596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061440, -0.983878, -0.167956,
		0.569159, 0.172769, -0.803872,
		0.819929, -0.046204, 0.570597,
		42.737354, 40.364906, 34.704777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609150, 39.926861, 33.971401>,  <42.163403, 40.397251, 34.305359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609150, 39.926861, 33.971401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733517, 39.944664, 34.351158>,  <42.808136, 39.955345, 34.579014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733517, 39.944664, 34.351158>,  <42.609150, 39.926861, 33.971401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733517, 39.944664, 34.351158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163706, -0.986482, -0.007371,
		0.936231, 0.157713, -0.314002,
		0.310920, 0.044503, 0.949394,
		42.826794, 39.958015, 34.635975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150330, 39.513939, 33.938633>,  <42.609150, 39.926861, 33.971401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150330, 39.513939, 33.938633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.071995, 39.525452, 34.330719>,  <43.024994, 39.532360, 34.565971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.071995, 39.525452, 34.330719>,  <43.150330, 39.513939, 33.938633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071995, 39.525452, 34.330719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158273, -0.985536, 0.060563,
		0.967780, 0.167002, 0.188447,
		-0.195835, 0.028785, 0.980214,
		43.013245, 39.534088, 34.624783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721367, 39.150791, 34.284420>,  <43.150330, 39.513939, 33.938633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721367, 39.150791, 34.284420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409138, 39.133568, 34.533852>,  <43.221802, 39.123234, 34.683510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409138, 39.133568, 34.533852>,  <43.721367, 39.150791, 34.284420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409138, 39.133568, 34.533852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222327, -0.951510, 0.212600,
		0.584191, 0.304588, 0.752295,
		-0.780572, -0.043057, 0.623582,
		43.174965, 39.120651, 34.720924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859997, 38.615730, 34.783161>,  <43.721367, 39.150791, 34.284420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859997, 38.615730, 34.783161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466396, 38.656521, 34.841587>,  <43.230236, 38.680996, 34.876644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466396, 38.656521, 34.841587>,  <43.859997, 38.615730, 34.783161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466396, 38.656521, 34.841587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014717, -0.863676, 0.503832,
		0.177534, 0.493623, 0.851362,
		-0.984005, 0.101977, 0.146067,
		43.171196, 38.687115, 34.885406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694988, 38.555939, 35.532124>,  <43.859997, 38.615730, 34.783161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694988, 38.555939, 35.532124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365978, 38.457268, 35.327145>,  <43.168571, 38.398067, 35.204159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365978, 38.457268, 35.327145>,  <43.694988, 38.555939, 35.532124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365978, 38.457268, 35.327145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063103, -0.855895, 0.513286,
		-0.565214, 0.454529, 0.688431,
		-0.822528, -0.246674, -0.512446,
		43.119221, 38.383266, 35.173412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353363, 37.951191, 35.923431>,  <43.694988, 38.555939, 35.532124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353363, 37.951191, 35.923431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140255, 37.935280, 35.585300>,  <43.012390, 37.925735, 35.382423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140255, 37.935280, 35.585300>,  <43.353363, 37.951191, 35.923431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140255, 37.935280, 35.585300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171410, -0.973118, 0.153820,
		-0.828717, 0.226848, 0.511634,
		-0.532773, -0.039774, -0.845323,
		42.980423, 37.923347, 35.331703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520035, 37.804073, 36.014275>,  <43.353363, 37.951191, 35.923431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520035, 37.804073, 36.014275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.660553, 37.689297, 35.657791>,  <42.744865, 37.620430, 35.443901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.660553, 37.689297, 35.657791>,  <42.520035, 37.804073, 36.014275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660553, 37.689297, 35.657791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250277, -0.946020, 0.205934,
		-0.902193, 0.150705, -0.404148,
		0.351297, -0.286941, -0.891210,
		42.765942, 37.603214, 35.390427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994717, 37.515224, 35.615562>,  <42.520035, 37.804073, 36.014275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994717, 37.515224, 35.615562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.316322, 37.362103, 35.433567>,  <42.509285, 37.270229, 35.324368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.316322, 37.362103, 35.433567>,  <41.994717, 37.515224, 35.615562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316322, 37.362103, 35.433567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252632, -0.912621, 0.321403,
		-0.538270, -0.143467, -0.830472,
		0.804016, -0.382805, -0.454992,
		42.557526, 37.247261, 35.297070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773178, 36.892399, 35.562500>,  <41.994717, 37.515224, 35.615562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773178, 36.892399, 35.562500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154465, 36.841995, 35.452591>,  <42.383236, 36.811752, 35.386646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154465, 36.841995, 35.452591>,  <41.773178, 36.892399, 35.562500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154465, 36.841995, 35.452591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089723, -0.985951, 0.140892,
		-0.288661, -0.109648, -0.951132,
		0.953218, -0.126009, -0.274768,
		42.440430, 36.804192, 35.370159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770550, 36.339897, 35.181190>,  <41.773178, 36.892399, 35.562500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770550, 36.339897, 35.181190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.158516, 36.348087, 35.278217>,  <42.391296, 36.353001, 35.336433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.158516, 36.348087, 35.278217>,  <41.770550, 36.339897, 35.181190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158516, 36.348087, 35.278217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015615, -0.999637, 0.021958,
		0.242929, -0.017509, -0.969886,
		0.969918, 0.020479, 0.242567,
		42.449490, 36.354233, 35.350986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086277, 35.754063, 34.785378>,  <41.770550, 36.339897, 35.181190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086277, 35.754063, 34.785378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.318195, 35.859676, 35.093697>,  <42.457348, 35.923042, 35.278687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.318195, 35.859676, 35.093697>,  <42.086277, 35.754063, 34.785378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318195, 35.859676, 35.093697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034274, -0.937296, 0.346845,
		0.814039, -0.227518, -0.534393,
		0.579798, 0.264030, 0.770793,
		42.492134, 35.938885, 35.324936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540932, 35.247414, 34.778160>,  <42.086277, 35.754063, 34.785378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540932, 35.247414, 34.778160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555241, 35.401684, 35.146938>,  <42.563828, 35.494247, 35.368206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555241, 35.401684, 35.146938>,  <42.540932, 35.247414, 34.778160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555241, 35.401684, 35.146938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091655, -0.919909, 0.381269,
		0.995148, 0.070862, -0.068256,
		0.035772, 0.385675, 0.921941,
		42.565971, 35.517387, 35.423519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166832, 34.938095, 35.080349>,  <42.540932, 35.247414, 34.778160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166832, 34.938095, 35.080349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.926704, 35.033981, 35.385544>,  <42.782627, 35.091511, 35.568661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.926704, 35.033981, 35.385544>,  <43.166832, 34.938095, 35.080349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926704, 35.033981, 35.385544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094111, -0.926222, 0.365043,
		0.794203, 0.290948, 0.533470,
		-0.600320, 0.239713, 0.762990,
		42.746609, 35.105896, 35.614441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453728, 34.560612, 35.652222>,  <43.166832, 34.938095, 35.080349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453728, 34.560612, 35.652222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077919, 34.646061, 35.759308>,  <42.852436, 34.697330, 35.823559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077919, 34.646061, 35.759308>,  <43.453728, 34.560612, 35.652222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077919, 34.646061, 35.759308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107034, -0.925633, 0.362970,
		0.325346, 0.312362, 0.892513,
		-0.939518, 0.213620, 0.267717,
		42.796062, 34.710148, 35.839622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314846, 34.384953, 36.335728>,  <43.453728, 34.560612, 35.652222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314846, 34.384953, 36.335728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950954, 34.372711, 36.170097>,  <42.732620, 34.365368, 36.070717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950954, 34.372711, 36.170097>,  <43.314846, 34.384953, 36.335728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950954, 34.372711, 36.170097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113901, -0.940632, 0.319748,
		-0.399280, 0.338047, 0.852232,
		-0.909726, -0.030599, -0.414079,
		42.678036, 34.363533, 36.045872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087830, 34.180489, 36.298019>,  <43.314846, 34.384953, 36.335728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087830, 34.180489, 36.298019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451546, 34.036880, 36.213833>,  <44.669773, 33.950714, 36.163319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.451546, 34.036880, 36.213833>,  <44.087830, 34.180489, 36.298019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451546, 34.036880, 36.213833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412773, 0.713579, 0.566060,
		-0.053042, -0.601588, 0.797044,
		0.909288, -0.359023, -0.210470,
		44.724331, 33.929173, 36.150692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507317, 34.182842, 36.871784>,  <44.087830, 34.180489, 36.298019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507317, 34.182842, 36.871784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749611, 34.193207, 36.553688>,  <44.894989, 34.199425, 36.362831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749611, 34.193207, 36.553688>,  <44.507317, 34.182842, 36.871784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749611, 34.193207, 36.553688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511644, 0.752744, 0.414243,
		0.609347, -0.657804, 0.442708,
		0.605736, 0.025909, -0.795244,
		44.931332, 34.200981, 36.315113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261234, 34.351799, 37.182533>,  <44.507317, 34.182842, 36.871784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261234, 34.351799, 37.182533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275978, 34.434574, 36.791470>,  <45.284824, 34.484241, 36.556831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275978, 34.434574, 36.791470>,  <45.261234, 34.351799, 37.182533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275978, 34.434574, 36.791470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603430, 0.775219, 0.186838,
		0.796564, -0.596835, -0.096301,
		0.036857, 0.206940, -0.977659,
		45.287037, 34.496655, 36.498173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939598, 34.503616, 37.043480>,  <45.261234, 34.351799, 37.182533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939598, 34.503616, 37.043480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.720764, 34.662388, 36.748684>,  <45.589466, 34.757652, 36.571808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.720764, 34.662388, 36.748684>,  <45.939598, 34.503616, 37.043480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720764, 34.662388, 36.748684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525602, 0.848119, 0.066616,
		0.651495, -0.350918, -0.672615,
		-0.547081, 0.396927, -0.736988,
		45.556641, 34.781467, 36.527588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385986, 34.956249, 36.666328>,  <45.939598, 34.503616, 37.043480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385986, 34.956249, 36.666328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.037579, 35.091290, 36.523579>,  <45.828533, 35.172314, 36.437927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.037579, 35.091290, 36.523579>,  <46.385986, 34.956249, 36.666328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.037579, 35.091290, 36.523579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388850, 0.917743, -0.080890,
		0.300214, -0.209228, -0.930642,
		-0.871015, 0.337596, -0.356878,
		45.776276, 35.192570, 36.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553467, 35.417507, 36.055389>,  <46.385986, 34.956249, 36.666328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553467, 35.417507, 36.055389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.186172, 35.508617, 36.184982>,  <45.965797, 35.563282, 36.262737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.186172, 35.508617, 36.184982>,  <46.553467, 35.417507, 36.055389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186172, 35.508617, 36.184982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234904, 0.971861, -0.017502,
		-0.318853, 0.060034, -0.945901,
		-0.918234, 0.227777, 0.323982,
		45.910702, 35.576950, 36.282177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264160, 35.981647, 35.566273>,  <46.553467, 35.417507, 36.055389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264160, 35.981647, 35.566273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030575, 36.004318, 35.890194>,  <45.890423, 36.017921, 36.084545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030575, 36.004318, 35.890194>,  <46.264160, 35.981647, 35.566273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030575, 36.004318, 35.890194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225498, 0.946974, -0.228892,
		-0.779834, -0.316272, -0.540214,
		-0.583960, 0.056681, 0.809801,
		45.855385, 36.021324, 36.133133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742947, 36.412773, 35.386066>,  <46.264160, 35.981647, 35.566273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742947, 36.412773, 35.386066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704304, 36.420280, 35.784126>,  <45.681118, 36.424786, 36.022961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704304, 36.420280, 35.784126>,  <45.742947, 36.412773, 35.386066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704304, 36.420280, 35.784126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199117, 0.979247, -0.037798,
		-0.975203, -0.201802, -0.090861,
		-0.096603, 0.018769, 0.995146,
		45.675323, 36.425911, 36.082668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110538, 36.854477, 35.559818>,  <45.742947, 36.412773, 35.386066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110538, 36.854477, 35.559818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.362122, 36.848892, 35.870743>,  <45.513073, 36.845539, 36.057297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.362122, 36.848892, 35.870743>,  <45.110538, 36.854477, 35.559818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362122, 36.848892, 35.870743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290088, 0.923412, 0.251314,
		-0.721291, -0.383556, 0.576736,
		0.628958, -0.013967, 0.777314,
		45.550808, 36.844704, 36.103935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713978, 37.194244, 36.083099>,  <45.110538, 36.854477, 35.559818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713978, 37.194244, 36.083099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093231, 37.203377, 36.209923>,  <45.320782, 37.208858, 36.286015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093231, 37.203377, 36.209923>,  <44.713978, 37.194244, 36.083099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093231, 37.203377, 36.209923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110463, 0.958923, 0.261275,
		-0.298067, -0.282746, 0.911707,
		0.948132, 0.022833, 0.317057,
		45.377670, 37.210228, 36.305038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724422, 37.505981, 36.677357>,  <44.713978, 37.194244, 36.083099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724422, 37.505981, 36.677357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104877, 37.551998, 36.562737>,  <45.333149, 37.579609, 36.493965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104877, 37.551998, 36.562737>,  <44.724422, 37.505981, 36.677357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104877, 37.551998, 36.562737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027341, 0.892977, 0.449271,
		0.307568, -0.435151, 0.846195,
		0.951133, 0.115045, -0.286549,
		45.390217, 37.586514, 36.476772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964748, 37.817226, 37.156338>,  <44.724422, 37.505981, 36.677357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964748, 37.817226, 37.156338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235836, 37.890408, 36.871460>,  <45.398491, 37.934319, 36.700535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235836, 37.890408, 36.871460>,  <44.964748, 37.817226, 37.156338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235836, 37.890408, 36.871460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049453, 0.955018, 0.292395,
		0.733655, -0.233383, 0.638188,
		0.677721, 0.182957, -0.712195,
		45.439152, 37.945293, 36.657803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491665, 38.128014, 37.542023>,  <44.964748, 37.817226, 37.156338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491665, 38.128014, 37.542023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510178, 38.221336, 37.153503>,  <45.521286, 38.277328, 36.920391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510178, 38.221336, 37.153503>,  <45.491665, 38.128014, 37.542023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510178, 38.221336, 37.153503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133215, 0.962217, 0.237472,
		0.990006, -0.140383, 0.013455,
		0.046284, 0.233306, -0.971301,
		45.524063, 38.291328, 36.862114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076042, 38.603222, 37.462978>,  <45.491665, 38.128014, 37.542023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076042, 38.603222, 37.462978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860622, 38.661911, 37.131088>,  <45.731369, 38.697124, 36.931953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860622, 38.661911, 37.131088>,  <46.076042, 38.603222, 37.462978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860622, 38.661911, 37.131088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069183, 0.989098, 0.129996,
		0.839749, 0.012607, -0.542828,
		-0.538549, 0.146719, -0.829722,
		45.699059, 38.705925, 36.882172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424316, 39.087067, 37.165474>,  <46.076042, 38.603222, 37.462978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424316, 39.087067, 37.165474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.058407, 39.100292, 37.004425>,  <45.838863, 39.108227, 36.907795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.058407, 39.100292, 37.004425>,  <46.424316, 39.087067, 37.165474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058407, 39.100292, 37.004425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044497, 0.982335, 0.181764,
		0.401516, 0.184188, -0.897139,
		-0.914770, 0.033062, -0.402619,
		45.783978, 39.110210, 36.883640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474133, 39.640717, 36.822178>,  <46.424316, 39.087067, 37.165474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474133, 39.640717, 36.822178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.076988, 39.593178, 36.826092>,  <45.838699, 39.564655, 36.828442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.076988, 39.593178, 36.826092>,  <46.474133, 39.640717, 36.822178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076988, 39.593178, 36.826092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112259, 0.959188, 0.259532,
		-0.040229, 0.256582, -0.965685,
		-0.992864, -0.118848, 0.009783,
		45.779129, 39.557522, 36.829025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113491, 40.180664, 36.376209>,  <46.474133, 39.640717, 36.822178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113491, 40.180664, 36.376209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.830437, 40.052582, 36.628155>,  <45.660606, 39.975731, 36.779320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.830437, 40.052582, 36.628155>,  <46.113491, 40.180664, 36.376209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830437, 40.052582, 36.628155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291812, 0.944287, 0.152211,
		-0.643509, -0.076092, -0.761647,
		-0.707631, -0.320207, 0.629862,
		45.618149, 39.956520, 36.817112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439831, 40.523464, 36.153137>,  <46.113491, 40.180664, 36.376209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439831, 40.523464, 36.153137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389458, 40.403812, 36.531483>,  <45.359234, 40.332020, 36.758492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389458, 40.403812, 36.531483>,  <45.439831, 40.523464, 36.153137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389458, 40.403812, 36.531483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417414, 0.880925, 0.223016,
		-0.899948, -0.366732, -0.235799,
		-0.125934, -0.299129, 0.945866,
		45.351677, 40.314075, 36.815243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941002, 40.933353, 36.304920>,  <45.439831, 40.523464, 36.153137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941002, 40.933353, 36.304920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089024, 40.813736, 36.656746>,  <45.177837, 40.741966, 36.867840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089024, 40.813736, 36.656746>,  <44.941002, 40.933353, 36.304920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089024, 40.813736, 36.656746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252397, 0.878799, 0.404980,
		-0.894066, -0.371864, 0.249727,
		0.370057, -0.299048, 0.879561,
		45.200039, 40.724022, 36.920616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400852, 40.982143, 36.747704>,  <44.941002, 40.933353, 36.304920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400852, 40.982143, 36.747704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747341, 40.999428, 36.946823>,  <44.955235, 41.009800, 37.066296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747341, 40.999428, 36.946823>,  <44.400852, 40.982143, 36.747704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747341, 40.999428, 36.946823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255531, 0.894433, 0.367007,
		-0.429384, -0.445110, 0.785816,
		0.866218, 0.043213, 0.497795,
		45.007206, 41.012390, 37.096161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169132, 41.271202, 37.329533>,  <44.400852, 40.982143, 36.747704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169132, 41.271202, 37.329533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566521, 41.308022, 37.356491>,  <44.804955, 41.330112, 37.372665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566521, 41.308022, 37.356491>,  <44.169132, 41.271202, 37.329533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566521, 41.308022, 37.356491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108784, 0.942352, 0.316449,
		-0.034385, -0.321714, 0.946212,
		0.993470, 0.092052, 0.067400,
		44.864563, 41.335636, 37.376713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.596512, 35.955173, 41.077740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283176, 35.710426, 41.033924>,  <40.095177, 35.563580, 41.007633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283176, 35.710426, 41.033924>,  <40.596512, 35.955173, 41.077740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283176, 35.710426, 41.033924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098035, 0.052405, -0.993802,
		0.613815, -0.789223, 0.018933,
		-0.783339, -0.611867, -0.109538,
		40.048176, 35.526867, 41.001064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797512, 35.523575, 40.441498>,  <40.596512, 35.955173, 41.077740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797512, 35.523575, 40.441498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402725, 35.474697, 40.483383>,  <40.165852, 35.445370, 40.508514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402725, 35.474697, 40.483383>,  <40.797512, 35.523575, 40.441498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402725, 35.474697, 40.483383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095127, -0.081795, -0.992099,
		0.129793, -0.989130, 0.069105,
		-0.986967, -0.122194, 0.104709,
		40.106636, 35.438038, 40.514797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632454, 34.852615, 40.025993>,  <40.797512, 35.523575, 40.441498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632454, 34.852615, 40.025993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288795, 35.049629, 40.081532>,  <40.082600, 35.167839, 40.114857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288795, 35.049629, 40.081532>,  <40.632454, 34.852615, 40.025993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288795, 35.049629, 40.081532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223859, -0.117744, -0.967483,
		-0.460171, -0.862291, 0.211417,
		-0.859145, 0.492535, 0.138849,
		40.031052, 35.197392, 40.123188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101543, 34.545738, 39.615139>,  <40.632454, 34.852615, 40.025993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101543, 34.545738, 39.615139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934494, 34.906387, 39.660175>,  <39.834267, 35.122776, 39.687199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934494, 34.906387, 39.660175>,  <40.101543, 34.545738, 39.615139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934494, 34.906387, 39.660175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336231, -0.038229, -0.941004,
		-0.844123, -0.430838, 0.319117,
		-0.417619, 0.901619, 0.112591,
		39.809208, 35.176872, 39.693954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359932, 34.427521, 39.298298>,  <40.101543, 34.545738, 39.615139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359932, 34.427521, 39.298298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423817, 34.822315, 39.290901>,  <39.462147, 35.059193, 39.286465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423817, 34.822315, 39.290901>,  <39.359932, 34.427521, 39.298298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423817, 34.822315, 39.290901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547008, 0.072892, -0.833948,
		-0.821751, 0.143303, 0.551533,
		0.159710, 0.986991, -0.018489,
		39.471729, 35.118412, 39.285355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717159, 34.639378, 39.163109>,  <39.359932, 34.427521, 39.298298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717159, 34.639378, 39.163109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986816, 34.912735, 39.051033>,  <39.148613, 35.076748, 38.983788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986816, 34.912735, 39.051033>,  <38.717159, 34.639378, 39.163109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986816, 34.912735, 39.051033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485160, 0.123693, -0.865633,
		-0.556908, 0.719498, 0.414941,
		0.674146, 0.683390, -0.280186,
		39.189060, 35.117752, 38.966976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301331, 35.007603, 38.737339>,  <38.717159, 34.639378, 39.163109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301331, 35.007603, 38.737339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680557, 35.120403, 38.678497>,  <38.908092, 35.188084, 38.643192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680557, 35.120403, 38.678497>,  <38.301331, 35.007603, 38.737339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680557, 35.120403, 38.678497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196151, 0.154303, -0.968357,
		-0.250383, 0.946923, 0.201606,
		0.948068, 0.282006, -0.147105,
		38.964977, 35.205006, 38.634365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308132, 35.568981, 38.330112>,  <38.301331, 35.007603, 38.737339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308132, 35.568981, 38.330112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663204, 35.397774, 38.262199>,  <38.876247, 35.295048, 38.221451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663204, 35.397774, 38.262199>,  <38.308132, 35.568981, 38.330112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663204, 35.397774, 38.262199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132064, 0.116580, -0.984362,
		0.441120, 0.896219, 0.046959,
		0.887678, -0.428020, -0.169785,
		38.929508, 35.269367, 38.211266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671093, 36.024311, 37.887417>,  <38.308132, 35.568981, 38.330112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671093, 36.024311, 37.887417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844906, 35.666958, 37.841740>,  <38.949196, 35.452545, 37.814335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844906, 35.666958, 37.841740>,  <38.671093, 36.024311, 37.887417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844906, 35.666958, 37.841740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106946, 0.177070, -0.978370,
		0.894282, 0.412925, 0.172487,
		0.434536, -0.893386, -0.114190,
		38.975266, 35.398941, 37.807484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368649, 36.130859, 37.510098>,  <38.671093, 36.024311, 37.887417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368649, 36.130859, 37.510098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240063, 35.758095, 37.442932>,  <39.162910, 35.534435, 37.402634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240063, 35.758095, 37.442932>,  <39.368649, 36.130859, 37.510098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240063, 35.758095, 37.442932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232038, 0.094395, -0.968116,
		0.918051, -0.350179, 0.185894,
		-0.321467, -0.931914, -0.167914,
		39.143623, 35.478519, 37.392559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887081, 35.847466, 36.940498>,  <39.368649, 36.130859, 37.510098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887081, 35.847466, 36.940498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595730, 35.574123, 36.960484>,  <39.420918, 35.410118, 36.972473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595730, 35.574123, 36.960484>,  <39.887081, 35.847466, 36.940498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595730, 35.574123, 36.960484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192538, -0.274114, -0.942227,
		0.657567, -0.676678, 0.331230,
		-0.728379, -0.683351, 0.049962,
		39.377216, 35.369118, 36.975471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160820, 35.170307, 36.713825>,  <39.887081, 35.847466, 36.940498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160820, 35.170307, 36.713825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766708, 35.134037, 36.655865>,  <39.530239, 35.112274, 36.621090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766708, 35.134037, 36.655865>,  <40.160820, 35.170307, 36.713825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766708, 35.134037, 36.655865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170670, -0.474692, -0.863446,
		0.009511, -0.875468, 0.483182,
		-0.985282, -0.090677, -0.144902,
		39.471123, 35.106834, 36.612392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086887, 34.470200, 36.740051>,  <40.160820, 35.170307, 36.713825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086887, 34.470200, 36.740051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851788, 34.679680, 36.493382>,  <39.710728, 34.805367, 36.345379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851788, 34.679680, 36.493382>,  <40.086887, 34.470200, 36.740051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851788, 34.679680, 36.493382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221603, -0.628869, -0.745262,
		-0.778103, -0.574684, 0.253563,
		-0.587748, 0.523701, -0.616677,
		39.675465, 34.836788, 36.308380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748211, 33.999928, 36.253510>,  <40.086887, 34.470200, 36.740051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748211, 33.999928, 36.253510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765354, 34.361931, 36.084217>,  <39.775642, 34.579132, 35.982639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765354, 34.361931, 36.084217>,  <39.748211, 33.999928, 36.253510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765354, 34.361931, 36.084217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377181, -0.406931, -0.831950,
		-0.925147, -0.123977, -0.358793,
		0.042861, 0.905007, -0.423233,
		39.778214, 34.633434, 35.957249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489529, 33.384071, 36.045834>,  <39.748211, 33.999928, 36.253510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489529, 33.384071, 36.045834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585381, 32.995762, 36.040569>,  <39.642891, 32.762775, 36.037411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585381, 32.995762, 36.040569>,  <39.489529, 33.384071, 36.045834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585381, 32.995762, 36.040569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642826, -0.168805, 0.747181,
		-0.727566, -0.170587, -0.664490,
		0.239628, -0.970775, -0.013159,
		39.657269, 32.704529, 36.036621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895878, 33.000919, 36.044312>,  <39.489529, 33.384071, 36.045834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895878, 33.000919, 36.044312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178928, 32.775597, 36.214935>,  <39.348759, 32.640404, 36.317310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178928, 32.775597, 36.214935>,  <38.895878, 33.000919, 36.044312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178928, 32.775597, 36.214935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621407, -0.208782, 0.755158,
		-0.336328, -0.799435, -0.497782,
		0.707627, -0.563306, 0.426556,
		39.391216, 32.606606, 36.342903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515160, 32.472485, 36.434147>,  <38.895878, 33.000919, 36.044312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515160, 32.472485, 36.434147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874123, 32.447796, 36.608894>,  <39.089500, 32.432983, 36.713745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874123, 32.447796, 36.608894>,  <38.515160, 32.472485, 36.434147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874123, 32.447796, 36.608894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440508, -0.181132, 0.879286,
		0.024865, -0.981520, -0.189735,
		0.897404, -0.061716, 0.436871,
		39.143345, 32.429279, 36.739956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333729, 32.062244, 36.996075>,  <38.515160, 32.472485, 36.434147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333729, 32.062244, 36.996075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698185, 32.192303, 37.097355>,  <38.916859, 32.270336, 37.158123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698185, 32.192303, 37.097355>,  <38.333729, 32.062244, 36.996075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698185, 32.192303, 37.097355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184085, -0.228599, 0.955958,
		0.368705, -0.917619, -0.148431,
		0.911137, 0.325142, 0.253205,
		38.971527, 32.289845, 37.173317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609455, 31.537252, 37.388245>,  <38.333729, 32.062244, 36.996075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609455, 31.537252, 37.388245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836628, 31.849623, 37.492252>,  <38.972931, 32.037045, 37.554657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836628, 31.849623, 37.492252>,  <38.609455, 31.537252, 37.388245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836628, 31.849623, 37.492252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139377, -0.220106, 0.965468,
		0.811189, -0.584560, -0.016163,
		0.567932, 0.780924, 0.260022,
		39.007008, 32.083900, 37.570259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082584, 31.368776, 37.823277>,  <38.609455, 31.537252, 37.388245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082584, 31.368776, 37.823277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063126, 31.760065, 37.903988>,  <39.051449, 31.994839, 37.952415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063126, 31.760065, 37.903988>,  <39.082584, 31.368776, 37.823277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063126, 31.760065, 37.903988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058504, -0.198882, 0.978275,
		0.997101, 0.059395, -0.047555,
		-0.048646, 0.978222, 0.201781,
		39.048531, 32.053532, 37.964523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584084, 31.480906, 38.366444>,  <39.082584, 31.368776, 37.823277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584084, 31.480906, 38.366444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342197, 31.799465, 38.363148>,  <39.197063, 31.990601, 38.361172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342197, 31.799465, 38.363148>,  <39.584084, 31.480906, 38.366444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342197, 31.799465, 38.363148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045128, 0.044589, 0.997986,
		0.795161, 0.603127, -0.062903,
		-0.604717, 0.796398, -0.008237,
		39.160782, 32.038383, 38.360676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840771, 31.888435, 38.866493>,  <39.584084, 31.480906, 38.366444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840771, 31.888435, 38.866493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468636, 32.020004, 38.801640>,  <39.245354, 32.098946, 38.762726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468636, 32.020004, 38.801640>,  <39.840771, 31.888435, 38.866493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468636, 32.020004, 38.801640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164263, 0.021506, 0.986182,
		0.327866, 0.944111, 0.034023,
		-0.930334, 0.328925, -0.162133,
		39.189537, 32.118683, 38.752998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721390, 32.443153, 39.306469>,  <39.840771, 31.888435, 38.866493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721390, 32.443153, 39.306469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348904, 32.317505, 39.232540>,  <39.125412, 32.242115, 39.188183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348904, 32.317505, 39.232540>,  <39.721390, 32.443153, 39.306469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348904, 32.317505, 39.232540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224957, 0.096411, 0.969587,
		-0.286747, 0.944476, -0.160443,
		-0.931220, -0.314119, -0.184821,
		39.069538, 32.223270, 39.177094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358337, 32.764786, 39.818722>,  <39.721390, 32.443153, 39.306469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358337, 32.764786, 39.818722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104370, 32.482498, 39.692963>,  <38.951988, 32.313126, 39.617508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104370, 32.482498, 39.692963>,  <39.358337, 32.764786, 39.818722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104370, 32.482498, 39.692963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156207, -0.281275, 0.946828,
		-0.756623, 0.650269, 0.068349,
		-0.634917, -0.705716, -0.314396,
		38.913895, 32.270782, 39.598644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793797, 32.890202, 40.303307>,  <39.358337, 32.764786, 39.818722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793797, 32.890202, 40.303307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775925, 32.523300, 40.144989>,  <38.765202, 32.303162, 40.049999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775925, 32.523300, 40.144989>,  <38.793797, 32.890202, 40.303307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775925, 32.523300, 40.144989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014040, -0.396728, 0.917829,
		-0.998903, 0.035449, 0.030603,
		-0.044677, -0.917252, -0.395795,
		38.762520, 32.248123, 40.026249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340801, 32.600399, 40.590279>,  <38.793797, 32.890202, 40.303307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340801, 32.600399, 40.590279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503422, 32.252041, 40.479816>,  <38.600994, 32.043026, 40.413540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503422, 32.252041, 40.479816>,  <38.340801, 32.600399, 40.590279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503422, 32.252041, 40.479816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066817, -0.273113, 0.959659,
		-0.911183, -0.408599, -0.052843,
		0.406548, -0.870894, -0.276157,
		38.625385, 31.990772, 40.396969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088169, 32.164246, 41.036324>,  <38.340801, 32.600399, 40.590279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088169, 32.164246, 41.036324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414276, 31.971355, 40.908070>,  <38.609940, 31.855621, 40.831120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414276, 31.971355, 40.908070>,  <38.088169, 32.164246, 41.036324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414276, 31.971355, 40.908070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089691, -0.441853, 0.892592,
		-0.572103, -0.756456, -0.316975,
		0.815263, -0.482225, -0.320633,
		38.658855, 31.826689, 40.811878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029762, 31.510494, 41.122395>,  <38.088169, 32.164246, 41.036324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029762, 31.510494, 41.122395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427952, 31.515297, 41.084690>,  <38.666866, 31.518179, 41.062069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427952, 31.515297, 41.084690>,  <38.029762, 31.510494, 41.122395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427952, 31.515297, 41.084690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092222, -0.361056, 0.927973,
		-0.022891, -0.932467, -0.360530,
		0.995475, 0.012007, -0.094259,
		38.726593, 31.518898, 41.056412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886116, 30.761511, 40.816193>,  <38.029762, 31.510494, 41.122395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886116, 30.761511, 40.816193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679623, 30.436039, 40.923096>,  <37.555725, 30.240755, 40.987236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679623, 30.436039, 40.923096>,  <37.886116, 30.761511, 40.816193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679623, 30.436039, 40.923096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134718, -0.231019, -0.963577,
		0.845785, -0.533437, 0.009643,
		-0.516236, -0.813680, 0.267256,
		37.524754, 30.191935, 41.003273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076313, 30.309408, 40.251446>,  <37.886116, 30.761511, 40.816193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076313, 30.309408, 40.251446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746269, 30.151943, 40.413544>,  <37.548244, 30.057465, 40.510803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746269, 30.151943, 40.413544>,  <38.076313, 30.309408, 40.251446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746269, 30.151943, 40.413544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314705, -0.275447, -0.908344,
		0.469205, -0.877016, 0.103387,
		-0.825111, -0.393664, 0.405243,
		37.498737, 30.033844, 40.535118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016148, 29.611698, 39.871105>,  <38.076313, 30.309408, 40.251446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016148, 29.611698, 39.871105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673107, 29.708771, 40.052486>,  <37.467281, 29.767014, 40.161316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673107, 29.708771, 40.052486>,  <38.016148, 29.611698, 39.871105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673107, 29.708771, 40.052486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513342, -0.349773, -0.783670,
		-0.031575, -0.904857, 0.424544,
		-0.857603, 0.242681, 0.453457,
		37.415825, 29.781576, 40.188522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599079, 28.997793, 39.702137>,  <38.016148, 29.611698, 39.871105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599079, 28.997793, 39.702137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380436, 29.321978, 39.786400>,  <37.249252, 29.516489, 39.836956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380436, 29.321978, 39.786400>,  <37.599079, 28.997793, 39.702137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380436, 29.321978, 39.786400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638657, -0.240770, -0.730854,
		-0.541611, -0.534023, 0.649213,
		-0.546604, 0.810463, 0.210653,
		37.216454, 29.565117, 39.849598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843765, 28.801298, 39.745708>,  <37.599079, 28.997793, 39.702137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843765, 28.801298, 39.745708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847912, 29.194660, 39.673256>,  <36.850399, 29.430677, 39.629784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847912, 29.194660, 39.673256>,  <36.843765, 28.801298, 39.745708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847912, 29.194660, 39.673256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757372, -0.110550, -0.643558,
		-0.652901, 0.143852, 0.743657,
		0.010365, 0.983405, -0.181128,
		36.851021, 29.489681, 39.618919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113163, 28.973814, 39.614040>,  <36.843765, 28.801298, 39.745708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113163, 28.973814, 39.614040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294117, 29.304708, 39.480759>,  <36.402691, 29.503244, 39.400791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294117, 29.304708, 39.480759>,  <36.113163, 28.973814, 39.614040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294117, 29.304708, 39.480759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702857, 0.100739, -0.704162,
		-0.548941, 0.552750, 0.627001,
		0.452389, 0.827236, -0.333204,
		36.429832, 29.552879, 39.380798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598469, 29.441082, 39.474033>,  <36.113163, 28.973814, 39.614040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598469, 29.441082, 39.474033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909397, 29.574198, 39.260483>,  <36.095955, 29.654068, 39.132351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909397, 29.574198, 39.260483>,  <35.598469, 29.441082, 39.474033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909397, 29.574198, 39.260483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618279, 0.247348, -0.746023,
		-0.116216, 0.909983, 0.398026,
		0.777319, 0.332791, -0.533878,
		36.142593, 29.674034, 39.100319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483559, 30.193611, 39.264389>,  <35.598469, 29.441082, 39.474033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483559, 30.193611, 39.264389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718067, 30.010557, 38.996998>,  <35.858772, 29.900724, 38.836563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718067, 30.010557, 38.996998>,  <35.483559, 30.193611, 39.264389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718067, 30.010557, 38.996998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663731, 0.201775, -0.720242,
		0.464491, 0.865942, -0.185453,
		0.586268, -0.457637, -0.668475,
		35.893948, 29.873266, 38.796455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401985, 30.646746, 38.692055>,  <35.483559, 30.193611, 39.264389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401985, 30.646746, 38.692055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542004, 30.298717, 38.553234>,  <35.626015, 30.089901, 38.469940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542004, 30.298717, 38.553234>,  <35.401985, 30.646746, 38.692055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542004, 30.298717, 38.553234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550456, 0.108715, -0.827755,
		0.757936, 0.480787, -0.440881,
		0.350044, -0.870072, -0.347052,
		35.647018, 30.037697, 38.449120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547768, 30.847689, 38.067574>,  <35.401985, 30.646746, 38.692055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547768, 30.847689, 38.067574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547176, 30.448103, 38.049377>,  <35.546822, 30.208351, 38.038460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547176, 30.448103, 38.049377>,  <35.547768, 30.847689, 38.067574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547176, 30.448103, 38.049377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519505, 0.039637, -0.853548,
		0.854466, 0.022367, -0.519025,
		-0.001481, -0.998964, -0.045488,
		35.546730, 30.148415, 38.035732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727749, 30.670582, 37.427166>,  <35.547768, 30.847689, 38.067574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727749, 30.670582, 37.427166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508293, 30.362185, 37.556507>,  <35.376617, 30.177145, 37.634113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508293, 30.362185, 37.556507>,  <35.727749, 30.670582, 37.427166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508293, 30.362185, 37.556507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634420, 0.132030, -0.761630,
		0.544520, -0.623005, -0.561572,
		-0.548644, -0.770995, 0.323354,
		35.343700, 30.130886, 37.653515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602299, 30.082901, 36.893143>,  <35.727749, 30.670582, 37.427166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602299, 30.082901, 36.893143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322323, 30.177181, 37.162819>,  <35.154339, 30.233749, 37.324623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322323, 30.177181, 37.162819>,  <35.602299, 30.082901, 36.893143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322323, 30.177181, 37.162819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585446, 0.351330, -0.730630,
		-0.409073, -0.906098, -0.107920,
		-0.699938, 0.235699, 0.674191,
		35.112343, 30.247890, 37.365078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.202419, 29.815527, 44.830528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815353, 29.732580, 44.773083>,  <37.583115, 29.682812, 44.738617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815353, 29.732580, 44.773083>,  <38.202419, 29.815527, 44.830528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815353, 29.732580, 44.773083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138474, 0.039162, -0.989591,
		0.210836, -0.977478, -0.009180,
		-0.967664, -0.207371, -0.143613,
		37.525055, 29.670370, 44.730000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177559, 29.328085, 44.365547>,  <38.202419, 29.815527, 44.830528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177559, 29.328085, 44.365547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806335, 29.474915, 44.340382>,  <37.583599, 29.563011, 44.325283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806335, 29.474915, 44.340382>,  <38.177559, 29.328085, 44.365547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806335, 29.474915, 44.340382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089255, 0.055210, -0.994477,
		-0.361571, -0.928552, -0.084002,
		-0.928062, 0.367072, -0.062916,
		37.527916, 29.585035, 44.321507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859703, 28.978003, 43.731293>,  <38.177559, 29.328085, 44.365547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859703, 28.978003, 43.731293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622311, 29.293932, 43.793205>,  <37.479874, 29.483490, 43.830353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622311, 29.293932, 43.793205>,  <37.859703, 28.978003, 43.731293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622311, 29.293932, 43.793205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019920, 0.206667, -0.978208,
		-0.804600, -0.577467, -0.138387,
		-0.593483, 0.789823, 0.154781,
		37.444267, 29.530878, 43.839638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315590, 28.838827, 43.402573>,  <37.859703, 28.978003, 43.731293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315590, 28.838827, 43.402573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344334, 29.237749, 43.408508>,  <37.361580, 29.477102, 43.412071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344334, 29.237749, 43.408508>,  <37.315590, 28.838827, 43.402573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344334, 29.237749, 43.408508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086754, 0.021070, -0.996007,
		-0.993635, 0.070287, 0.088035,
		0.071862, 0.997304, 0.014838,
		37.365891, 29.536940, 43.412960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892784, 29.049873, 42.971684>,  <37.315590, 28.838827, 43.402573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892784, 29.049873, 42.971684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114662, 29.381273, 43.002411>,  <37.247787, 29.580114, 43.020847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114662, 29.381273, 43.002411>,  <36.892784, 29.049873, 42.971684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114662, 29.381273, 43.002411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021957, 0.106871, -0.994030,
		-0.831766, 0.549694, 0.077472,
		0.554692, 0.828502, 0.076822,
		37.281071, 29.629824, 43.025459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519123, 29.530487, 42.545147>,  <36.892784, 29.049873, 42.971684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519123, 29.530487, 42.545147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891285, 29.670151, 42.589756>,  <37.114582, 29.753948, 42.616520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891285, 29.670151, 42.589756>,  <36.519123, 29.530487, 42.545147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891285, 29.670151, 42.589756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036518, 0.214444, -0.976053,
		-0.364713, 0.912196, 0.186768,
		0.930404, 0.349159, 0.111522,
		37.170406, 29.774899, 42.623211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465694, 30.256319, 42.211216>,  <36.519123, 29.530487, 42.545147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465694, 30.256319, 42.211216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.840187, 30.117483, 42.233150>,  <37.064880, 30.034182, 42.246311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.840187, 30.117483, 42.233150>,  <36.465694, 30.256319, 42.211216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840187, 30.117483, 42.233150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122485, 0.176062, -0.976729,
		0.329358, 0.921157, 0.207347,
		0.936227, -0.347090, 0.054840,
		37.121056, 30.013355, 42.249603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945011, 30.779264, 41.890553>,  <36.465694, 30.256319, 42.211216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945011, 30.779264, 41.890553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127888, 30.424225, 41.868134>,  <37.237614, 30.211201, 41.854683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127888, 30.424225, 41.868134>,  <36.945011, 30.779264, 41.890553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127888, 30.424225, 41.868134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245517, 0.186536, -0.951276,
		0.854806, 0.421158, 0.303204,
		0.457196, -0.887598, -0.056050,
		37.265045, 30.157946, 41.851318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646652, 30.908363, 41.611477>,  <36.945011, 30.779264, 41.890553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646652, 30.908363, 41.611477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542793, 30.526501, 41.553219>,  <37.480476, 30.297382, 41.518265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542793, 30.526501, 41.553219>,  <37.646652, 30.908363, 41.611477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542793, 30.526501, 41.553219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211399, 0.090972, -0.973157,
		0.942281, -0.283466, 0.178193,
		-0.259646, -0.954657, -0.145645,
		37.464901, 30.240103, 41.509525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394302, 30.867720, 41.557678>,  <37.646652, 30.908363, 41.611477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394302, 30.867720, 41.557678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689030, 31.130510, 41.493832>,  <38.865868, 31.288185, 41.455524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689030, 31.130510, 41.493832>,  <38.394302, 30.867720, 41.557678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689030, 31.130510, 41.493832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374217, -0.199680, 0.905588,
		0.563080, -0.726985, -0.392981,
		0.736820, 0.656978, -0.159614,
		38.910076, 31.327604, 41.445946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852291, 30.521393, 41.798046>,  <38.394302, 30.867720, 41.557678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852291, 30.521393, 41.798046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957645, 30.906830, 41.816452>,  <39.020859, 31.138092, 41.827496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957645, 30.906830, 41.816452>,  <38.852291, 30.521393, 41.798046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957645, 30.906830, 41.816452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265364, -0.118226, 0.956872,
		0.927476, -0.239812, -0.286842,
		0.263382, 0.963594, 0.046015,
		39.036659, 31.195908, 41.830257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432266, 30.472576, 42.166588>,  <38.852291, 30.521393, 41.798046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432266, 30.472576, 42.166588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363712, 30.866655, 42.168102>,  <39.322578, 31.103102, 42.169010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363712, 30.866655, 42.168102>,  <39.432266, 30.472576, 42.166588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363712, 30.866655, 42.168102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377515, 0.062127, 0.923917,
		0.910005, 0.159776, -0.382574,
		-0.171388, 0.985196, 0.003782,
		39.312294, 31.162214, 42.169235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072464, 30.852474, 42.436649>,  <39.432266, 30.472576, 42.166588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072464, 30.852474, 42.436649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.771431, 31.108309, 42.499332>,  <39.590813, 31.261808, 42.536942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.771431, 31.108309, 42.499332>,  <40.072464, 30.852474, 42.436649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771431, 31.108309, 42.499332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236698, 0.040676, 0.970731,
		0.614491, 0.767643, -0.182000,
		-0.752579, 0.639585, 0.156705,
		39.545658, 31.300184, 42.546345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398064, 31.360773, 42.841629>,  <40.072464, 30.852474, 42.436649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398064, 31.360773, 42.841629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.004498, 31.404533, 42.898106>,  <39.768356, 31.430790, 42.931992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.004498, 31.404533, 42.898106>,  <40.398064, 31.360773, 42.841629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004498, 31.404533, 42.898106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158173, 0.166457, 0.973280,
		0.082974, 0.979961, -0.181084,
		-0.983919, 0.109399, 0.141192,
		39.709320, 31.437353, 42.940464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413696, 31.892309, 43.293915>,  <40.398064, 31.360773, 42.841629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413696, 31.892309, 43.293915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052235, 31.728294, 43.343372>,  <39.835358, 31.629887, 43.373047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052235, 31.728294, 43.343372>,  <40.413696, 31.892309, 43.293915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052235, 31.728294, 43.343372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078895, 0.124375, 0.989094,
		-0.420941, 0.903550, -0.080042,
		-0.903651, -0.410035, 0.123640,
		39.781139, 31.605284, 43.380463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007183, 32.299591, 43.842327>,  <40.413696, 31.892309, 43.293915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007183, 32.299591, 43.842327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.808102, 31.952702, 43.848125>,  <39.688652, 31.744568, 43.851604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.808102, 31.952702, 43.848125>,  <40.007183, 32.299591, 43.842327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808102, 31.952702, 43.848125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078844, 0.061881, 0.994965,
		-0.863756, 0.494055, -0.099174,
		-0.497705, -0.867226, 0.014497,
		39.658791, 31.692533, 43.852474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364880, 32.321671, 44.269638>,  <40.007183, 32.299591, 43.842327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364880, 32.321671, 44.269638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449409, 31.931395, 44.246429>,  <39.500130, 31.697229, 44.232506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449409, 31.931395, 44.246429>,  <39.364880, 32.321671, 44.269638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449409, 31.931395, 44.246429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246458, -0.110634, 0.962818,
		-0.945833, -0.189171, -0.263847,
		0.211328, -0.975692, -0.058018,
		39.512806, 31.638687, 44.229023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788113, 32.029942, 44.499180>,  <39.364880, 32.321671, 44.269638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788113, 32.029942, 44.499180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086803, 31.769032, 44.551228>,  <39.266018, 31.612484, 44.582455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086803, 31.769032, 44.551228>,  <38.788113, 32.029942, 44.499180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086803, 31.769032, 44.551228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276004, -0.125884, 0.952877,
		-0.605161, -0.747453, -0.274033,
		0.746728, -0.652278, 0.130120,
		39.310822, 31.573349, 44.590263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529083, 31.528372, 44.990566>,  <38.788113, 32.029942, 44.499180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529083, 31.528372, 44.990566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923847, 31.463955, 44.987007>,  <39.160706, 31.425304, 44.984871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923847, 31.463955, 44.987007>,  <38.529083, 31.528372, 44.990566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923847, 31.463955, 44.987007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020284, -0.178632, 0.983707,
		-0.159993, -0.970650, -0.179560,
		0.986910, -0.161028, -0.008891,
		39.219921, 31.415642, 44.984341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633358, 30.893688, 45.498322>,  <38.529083, 31.528372, 44.990566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633358, 30.893688, 45.498322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983833, 31.065470, 45.410816>,  <39.194118, 31.168539, 45.358315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983833, 31.065470, 45.410816>,  <38.633358, 30.893688, 45.498322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983833, 31.065470, 45.410816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351340, -0.258429, 0.899875,
		0.329921, -0.865323, -0.377318,
		0.876192, 0.429454, -0.218762,
		39.246693, 31.194305, 45.345188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036446, 30.544605, 45.917606>,  <38.633358, 30.893688, 45.498322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036446, 30.544605, 45.917606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269829, 30.865166, 45.864944>,  <39.409859, 31.057503, 45.833347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269829, 30.865166, 45.864944>,  <39.036446, 30.544605, 45.917606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269829, 30.865166, 45.864944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256227, -0.027815, 0.966216,
		0.770667, -0.597477, -0.221570,
		0.583455, 0.801404, -0.131654,
		39.444866, 31.105587, 45.825447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698124, 30.379309, 46.145008>,  <39.036446, 30.544605, 45.917606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698124, 30.379309, 46.145008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.636131, 30.773294, 46.175537>,  <39.598934, 31.009686, 46.193855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.636131, 30.773294, 46.175537>,  <39.698124, 30.379309, 46.145008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636131, 30.773294, 46.175537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404788, -0.007163, 0.914383,
		0.901181, 0.172612, -0.397591,
		-0.154985, 0.984964, 0.076326,
		39.589634, 31.068783, 46.198437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361244, 30.769699, 46.439655>,  <39.698124, 30.379309, 46.145008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361244, 30.769699, 46.439655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063904, 31.029306, 46.504402>,  <39.885498, 31.185070, 46.543251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063904, 31.029306, 46.504402>,  <40.361244, 30.769699, 46.439655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063904, 31.029306, 46.504402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350885, 0.172330, 0.920425,
		0.569476, 0.740999, -0.355832,
		-0.743355, 0.649016, 0.161868,
		39.840897, 31.224010, 46.552963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.348297, 35.010502, 47.205471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312195, 34.614250, 47.164467>,  <34.290535, 34.376499, 47.139866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312195, 34.614250, 47.164467>,  <34.348297, 35.010502, 47.205471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312195, 34.614250, 47.164467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147704, 0.088479, -0.985066,
		0.984905, -0.104048, 0.138334,
		-0.090255, -0.990629, -0.102511,
		34.285118, 34.317062, 47.133713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893963, 34.786266, 46.694336>,  <34.348297, 35.010502, 47.205471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893963, 34.786266, 46.694336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639519, 34.477753, 46.703083>,  <34.486851, 34.292645, 46.708332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639519, 34.477753, 46.703083>,  <34.893963, 34.786266, 46.694336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639519, 34.477753, 46.703083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100799, -0.111164, -0.988677,
		0.764984, -0.626706, 0.148458,
		-0.636113, -0.771286, 0.021868,
		34.448685, 34.246368, 46.709644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089024, 34.380234, 46.103226>,  <34.893963, 34.786266, 46.694336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089024, 34.380234, 46.103226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717941, 34.255569, 46.185432>,  <34.495293, 34.180771, 46.234756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717941, 34.255569, 46.185432>,  <35.089024, 34.380234, 46.103226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717941, 34.255569, 46.185432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138930, -0.222741, -0.964927,
		0.346503, -0.923719, 0.163339,
		-0.927704, -0.311657, 0.205513,
		34.439629, 34.162071, 46.247086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960014, 33.755379, 45.755692>,  <35.089024, 34.380234, 46.103226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960014, 33.755379, 45.755692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590157, 33.893982, 45.818886>,  <34.368240, 33.977142, 45.856804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590157, 33.893982, 45.818886>,  <34.960014, 33.755379, 45.755692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590157, 33.893982, 45.818886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177082, -0.023937, -0.983905,
		-0.337147, -0.937742, 0.083493,
		-0.924648, 0.346506, 0.157987,
		34.312763, 33.997932, 45.866283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520031, 33.378479, 45.339661>,  <34.960014, 33.755379, 45.755692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520031, 33.378479, 45.339661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296349, 33.696976, 45.431992>,  <34.162140, 33.888073, 45.487392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296349, 33.696976, 45.431992>,  <34.520031, 33.378479, 45.339661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296349, 33.696976, 45.431992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246539, 0.106117, -0.963306,
		-0.791519, -0.595599, 0.136963,
		-0.559210, 0.796242, 0.230832,
		34.128586, 33.935848, 45.501240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809067, 33.171715, 45.173664>,  <34.520031, 33.378479, 45.339661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809067, 33.171715, 45.173664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.879803, 33.565411, 45.174885>,  <33.922245, 33.801628, 45.175617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.879803, 33.565411, 45.174885>,  <33.809067, 33.171715, 45.173664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879803, 33.565411, 45.174885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116322, 0.023977, -0.992922,
		-0.977342, 0.175232, 0.118728,
		0.176839, 0.984235, 0.003051,
		33.932854, 33.860680, 45.175800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540134, 33.468769, 44.577850>,  <33.809067, 33.171715, 45.173664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540134, 33.468769, 44.577850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684711, 33.833351, 44.656448>,  <33.771458, 34.052101, 44.703606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684711, 33.833351, 44.656448>,  <33.540134, 33.468769, 44.577850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684711, 33.833351, 44.656448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194889, 0.279938, -0.940028,
		-0.911798, 0.301475, 0.278815,
		0.361446, 0.911453, 0.196493,
		33.793144, 34.106789, 44.715397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163605, 33.947678, 44.244579>,  <33.540134, 33.468769, 44.577850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163605, 33.947678, 44.244579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494019, 34.167645, 44.294003>,  <33.692265, 34.299625, 44.323658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494019, 34.167645, 44.294003>,  <33.163605, 33.947678, 44.244579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494019, 34.167645, 44.294003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034170, 0.267676, -0.962903,
		-0.562588, 0.791166, 0.239900,
		0.826031, 0.549915, 0.123557,
		33.741829, 34.332619, 44.331070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092251, 34.590443, 43.710747>,  <33.163605, 33.947678, 44.244579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092251, 34.590443, 43.710747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479595, 34.530590, 43.790630>,  <33.712002, 34.494678, 43.838562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479595, 34.530590, 43.790630>,  <33.092251, 34.590443, 43.710747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479595, 34.530590, 43.790630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229939, 0.224058, -0.947062,
		0.096959, 0.963021, 0.251375,
		0.968363, -0.149627, 0.199711,
		33.770103, 34.485703, 43.850544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555054, 35.321941, 43.606136>,  <33.092251, 34.590443, 43.710747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555054, 35.321941, 43.606136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773903, 34.989666, 43.564945>,  <33.905212, 34.790298, 43.540230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773903, 34.989666, 43.564945>,  <33.555054, 35.321941, 43.606136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773903, 34.989666, 43.564945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360726, 0.345006, -0.866514,
		0.755336, 0.436944, 0.488414,
		0.547124, -0.830693, -0.102978,
		33.938042, 34.740459, 43.534050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182560, 35.574329, 43.203037>,  <33.555054, 35.321941, 43.606136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182560, 35.574329, 43.203037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218952, 35.182735, 43.130024>,  <34.240788, 34.947781, 43.086216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218952, 35.182735, 43.130024>,  <34.182560, 35.574329, 43.203037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218952, 35.182735, 43.130024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257278, 0.200178, -0.945377,
		0.962045, 0.039049, 0.270082,
		0.090980, -0.978981, -0.182533,
		34.246246, 34.889042, 43.075264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753536, 35.493977, 42.755959>,  <34.182560, 35.574329, 43.203037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753536, 35.493977, 42.755959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563545, 35.143990, 42.718365>,  <34.449551, 34.933998, 42.695808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563545, 35.143990, 42.718365>,  <34.753536, 35.493977, 42.755959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563545, 35.143990, 42.718365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216402, -0.012616, -0.976223,
		0.852976, -0.484020, 0.195337,
		-0.474975, -0.874966, -0.093982,
		34.421051, 34.881500, 42.690170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078842, 35.256859, 42.239105>,  <34.753536, 35.493977, 42.755959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078842, 35.256859, 42.239105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773495, 34.998653, 42.248745>,  <34.590286, 34.843731, 42.254528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773495, 34.998653, 42.248745>,  <35.078842, 35.256859, 42.239105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773495, 34.998653, 42.248745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014230, -0.054106, -0.998434,
		0.645806, -0.761830, 0.050489,
		-0.763368, -0.645513, 0.024101,
		34.544483, 34.805000, 42.255974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278034, 34.658699, 41.791195>,  <35.078842, 35.256859, 42.239105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278034, 34.658699, 41.791195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881996, 34.714752, 41.787811>,  <34.644375, 34.748386, 41.785782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881996, 34.714752, 41.787811>,  <35.278034, 34.658699, 41.791195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881996, 34.714752, 41.787811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014716, 0.043703, -0.998936,
		-0.139617, -0.989167, -0.045332,
		-0.990096, 0.140136, -0.008455,
		34.584969, 34.756794, 41.785275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585297, 33.981575, 41.611179>,  <35.278034, 34.658699, 41.791195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585297, 33.981575, 41.611179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864185, 34.260033, 41.542755>,  <36.031517, 34.427109, 41.501701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864185, 34.260033, 41.542755>,  <35.585297, 33.981575, 41.611179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864185, 34.260033, 41.542755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336136, -0.106718, 0.935748,
		0.633162, -0.709924, -0.308406,
		0.697223, 0.696146, -0.171061,
		36.073353, 34.468876, 41.491436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216118, 33.677830, 41.825573>,  <35.585297, 33.981575, 41.611179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216118, 33.677830, 41.825573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268028, 34.073303, 41.855698>,  <36.299175, 34.310585, 41.873772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268028, 34.073303, 41.855698>,  <36.216118, 33.677830, 41.825573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268028, 34.073303, 41.855698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411845, -0.122837, 0.902937,
		0.901966, -0.086162, -0.423124,
		0.129774, 0.988680, 0.075309,
		36.306961, 34.369907, 41.878292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870228, 33.758320, 42.077301>,  <36.216118, 33.677830, 41.825573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870228, 33.758320, 42.077301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656891, 34.081245, 42.178333>,  <36.528889, 34.275002, 42.238953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656891, 34.081245, 42.178333>,  <36.870228, 33.758320, 42.077301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656891, 34.081245, 42.178333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400118, -0.022311, 0.916192,
		0.745287, 0.589705, -0.311120,
		-0.533342, 0.807311, 0.252579,
		36.496887, 34.323437, 42.254108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309959, 34.117081, 42.452408>,  <36.870228, 33.758320, 42.077301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309959, 34.117081, 42.452408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.950314, 34.263069, 42.549065>,  <36.734528, 34.350662, 42.607059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.950314, 34.263069, 42.549065>,  <37.309959, 34.117081, 42.452408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950314, 34.263069, 42.549065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286215, 0.072523, 0.955417,
		0.331174, 0.928190, -0.169666,
		-0.899113, 0.364970, 0.241644,
		36.680580, 34.372559, 42.621559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431931, 34.668617, 42.850277>,  <37.309959, 34.117081, 42.452408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431931, 34.668617, 42.850277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047813, 34.583664, 42.922642>,  <36.817345, 34.532692, 42.966061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047813, 34.583664, 42.922642>,  <37.431931, 34.668617, 42.850277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047813, 34.583664, 42.922642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165353, 0.089005, 0.982210,
		-0.224711, 0.973124, -0.050351,
		-0.960293, -0.212388, 0.180909,
		36.759724, 34.519947, 42.976913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265430, 35.082417, 43.360348>,  <37.431931, 34.668617, 42.850277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265430, 35.082417, 43.360348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981606, 34.801170, 43.378872>,  <36.811310, 34.632423, 43.389988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981606, 34.801170, 43.378872>,  <37.265430, 35.082417, 43.360348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981606, 34.801170, 43.378872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088332, -0.023555, 0.995813,
		-0.699080, 0.710686, 0.078821,
		-0.709567, -0.703115, 0.046310,
		36.768734, 34.590237, 43.392765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806747, 35.259190, 43.861614>,  <37.265430, 35.082417, 43.360348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806747, 35.259190, 43.861614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.737453, 34.866379, 43.831631>,  <36.695877, 34.630692, 43.813641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.737453, 34.866379, 43.831631>,  <36.806747, 35.259190, 43.861614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737453, 34.866379, 43.831631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029688, -0.081278, 0.996249,
		-0.984433, 0.170362, 0.043234,
		-0.173237, -0.982024, -0.074955,
		36.685482, 34.571770, 43.809143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143173, 35.106525, 44.260071>,  <36.806747, 35.259190, 43.861614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143173, 35.106525, 44.260071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386383, 34.790413, 44.229702>,  <36.532310, 34.600746, 44.211479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386383, 34.790413, 44.229702>,  <36.143173, 35.106525, 44.260071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386383, 34.790413, 44.229702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038502, -0.066171, 0.997065,
		-0.792984, -0.609164, -0.009806,
		0.608025, -0.790279, -0.075927,
		36.568790, 34.553329, 44.206924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973820, 34.815727, 44.809776>,  <36.143173, 35.106525, 44.260071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973820, 34.815727, 44.809776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.305023, 34.621288, 44.697983>,  <36.503746, 34.504627, 44.630905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.305023, 34.621288, 44.697983>,  <35.973820, 34.815727, 44.809776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305023, 34.621288, 44.697983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190734, -0.224542, 0.955616,
		-0.527275, -0.844567, -0.093209,
		0.828011, -0.486094, -0.279483,
		36.553425, 34.475460, 44.614140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963860, 34.282928, 45.231598>,  <35.973820, 34.815727, 44.809776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963860, 34.282928, 45.231598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340298, 34.262390, 45.097912>,  <36.566162, 34.250069, 45.017700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340298, 34.262390, 45.097912>,  <35.963860, 34.282928, 45.231598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340298, 34.262390, 45.097912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310404, -0.260844, 0.914117,
		-0.134112, -0.964015, -0.229542,
		0.941097, -0.051343, -0.334217,
		36.622627, 34.246986, 44.997646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121937, 33.568035, 45.226650>,  <35.963860, 34.282928, 45.231598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121937, 33.568035, 45.226650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.427380, 33.819630, 45.285000>,  <36.610645, 33.970585, 45.320011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.427380, 33.819630, 45.285000>,  <36.121937, 33.568035, 45.226650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427380, 33.819630, 45.285000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160175, -0.403397, 0.900897,
		0.625493, -0.664569, -0.408786,
		0.763611, 0.628982, 0.145875,
		36.656464, 34.008324, 45.328762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570499, 33.276707, 45.703804>,  <36.121937, 33.568035, 45.226650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570499, 33.276707, 45.703804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768158, 33.622765, 45.738083>,  <36.886753, 33.830399, 45.758652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768158, 33.622765, 45.738083>,  <36.570499, 33.276707, 45.703804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768158, 33.622765, 45.738083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226986, -0.223543, 0.947895,
		0.839222, -0.448949, -0.306839,
		0.494149, 0.865143, 0.085697,
		36.916401, 33.882309, 45.763790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187275, 33.134186, 46.140671>,  <36.570499, 33.276707, 45.703804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187275, 33.134186, 46.140671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.127762, 33.529732, 46.141926>,  <37.092052, 33.767059, 46.142677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.127762, 33.529732, 46.141926>,  <37.187275, 33.134186, 46.140671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127762, 33.529732, 46.141926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035779, 0.002213, 0.999358,
		0.988222, 0.148802, -0.035710,
		-0.148785, 0.988865, 0.003137,
		37.083126, 33.826389, 46.142868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753567, 33.447784, 46.435612>,  <37.187275, 33.134186, 46.140671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753567, 33.447784, 46.435612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426098, 33.666054, 46.507172>,  <37.229614, 33.797016, 46.550110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426098, 33.666054, 46.507172>,  <37.753567, 33.447784, 46.435612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426098, 33.666054, 46.507172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104400, -0.164921, 0.980766,
		0.564685, 0.821607, 0.078048,
		-0.818676, 0.545676, 0.178904,
		37.180496, 33.829758, 46.560844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342503, 34.146500, 46.437279>,  <37.753567, 33.447784, 46.435612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342503, 34.146500, 46.437279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729984, 34.047215, 46.437042>,  <38.962475, 33.987644, 46.436901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729984, 34.047215, 46.437042>,  <38.342503, 34.146500, 46.437279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729984, 34.047215, 46.437042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099181, 0.389274, -0.915767,
		0.227533, 0.887050, 0.401709,
		0.968706, -0.248209, -0.000594,
		39.020596, 33.972752, 46.436863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732555, 34.766289, 46.045349>,  <38.342503, 34.146500, 46.437279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732555, 34.766289, 46.045349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979691, 34.451885, 46.036774>,  <39.127972, 34.263241, 46.031628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979691, 34.451885, 46.036774>,  <38.732555, 34.766289, 46.045349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979691, 34.451885, 46.036774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237317, 0.212401, -0.947927,
		0.749635, 0.580580, 0.317764,
		0.617841, -0.786010, -0.021442,
		39.165043, 34.216084, 46.030342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310856, 35.014263, 45.779453>,  <38.732555, 34.766289, 46.045349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310856, 35.014263, 45.779453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.345806, 34.624168, 45.698189>,  <39.366776, 34.390110, 45.649429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.345806, 34.624168, 45.698189>,  <39.310856, 35.014263, 45.779453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345806, 34.624168, 45.698189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463705, 0.220313, -0.858160,
		0.881671, -0.019227, 0.471473,
		0.087372, -0.975240, -0.203159,
		39.372017, 34.331596, 45.637241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997471, 34.942455, 45.664539>,  <39.310856, 35.014263, 45.779453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997471, 34.942455, 45.664539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814110, 34.638103, 45.480831>,  <39.704094, 34.455490, 45.370605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814110, 34.638103, 45.480831>,  <39.997471, 34.942455, 45.664539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814110, 34.638103, 45.480831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239560, 0.391847, -0.888295,
		0.855850, -0.517216, 0.002655,
		-0.458400, -0.760883, -0.459266,
		39.676590, 34.409840, 45.343052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351768, 34.778118, 45.105190>,  <39.997471, 34.942455, 45.664539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351768, 34.778118, 45.105190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024948, 34.581642, 44.984421>,  <39.828854, 34.463757, 44.911961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024948, 34.581642, 44.984421>,  <40.351768, 34.778118, 45.105190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024948, 34.581642, 44.984421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238843, 0.188262, -0.952634,
		0.524764, -0.850465, -0.036503,
		-0.817054, -0.491189, -0.301921,
		39.779831, 34.434284, 44.893845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596684, 34.483505, 44.571899>,  <40.351768, 34.778118, 45.105190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596684, 34.483505, 44.571899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.201912, 34.483028, 44.507446>,  <39.965050, 34.482742, 44.468773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.201912, 34.483028, 44.507446>,  <40.596684, 34.483505, 44.571899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201912, 34.483028, 44.507446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160651, 0.070575, -0.984485,
		0.012545, -0.997506, -0.069462,
		-0.986931, -0.001191, -0.161135,
		39.905834, 34.482670, 44.459106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579731, 34.230389, 43.898529>,  <40.596684, 34.483505, 44.571899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579731, 34.230389, 43.898529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.204239, 34.355206, 43.957066>,  <39.978943, 34.430096, 43.992188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.204239, 34.355206, 43.957066>,  <40.579731, 34.230389, 43.898529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204239, 34.355206, 43.957066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154085, -0.000152, -0.988058,
		-0.308299, -0.950066, 0.048224,
		-0.938727, 0.312048, 0.146344,
		39.922619, 34.448818, 44.000969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115807, 33.773373, 43.504456>,  <40.579731, 34.230389, 43.898529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115807, 33.773373, 43.504456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.937229, 34.127644, 43.555454>,  <39.830082, 34.340206, 43.586056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.937229, 34.127644, 43.555454>,  <40.115807, 33.773373, 43.504456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937229, 34.127644, 43.555454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133393, 0.075022, -0.988220,
		-0.884811, -0.458196, 0.084650,
		-0.446448, 0.885679, 0.127500,
		39.803295, 34.393349, 43.593704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626099, 33.810238, 42.926941>,  <40.115807, 33.773373, 43.504456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626099, 33.810238, 42.926941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.631245, 34.186981, 43.061249>,  <39.634335, 34.413029, 43.141834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.631245, 34.186981, 43.061249>,  <39.626099, 33.810238, 42.926941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631245, 34.186981, 43.061249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197264, 0.331587, -0.922571,
		-0.980266, -0.054363, 0.190062,
		0.012868, 0.941857, 0.335768,
		39.635105, 34.469540, 43.161980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141556, 34.154625, 42.440338>,  <39.626099, 33.810238, 42.926941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141556, 34.154625, 42.440338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.334415, 34.453976, 42.622532>,  <39.450130, 34.633587, 42.731850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.334415, 34.453976, 42.622532>,  <39.141556, 34.154625, 42.440338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334415, 34.453976, 42.622532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028250, 0.532920, -0.845694,
		-0.875633, 0.394884, 0.278089,
		0.482150, 0.748374, 0.455487,
		39.479061, 34.678486, 42.759178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735527, 34.788425, 42.307842>,  <39.141556, 34.154625, 42.440338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735527, 34.788425, 42.307842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115891, 34.875050, 42.396263>,  <39.344109, 34.927025, 42.449314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115891, 34.875050, 42.396263>,  <38.735527, 34.788425, 42.307842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115891, 34.875050, 42.396263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093496, 0.479883, -0.872337,
		-0.294995, 0.850184, 0.436079,
		0.950913, 0.216563, 0.221052,
		39.401165, 34.940018, 42.462578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809280, 35.526806, 42.105495>,  <38.735527, 34.788425, 42.307842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809280, 35.526806, 42.105495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.173294, 35.362637, 42.128761>,  <39.391705, 35.264133, 42.142723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.173294, 35.362637, 42.128761>,  <38.809280, 35.526806, 42.105495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173294, 35.362637, 42.128761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179105, 0.262758, -0.948093,
		0.373837, 0.873218, 0.312628,
		0.910037, -0.410426, 0.058169,
		39.446304, 35.239510, 42.146214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234398, 36.020443, 41.889027>,  <38.809280, 35.526806, 42.105495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234398, 36.020443, 41.889027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428982, 35.673981, 41.843185>,  <39.545731, 35.466103, 41.815681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428982, 35.673981, 41.843185>,  <39.234398, 36.020443, 41.889027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428982, 35.673981, 41.843185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222382, 0.249601, -0.942468,
		0.844927, 0.432987, 0.314038,
		0.486460, -0.866153, -0.114606,
		39.574921, 35.414135, 41.808804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616749, 36.275993, 41.400410>,  <39.234398, 36.020443, 41.889027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616749, 36.275993, 41.400410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653980, 35.877731, 41.400795>,  <39.676319, 35.638775, 41.401028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653980, 35.877731, 41.400795>,  <39.616749, 36.275993, 41.400410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653980, 35.877731, 41.400795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151923, 0.013246, -0.988304,
		0.984000, 0.092140, 0.152497,
		0.093083, -0.995658, 0.000964,
		39.681904, 35.579033, 41.401085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.371952, 40.649830, 29.350758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041950, 40.452682, 29.240162>,  <26.843948, 40.334393, 29.173805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041950, 40.452682, 29.240162>,  <27.371952, 40.649830, 29.350758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041950, 40.452682, 29.240162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313400, -0.008098, 0.949587,
		-0.470262, 0.870065, -0.147785,
		-0.825006, -0.492870, -0.276487,
		26.794449, 40.304821, 29.157215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797508, 40.958305, 29.725794>,  <27.371952, 40.649830, 29.350758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797508, 40.958305, 29.725794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673155, 40.593529, 29.618681>,  <26.598543, 40.374660, 29.554413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673155, 40.593529, 29.618681>,  <26.797508, 40.958305, 29.725794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673155, 40.593529, 29.618681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119561, -0.241982, 0.962886,
		-0.942898, 0.331362, -0.033805,
		-0.310883, -0.911945, -0.267782,
		26.579889, 40.319946, 29.538345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410278, 40.830509, 30.254768>,  <26.797508, 40.958305, 29.725794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410278, 40.830509, 30.254768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427692, 40.471008, 30.080250>,  <26.438141, 40.255310, 29.975538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427692, 40.471008, 30.080250>,  <26.410278, 40.830509, 30.254768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427692, 40.471008, 30.080250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105302, -0.438406, 0.892588,
		-0.993487, 0.007082, -0.113727,
		0.043537, -0.898750, -0.436296,
		26.440754, 40.201382, 29.949362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873056, 40.432690, 30.591251>,  <26.410278, 40.830509, 30.254768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873056, 40.432690, 30.591251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113367, 40.167915, 30.411963>,  <26.257553, 40.009048, 30.304390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113367, 40.167915, 30.411963>,  <25.873056, 40.432690, 30.591251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113367, 40.167915, 30.411963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130413, -0.634331, 0.761982,
		-0.788706, -0.399328, -0.467417,
		0.600778, -0.661938, -0.448223,
		26.293600, 39.969334, 30.277496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499308, 39.800278, 30.443558>,  <25.873056, 40.432690, 30.591251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499308, 39.800278, 30.443558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879482, 39.687393, 30.495754>,  <26.107588, 39.619663, 30.527073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879482, 39.687393, 30.495754>,  <25.499308, 39.800278, 30.443558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879482, 39.687393, 30.495754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277747, -0.582012, 0.764277,
		-0.139735, -0.762641, -0.631548,
		0.950437, -0.282207, 0.130494,
		26.164614, 39.602730, 30.534903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444042, 39.222198, 30.501570>,  <25.499308, 39.800278, 30.443558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444042, 39.222198, 30.501570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.804827, 39.290554, 30.660196>,  <26.021297, 39.331566, 30.755373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.804827, 39.290554, 30.660196>,  <25.444042, 39.222198, 30.501570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804827, 39.290554, 30.660196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190320, -0.667038, 0.720304,
		0.387614, -0.725161, -0.569120,
		0.901961, 0.170885, 0.396566,
		26.075415, 39.341820, 30.779165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632530, 38.638008, 30.828381>,  <25.444042, 39.222198, 30.501570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632530, 38.638008, 30.828381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919489, 38.863331, 30.992342>,  <26.091665, 38.998524, 31.090719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919489, 38.863331, 30.992342>,  <25.632530, 38.638008, 30.828381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919489, 38.863331, 30.992342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011109, -0.597557, 0.801750,
		0.696575, -0.570620, -0.434944,
		0.717398, 0.563311, 0.409904,
		26.134708, 39.032326, 31.115313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076437, 38.212009, 31.067348>,  <25.632530, 38.638008, 30.828381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076437, 38.212009, 31.067348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138681, 38.536018, 31.293497>,  <26.176027, 38.730423, 31.429186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138681, 38.536018, 31.293497>,  <26.076437, 38.212009, 31.067348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138681, 38.536018, 31.293497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088440, -0.581470, 0.808746,
		0.983851, -0.075849, -0.162122,
		0.155611, 0.810024, 0.565372,
		26.185366, 38.779026, 31.463108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716295, 38.090336, 31.324915>,  <26.076437, 38.212009, 31.067348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716295, 38.090336, 31.324915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537161, 38.375561, 31.540689>,  <26.429680, 38.546696, 31.670155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537161, 38.375561, 31.540689>,  <26.716295, 38.090336, 31.324915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537161, 38.375561, 31.540689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077586, -0.570052, 0.817937,
		0.890744, 0.408153, 0.199965,
		-0.447834, 0.713058, 0.539437,
		26.402811, 38.589478, 31.702520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111017, 38.148064, 32.018833>,  <26.716295, 38.090336, 31.324915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111017, 38.148064, 32.018833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755875, 38.327339, 32.060471>,  <26.542789, 38.434902, 32.085453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755875, 38.327339, 32.060471>,  <27.111017, 38.148064, 32.018833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755875, 38.327339, 32.060471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111482, -0.429038, 0.896380,
		0.446406, 0.784255, 0.430890,
		-0.887859, 0.448186, 0.104095,
		26.489517, 38.461796, 32.091698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099127, 38.479267, 32.688148>,  <27.111017, 38.148064, 32.018833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099127, 38.479267, 32.688148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714714, 38.416557, 32.597076>,  <26.484066, 38.378933, 32.542431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714714, 38.416557, 32.597076>,  <27.099127, 38.479267, 32.688148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714714, 38.416557, 32.597076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188956, -0.228643, 0.954996,
		-0.201777, 0.960804, 0.190110,
		-0.961032, -0.156774, -0.227684,
		26.426405, 38.369526, 32.528770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745274, 38.832733, 33.231495>,  <27.099127, 38.479267, 32.688148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745274, 38.832733, 33.231495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491985, 38.570202, 33.067413>,  <26.340014, 38.412685, 32.968964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491985, 38.570202, 33.067413>,  <26.745274, 38.832733, 33.231495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491985, 38.570202, 33.067413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182962, -0.388045, 0.903297,
		-0.752036, 0.647037, 0.125635,
		-0.633219, -0.656326, -0.410208,
		26.302019, 38.373302, 32.944351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111948, 38.822468, 33.603924>,  <26.745274, 38.832733, 33.231495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111948, 38.822468, 33.603924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.100899, 38.465893, 33.423004>,  <26.094269, 38.251949, 33.314453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.100899, 38.465893, 33.423004>,  <26.111948, 38.822468, 33.603924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100899, 38.465893, 33.423004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198978, -0.438517, 0.876419,
		-0.979615, 0.114208, -0.165263,
		-0.027623, -0.891437, -0.452302,
		26.092611, 38.198463, 33.287315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681000, 38.532162, 34.028160>,  <26.111948, 38.822468, 33.603924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681000, 38.532162, 34.028160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.849953, 38.227634, 33.831390>,  <25.951324, 38.044918, 33.713329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.849953, 38.227634, 33.831390>,  <25.681000, 38.532162, 34.028160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849953, 38.227634, 33.831390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018061, -0.549669, 0.835187,
		-0.906239, -0.343882, -0.245920,
		0.422381, -0.761320, -0.491920,
		25.976667, 37.999237, 33.683815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119284, 37.877224, 34.078075>,  <25.681000, 38.532162, 34.028160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119284, 37.877224, 34.078075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.490963, 37.745880, 34.010227>,  <25.713970, 37.667076, 33.969521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.490963, 37.745880, 34.010227>,  <25.119284, 37.877224, 34.078075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490963, 37.745880, 34.010227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076509, -0.619914, 0.780931,
		-0.361573, -0.712663, -0.601146,
		0.929199, -0.328356, -0.169619,
		25.769722, 37.647373, 33.959343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037554, 37.189480, 34.266251>,  <25.119284, 37.877224, 34.078075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037554, 37.189480, 34.266251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432493, 37.249413, 34.245495>,  <25.669456, 37.285370, 34.233044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432493, 37.249413, 34.245495>,  <25.037554, 37.189480, 34.266251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432493, 37.249413, 34.245495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136920, -0.640629, 0.755545,
		0.079962, -0.753091, -0.653039,
		0.987349, 0.149829, -0.051887,
		25.728699, 37.294361, 34.229927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152584, 36.496552, 34.411625>,  <25.037554, 37.189480, 34.266251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152584, 36.496552, 34.411625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.485037, 36.714420, 34.456436>,  <25.684509, 36.845142, 34.483322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.485037, 36.714420, 34.456436>,  <25.152584, 36.496552, 34.411625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485037, 36.714420, 34.456436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259738, -0.558396, 0.787864,
		0.491685, -0.625721, -0.605574,
		0.831133, 0.544671, 0.112032,
		25.734377, 36.877823, 34.490047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660294, 36.069103, 34.457268>,  <25.152584, 36.496552, 34.411625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660294, 36.069103, 34.457268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769760, 36.407112, 34.641026>,  <25.835440, 36.609917, 34.751282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769760, 36.407112, 34.641026>,  <25.660294, 36.069103, 34.457268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769760, 36.407112, 34.641026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125997, -0.505009, 0.853868,
		0.953536, -0.175792, -0.244674,
		0.273666, 0.845023, 0.459395,
		25.851860, 36.660618, 34.778843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186705, 35.803131, 34.928265>,  <25.660294, 36.069103, 34.457268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186705, 35.803131, 34.928265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.060024, 36.152500, 35.076229>,  <25.984016, 36.362122, 35.165009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.060024, 36.152500, 35.076229>,  <26.186705, 35.803131, 34.928265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060024, 36.152500, 35.076229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042951, -0.402787, 0.914286,
		0.947552, 0.273668, 0.165078,
		-0.316701, 0.873424, 0.369907,
		25.965014, 36.414528, 35.187202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628845, 35.989227, 35.444099>,  <26.186705, 35.803131, 34.928265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628845, 35.989227, 35.444099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.284010, 36.179810, 35.513142>,  <26.077108, 36.294159, 35.554565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.284010, 36.179810, 35.513142>,  <26.628845, 35.989227, 35.444099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284010, 36.179810, 35.513142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023844, -0.378372, 0.925346,
		0.506195, 0.793616, 0.337551,
		-0.862089, 0.476454, 0.172607,
		26.025383, 36.322746, 35.564922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184420, 35.639645, 35.813156>,  <26.628845, 35.989227, 35.444099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184420, 35.639645, 35.813156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449278, 35.347458, 35.880070>,  <27.608192, 35.172146, 35.920216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449278, 35.347458, 35.880070>,  <27.184420, 35.639645, 35.813156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449278, 35.347458, 35.880070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624394, 0.414361, -0.662146,
		0.414361, 0.542885, 0.730466,
		0.662146, -0.730466, 0.167280,
		27.647921, 35.128319, 35.930252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859301, 35.935017, 35.939816>,  <27.184420, 35.639645, 35.813156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859301, 35.935017, 35.939816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934731, 35.564892, 35.808216>,  <27.979988, 35.342819, 35.729256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934731, 35.564892, 35.808216>,  <27.859301, 35.935017, 35.939816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934731, 35.564892, 35.808216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690748, 0.363109, -0.625315,
		0.698073, -0.109339, 0.707629,
		0.188575, -0.925309, -0.329002,
		27.991302, 35.287300, 35.709515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536694, 35.856838, 35.745575>,  <27.859301, 35.935017, 35.939816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536694, 35.856838, 35.745575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399107, 35.559700, 35.515839>,  <28.316555, 35.381416, 35.377998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399107, 35.559700, 35.515839>,  <28.536694, 35.856838, 35.745575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399107, 35.559700, 35.515839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528194, 0.352643, -0.772433,
		0.776335, -0.569057, 0.271067,
		-0.343969, -0.742843, -0.574342,
		28.295916, 35.336845, 35.343536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082680, 35.817448, 35.315701>,  <28.536694, 35.856838, 35.745575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082680, 35.817448, 35.315701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783072, 35.624031, 35.134525>,  <28.603308, 35.507980, 35.025818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783072, 35.624031, 35.134525>,  <29.082680, 35.817448, 35.315701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783072, 35.624031, 35.134525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208698, 0.476645, -0.853964,
		0.628822, -0.734163, -0.256101,
		-0.749018, -0.483544, -0.452943,
		28.558367, 35.478970, 34.998642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341232, 35.438896, 34.749935>,  <29.082680, 35.817448, 35.315701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341232, 35.438896, 34.749935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951696, 35.478779, 34.668262>,  <28.717974, 35.502708, 34.619259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951696, 35.478779, 34.668262>,  <29.341232, 35.438896, 34.749935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951696, 35.478779, 34.668262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226881, 0.376930, -0.898025,
		-0.012578, -0.920860, -0.389692,
		-0.973842, 0.099709, -0.204184,
		28.659544, 35.508690, 34.607006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173176, 35.128948, 34.190002>,  <29.341232, 35.438896, 34.749935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173176, 35.128948, 34.190002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874132, 35.393642, 34.212578>,  <28.694706, 35.552460, 34.226124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874132, 35.393642, 34.212578>,  <29.173176, 35.128948, 34.190002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874132, 35.393642, 34.212578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319292, 0.432638, -0.843135,
		-0.582352, -0.612314, -0.534731,
		-0.747608, 0.661737, 0.056441,
		28.649849, 35.592163, 34.229511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941460, 35.184418, 33.544178>,  <29.173176, 35.128948, 34.190002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941460, 35.184418, 33.544178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803665, 35.525177, 33.701965>,  <28.720989, 35.729633, 33.796638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803665, 35.525177, 33.701965>,  <28.941460, 35.184418, 33.544178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803665, 35.525177, 33.701965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269733, 0.492286, -0.827586,
		-0.899207, -0.178691, -0.399370,
		-0.344487, 0.851894, 0.394469,
		28.700319, 35.780746, 33.820305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601082, 35.468109, 32.939770>,  <28.941460, 35.184418, 33.544178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601082, 35.468109, 32.939770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638708, 35.770332, 33.199089>,  <28.661283, 35.951664, 33.354679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638708, 35.770332, 33.199089>,  <28.601082, 35.468109, 32.939770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638708, 35.770332, 33.199089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250128, 0.612363, -0.749965,
		-0.963633, 0.232703, -0.131383,
		0.094065, 0.755553, 0.648298,
		28.666927, 35.996998, 33.393578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261850, 36.041237, 32.722736>,  <28.601082, 35.468109, 32.939770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261850, 36.041237, 32.722736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498117, 36.224930, 32.988132>,  <28.639877, 36.335144, 33.147369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498117, 36.224930, 32.988132>,  <28.261850, 36.041237, 32.722736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498117, 36.224930, 32.988132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084479, 0.782543, -0.616838,
		-0.802482, 0.420396, 0.423426,
		0.590666, 0.459231, 0.663491,
		28.675318, 36.362698, 33.187180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987961, 36.763893, 32.864674>,  <28.261850, 36.041237, 32.722736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987961, 36.763893, 32.864674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.382986, 36.766926, 32.927486>,  <28.620001, 36.768745, 32.965176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.382986, 36.766926, 32.927486>,  <27.987961, 36.763893, 32.864674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382986, 36.766926, 32.927486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077795, 0.844429, -0.529988,
		-0.136619, 0.535613, 0.833339,
		0.987564, 0.007577, 0.157033,
		28.679255, 36.769199, 32.974598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167747, 37.443413, 32.919121>,  <27.987961, 36.763893, 32.864674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167747, 37.443413, 32.919121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526136, 37.287479, 32.834026>,  <28.741171, 37.193920, 32.782970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526136, 37.287479, 32.834026>,  <28.167747, 37.443413, 32.919121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526136, 37.287479, 32.834026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237948, 0.825858, -0.511214,
		0.374983, 0.407414, 0.832708,
		0.895974, -0.389838, -0.212739,
		28.794928, 37.170528, 32.770206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595514, 38.048615, 32.753574>,  <28.167747, 37.443413, 32.919121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595514, 38.048615, 32.753574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790928, 37.739799, 32.590950>,  <28.908176, 37.554508, 32.493378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790928, 37.739799, 32.590950>,  <28.595514, 38.048615, 32.753574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790928, 37.739799, 32.590950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227476, 0.562525, -0.794872,
		0.842372, 0.295839, 0.450432,
		0.488533, -0.772040, -0.406559,
		28.937489, 37.508186, 32.468983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183294, 38.357727, 32.400276>,  <28.595514, 38.048615, 32.753574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183294, 38.357727, 32.400276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186195, 37.989670, 32.243675>,  <29.187937, 37.768833, 32.149715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186195, 37.989670, 32.243675>,  <29.183294, 38.357727, 32.400276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186195, 37.989670, 32.243675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351555, 0.368870, -0.860432,
		0.936139, -0.131395, 0.326158,
		0.007253, -0.920147, -0.391506,
		29.188372, 37.713627, 32.126225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885080, 38.219654, 32.152493>,  <29.183294, 38.357727, 32.400276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885080, 38.219654, 32.152493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631123, 37.981647, 31.955368>,  <29.478748, 37.838844, 31.837093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631123, 37.981647, 31.955368>,  <29.885080, 38.219654, 32.152493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631123, 37.981647, 31.955368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272252, 0.424647, -0.863455,
		0.723040, -0.682373, -0.107612,
		-0.634895, -0.595015, -0.492814,
		29.440655, 37.803143, 31.807524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203571, 37.779652, 31.575687>,  <29.885080, 38.219654, 32.152493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203571, 37.779652, 31.575687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819424, 37.834335, 31.478525>,  <29.588936, 37.867146, 31.420227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819424, 37.834335, 31.478525>,  <30.203571, 37.779652, 31.575687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819424, 37.834335, 31.478525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272553, 0.278071, -0.921082,
		-0.058375, -0.950782, -0.304311,
		-0.960369, 0.136709, -0.242906,
		29.531313, 37.875347, 31.405653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140917, 37.591042, 30.854563>,  <30.203571, 37.779652, 31.575687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140917, 37.591042, 30.854563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816637, 37.819210, 30.907305>,  <29.622070, 37.956112, 30.938950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816637, 37.819210, 30.907305>,  <30.140917, 37.591042, 30.854563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816637, 37.819210, 30.907305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192066, 0.471872, -0.860493,
		-0.553063, -0.672275, -0.492105,
		-0.810699, 0.570424, 0.131854,
		29.573427, 37.990337, 30.946861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151953, 37.720528, 30.207329>,  <30.140917, 37.591042, 30.854563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151953, 37.720528, 30.207329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855484, 37.949116, 30.348232>,  <29.677603, 38.086269, 30.432774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855484, 37.949116, 30.348232>,  <30.151953, 37.720528, 30.207329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855484, 37.949116, 30.348232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138330, 0.383456, -0.913141,
		-0.656909, -0.725522, -0.205155,
		-0.741171, 0.571472, 0.352257,
		29.633133, 38.120556, 30.453909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572147, 37.675694, 29.776430>,  <30.151953, 37.720528, 30.207329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572147, 37.675694, 29.776430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486641, 38.028152, 29.945139>,  <29.435337, 38.239628, 30.046364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486641, 38.028152, 29.945139>,  <29.572147, 37.675694, 29.776430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486641, 38.028152, 29.945139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177069, 0.389652, -0.903780,
		-0.960704, -0.267878, 0.072729,
		-0.213764, 0.881143, 0.421773,
		29.422512, 38.292496, 30.071671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956892, 37.905998, 29.420910>,  <29.572147, 37.675694, 29.776430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956892, 37.905998, 29.420910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139263, 38.220711, 29.587334>,  <29.248686, 38.409538, 29.687187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139263, 38.220711, 29.587334>,  <28.956892, 37.905998, 29.420910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139263, 38.220711, 29.587334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068305, 0.497025, -0.865044,
		-0.887392, 0.365979, 0.280348,
		0.455928, 0.786782, 0.416058,
		29.276041, 38.456745, 29.712151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564646, 38.474960, 29.117903>,  <28.956892, 37.905998, 29.420910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564646, 38.474960, 29.117903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893793, 38.656326, 29.254900>,  <29.091282, 38.765148, 29.337099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893793, 38.656326, 29.254900>,  <28.564646, 38.474960, 29.117903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893793, 38.656326, 29.254900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053752, 0.662142, -0.747449,
		-0.565685, 0.596642, 0.569227,
		0.822868, 0.453417, 0.342493,
		29.140654, 38.792351, 29.357647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530249, 39.226685, 29.107897>,  <28.564646, 38.474960, 29.117903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530249, 39.226685, 29.107897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923285, 39.154205, 29.091484>,  <29.159105, 39.110718, 29.081636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923285, 39.154205, 29.091484>,  <28.530249, 39.226685, 29.107897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923285, 39.154205, 29.091484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075716, 0.592242, -0.802195,
		0.169658, 0.785122, 0.595650,
		0.982590, -0.181199, -0.041032,
		29.218061, 39.099846, 29.079174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863178, 39.929066, 29.049417>,  <28.530249, 39.226685, 29.107897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863178, 39.929066, 29.049417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107008, 39.638233, 28.923067>,  <29.253305, 39.463734, 28.847256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107008, 39.638233, 28.923067>,  <28.863178, 39.929066, 29.049417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107008, 39.638233, 28.923067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092174, 0.460772, -0.882719,
		0.787353, 0.508966, 0.347892,
		0.609573, -0.727078, -0.315877,
		29.289881, 39.420109, 28.828304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.694836, 31.387196, 46.576500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.321415, 31.395599, 46.719631>,  <40.097363, 31.400642, 46.805508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.321415, 31.395599, 46.719631>,  <40.694836, 31.387196, 46.576500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321415, 31.395599, 46.719631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355206, 0.188065, 0.915675,
		-0.048057, 0.981932, -0.183031,
		-0.933552, 0.021009, 0.357826,
		40.041348, 31.401901, 46.826981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627010, 31.917019, 47.191078>,  <40.694836, 31.387196, 46.576500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627010, 31.917019, 47.191078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286449, 31.718884, 47.260082>,  <40.082115, 31.600002, 47.301487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286449, 31.718884, 47.260082>,  <40.627010, 31.917019, 47.191078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286449, 31.718884, 47.260082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119003, 0.137905, 0.983270,
		-0.510842, 0.857685, -0.058466,
		-0.851398, -0.495338, 0.172514,
		40.031029, 31.570282, 47.311836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415340, 32.256592, 47.650795>,  <40.627010, 31.917019, 47.191078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415340, 32.256592, 47.650795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.202129, 31.920622, 47.691605>,  <40.074203, 31.719040, 47.716091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.202129, 31.920622, 47.691605>,  <40.415340, 32.256592, 47.650795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202129, 31.920622, 47.691605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144702, 0.028306, 0.989070,
		-0.833632, 0.541965, 0.106451,
		-0.533028, -0.839925, 0.102021,
		40.042221, 31.668644, 47.722210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159462, 32.329552, 48.269539>,  <40.415340, 32.256592, 47.650795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159462, 32.329552, 48.269539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.091415, 31.938084, 48.223488>,  <40.050587, 31.703201, 48.195858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.091415, 31.938084, 48.223488>,  <40.159462, 32.329552, 48.269539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091415, 31.938084, 48.223488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031041, -0.122096, 0.992033,
		-0.984934, 0.165192, 0.051151,
		-0.170121, -0.978675, -0.115129,
		40.040379, 31.644482, 48.188950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473408, 32.169552, 48.639400>,  <40.159462, 32.329552, 48.269539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473408, 32.169552, 48.639400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.700348, 31.842554, 48.599773>,  <39.836514, 31.646355, 48.575996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.700348, 31.842554, 48.599773>,  <39.473408, 32.169552, 48.639400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700348, 31.842554, 48.599773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119970, -0.201074, 0.972202,
		-0.814689, -0.539697, -0.212154,
		0.567353, -0.817494, -0.099065,
		39.870552, 31.597305, 48.570053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163574, 31.677420, 49.085617>,  <39.473408, 32.169552, 48.639400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163574, 31.677420, 49.085617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.529217, 31.522036, 49.039143>,  <39.748604, 31.428804, 49.011257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.529217, 31.522036, 49.039143>,  <39.163574, 31.677420, 49.085617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529217, 31.522036, 49.039143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037531, -0.204264, 0.978196,
		-0.403724, -0.898540, -0.172141,
		0.914111, -0.388460, -0.116189,
		39.803452, 31.405499, 49.004288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164227, 30.951286, 49.343464>,  <39.163574, 31.677420, 49.085617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164227, 30.951286, 49.343464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539387, 31.089924, 49.349358>,  <39.764484, 31.173107, 49.352894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539387, 31.089924, 49.349358>,  <39.164227, 30.951286, 49.343464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539387, 31.089924, 49.349358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087888, -0.278497, 0.956407,
		0.335590, -0.895719, -0.291664,
		0.937899, 0.346594, 0.014738,
		39.820755, 31.193901, 49.353779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491932, 30.504475, 49.739780>,  <39.164227, 30.951286, 49.343464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491932, 30.504475, 49.739780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.758335, 30.802280, 49.721302>,  <39.918175, 30.980965, 49.710213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.758335, 30.802280, 49.721302>,  <39.491932, 30.504475, 49.739780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758335, 30.802280, 49.721302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213793, -0.131180, 0.968031,
		0.714655, -0.654589, -0.246539,
		0.666003, 0.744517, -0.046198,
		39.958138, 31.025635, 49.707443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090244, 30.239155, 49.890617>,  <39.491932, 30.504475, 49.739780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090244, 30.239155, 49.890617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150097, 30.626209, 49.971901>,  <40.186008, 30.858442, 50.020672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150097, 30.626209, 49.971901>,  <40.090244, 30.239155, 49.890617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150097, 30.626209, 49.971901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196513, -0.230530, 0.953016,
		0.969017, -0.102665, -0.224646,
		0.149629, 0.967634, 0.203213,
		40.194984, 30.916500, 50.032864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709972, 30.274046, 50.402885>,  <40.090244, 30.239155, 49.890617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709972, 30.274046, 50.402885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506905, 30.614649, 50.455360>,  <40.385063, 30.819010, 50.486847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506905, 30.614649, 50.455360>,  <40.709972, 30.274046, 50.402885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506905, 30.614649, 50.455360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279037, 0.018442, 0.960103,
		0.815116, 0.524019, -0.246964,
		-0.507666, 0.851507, 0.131188,
		40.354603, 30.870102, 50.494717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037560, 30.539124, 50.989380>,  <40.709972, 30.274046, 50.402885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037560, 30.539124, 50.989380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.713936, 30.769222, 50.941181>,  <40.519764, 30.907280, 50.912262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.713936, 30.769222, 50.941181>,  <41.037560, 30.539124, 50.989380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713936, 30.769222, 50.941181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059177, 0.283716, 0.957081,
		0.584743, 0.767202, -0.263583,
		-0.809057, 0.575244, -0.120500,
		40.471218, 30.941795, 50.905029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157276, 31.235065, 51.115067>,  <41.037560, 30.539124, 50.989380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157276, 31.235065, 51.115067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.769032, 31.176929, 51.191788>,  <40.536083, 31.142048, 51.237820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.769032, 31.176929, 51.191788>,  <41.157276, 31.235065, 51.115067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769032, 31.176929, 51.191788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151507, 0.250196, 0.956268,
		-0.186974, 0.957224, -0.220823,
		-0.970611, -0.145341, 0.191806,
		40.477848, 31.133327, 51.249329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045280, 31.734247, 51.761860>,  <41.157276, 31.235065, 51.115067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045280, 31.734247, 51.761860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.779057, 31.440664, 51.707691>,  <40.619324, 31.264515, 51.675190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.779057, 31.440664, 51.707691>,  <41.045280, 31.734247, 51.761860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779057, 31.440664, 51.707691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052156, -0.135270, 0.989435,
		-0.744521, 0.665591, 0.051749,
		-0.665559, -0.733956, -0.135426,
		40.579388, 31.220478, 51.667065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435463, 31.916018, 52.031448>,  <41.045280, 31.734247, 51.761860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435463, 31.916018, 52.031448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.525387, 31.527407, 52.061378>,  <40.579342, 31.294241, 52.079338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.525387, 31.527407, 52.061378>,  <40.435463, 31.916018, 52.031448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525387, 31.527407, 52.061378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120324, 0.048527, 0.991548,
		-0.966946, -0.231911, -0.105988,
		0.224807, -0.971526, 0.074827,
		40.592831, 31.235949, 52.083828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507301, 32.587822, 51.753742>,  <40.435463, 31.916018, 52.031448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507301, 32.587822, 51.753742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384796, 32.944569, 51.886875>,  <40.311295, 33.158615, 51.966755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384796, 32.944569, 51.886875>,  <40.507301, 32.587822, 51.753742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384796, 32.944569, 51.886875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297667, 0.242384, -0.923388,
		-0.904212, -0.381870, 0.191247,
		-0.306259, 0.891866, 0.332837,
		40.292919, 33.212128, 51.986725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776463, 32.642075, 51.543610>,  <40.507301, 32.587822, 51.753742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776463, 32.642075, 51.543610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.956806, 32.997711, 51.575233>,  <40.065014, 33.211094, 51.594208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.956806, 32.997711, 51.575233>,  <39.776463, 32.642075, 51.543610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956806, 32.997711, 51.575233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399501, 0.280203, -0.872860,
		-0.798201, 0.361954, 0.481523,
		0.450859, 0.889087, 0.079057,
		40.092064, 33.264439, 51.598949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198448, 33.035805, 51.431690>,  <39.776463, 32.642075, 51.543610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198448, 33.035805, 51.431690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531330, 33.248852, 51.370045>,  <39.731060, 33.376678, 51.333057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531330, 33.248852, 51.370045>,  <39.198448, 33.035805, 51.431690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531330, 33.248852, 51.370045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377340, 0.340386, -0.861250,
		-0.406259, 0.774891, 0.484250,
		0.832207, 0.532617, -0.154112,
		39.780991, 33.408638, 51.323811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973270, 33.723804, 51.167065>,  <39.198448, 33.035805, 51.431690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973270, 33.723804, 51.167065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.356945, 33.698818, 51.056751>,  <39.587151, 33.683826, 50.990562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.356945, 33.698818, 51.056751>,  <38.973270, 33.723804, 51.167065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356945, 33.698818, 51.056751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248659, 0.278032, -0.927829,
		0.134633, 0.958539, 0.251153,
		0.959188, -0.062465, -0.275781,
		39.644703, 33.680080, 50.974018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108002, 34.352516, 50.787052>,  <38.973270, 33.723804, 51.167065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108002, 34.352516, 50.787052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.400867, 34.107773, 50.667336>,  <39.576588, 33.960926, 50.595505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.400867, 34.107773, 50.667336>,  <39.108002, 34.352516, 50.787052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400867, 34.107773, 50.667336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072824, 0.366566, -0.927538,
		0.677229, 0.700901, 0.223827,
		0.732160, -0.611855, -0.299291,
		39.620514, 33.924217, 50.577549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363033, 34.711506, 50.254498>,  <39.108002, 34.352516, 50.787052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363033, 34.711506, 50.254498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499996, 34.340683, 50.193409>,  <39.582172, 34.118191, 50.156754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499996, 34.340683, 50.193409>,  <39.363033, 34.711506, 50.254498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499996, 34.340683, 50.193409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110526, 0.121679, -0.986397,
		0.933029, 0.354627, -0.060800,
		0.342405, -0.927057, -0.152725,
		39.602718, 34.062565, 50.147591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867657, 34.742199, 49.782852>,  <39.363033, 34.711506, 50.254498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867657, 34.742199, 49.782852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778553, 34.352894, 49.760464>,  <39.725090, 34.119308, 49.747032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778553, 34.352894, 49.760464>,  <39.867657, 34.742199, 49.782852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778553, 34.352894, 49.760464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054095, 0.044981, -0.997522,
		0.973371, -0.225236, 0.042629,
		-0.222761, -0.973265, -0.055967,
		39.711723, 34.060913, 49.743675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168255, 34.547092, 49.154148>,  <39.867657, 34.742199, 49.782852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168255, 34.547092, 49.154148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.906620, 34.250294, 49.212955>,  <39.749638, 34.072216, 49.248238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.906620, 34.250294, 49.212955>,  <40.168255, 34.547092, 49.154148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906620, 34.250294, 49.212955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044969, -0.155869, -0.986753,
		0.755082, -0.652033, 0.068585,
		-0.654086, -0.741995, 0.147015,
		39.710396, 34.027695, 49.257061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378170, 34.059811, 48.766212>,  <40.168255, 34.547092, 49.154148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378170, 34.059811, 48.766212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.987923, 33.991615, 48.821495>,  <39.753773, 33.950699, 48.854664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.987923, 33.991615, 48.821495>,  <40.378170, 34.059811, 48.766212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987923, 33.991615, 48.821495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133226, -0.040368, -0.990263,
		0.174412, -0.984532, 0.016670,
		-0.975618, -0.170492, 0.138206,
		39.695236, 33.940468, 48.862957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243633, 33.436554, 48.409935>,  <40.378170, 34.059811, 48.766212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243633, 33.436554, 48.409935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.894093, 33.630322, 48.426468>,  <39.684368, 33.746582, 48.436390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.894093, 33.630322, 48.426468>,  <40.243633, 33.436554, 48.409935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894093, 33.630322, 48.426468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114873, -0.123108, -0.985722,
		-0.472419, -0.866128, 0.163226,
		-0.873856, 0.484424, 0.041336,
		39.631935, 33.775650, 48.438869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765694, 32.976620, 48.064217>,  <40.243633, 33.436554, 48.409935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765694, 32.976620, 48.064217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568455, 33.324600, 48.066498>,  <39.450111, 33.533390, 48.067867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568455, 33.324600, 48.066498>,  <39.765694, 32.976620, 48.064217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568455, 33.324600, 48.066498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041841, -0.017163, -0.998977,
		-0.868968, -0.492831, 0.044863,
		-0.493097, 0.869956, 0.005706,
		39.420525, 33.585587, 48.068211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271011, 32.831779, 47.561951>,  <39.765694, 32.976620, 48.064217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271011, 32.831779, 47.561951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311848, 33.226437, 47.612717>,  <39.336349, 33.463230, 47.643177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311848, 33.226437, 47.612717>,  <39.271011, 32.831779, 47.561951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311848, 33.226437, 47.612717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107601, 0.137789, -0.984600,
		-0.988939, 0.086858, 0.120231,
		0.102087, 0.986646, 0.126919,
		39.342472, 33.522430, 47.650791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893219, 32.956520, 47.062344>,  <39.271011, 32.831779, 47.561951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893219, 32.956520, 47.062344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046204, 33.317589, 47.141247>,  <39.137993, 33.534229, 47.188587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046204, 33.317589, 47.141247>,  <38.893219, 32.956520, 47.062344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046204, 33.317589, 47.141247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089656, 0.248737, -0.964413,
		-0.919612, 0.351164, 0.176062,
		0.382460, 0.902670, 0.197257,
		39.160942, 33.588390, 47.200424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387295, 33.525108, 46.878662>,  <38.893219, 32.956520, 47.062344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387295, 33.525108, 46.878662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.758461, 33.669395, 46.841011>,  <38.981159, 33.755966, 46.818420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.758461, 33.669395, 46.841011>,  <38.387295, 33.525108, 46.878662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758461, 33.669395, 46.841011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251628, 0.419723, -0.872076,
		-0.275062, 0.832897, 0.480233,
		0.927914, 0.360714, -0.094130,
		39.036835, 33.777611, 46.812771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867184, 33.963310, 47.072029>,  <38.387295, 33.525108, 46.878662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867184, 33.963310, 47.072029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.468845, 33.933449, 47.051208>,  <37.229843, 33.915531, 47.038715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.468845, 33.933449, 47.051208>,  <37.867184, 33.963310, 47.072029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468845, 33.933449, 47.051208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060688, 0.118495, 0.991098,
		-0.067817, 0.990144, -0.122534,
		-0.995850, -0.074650, -0.052054,
		37.170090, 33.911053, 47.035591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615929, 34.431713, 47.577625>,  <37.867184, 33.963310, 47.072029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615929, 34.431713, 47.577625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277706, 34.223774, 47.528984>,  <37.074772, 34.099010, 47.499798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277706, 34.223774, 47.528984>,  <37.615929, 34.431713, 47.577625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277706, 34.223774, 47.528984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125239, -0.028276, 0.991724,
		-0.518982, 0.853792, -0.041196,
		-0.845560, -0.519846, -0.121603,
		37.024036, 34.067822, 47.492504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156841, 34.780354, 47.972885>,  <37.615929, 34.431713, 47.577625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156841, 34.780354, 47.972885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977757, 34.424946, 47.932713>,  <36.870304, 34.211700, 47.908607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977757, 34.424946, 47.932713>,  <37.156841, 34.780354, 47.972885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977757, 34.424946, 47.932713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200531, -0.009687, 0.979639,
		-0.871402, 0.458736, -0.173839,
		-0.447712, -0.888520, -0.100432,
		36.843445, 34.158390, 47.902584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440163, 34.839348, 48.288956>,  <37.156841, 34.780354, 47.972885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440163, 34.839348, 48.288956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.550697, 34.454967, 48.294704>,  <36.617016, 34.224339, 48.298153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.550697, 34.454967, 48.294704>,  <36.440163, 34.839348, 48.288956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550697, 34.454967, 48.294704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433740, -0.111354, 0.894131,
		-0.857618, -0.253314, -0.447574,
		0.276335, -0.960954, 0.014373,
		36.633598, 34.166679, 48.299015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896141, 34.543018, 48.668365>,  <36.440163, 34.839348, 48.288956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896141, 34.543018, 48.668365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176506, 34.257801, 48.675194>,  <36.344723, 34.086670, 48.679291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176506, 34.257801, 48.675194>,  <35.896141, 34.543018, 48.668365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176506, 34.257801, 48.675194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166176, -0.139977, 0.976111,
		-0.693622, -0.687002, -0.216602,
		0.700909, -0.713046, 0.017072,
		36.386780, 34.043888, 48.680317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660706, 34.014874, 49.054874>,  <35.896141, 34.543018, 48.668365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660706, 34.014874, 49.054874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050545, 33.925323, 49.052219>,  <36.284447, 33.871593, 49.050625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050545, 33.925323, 49.052219>,  <35.660706, 34.014874, 49.054874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050545, 33.925323, 49.052219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067800, -0.323155, 0.943914,
		-0.213460, -0.919485, -0.330124,
		0.974596, -0.223871, -0.006639,
		36.342922, 33.858162, 49.050228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809551, 33.362003, 49.422005>,  <35.660706, 34.014874, 49.054874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809551, 33.362003, 49.422005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166496, 33.541718, 49.439140>,  <36.380661, 33.649548, 49.449421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166496, 33.541718, 49.439140>,  <35.809551, 33.362003, 49.422005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166496, 33.541718, 49.439140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055035, -0.202525, 0.977729,
		0.447958, -0.870128, -0.205451,
		0.892359, 0.449289, 0.042835,
		36.434204, 33.676506, 49.451992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297916, 32.865231, 49.324093>,  <35.809551, 33.362003, 49.422005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297916, 32.865231, 49.324093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938419, 32.965015, 49.468327>,  <34.722721, 33.024887, 49.554867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938419, 32.965015, 49.468327>,  <35.297916, 32.865231, 49.324093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938419, 32.965015, 49.468327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317177, 0.197935, -0.927481,
		-0.302745, -0.947940, -0.098769,
		-0.898746, 0.249462, 0.360588,
		34.668797, 33.039852, 49.576504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775452, 32.540993, 48.857651>,  <35.297916, 32.865231, 49.324093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775452, 32.540993, 48.857651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603973, 32.842403, 49.057018>,  <34.501087, 33.023251, 49.176640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603973, 32.842403, 49.057018>,  <34.775452, 32.540993, 48.857651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603973, 32.842403, 49.057018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363797, 0.361006, -0.858677,
		-0.826966, -0.549434, 0.119368,
		-0.428694, 0.753523, 0.498423,
		34.475365, 33.068459, 49.206547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121162, 32.602028, 48.588707>,  <34.775452, 32.540993, 48.857651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121162, 32.602028, 48.588707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185165, 32.961517, 48.752018>,  <34.223568, 33.177212, 48.850006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185165, 32.961517, 48.752018>,  <34.121162, 32.602028, 48.588707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185165, 32.961517, 48.752018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330288, 0.438509, -0.835835,
		-0.930220, -0.001113, 0.367001,
		0.160003, 0.898726, 0.408278,
		34.233166, 33.231136, 48.874500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561508, 33.041668, 48.513321>,  <34.121162, 32.602028, 48.588707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561508, 33.041668, 48.513321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829323, 33.333080, 48.571236>,  <33.990013, 33.507927, 48.605984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829323, 33.333080, 48.571236>,  <33.561508, 33.041668, 48.513321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829323, 33.333080, 48.571236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269235, 0.419697, -0.866814,
		-0.692268, 0.541382, 0.477148,
		0.669535, 0.728533, 0.144784,
		34.030182, 33.551640, 48.614670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239708, 33.559269, 48.251732>,  <33.561508, 33.041668, 48.513321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239708, 33.559269, 48.251732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612614, 33.698875, 48.289845>,  <33.836357, 33.782639, 48.312714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612614, 33.698875, 48.289845>,  <33.239708, 33.559269, 48.251732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612614, 33.698875, 48.289845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043075, 0.368565, -0.928604,
		-0.359214, 0.861596, 0.358632,
		0.932261, 0.349016, 0.095280,
		33.892292, 33.803581, 48.318428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255138, 34.222492, 47.814316>,  <33.239708, 33.559269, 48.251732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255138, 34.222492, 47.814316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636570, 34.107529, 47.850296>,  <33.865429, 34.038551, 47.871883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636570, 34.107529, 47.850296>,  <33.255138, 34.222492, 47.814316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636570, 34.107529, 47.850296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179188, 0.301414, -0.936505,
		0.242043, 0.909147, 0.338921,
		0.953576, -0.287404, 0.089953,
		33.922642, 34.021309, 47.877281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705605, 34.761871, 47.540352>,  <33.255138, 34.222492, 47.814316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705605, 34.761871, 47.540352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923267, 34.426899, 47.519978>,  <34.053867, 34.225914, 47.507751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923267, 34.426899, 47.519978>,  <33.705605, 34.761871, 47.540352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923267, 34.426899, 47.519978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282088, 0.239799, -0.928936,
		0.790137, 0.491121, 0.366719,
		0.544159, -0.837434, -0.050935,
		34.086514, 34.175667, 47.504696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.013786, 28.823366, 51.586494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.245789, 29.122648, 51.457634>,  <38.384991, 29.302217, 51.380318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.245789, 29.122648, 51.457634>,  <38.013786, 28.823366, 51.586494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245789, 29.122648, 51.457634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658091, 0.197281, -0.726634,
		-0.480118, 0.633456, 0.606812,
		0.580003, 0.748207, -0.322153,
		38.419788, 29.347111, 51.360989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570782, 29.439999, 51.527393>,  <38.013786, 28.823366, 51.586494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570782, 29.439999, 51.527393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.905140, 29.520311, 51.323055>,  <38.105755, 29.568499, 51.200455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.905140, 29.520311, 51.323055>,  <37.570782, 29.439999, 51.527393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905140, 29.520311, 51.323055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534504, 0.086130, -0.840766,
		-0.124813, 0.975842, 0.179315,
		0.835899, 0.200784, -0.510841,
		38.155910, 29.580547, 51.169804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382824, 30.044720, 51.184978>,  <37.570782, 29.439999, 51.527393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382824, 30.044720, 51.184978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.683754, 29.888973, 50.972412>,  <37.864311, 29.795527, 50.844872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.683754, 29.888973, 50.972412>,  <37.382824, 30.044720, 51.184978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683754, 29.888973, 50.972412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359049, 0.433977, -0.826286,
		0.552347, 0.812440, 0.186692,
		0.752328, -0.389365, -0.531411,
		37.909451, 29.772163, 50.812988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281086, 30.413429, 50.545589>,  <37.382824, 30.044720, 51.184978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281086, 30.413429, 50.545589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.549530, 30.143259, 50.423340>,  <37.710598, 29.981157, 50.349991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.549530, 30.143259, 50.423340>,  <37.281086, 30.413429, 50.545589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549530, 30.143259, 50.423340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294853, 0.135067, -0.945949,
		0.680197, 0.724954, -0.108505,
		0.671113, -0.675425, -0.305627,
		37.750866, 29.940632, 50.331654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436150, 30.687307, 49.999233>,  <37.281086, 30.413429, 50.545589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436150, 30.687307, 49.999233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564262, 30.310005, 49.964153>,  <37.641129, 30.083624, 49.943104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564262, 30.310005, 49.964153>,  <37.436150, 30.687307, 49.999233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564262, 30.310005, 49.964153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294504, -0.011147, -0.955585,
		0.900383, 0.331882, -0.281363,
		0.320278, -0.943255, -0.087704,
		37.660347, 30.027029, 49.937843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064552, 30.534128, 49.523315>,  <37.436150, 30.687307, 49.999233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064552, 30.534128, 49.523315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.844929, 30.199894, 49.530605>,  <37.713154, 29.999353, 49.534977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.844929, 30.199894, 49.530605>,  <38.064552, 30.534128, 49.523315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844929, 30.199894, 49.530605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086100, 0.034863, -0.995676,
		0.831336, -0.548255, -0.091086,
		-0.549060, -0.835584, 0.018222,
		37.680210, 29.949219, 49.536072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324574, 30.258406, 48.983650>,  <38.064552, 30.534128, 49.523315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324574, 30.258406, 48.983650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023941, 30.001266, 49.042812>,  <37.843563, 29.846983, 49.078308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023941, 30.001266, 49.042812>,  <38.324574, 30.258406, 48.983650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023941, 30.001266, 49.042812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091738, -0.120175, -0.988505,
		0.653232, -0.756509, 0.031347,
		-0.751580, -0.642847, 0.147903,
		37.798466, 29.808413, 49.087185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414623, 29.723360, 48.480606>,  <38.324574, 30.258406, 48.983650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414623, 29.723360, 48.480606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033386, 29.674995, 48.591591>,  <37.804642, 29.645977, 48.658184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033386, 29.674995, 48.591591>,  <38.414623, 29.723360, 48.480606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033386, 29.674995, 48.591591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283860, 0.038983, -0.958073,
		0.105031, -0.991897, -0.071478,
		-0.953096, -0.120917, 0.277466,
		37.747456, 29.638721, 48.674831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217205, 29.035212, 48.228626>,  <38.414623, 29.723360, 48.480606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217205, 29.035212, 48.228626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891060, 29.264580, 48.260555>,  <37.695374, 29.402201, 48.279713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891060, 29.264580, 48.260555>,  <38.217205, 29.035212, 48.228626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891060, 29.264580, 48.260555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171788, -0.107961, -0.979200,
		-0.552875, -0.812117, 0.186534,
		-0.815364, 0.573419, 0.079823,
		37.646450, 29.436605, 48.284504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705647, 28.713245, 47.820480>,  <38.217205, 29.035212, 48.228626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705647, 28.713245, 47.820480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562805, 29.086044, 47.845329>,  <37.477100, 29.309723, 47.860237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562805, 29.086044, 47.845329>,  <37.705647, 28.713245, 47.820480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562805, 29.086044, 47.845329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153814, 0.006920, -0.988076,
		-0.921313, -0.362402, 0.140883,
		-0.357106, 0.931996, 0.062118,
		37.455673, 29.365643, 47.863964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937969, 28.629654, 47.538460>,  <37.705647, 28.713245, 47.820480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937969, 28.629654, 47.538460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061092, 29.009806, 47.520435>,  <37.134968, 29.237896, 47.509621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061092, 29.009806, 47.520435>,  <36.937969, 28.629654, 47.538460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061092, 29.009806, 47.520435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405019, 0.088026, -0.910061,
		-0.860936, 0.298380, 0.412017,
		0.307812, 0.950379, -0.045065,
		37.153435, 29.294920, 47.506916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329529, 29.007866, 47.232304>,  <36.937969, 28.629654, 47.538460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329529, 29.007866, 47.232304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.660091, 29.230442, 47.197830>,  <36.858429, 29.363987, 47.177147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.660091, 29.230442, 47.197830>,  <36.329529, 29.007866, 47.232304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660091, 29.230442, 47.197830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214116, 0.168994, -0.962079,
		-0.520776, 0.813520, 0.258800,
		0.826406, 0.556441, -0.086179,
		36.908012, 29.397375, 47.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110504, 29.740660, 47.449871>,  <36.329529, 29.007866, 47.232304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110504, 29.740660, 47.449871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.713486, 29.777939, 47.418476>,  <35.475273, 29.800306, 47.399639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.713486, 29.777939, 47.418476>,  <36.110504, 29.740660, 47.449871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713486, 29.777939, 47.418476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037024, 0.382993, 0.923009,
		0.116082, 0.919038, -0.376689,
		-0.992549, 0.093198, -0.078485,
		35.415722, 29.805899, 47.394932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857460, 30.382151, 47.774147>,  <36.110504, 29.740660, 47.449871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857460, 30.382151, 47.774147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.538696, 30.141951, 47.800476>,  <35.347439, 29.997829, 47.816273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.538696, 30.141951, 47.800476>,  <35.857460, 30.382151, 47.774147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538696, 30.141951, 47.800476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125168, 0.270731, 0.954483,
		-0.590990, 0.752397, -0.290912,
		-0.796909, -0.600502, 0.065823,
		35.299625, 29.961800, 47.820225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414131, 30.785183, 48.075035>,  <35.857460, 30.382151, 47.774147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414131, 30.785183, 48.075035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310787, 30.402782, 48.130619>,  <35.248783, 30.173342, 48.163971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310787, 30.402782, 48.130619>,  <35.414131, 30.785183, 48.075035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310787, 30.402782, 48.130619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035568, 0.153158, 0.987561,
		-0.965394, 0.250202, -0.073573,
		-0.258358, -0.956003, 0.138959,
		35.233280, 30.115982, 48.172306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758949, 30.774603, 48.364750>,  <35.414131, 30.785183, 48.075035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758949, 30.774603, 48.364750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897602, 30.413877, 48.467960>,  <34.980793, 30.197443, 48.529888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.897602, 30.413877, 48.467960>,  <34.758949, 30.774603, 48.364750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897602, 30.413877, 48.467960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208613, 0.194074, 0.958549,
		-0.914508, -0.386093, -0.120857,
		0.346634, -0.901813, 0.258027,
		35.001591, 30.143333, 48.545368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338444, 30.656521, 48.896957>,  <34.758949, 30.774603, 48.364750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338444, 30.656521, 48.896957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627811, 30.380701, 48.910725>,  <34.801434, 30.215208, 48.918987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627811, 30.380701, 48.910725>,  <34.338444, 30.656521, 48.896957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627811, 30.380701, 48.910725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227264, -0.190758, 0.954967,
		-0.651933, -0.698663, -0.294708,
		0.723418, -0.689552, 0.034420,
		34.844837, 30.173836, 48.921051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025082, 30.145077, 49.151737>,  <34.338444, 30.656521, 48.896957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025082, 30.145077, 49.151737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.409672, 30.048929, 49.205097>,  <34.640427, 29.991241, 49.237114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.409672, 30.048929, 49.205097>,  <34.025082, 30.145077, 49.151737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409672, 30.048929, 49.205097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169675, -0.137099, 0.975917,
		-0.216293, -0.960951, -0.172602,
		0.961472, -0.240370, 0.133396,
		34.698112, 29.976818, 49.245117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984283, 29.672546, 49.734650>,  <34.025082, 30.145077, 49.151737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984283, 29.672546, 49.734650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.360115, 29.809322, 49.741268>,  <34.585613, 29.891388, 49.745239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.360115, 29.809322, 49.741268>,  <33.984283, 29.672546, 49.734650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360115, 29.809322, 49.741268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024099, 0.017848, 0.999550,
		0.341494, -0.939551, 0.025011,
		0.939575, 0.341943, 0.016547,
		34.641987, 29.911905, 49.746231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306477, 29.251896, 50.184086>,  <33.984283, 29.672546, 49.734650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306477, 29.251896, 50.184086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526283, 29.584955, 50.156567>,  <34.658165, 29.784790, 50.140057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526283, 29.584955, 50.156567>,  <34.306477, 29.251896, 50.184086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526283, 29.584955, 50.156567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092301, 0.021341, 0.995503,
		0.830371, -0.553391, -0.065127,
		0.549513, 0.832648, -0.068799,
		34.691135, 29.834749, 50.135925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816338, 29.193605, 50.680378>,  <34.306477, 29.251896, 50.184086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816338, 29.193605, 50.680378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807529, 29.589960, 50.627228>,  <34.802246, 29.827774, 50.595337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807529, 29.589960, 50.627228>,  <34.816338, 29.193605, 50.680378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807529, 29.589960, 50.627228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026986, 0.133451, 0.990688,
		0.999393, 0.018228, -0.029679,
		-0.022019, 0.990888, -0.132878,
		34.800922, 29.887226, 50.587364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472839, 29.523670, 51.030415>,  <34.816338, 29.193605, 50.680378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472839, 29.523670, 51.030415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171909, 29.783201, 50.984756>,  <34.991352, 29.938921, 50.957363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171909, 29.783201, 50.984756>,  <35.472839, 29.523670, 51.030415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171909, 29.783201, 50.984756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086891, 0.269477, 0.959079,
		0.653037, 0.711620, -0.259111,
		-0.752325, 0.648829, -0.114145,
		34.946213, 29.977850, 50.950512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573673, 29.977304, 51.540447>,  <35.472839, 29.523670, 51.030415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573673, 29.977304, 51.540447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197449, 30.061079, 51.433502>,  <34.971714, 30.111343, 51.369335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197449, 30.061079, 51.433502>,  <35.573673, 29.977304, 51.540447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197449, 30.061079, 51.433502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208790, 0.264315, 0.941565,
		0.267866, 0.941421, -0.204876,
		-0.940561, 0.209437, -0.267360,
		34.915279, 30.123911, 51.353294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514816, 30.609243, 51.825981>,  <35.573673, 29.977304, 51.540447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514816, 30.609243, 51.825981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135189, 30.493683, 51.775700>,  <34.907413, 30.424347, 51.745533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135189, 30.493683, 51.775700>,  <35.514816, 30.609243, 51.825981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135189, 30.493683, 51.775700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245014, 0.425961, 0.870934,
		-0.198070, 0.857376, -0.475052,
		-0.949071, -0.288900, -0.125699,
		34.850468, 30.407013, 51.737991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143372, 31.174259, 51.953407>,  <35.514816, 30.609243, 51.825981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143372, 31.174259, 51.953407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.883591, 30.871141, 51.978584>,  <34.727722, 30.689272, 51.993690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.883591, 30.871141, 51.978584>,  <35.143372, 31.174259, 51.953407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883591, 30.871141, 51.978584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257382, 0.296964, 0.919547,
		-0.715519, 0.581001, -0.387906,
		-0.649452, -0.757793, 0.062945,
		34.688755, 30.643803, 51.997467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640179, 31.494959, 52.190475>,  <35.143372, 31.174259, 51.953407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640179, 31.494959, 52.190475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579075, 31.113735, 52.295044>,  <34.542412, 30.885000, 52.357784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579075, 31.113735, 52.295044>,  <34.640179, 31.494959, 52.190475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579075, 31.113735, 52.295044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249546, 0.293149, 0.922925,
		-0.956239, 0.075748, -0.282613,
		-0.152757, -0.953061, 0.261418,
		34.533249, 30.827816, 52.373470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993137, 31.730999, 52.386879>,  <34.640179, 31.494959, 52.190475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993137, 31.730999, 52.386879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.224731, 32.057117, 52.390247>,  <34.363689, 32.252789, 52.392269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.224731, 32.057117, 52.390247>,  <33.993137, 31.730999, 52.386879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224731, 32.057117, 52.390247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028267, 0.030396, -0.999138,
		-0.814849, 0.578247, 0.040645,
		0.578984, 0.815295, 0.008423,
		34.398426, 32.301704, 52.392773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663242, 32.297123, 51.946548>,  <33.993137, 31.730999, 52.386879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663242, 32.297123, 51.946548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055759, 32.373184, 51.958549>,  <34.291271, 32.418823, 51.965748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055759, 32.373184, 51.958549>,  <33.663242, 32.297123, 51.946548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055759, 32.373184, 51.958549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020032, 0.255856, -0.966507,
		-0.191463, 0.947828, 0.254880,
		0.981295, 0.190156, 0.030000,
		34.350147, 32.430229, 51.967548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696400, 33.030773, 51.695030>,  <33.663242, 32.297123, 51.946548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696400, 33.030773, 51.695030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058582, 32.865021, 51.658283>,  <34.275890, 32.765568, 51.636234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058582, 32.865021, 51.658283>,  <33.696400, 33.030773, 51.695030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058582, 32.865021, 51.658283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063732, 0.346724, -0.935800,
		0.419632, 0.841469, 0.340352,
		0.905454, -0.414383, -0.091868,
		34.330219, 32.740707, 51.630722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034187, 33.485744, 51.339233>,  <33.696400, 33.030773, 51.695030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034187, 33.485744, 51.339233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271996, 33.167633, 51.291779>,  <34.414680, 32.976765, 51.263306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271996, 33.167633, 51.291779>,  <34.034187, 33.485744, 51.339233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271996, 33.167633, 51.291779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128665, 0.239734, -0.962275,
		0.793717, 0.556830, 0.244852,
		0.594523, -0.795278, -0.118636,
		34.450352, 32.929050, 51.256187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633747, 33.751781, 51.112389>,  <34.034187, 33.485744, 51.339233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633747, 33.751781, 51.112389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623650, 33.365578, 51.008732>,  <34.617592, 33.133854, 50.946537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623650, 33.365578, 51.008732>,  <34.633747, 33.751781, 51.112389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623650, 33.365578, 51.008732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015938, 0.258807, -0.965797,
		0.999554, -0.028508, 0.008856,
		-0.025241, -0.965508, -0.259146,
		34.616077, 33.075924, 50.930988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161526, 33.707382, 50.473652>,  <34.633747, 33.751781, 51.112389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161526, 33.707382, 50.473652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907345, 33.399086, 50.455086>,  <34.754837, 33.214108, 50.443947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907345, 33.399086, 50.455086>,  <35.161526, 33.707382, 50.473652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907345, 33.399086, 50.455086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111405, 0.151005, -0.982235,
		0.764058, -0.618996, -0.181821,
		-0.635456, -0.770741, -0.046417,
		34.716709, 33.167866, 50.441162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382866, 33.252552, 50.000660>,  <35.161526, 33.707382, 50.473652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382866, 33.252552, 50.000660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.997704, 33.151627, 50.038910>,  <34.766605, 33.091072, 50.061859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.997704, 33.151627, 50.038910>,  <35.382866, 33.252552, 50.000660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997704, 33.151627, 50.038910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126597, 0.109492, -0.985893,
		0.238283, -0.961431, -0.137373,
		-0.962909, -0.252312, 0.095625,
		34.708832, 33.075932, 50.067596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131859, 33.045399, 49.979557>,  <35.382866, 33.252552, 50.000660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131859, 33.045399, 49.979557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.420464, 33.319111, 49.937256>,  <36.593624, 33.483337, 49.911873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.420464, 33.319111, 49.937256>,  <36.131859, 33.045399, 49.979557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420464, 33.319111, 49.937256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273449, -0.141277, 0.951455,
		0.636122, -0.715402, -0.289049,
		0.721508, 0.684282, -0.105757,
		36.636917, 33.524395, 49.905529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833401, 32.826023, 50.330986>,  <36.131859, 33.045399, 49.979557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833401, 32.826023, 50.330986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847031, 33.224010, 50.293289>,  <36.855209, 33.462803, 50.270672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847031, 33.224010, 50.293289>,  <36.833401, 32.826023, 50.330986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847031, 33.224010, 50.293289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394144, 0.073273, 0.916123,
		0.918417, -0.068363, -0.389663,
		0.034077, 0.994966, -0.094240,
		36.857254, 33.522499, 50.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412365, 32.996979, 50.718365>,  <36.833401, 32.826023, 50.330986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412365, 32.996979, 50.718365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207546, 33.335423, 50.659157>,  <37.084656, 33.538490, 50.623634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207546, 33.335423, 50.659157>,  <37.412365, 32.996979, 50.718365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207546, 33.335423, 50.659157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350058, 0.362917, 0.863568,
		0.784392, 0.390370, -0.482017,
		-0.512044, 0.846110, -0.148017,
		37.053932, 33.589256, 50.614750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915565, 33.574432, 50.645393>,  <37.412365, 32.996979, 50.718365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915565, 33.574432, 50.645393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564980, 33.669807, 50.812702>,  <37.354626, 33.727032, 50.913086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564980, 33.669807, 50.812702>,  <37.915565, 33.574432, 50.645393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564980, 33.669807, 50.812702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469057, 0.226954, 0.853509,
		0.108581, 0.944266, -0.310759,
		-0.876468, 0.238439, 0.418272,
		37.302040, 33.741341, 50.938183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187683, 33.991371, 51.164093>,  <37.915565, 33.574432, 50.645393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187683, 33.991371, 51.164093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.800468, 33.986809, 51.264320>,  <37.568142, 33.984074, 51.324455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.800468, 33.986809, 51.264320>,  <38.187683, 33.991371, 51.164093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800468, 33.986809, 51.264320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229881, 0.359294, 0.904468,
		-0.100340, 0.933155, -0.345187,
		-0.968032, -0.011402, 0.250566,
		37.510059, 33.983387, 51.339489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048546, 34.564964, 51.393253>,  <38.187683, 33.991371, 51.164093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048546, 34.564964, 51.393253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.738583, 34.382042, 51.567787>,  <37.552605, 34.272289, 51.672508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.738583, 34.382042, 51.567787>,  <38.048546, 34.564964, 51.393253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738583, 34.382042, 51.567787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304860, 0.334307, 0.891796,
		-0.553695, 0.824080, -0.119642,
		-0.774908, -0.457309, 0.436333,
		37.506111, 34.244850, 51.698689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619514, 35.039413, 51.894665>,  <38.048546, 34.564964, 51.393253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619514, 35.039413, 51.894665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.586773, 34.654057, 51.996780>,  <37.567127, 34.422844, 52.058048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.586773, 34.654057, 51.996780>,  <37.619514, 35.039413, 51.894665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586773, 34.654057, 51.996780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318913, 0.217363, 0.922522,
		-0.944243, 0.156931, 0.289446,
		-0.081857, -0.963393, 0.255291,
		37.562218, 34.365040, 52.073368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347000, 35.132645, 52.522820>,  <37.619514, 35.039413, 51.894665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347000, 35.132645, 52.522820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416973, 34.739662, 52.548668>,  <37.458958, 34.503872, 52.564178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416973, 34.739662, 52.548668>,  <37.347000, 35.132645, 52.522820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416973, 34.739662, 52.548668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367332, 0.126021, 0.921513,
		-0.913491, -0.137465, 0.382933,
		0.174933, -0.982457, 0.064623,
		37.469452, 34.444923, 52.568054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125290, 34.928730, 53.095493>,  <37.347000, 35.132645, 52.522820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125290, 34.928730, 53.095493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396732, 34.645580, 53.017094>,  <37.559597, 34.475693, 52.970055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396732, 34.645580, 53.017094>,  <37.125290, 34.928730, 53.095493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396732, 34.645580, 53.017094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419398, 0.154359, 0.894583,
		-0.602996, -0.689268, 0.401629,
		0.678603, -0.707872, -0.196000,
		37.600311, 34.433220, 52.958294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.637897, 35.065540, 36.649040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033165, 35.004253, 36.646534>,  <36.270325, 34.967484, 36.645031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033165, 35.004253, 36.646534>,  <35.637897, 35.065540, 36.649040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033165, 35.004253, 36.646534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013469, -0.127413, 0.991758,
		-0.152757, -0.979944, -0.127970,
		0.988172, -0.153222, -0.006264,
		36.329617, 34.958290, 36.644653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639908, 34.490410, 37.020454>,  <35.637897, 35.065540, 36.649040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639908, 34.490410, 37.020454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010975, 34.639179, 37.033745>,  <36.233616, 34.728439, 37.041718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010975, 34.639179, 37.033745>,  <35.639908, 34.490410, 37.020454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010975, 34.639179, 37.033745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036506, -0.178890, 0.983192,
		0.371616, -0.910863, -0.179528,
		0.927669, 0.371923, 0.033226,
		36.289276, 34.750755, 37.043713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946522, 33.994183, 37.431950>,  <35.639908, 34.490410, 37.020454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946522, 33.994183, 37.431950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188969, 34.312244, 37.439419>,  <36.334435, 34.503082, 37.443901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188969, 34.312244, 37.439419>,  <35.946522, 33.994183, 37.431950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188969, 34.312244, 37.439419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141989, -0.131270, 0.981125,
		0.782600, -0.592024, -0.192468,
		0.606115, 0.795158, 0.018671,
		36.370804, 34.550793, 37.445019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563187, 33.827507, 37.938400>,  <35.946522, 33.994183, 37.431950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563187, 33.827507, 37.938400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537155, 34.224499, 37.896919>,  <36.521534, 34.462692, 37.872032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537155, 34.224499, 37.896919>,  <36.563187, 33.827507, 37.938400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537155, 34.224499, 37.896919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070303, 0.108220, 0.991638,
		0.995400, 0.057248, -0.076817,
		-0.065082, 0.992477, -0.103698,
		36.517632, 34.522243, 37.865810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175480, 34.077290, 38.307549>,  <36.563187, 33.827507, 37.938400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175480, 34.077290, 38.307549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898773, 34.365845, 38.294567>,  <36.732750, 34.538979, 38.286777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898773, 34.365845, 38.294567>,  <37.175480, 34.077290, 38.307549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898773, 34.365845, 38.294567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017170, 0.061359, 0.997968,
		0.721914, 0.689807, -0.054832,
		-0.691770, 0.721389, -0.032452,
		36.691242, 34.582260, 38.284832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406052, 34.654377, 38.723377>,  <37.175480, 34.077290, 38.307549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406052, 34.654377, 38.723377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008724, 34.700420, 38.719925>,  <36.770329, 34.728046, 38.717854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008724, 34.700420, 38.719925>,  <37.406052, 34.654377, 38.723377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008724, 34.700420, 38.719925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001505, 0.087716, 0.996144,
		0.115418, 0.989473, -0.087303,
		-0.993316, 0.115104, -0.008635,
		36.710728, 34.734951, 38.717335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344406, 35.053020, 39.181824>,  <37.406052, 34.654377, 38.723377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344406, 35.053020, 39.181824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965923, 34.926369, 39.155182>,  <36.738834, 34.850376, 39.139198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965923, 34.926369, 39.155182>,  <37.344406, 35.053020, 39.181824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965923, 34.926369, 39.155182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065289, -0.014759, 0.997757,
		-0.316905, 0.948433, -0.006708,
		-0.946207, -0.316633, -0.066600,
		36.682060, 34.831379, 39.135201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907528, 35.532719, 39.613712>,  <37.344406, 35.053020, 39.181824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907528, 35.532719, 39.613712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707726, 35.189671, 39.564754>,  <36.587845, 34.983841, 39.535378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707726, 35.189671, 39.564754>,  <36.907528, 35.532719, 39.613712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707726, 35.189671, 39.564754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208891, -0.017879, 0.977775,
		-0.840748, 0.513973, -0.170218,
		-0.499506, -0.857620, -0.122397,
		36.557873, 34.932384, 39.528034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278484, 35.664494, 39.887276>,  <36.907528, 35.532719, 39.613712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278484, 35.664494, 39.887276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297039, 35.264965, 39.892906>,  <36.308174, 35.025246, 39.896286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297039, 35.264965, 39.892906>,  <36.278484, 35.664494, 39.887276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297039, 35.264965, 39.892906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374066, -0.004302, 0.927392,
		-0.926241, -0.048286, -0.373826,
		0.046389, -0.998824, 0.014077,
		36.310955, 34.965317, 39.897129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685467, 35.443684, 40.242195>,  <36.278484, 35.664494, 39.887276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685467, 35.443684, 40.242195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890026, 35.102226, 40.281734>,  <36.012760, 34.897354, 40.305458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890026, 35.102226, 40.281734>,  <35.685467, 35.443684, 40.242195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890026, 35.102226, 40.281734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252592, -0.039370, 0.966772,
		-0.821384, -0.519373, -0.235756,
		0.511396, -0.853640, 0.098851,
		36.043446, 34.846134, 40.311390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217831, 35.041481, 40.651051>,  <35.685467, 35.443684, 40.242195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217831, 35.041481, 40.651051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577190, 34.867283, 40.673779>,  <35.792805, 34.762764, 40.687416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577190, 34.867283, 40.673779>,  <35.217831, 35.041481, 40.651051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577190, 34.867283, 40.673779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153664, -0.190497, 0.969586,
		-0.411429, -0.879802, -0.238062,
		0.898395, -0.435498, 0.056818,
		35.846710, 34.736633, 40.690823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225765, 34.337624, 40.999393>,  <35.217831, 35.041481, 40.651051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225765, 34.337624, 40.999393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592899, 34.492489, 41.034435>,  <35.813179, 34.585407, 41.055458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592899, 34.492489, 41.034435>,  <35.225765, 34.337624, 40.999393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592899, 34.492489, 41.034435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077122, -0.042554, 0.996113,
		0.389389, -0.921027, -0.009199,
		0.917839, 0.387166, 0.087602,
		35.868252, 34.608639, 41.060715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661575, 33.776760, 41.258854>,  <35.225765, 34.337624, 40.999393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661575, 33.776760, 41.258854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449146, 34.112843, 41.302708>,  <34.321690, 34.314491, 41.329018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449146, 34.112843, 41.302708>,  <34.661575, 33.776760, 41.258854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449146, 34.112843, 41.302708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577589, -0.264301, -0.772357,
		-0.619963, -0.473498, 0.625656,
		-0.531071, 0.840205, 0.109630,
		34.289825, 34.364902, 41.335598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932087, 33.599846, 41.228722>,  <34.661575, 33.776760, 41.258854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932087, 33.599846, 41.228722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943768, 33.986118, 41.125492>,  <33.950775, 34.217884, 41.063553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943768, 33.986118, 41.125492>,  <33.932087, 33.599846, 41.228722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943768, 33.986118, 41.125492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707709, -0.162354, -0.687597,
		-0.705900, 0.202724, 0.678681,
		0.029205, 0.965683, -0.258075,
		33.952530, 34.275822, 41.048069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193405, 33.740284, 41.106945>,  <33.932087, 33.599846, 41.228722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193405, 33.740284, 41.106945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419044, 34.021515, 40.933750>,  <33.554428, 34.190254, 40.829834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419044, 34.021515, 40.933750>,  <33.193405, 33.740284, 41.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419044, 34.021515, 40.933750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575665, -0.041067, -0.816654,
		-0.591953, 0.709926, 0.381572,
		0.564094, 0.703078, -0.432989,
		33.588272, 34.232437, 40.803852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744175, 34.036896, 40.663322>,  <33.193405, 33.740284, 41.106945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744175, 34.036896, 40.663322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096348, 34.159882, 40.518929>,  <33.307652, 34.233673, 40.432293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096348, 34.159882, 40.518929>,  <32.744175, 34.036896, 40.663322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096348, 34.159882, 40.518929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362844, -0.053260, -0.930327,
		-0.305273, 0.950066, 0.064672,
		0.880428, 0.307469, -0.360985,
		33.360477, 34.252121, 40.410633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592934, 34.688335, 40.288818>,  <32.744175, 34.036896, 40.663322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592934, 34.688335, 40.288818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938805, 34.541656, 40.151493>,  <33.146328, 34.453648, 40.069099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938805, 34.541656, 40.151493>,  <32.592934, 34.688335, 40.288818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938805, 34.541656, 40.151493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277414, 0.221168, -0.934947,
		0.418772, 0.903669, 0.089513,
		0.864680, -0.366697, -0.343309,
		33.198208, 34.431648, 40.048500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743351, 35.082596, 39.684021>,  <32.592934, 34.688335, 40.288818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743351, 35.082596, 39.684021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980568, 34.765774, 39.626133>,  <33.122898, 34.575680, 39.591400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980568, 34.765774, 39.626133>,  <32.743351, 35.082596, 39.684021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980568, 34.765774, 39.626133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192322, 0.035193, -0.980701,
		0.781863, 0.609433, -0.131459,
		0.593045, -0.792056, -0.144723,
		33.158482, 34.528156, 39.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042137, 35.262333, 39.096706>,  <32.743351, 35.082596, 39.684021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042137, 35.262333, 39.096706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077667, 34.866348, 39.140663>,  <33.098984, 34.628757, 39.167038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077667, 34.866348, 39.140663>,  <33.042137, 35.262333, 39.096706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077667, 34.866348, 39.140663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141843, -0.121780, -0.982370,
		0.985896, 0.071669, -0.151237,
		0.088823, -0.989966, 0.109896,
		33.104313, 34.569359, 39.173634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411831, 34.999153, 38.559219>,  <33.042137, 35.262333, 39.096706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411831, 34.999153, 38.559219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214272, 34.678314, 38.693508>,  <33.095737, 34.485809, 38.774082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214272, 34.678314, 38.693508>,  <33.411831, 34.999153, 38.559219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214272, 34.678314, 38.693508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237787, -0.246786, -0.939444,
		0.836375, -0.543818, -0.068841,
		-0.493897, -0.802096, 0.335718,
		33.066101, 34.437687, 38.794224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507660, 34.391697, 38.052017>,  <33.411831, 34.999153, 38.559219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507660, 34.391697, 38.052017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176075, 34.274429, 38.242542>,  <32.977123, 34.204071, 38.356857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176075, 34.274429, 38.242542>,  <33.507660, 34.391697, 38.052017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176075, 34.274429, 38.242542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456559, -0.137239, -0.879045,
		0.323076, -0.946160, -0.020083,
		-0.828961, -0.293168, 0.476316,
		32.927387, 34.186478, 38.385437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235096, 33.771404, 37.713661>,  <33.507660, 34.391697, 38.052017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235096, 33.771404, 37.713661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909424, 33.871387, 37.923279>,  <32.714020, 33.931377, 38.049049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909424, 33.871387, 37.923279>,  <33.235096, 33.771404, 37.713661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909424, 33.871387, 37.923279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575482, -0.227767, -0.785458,
		-0.076964, -0.941088, 0.329286,
		-0.814185, 0.249950, 0.524049,
		32.665169, 33.946373, 38.080494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715893, 33.173664, 37.632679>,  <33.235096, 33.771404, 37.713661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715893, 33.173664, 37.632679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518955, 33.502811, 37.746155>,  <32.400795, 33.700302, 37.814240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518955, 33.502811, 37.746155>,  <32.715893, 33.173664, 37.632679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518955, 33.502811, 37.746155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656085, -0.136667, -0.742209,
		-0.571972, -0.551546, 0.607161,
		-0.492341, 0.822873, 0.283691,
		32.371254, 33.749672, 37.831261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972963, 33.076126, 37.754406>,  <32.715893, 33.173664, 37.632679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972963, 33.076126, 37.754406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983335, 33.466457, 37.667599>,  <31.989559, 33.700657, 37.615517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983335, 33.466457, 37.667599>,  <31.972963, 33.076126, 37.754406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983335, 33.466457, 37.667599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684251, -0.140938, -0.715498,
		-0.728785, 0.167045, 0.664054,
		0.025930, 0.975824, -0.217014,
		31.991114, 33.759205, 37.602493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140671, 32.649670, 37.141712>,  <31.972963, 33.076126, 37.754406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140671, 32.649670, 37.141712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012844, 32.497791, 37.488979>,  <31.936150, 32.406666, 37.697338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012844, 32.497791, 37.488979>,  <32.140671, 32.649670, 37.141712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012844, 32.497791, 37.488979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113043, -0.894387, -0.432774,
		0.940798, -0.236439, 0.242892,
		-0.319564, -0.379696, 0.868165,
		31.916975, 32.383884, 37.749428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477604, 31.988531, 37.219933>,  <32.140671, 32.649670, 37.141712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477604, 31.988531, 37.219933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136398, 32.008236, 37.427757>,  <31.931675, 32.020058, 37.552452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136398, 32.008236, 37.427757>,  <32.477604, 31.988531, 37.219933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136398, 32.008236, 37.427757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357626, -0.780230, -0.513171,
		0.380098, -0.623549, 0.683163,
		-0.853012, 0.049261, 0.519561,
		31.880495, 32.023014, 37.583626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980436, 31.409958, 36.950302>,  <32.477604, 31.988531, 37.219933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980436, 31.409958, 36.950302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758932, 31.570684, 37.242027>,  <31.626030, 31.667120, 37.417061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758932, 31.570684, 37.242027>,  <31.980436, 31.409958, 36.950302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758932, 31.570684, 37.242027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768779, -0.583194, -0.262420,
		0.319885, -0.705996, 0.631857,
		-0.553763, 0.401814, 0.729310,
		31.592804, 31.691229, 37.460819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542631, 30.828920, 37.054909>,  <31.980436, 31.409958, 36.950302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542631, 30.828920, 37.054909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351969, 31.136929, 37.224552>,  <31.237572, 31.321733, 37.326340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351969, 31.136929, 37.224552>,  <31.542631, 30.828920, 37.054909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351969, 31.136929, 37.224552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878838, -0.428956, -0.208903,
		0.021067, -0.472301, 0.881186,
		-0.476655, 0.770019, 0.424112,
		31.208973, 31.367935, 37.351788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093166, 30.553749, 37.589905>,  <31.542631, 30.828920, 37.054909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093166, 30.553749, 37.589905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456436, 30.389561, 37.557091>,  <32.674397, 30.291046, 37.537403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456436, 30.389561, 37.557091>,  <32.093166, 30.553749, 37.589905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456436, 30.389561, 37.557091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082921, -0.368502, 0.925921,
		-0.410301, -0.834094, -0.368701,
		0.908172, -0.410479, -0.082033,
		32.728889, 30.266418, 37.532482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090511, 29.975651, 37.905518>,  <32.093166, 30.553749, 37.589905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090511, 29.975651, 37.905518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468060, 30.107615, 37.899052>,  <32.694588, 30.186792, 37.895172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468060, 30.107615, 37.899052>,  <32.090511, 29.975651, 37.905518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468060, 30.107615, 37.899052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001764, 0.053963, 0.998541,
		0.330301, -0.942469, 0.051517,
		0.943874, 0.329910, -0.016162,
		32.751221, 30.206587, 37.894203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478874, 29.504023, 38.316792>,  <32.090511, 29.975651, 37.905518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478874, 29.504023, 38.316792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666195, 29.856924, 38.297527>,  <32.778587, 30.068665, 38.285969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666195, 29.856924, 38.297527>,  <32.478874, 29.504023, 38.316792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666195, 29.856924, 38.297527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020240, 0.065209, 0.997666,
		0.883335, -0.466238, 0.048395,
		0.468306, 0.882253, -0.048165,
		32.806686, 30.121599, 38.283077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090607, 29.492199, 38.791157>,  <32.478874, 29.504023, 38.316792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090607, 29.492199, 38.791157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021164, 29.881796, 38.732910>,  <32.979500, 30.115553, 38.697964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021164, 29.881796, 38.732910>,  <33.090607, 29.492199, 38.791157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021164, 29.881796, 38.732910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113552, 0.166669, 0.979453,
		0.978247, 0.153501, -0.139533,
		-0.173603, 0.973991, -0.145613,
		32.969082, 30.173994, 38.689228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593994, 29.879421, 39.148876>,  <33.090607, 29.492199, 38.791157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593994, 29.879421, 39.148876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293602, 30.141678, 39.117458>,  <33.113369, 30.299032, 39.098610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293602, 30.141678, 39.117458>,  <33.593994, 29.879421, 39.148876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293602, 30.141678, 39.117458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077410, 0.205535, 0.975583,
		0.655776, 0.726560, -0.205106,
		-0.750976, 0.655642, -0.078542,
		33.068310, 30.338371, 39.093895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920811, 30.534342, 39.418106>,  <33.593994, 29.879421, 39.148876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920811, 30.534342, 39.418106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522495, 30.569323, 39.429111>,  <33.283504, 30.590311, 39.435715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522495, 30.569323, 39.429111>,  <33.920811, 30.534342, 39.418106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522495, 30.569323, 39.429111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048145, 0.243451, 0.968718,
		0.078021, 0.965963, -0.246636,
		-0.995789, 0.087454, 0.027513,
		33.223759, 30.595558, 39.437366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750824, 31.263783, 39.512585>,  <33.920811, 30.534342, 39.418106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750824, 31.263783, 39.512585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477245, 31.010189, 39.656963>,  <33.313099, 30.858032, 39.743591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477245, 31.010189, 39.656963>,  <33.750824, 31.263783, 39.512585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477245, 31.010189, 39.656963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108682, 0.400699, 0.909741,
		-0.721392, 0.661442, -0.205154,
		-0.683946, -0.633983, 0.360947,
		33.272060, 30.819994, 39.765247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450703, 31.700993, 39.949978>,  <33.750824, 31.263783, 39.512585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450703, 31.700993, 39.949978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345238, 31.339111, 40.083839>,  <33.281960, 31.121983, 40.164158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345238, 31.339111, 40.083839>,  <33.450703, 31.700993, 39.949978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345238, 31.339111, 40.083839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005054, 0.345632, 0.938356,
		-0.964601, 0.249103, -0.086559,
		-0.263665, -0.904702, 0.334656,
		33.266140, 31.067701, 40.184235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950970, 31.738029, 40.488663>,  <33.450703, 31.700993, 39.949978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950970, 31.738029, 40.488663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051170, 31.356861, 40.556995>,  <33.111290, 31.128159, 40.597996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051170, 31.356861, 40.556995>,  <32.950970, 31.738029, 40.488663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051170, 31.356861, 40.556995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021167, 0.181810, 0.983106,
		-0.967884, -0.242657, 0.065714,
		0.250505, -0.952923, 0.170835,
		33.126324, 31.070984, 40.608246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574020, 31.538452, 41.097656>,  <32.950970, 31.738029, 40.488663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574020, 31.538452, 41.097656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846745, 31.248323, 41.059631>,  <33.010380, 31.074245, 41.036816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846745, 31.248323, 41.059631>,  <32.574020, 31.538452, 41.097656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846745, 31.248323, 41.059631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027532, -0.104414, 0.994153,
		-0.731008, -0.680444, -0.051221,
		0.681813, -0.725324, -0.095062,
		33.051289, 31.030727, 41.031113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344734, 30.925478, 41.389256>,  <32.574020, 31.538452, 41.097656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344734, 30.925478, 41.389256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744225, 30.907436, 41.380150>,  <32.983917, 30.896612, 41.374687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744225, 30.907436, 41.380150>,  <32.344734, 30.925478, 41.389256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744225, 30.907436, 41.380150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017414, -0.115611, 0.993142,
		-0.047423, -0.992270, -0.114678,
		0.998723, -0.045101, -0.022762,
		33.043842, 30.893906, 41.373322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461941, 30.253981, 41.702114>,  <32.344734, 30.925478, 41.389256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461941, 30.253981, 41.702114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798946, 30.467148, 41.733540>,  <33.001148, 30.595049, 41.752396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798946, 30.467148, 41.733540>,  <32.461941, 30.253981, 41.702114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798946, 30.467148, 41.733540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195558, -0.438483, 0.877206,
		0.501929, -0.723692, -0.473643,
		0.842511, 0.532920, 0.078564,
		33.051701, 30.627024, 41.757107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959381, 29.875845, 41.958179>,  <32.461941, 30.253981, 41.702114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959381, 29.875845, 41.958179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132076, 30.228088, 42.036285>,  <33.235691, 30.439434, 42.083149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132076, 30.228088, 42.036285>,  <32.959381, 29.875845, 41.958179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132076, 30.228088, 42.036285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349426, -0.362865, 0.863846,
		0.831568, -0.304722, -0.464370,
		0.431736, 0.880610, 0.195269,
		33.261597, 30.492271, 42.094868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481205, 29.683823, 42.465313>,  <32.959381, 29.875845, 41.958179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481205, 29.683823, 42.465313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457306, 30.083035, 42.472977>,  <33.442966, 30.322561, 42.477573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457306, 30.083035, 42.472977>,  <33.481205, 29.683823, 42.465313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457306, 30.083035, 42.472977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312585, 0.000477, 0.949890,
		0.948009, 0.062745, -0.311997,
		-0.059749, 0.998030, 0.019161,
		33.439381, 30.382442, 42.478725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249805, 29.943470, 42.633743>,  <33.481205, 29.683823, 42.465313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249805, 29.943470, 42.633743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966156, 30.201227, 42.748219>,  <33.795967, 30.355883, 42.816902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966156, 30.201227, 42.748219>,  <34.249805, 29.943470, 42.633743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966156, 30.201227, 42.748219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347450, -0.033829, 0.937088,
		0.613537, 0.763944, -0.199906,
		-0.709120, 0.644395, 0.286188,
		33.753422, 30.394547, 42.834076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581982, 30.297758, 43.069733>,  <34.249805, 29.943470, 42.633743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581982, 30.297758, 43.069733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194130, 30.353970, 43.149811>,  <33.961418, 30.387695, 43.197857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194130, 30.353970, 43.149811>,  <34.581982, 30.297758, 43.069733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194130, 30.353970, 43.149811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197239, -0.034817, 0.979737,
		0.144651, 0.989464, 0.006042,
		-0.969625, 0.140528, 0.200197,
		33.903244, 30.396128, 43.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523018, 30.777510, 43.577122>,  <34.581982, 30.297758, 43.069733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523018, 30.777510, 43.577122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162781, 30.606255, 43.607121>,  <33.946636, 30.503502, 43.625118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162781, 30.606255, 43.607121>,  <34.523018, 30.777510, 43.577122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162781, 30.606255, 43.607121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131903, -0.104796, 0.985708,
		-0.414160, 0.897616, 0.150852,
		-0.900596, -0.428138, 0.074996,
		33.892601, 30.477814, 43.629620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161552, 31.230040, 43.941029>,  <34.523018, 30.777510, 43.577122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161552, 31.230040, 43.941029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999699, 30.867968, 43.993053>,  <33.902584, 30.650724, 44.024269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999699, 30.867968, 43.993053>,  <34.161552, 31.230040, 43.941029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999699, 30.867968, 43.993053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259056, 0.022936, 0.965590,
		-0.877017, 0.424408, 0.225211,
		-0.404638, -0.905181, 0.130061,
		33.878307, 30.596413, 44.032070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060760, 31.225479, 44.637882>,  <34.161552, 31.230040, 43.941029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060760, 31.225479, 44.637882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002644, 30.837902, 44.557838>,  <33.967773, 30.605356, 44.509811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002644, 30.837902, 44.557838>,  <34.060760, 31.225479, 44.637882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002644, 30.837902, 44.557838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113369, -0.217224, 0.969516,
		-0.982872, 0.118180, 0.141410,
		-0.145295, -0.968941, -0.200105,
		33.959057, 30.547220, 44.497807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696758, 31.038860, 45.209942>,  <34.060760, 31.225479, 44.637882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696758, 31.038860, 45.209942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855251, 30.711452, 45.043556>,  <33.950348, 30.515007, 44.943726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855251, 30.711452, 45.043556>,  <33.696758, 31.038860, 45.209942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855251, 30.711452, 45.043556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356125, -0.280565, 0.891324,
		-0.846272, -0.501303, 0.180328,
		0.396230, -0.818522, -0.415961,
		33.974121, 30.465897, 44.918766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631569, 30.541431, 45.682198>,  <33.696758, 31.038860, 45.209942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631569, 30.541431, 45.682198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898220, 30.334364, 45.467674>,  <34.058212, 30.210123, 45.338959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898220, 30.334364, 45.467674>,  <33.631569, 30.541431, 45.682198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898220, 30.334364, 45.467674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257792, -0.514982, 0.817519,
		-0.699392, -0.683238, -0.209851,
		0.666629, -0.517668, -0.536307,
		34.098209, 30.179064, 45.306782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564484, 29.964481, 45.947281>,  <33.631569, 30.541431, 45.682198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564484, 29.964481, 45.947281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927689, 29.949745, 45.780350>,  <34.145611, 29.940905, 45.680191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927689, 29.949745, 45.780350>,  <33.564484, 29.964481, 45.947281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927689, 29.949745, 45.780350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306891, -0.619611, 0.722427,
		-0.285191, -0.784044, -0.551308,
		0.908011, -0.036839, -0.417323,
		34.200092, 29.938694, 45.655151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807686, 29.270561, 45.958389>,  <33.564484, 29.964481, 45.947281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807686, 29.270561, 45.958389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137722, 29.494202, 45.925835>,  <34.335743, 29.628386, 45.906303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137722, 29.494202, 45.925835>,  <33.807686, 29.270561, 45.958389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137722, 29.494202, 45.925835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320924, -0.345227, 0.881944,
		0.465002, -0.753805, -0.464275,
		0.825094, 0.559103, -0.081383,
		34.385250, 29.661932, 45.901421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332203, 28.846411, 46.041580>,  <33.807686, 29.270561, 45.958389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332203, 28.846411, 46.041580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502419, 29.198292, 46.126472>,  <34.604549, 29.409420, 46.177406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502419, 29.198292, 46.126472>,  <34.332203, 28.846411, 46.041580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502419, 29.198292, 46.126472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369208, -0.382892, 0.846805,
		0.826196, -0.281994, -0.487729,
		0.425542, 0.879700, 0.212229,
		34.630081, 29.462202, 46.190140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945854, 28.657753, 46.344788>,  <34.332203, 28.846411, 46.041580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945854, 28.657753, 46.344788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906616, 29.047575, 46.425407>,  <34.883076, 29.281467, 46.473782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906616, 29.047575, 46.425407>,  <34.945854, 28.657753, 46.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906616, 29.047575, 46.425407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504923, -0.125789, 0.853950,
		0.857573, 0.185534, -0.479735,
		-0.098092, 0.974553, 0.201553,
		34.877190, 29.339941, 46.485874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596848, 28.828442, 46.683399>,  <34.945854, 28.657753, 46.344788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596848, 28.828442, 46.683399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326649, 29.097635, 46.803932>,  <35.164532, 29.259151, 46.876251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326649, 29.097635, 46.803932>,  <35.596848, 28.828442, 46.683399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326649, 29.097635, 46.803932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289209, -0.134107, 0.947826,
		0.678281, 0.727399, -0.104044,
		-0.675495, 0.672983, 0.301333,
		35.124001, 29.299530, 46.894333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139099, 29.485004, 46.653618>,  <35.596848, 28.828442, 46.683399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139099, 29.485004, 46.653618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532482, 29.543901, 46.695808>,  <36.768513, 29.579239, 46.721123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532482, 29.543901, 46.695808>,  <36.139099, 29.485004, 46.653618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532482, 29.543901, 46.695808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049130, 0.343629, -0.937819,
		-0.174330, 0.927490, 0.330712,
		0.983461, 0.147242, 0.105473,
		36.827522, 29.588074, 46.727451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260384, 30.150787, 46.361103>,  <36.139099, 29.485004, 46.653618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260384, 30.150787, 46.361103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598381, 29.937237, 46.348640>,  <36.801178, 29.809107, 46.341164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598381, 29.937237, 46.348640>,  <36.260384, 30.150787, 46.361103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598381, 29.937237, 46.348640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074098, 0.174574, -0.981852,
		0.529624, 0.827346, 0.187073,
		0.844990, -0.533874, -0.031154,
		36.851879, 29.777075, 46.339294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683800, 30.479795, 45.816116>,  <36.260384, 30.150787, 46.361103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683800, 30.479795, 45.816116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853149, 30.122856, 45.878693>,  <36.954758, 29.908693, 45.916237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853149, 30.122856, 45.878693>,  <36.683800, 30.479795, 45.816116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853149, 30.122856, 45.878693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217483, -0.067523, -0.973726,
		0.879463, 0.446273, 0.165483,
		0.423373, -0.892346, 0.156440,
		36.980160, 29.855152, 45.925625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238869, 30.545715, 45.421101>,  <36.683800, 30.479795, 45.816116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238869, 30.545715, 45.421101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170597, 30.153225, 45.457016>,  <37.129635, 29.917730, 45.478565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170597, 30.153225, 45.457016>,  <37.238869, 30.545715, 45.421101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170597, 30.153225, 45.457016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294675, -0.137783, -0.945612,
		0.940231, -0.134942, 0.312660,
		-0.170682, -0.981227, 0.089784,
		37.119392, 29.858856, 45.483952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832760, 30.304668, 45.234421>,  <37.238869, 30.545715, 45.421101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832760, 30.304668, 45.234421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595417, 29.987072, 45.181488>,  <37.453011, 29.796515, 45.149731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595417, 29.987072, 45.181488>,  <37.832760, 30.304668, 45.234421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595417, 29.987072, 45.181488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375622, -0.127723, -0.917930,
		0.711925, -0.594364, 0.374025,
		-0.593355, -0.793989, -0.132327,
		37.417412, 29.748875, 45.141788>
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
