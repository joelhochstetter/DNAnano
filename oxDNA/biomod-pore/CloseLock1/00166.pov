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
	<23.925713, 34.926327, 35.090595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277794, 35.102200, 35.019131>,  <24.489042, 35.207722, 34.976250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277794, 35.102200, 35.019131>,  <23.925713, 34.926327, 35.090595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277794, 35.102200, 35.019131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449367, -0.893209, 0.015726,
		-0.152671, -0.094129, -0.983784,
		0.880205, 0.439679, -0.178665,
		24.541855, 35.234104, 34.965530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227262, 34.700188, 34.423035>,  <23.925713, 34.926327, 35.090595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227262, 34.700188, 34.423035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478632, 34.795101, 34.719353>,  <24.629454, 34.852051, 34.897144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478632, 34.795101, 34.719353>,  <24.227262, 34.700188, 34.423035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478632, 34.795101, 34.719353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362320, -0.932012, -0.008822,
		0.688339, 0.273949, -0.671670,
		0.628422, 0.237287, 0.740798,
		24.667158, 34.866287, 34.941593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916969, 34.469082, 34.280117>,  <24.227262, 34.700188, 34.423035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916969, 34.469082, 34.280117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932714, 34.491173, 34.679195>,  <24.942162, 34.504425, 34.918644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932714, 34.491173, 34.679195>,  <24.916969, 34.469082, 34.280117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932714, 34.491173, 34.679195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361680, -0.931556, 0.037295,
		0.931471, 0.359380, -0.056639,
		0.039360, 0.055224, 0.997698,
		24.944523, 34.507740, 34.978504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386610, 33.944027, 34.340237>,  <24.916969, 34.469082, 34.280117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386610, 33.944027, 34.340237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263832, 34.032330, 34.710545>,  <25.190165, 34.085312, 34.932728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263832, 34.032330, 34.710545>,  <25.386610, 33.944027, 34.340237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263832, 34.032330, 34.710545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573116, -0.733710, 0.364976,
		0.759817, 0.642603, 0.098693,
		-0.306946, 0.220753, 0.925771,
		25.171749, 34.098557, 34.988277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942293, 33.987961, 34.790291>,  <25.386610, 33.944027, 34.340237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942293, 33.987961, 34.790291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637764, 33.903294, 35.035431>,  <25.455046, 33.852493, 35.182514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637764, 33.903294, 35.035431>,  <25.942293, 33.987961, 34.790291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637764, 33.903294, 35.035431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527328, -0.752090, 0.395330,
		0.377240, 0.624147, 0.684200,
		-0.761324, -0.211663, 0.612849,
		25.409367, 33.839794, 35.219284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268084, 33.897636, 35.480473>,  <25.942293, 33.987961, 34.790291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268084, 33.897636, 35.480473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929930, 33.693298, 35.418037>,  <25.727037, 33.570694, 35.380577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929930, 33.693298, 35.418037>,  <26.268084, 33.897636, 35.480473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929930, 33.693298, 35.418037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462696, -0.846330, 0.263890,
		-0.266908, 0.150868, 0.951840,
		-0.845383, -0.510847, -0.156086,
		25.676315, 33.540043, 35.371212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952362, 33.531994, 36.131016>,  <26.268084, 33.897636, 35.480473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952362, 33.531994, 36.131016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874174, 33.345356, 35.785976>,  <25.827261, 33.233372, 35.578953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874174, 33.345356, 35.785976>,  <25.952362, 33.531994, 36.131016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874174, 33.345356, 35.785976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366040, -0.850716, 0.377223,
		-0.909839, -0.242010, 0.337081,
		-0.195468, -0.466598, -0.862600,
		25.815533, 33.205376, 35.527195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651588, 32.888176, 36.254478>,  <25.952362, 33.531994, 36.131016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651588, 32.888176, 36.254478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802469, 32.864735, 35.884769>,  <25.892998, 32.850670, 35.662945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802469, 32.864735, 35.884769>,  <25.651588, 32.888176, 36.254478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802469, 32.864735, 35.884769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401437, -0.889023, 0.220197,
		-0.834605, -0.454097, -0.311818,
		0.377204, -0.058602, -0.924274,
		25.915630, 32.847153, 35.607487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980330, 32.185802, 36.309193>,  <25.651588, 32.888176, 36.254478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980330, 32.185802, 36.309193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058176, 32.346195, 35.951122>,  <26.104885, 32.442432, 35.736282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058176, 32.346195, 35.951122>,  <25.980330, 32.185802, 36.309193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058176, 32.346195, 35.951122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435578, -0.853033, -0.287412,
		-0.878860, -0.333982, -0.340677,
		0.194618, 0.400986, -0.895172,
		26.116562, 32.466492, 35.682571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617086, 31.893616, 35.662487>,  <25.980330, 32.185802, 36.309193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617086, 31.893616, 35.662487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973364, 32.042263, 35.557751>,  <26.187130, 32.131451, 35.494907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973364, 32.042263, 35.557751>,  <25.617086, 31.893616, 35.662487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973364, 32.042263, 35.557751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306513, -0.916293, -0.257794,
		-0.335728, 0.149357, -0.930043,
		0.890695, 0.371618, -0.261845,
		26.240572, 32.153748, 35.479198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741997, 31.402048, 35.156425>,  <25.617086, 31.893616, 35.662487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741997, 31.402048, 35.156425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091021, 31.561134, 35.269890>,  <26.300434, 31.656586, 35.337971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091021, 31.561134, 35.269890>,  <25.741997, 31.402048, 35.156425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091021, 31.561134, 35.269890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474634, -0.827623, -0.299604,
		0.115610, 0.396058, -0.910918,
		0.872558, 0.397715, 0.283664,
		26.352787, 31.680449, 35.354988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061939, 31.528194, 34.488190>,  <25.741997, 31.402048, 35.156425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061939, 31.528194, 34.488190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351692, 31.519938, 34.763824>,  <26.525543, 31.514984, 34.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351692, 31.519938, 34.763824>,  <26.061939, 31.528194, 34.488190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351692, 31.519938, 34.763824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398400, -0.803211, -0.442865,
		0.562627, 0.595336, -0.573608,
		0.724382, -0.020642, 0.689090,
		26.569006, 31.513744, 34.970551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637112, 31.526989, 34.131542>,  <26.061939, 31.528194, 34.488190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637112, 31.526989, 34.131542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743155, 31.383915, 34.489712>,  <26.806780, 31.298071, 34.704613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743155, 31.383915, 34.489712>,  <26.637112, 31.526989, 34.131542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743155, 31.383915, 34.489712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520569, -0.728584, -0.445166,
		0.811619, 0.584146, -0.006955,
		0.265109, -0.357684, 0.895421,
		26.822687, 31.276609, 34.758339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304235, 31.370180, 34.073811>,  <26.637112, 31.526989, 34.131542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304235, 31.370180, 34.073811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186632, 31.153517, 34.388813>,  <27.116070, 31.023520, 34.577816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186632, 31.153517, 34.388813>,  <27.304235, 31.370180, 34.073811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186632, 31.153517, 34.388813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656515, -0.713251, -0.245481,
		0.694656, 0.444837, 0.565307,
		-0.294007, -0.541658, 0.787507,
		27.098431, 30.991020, 34.625065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884584, 31.001707, 34.270424>,  <27.304235, 31.370180, 34.073811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884584, 31.001707, 34.270424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587076, 30.807800, 34.454514>,  <27.408571, 30.691456, 34.564968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587076, 30.807800, 34.454514>,  <27.884584, 31.001707, 34.270424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587076, 30.807800, 34.454514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525709, -0.849464, -0.045166,
		0.412841, 0.208353, 0.886652,
		-0.743769, -0.484767, 0.460227,
		27.363945, 30.662371, 34.592583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219053, 30.596672, 34.862061>,  <27.884584, 31.001707, 34.270424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219053, 30.596672, 34.862061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867167, 30.421041, 34.789055>,  <27.656034, 30.315662, 34.745251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867167, 30.421041, 34.789055>,  <28.219053, 30.596672, 34.862061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867167, 30.421041, 34.789055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464169, -0.876268, -0.129235,
		-0.103185, -0.198406, 0.974673,
		-0.879716, -0.439077, -0.182512,
		27.603252, 30.289318, 34.734303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316849, 29.961475, 35.246056>,  <28.219053, 30.596672, 34.862061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316849, 29.961475, 35.246056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046221, 29.912947, 34.955528>,  <27.883844, 29.883829, 34.781212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046221, 29.912947, 34.955528>,  <28.316849, 29.961475, 35.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046221, 29.912947, 34.955528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469698, -0.830737, -0.298763,
		-0.567132, -0.543284, 0.619035,
		-0.676568, -0.121321, -0.726317,
		27.843250, 29.876551, 34.737633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017637, 29.258326, 35.338276>,  <28.316849, 29.961475, 35.246056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017637, 29.258326, 35.338276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940828, 29.358484, 34.958714>,  <27.894743, 29.418579, 34.730976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940828, 29.358484, 34.958714>,  <28.017637, 29.258326, 35.338276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940828, 29.358484, 34.958714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540063, -0.780368, -0.315211,
		-0.819426, -0.572998, 0.014620,
		-0.192024, 0.250397, -0.948909,
		27.883221, 29.433603, 34.674042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957050, 28.620255, 34.996063>,  <28.017637, 29.258326, 35.338276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957050, 28.620255, 34.996063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043890, 28.885708, 34.709717>,  <28.095995, 29.044979, 34.537910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043890, 28.885708, 34.709717>,  <27.957050, 28.620255, 34.996063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043890, 28.885708, 34.709717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621484, -0.659485, -0.422890,
		-0.752745, -0.353088, -0.555612,
		0.217100, 0.663633, -0.715863,
		28.109020, 29.084797, 34.494957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050741, 28.179958, 34.360832>,  <27.957050, 28.620255, 34.996063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050741, 28.179958, 34.360832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222391, 28.534792, 34.292797>,  <28.325380, 28.747692, 34.251976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222391, 28.534792, 34.292797>,  <28.050741, 28.179958, 34.360832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222391, 28.534792, 34.292797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790163, -0.459916, -0.405118,
		-0.437602, 0.039445, -0.898303,
		0.429123, 0.887086, -0.170092,
		28.351128, 28.800919, 34.241768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155109, 28.259911, 33.617138>,  <28.050741, 28.179958, 34.360832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155109, 28.259911, 33.617138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416107, 28.523258, 33.767235>,  <28.572706, 28.681267, 33.857292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416107, 28.523258, 33.767235>,  <28.155109, 28.259911, 33.617138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416107, 28.523258, 33.767235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751008, -0.495681, -0.436218,
		-0.101194, 0.566436, -0.817869,
		0.652492, 0.658369, 0.375238,
		28.611855, 28.720770, 33.879807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617350, 28.350765, 33.080078>,  <28.155109, 28.259911, 33.617138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617350, 28.350765, 33.080078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839287, 28.502878, 33.376060>,  <28.972448, 28.594145, 33.553650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839287, 28.502878, 33.376060>,  <28.617350, 28.350765, 33.080078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839287, 28.502878, 33.376060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798222, -0.494032, -0.344637,
		0.234504, 0.781869, -0.577658,
		0.554842, 0.380280, 0.739957,
		29.005739, 28.616962, 33.598049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311642, 28.727688, 32.832813>,  <28.617350, 28.350765, 33.080078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311642, 28.727688, 32.832813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306021, 28.554556, 33.193359>,  <29.302649, 28.450678, 33.409687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306021, 28.554556, 33.193359>,  <29.311642, 28.727688, 32.832813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306021, 28.554556, 33.193359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772345, -0.577223, -0.265134,
		0.635048, 0.692440, 0.342405,
		-0.014055, -0.432828, 0.901367,
		29.301804, 28.424707, 33.463768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920910, 28.767620, 33.109447>,  <29.311642, 28.727688, 32.832813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920910, 28.767620, 33.109447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770336, 28.465115, 33.323498>,  <29.679993, 28.283611, 33.451927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770336, 28.465115, 33.323498>,  <29.920910, 28.767620, 33.109447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770336, 28.465115, 33.323498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877146, -0.476845, -0.056867,
		0.298180, 0.447980, 0.842853,
		-0.376435, -0.756262, 0.535130,
		29.657406, 28.238235, 33.484035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292871, 28.761501, 33.647339>,  <29.920910, 28.767620, 33.109447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292871, 28.761501, 33.647339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153387, 28.396187, 33.563137>,  <30.069696, 28.176998, 33.512615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153387, 28.396187, 33.563137>,  <30.292871, 28.761501, 33.647339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153387, 28.396187, 33.563137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934056, -0.357120, 0.002073,
		-0.077069, -0.195900, 0.977591,
		-0.348711, -0.913284, -0.210505,
		30.048773, 28.122202, 33.499985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684214, 28.237087, 34.056648>,  <30.292871, 28.761501, 33.647339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684214, 28.237087, 34.056648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565424, 28.039457, 33.729797>,  <30.494150, 27.920879, 33.533688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565424, 28.039457, 33.729797>,  <30.684214, 28.237087, 34.056648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565424, 28.039457, 33.729797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863303, -0.504611, -0.008645,
		-0.408060, -0.707995, 0.576394,
		-0.296976, -0.494075, -0.817126,
		30.476332, 27.891235, 33.484661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899405, 27.527374, 34.067039>,  <30.684214, 28.237087, 34.056648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899405, 27.527374, 34.067039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850786, 27.633919, 33.684566>,  <30.821615, 27.697845, 33.455082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850786, 27.633919, 33.684566>,  <30.899405, 27.527374, 34.067039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850786, 27.633919, 33.684566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901715, -0.373032, -0.218536,
		-0.414895, -0.888763, -0.194843,
		-0.121544, 0.266362, -0.956179,
		30.814323, 27.713827, 33.397713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007729, 26.989952, 33.594334>,  <30.899405, 27.527374, 34.067039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007729, 26.989952, 33.594334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100574, 27.327148, 33.400227>,  <31.156282, 27.529467, 33.283764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100574, 27.327148, 33.400227>,  <31.007729, 26.989952, 33.594334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100574, 27.327148, 33.400227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895328, -0.380145, -0.232117,
		-0.380145, -0.380596, -0.842993,
		0.232117, 0.842993, -0.485268,
		31.170210, 27.580046, 33.254646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811182, 26.896259, 32.916775>,  <31.007729, 26.989952, 33.594334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811182, 26.896259, 32.916775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126123, 27.094910, 33.062889>,  <31.315088, 27.214100, 33.150558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126123, 27.094910, 33.062889>,  <30.811182, 26.896259, 32.916775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126123, 27.094910, 33.062889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613179, -0.569443, -0.547490,
		-0.063891, 0.655054, -0.752876,
		0.787356, 0.496628, 0.365283,
		31.362329, 27.243898, 33.172474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334820, 26.772579, 32.358093>,  <30.811182, 26.896259, 32.916775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334820, 26.772579, 32.358093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538725, 26.918991, 32.669521>,  <31.661068, 27.006838, 32.856377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538725, 26.918991, 32.669521>,  <31.334820, 26.772579, 32.358093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538725, 26.918991, 32.669521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778426, -0.581583, -0.236250,
		0.366327, 0.726488, -0.581394,
		0.509762, 0.366028, 0.778567,
		31.691654, 27.028799, 32.903091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831083, 26.977570, 31.754648>,  <31.334820, 26.772579, 32.358093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831083, 26.977570, 31.754648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603607, 27.108311, 31.452719>,  <30.467121, 27.186756, 31.271561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603607, 27.108311, 31.452719>,  <30.831083, 26.977570, 31.754648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603607, 27.108311, 31.452719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389578, -0.701183, -0.597136,
		-0.724447, -0.633647, 0.271418,
		-0.568687, 0.326855, -0.754825,
		30.433001, 27.206366, 31.226273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400354, 26.566454, 31.469679>,  <30.831083, 26.977570, 31.754648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400354, 26.566454, 31.469679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524174, 26.814331, 31.181190>,  <30.598465, 26.963058, 31.008097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524174, 26.814331, 31.181190>,  <30.400354, 26.566454, 31.469679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524174, 26.814331, 31.181190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627160, -0.703167, -0.335003,
		-0.714737, -0.348620, -0.606312,
		0.309550, 0.619694, -0.721220,
		30.617039, 27.000238, 30.964825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318129, 26.258507, 30.881989>,  <30.400354, 26.566454, 31.469679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318129, 26.258507, 30.881989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623241, 26.514845, 30.847399>,  <30.806309, 26.668648, 30.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623241, 26.514845, 30.847399>,  <30.318129, 26.258507, 30.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623241, 26.514845, 30.847399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512597, -0.680743, -0.523291,
		-0.394214, 0.354832, -0.847756,
		0.762784, 0.640846, -0.086473,
		30.852077, 26.707098, 30.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472994, 26.128395, 30.233175>,  <30.318129, 26.258507, 30.881989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472994, 26.128395, 30.233175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801798, 26.232866, 30.435595>,  <30.999081, 26.295549, 30.557045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801798, 26.232866, 30.435595>,  <30.472994, 26.128395, 30.233175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801798, 26.232866, 30.435595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506802, -0.740775, -0.440913,
		0.259711, 0.618901, -0.741291,
		0.822011, 0.261178, 0.506047,
		31.048401, 26.311220, 30.587408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007002, 26.178486, 29.729771>,  <30.472994, 26.128395, 30.233175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007002, 26.178486, 29.729771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155190, 26.096737, 30.092203>,  <31.244102, 26.047688, 30.309662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155190, 26.096737, 30.092203>,  <31.007002, 26.178486, 29.729771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155190, 26.096737, 30.092203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675294, -0.610520, -0.413816,
		0.637753, 0.765178, -0.088169,
		0.370471, -0.204372, 0.906081,
		31.266331, 26.035425, 30.364027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708618, 26.920048, 30.076530>,  <31.007002, 26.178486, 29.729771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708618, 26.920048, 30.076530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448359, 27.175957, 29.912897>,  <30.292204, 27.329502, 29.814716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448359, 27.175957, 29.912897>,  <30.708618, 26.920048, 30.076530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448359, 27.175957, 29.912897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452567, 0.759276, 0.467634,
		0.609787, 0.119127, -0.783561,
		-0.650648, 0.639772, -0.409084,
		30.253164, 27.367887, 29.790173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171190, 27.450462, 29.951820>,  <30.708618, 26.920048, 30.076530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171190, 27.450462, 29.951820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788120, 27.557165, 29.995087>,  <30.558279, 27.621187, 30.021048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788120, 27.557165, 29.995087>,  <31.171190, 27.450462, 29.951820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788120, 27.557165, 29.995087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276469, 0.747749, 0.603686,
		0.080157, 0.608039, -0.789850,
		-0.957674, 0.266758, 0.108167,
		30.500818, 27.637192, 30.027536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066708, 28.177254, 29.803343>,  <31.171190, 27.450462, 29.951820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066708, 28.177254, 29.803343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741108, 28.078899, 30.013845>,  <30.545748, 28.019886, 30.140146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741108, 28.078899, 30.013845>,  <31.066708, 28.177254, 29.803343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741108, 28.078899, 30.013845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087929, 0.843385, 0.530066,
		-0.574171, 0.477747, -0.664895,
		-0.814000, -0.245885, 0.526255,
		30.496908, 28.005135, 30.171722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509216, 28.774567, 29.771671>,  <31.066708, 28.177254, 29.803343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509216, 28.774567, 29.771671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511349, 28.553440, 30.104986>,  <30.512629, 28.420763, 30.304976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511349, 28.553440, 30.104986>,  <30.509216, 28.774567, 29.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511349, 28.553440, 30.104986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095745, 0.829751, 0.549860,
		-0.995392, 0.076851, 0.057354,
		0.005333, -0.552818, 0.833285,
		30.512949, 28.387594, 30.354971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164928, 29.184008, 30.174982>,  <30.509216, 28.774567, 29.771671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164928, 29.184008, 30.174982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315084, 28.935650, 30.450249>,  <30.405178, 28.786636, 30.615408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315084, 28.935650, 30.450249>,  <30.164928, 29.184008, 30.174982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315084, 28.935650, 30.450249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048280, 0.754556, 0.654457,
		-0.925609, -0.212451, 0.313230,
		0.375390, -0.620894, 0.688167,
		30.427702, 28.749382, 30.656698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766171, 29.250462, 30.737612>,  <30.164928, 29.184008, 30.174982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766171, 29.250462, 30.737612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086576, 29.073832, 30.899294>,  <30.278820, 28.967854, 30.996304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086576, 29.073832, 30.899294>,  <29.766171, 29.250462, 30.737612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086576, 29.073832, 30.899294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023929, 0.651047, 0.758660,
		-0.598164, -0.617371, 0.510933,
		0.801016, -0.441577, 0.404206,
		30.326881, 28.941359, 31.020555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617662, 29.082344, 31.368618>,  <29.766171, 29.250462, 30.737612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617662, 29.082344, 31.368618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016495, 29.111790, 31.376762>,  <30.255795, 29.129457, 31.381649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016495, 29.111790, 31.376762>,  <29.617662, 29.082344, 31.368618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016495, 29.111790, 31.376762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059357, 0.579060, 0.813121,
		0.048066, -0.811954, 0.581738,
		0.997079, 0.073614, 0.020362,
		30.315619, 29.133873, 31.382872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936060, 28.830564, 32.037529>,  <29.617662, 29.082344, 31.368618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936060, 28.830564, 32.037529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205448, 29.080826, 31.880049>,  <30.367081, 29.230982, 31.785563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205448, 29.080826, 31.880049>,  <29.936060, 28.830564, 32.037529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205448, 29.080826, 31.880049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083373, 0.464899, 0.881429,
		0.734499, -0.626439, 0.260932,
		0.673469, 0.625654, -0.393696,
		30.407490, 29.268522, 31.761940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208225, 29.140505, 32.551590>,  <29.936060, 28.830564, 32.037529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208225, 29.140505, 32.551590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401228, 29.378735, 32.294693>,  <30.517029, 29.521671, 32.140553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401228, 29.378735, 32.294693>,  <30.208225, 29.140505, 32.551590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401228, 29.378735, 32.294693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210369, 0.632986, 0.745033,
		0.850254, -0.494592, 0.180130,
		0.482507, 0.595573, -0.642246,
		30.545980, 29.557407, 32.102020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896717, 29.429647, 32.874252>,  <30.208225, 29.140505, 32.551590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896717, 29.429647, 32.874252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777039, 29.682835, 32.588642>,  <30.705233, 29.834747, 32.417274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777039, 29.682835, 32.588642>,  <30.896717, 29.429647, 32.874252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777039, 29.682835, 32.588642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020303, 0.743913, 0.667968,
		0.953976, 0.214349, -0.209724,
		-0.299194, 0.632967, -0.714027,
		30.687281, 29.872725, 32.374435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264341, 29.944525, 32.987873>,  <30.896717, 29.429647, 32.874252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264341, 29.944525, 32.987873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944633, 30.074539, 32.785675>,  <30.752810, 30.152548, 32.664356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944633, 30.074539, 32.785675>,  <31.264341, 29.944525, 32.987873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944633, 30.074539, 32.785675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026166, 0.821504, 0.569602,
		0.600405, 0.468492, -0.648097,
		-0.799268, 0.325034, -0.505493,
		30.704853, 30.172049, 32.634026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293146, 30.780523, 32.953979>,  <31.264341, 29.944525, 32.987873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293146, 30.780523, 32.953979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913837, 30.687046, 32.868031>,  <30.686253, 30.630960, 32.816460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913837, 30.687046, 32.868031>,  <31.293146, 30.780523, 32.953979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913837, 30.687046, 32.868031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297393, 0.890755, 0.343676,
		0.111086, 0.389800, -0.914175,
		-0.948271, -0.233691, -0.214874,
		30.629356, 30.616940, 32.803570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110041, 31.309456, 32.526554>,  <31.293146, 30.780523, 32.953979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110041, 31.309456, 32.526554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758356, 31.178995, 32.665470>,  <30.547344, 31.100718, 32.748817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758356, 31.178995, 32.665470>,  <31.110041, 31.309456, 32.526554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758356, 31.178995, 32.665470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270989, 0.941889, 0.198520,
		-0.391853, 0.080431, -0.916506,
		-0.879214, -0.326153, 0.347286,
		30.494593, 31.081150, 32.769657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569422, 31.799660, 32.246849>,  <31.110041, 31.309456, 32.526554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569422, 31.799660, 32.246849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397228, 31.620085, 32.560062>,  <30.293913, 31.512341, 32.747990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397228, 31.620085, 32.560062>,  <30.569422, 31.799660, 32.246849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397228, 31.620085, 32.560062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391946, 0.874446, 0.285871,
		-0.813058, -0.183845, -0.552392,
		-0.430482, -0.448938, 0.783033,
		30.268084, 31.485403, 32.794971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014536, 32.255436, 32.279678>,  <30.569422, 31.799660, 32.246849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014536, 32.255436, 32.279678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980692, 32.037178, 32.613174>,  <29.960384, 31.906223, 32.813271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980692, 32.037178, 32.613174>,  <30.014536, 32.255436, 32.279678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980692, 32.037178, 32.613174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487874, 0.752262, 0.442810,
		-0.868804, -0.369291, -0.329855,
		-0.084612, -0.545642, 0.833736,
		29.955309, 31.873486, 32.863297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296177, 32.351353, 32.558735>,  <30.014536, 32.255436, 32.279678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296177, 32.351353, 32.558735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524504, 32.235645, 32.866108>,  <29.661499, 32.166222, 33.050533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524504, 32.235645, 32.866108>,  <29.296177, 32.351353, 32.558735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524504, 32.235645, 32.866108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401309, 0.718197, 0.568458,
		-0.716324, -0.632865, 0.293873,
		0.570816, -0.289267, 0.768436,
		29.695749, 32.148865, 33.096638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804247, 32.080536, 33.052177>,  <29.296177, 32.351353, 32.558735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804247, 32.080536, 33.052177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149595, 32.190430, 33.221462>,  <29.356804, 32.256367, 33.323032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149595, 32.190430, 33.221462>,  <28.804247, 32.080536, 33.052177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149595, 32.190430, 33.221462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490969, 0.650864, 0.579073,
		-0.116361, -0.707740, 0.696825,
		0.863371, 0.274738, 0.423213,
		29.408607, 32.272850, 33.348427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603283, 32.249462, 33.717968>,  <28.804247, 32.080536, 33.052177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603283, 32.249462, 33.717968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972639, 32.402813, 33.725750>,  <29.194252, 32.494823, 33.730419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972639, 32.402813, 33.725750>,  <28.603283, 32.249462, 33.717968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972639, 32.402813, 33.725750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333794, 0.776881, 0.533889,
		0.189567, -0.499480, 0.845331,
		0.923388, 0.383374, 0.019452,
		29.249655, 32.517826, 33.731586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682276, 32.459377, 34.364220>,  <28.603283, 32.249462, 33.717968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682276, 32.459377, 34.364220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958683, 32.666943, 34.162933>,  <29.124527, 32.791481, 34.042160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958683, 32.666943, 34.162933>,  <28.682276, 32.459377, 34.364220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958683, 32.666943, 34.162933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204340, 0.808008, 0.552601,
		0.693354, -0.279029, 0.664382,
		0.691018, 0.518908, -0.503218,
		29.165987, 32.822617, 34.011967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049622, 32.785095, 34.874943>,  <28.682276, 32.459377, 34.364220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049622, 32.785095, 34.874943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108500, 32.977642, 34.529316>,  <29.143827, 33.093170, 34.321938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108500, 32.977642, 34.529316>,  <29.049622, 32.785095, 34.874943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108500, 32.977642, 34.529316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292799, 0.855638, 0.426794,
		0.944776, 0.190175, 0.266892,
		0.147197, 0.481371, -0.864069,
		29.152658, 33.122055, 34.270096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542383, 33.348999, 35.024086>,  <29.049622, 32.785095, 34.874943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542383, 33.348999, 35.024086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352331, 33.462082, 34.690781>,  <29.238300, 33.529930, 34.490795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352331, 33.462082, 34.690781>,  <29.542383, 33.348999, 35.024086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352331, 33.462082, 34.690781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426142, 0.754588, 0.498999,
		0.769842, 0.592178, -0.238054,
		-0.475129, 0.282705, -0.833265,
		29.209793, 33.546894, 34.440800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632685, 34.068150, 34.956299>,  <29.542383, 33.348999, 35.024086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632685, 34.068150, 34.956299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320335, 34.030910, 34.709213>,  <29.132925, 34.008568, 34.560963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320335, 34.030910, 34.709213>,  <29.632685, 34.068150, 34.956299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320335, 34.030910, 34.709213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329459, 0.901507, 0.280611,
		0.530748, 0.422633, -0.734635,
		-0.780873, -0.093099, -0.617713,
		29.086073, 34.002979, 34.523899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081038, 33.580093, 34.610531>,  <29.632685, 34.068150, 34.956299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081038, 33.580093, 34.610531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316269, 33.853397, 34.437408>,  <30.457407, 34.017380, 34.333534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316269, 33.853397, 34.437408>,  <30.081038, 33.580093, 34.610531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316269, 33.853397, 34.437408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475506, -0.140803, -0.868371,
		-0.654262, 0.716473, 0.242090,
		0.588078, 0.683258, -0.432809,
		30.492693, 34.058376, 34.307568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829437, 33.729740, 34.743725>,  <30.081038, 33.580093, 34.610531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829437, 33.729740, 34.743725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178053, 33.812683, 34.565994>,  <31.387222, 33.862450, 34.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178053, 33.812683, 34.565994>,  <30.829437, 33.729740, 34.743725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178053, 33.812683, 34.565994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442876, -0.721804, 0.531846,
		-0.210438, -0.660305, -0.720911,
		0.871537, 0.207353, -0.444328,
		31.439514, 33.874889, 34.432697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080017, 33.277405, 34.165836>,  <30.829437, 33.729740, 34.743725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080017, 33.277405, 34.165836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358622, 33.445728, 34.398315>,  <31.525784, 33.546722, 34.537804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358622, 33.445728, 34.398315>,  <31.080017, 33.277405, 34.165836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358622, 33.445728, 34.398315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393149, -0.901385, 0.181489,
		0.600256, 0.102088, -0.793266,
		0.696510, 0.420812, 0.581198,
		31.567575, 33.571972, 34.572674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757572, 33.086342, 34.065685>,  <31.080017, 33.277405, 34.165836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757572, 33.086342, 34.065685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737211, 33.181358, 34.453701>,  <31.724995, 33.238369, 34.686512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737211, 33.181358, 34.453701>,  <31.757572, 33.086342, 34.065685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737211, 33.181358, 34.453701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342928, -0.908089, 0.240365,
		0.937982, 0.344889, -0.035237,
		-0.050901, 0.237542, 0.970043,
		31.721941, 33.252621, 34.744713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419739, 33.084103, 34.295277>,  <31.757572, 33.086342, 34.065685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419739, 33.084103, 34.295277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183197, 33.012985, 34.609905>,  <32.041275, 32.970314, 34.798683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183197, 33.012985, 34.609905>,  <32.419739, 33.084103, 34.295277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183197, 33.012985, 34.609905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620849, -0.722850, 0.303372,
		0.514637, 0.667742, 0.537838,
		-0.591350, -0.177790, 0.786573,
		32.005791, 32.959648, 34.845879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770355, 33.043053, 34.856266>,  <32.419739, 33.084103, 34.295277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770355, 33.043053, 34.856266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448772, 32.820042, 34.939037>,  <32.255825, 32.686234, 34.988701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448772, 32.820042, 34.939037>,  <32.770355, 33.043053, 34.856266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448772, 32.820042, 34.939037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593270, -0.775943, 0.214340,
		0.041061, 0.295082, 0.954589,
		-0.803955, -0.557528, 0.206925,
		32.207584, 32.652782, 35.001114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207600, 33.422577, 34.398163>,  <32.770355, 33.043053, 34.856266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207600, 33.422577, 34.398163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312641, 33.036911, 34.413280>,  <33.375668, 32.805511, 34.422352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312641, 33.036911, 34.413280>,  <33.207600, 33.422577, 34.398163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312641, 33.036911, 34.413280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694470, 0.161670, -0.701124,
		0.669887, 0.210366, 0.712037,
		0.262608, -0.964162, 0.037792,
		33.391422, 32.747662, 34.424618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829922, 33.184765, 34.649883>,  <33.207600, 33.422577, 34.398163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829922, 33.184765, 34.649883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695789, 32.949085, 34.355835>,  <33.615311, 32.807678, 34.179405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695789, 32.949085, 34.355835>,  <33.829922, 33.184765, 34.649883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695789, 32.949085, 34.355835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782637, 0.260146, -0.565512,
		0.524438, -0.764962, 0.373896,
		-0.335327, -0.589201, -0.735118,
		33.595192, 32.772324, 34.135300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861145, 33.288826, 33.971130>,  <33.829922, 33.184765, 34.649883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861145, 33.288826, 33.971130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172428, 33.454197, 34.160225>,  <34.359196, 33.553421, 34.273682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172428, 33.454197, 34.160225>,  <33.861145, 33.288826, 33.971130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172428, 33.454197, 34.160225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440671, -0.176838, 0.880078,
		0.447446, -0.893200, 0.044570,
		0.778204, 0.413428, 0.472733,
		34.405888, 33.578224, 34.302044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457062, 33.314308, 33.783684>,  <33.861145, 33.288826, 33.971130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457062, 33.314308, 33.783684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789280, 33.508545, 33.674583>,  <34.988609, 33.625088, 33.609123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789280, 33.508545, 33.674583>,  <34.457062, 33.314308, 33.783684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789280, 33.508545, 33.674583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203734, 0.190896, 0.960235,
		0.518354, -0.853086, 0.059615,
		0.830543, 0.485596, -0.272754,
		35.038445, 33.654224, 33.592758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106068, 33.130959, 34.169315>,  <34.457062, 33.314308, 33.783684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106068, 33.130959, 34.169315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117363, 33.513924, 34.054375>,  <35.124138, 33.743702, 33.985413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117363, 33.513924, 34.054375>,  <35.106068, 33.130959, 34.169315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117363, 33.513924, 34.054375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103831, 0.283098, 0.953454,
		0.994194, -0.056755, -0.091416,
		0.028233, 0.957410, -0.287347,
		35.125832, 33.801147, 33.968170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709446, 33.359280, 34.533333>,  <35.106068, 33.130959, 34.169315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709446, 33.359280, 34.533333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482544, 33.676529, 34.444626>,  <35.346405, 33.866879, 34.391403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482544, 33.676529, 34.444626>,  <35.709446, 33.359280, 34.533333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482544, 33.676529, 34.444626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088487, 0.326421, 0.941073,
		0.818776, 0.514203, -0.255345,
		-0.567253, 0.793123, -0.221765,
		35.312366, 33.914467, 34.378098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081238, 33.869366, 34.754688>,  <35.709446, 33.359280, 34.533333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081238, 33.869366, 34.754688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699589, 33.987282, 34.733704>,  <35.470600, 34.058029, 34.721111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699589, 33.987282, 34.733704>,  <36.081238, 33.869366, 34.754688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699589, 33.987282, 34.733704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046621, 0.026807, 0.998553,
		0.295767, 0.955187, -0.011834,
		-0.954122, 0.294787, -0.052461,
		35.413353, 34.075718, 34.717964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047409, 34.384045, 35.231827>,  <36.081238, 33.869366, 34.754688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047409, 34.384045, 35.231827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659473, 34.304161, 35.175934>,  <35.426712, 34.256233, 35.142399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659473, 34.304161, 35.175934>,  <36.047409, 34.384045, 35.231827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659473, 34.304161, 35.175934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176280, 0.178793, 0.967966,
		-0.168324, 0.963406, -0.208604,
		-0.969842, -0.199704, -0.139734,
		35.368523, 34.244251, 35.134014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700062, 34.965729, 35.535103>,  <36.047409, 34.384045, 35.231827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700062, 34.965729, 35.535103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441055, 34.661221, 35.521309>,  <35.285652, 34.478516, 35.513031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441055, 34.661221, 35.521309>,  <35.700062, 34.965729, 35.535103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441055, 34.661221, 35.521309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181606, 0.110200, 0.977177,
		-0.740094, 0.639003, -0.209608,
		-0.647518, -0.761269, -0.034488,
		35.246799, 34.432838, 35.510963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281261, 35.136333, 36.102913>,  <35.700062, 34.965729, 35.535103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281261, 35.136333, 36.102913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209965, 34.754036, 36.009293>,  <35.167187, 34.524658, 35.953121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209965, 34.754036, 36.009293>,  <35.281261, 35.136333, 36.102913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209965, 34.754036, 36.009293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104971, -0.218035, 0.970279,
		-0.978371, 0.197517, -0.061462,
		-0.178246, -0.955745, -0.234052,
		35.156490, 34.467312, 35.939075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585552, 34.944534, 36.288635>,  <35.281261, 35.136333, 36.102913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585552, 34.944534, 36.288635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799755, 34.606754, 36.283768>,  <34.928276, 34.404087, 36.280846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799755, 34.606754, 36.283768>,  <34.585552, 34.944534, 36.288635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799755, 34.606754, 36.283768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223910, -0.155855, 0.962067,
		-0.814310, -0.512465, -0.272540,
		0.535503, -0.844445, -0.012168,
		34.960407, 34.353420, 36.280117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195999, 34.558537, 36.782249>,  <34.585552, 34.944534, 36.288635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195999, 34.558537, 36.782249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551723, 34.379932, 36.742722>,  <34.765156, 34.272770, 36.719006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551723, 34.379932, 36.742722>,  <34.195999, 34.558537, 36.782249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551723, 34.379932, 36.742722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037392, -0.144360, 0.988818,
		-0.455779, -0.883058, -0.111685,
		0.889307, -0.446506, -0.098815,
		34.818516, 34.245979, 36.713078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185432, 33.955132, 37.210819>,  <34.195999, 34.558537, 36.782249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185432, 33.955132, 37.210819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575092, 34.023056, 37.151237>,  <34.808887, 34.063812, 37.115486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575092, 34.023056, 37.151237>,  <34.185432, 33.955132, 37.210819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575092, 34.023056, 37.151237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194722, -0.297071, 0.934790,
		0.114487, -0.939635, -0.322459,
		0.974154, 0.169811, -0.148957,
		34.867340, 34.073997, 37.106552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460491, 33.364197, 37.337406>,  <34.185432, 33.955132, 37.210819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460491, 33.364197, 37.337406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741814, 33.641113, 37.402027>,  <34.910606, 33.807262, 37.440800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741814, 33.641113, 37.402027>,  <34.460491, 33.364197, 37.337406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741814, 33.641113, 37.402027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077211, -0.300302, 0.950714,
		0.706684, -0.656167, -0.264657,
		0.703304, 0.692289, 0.161555,
		34.952805, 33.848801, 37.450493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942616, 33.091469, 37.627495>,  <34.460491, 33.364197, 37.337406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942616, 33.091469, 37.627495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903919, 33.475624, 37.732033>,  <34.880703, 33.706116, 37.794754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903919, 33.475624, 37.732033>,  <34.942616, 33.091469, 37.627495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903919, 33.475624, 37.732033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057700, -0.267545, 0.961816,
		0.993636, 0.077967, 0.081297,
		-0.096741, 0.960386, 0.261343,
		34.874897, 33.763741, 37.810436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312176, 33.041649, 38.233002>,  <34.942616, 33.091469, 37.627495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312176, 33.041649, 38.233002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116428, 33.390160, 38.247932>,  <34.998978, 33.599266, 38.256893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116428, 33.390160, 38.247932>,  <35.312176, 33.041649, 38.233002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116428, 33.390160, 38.247932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170765, -0.137716, 0.975640,
		0.855193, 0.471075, 0.216178,
		-0.489371, 0.871277, 0.037331,
		34.969616, 33.651543, 38.259132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719032, 33.579430, 38.637558>,  <35.312176, 33.041649, 38.233002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719032, 33.579430, 38.637558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328209, 33.664501, 38.641865>,  <35.093716, 33.715546, 38.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328209, 33.664501, 38.641865>,  <35.719032, 33.579430, 38.637558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328209, 33.664501, 38.641865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019623, -0.140282, 0.989917,
		0.212048, 0.966999, 0.141238,
		-0.977062, 0.212682, 0.010771,
		35.035091, 33.728306, 38.645096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637997, 33.941418, 39.227791>,  <35.719032, 33.579430, 38.637558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637997, 33.941418, 39.227791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265770, 33.821583, 39.143612>,  <35.042435, 33.749683, 39.093105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265770, 33.821583, 39.143612>,  <35.637997, 33.941418, 39.227791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265770, 33.821583, 39.143612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116541, -0.302517, 0.945992,
		-0.347072, 0.904837, 0.246599,
		-0.930569, -0.299588, -0.210446,
		34.986599, 33.731705, 39.080479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339458, 34.030281, 39.818150>,  <35.637997, 33.941418, 39.227791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339458, 34.030281, 39.818150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056232, 33.836639, 39.612514>,  <34.886295, 33.720455, 39.489132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056232, 33.836639, 39.612514>,  <35.339458, 34.030281, 39.818150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056232, 33.836639, 39.612514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356591, -0.383249, 0.852035,
		-0.609499, 0.786614, 0.098737,
		-0.708064, -0.484105, -0.514089,
		34.843815, 33.691406, 39.458286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612488, 34.112556, 40.123951>,  <35.339458, 34.030281, 39.818150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612488, 34.112556, 40.123951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580013, 33.767109, 39.924923>,  <34.560528, 33.559841, 39.805504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580013, 33.767109, 39.924923>,  <34.612488, 34.112556, 40.123951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580013, 33.767109, 39.924923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460245, -0.410326, 0.787279,
		-0.884072, 0.292919, -0.364163,
		-0.081183, -0.863616, -0.497572,
		34.555660, 33.508026, 39.775650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916298, 33.937344, 40.092278>,  <34.612488, 34.112556, 40.123951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916298, 33.937344, 40.092278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117916, 33.597553, 40.029881>,  <34.238888, 33.393681, 39.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117916, 33.597553, 40.029881>,  <33.916298, 33.937344, 40.092278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117916, 33.597553, 40.029881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361737, -0.371652, 0.854998,
		-0.784273, -0.374529, -0.494615,
		0.504046, -0.849472, -0.155996,
		34.269131, 33.342712, 39.983082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394920, 33.422031, 40.166332>,  <33.916298, 33.937344, 40.092278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394920, 33.422031, 40.166332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743797, 33.238522, 40.234226>,  <33.953121, 33.128414, 40.274963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743797, 33.238522, 40.234226>,  <33.394920, 33.422031, 40.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743797, 33.238522, 40.234226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381445, -0.420621, 0.823151,
		-0.306245, -0.782690, -0.541859,
		0.872189, -0.458775, 0.169740,
		34.005455, 33.100887, 40.285149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281563, 32.690617, 40.125668>,  <33.394920, 33.422031, 40.166332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281563, 32.690617, 40.125668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633175, 32.674511, 40.315693>,  <33.844143, 32.664848, 40.429707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633175, 32.674511, 40.315693>,  <33.281563, 32.690617, 40.125668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633175, 32.674511, 40.315693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439409, -0.455054, 0.774497,
		0.184993, -0.889553, -0.417700,
		0.879032, -0.040265, 0.475059,
		33.896885, 32.662430, 40.458210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358131, 31.996876, 40.394352>,  <33.281563, 32.690617, 40.125668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358131, 31.996876, 40.394352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557690, 32.251835, 40.629242>,  <33.677425, 32.404808, 40.770176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557690, 32.251835, 40.629242>,  <33.358131, 31.996876, 40.394352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557690, 32.251835, 40.629242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293960, -0.512951, 0.806517,
		0.815288, -0.574985, -0.068538,
		0.498892, 0.637396, 0.587225,
		33.707355, 32.443054, 40.805408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595005, 31.514568, 40.848934>,  <33.358131, 31.996876, 40.394352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595005, 31.514568, 40.848934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650089, 31.861580, 41.040112>,  <33.683140, 32.069786, 41.154819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650089, 31.861580, 41.040112>,  <33.595005, 31.514568, 40.848934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650089, 31.861580, 41.040112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237015, -0.439659, 0.866328,
		0.961697, -0.232581, 0.145072,
		0.137709, 0.867529, 0.477944,
		33.691402, 32.121838, 41.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690895, 31.304321, 41.637653>,  <33.595005, 31.514568, 40.848934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690895, 31.304321, 41.637653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639847, 31.698517, 41.682419>,  <33.609219, 31.935034, 41.709278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639847, 31.698517, 41.682419>,  <33.690895, 31.304321, 41.637653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639847, 31.698517, 41.682419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310474, -0.146861, 0.939169,
		0.941976, 0.085111, 0.324712,
		-0.127621, 0.985489, 0.111915,
		33.601559, 31.994164, 41.715992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906242, 31.449604, 42.252129>,  <33.690895, 31.304321, 41.637653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906242, 31.449604, 42.252129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693783, 31.780348, 42.178173>,  <33.566307, 31.978794, 42.133801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693783, 31.780348, 42.178173>,  <33.906242, 31.449604, 42.252129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693783, 31.780348, 42.178173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279823, 0.034785, 0.959421,
		0.799737, 0.561334, 0.212898,
		-0.531150, 0.826858, -0.184893,
		33.534439, 32.028404, 42.122704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194298, 31.955463, 42.695862>,  <33.906242, 31.449604, 42.252129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194298, 31.955463, 42.695862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820599, 32.067287, 42.607300>,  <33.596378, 32.134384, 42.554165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820599, 32.067287, 42.607300>,  <34.194298, 31.955463, 42.695862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820599, 32.067287, 42.607300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280053, -0.190798, 0.940833,
		0.220778, 0.940979, 0.256545,
		-0.934252, 0.279562, -0.221400,
		33.540321, 32.151157, 42.540878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971077, 32.372482, 43.290138>,  <34.194298, 31.955463, 42.695862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971077, 32.372482, 43.290138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613873, 32.286243, 43.132126>,  <33.399551, 32.234501, 43.037319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613873, 32.286243, 43.132126>,  <33.971077, 32.372482, 43.290138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613873, 32.286243, 43.132126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388098, -0.075479, 0.918522,
		-0.227844, 0.973562, -0.016268,
		-0.893010, -0.215593, -0.395035,
		33.345970, 32.221565, 43.013615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434532, 32.741257, 43.710831>,  <33.971077, 32.372482, 43.290138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434532, 32.741257, 43.710831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236698, 32.472370, 43.490463>,  <33.117996, 32.311039, 43.358242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236698, 32.472370, 43.490463>,  <33.434532, 32.741257, 43.710831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236698, 32.472370, 43.490463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653980, -0.129666, 0.745317,
		-0.572448, 0.728914, -0.375483,
		-0.494585, -0.672214, -0.550922,
		33.088322, 32.270706, 43.325188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788517, 32.874657, 43.726021>,  <33.434532, 32.741257, 43.710831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788517, 32.874657, 43.726021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758217, 32.494129, 43.606514>,  <32.740036, 32.265812, 43.534809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758217, 32.494129, 43.606514>,  <32.788517, 32.874657, 43.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758217, 32.494129, 43.606514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648046, -0.180749, 0.739842,
		-0.757825, 0.249654, -0.602805,
		-0.075748, -0.951316, -0.298763,
		32.735493, 32.208733, 43.516884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186806, 32.707588, 43.863033>,  <32.788517, 32.874657, 43.726021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186806, 32.707588, 43.863033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299263, 32.325447, 43.826683>,  <32.366737, 32.096161, 43.804874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299263, 32.325447, 43.826683>,  <32.186806, 32.707588, 43.863033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299263, 32.325447, 43.826683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497720, -0.226116, 0.837345,
		-0.820508, -0.190185, -0.539070,
		0.281143, -0.955354, -0.090871,
		32.383606, 32.038841, 43.799423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604309, 32.288300, 44.003128>,  <32.186806, 32.707588, 43.863033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604309, 32.288300, 44.003128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926540, 32.058018, 44.059143>,  <32.119881, 31.919849, 44.092751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926540, 32.058018, 44.059143>,  <31.604309, 32.288300, 44.003128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926540, 32.058018, 44.059143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456963, -0.453267, 0.765332,
		-0.377130, -0.680526, -0.628217,
		0.805579, -0.575702, 0.140035,
		32.168213, 31.885307, 44.101154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297529, 31.638380, 44.206860>,  <31.604309, 32.288300, 44.003128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297529, 31.638380, 44.206860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668089, 31.620226, 44.356377>,  <31.890425, 31.609333, 44.446087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668089, 31.620226, 44.356377>,  <31.297529, 31.638380, 44.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668089, 31.620226, 44.356377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363576, -0.366052, 0.856632,
		0.097952, -0.929487, -0.355611,
		0.926400, -0.045383, 0.373795,
		31.946009, 31.606611, 44.468513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217928, 31.237896, 44.681198>,  <31.297529, 31.638380, 44.206860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217928, 31.237896, 44.681198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592642, 31.335802, 44.781216>,  <31.817471, 31.394547, 44.841225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592642, 31.335802, 44.781216>,  <31.217928, 31.237896, 44.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592642, 31.335802, 44.781216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126810, -0.428537, 0.894581,
		0.326115, -0.869739, -0.370409,
		0.936786, 0.244765, 0.250044,
		31.873678, 31.409231, 44.856228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614990, 30.616089, 44.880486>,  <31.217928, 31.237896, 44.681198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614990, 30.616089, 44.880486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746952, 30.944695, 45.066505>,  <31.826128, 31.141859, 45.178120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746952, 30.944695, 45.066505>,  <31.614990, 30.616089, 44.880486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746952, 30.944695, 45.066505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151567, -0.440149, 0.885040,
		0.931768, -0.362465, -0.020691,
		0.329903, 0.821516, 0.465054,
		31.845922, 31.191149, 45.206020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161175, 30.443102, 45.266598>,  <31.614990, 30.616089, 44.880486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161175, 30.443102, 45.266598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997530, 30.764980, 45.438686>,  <31.899343, 30.958107, 45.541939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997530, 30.764980, 45.438686>,  <32.161175, 30.443102, 45.266598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997530, 30.764980, 45.438686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173340, -0.531433, 0.829175,
		0.895868, 0.264653, 0.356903,
		-0.409113, 0.804697, 0.430219,
		31.874796, 31.006390, 45.567753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201530, 30.167288, 45.850243>,  <32.161175, 30.443102, 45.266598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201530, 30.167288, 45.850243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985168, 30.493305, 45.933315>,  <31.855352, 30.688915, 45.983158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985168, 30.493305, 45.933315>,  <32.201530, 30.167288, 45.850243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985168, 30.493305, 45.933315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216326, -0.373423, 0.902085,
		0.812790, 0.443014, 0.378301,
		-0.540903, 0.815042, 0.207679,
		31.822897, 30.737818, 45.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310452, 30.227898, 46.528175>,  <32.201530, 30.167288, 45.850243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310452, 30.227898, 46.528175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976419, 30.435207, 46.454376>,  <31.776001, 30.559593, 46.410099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976419, 30.435207, 46.454376>,  <32.310452, 30.227898, 46.528175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976419, 30.435207, 46.454376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402291, -0.346542, 0.847390,
		0.375247, 0.781855, 0.497887,
		-0.835076, 0.518277, -0.184494,
		31.725897, 30.590691, 46.399029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185604, 30.757652, 47.118084>,  <32.310452, 30.227898, 46.528175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185604, 30.757652, 47.118084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845060, 30.703096, 46.915466>,  <31.640734, 30.670362, 46.793896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845060, 30.703096, 46.915466>,  <32.185604, 30.757652, 47.118084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845060, 30.703096, 46.915466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409711, -0.430142, 0.804434,
		-0.327600, 0.892399, 0.310327,
		-0.851361, -0.136388, -0.506540,
		31.589653, 30.662180, 46.763504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660040, 31.057762, 47.500748>,  <32.185604, 30.757652, 47.118084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660040, 31.057762, 47.500748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497234, 30.766823, 47.279732>,  <31.399551, 30.592258, 47.147121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497234, 30.766823, 47.279732>,  <31.660040, 31.057762, 47.500748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497234, 30.766823, 47.279732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281240, -0.475740, 0.833413,
		-0.869048, 0.494608, -0.010926,
		-0.407014, -0.727348, -0.552544,
		31.375130, 30.548618, 47.113968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998270, 30.934738, 47.775177>,  <31.660040, 31.057762, 47.500748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998270, 30.934738, 47.775177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102283, 30.596270, 47.589111>,  <31.164692, 30.393188, 47.477474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102283, 30.596270, 47.589111>,  <30.998270, 30.934738, 47.775177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102283, 30.596270, 47.589111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234476, -0.522646, 0.819672,
		-0.936699, -0.104072, -0.334312,
		0.260031, -0.846174, -0.465160,
		31.180292, 30.342417, 47.449562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191402, 31.571188, 48.160133>,  <30.998270, 30.934738, 47.775177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191402, 31.571188, 48.160133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026165, 31.333563, 48.436234>,  <30.927023, 31.190989, 48.601894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026165, 31.333563, 48.436234>,  <31.191402, 31.571188, 48.160133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026165, 31.333563, 48.436234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354721, -0.803042, -0.478849,
		0.838765, 0.047036, 0.542458,
		-0.413094, -0.594063, 0.690248,
		30.902237, 31.155344, 48.643307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766741, 31.183353, 48.625755>,  <31.191402, 31.571188, 48.160133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766741, 31.183353, 48.625755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414724, 30.999851, 48.576641>,  <31.203514, 30.889750, 48.547173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414724, 30.999851, 48.576641>,  <31.766741, 31.183353, 48.625755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414724, 30.999851, 48.576641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468367, -0.795679, -0.384092,
		0.078508, -0.395524, 0.915094,
		-0.880039, -0.458755, -0.122783,
		31.150713, 30.862225, 48.539806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909777, 30.424023, 48.882721>,  <31.766741, 31.183353, 48.625755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909777, 30.424023, 48.882721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622513, 30.485743, 48.611298>,  <31.450153, 30.522774, 48.448444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622513, 30.485743, 48.611298>,  <31.909777, 30.424023, 48.882721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622513, 30.485743, 48.611298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291952, -0.818331, -0.495075,
		-0.631672, -0.553649, 0.542645,
		-0.718161, 0.154299, -0.678555,
		31.407064, 30.532032, 48.407730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420353, 29.956858, 48.804684>,  <31.909777, 30.424023, 48.882721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420353, 29.956858, 48.804684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429789, 30.067350, 48.420364>,  <31.435450, 30.133646, 48.189774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429789, 30.067350, 48.420364>,  <31.420353, 29.956858, 48.804684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429789, 30.067350, 48.420364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060129, -0.959722, -0.274443,
		-0.997912, -0.051298, -0.039249,
		0.023590, 0.276230, -0.960802,
		31.436865, 30.150219, 48.132122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958130, 29.604099, 48.549381>,  <31.420353, 29.956858, 48.804684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958130, 29.604099, 48.549381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236303, 29.704597, 48.280087>,  <31.403208, 29.764896, 48.118511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236303, 29.704597, 48.280087>,  <30.958130, 29.604099, 48.549381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236303, 29.704597, 48.280087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075122, -0.957170, -0.279611,
		-0.714652, 0.143877, -0.684524,
		0.695435, 0.251247, -0.673235,
		31.444933, 29.779972, 48.078117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733786, 29.367527, 47.897583>,  <30.958130, 29.604099, 48.549381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733786, 29.367527, 47.897583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132959, 29.369396, 47.923210>,  <31.372463, 29.370518, 47.938587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132959, 29.369396, 47.923210>,  <30.733786, 29.367527, 47.897583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132959, 29.369396, 47.923210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009439, -0.997194, -0.074265,
		0.063544, 0.074716, -0.995178,
		0.997934, 0.004674, 0.064071,
		31.432341, 29.370798, 47.942432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735210, 28.818657, 48.399170>,  <30.733786, 29.367527, 47.897583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735210, 28.818657, 48.399170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793896, 28.441444, 48.518612>,  <30.829107, 28.215117, 48.590279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793896, 28.441444, 48.518612>,  <30.735210, 28.818657, 48.399170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793896, 28.441444, 48.518612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215148, -0.264228, -0.940157,
		0.965498, 0.202179, 0.164125,
		0.146713, -0.943031, 0.298610,
		30.837910, 28.158535, 48.608196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339317, 28.581059, 48.176369>,  <30.735210, 28.818657, 48.399170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339317, 28.581059, 48.176369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092527, 28.269804, 48.223442>,  <30.944454, 28.083052, 48.251686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092527, 28.269804, 48.223442>,  <31.339317, 28.581059, 48.176369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092527, 28.269804, 48.223442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207618, -0.305180, -0.929387,
		0.759103, -0.548974, 0.349843,
		-0.616974, -0.778134, 0.117686,
		30.907434, 28.036364, 48.258747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720901, 27.897488, 48.040192>,  <31.339317, 28.581059, 48.176369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720901, 27.897488, 48.040192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336424, 27.875891, 47.931973>,  <31.105738, 27.862932, 47.867043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336424, 27.875891, 47.931973>,  <31.720901, 27.897488, 48.040192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336424, 27.875891, 47.931973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275816, -0.209297, -0.938147,
		-0.005971, -0.976360, 0.216067,
		-0.961192, -0.053993, -0.270546,
		31.048067, 27.859694, 47.850807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566505, 27.162540, 47.720772>,  <31.720901, 27.897488, 48.040192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566505, 27.162540, 47.720772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330414, 27.466208, 47.611012>,  <31.188759, 27.648407, 47.545155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330414, 27.466208, 47.611012>,  <31.566505, 27.162540, 47.720772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330414, 27.466208, 47.611012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264131, -0.139589, -0.954332,
		-0.762800, -0.635753, -0.118130,
		-0.590230, 0.759166, -0.274401,
		31.153345, 27.693956, 47.528690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099352, 27.003477, 47.227749>,  <31.566505, 27.162540, 47.720772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099352, 27.003477, 47.227749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165495, 27.390867, 47.153225>,  <31.205181, 27.623301, 47.108509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165495, 27.390867, 47.153225>,  <31.099352, 27.003477, 47.227749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165495, 27.390867, 47.153225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409481, -0.239279, -0.880381,
		-0.897208, 0.069288, -0.436139,
		0.165359, 0.968475, -0.186311,
		31.215103, 27.681410, 47.097332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944183, 27.137964, 46.555141>,  <31.099352, 27.003477, 47.227749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944183, 27.137964, 46.555141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160099, 27.460457, 46.651989>,  <31.289648, 27.653952, 46.710098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160099, 27.460457, 46.651989>,  <30.944183, 27.137964, 46.555141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160099, 27.460457, 46.651989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270206, 0.106454, -0.956899,
		-0.797254, 0.581947, -0.160385,
		0.539791, 0.806229, 0.242116,
		31.322037, 27.702326, 46.724625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753782, 27.688822, 46.135792>,  <30.944183, 27.137964, 46.555141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753782, 27.688822, 46.135792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119753, 27.774916, 46.272369>,  <31.339336, 27.826572, 46.354317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119753, 27.774916, 46.272369>,  <30.753782, 27.688822, 46.135792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119753, 27.774916, 46.272369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299708, 0.204312, -0.931897,
		-0.270336, 0.954951, 0.122423,
		0.914928, 0.215234, 0.341439,
		31.394232, 27.839485, 46.374802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928129, 28.282307, 45.765400>,  <30.753782, 27.688822, 46.135792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928129, 28.282307, 45.765400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275846, 28.150425, 45.912708>,  <31.484476, 28.071297, 46.001095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275846, 28.150425, 45.912708>,  <30.928129, 28.282307, 45.765400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275846, 28.150425, 45.912708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481266, 0.394585, -0.782743,
		0.112758, 0.857670, 0.501685,
		0.869292, -0.329704, 0.368275,
		31.536634, 28.051514, 46.023190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452162, 28.773563, 45.481602>,  <30.928129, 28.282307, 45.765400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452162, 28.773563, 45.481602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651476, 28.435555, 45.559212>,  <31.771065, 28.232750, 45.605778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651476, 28.435555, 45.559212>,  <31.452162, 28.773563, 45.481602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651476, 28.435555, 45.559212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582717, 0.160698, -0.796628,
		0.641989, 0.510013, 0.572483,
		0.498288, -0.845022, 0.194027,
		31.800962, 28.182047, 45.617420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166550, 28.928078, 45.545807>,  <31.452162, 28.773563, 45.481602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166550, 28.928078, 45.545807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158855, 28.535942, 45.467255>,  <32.154240, 28.300661, 45.420124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158855, 28.535942, 45.467255>,  <32.166550, 28.928078, 45.545807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158855, 28.535942, 45.467255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597309, 0.146245, -0.788564,
		0.801780, -0.132473, 0.582752,
		-0.019239, -0.980339, -0.196384,
		32.153084, 28.241840, 45.408340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718147, 28.799431, 45.388161>,  <32.166550, 28.928078, 45.545807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718147, 28.799431, 45.388161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551399, 28.479261, 45.215858>,  <32.451351, 28.287161, 45.112476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551399, 28.479261, 45.215858>,  <32.718147, 28.799431, 45.388161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551399, 28.479261, 45.215858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620700, 0.095532, -0.778206,
		0.664044, -0.591776, 0.456998,
		-0.416866, -0.800422, -0.430752,
		32.426338, 28.239136, 45.086632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273426, 28.360453, 45.150787>,  <32.718147, 28.799431, 45.388161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273426, 28.360453, 45.150787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961369, 28.275291, 44.915485>,  <32.774136, 28.224194, 44.774303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961369, 28.275291, 44.915485>,  <33.273426, 28.360453, 45.150787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961369, 28.275291, 44.915485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582852, 0.094259, -0.807093,
		0.227284, -0.972515, 0.050557,
		-0.780144, -0.212907, -0.588256,
		32.727325, 28.211420, 44.739010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600338, 27.947990, 44.702381>,  <33.273426, 28.360453, 45.150787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600338, 27.947990, 44.702381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255196, 28.066389, 44.538498>,  <33.048111, 28.137428, 44.440170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255196, 28.066389, 44.538498>,  <33.600338, 27.947990, 44.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255196, 28.066389, 44.538498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472708, 0.185616, -0.861449,
		-0.178941, -0.936980, -0.300081,
		-0.862860, 0.295999, -0.409703,
		32.996338, 28.155190, 44.415588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693169, 27.697105, 43.988026>,  <33.600338, 27.947990, 44.702381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693169, 27.697105, 43.988026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386265, 27.948072, 43.934872>,  <33.202122, 28.098652, 43.902981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386265, 27.948072, 43.934872>,  <33.693169, 27.697105, 43.988026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386265, 27.948072, 43.934872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457938, 0.390903, -0.798429,
		-0.449002, -0.673457, -0.587242,
		-0.767262, 0.627416, -0.132885,
		33.156086, 28.136297, 43.895004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424934, 27.608276, 43.337357>,  <33.693169, 27.697105, 43.988026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424934, 27.608276, 43.337357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306526, 27.976580, 43.439007>,  <33.235481, 28.197561, 43.499996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306526, 27.976580, 43.439007>,  <33.424934, 27.608276, 43.337357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306526, 27.976580, 43.439007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440609, 0.367682, -0.818947,
		-0.847489, -0.130450, -0.514534,
		-0.296016, 0.920757, 0.254129,
		33.217720, 28.252808, 43.515244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964378, 27.956671, 42.828869>,  <33.424934, 27.608276, 43.337357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964378, 27.956671, 42.828869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128799, 28.262697, 43.027145>,  <33.227451, 28.446312, 43.146111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128799, 28.262697, 43.027145>,  <32.964378, 27.956671, 42.828869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128799, 28.262697, 43.027145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262034, 0.421644, -0.868075,
		-0.873138, 0.486715, -0.027153,
		0.411057, 0.765065, 0.495690,
		33.252117, 28.492216, 43.175854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753857, 28.558802, 42.515545>,  <32.964378, 27.956671, 42.828869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753857, 28.558802, 42.515545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079147, 28.695196, 42.704178>,  <33.274323, 28.777033, 42.817356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079147, 28.695196, 42.704178>,  <32.753857, 28.558802, 42.515545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079147, 28.695196, 42.704178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315248, 0.423028, -0.849510,
		-0.489165, 0.839509, 0.236522,
		0.813226, 0.340987, 0.471584,
		33.323116, 28.797493, 42.845654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707092, 29.190603, 42.357899>,  <32.753857, 28.558802, 42.515545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707092, 29.190603, 42.357899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083351, 29.172443, 42.492435>,  <33.309105, 29.161549, 42.573158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083351, 29.172443, 42.492435>,  <32.707092, 29.190603, 42.357899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083351, 29.172443, 42.492435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280986, 0.660006, -0.696734,
		-0.190360, 0.749887, 0.633587,
		0.940643, -0.045399, 0.336347,
		33.365543, 29.158823, 42.593338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926182, 29.817621, 42.558224>,  <32.707092, 29.190603, 42.357899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926182, 29.817621, 42.558224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255394, 29.611931, 42.461727>,  <33.452919, 29.488516, 42.403828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255394, 29.611931, 42.461727>,  <32.926182, 29.817621, 42.558224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255394, 29.611931, 42.461727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280720, 0.737474, -0.614271,
		0.493783, 0.437840, 0.751315,
		0.823028, -0.514226, -0.241241,
		33.502304, 29.457663, 42.389355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435379, 30.389400, 42.439205>,  <32.926182, 29.817621, 42.558224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435379, 30.389400, 42.439205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557281, 30.046379, 42.273445>,  <33.630421, 29.840567, 42.173988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557281, 30.046379, 42.273445>,  <33.435379, 30.389400, 42.439205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557281, 30.046379, 42.273445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350166, 0.505504, -0.788574,
		0.885726, 0.095211, 0.454340,
		0.304752, -0.857555, -0.414398,
		33.648708, 29.789112, 42.149124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952629, 30.607849, 42.039242>,  <33.435379, 30.389400, 42.439205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952629, 30.607849, 42.039242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884880, 30.247267, 41.879898>,  <33.844231, 30.030916, 41.784294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884880, 30.247267, 41.879898>,  <33.952629, 30.607849, 42.039242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884880, 30.247267, 41.879898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305393, 0.336295, -0.890865,
		0.937042, -0.272546, 0.218338,
		-0.169376, -0.901457, -0.398356,
		33.834068, 29.976830, 41.760391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554821, 30.314631, 41.674122>,  <33.952629, 30.607849, 42.039242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554821, 30.314631, 41.674122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257114, 30.099749, 41.515388>,  <34.078491, 29.970819, 41.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257114, 30.099749, 41.515388>,  <34.554821, 30.314631, 41.674122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257114, 30.099749, 41.515388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333025, 0.216535, -0.917718,
		0.578930, -0.815184, 0.017743,
		-0.744267, -0.537204, -0.396835,
		34.033833, 29.938587, 41.396339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845490, 30.052898, 41.121243>,  <34.554821, 30.314631, 41.674122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845490, 30.052898, 41.121243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460457, 29.973068, 41.047905>,  <34.229439, 29.925171, 41.003902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460457, 29.973068, 41.047905>,  <34.845490, 30.052898, 41.121243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460457, 29.973068, 41.047905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134570, 0.235236, -0.962577,
		0.235236, -0.951228, -0.199576,
		0.962577, 0.199576, 0.183343,
		34.171684, 29.913195, 40.992901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844795, 29.554634, 40.660622>,  <34.845490, 30.052898, 41.121243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844795, 29.554634, 40.660622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502563, 29.746864, 40.583641>,  <34.297226, 29.862202, 40.537453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502563, 29.746864, 40.583641>,  <34.844795, 29.554634, 40.660622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502563, 29.746864, 40.583641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282130, 0.121160, -0.951695,
		-0.434043, -0.868544, -0.239247,
		-0.855576, 0.480575, -0.192454,
		34.245892, 29.891037, 40.525906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851109, 29.491520, 39.934109>,  <34.844795, 29.554634, 40.660622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851109, 29.491520, 39.934109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536064, 29.730616, 39.993942>,  <34.347038, 29.874073, 40.029842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536064, 29.730616, 39.993942>,  <34.851109, 29.491520, 39.934109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536064, 29.730616, 39.993942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019332, 0.218664, -0.975609,
		-0.615867, -0.771293, -0.160667,
		-0.787613, 0.597740, 0.149579,
		34.299782, 29.909937, 40.038815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298687, 29.240671, 39.663975>,  <34.851109, 29.491520, 39.934109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298687, 29.240671, 39.663975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222786, 29.633389, 39.660442>,  <34.177246, 29.869019, 39.658325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222786, 29.633389, 39.660442>,  <34.298687, 29.240671, 39.663975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222786, 29.633389, 39.660442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253891, 0.040380, -0.966389,
		-0.948437, -0.185618, -0.256931,
		-0.189754, 0.981792, -0.008829,
		34.165859, 29.927927, 39.657795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843464, 29.404816, 39.123852>,  <34.298687, 29.240671, 39.663975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843464, 29.404816, 39.123852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048946, 29.743626, 39.178482>,  <34.172237, 29.946911, 39.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048946, 29.743626, 39.178482>,  <33.843464, 29.404816, 39.123852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048946, 29.743626, 39.178482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123462, 0.084551, -0.988741,
		-0.849036, 0.524786, -0.061141,
		0.513708, 0.847025, 0.136577,
		34.203060, 29.997732, 39.219456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617741, 29.778601, 38.544247>,  <33.843464, 29.404816, 39.123852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617741, 29.778601, 38.544247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945473, 29.954439, 38.691460>,  <34.142113, 30.059942, 38.779789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945473, 29.954439, 38.691460>,  <33.617741, 29.778601, 38.544247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945473, 29.954439, 38.691460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319046, 0.183748, -0.929756,
		-0.476340, 0.879201, 0.010300,
		0.819335, 0.439594, 0.368032,
		34.191273, 30.086317, 38.801868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722946, 30.318068, 38.109589>,  <33.617741, 29.778601, 38.544247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722946, 30.318068, 38.109589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071770, 30.276234, 38.300831>,  <34.281063, 30.251133, 38.415577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071770, 30.276234, 38.300831>,  <33.722946, 30.318068, 38.109589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071770, 30.276234, 38.300831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487880, 0.262922, -0.832374,
		-0.038649, 0.959132, 0.280307,
		0.872055, -0.104585, 0.478103,
		34.333385, 30.244858, 38.444263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036484, 30.888714, 37.891895>,  <33.722946, 30.318068, 38.109589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036484, 30.888714, 37.891895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338009, 30.670254, 38.038040>,  <34.518925, 30.539179, 38.125725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338009, 30.670254, 38.038040>,  <34.036484, 30.888714, 37.891895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338009, 30.670254, 38.038040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574429, 0.277742, -0.769994,
		0.319055, 0.790305, 0.523089,
		0.753814, -0.546148, 0.365359,
		34.564152, 30.506409, 38.147648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654556, 31.347530, 37.887627>,  <34.036484, 30.888714, 37.891895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654556, 31.347530, 37.887627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770203, 30.965397, 37.863136>,  <34.839592, 30.736116, 37.848442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770203, 30.965397, 37.863136>,  <34.654556, 31.347530, 37.887627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770203, 30.965397, 37.863136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623646, 0.236485, -0.745077,
		0.726276, 0.177234, 0.664162,
		0.289118, -0.955334, -0.061222,
		34.856937, 30.678797, 37.844769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418900, 31.345264, 37.876472>,  <34.654556, 31.347530, 37.887627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418900, 31.345264, 37.876472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323196, 30.991560, 37.716053>,  <35.265774, 30.779337, 37.619801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323196, 30.991560, 37.716053>,  <35.418900, 31.345264, 37.876472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323196, 30.991560, 37.716053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592410, 0.194311, -0.781853,
		0.769290, -0.424646, 0.477355,
		-0.239256, -0.884262, -0.401046,
		35.251419, 30.726282, 37.595737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047642, 31.076914, 37.790909>,  <35.418900, 31.345264, 37.876472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047642, 31.076914, 37.790909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795361, 30.885496, 37.546543>,  <35.643993, 30.770645, 37.399925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795361, 30.885496, 37.546543>,  <36.047642, 31.076914, 37.790909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795361, 30.885496, 37.546543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617343, 0.167614, -0.768631,
		0.470221, -0.861918, 0.189711,
		-0.630698, -0.478543, -0.610915,
		35.606152, 30.741934, 37.363270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460693, 30.743418, 37.307976>,  <36.047642, 31.076914, 37.790909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460693, 30.743418, 37.307976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108704, 30.742474, 37.117970>,  <35.897511, 30.741907, 37.003967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108704, 30.742474, 37.117970>,  <36.460693, 30.743418, 37.307976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108704, 30.742474, 37.117970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469451, 0.148349, -0.870407,
		0.072520, -0.988932, -0.129437,
		-0.879975, -0.002357, -0.475013,
		35.844711, 30.741766, 36.975464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623188, 30.446787, 36.744091>,  <36.460693, 30.743418, 37.307976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623188, 30.446787, 36.744091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265907, 30.600365, 36.650475>,  <36.051540, 30.692513, 36.594303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265907, 30.600365, 36.650475>,  <36.623188, 30.446787, 36.744091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265907, 30.600365, 36.650475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323844, 0.188186, -0.927206,
		-0.311954, -0.903975, -0.292427,
		-0.893202, 0.383946, -0.234042,
		35.997948, 30.715548, 36.580261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440353, 30.177364, 36.103718>,  <36.623188, 30.446787, 36.744091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440353, 30.177364, 36.103718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216637, 30.508890, 36.110065>,  <36.082405, 30.707806, 36.113873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216637, 30.508890, 36.110065>,  <36.440353, 30.177364, 36.103718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216637, 30.508890, 36.110065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308199, 0.225667, -0.924169,
		-0.769546, -0.511994, -0.381655,
		-0.559296, 0.828816, 0.015865,
		36.048847, 30.757534, 36.114826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857677, 30.237740, 35.528027>,  <36.440353, 30.177364, 36.103718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857677, 30.237740, 35.528027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924847, 30.622734, 35.613281>,  <35.965149, 30.853731, 35.664433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924847, 30.622734, 35.613281>,  <35.857677, 30.237740, 35.528027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924847, 30.622734, 35.613281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177100, 0.183232, -0.966986,
		-0.969762, 0.200121, -0.139688,
		0.167919, 0.962485, 0.213132,
		35.975224, 30.911480, 35.677219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499588, 30.624039, 35.005001>,  <35.857677, 30.237740, 35.528027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499588, 30.624039, 35.005001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709061, 30.937241, 35.139263>,  <35.834743, 31.125162, 35.219822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709061, 30.937241, 35.139263>,  <35.499588, 30.624039, 35.005001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709061, 30.937241, 35.139263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257231, 0.230281, -0.938511,
		-0.812152, 0.577821, -0.080818,
		0.523680, 0.783003, 0.335657,
		35.866165, 31.172142, 35.239960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213783, 31.216658, 34.718365>,  <35.499588, 30.624039, 35.005001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213783, 31.216658, 34.718365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575062, 31.350199, 34.826271>,  <35.791828, 31.430325, 34.891014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575062, 31.350199, 34.826271>,  <35.213783, 31.216658, 34.718365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575062, 31.350199, 34.826271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080489, 0.485603, -0.870466,
		-0.421606, 0.807918, 0.411725,
		0.903200, 0.333854, 0.269762,
		35.846024, 31.450356, 34.907200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222107, 31.927486, 34.493370>,  <35.213783, 31.216658, 34.718365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222107, 31.927486, 34.493370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610699, 31.857582, 34.557476>,  <35.843853, 31.815639, 34.595940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610699, 31.857582, 34.557476>,  <35.222107, 31.927486, 34.493370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610699, 31.857582, 34.557476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215868, 0.372146, -0.902722,
		0.098117, 0.911573, 0.399258,
		0.971480, -0.174760, 0.160266,
		35.902142, 31.805155, 34.605556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595238, 32.535675, 34.333797>,  <35.222107, 31.927486, 34.493370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595238, 32.535675, 34.333797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841999, 32.225597, 34.279381>,  <35.990055, 32.039551, 34.246731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841999, 32.225597, 34.279381>,  <35.595238, 32.535675, 34.333797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841999, 32.225597, 34.279381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204597, 0.324866, -0.923365,
		0.759981, 0.541792, 0.359012,
		0.616903, -0.775192, -0.136043,
		36.027069, 31.993040, 34.238567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050018, 32.884281, 33.999111>,  <35.595238, 32.535675, 34.333797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050018, 32.884281, 33.999111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147312, 32.497181, 33.972916>,  <36.205688, 32.264919, 33.957199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147312, 32.497181, 33.972916>,  <36.050018, 32.884281, 33.999111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147312, 32.497181, 33.972916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483581, 0.179513, -0.856694,
		0.840824, 0.176711, 0.511652,
		0.243235, -0.967754, -0.065485,
		36.220284, 32.206856, 33.953270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747036, 32.772633, 34.009365>,  <36.050018, 32.884281, 33.999111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747036, 32.772633, 34.009365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574566, 32.477139, 33.802151>,  <36.471085, 32.299843, 33.677822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574566, 32.477139, 33.802151>,  <36.747036, 32.772633, 34.009365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574566, 32.477139, 33.802151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556332, 0.234347, -0.797230,
		0.710341, -0.631944, 0.309938,
		-0.431172, -0.738734, -0.518037,
		36.445213, 32.255520, 33.646740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361759, 32.323875, 33.874424>,  <36.747036, 32.772633, 34.009365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361759, 32.323875, 33.874424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378338, 32.263138, 33.479408>,  <37.388287, 32.226696, 33.242401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378338, 32.263138, 33.479408>,  <37.361759, 32.323875, 33.874424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378338, 32.263138, 33.479408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989133, 0.145777, 0.019101,
		0.141060, -0.977595, 0.156236,
		0.041449, -0.151844, -0.987535,
		37.390774, 32.217583, 33.183147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877987, 31.863136, 34.275406>,  <37.361759, 32.323875, 33.874424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877987, 31.863136, 34.275406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265800, 31.958536, 34.253059>,  <38.498489, 32.015778, 34.239651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265800, 31.958536, 34.253059>,  <37.877987, 31.863136, 34.275406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265800, 31.958536, 34.253059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190846, -0.592498, 0.782639,
		0.153558, -0.769457, -0.619964,
		0.969535, 0.238498, -0.055865,
		38.556660, 32.030087, 34.236301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177574, 31.298407, 34.394993>,  <37.877987, 31.863136, 34.275406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177574, 31.298407, 34.394993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479332, 31.554226, 34.454132>,  <38.660389, 31.707718, 34.489616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479332, 31.554226, 34.454132>,  <38.177574, 31.298407, 34.394993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479332, 31.554226, 34.454132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204891, -0.443405, 0.872589,
		0.623620, -0.627988, -0.465542,
		0.754399, 0.639549, 0.147847,
		38.705650, 31.746090, 34.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699924, 30.831993, 34.661060>,  <38.177574, 31.298407, 34.394993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699924, 30.831993, 34.661060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810085, 31.199963, 34.772701>,  <38.876183, 31.420744, 34.839684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810085, 31.199963, 34.772701>,  <38.699924, 30.831993, 34.661060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810085, 31.199963, 34.772701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273751, -0.353353, 0.894540,
		0.921527, -0.169958, -0.349144,
		0.275405, 0.919922, 0.279099,
		38.892708, 31.475939, 34.856430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203857, 30.695143, 35.085499>,  <38.699924, 30.831993, 34.661060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203857, 30.695143, 35.085499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136356, 31.079788, 35.172047>,  <39.095856, 31.310575, 35.223976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136356, 31.079788, 35.172047>,  <39.203857, 30.695143, 35.085499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136356, 31.079788, 35.172047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128663, -0.196149, 0.972096,
		0.977224, 0.191886, -0.090623,
		-0.168756, 0.961616, 0.216371,
		39.085732, 31.368273, 35.236958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805279, 31.089140, 35.455891>,  <39.203857, 30.695143, 35.085499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805279, 31.089140, 35.455891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425190, 31.178873, 35.542381>,  <39.197136, 31.232712, 35.594276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425190, 31.178873, 35.542381>,  <39.805279, 31.089140, 35.455891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425190, 31.178873, 35.542381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198683, -0.098301, 0.975122,
		0.240005, 0.969543, 0.048837,
		-0.950223, 0.224331, 0.216224,
		39.140121, 31.246172, 35.607250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836052, 31.257668, 36.129646>,  <39.805279, 31.089140, 35.455891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836052, 31.257668, 36.129646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437023, 31.256350, 36.101833>,  <39.197605, 31.255560, 36.085144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437023, 31.256350, 36.101833>,  <39.836052, 31.257668, 36.129646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437023, 31.256350, 36.101833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065829, -0.280142, 0.957699,
		-0.022633, 0.959953, 0.279245,
		-0.997574, -0.003293, -0.069533,
		39.137753, 31.255362, 36.080975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704529, 31.608521, 36.712704>,  <39.836052, 31.257668, 36.129646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704529, 31.608521, 36.712704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366585, 31.420937, 36.609715>,  <39.163818, 31.308386, 36.547920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366585, 31.420937, 36.609715>,  <39.704529, 31.608521, 36.712704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366585, 31.420937, 36.609715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027946, -0.441930, 0.896614,
		-0.534263, 0.764705, 0.360262,
		-0.844856, -0.468960, -0.257477,
		39.113129, 31.280249, 36.532471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210712, 31.704290, 37.253357>,  <39.704529, 31.608521, 36.712704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210712, 31.704290, 37.253357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080837, 31.391346, 37.040760>,  <39.002911, 31.203579, 36.913200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080837, 31.391346, 37.040760>,  <39.210712, 31.704290, 37.253357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080837, 31.391346, 37.040760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115213, -0.525038, 0.843244,
		-0.938777, 0.335029, 0.080337,
		-0.324691, -0.782362, -0.531493,
		38.983429, 31.156637, 36.881313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425320, 31.727396, 37.374546>,  <39.210712, 31.704290, 37.253357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425320, 31.727396, 37.374546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529556, 31.354267, 37.275002>,  <38.592098, 31.130390, 37.215275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529556, 31.354267, 37.275002>,  <38.425320, 31.727396, 37.374546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529556, 31.354267, 37.275002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115389, -0.286013, 0.951253,
		-0.958529, -0.219173, -0.182170,
		0.260592, -0.932823, -0.248861,
		38.607735, 31.074421, 37.200344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809063, 31.307026, 37.514286>,  <38.425320, 31.727396, 37.374546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809063, 31.307026, 37.514286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131756, 31.071054, 37.500580>,  <38.325371, 30.929472, 37.492355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131756, 31.071054, 37.500580>,  <37.809063, 31.307026, 37.514286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131756, 31.071054, 37.500580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252494, -0.396552, 0.882606,
		-0.534263, -0.703371, -0.468863,
		0.806728, -0.589929, -0.034266,
		38.373775, 30.894075, 37.490299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579239, 30.656488, 37.833725>,  <37.809063, 31.307026, 37.514286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579239, 30.656488, 37.833725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977734, 30.688478, 37.847115>,  <38.216831, 30.707672, 37.855148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977734, 30.688478, 37.847115>,  <37.579239, 30.656488, 37.833725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977734, 30.688478, 37.847115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012006, -0.255153, 0.966826,
		0.085866, -0.963587, -0.253232,
		0.996234, 0.079978, 0.033478,
		38.276604, 30.712471, 37.857159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762096, 30.050726, 38.161068>,  <37.579239, 30.656488, 37.833725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762096, 30.050726, 38.161068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083721, 30.285542, 38.198727>,  <38.276695, 30.426432, 38.221321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083721, 30.285542, 38.198727>,  <37.762096, 30.050726, 38.161068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083721, 30.285542, 38.198727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009999, -0.144975, 0.989385,
		0.594456, -0.796472, -0.110700,
		0.804066, 0.587039, 0.094145,
		38.324940, 30.461653, 38.226971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323490, 29.647705, 38.262936>,  <37.762096, 30.050726, 38.161068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323490, 29.647705, 38.262936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416435, 29.988117, 38.451302>,  <38.472202, 30.192364, 38.564320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416435, 29.988117, 38.451302>,  <38.323490, 29.647705, 38.262936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416435, 29.988117, 38.451302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275808, -0.406635, 0.870964,
		0.932705, -0.332259, 0.140235,
		0.232361, 0.851030, 0.470910,
		38.486145, 30.243425, 38.592575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657284, 29.431175, 38.902477>,  <38.323490, 29.647705, 38.262936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657284, 29.431175, 38.902477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545971, 29.811512, 38.956814>,  <38.479183, 30.039715, 38.989418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545971, 29.811512, 38.956814>,  <38.657284, 29.431175, 38.902477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545971, 29.811512, 38.956814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239911, -0.205758, 0.948739,
		0.930054, 0.231429, 0.285377,
		-0.278285, 0.950844, 0.135844,
		38.462486, 30.096766, 38.997566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881474, 29.559896, 39.684547>,  <38.657284, 29.431175, 38.902477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881474, 29.559896, 39.684547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623928, 29.849123, 39.584457>,  <38.469402, 30.022659, 39.524403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623928, 29.849123, 39.584457>,  <38.881474, 29.559896, 39.684547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623928, 29.849123, 39.584457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371579, -0.009605, 0.928352,
		0.668856, 0.690712, 0.274861,
		-0.643863, 0.723066, -0.250229,
		38.430771, 30.066044, 39.509388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069660, 30.154629, 40.109524>,  <38.881474, 29.559896, 39.684547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069660, 30.154629, 40.109524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687706, 30.154057, 39.990734>,  <38.458534, 30.153713, 39.919460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687706, 30.154057, 39.990734>,  <39.069660, 30.154629, 40.109524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687706, 30.154057, 39.990734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292056, -0.176753, 0.939927,
		-0.053837, 0.984254, 0.168360,
		-0.954885, -0.001433, -0.296973,
		38.401241, 30.153627, 39.901642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717102, 30.432924, 40.662819>,  <39.069660, 30.154629, 40.109524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717102, 30.432924, 40.662819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410877, 30.278658, 40.456837>,  <38.227142, 30.186098, 40.333248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410877, 30.278658, 40.456837>,  <38.717102, 30.432924, 40.662819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410877, 30.278658, 40.456837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453887, -0.243497, 0.857144,
		-0.455961, 0.889927, 0.011363,
		-0.765563, -0.385666, -0.514951,
		38.181210, 30.162958, 40.302353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057896, 30.721909, 40.943733>,  <38.717102, 30.432924, 40.662819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057896, 30.721909, 40.943733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995373, 30.361448, 40.781994>,  <37.957859, 30.145172, 40.684952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995373, 30.361448, 40.781994>,  <38.057896, 30.721909, 40.943733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995373, 30.361448, 40.781994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437270, -0.303938, 0.846414,
		-0.885643, 0.309108, -0.346539,
		-0.156307, -0.901151, -0.404344,
		37.948483, 30.091103, 40.660690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324703, 30.530396, 40.954796>,  <38.057896, 30.721909, 40.943733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324703, 30.530396, 40.954796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508560, 30.178406, 40.906830>,  <37.618874, 29.967213, 40.878052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508560, 30.178406, 40.906830>,  <37.324703, 30.530396, 40.954796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508560, 30.178406, 40.906830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570958, -0.396213, 0.719042,
		-0.680248, -0.262036, -0.684543,
		0.459640, -0.879973, -0.119911,
		37.646454, 29.914413, 40.870857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840706, 30.070606, 40.860458>,  <37.324703, 30.530396, 40.954796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840706, 30.070606, 40.860458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155991, 29.838970, 40.943764>,  <37.345161, 29.699989, 40.993748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155991, 29.838970, 40.943764>,  <36.840706, 30.070606, 40.860458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155991, 29.838970, 40.943764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581369, -0.589705, 0.560587,
		-0.201814, -0.562942, -0.801478,
		0.788214, -0.579089, 0.208266,
		37.392456, 29.665243, 41.006245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753956, 29.380941, 40.638718>,  <36.840706, 30.070606, 40.860458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753956, 29.380941, 40.638718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011219, 29.332214, 40.941109>,  <37.165577, 29.302979, 41.122543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011219, 29.332214, 40.941109>,  <36.753956, 29.380941, 40.638718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011219, 29.332214, 40.941109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699880, -0.494068, 0.515815,
		0.310671, -0.860847, -0.403021,
		0.643157, -0.121817, 0.755982,
		37.204166, 29.295670, 41.167904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713718, 28.603357, 40.854935>,  <36.753956, 29.380941, 40.638718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713718, 28.603357, 40.854935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884502, 28.803061, 41.156517>,  <36.986973, 28.922882, 41.337467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884502, 28.803061, 41.156517>,  <36.713718, 28.603357, 40.854935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884502, 28.803061, 41.156517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614207, -0.451811, 0.647007,
		0.663668, -0.739329, 0.113744,
		0.426960, 0.499260, 0.753953,
		37.012589, 28.952839, 41.382702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737980, 28.094231, 41.364445>,  <36.713718, 28.603357, 40.854935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737980, 28.094231, 41.364445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798851, 28.428755, 41.575130>,  <36.835373, 28.629469, 41.701542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798851, 28.428755, 41.575130>,  <36.737980, 28.094231, 41.364445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798851, 28.428755, 41.575130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440733, -0.419582, 0.793540,
		0.884645, -0.352899, 0.304738,
		0.152176, 0.836310, 0.526715,
		36.844505, 28.679647, 41.733147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852383, 27.861040, 42.120380>,  <36.737980, 28.094231, 41.364445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852383, 27.861040, 42.120380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757347, 28.249586, 42.120491>,  <36.700325, 28.482714, 42.120560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757347, 28.249586, 42.120491>,  <36.852383, 27.861040, 42.120380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757347, 28.249586, 42.120491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404299, -0.099149, 0.909237,
		0.883229, 0.215912, 0.416279,
		-0.237589, 0.971366, 0.000278,
		36.686069, 28.540997, 42.120575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932976, 28.095892, 42.784466>,  <36.852383, 27.861040, 42.120380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932976, 28.095892, 42.784466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682545, 28.384195, 42.665443>,  <36.532288, 28.557177, 42.594032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682545, 28.384195, 42.665443>,  <36.932976, 28.095892, 42.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682545, 28.384195, 42.665443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359204, 0.072112, 0.930469,
		0.692100, 0.689426, 0.213751,
		-0.626075, 0.720758, -0.297554,
		36.494720, 28.600422, 42.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002327, 28.747036, 43.251835>,  <36.932976, 28.095892, 42.784466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002327, 28.747036, 43.251835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645496, 28.813749, 43.083843>,  <36.431396, 28.853777, 42.983047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645496, 28.813749, 43.083843>,  <37.002327, 28.747036, 43.251835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645496, 28.813749, 43.083843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370341, 0.262702, 0.890975,
		0.258929, 0.950353, -0.172584,
		-0.892078, 0.166784, -0.419975,
		36.377872, 28.863785, 42.957851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783585, 29.376743, 43.542751>,  <37.002327, 28.747036, 43.251835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783585, 29.376743, 43.542751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441990, 29.215483, 43.411194>,  <36.237034, 29.118727, 43.332260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441990, 29.215483, 43.411194>,  <36.783585, 29.376743, 43.542751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441990, 29.215483, 43.411194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490398, 0.412537, 0.767674,
		-0.173807, 0.816874, -0.550007,
		-0.853991, -0.403149, -0.328892,
		36.185791, 29.094538, 43.312527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312458, 29.969038, 43.608856>,  <36.783585, 29.376743, 43.542751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312458, 29.969038, 43.608856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105450, 29.626896, 43.599617>,  <35.981243, 29.421610, 43.594074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105450, 29.626896, 43.599617>,  <36.312458, 29.969038, 43.608856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105450, 29.626896, 43.599617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634024, 0.365204, 0.681645,
		-0.574614, 0.367413, -0.731318,
		-0.517525, -0.855356, -0.023098,
		35.950191, 29.370289, 43.592690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675014, 30.118427, 43.472157>,  <36.312458, 29.969038, 43.608856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675014, 30.118427, 43.472157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623215, 29.762239, 43.646648>,  <35.592136, 29.548527, 43.751343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623215, 29.762239, 43.646648>,  <35.675014, 30.118427, 43.472157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623215, 29.762239, 43.646648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586454, 0.423520, 0.690436,
		-0.799564, -0.166419, -0.577064,
		-0.129497, -0.890469, 0.436228,
		35.584366, 29.495098, 43.777515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983570, 30.105404, 43.668053>,  <35.675014, 30.118427, 43.472157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983570, 30.105404, 43.668053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167568, 29.827673, 43.889435>,  <35.277966, 29.661034, 44.022266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167568, 29.827673, 43.889435>,  <34.983570, 30.105404, 43.668053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167568, 29.827673, 43.889435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532719, 0.282866, 0.797620,
		-0.710364, -0.661736, -0.239766,
		0.459992, -0.694329, 0.553457,
		35.305565, 29.619375, 44.055473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474831, 29.772753, 44.086372>,  <34.983570, 30.105404, 43.668053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474831, 29.772753, 44.086372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811676, 29.656336, 44.267982>,  <35.013783, 29.586485, 44.376949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811676, 29.656336, 44.267982>,  <34.474831, 29.772753, 44.086372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811676, 29.656336, 44.267982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464829, 0.035175, 0.884701,
		-0.273458, -0.956063, -0.105665,
		0.842113, -0.291045, 0.454025,
		35.064308, 29.569023, 44.404190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337444, 29.188730, 44.492188>,  <34.474831, 29.772753, 44.086372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337444, 29.188730, 44.492188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642288, 29.398346, 44.644279>,  <34.825195, 29.524115, 44.735535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642288, 29.398346, 44.644279>,  <34.337444, 29.188730, 44.492188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642288, 29.398346, 44.644279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479313, 0.061857, 0.875461,
		0.435256, -0.849445, 0.298320,
		0.762110, 0.524038, 0.380227,
		34.870922, 29.555557, 44.758347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127659, 29.289804, 45.133831>,  <34.337444, 29.188730, 44.492188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127659, 29.289804, 45.133831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465439, 29.493856, 45.199162>,  <34.668106, 29.616287, 45.238361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465439, 29.493856, 45.199162>,  <34.127659, 29.289804, 45.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465439, 29.493856, 45.199162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262091, 0.127597, 0.956571,
		0.467134, -0.850581, 0.241449,
		0.844449, 0.510128, 0.163325,
		34.718773, 29.646894, 45.248158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416145, 29.029276, 45.799984>,  <34.127659, 29.289804, 45.133831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416145, 29.029276, 45.799984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505688, 29.409880, 45.715591>,  <34.559414, 29.638243, 45.664955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505688, 29.409880, 45.715591>,  <34.416145, 29.029276, 45.799984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505688, 29.409880, 45.715591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226825, 0.261396, 0.938202,
		0.947859, -0.162168, 0.274343,
		0.223859, 0.951511, -0.210983,
		34.572845, 29.695333, 45.652298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672184, 29.345911, 46.422882>,  <34.416145, 29.029276, 45.799984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672184, 29.345911, 46.422882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548824, 29.652477, 46.197495>,  <34.474808, 29.836416, 46.062260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548824, 29.652477, 46.197495>,  <34.672184, 29.345911, 46.422882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548824, 29.652477, 46.197495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469067, 0.392803, 0.791001,
		0.827568, 0.508248, 0.238360,
		-0.308395, 0.766414, -0.563474,
		34.456306, 29.882401, 46.028454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821457, 29.859043, 46.843166>,  <34.672184, 29.345911, 46.422882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821457, 29.859043, 46.843166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592823, 30.046366, 46.573654>,  <34.455643, 30.158760, 46.411949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592823, 30.046366, 46.573654>,  <34.821457, 29.859043, 46.843166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592823, 30.046366, 46.573654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563857, 0.372375, 0.737158,
		0.596114, 0.801265, 0.051214,
		-0.571588, 0.468307, -0.673777,
		34.421345, 30.186857, 46.371521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750813, 30.449997, 47.174961>,  <34.821457, 29.859043, 46.843166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750813, 30.449997, 47.174961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460709, 30.474371, 46.900650>,  <34.286648, 30.488997, 46.736065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460709, 30.474371, 46.900650>,  <34.750813, 30.449997, 47.174961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460709, 30.474371, 46.900650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508605, 0.623923, 0.593330,
		0.464026, 0.779106, -0.421513,
		-0.725259, 0.060937, -0.685774,
		34.243130, 30.492651, 46.694920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929031, 30.297256, 47.804619>,  <34.750813, 30.449997, 47.174961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929031, 30.297256, 47.804619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130234, 30.425676, 48.125595>,  <35.250954, 30.502728, 48.318180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130234, 30.425676, 48.125595>,  <34.929031, 30.297256, 47.804619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130234, 30.425676, 48.125595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678045, 0.429151, -0.596728,
		-0.535947, 0.844249, -0.001819,
		0.503006, 0.321048, 0.802442,
		35.281136, 30.521992, 48.366329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158699, 30.852848, 47.632828>,  <34.929031, 30.297256, 47.804619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158699, 30.852848, 47.632828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410088, 30.743830, 47.924232>,  <35.560921, 30.678419, 48.099075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410088, 30.743830, 47.924232>,  <35.158699, 30.852848, 47.632828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410088, 30.743830, 47.924232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775681, 0.150041, -0.613031,
		0.057772, 0.950372, 0.305707,
		0.628476, -0.272547, 0.728516,
		35.598629, 30.662066, 48.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664154, 31.298475, 47.651844>,  <35.158699, 30.852848, 47.632828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664154, 31.298475, 47.651844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829407, 30.976259, 47.821751>,  <35.928558, 30.782928, 47.923695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829407, 30.976259, 47.821751>,  <35.664154, 31.298475, 47.651844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829407, 30.976259, 47.821751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732145, 0.016413, -0.680951,
		0.541563, 0.592312, 0.596553,
		0.413127, -0.805541, 0.424770,
		35.953346, 30.734596, 47.949181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415115, 31.432003, 47.727276>,  <35.664154, 31.298475, 47.651844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415115, 31.432003, 47.727276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411087, 31.032087, 47.734436>,  <36.408672, 30.792137, 47.738731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411087, 31.032087, 47.734436>,  <36.415115, 31.432003, 47.727276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411087, 31.032087, 47.734436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787542, -0.018960, -0.615969,
		0.616178, 0.007895, 0.787567,
		-0.010069, -0.999789, 0.017901,
		36.408066, 30.732151, 47.739807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083107, 31.281826, 47.879543>,  <36.415115, 31.432003, 47.727276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083107, 31.281826, 47.879543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918598, 30.957357, 47.713238>,  <36.819893, 30.762676, 47.613453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918598, 30.957357, 47.713238>,  <37.083107, 31.281826, 47.879543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918598, 30.957357, 47.713238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800017, -0.102631, -0.591135,
		0.436841, -0.575733, 0.691159,
		-0.411271, -0.811171, -0.415763,
		36.795216, 30.714006, 47.588509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630859, 30.693310, 47.871658>,  <37.083107, 31.281826, 47.879543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630859, 30.693310, 47.871658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362556, 30.579685, 47.597610>,  <37.201576, 30.511511, 47.433182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362556, 30.579685, 47.597610>,  <37.630859, 30.693310, 47.871658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362556, 30.579685, 47.597610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735597, -0.136759, -0.663471,
		0.094770, -0.949003, 0.300687,
		-0.670758, -0.284062, -0.685123,
		37.161327, 30.494467, 47.392075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985054, 30.251593, 47.529198>,  <37.630859, 30.693310, 47.871658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985054, 30.251593, 47.529198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692726, 30.319632, 47.264786>,  <37.517330, 30.360455, 47.106136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692726, 30.319632, 47.264786>,  <37.985054, 30.251593, 47.529198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692726, 30.319632, 47.264786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639705, -0.167090, -0.750239,
		-0.238067, -0.971158, 0.013300,
		-0.730823, 0.170099, -0.661033,
		37.473480, 30.370661, 47.066475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887386, 29.651617, 47.110756>,  <37.985054, 30.251593, 47.529198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887386, 29.651617, 47.110756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739246, 29.959732, 46.903103>,  <37.650360, 30.144602, 46.778511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739246, 29.959732, 46.903103>,  <37.887386, 29.651617, 47.110756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739246, 29.959732, 46.903103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644372, -0.189485, -0.740864,
		-0.669046, -0.608893, -0.426176,
		-0.370353, 0.770289, -0.519128,
		37.628139, 30.190819, 46.747364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018768, 29.400551, 46.451580>,  <37.887386, 29.651617, 47.110756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018768, 29.400551, 46.451580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941628, 29.787806, 46.387688>,  <37.895344, 30.020159, 46.349350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941628, 29.787806, 46.387688>,  <38.018768, 29.400551, 46.451580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941628, 29.787806, 46.387688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575412, -0.020275, -0.817612,
		-0.794801, -0.249592, -0.553169,
		-0.192854, 0.968139, -0.159733,
		37.883770, 30.078247, 46.339767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754490, 29.426310, 45.789742>,  <38.018768, 29.400551, 46.451580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754490, 29.426310, 45.789742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904255, 29.788673, 45.868885>,  <37.994114, 30.006092, 45.916370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904255, 29.788673, 45.868885>,  <37.754490, 29.426310, 45.789742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904255, 29.788673, 45.868885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375336, 0.047053, -0.925694,
		-0.847903, 0.420853, -0.322402,
		0.374411, 0.905908, 0.197858,
		38.016579, 30.060446, 45.928242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587097, 29.790121, 45.166248>,  <37.754490, 29.426310, 45.789742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587097, 29.790121, 45.166248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865887, 30.007006, 45.353962>,  <38.033161, 30.137136, 45.466591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865887, 30.007006, 45.353962>,  <37.587097, 29.790121, 45.166248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865887, 30.007006, 45.353962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493592, 0.111979, -0.862454,
		-0.520184, 0.832746, -0.189586,
		0.696976, 0.542213, 0.469286,
		38.074978, 30.169670, 45.494747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605679, 30.344837, 44.817440>,  <37.587097, 29.790121, 45.166248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605679, 30.344837, 44.817440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955456, 30.326681, 45.010643>,  <38.165321, 30.315788, 45.126564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955456, 30.326681, 45.010643>,  <37.605679, 30.344837, 44.817440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955456, 30.326681, 45.010643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484938, 0.110190, -0.867579,
		-0.013843, 0.992873, 0.118366,
		0.874439, -0.045390, 0.483007,
		38.217789, 30.313065, 45.155544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962231, 30.943615, 44.650696>,  <37.605679, 30.344837, 44.817440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962231, 30.943615, 44.650696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219799, 30.650167, 44.737568>,  <38.374340, 30.474100, 44.789692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219799, 30.650167, 44.737568>,  <37.962231, 30.943615, 44.650696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219799, 30.650167, 44.737568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541943, 0.236983, -0.806311,
		0.540055, 0.636902, 0.550178,
		0.643924, -0.733618, 0.217181,
		38.412975, 30.430082, 44.802723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580826, 31.176979, 44.619812>,  <37.962231, 30.943615, 44.650696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580826, 31.176979, 44.619812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617996, 30.786795, 44.539970>,  <38.640297, 30.552685, 44.492065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617996, 30.786795, 44.539970>,  <38.580826, 31.176979, 44.619812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617996, 30.786795, 44.539970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552597, 0.217289, -0.804625,
		0.828252, -0.035531, 0.559228,
		0.092925, -0.975460, -0.199604,
		38.645874, 30.494156, 44.480087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230362, 31.047060, 44.434845>,  <38.580826, 31.176979, 44.619812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230362, 31.047060, 44.434845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054424, 30.728214, 44.269367>,  <38.948860, 30.536907, 44.170078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054424, 30.728214, 44.269367>,  <39.230362, 31.047060, 44.434845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054424, 30.728214, 44.269367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622211, 0.061697, -0.780415,
		0.647603, -0.600670, 0.468835,
		-0.439846, -0.797113, -0.413698,
		38.922470, 30.489080, 44.145256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748089, 30.569748, 44.168999>,  <39.230362, 31.047060, 44.434845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748089, 30.569748, 44.168999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430775, 30.437033, 43.964798>,  <39.240387, 30.357405, 43.842278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430775, 30.437033, 43.964798>,  <39.748089, 30.569748, 44.168999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430775, 30.437033, 43.964798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552662, -0.040600, -0.832416,
		0.255459, -0.942480, 0.215574,
		-0.793288, -0.331788, -0.510501,
		39.192787, 30.337496, 43.811649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970024, 30.157625, 43.681095>,  <39.748089, 30.569748, 44.168999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970024, 30.157625, 43.681095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607262, 30.249432, 43.539764>,  <39.389603, 30.304516, 43.454964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607262, 30.249432, 43.539764>,  <39.970024, 30.157625, 43.681095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607262, 30.249432, 43.539764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387641, 0.125946, -0.913166,
		-0.165085, -0.965122, -0.203191,
		-0.906908, 0.229515, -0.353329,
		39.335190, 30.318287, 43.433765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872841, 29.692219, 43.143856>,  <39.970024, 30.157625, 43.681095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872841, 29.692219, 43.143856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631618, 30.003855, 43.075336>,  <39.486885, 30.190836, 43.034225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631618, 30.003855, 43.075336>,  <39.872841, 29.692219, 43.143856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631618, 30.003855, 43.075336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377475, 0.089536, -0.921681,
		-0.702737, -0.620484, -0.348083,
		-0.603054, 0.779092, -0.171297,
		39.450703, 30.237581, 43.023949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664181, 29.671934, 42.499969>,  <39.872841, 29.692219, 43.143856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664181, 29.671934, 42.499969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588039, 30.058834, 42.567139>,  <39.542355, 30.290974, 42.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588039, 30.058834, 42.567139>,  <39.664181, 29.671934, 42.499969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588039, 30.058834, 42.567139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305487, 0.220919, -0.926214,
		-0.932976, -0.125007, -0.337534,
		-0.190350, 0.967248, 0.167924,
		39.530933, 30.349009, 42.617516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442989, 29.872763, 41.915100>,  <39.664181, 29.671934, 42.499969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442989, 29.872763, 41.915100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522137, 30.222782, 42.091797>,  <39.569626, 30.432795, 42.197815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522137, 30.222782, 42.091797>,  <39.442989, 29.872763, 41.915100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522137, 30.222782, 42.091797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211727, 0.401857, -0.890888,
		-0.957089, 0.269808, -0.105757,
		0.197870, 0.875051, 0.441739,
		39.581497, 30.485298, 42.224319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999378, 30.289959, 41.527565>,  <39.442989, 29.872763, 41.915100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999378, 30.289959, 41.527565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257355, 30.549597, 41.688919>,  <39.412140, 30.705379, 41.785732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257355, 30.549597, 41.688919>,  <38.999378, 30.289959, 41.527565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257355, 30.549597, 41.688919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041011, 0.497681, -0.866390,
		-0.763127, 0.575318, 0.294357,
		0.644946, 0.649094, 0.403389,
		39.450840, 30.744326, 41.809937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758282, 30.885918, 41.384750>,  <38.999378, 30.289959, 41.527565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758282, 30.885918, 41.384750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150303, 30.944283, 41.438732>,  <39.385513, 30.979301, 41.471123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150303, 30.944283, 41.438732>,  <38.758282, 30.885918, 41.384750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150303, 30.944283, 41.438732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047099, 0.489166, -0.870918,
		-0.193093, 0.859899, 0.472535,
		0.980049, 0.145912, 0.134955,
		39.444317, 30.988056, 41.479218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923931, 31.387535, 40.908501>,  <38.758282, 30.885918, 41.384750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923931, 31.387535, 40.908501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295715, 31.265244, 40.991085>,  <39.518787, 31.191868, 41.040634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295715, 31.265244, 40.991085>,  <38.923931, 31.387535, 40.908501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295715, 31.265244, 40.991085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276942, 0.208529, -0.937987,
		0.243719, 0.929002, 0.278490,
		0.929465, -0.305730, 0.206457,
		39.574554, 31.173525, 41.053020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405022, 31.963259, 40.825951>,  <38.923931, 31.387535, 40.908501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405022, 31.963259, 40.825951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654648, 31.651470, 40.804146>,  <39.804424, 31.464397, 40.791061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654648, 31.651470, 40.804146>,  <39.405022, 31.963259, 40.825951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654648, 31.651470, 40.804146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473972, 0.433093, -0.766668,
		0.621207, 0.452609, 0.639725,
		0.624062, -0.779471, -0.054516,
		39.841866, 31.417629, 40.787792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087692, 32.159939, 40.706944>,  <39.405022, 31.963259, 40.825951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087692, 32.159939, 40.706944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098907, 31.786079, 40.565163>,  <40.105637, 31.561762, 40.480095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098907, 31.786079, 40.565163>,  <40.087692, 32.159939, 40.706944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098907, 31.786079, 40.565163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488562, 0.322169, -0.810873,
		0.872078, -0.150436, 0.465670,
		0.028039, -0.934653, -0.354454,
		40.107319, 31.505684, 40.458828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738197, 32.121174, 40.441231>,  <40.087692, 32.159939, 40.706944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738197, 32.121174, 40.441231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527740, 31.830910, 40.263878>,  <40.401466, 31.656752, 40.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527740, 31.830910, 40.263878>,  <40.738197, 32.121174, 40.441231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527740, 31.830910, 40.263878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433498, 0.219685, -0.873967,
		0.731608, -0.652039, 0.198986,
		-0.526146, -0.725661, -0.443381,
		40.369896, 31.613211, 40.130863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095341, 32.092773, 39.836681>,  <40.738197, 32.121174, 40.441231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095341, 32.092773, 39.836681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803234, 31.849987, 39.711273>,  <40.627968, 31.704315, 39.636028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803234, 31.849987, 39.711273>,  <41.095341, 32.092773, 39.836681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803234, 31.849987, 39.711273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253357, 0.185578, -0.949406,
		0.634442, -0.772755, 0.018258,
		-0.730269, -0.606969, -0.313521,
		40.584152, 31.667896, 39.617218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347195, 31.606289, 39.340820>,  <41.095341, 32.092773, 39.836681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347195, 31.606289, 39.340820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956081, 31.617752, 39.257763>,  <40.721413, 31.624630, 39.207928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956081, 31.617752, 39.257763>,  <41.347195, 31.606289, 39.340820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956081, 31.617752, 39.257763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209447, 0.173183, -0.962361,
		0.008381, -0.984473, -0.175338,
		-0.977784, 0.028658, -0.207646,
		40.662746, 31.626348, 39.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167973, 31.062729, 38.837749>,  <41.347195, 31.606289, 39.340820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167973, 31.062729, 38.837749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884708, 31.343744, 38.809620>,  <40.714748, 31.512354, 38.792744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884708, 31.343744, 38.809620>,  <41.167973, 31.062729, 38.837749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884708, 31.343744, 38.809620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222112, 0.127127, -0.966698,
		-0.670204, -0.700198, -0.246069,
		-0.708162, 0.702540, -0.070321,
		40.672260, 31.554506, 38.788525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983906, 31.013342, 38.179676>,  <41.167973, 31.062729, 38.837749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983906, 31.013342, 38.179676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853664, 31.380278, 38.271297>,  <40.775520, 31.600439, 38.326271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853664, 31.380278, 38.271297>,  <40.983906, 31.013342, 38.179676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853664, 31.380278, 38.271297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356647, 0.343525, -0.868789,
		-0.875661, -0.201192, -0.439021,
		-0.325608, 0.917340, 0.229057,
		40.755981, 31.655479, 38.340015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608295, 31.206596, 37.630451>,  <40.983906, 31.013342, 38.179676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608295, 31.206596, 37.630451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701279, 31.550083, 37.813129>,  <40.757069, 31.756174, 37.922737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701279, 31.550083, 37.813129>,  <40.608295, 31.206596, 37.630451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701279, 31.550083, 37.813129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231183, 0.407317, -0.883542,
		-0.944731, 0.310969, -0.103836,
		0.232460, 0.858715, 0.456695,
		40.771015, 31.807697, 37.950138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351685, 31.636957, 37.238930>,  <40.608295, 31.206596, 37.630451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351685, 31.636957, 37.238930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614155, 31.846104, 37.456570>,  <40.771637, 31.971592, 37.587154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614155, 31.846104, 37.456570>,  <40.351685, 31.636957, 37.238930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614155, 31.846104, 37.456570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171421, 0.598897, -0.782264,
		-0.734879, 0.606573, 0.303351,
		0.656177, 0.522868, 0.544096,
		40.811008, 32.002964, 37.619797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281746, 32.402210, 36.988235>,  <40.351685, 31.636957, 37.238930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281746, 32.402210, 36.988235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643745, 32.380295, 37.156979>,  <40.860947, 32.367146, 37.258224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643745, 32.380295, 37.156979>,  <40.281746, 32.402210, 36.988235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643745, 32.380295, 37.156979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363206, 0.615799, -0.699195,
		-0.221473, 0.785996, 0.577200,
		0.905004, -0.054790, 0.421861,
		40.915245, 32.363857, 37.283539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637619, 33.189568, 37.042027>,  <40.281746, 32.402210, 36.988235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637619, 33.189568, 37.042027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942371, 32.930580, 37.034931>,  <41.125225, 32.775188, 37.030674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942371, 32.930580, 37.034931>,  <40.637619, 33.189568, 37.042027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942371, 32.930580, 37.034931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419920, 0.514606, -0.747561,
		0.493153, 0.562105, 0.663956,
		0.761884, -0.647471, -0.017741,
		41.170937, 32.736340, 37.029610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256638, 33.586151, 36.879128>,  <40.637619, 33.189568, 37.042027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256638, 33.586151, 36.879128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387825, 33.213234, 36.818127>,  <41.466537, 32.989483, 36.781525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387825, 33.213234, 36.818127>,  <41.256638, 33.586151, 36.879128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387825, 33.213234, 36.818127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660988, 0.341803, -0.668031,
		0.674930, 0.118291, 0.728338,
		0.327970, -0.932297, -0.152504,
		41.486217, 32.933544, 36.772377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911652, 33.713181, 36.777718>,  <41.256638, 33.586151, 36.879128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911652, 33.713181, 36.777718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842121, 33.352562, 36.619225>,  <41.800404, 33.136192, 36.524128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842121, 33.352562, 36.619225>,  <41.911652, 33.713181, 36.777718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842121, 33.352562, 36.619225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655898, 0.194137, -0.729458,
		0.734563, -0.386691, 0.557574,
		-0.173829, -0.901544, -0.396236,
		41.789974, 33.082100, 36.500355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527496, 33.457161, 36.715397>,  <41.911652, 33.713181, 36.777718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527496, 33.457161, 36.715397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298756, 33.238010, 36.471161>,  <42.161510, 33.106522, 36.324619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298756, 33.238010, 36.471161>,  <42.527496, 33.457161, 36.715397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298756, 33.238010, 36.471161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551187, 0.294668, -0.780618,
		0.607602, -0.782946, 0.133476,
		-0.571850, -0.547876, -0.610590,
		42.127201, 33.073647, 36.287983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002880, 32.953308, 36.243069>,  <42.527496, 33.457161, 36.715397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002880, 32.953308, 36.243069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643288, 33.025394, 36.083385>,  <42.427532, 33.068645, 35.987576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643288, 33.025394, 36.083385>,  <43.002880, 32.953308, 36.243069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643288, 33.025394, 36.083385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436172, 0.285256, -0.853453,
		-0.039928, -0.941356, -0.335043,
		-0.898977, 0.180214, -0.399204,
		42.373596, 33.079460, 35.963623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105923, 32.579884, 35.624393>,  <43.002880, 32.953308, 36.243069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105923, 32.579884, 35.624393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785362, 32.812119, 35.566887>,  <42.593025, 32.951458, 35.532383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785362, 32.812119, 35.566887>,  <43.105923, 32.579884, 35.624393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785362, 32.812119, 35.566887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392040, 0.328346, -0.859356,
		-0.451727, -0.745054, -0.490752,
		-0.801403, 0.580589, -0.143768,
		42.544941, 32.986294, 35.523758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951584, 32.591511, 34.835064>,  <43.105923, 32.579884, 35.624393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951584, 32.591511, 34.835064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754166, 32.905830, 34.984161>,  <42.635715, 33.094421, 35.073620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754166, 32.905830, 34.984161>,  <42.951584, 32.591511, 34.835064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754166, 32.905830, 34.984161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352448, 0.572511, -0.740278,
		-0.795108, -0.233988, -0.559512,
		-0.493543, 0.785799, 0.372740,
		42.606102, 33.141571, 35.095982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566807, 32.910210, 34.266933>,  <42.951584, 32.591511, 34.835064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566807, 32.910210, 34.266933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612869, 33.198666, 34.540192>,  <42.640507, 33.371738, 34.704147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612869, 33.198666, 34.540192>,  <42.566807, 32.910210, 34.266933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612869, 33.198666, 34.540192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510413, 0.547034, -0.663500,
		-0.852184, 0.425094, -0.305087,
		0.115156, 0.721144, 0.683147,
		42.647415, 33.415009, 34.745136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433670, 33.610577, 33.965858>,  <42.566807, 32.910210, 34.266933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433670, 33.610577, 33.965858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705307, 33.634247, 34.258522>,  <42.868290, 33.648449, 34.434120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705307, 33.634247, 34.258522>,  <42.433670, 33.610577, 33.965858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705307, 33.634247, 34.258522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615625, 0.496955, -0.611589,
		-0.399794, 0.865756, 0.301049,
		0.679095, 0.059176, 0.731661,
		42.909035, 33.652000, 34.478020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527134, 34.299053, 34.270393>,  <42.433670, 33.610577, 33.965858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527134, 34.299053, 34.270393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856712, 34.072639, 34.259712>,  <43.054459, 33.936790, 34.253304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856712, 34.072639, 34.259712>,  <42.527134, 34.299053, 34.270393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856712, 34.072639, 34.259712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367993, 0.570314, -0.734387,
		0.430914, 0.595273, 0.678206,
		0.823951, -0.566032, -0.026699,
		43.103897, 33.902828, 34.251701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251682, 34.663975, 34.240707>,  <42.527134, 34.299053, 34.270393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251682, 34.663975, 34.240707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321728, 34.301495, 34.086750>,  <43.363754, 34.084007, 33.994377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321728, 34.301495, 34.086750>,  <43.251682, 34.663975, 34.240707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321728, 34.301495, 34.086750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657831, 0.398552, -0.639073,
		0.732526, -0.141284, 0.665916,
		0.175112, -0.906198, -0.384890,
		43.374260, 34.029636, 33.971283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014179, 34.667286, 34.063480>,  <43.251682, 34.663975, 34.240707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014179, 34.667286, 34.063480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810165, 34.382351, 33.870632>,  <43.687756, 34.211391, 33.754925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810165, 34.382351, 33.870632>,  <44.014179, 34.667286, 34.063480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810165, 34.382351, 33.870632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542933, 0.168125, -0.822775,
		0.667150, -0.681403, 0.301002,
		-0.510035, -0.712337, -0.482120,
		43.657154, 34.168652, 33.725998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498993, 34.213734, 33.579590>,  <44.014179, 34.667286, 34.063480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498993, 34.213734, 33.579590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126648, 34.242180, 33.436234>,  <43.903240, 34.259247, 33.350220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126648, 34.242180, 33.436234>,  <44.498993, 34.213734, 33.579590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126648, 34.242180, 33.436234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361060, 0.329358, -0.872444,
		0.055993, -0.941523, -0.332263,
		-0.930860, 0.071116, -0.358388,
		43.847389, 34.263515, 33.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475544, 33.859829, 32.922966>,  <44.498993, 34.213734, 33.579590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475544, 33.859829, 32.922966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224514, 34.169006, 32.960304>,  <44.073895, 34.354511, 32.982708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224514, 34.169006, 32.960304>,  <44.475544, 33.859829, 32.922966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224514, 34.169006, 32.960304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531879, 0.513197, -0.673598,
		-0.568555, -0.373084, -0.733180,
		-0.627574, 0.772941, 0.093345,
		44.036243, 34.400890, 32.988308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991333, 34.063473, 32.333275>,  <44.475544, 33.859829, 32.922966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991333, 34.063473, 32.333275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154999, 34.355721, 32.551914>,  <44.253201, 34.531071, 32.683098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154999, 34.355721, 32.551914>,  <43.991333, 34.063473, 32.333275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154999, 34.355721, 32.551914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362731, 0.419433, -0.832167,
		-0.837262, 0.538766, -0.093401,
		0.409167, 0.730621, 0.546603,
		44.277748, 34.574905, 32.715897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746624, 34.817394, 32.207676>,  <43.991333, 34.063473, 32.333275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746624, 34.817394, 32.207676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123600, 34.801407, 32.340469>,  <44.349785, 34.791813, 32.420143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123600, 34.801407, 32.340469>,  <43.746624, 34.817394, 32.207676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123600, 34.801407, 32.340469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323615, 0.358896, -0.875481,
		-0.084153, 0.932521, 0.351172,
		0.942439, -0.039970, 0.331980,
		44.406330, 34.789417, 32.440063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974384, 35.394001, 31.872824>,  <43.746624, 34.817394, 32.207676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974384, 35.394001, 31.872824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305286, 35.200005, 31.986263>,  <44.503830, 35.083607, 32.054329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305286, 35.200005, 31.986263>,  <43.974384, 35.394001, 31.872824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305286, 35.200005, 31.986263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393016, 0.138841, -0.908989,
		0.401474, 0.863429, 0.305466,
		0.827259, -0.484988, 0.283601,
		44.553463, 35.054508, 32.071342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455879, 35.862328, 31.826780>,  <43.974384, 35.394001, 31.872824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455879, 35.862328, 31.826780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650593, 35.514004, 31.799274>,  <44.767422, 35.305008, 31.782770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650593, 35.514004, 31.799274>,  <44.455879, 35.862328, 31.826780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650593, 35.514004, 31.799274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498250, 0.341455, -0.796967,
		0.717489, 0.353687, 0.600096,
		0.486783, -0.870812, -0.068766,
		44.796627, 35.252762, 31.778645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112217, 36.060635, 31.637510>,  <44.455879, 35.862328, 31.826780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112217, 36.060635, 31.637510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132454, 35.669640, 31.555569>,  <45.144596, 35.435043, 31.506403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132454, 35.669640, 31.555569>,  <45.112217, 36.060635, 31.637510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132454, 35.669640, 31.555569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589643, 0.194789, -0.783823,
		0.806078, -0.081134, 0.586222,
		0.050595, -0.977484, -0.204855,
		45.147633, 35.376396, 31.494112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754566, 35.955513, 31.431009>,  <45.112217, 36.060635, 31.637510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754566, 35.955513, 31.431009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560719, 35.643387, 31.272900>,  <45.444408, 35.456112, 31.178034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560719, 35.643387, 31.272900>,  <45.754566, 35.955513, 31.431009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560719, 35.643387, 31.272900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468940, 0.149695, -0.870452,
		0.738401, -0.607201, 0.293377,
		-0.484623, -0.780319, -0.395276,
		45.415333, 35.409290, 31.154316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118229, 35.660034, 31.001591>,  <45.754566, 35.955513, 31.431009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118229, 35.660034, 31.001591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783234, 35.492935, 30.860678>,  <45.582237, 35.392677, 30.776129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783234, 35.492935, 30.860678>,  <46.118229, 35.660034, 31.001591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783234, 35.492935, 30.860678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421372, -0.083205, -0.903063,
		0.347938, -0.904746, 0.245709,
		-0.837487, -0.417745, -0.352284,
		45.531986, 35.367611, 30.754992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408310, 35.174431, 30.502687>,  <46.118229, 35.660034, 31.001591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408310, 35.174431, 30.502687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018188, 35.196964, 30.417259>,  <45.784115, 35.210484, 30.366003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018188, 35.196964, 30.417259>,  <46.408310, 35.174431, 30.502687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018188, 35.196964, 30.417259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197365, -0.211812, -0.957174,
		-0.099158, -0.975686, 0.195462,
		-0.975302, 0.056334, -0.213569,
		45.725597, 35.213863, 30.353188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249424, 34.596279, 30.129908>,  <46.408310, 35.174431, 30.502687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249424, 34.596279, 30.129908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967720, 34.860741, 30.026459>,  <45.798698, 35.019417, 29.964390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967720, 34.860741, 30.026459>,  <46.249424, 34.596279, 30.129908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967720, 34.860741, 30.026459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316810, -0.033324, -0.947904,
		-0.635330, -0.749509, -0.185991,
		-0.704264, 0.661155, -0.258623,
		45.756439, 35.059086, 29.948872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096462, 34.400558, 29.431076>,  <46.249424, 34.596279, 30.129908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096462, 34.400558, 29.431076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920353, 34.759346, 29.447124>,  <45.814690, 34.974617, 29.456753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920353, 34.759346, 29.447124>,  <46.096462, 34.400558, 29.431076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920353, 34.759346, 29.447124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081705, 0.004476, -0.996647,
		-0.894140, -0.442071, 0.071316,
		-0.440270, 0.896969, 0.040121,
		45.788273, 35.028435, 29.459162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570232, 34.383186, 28.958261>,  <46.096462, 34.400558, 29.431076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570232, 34.383186, 28.958261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633575, 34.772285, 29.026001>,  <45.671581, 35.005745, 29.066645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633575, 34.772285, 29.026001>,  <45.570232, 34.383186, 28.958261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633575, 34.772285, 29.026001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035264, 0.176973, -0.983584,
		-0.986752, 0.149784, 0.062327,
		0.158355, 0.972751, 0.169347,
		45.681084, 35.064110, 29.076805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052601, 34.849285, 28.572025>,  <45.570232, 34.383186, 28.958261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052601, 34.849285, 28.572025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388584, 35.053413, 28.645817>,  <45.590176, 35.175892, 28.690092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388584, 35.053413, 28.645817>,  <45.052601, 34.849285, 28.572025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388584, 35.053413, 28.645817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047932, 0.268862, -0.961985,
		-0.540524, 0.816874, 0.201373,
		0.839962, 0.510324, 0.184481,
		45.640572, 35.206512, 28.701160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004040, 35.411831, 28.160942>,  <45.052601, 34.849285, 28.572025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004040, 35.411831, 28.160942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392147, 35.400841, 28.257137>,  <45.625011, 35.394245, 28.314854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392147, 35.400841, 28.257137>,  <45.004040, 35.411831, 28.160942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392147, 35.400841, 28.257137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234948, 0.345825, -0.908408,
		-0.058208, 0.937897, 0.341997,
		0.970263, -0.027475, 0.240487,
		45.683228, 35.392597, 28.329283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246822, 36.021881, 27.857231>,  <45.004040, 35.411831, 28.160942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246822, 36.021881, 27.857231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565346, 35.790077, 27.926588>,  <45.756458, 35.650997, 27.968203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565346, 35.790077, 27.926588>,  <45.246822, 36.021881, 27.857231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565346, 35.790077, 27.926588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297711, 0.125942, -0.946312,
		0.526558, 0.805176, 0.272814,
		0.796307, -0.579508, 0.173394,
		45.804237, 35.616226, 27.978607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821507, 36.363564, 27.398581>,  <45.246822, 36.021881, 27.857231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821507, 36.363564, 27.398581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927708, 35.989983, 27.494276>,  <45.991428, 35.765835, 27.551693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927708, 35.989983, 27.494276>,  <45.821507, 36.363564, 27.398581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927708, 35.989983, 27.494276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314017, -0.150840, -0.937358,
		0.911538, 0.323995, 0.253230,
		0.265503, -0.933956, 0.239237,
		46.007359, 35.709797, 27.566048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468925, 36.352203, 27.317717>,  <45.821507, 36.363564, 27.398581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468925, 36.352203, 27.317717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375259, 35.966202, 27.270494>,  <46.319057, 35.734600, 27.242161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375259, 35.966202, 27.270494>,  <46.468925, 36.352203, 27.317717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375259, 35.966202, 27.270494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499682, -0.015302, -0.866074,
		0.833956, -0.261796, 0.485778,
		-0.234168, -0.965002, -0.118053,
		46.305008, 35.676701, 27.235079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007847, 35.922443, 26.984682>,  <46.468925, 36.352203, 27.317717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007847, 35.922443, 26.984682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685753, 35.703747, 26.892887>,  <46.492496, 35.572529, 26.837811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685753, 35.703747, 26.892887>,  <47.007847, 35.922443, 26.984682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685753, 35.703747, 26.892887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303306, -0.047238, -0.951722,
		0.509508, -0.835966, 0.203869,
		-0.805237, -0.546744, -0.229486,
		46.444183, 35.539722, 26.824041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318741, 35.400585, 26.541550>,  <47.007847, 35.922443, 26.984682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318741, 35.400585, 26.541550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925625, 35.395859, 26.467810>,  <46.689754, 35.393024, 26.423567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925625, 35.395859, 26.467810>,  <47.318741, 35.400585, 26.541550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925625, 35.395859, 26.467810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182544, -0.215063, -0.959388,
		-0.028312, -0.976529, 0.213518,
		-0.982790, -0.011814, -0.184348,
		46.630787, 35.392315, 26.412504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.198601, 34.893089, 26.096540>,  <47.318741, 35.400585, 26.541550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.198601, 34.893089, 26.096540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867851, 35.105934, 26.023729>,  <46.669403, 35.233643, 25.980043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867851, 35.105934, 26.023729>,  <47.198601, 34.893089, 26.096540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.867851, 35.105934, 26.023729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071317, -0.221840, -0.972472,
		-0.557847, -0.817093, 0.145485,
		-0.826874, 0.532115, -0.182026,
		46.619789, 35.265568, 25.969122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828812, 34.606335, 25.581118>,  <47.198601, 34.893089, 26.096540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828812, 34.606335, 25.581118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.677708, 34.975227, 25.548168>,  <46.587044, 35.196564, 25.528399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.677708, 34.975227, 25.548168>,  <46.828812, 34.606335, 25.581118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.677708, 34.975227, 25.548168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063707, -0.114644, -0.991362,
		-0.923708, -0.369253, 0.102061,
		-0.377764, 0.922230, -0.082373,
		46.564377, 35.251896, 25.523457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211384, 34.608864, 25.117447>,  <46.828812, 34.606335, 25.581118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211384, 34.608864, 25.117447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336460, 34.988735, 25.124735>,  <46.411507, 35.216660, 25.129107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336460, 34.988735, 25.124735>,  <46.211384, 34.608864, 25.117447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336460, 34.988735, 25.124735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148784, 0.067915, -0.986535,
		-0.938130, 0.305770, 0.162534,
		0.312691, 0.949680, 0.018219,
		46.430267, 35.273640, 25.130201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763817, 35.108570, 24.639002>,  <46.211384, 34.608864, 25.117447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763817, 35.108570, 24.639002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109776, 35.307888, 24.663172>,  <46.317352, 35.427479, 24.677673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109776, 35.307888, 24.663172>,  <45.763817, 35.108570, 24.639002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109776, 35.307888, 24.663172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011622, 0.100466, -0.994873,
		-0.501809, 0.861168, 0.081102,
		0.864901, 0.498293, 0.060423,
		46.369247, 35.457375, 24.681299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378807, 35.710461, 24.292810>,  <45.763817, 35.108570, 24.639002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378807, 35.710461, 24.292810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777321, 35.684776, 24.269878>,  <46.016430, 35.669365, 24.256119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777321, 35.684776, 24.269878>,  <45.378807, 35.710461, 24.292810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777321, 35.684776, 24.269878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066579, -0.152666, -0.986033,
		0.054566, 0.986190, -0.156374,
		0.996288, -0.064215, -0.057329,
		46.076206, 35.665512, 24.252680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050575, 35.830109, 24.976933>,  <45.378807, 35.710461, 24.292810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050575, 35.830109, 24.976933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113651, 36.220787, 25.035175>,  <45.151497, 36.455193, 25.070122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113651, 36.220787, 25.035175>,  <45.050575, 35.830109, 24.976933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113651, 36.220787, 25.035175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859011, 0.208401, -0.467621,
		-0.487069, -0.051342, 0.871853,
		0.157687, 0.976695, 0.145609,
		45.160957, 36.513794, 25.078857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359524, 36.181446, 24.997858>,  <45.050575, 35.830109, 24.976933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359524, 36.181446, 24.997858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652782, 36.433933, 24.896614>,  <44.828735, 36.585426, 24.835867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652782, 36.433933, 24.896614>,  <44.359524, 36.181446, 24.997858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652782, 36.433933, 24.896614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636656, 0.506178, -0.581767,
		-0.239103, 0.587662, 0.772970,
		0.733143, 0.631218, -0.253110,
		44.872726, 36.623299, 24.820681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856651, 35.727978, 25.353765>,  <44.359524, 36.181446, 24.997858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856651, 35.727978, 25.353765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085968, 35.878506, 25.644892>,  <44.223557, 35.968822, 25.819569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085968, 35.878506, 25.644892>,  <43.856651, 35.727978, 25.353765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085968, 35.878506, 25.644892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653258, 0.746101, 0.128788,
		-0.494560, -0.549285, 0.673570,
		0.573292, 0.376322, 0.727817,
		44.257957, 35.991402, 25.863237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537899, 35.753727, 26.007017>,  <43.856651, 35.727978, 25.353765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537899, 35.753727, 26.007017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800865, 36.053787, 25.978531>,  <43.958645, 36.233826, 25.961439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800865, 36.053787, 25.978531>,  <43.537899, 35.753727, 26.007017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800865, 36.053787, 25.978531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753354, 0.656348, -0.040811,
		0.016128, 0.080481, 0.996626,
		0.657417, 0.750154, -0.071217,
		43.998089, 36.278831, 25.957167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461170, 36.273190, 26.572355>,  <43.537899, 35.753727, 26.007017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461170, 36.273190, 26.572355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582222, 36.421967, 26.221340>,  <43.654854, 36.511230, 26.010731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582222, 36.421967, 26.221340>,  <43.461170, 36.273190, 26.572355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582222, 36.421967, 26.221340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810005, 0.585596, -0.031139,
		0.502302, 0.720235, 0.478492,
		0.302630, 0.371940, -0.877539,
		43.673012, 36.533550, 25.958078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909069, 36.831131, 26.612640>,  <43.461170, 36.273190, 26.572355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909069, 36.831131, 26.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130024, 36.966621, 26.307974>,  <43.262596, 37.047916, 26.125174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130024, 36.966621, 26.307974>,  <42.909069, 36.831131, 26.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130024, 36.966621, 26.307974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316757, 0.759887, 0.567659,
		0.771061, -0.554829, 0.312456,
		0.552385, 0.338727, -0.761666,
		43.295742, 37.068237, 26.079475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712841, 37.002522, 26.812407>,  <42.909069, 36.831131, 26.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712841, 37.002522, 26.812407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567455, 37.254398, 26.537779>,  <43.480225, 37.405525, 26.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567455, 37.254398, 26.537779>,  <43.712841, 37.002522, 26.812407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567455, 37.254398, 26.537779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299092, 0.776832, 0.554144,
		0.882293, -0.003939, -0.470684,
		-0.363460, 0.629696, -0.686572,
		43.458416, 37.443306, 26.331808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184006, 37.437466, 26.390440>,  <43.712841, 37.002522, 26.812407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184006, 37.437466, 26.390440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838760, 37.618950, 26.479143>,  <43.631611, 37.727840, 26.532366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838760, 37.618950, 26.479143>,  <44.184006, 37.437466, 26.390440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838760, 37.618950, 26.479143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476965, 0.588104, 0.653176,
		0.165936, 0.669538, -0.724006,
		-0.863116, 0.453711, 0.221758,
		43.579826, 37.755062, 26.545671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422276, 38.211658, 26.468899>,  <44.184006, 37.437466, 26.390440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422276, 38.211658, 26.468899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087925, 38.081585, 26.645792>,  <43.887314, 38.003540, 26.751928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087925, 38.081585, 26.645792>,  <44.422276, 38.211658, 26.468899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087925, 38.081585, 26.645792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421132, 0.136848, 0.896616,
		-0.352082, 0.935697, 0.022556,
		-0.835875, -0.325182, 0.442234,
		43.837162, 37.984032, 26.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114666, 38.676586, 26.899080>,  <44.422276, 38.211658, 26.468899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114666, 38.676586, 26.899080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027035, 38.306679, 27.023533>,  <43.974457, 38.084732, 27.098204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027035, 38.306679, 27.023533>,  <44.114666, 38.676586, 26.899080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027035, 38.306679, 27.023533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435984, 0.192490, 0.879128,
		-0.872883, 0.328242, 0.361017,
		-0.219074, -0.924773, 0.311130,
		43.961311, 38.029247, 27.116873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652443, 38.639771, 27.520052>,  <44.114666, 38.676586, 26.899080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652443, 38.639771, 27.520052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826992, 38.280724, 27.544893>,  <43.931721, 38.065296, 27.559797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826992, 38.280724, 27.544893>,  <43.652443, 38.639771, 27.520052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826992, 38.280724, 27.544893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219573, 0.173172, 0.960104,
		-0.872561, -0.405331, 0.272661,
		0.436377, -0.897618, 0.062104,
		43.957905, 38.011436, 27.563524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531235, 38.401108, 28.224451>,  <43.652443, 38.639771, 27.520052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531235, 38.401108, 28.224451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804211, 38.131180, 28.112095>,  <43.967995, 37.969223, 28.044682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804211, 38.131180, 28.112095>,  <43.531235, 38.401108, 28.224451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804211, 38.131180, 28.112095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268117, -0.126397, 0.955059,
		-0.679996, -0.727078, 0.094673,
		0.682436, -0.674819, -0.280892,
		44.008942, 37.928734, 28.027828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406151, 37.766064, 28.640467>,  <43.531235, 38.401108, 28.224451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406151, 37.766064, 28.640467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787254, 37.763233, 28.519012>,  <44.015919, 37.761536, 28.446140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787254, 37.763233, 28.519012>,  <43.406151, 37.766064, 28.640467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787254, 37.763233, 28.519012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302644, -0.061839, 0.951095,
		-0.025502, -0.998061, -0.056778,
		0.952762, -0.007071, -0.303635,
		44.073082, 37.761112, 28.427921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707279, 37.265156, 29.035753>,  <43.406151, 37.766064, 28.640467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707279, 37.265156, 29.035753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012489, 37.486549, 28.902218>,  <44.195614, 37.619385, 28.822098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012489, 37.486549, 28.902218>,  <43.707279, 37.265156, 29.035753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012489, 37.486549, 28.902218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458400, -0.099248, 0.883187,
		0.455697, -0.826925, -0.329446,
		0.763026, 0.553484, -0.333836,
		44.241398, 37.652596, 28.802067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452930, 36.840706, 29.211300>,  <43.707279, 37.265156, 29.035753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452930, 36.840706, 29.211300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517105, 37.230774, 29.150229>,  <44.555611, 37.464813, 29.113586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517105, 37.230774, 29.150229>,  <44.452930, 36.840706, 29.211300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517105, 37.230774, 29.150229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496829, 0.053874, 0.866175,
		0.852890, -0.214819, -0.475848,
		0.160435, 0.975167, -0.152677,
		44.565235, 37.523323, 29.104425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143894, 36.956444, 29.395370>,  <44.452930, 36.840706, 29.211300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143894, 36.956444, 29.395370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983212, 37.322342, 29.412664>,  <44.886803, 37.541882, 29.423040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983212, 37.322342, 29.412664>,  <45.143894, 36.956444, 29.395370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983212, 37.322342, 29.412664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469169, 0.165027, 0.867552,
		0.786457, 0.368783, -0.495464,
		-0.401704, 0.914749, 0.043235,
		44.862701, 37.596767, 29.425634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716125, 37.377277, 29.453392>,  <45.143894, 36.956444, 29.395370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716125, 37.377277, 29.453392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402889, 37.584488, 29.591043>,  <45.214947, 37.708813, 29.673634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402889, 37.584488, 29.591043>,  <45.716125, 37.377277, 29.453392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402889, 37.584488, 29.591043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527444, 0.260020, 0.808821,
		0.329512, 0.814885, -0.476849,
		-0.783086, 0.518027, 0.344127,
		45.167965, 37.739895, 29.694281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074554, 38.003159, 29.774258>,  <45.716125, 37.377277, 29.453392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074554, 38.003159, 29.774258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701778, 37.943172, 29.906317>,  <45.478111, 37.907181, 29.985552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701778, 37.943172, 29.906317>,  <46.074554, 38.003159, 29.774258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701778, 37.943172, 29.906317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333226, 0.004852, 0.942835,
		-0.142993, 0.988680, 0.045450,
		-0.931941, -0.149964, 0.330147,
		45.422195, 37.898182, 30.005362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048553, 38.459991, 30.321228>,  <46.074554, 38.003159, 29.774258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048553, 38.459991, 30.321228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764065, 38.183731, 30.373650>,  <45.593372, 38.017975, 30.405102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764065, 38.183731, 30.373650>,  <46.048553, 38.459991, 30.321228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764065, 38.183731, 30.373650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310085, -0.140910, 0.940208,
		-0.630886, 0.709331, 0.314377,
		-0.711218, -0.690648, 0.131054,
		45.550701, 37.976536, 30.412966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693317, 38.577042, 30.946835>,  <46.048553, 38.459991, 30.321228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693317, 38.577042, 30.946835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626163, 38.186733, 30.890707>,  <45.585873, 37.952549, 30.857031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626163, 38.186733, 30.890707>,  <45.693317, 38.577042, 30.946835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626163, 38.186733, 30.890707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150569, -0.166051, 0.974554,
		-0.974240, 0.142485, 0.174798,
		-0.167885, -0.975769, -0.140320,
		45.575798, 37.894001, 30.848612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561733, 38.372108, 31.586405>,  <45.693317, 38.577042, 30.946835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561733, 38.372108, 31.586405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577583, 38.007004, 31.423777>,  <45.587093, 37.787941, 31.326200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577583, 38.007004, 31.423777>,  <45.561733, 38.372108, 31.586405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577583, 38.007004, 31.423777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077896, -0.402828, 0.911955,
		-0.996174, -0.067807, 0.055138,
		0.039626, -0.912761, -0.406568,
		45.589470, 37.733177, 31.301805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986374, 37.934238, 31.964756>,  <45.561733, 38.372108, 31.586405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986374, 37.934238, 31.964756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260780, 37.695477, 31.798342>,  <45.425423, 37.552219, 31.698492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260780, 37.695477, 31.798342>,  <44.986374, 37.934238, 31.964756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260780, 37.695477, 31.798342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057145, -0.525835, 0.848665,
		-0.725340, -0.605972, -0.326621,
		0.686015, -0.596905, -0.416038,
		45.466583, 37.516403, 31.673531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847725, 37.265926, 32.197758>,  <44.986374, 37.934238, 31.964756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847725, 37.265926, 32.197758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223614, 37.239143, 32.063633>,  <45.449146, 37.223072, 31.983158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223614, 37.239143, 32.063633>,  <44.847725, 37.265926, 32.197758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223614, 37.239143, 32.063633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271838, -0.448560, 0.851409,
		-0.207414, -0.891241, -0.403322,
		0.939725, -0.066956, -0.335311,
		45.505531, 37.219055, 31.963039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091732, 36.580837, 32.326401>,  <44.847725, 37.265926, 32.197758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091732, 36.580837, 32.326401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437687, 36.778362, 32.290344>,  <45.645260, 36.896877, 32.268711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437687, 36.778362, 32.290344>,  <45.091732, 36.580837, 32.326401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437687, 36.778362, 32.290344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348379, -0.461196, 0.816045,
		0.361400, -0.737188, -0.570915,
		0.864883, 0.493814, -0.090145,
		45.697151, 36.926506, 32.263302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570801, 36.087975, 32.232300>,  <45.091732, 36.580837, 32.326401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570801, 36.087975, 32.232300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773380, 36.415352, 32.340858>,  <45.894928, 36.611778, 32.405994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773380, 36.415352, 32.340858>,  <45.570801, 36.087975, 32.232300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773380, 36.415352, 32.340858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251667, -0.441342, 0.861325,
		0.824727, -0.367915, -0.429493,
		0.506448, 0.818447, 0.271395,
		45.925316, 36.660885, 32.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221554, 35.790104, 32.385387>,  <45.570801, 36.087975, 32.232300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221554, 35.790104, 32.385387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222153, 36.140572, 32.578190>,  <46.222511, 36.350853, 32.693871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222153, 36.140572, 32.578190>,  <46.221554, 35.790104, 32.385387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222153, 36.140572, 32.578190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459309, -0.428757, 0.777948,
		0.888276, 0.220223, -0.403074,
		0.001499, 0.876168, 0.482004,
		46.222603, 36.403423, 32.722790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944386, 35.847572, 32.749229>,  <46.221554, 35.790104, 32.385387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944386, 35.847572, 32.749229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697678, 36.123230, 32.901371>,  <46.549652, 36.288624, 32.992657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697678, 36.123230, 32.901371>,  <46.944386, 35.847572, 32.749229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697678, 36.123230, 32.901371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259705, -0.277990, 0.924811,
		0.743064, 0.669178, -0.007518,
		-0.616774, 0.689146, 0.380353,
		46.512646, 36.329975, 33.015476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344368, 36.250443, 33.173538>,  <46.944386, 35.847572, 32.749229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344368, 36.250443, 33.173538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971100, 36.307907, 33.305328>,  <46.747139, 36.342384, 33.384403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971100, 36.307907, 33.305328>,  <47.344368, 36.250443, 33.173538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971100, 36.307907, 33.305328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260694, -0.360538, 0.895573,
		0.247444, 0.921615, 0.298993,
		-0.933172, 0.143658, 0.329472,
		46.691147, 36.351006, 33.404171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394054, 36.651417, 33.743603>,  <47.344368, 36.250443, 33.173538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394054, 36.651417, 33.743603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053822, 36.441853, 33.761658>,  <46.849682, 36.316116, 33.772491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053822, 36.441853, 33.761658>,  <47.394054, 36.651417, 33.743603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.053822, 36.441853, 33.761658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316146, -0.440903, 0.840033,
		-0.420200, 0.728783, 0.540654,
		-0.850578, -0.523908, 0.045134,
		46.798649, 36.284679, 33.775196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152760, 36.685337, 34.483593>,  <47.394054, 36.651417, 33.743603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152760, 36.685337, 34.483593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043381, 36.354656, 34.286907>,  <46.977753, 36.156246, 34.168896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043381, 36.354656, 34.286907>,  <47.152760, 36.685337, 34.483593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.043381, 36.354656, 34.286907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391459, -0.562598, 0.728178,
		-0.878628, 0.006631, 0.477462,
		-0.273447, -0.826704, -0.491719,
		46.961346, 36.106644, 34.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807934, 36.201027, 34.871429>,  <47.152760, 36.685337, 34.483593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807934, 36.201027, 34.871429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.025494, 36.013149, 34.593277>,  <47.156029, 35.900421, 34.426384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.025494, 36.013149, 34.593277>,  <46.807934, 36.201027, 34.871429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.025494, 36.013149, 34.593277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542342, -0.435595, 0.718417,
		-0.640344, -0.767882, 0.017817,
		0.543898, -0.469697, -0.695384,
		47.188663, 35.872242, 34.384663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032398, 35.570667, 35.103249>,  <46.807934, 36.201027, 34.871429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032398, 35.570667, 35.103249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304310, 35.619255, 34.813934>,  <47.467457, 35.648407, 34.640347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304310, 35.619255, 34.813934>,  <47.032398, 35.570667, 35.103249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.304310, 35.619255, 34.813934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644976, -0.568500, 0.510700,
		-0.349153, -0.813666, -0.464800,
		0.679778, 0.121472, -0.723289,
		47.508244, 35.655697, 34.596947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239979, 34.898666, 34.885643>,  <47.032398, 35.570667, 35.103249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239979, 34.898666, 34.885643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524448, 35.172661, 34.822365>,  <47.695129, 35.337059, 34.784397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524448, 35.172661, 34.822365>,  <47.239979, 34.898666, 34.885643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.524448, 35.172661, 34.822365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678697, -0.610280, 0.408570,
		0.183324, -0.397929, -0.898913,
		0.711170, 0.684990, -0.158194,
		47.737801, 35.378159, 34.774906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.812981, 34.561092, 35.076145>,  <47.239979, 34.898666, 34.885643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.812981, 34.561092, 35.076145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949345, 34.935467, 35.040794>,  <48.031162, 35.160091, 35.019585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949345, 34.935467, 35.040794>,  <47.812981, 34.561092, 35.076145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.949345, 34.935467, 35.040794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775595, -0.226882, 0.589047,
		0.531256, -0.269358, -0.803251,
		0.340908, 0.935933, -0.088381,
		48.051617, 35.216248, 35.014278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.287209, 34.561188, 42.638271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914009, 34.574398, 42.494930>,  <35.690090, 34.582325, 42.408924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914009, 34.574398, 42.494930>,  <36.287209, 34.561188, 42.638271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914009, 34.574398, 42.494930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359849, 0.073533, -0.930108,
		-0.004369, -0.996746, -0.080491,
		-0.933000, 0.033029, -0.358357,
		35.634109, 34.584305, 42.387424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254902, 34.107288, 42.054249>,  <36.287209, 34.561188, 42.638271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254902, 34.107288, 42.054249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954170, 34.363529, 41.991795>,  <35.773731, 34.517273, 41.954323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954170, 34.363529, 41.991795>,  <36.254902, 34.107288, 42.054249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954170, 34.363529, 41.991795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270201, 0.083336, -0.959191,
		-0.601447, -0.763338, -0.235746,
		-0.751833, 0.640602, -0.156133,
		35.728619, 34.555710, 41.944954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098263, 34.060165, 41.291801>,  <36.254902, 34.107288, 42.054249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098263, 34.060165, 41.291801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941013, 34.400471, 41.431316>,  <35.846664, 34.604656, 41.515026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941013, 34.400471, 41.431316>,  <36.098263, 34.060165, 41.291801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941013, 34.400471, 41.431316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013189, 0.374072, -0.927306,
		-0.919391, -0.369146, -0.135836,
		-0.393123, 0.850765, 0.348787,
		35.823078, 34.655701, 41.535954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600929, 34.183689, 40.875225>,  <36.098263, 34.060165, 41.291801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600929, 34.183689, 40.875225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.645908, 34.547890, 41.034397>,  <35.672897, 34.766411, 41.129898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.645908, 34.547890, 41.034397>,  <35.600929, 34.183689, 40.875225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645908, 34.547890, 41.034397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001939, 0.400265, -0.916398,
		-0.993656, 0.103819, 0.043243,
		0.112448, 0.910500, 0.397927,
		35.679642, 34.821041, 41.153774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048943, 34.668411, 40.642715>,  <35.600929, 34.183689, 40.875225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048943, 34.668411, 40.642715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384869, 34.863361, 40.738361>,  <35.586422, 34.980331, 40.795750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384869, 34.863361, 40.738361>,  <35.048943, 34.668411, 40.642715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384869, 34.863361, 40.738361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031533, 0.483515, -0.874768,
		-0.541959, 0.727101, 0.421431,
		0.839813, 0.487377, 0.239118,
		35.636814, 35.009575, 40.810097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072151, 35.311184, 40.283390>,  <35.048943, 34.668411, 40.642715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072151, 35.311184, 40.283390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459839, 35.317398, 40.381668>,  <35.692451, 35.321129, 40.440636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459839, 35.317398, 40.381668>,  <35.072151, 35.311184, 40.283390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459839, 35.317398, 40.381668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210743, 0.463495, -0.860674,
		-0.127251, 0.885963, 0.445956,
		0.969224, 0.015540, 0.245691,
		35.750607, 35.322060, 40.455376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187916, 35.949680, 40.005589>,  <35.072151, 35.311184, 40.283390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187916, 35.949680, 40.005589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523884, 35.742668, 40.070953>,  <35.725464, 35.618462, 40.110172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523884, 35.742668, 40.070953>,  <35.187916, 35.949680, 40.005589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523884, 35.742668, 40.070953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393627, 0.373629, -0.839916,
		0.373629, 0.769781, 0.517531,
		0.839916, -0.517531, 0.163408,
		35.775860, 35.587410, 40.119976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668739, 36.408695, 39.789181>,  <35.187916, 35.949680, 40.005589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668739, 36.408695, 39.789181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840324, 36.047722, 39.773182>,  <35.943275, 35.831139, 39.763580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840324, 36.047722, 39.773182>,  <35.668739, 36.408695, 39.789181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840324, 36.047722, 39.773182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428922, 0.242456, -0.870196,
		0.794993, 0.356127, 0.491079,
		0.428966, -0.902435, -0.040000,
		35.969013, 35.776993, 39.761181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239594, 36.607758, 39.497261>,  <35.668739, 36.408695, 39.789181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239594, 36.607758, 39.497261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187260, 36.217026, 39.429508>,  <36.155857, 35.982586, 39.388859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187260, 36.217026, 39.429508>,  <36.239594, 36.607758, 39.497261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187260, 36.217026, 39.429508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267522, 0.129723, -0.954779,
		0.954627, -0.170235, 0.244350,
		-0.130839, -0.976828, -0.169379,
		36.148006, 35.923977, 39.378696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726299, 36.439354, 39.145161>,  <36.239594, 36.607758, 39.497261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726299, 36.439354, 39.145161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527020, 36.103832, 39.057343>,  <36.407452, 35.902519, 39.004654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527020, 36.103832, 39.057343>,  <36.726299, 36.439354, 39.145161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527020, 36.103832, 39.057343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573606, -0.128966, -0.808915,
		0.650211, -0.528932, 0.545396,
		-0.498198, -0.838808, -0.219544,
		36.377560, 35.852188, 38.991478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108440, 35.913044, 39.103489>,  <36.726299, 36.439354, 39.145161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108440, 35.913044, 39.103489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801365, 35.783962, 38.882030>,  <36.617119, 35.706512, 38.749157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801365, 35.783962, 38.882030>,  <37.108440, 35.913044, 39.103489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801365, 35.783962, 38.882030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622541, -0.170642, -0.763757,
		0.151994, -0.930990, 0.331897,
		-0.767686, -0.322706, -0.553643,
		36.571060, 35.687149, 38.715939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284615, 35.282459, 38.854492>,  <37.108440, 35.913044, 39.103489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284615, 35.282459, 38.854492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033463, 35.433727, 38.582386>,  <36.882771, 35.524487, 38.419125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033463, 35.433727, 38.582386>,  <37.284615, 35.282459, 38.854492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033463, 35.433727, 38.582386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727153, -0.026626, -0.685959,
		-0.277522, -0.925353, -0.258271,
		-0.627877, 0.378171, -0.680262,
		36.845100, 35.547180, 38.378307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356907, 34.800243, 38.308933>,  <37.284615, 35.282459, 38.854492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356907, 34.800243, 38.308933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192783, 35.122047, 38.137157>,  <37.094311, 35.315128, 38.034092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192783, 35.122047, 38.137157>,  <37.356907, 34.800243, 38.308933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192783, 35.122047, 38.137157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788357, 0.076204, -0.610480,
		-0.458410, -0.589035, -0.665506,
		-0.410308, 0.804507, -0.429437,
		37.069691, 35.363400, 38.008327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446999, 34.668396, 37.659126>,  <37.356907, 34.800243, 38.308933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446999, 34.668396, 37.659126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360821, 35.058643, 37.642403>,  <37.309113, 35.292793, 37.632370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360821, 35.058643, 37.642403>,  <37.446999, 34.668396, 37.659126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360821, 35.058643, 37.642403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627466, 0.105508, -0.771462,
		-0.748243, -0.192441, -0.634900,
		-0.215448, 0.975620, -0.041804,
		37.296185, 35.351330, 37.629860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368755, 34.924606, 36.886677>,  <37.446999, 34.668396, 37.659126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368755, 34.924606, 36.886677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435543, 35.268139, 37.080391>,  <37.475616, 35.474258, 37.196621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435543, 35.268139, 37.080391>,  <37.368755, 34.924606, 36.886677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435543, 35.268139, 37.080391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684642, 0.252462, -0.683760,
		-0.709498, 0.445726, -0.545840,
		0.166965, 0.858831, 0.484284,
		37.485634, 35.525787, 37.225677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395313, 35.374077, 36.343300>,  <37.368755, 34.924606, 36.886677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395313, 35.374077, 36.343300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585609, 35.556538, 36.644123>,  <37.699787, 35.666016, 36.824619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585609, 35.556538, 36.644123>,  <37.395313, 35.374077, 36.343300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585609, 35.556538, 36.644123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655581, 0.386149, -0.648924,
		-0.586418, 0.801755, -0.115340,
		0.475740, 0.456156, 0.752060,
		37.728333, 35.693386, 36.869740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410004, 36.112217, 36.251667>,  <37.395313, 35.374077, 36.343300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410004, 36.112217, 36.251667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716236, 36.018444, 36.491306>,  <37.899975, 35.962181, 36.635090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716236, 36.018444, 36.491306>,  <37.410004, 36.112217, 36.251667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716236, 36.018444, 36.491306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626671, 0.482348, -0.612065,
		-0.145486, 0.844026, 0.516191,
		0.765583, -0.234435, 0.599102,
		37.945911, 35.948112, 36.671036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939014, 36.706371, 36.242233>,  <37.410004, 36.112217, 36.251667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939014, 36.706371, 36.242233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149658, 36.397942, 36.385418>,  <38.276043, 36.212883, 36.471329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149658, 36.397942, 36.385418>,  <37.939014, 36.706371, 36.242233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149658, 36.397942, 36.385418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809837, 0.326959, -0.487095,
		0.258547, 0.546397, 0.796621,
		0.526609, -0.771070, 0.357958,
		38.307640, 36.166622, 36.492805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656509, 36.981113, 36.553013>,  <37.939014, 36.706371, 36.242233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656509, 36.981113, 36.553013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705170, 36.603600, 36.430065>,  <38.734367, 36.377090, 36.356297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705170, 36.603600, 36.430065>,  <38.656509, 36.981113, 36.553013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705170, 36.603600, 36.430065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843548, 0.261504, -0.469088,
		0.523094, -0.202210, 0.827939,
		0.121655, -0.943783, -0.307365,
		38.741665, 36.320465, 36.337856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372631, 36.959370, 36.430714>,  <38.656509, 36.981113, 36.553013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372631, 36.959370, 36.430714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249653, 36.611744, 36.275692>,  <39.175865, 36.403168, 36.182678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249653, 36.611744, 36.275692>,  <39.372631, 36.959370, 36.430714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249653, 36.611744, 36.275692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740124, 0.037584, -0.671419,
		0.598073, -0.493268, 0.631661,
		-0.307449, -0.869065, -0.387558,
		39.157417, 36.351025, 36.159424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950691, 36.538071, 36.423820>,  <39.372631, 36.959370, 36.430714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950691, 36.538071, 36.423820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706871, 36.355537, 36.164528>,  <39.560577, 36.246017, 36.008953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706871, 36.355537, 36.164528>,  <39.950691, 36.538071, 36.423820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706871, 36.355537, 36.164528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769158, -0.142449, -0.622980,
		0.191944, -0.878334, 0.437820,
		-0.609552, -0.456331, -0.648235,
		39.524006, 36.218639, 35.970058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411880, 35.901169, 36.099533>,  <39.950691, 36.538071, 36.423820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411880, 35.901169, 36.099533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.116707, 35.971703, 35.838959>,  <39.939602, 36.014023, 35.682613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.116707, 35.971703, 35.838959>,  <40.411880, 35.901169, 36.099533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116707, 35.971703, 35.838959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647860, -0.085280, -0.756970,
		-0.189037, -0.980628, -0.051311,
		-0.737931, 0.176338, -0.651432,
		39.895329, 36.024605, 35.643528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067028, 35.365913, 36.096191>,  <40.411880, 35.901169, 36.099533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067028, 35.365913, 36.096191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.429981, 35.429470, 36.251835>,  <41.647755, 35.467606, 36.345219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.429981, 35.429470, 36.251835>,  <41.067028, 35.365913, 36.096191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429981, 35.429470, 36.251835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360482, -0.181810, 0.914876,
		0.216110, -0.970411, -0.107694,
		0.907386, 0.158892, 0.389106,
		41.702198, 35.477139, 36.368568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297562, 34.743996, 36.433178>,  <41.067028, 35.365913, 36.096191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297562, 34.743996, 36.433178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.490219, 35.059593, 36.585762>,  <41.605812, 35.248951, 36.677311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.490219, 35.059593, 36.585762>,  <41.297562, 34.743996, 36.433178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490219, 35.059593, 36.585762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343554, -0.230442, 0.910421,
		0.806219, -0.569552, 0.160070,
		0.481645, 0.788991, 0.381459,
		41.634712, 35.296291, 36.700199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472649, 34.435295, 37.032562>,  <41.297562, 34.743996, 36.433178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472649, 34.435295, 37.032562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600540, 34.808838, 37.096657>,  <41.677277, 35.032963, 37.135113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600540, 34.808838, 37.096657>,  <41.472649, 34.435295, 37.032562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600540, 34.808838, 37.096657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211521, -0.094502, 0.972794,
		0.923597, -0.344925, 0.167316,
		0.319729, 0.933861, 0.160241,
		41.696461, 35.088997, 37.144730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798363, 34.388966, 37.583035>,  <41.472649, 34.435295, 37.032562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798363, 34.388966, 37.583035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.701630, 34.776997, 37.574463>,  <41.643589, 35.009815, 37.569321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.701630, 34.776997, 37.574463>,  <41.798363, 34.388966, 37.583035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701630, 34.776997, 37.574463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269643, -0.045976, 0.961862,
		0.932099, 0.238389, 0.272694,
		-0.241835, 0.970081, -0.021426,
		41.629078, 35.068020, 37.568035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251633, 34.751339, 38.116100>,  <41.798363, 34.388966, 37.583035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251633, 34.751339, 38.116100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.897545, 34.919548, 38.036556>,  <41.685093, 35.020473, 37.988831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.897545, 34.919548, 38.036556>,  <42.251633, 34.751339, 38.116100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897545, 34.919548, 38.036556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265690, -0.106162, 0.958195,
		0.381832, 0.901049, 0.205705,
		-0.885219, 0.420524, -0.198863,
		41.631981, 35.045704, 37.976898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101292, 35.069817, 38.688087>,  <42.251633, 34.751339, 38.116100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101292, 35.069817, 38.688087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.741295, 35.076839, 38.513866>,  <41.525295, 35.081055, 38.409332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.741295, 35.076839, 38.513866>,  <42.101292, 35.069817, 38.688087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741295, 35.076839, 38.513866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430777, -0.188674, 0.882515,
		-0.066683, 0.981883, 0.177368,
		-0.899991, 0.017558, -0.435554,
		41.471298, 35.082108, 38.383202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747448, 35.539715, 39.070816>,  <42.101292, 35.069817, 38.688087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747448, 35.539715, 39.070816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.479881, 35.296162, 38.900261>,  <41.319340, 35.150028, 38.797928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.479881, 35.296162, 38.900261>,  <41.747448, 35.539715, 39.070816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479881, 35.296162, 38.900261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415145, -0.169806, 0.893768,
		-0.616603, 0.774873, -0.139188,
		-0.668921, -0.608883, -0.426388,
		41.279205, 35.113495, 38.772346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124454, 35.746048, 39.424046>,  <41.747448, 35.539715, 39.070816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124454, 35.746048, 39.424046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.037598, 35.398064, 39.246952>,  <40.985485, 35.189274, 39.140697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.037598, 35.398064, 39.246952>,  <41.124454, 35.746048, 39.424046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037598, 35.398064, 39.246952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603061, -0.237087, 0.761648,
		-0.767572, 0.432381, -0.473160,
		-0.217142, -0.869964, -0.442733,
		40.972454, 35.137074, 39.114132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303692, 35.590481, 39.443680>,  <41.124454, 35.746048, 39.424046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303692, 35.590481, 39.443680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458946, 35.233589, 39.351349>,  <40.552097, 35.019455, 39.295952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458946, 35.233589, 39.351349>,  <40.303692, 35.590481, 39.443680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458946, 35.233589, 39.351349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571793, -0.429564, 0.698948,
		-0.722775, -0.139302, -0.676898,
		0.388136, -0.892227, -0.230826,
		40.575386, 34.965919, 39.282101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752277, 35.126213, 39.328300>,  <40.303692, 35.590481, 39.443680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752277, 35.126213, 39.328300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061844, 34.886997, 39.411640>,  <40.247581, 34.743469, 39.461643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061844, 34.886997, 39.411640>,  <39.752277, 35.126213, 39.328300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061844, 34.886997, 39.411640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532648, -0.436732, 0.724949,
		-0.342553, -0.672025, -0.656536,
		0.773914, -0.598036, 0.208348,
		40.294018, 34.707584, 39.474144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380085, 34.548820, 39.403534>,  <39.752277, 35.126213, 39.328300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380085, 34.548820, 39.403534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731976, 34.473003, 39.577961>,  <39.943111, 34.427513, 39.682617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731976, 34.473003, 39.577961>,  <39.380085, 34.548820, 39.403534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731976, 34.473003, 39.577961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463261, -0.548277, 0.696263,
		0.107111, -0.814533, -0.570143,
		0.879725, -0.189547, 0.436068,
		39.995892, 34.416138, 39.708782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374611, 33.812305, 39.552425>,  <39.380085, 34.548820, 39.403534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374611, 33.812305, 39.552425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.621677, 34.009300, 39.797684>,  <39.769917, 34.127499, 39.944839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.621677, 34.009300, 39.797684>,  <39.374611, 33.812305, 39.552425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621677, 34.009300, 39.797684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438075, -0.432025, 0.788317,
		0.653132, -0.755518, -0.051099,
		0.617664, 0.492490, 0.613143,
		39.806976, 34.157047, 39.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562420, 33.313412, 40.155869>,  <39.374611, 33.812305, 39.552425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562420, 33.313412, 40.155869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642712, 33.678745, 40.297588>,  <39.690887, 33.897945, 40.382622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642712, 33.678745, 40.297588>,  <39.562420, 33.313412, 40.155869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642712, 33.678745, 40.297588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474174, -0.225893, 0.850959,
		0.857244, -0.338814, 0.387735,
		0.200730, 0.913333, 0.354302,
		39.702930, 33.952744, 40.403877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939583, 33.233044, 40.762955>,  <39.562420, 33.313412, 40.155869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939583, 33.233044, 40.762955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790661, 33.604019, 40.777084>,  <39.701309, 33.826603, 40.785561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790661, 33.604019, 40.777084>,  <39.939583, 33.233044, 40.762955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790661, 33.604019, 40.777084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327586, -0.166920, 0.929960,
		0.868377, 0.334655, 0.365961,
		-0.372302, 0.927439, 0.035321,
		39.678970, 33.882252, 40.787682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097408, 33.460449, 41.435513>,  <39.939583, 33.233044, 40.762955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097408, 33.460449, 41.435513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808327, 33.682323, 41.270576>,  <39.634880, 33.815449, 41.171616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808327, 33.682323, 41.270576>,  <40.097408, 33.460449, 41.435513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808327, 33.682323, 41.270576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498107, -0.004396, 0.867104,
		0.479156, 0.832050, 0.279469,
		-0.722702, 0.554684, -0.412344,
		39.591515, 33.848728, 41.146873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971886, 33.984341, 41.877720>,  <40.097408, 33.460449, 41.435513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971886, 33.984341, 41.877720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636913, 33.962688, 41.660175>,  <39.435932, 33.949696, 41.529648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636913, 33.962688, 41.660175>,  <39.971886, 33.984341, 41.877720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636913, 33.962688, 41.660175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541582, -0.051646, 0.839060,
		-0.073509, 0.997197, 0.013933,
		-0.837428, -0.054133, -0.543860,
		39.385685, 33.946449, 41.497017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600891, 34.500225, 42.154579>,  <39.971886, 33.984341, 41.877720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600891, 34.500225, 42.154579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316113, 34.300415, 41.957150>,  <39.145245, 34.180531, 41.838692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316113, 34.300415, 41.957150>,  <39.600891, 34.500225, 42.154579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316113, 34.300415, 41.957150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529908, -0.079049, 0.844363,
		-0.460796, 0.862686, -0.208423,
		-0.711944, -0.499525, -0.493569,
		39.102528, 34.150558, 41.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003319, 34.848362, 42.429325>,  <39.600891, 34.500225, 42.154579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003319, 34.848362, 42.429325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900921, 34.496624, 42.268715>,  <38.839481, 34.285580, 42.172348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900921, 34.496624, 42.268715>,  <39.003319, 34.848362, 42.429325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900921, 34.496624, 42.268715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762522, -0.071611, 0.642986,
		-0.594160, 0.470771, -0.652187,
		-0.255996, -0.879344, -0.401522,
		38.824123, 34.232822, 42.148258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.251106, 34.884644, 42.293430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.328655, 34.492924, 42.316692>,  <38.375187, 34.257893, 42.330650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.328655, 34.492924, 42.316692>,  <38.251106, 34.884644, 42.293430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328655, 34.492924, 42.316692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815104, -0.127817, 0.565039,
		-0.545910, -0.156948, -0.823012,
		0.193877, -0.979301, 0.058152,
		38.386818, 34.199135, 42.334137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574230, 34.511723, 42.191616>,  <38.251106, 34.884644, 42.293430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574230, 34.511723, 42.191616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834381, 34.257122, 42.357445>,  <37.990471, 34.104362, 42.456944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834381, 34.257122, 42.357445>,  <37.574230, 34.511723, 42.191616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834381, 34.257122, 42.357445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659754, -0.202840, 0.723588,
		-0.376475, -0.744122, -0.551859,
		0.650377, -0.636504, 0.414574,
		38.029495, 34.066170, 42.481815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161770, 33.862633, 42.340858>,  <37.574230, 34.511723, 42.191616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161770, 33.862633, 42.340858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478920, 33.836967, 42.583260>,  <37.669209, 33.821568, 42.728699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478920, 33.836967, 42.583260>,  <37.161770, 33.862633, 42.340858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478920, 33.836967, 42.583260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589118, -0.335049, 0.735311,
		0.155861, -0.940014, -0.303450,
		0.792873, -0.064162, 0.606000,
		37.716782, 33.817719, 42.765060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995487, 33.278008, 42.698547>,  <37.161770, 33.862633, 42.340858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995487, 33.278008, 42.698547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255527, 33.499950, 42.906200>,  <37.411552, 33.633118, 43.030792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255527, 33.499950, 42.906200>,  <36.995487, 33.278008, 42.698547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255527, 33.499950, 42.906200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494294, -0.210071, 0.843530,
		0.577094, -0.804986, 0.137695,
		0.650105, 0.554857, 0.519131,
		37.450558, 33.666409, 43.061939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988377, 32.987232, 43.328659>,  <36.995487, 33.278008, 42.698547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988377, 32.987232, 43.328659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172016, 33.334122, 43.405762>,  <37.282200, 33.542255, 43.452023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172016, 33.334122, 43.405762>,  <36.988377, 32.987232, 43.328659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172016, 33.334122, 43.405762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392893, 0.003601, 0.919577,
		0.796783, -0.497909, 0.342379,
		0.459099, 0.867222, 0.192756,
		37.309746, 33.594288, 43.463589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260120, 32.848248, 43.967911>,  <36.988377, 32.987232, 43.328659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260120, 32.848248, 43.967911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281559, 33.247570, 43.958836>,  <37.294422, 33.487164, 43.953388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281559, 33.247570, 43.958836>,  <37.260120, 32.848248, 43.967911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281559, 33.247570, 43.958836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272091, 0.036464, 0.961581,
		0.960778, -0.045362, 0.273584,
		0.053595, 0.998305, -0.022691,
		37.297638, 33.547062, 43.952030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704391, 33.062607, 44.507893>,  <37.260120, 32.848248, 43.967911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704391, 33.062607, 44.507893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448776, 33.353531, 44.407772>,  <37.295406, 33.528084, 44.347702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448776, 33.353531, 44.407772>,  <37.704391, 33.062607, 44.507893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448776, 33.353531, 44.407772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286615, 0.076814, 0.954962,
		0.713781, 0.681995, 0.159372,
		-0.639037, 0.727312, -0.250299,
		37.257065, 33.571724, 44.332684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887581, 33.652328, 44.976341>,  <37.704391, 33.062607, 44.507893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887581, 33.652328, 44.976341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523087, 33.705109, 44.820274>,  <37.304390, 33.736778, 44.726635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523087, 33.705109, 44.820274>,  <37.887581, 33.652328, 44.976341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523087, 33.705109, 44.820274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380676, 0.091848, 0.920136,
		0.157252, 0.986992, -0.033463,
		-0.911240, 0.131954, -0.390167,
		37.249714, 33.744694, 44.703224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620117, 34.172035, 45.400005>,  <37.887581, 33.652328, 44.976341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620117, 34.172035, 45.400005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289501, 34.041718, 45.216400>,  <37.091133, 33.963528, 45.106239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289501, 34.041718, 45.216400>,  <37.620117, 34.172035, 45.400005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289501, 34.041718, 45.216400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496955, 0.039433, 0.866880,
		-0.264327, 0.944617, -0.194500,
		-0.826539, -0.325798, -0.459009,
		37.041538, 33.943977, 45.078697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104443, 34.710072, 45.565083>,  <37.620117, 34.172035, 45.400005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104443, 34.710072, 45.565083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930767, 34.357639, 45.490063>,  <36.826561, 34.146179, 45.445049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930767, 34.357639, 45.490063>,  <37.104443, 34.710072, 45.565083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930767, 34.357639, 45.490063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645833, 0.159317, 0.746671,
		-0.627998, 0.445322, -0.638206,
		-0.434186, -0.881082, -0.187553,
		36.800510, 34.093315, 45.433796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415184, 34.860058, 45.533897>,  <37.104443, 34.710072, 45.565083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415184, 34.860058, 45.533897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446236, 34.474792, 45.636879>,  <36.464867, 34.243633, 45.698669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446236, 34.474792, 45.636879>,  <36.415184, 34.860058, 45.533897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446236, 34.474792, 45.636879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649002, 0.147211, 0.746408,
		-0.756816, -0.225031, -0.613670,
		0.077625, -0.963167, 0.257457,
		36.469524, 34.185841, 45.714115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913425, 34.772053, 46.040657>,  <36.415184, 34.860058, 45.533897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913425, 34.772053, 46.040657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067303, 34.402954, 46.050087>,  <36.159630, 34.181496, 46.055744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067303, 34.402954, 46.050087>,  <35.913425, 34.772053, 46.040657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067303, 34.402954, 46.050087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557803, -0.212045, 0.802430,
		-0.735437, -0.321841, -0.596281,
		0.384693, -0.922744, 0.023578,
		36.182709, 34.126129, 46.057159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359097, 34.418755, 46.306400>,  <35.913425, 34.772053, 46.040657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359097, 34.418755, 46.306400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677563, 34.179832, 46.345058>,  <35.868641, 34.036476, 46.368256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677563, 34.179832, 46.345058>,  <35.359097, 34.418755, 46.306400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677563, 34.179832, 46.345058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355366, -0.332311, 0.873661,
		-0.489730, -0.729925, -0.476839,
		0.796165, -0.597310, 0.096648,
		35.916412, 34.000641, 46.374054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204418, 33.681236, 46.413513>,  <35.359097, 34.418755, 46.306400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204418, 33.681236, 46.413513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.562099, 33.744850, 46.580894>,  <35.776711, 33.783020, 46.681324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.562099, 33.744850, 46.580894>,  <35.204418, 33.681236, 46.413513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562099, 33.744850, 46.580894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336531, -0.377585, 0.862656,
		0.295196, -0.912215, -0.284118,
		0.894207, 0.159039, 0.418451,
		35.830360, 33.792561, 46.706429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389217, 33.048729, 46.519497>,  <35.204418, 33.681236, 46.413513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389217, 33.048729, 46.519497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602997, 33.294094, 46.752079>,  <35.731266, 33.441315, 46.891628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602997, 33.294094, 46.752079>,  <35.389217, 33.048729, 46.519497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602997, 33.294094, 46.752079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266415, -0.530612, 0.804658,
		0.802115, -0.584955, -0.120161,
		0.534447, 0.613416, 0.581452,
		35.763332, 33.478119, 46.926514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583115, 32.617207, 47.019634>,  <35.389217, 33.048729, 46.519497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583115, 32.617207, 47.019634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664333, 32.972183, 47.185146>,  <35.713066, 33.185169, 47.284454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664333, 32.972183, 47.185146>,  <35.583115, 32.617207, 47.019634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664333, 32.972183, 47.185146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108028, -0.399705, 0.910256,
		0.973192, -0.229524, 0.014710,
		0.203046, 0.887443, 0.413785,
		35.725246, 33.238415, 47.309280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967064, 32.450462, 47.606537>,  <35.583115, 32.617207, 47.019634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967064, 32.450462, 47.606537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853832, 32.825016, 47.689533>,  <35.785892, 33.049747, 47.739330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853832, 32.825016, 47.689533>,  <35.967064, 32.450462, 47.606537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853832, 32.825016, 47.689533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228839, -0.276035, 0.933508,
		0.931398, 0.216770, 0.292420,
		-0.283075, 0.936384, 0.207492,
		35.768909, 33.105930, 47.751781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285522, 32.558418, 48.208099>,  <35.967064, 32.450462, 47.606537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285522, 32.558418, 48.208099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008736, 32.846951, 48.196304>,  <35.842663, 33.020069, 48.189228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008736, 32.846951, 48.196304>,  <36.285522, 32.558418, 48.208099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008736, 32.846951, 48.196304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292160, -0.242444, 0.925129,
		0.660172, 0.648773, 0.378506,
		-0.691965, 0.721328, -0.029491,
		35.801147, 33.063351, 48.187458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366413, 32.941483, 48.810223>,  <36.285522, 32.558418, 48.208099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366413, 32.941483, 48.810223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987831, 32.967640, 48.683762>,  <35.760681, 32.983334, 48.607883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987831, 32.967640, 48.683762>,  <36.366413, 32.941483, 48.810223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987831, 32.967640, 48.683762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322202, -0.252942, 0.912253,
		-0.020317, 0.965269, 0.260466,
		-0.946453, 0.065389, -0.316151,
		35.703896, 32.987255, 48.588917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154385, 33.257095, 49.369415>,  <36.366413, 32.941483, 48.810223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154385, 33.257095, 49.369415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851021, 33.082836, 49.175499>,  <35.669003, 32.978279, 49.059151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851021, 33.082836, 49.175499>,  <36.154385, 33.257095, 49.369415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851021, 33.082836, 49.175499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447476, -0.192773, 0.873272,
		-0.473896, 0.879231, -0.048742,
		-0.758411, -0.435651, -0.484789,
		35.623497, 32.952141, 49.030064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525177, 33.537834, 49.616081>,  <36.154385, 33.257095, 49.369415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525177, 33.537834, 49.616081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439476, 33.185089, 49.448074>,  <35.388054, 32.973442, 49.347271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439476, 33.185089, 49.448074>,  <35.525177, 33.537834, 49.616081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439476, 33.185089, 49.448074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433903, -0.299321, 0.849786,
		-0.875113, 0.364320, -0.318510,
		-0.214257, -0.881861, -0.420019,
		35.375198, 32.920532, 49.322067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992119, 33.455742, 49.910194>,  <35.525177, 33.537834, 49.616081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992119, 33.455742, 49.910194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057358, 33.085968, 49.772312>,  <35.096500, 32.864105, 49.689583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057358, 33.085968, 49.772312>,  <34.992119, 33.455742, 49.910194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057358, 33.085968, 49.772312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354877, -0.380971, 0.853770,
		-0.920577, -0.016917, -0.390195,
		0.163096, -0.924432, -0.344710,
		35.106285, 32.808640, 49.668900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396538, 33.098705, 49.954540>,  <34.992119, 33.455742, 49.910194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396538, 33.098705, 49.954540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682487, 32.819038, 49.950237>,  <34.854057, 32.651237, 49.947655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682487, 32.819038, 49.950237>,  <34.396538, 33.098705, 49.954540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682487, 32.819038, 49.950237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323763, -0.344593, 0.881154,
		-0.619782, -0.626433, -0.472706,
		0.714875, -0.699169, -0.010757,
		34.896950, 32.609287, 49.947010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049061, 32.446301, 49.846863>,  <34.396538, 33.098705, 49.954540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049061, 32.446301, 49.846863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385967, 32.449558, 50.062462>,  <34.588112, 32.451511, 50.191822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385967, 32.449558, 50.062462>,  <34.049061, 32.446301, 49.846863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385967, 32.449558, 50.062462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513553, -0.291829, 0.806907,
		0.163865, -0.956436, -0.241616,
		0.842266, 0.008141, 0.539001,
		34.638645, 32.452000, 50.224163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501194, 32.774067, 49.342010>,  <34.049061, 32.446301, 49.846863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501194, 32.774067, 49.342010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118332, 32.704220, 49.249603>,  <32.888615, 32.662312, 49.194160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118332, 32.704220, 49.249603>,  <33.501194, 32.774067, 49.342010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118332, 32.704220, 49.249603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200366, 0.176621, -0.963669,
		0.209080, -0.968665, -0.134064,
		-0.957152, -0.174622, -0.231016,
		32.831184, 32.651833, 49.180298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465267, 32.299389, 48.830891>,  <33.501194, 32.774067, 49.342010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465267, 32.299389, 48.830891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.100845, 32.463291, 48.812679>,  <32.882191, 32.561634, 48.801750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.100845, 32.463291, 48.812679>,  <33.465267, 32.299389, 48.830891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100845, 32.463291, 48.812679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108482, 0.131711, -0.985334,
		-0.397751, -0.902636, -0.164447,
		-0.911058, 0.409757, -0.045532,
		32.827526, 32.586220, 48.799019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241234, 31.963528, 48.279575>,  <33.465267, 32.299389, 48.830891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241234, 31.963528, 48.279575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042484, 32.305420, 48.339645>,  <32.923233, 32.510555, 48.375687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042484, 32.305420, 48.339645>,  <33.241234, 31.963528, 48.279575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042484, 32.305420, 48.339645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069964, 0.211935, -0.974776,
		-0.864997, -0.473835, -0.165106,
		-0.496875, 0.854730, 0.150172,
		32.893421, 32.561840, 48.384697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712547, 31.890562, 47.769020>,  <33.241234, 31.963528, 48.279575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712547, 31.890562, 47.769020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776524, 32.267857, 47.885448>,  <32.814911, 32.494232, 47.955307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776524, 32.267857, 47.885448>,  <32.712547, 31.890562, 47.769020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776524, 32.267857, 47.885448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051143, 0.286557, -0.956697,
		-0.985801, 0.167903, -0.002407,
		0.159943, 0.943236, 0.291075,
		32.824505, 32.550827, 47.972771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209900, 32.258221, 47.419582>,  <32.712547, 31.890562, 47.769020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209900, 32.258221, 47.419582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.465775, 32.544853, 47.530804>,  <32.619301, 32.716831, 47.597538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.465775, 32.544853, 47.530804>,  <32.209900, 32.258221, 47.419582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465775, 32.544853, 47.530804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013927, 0.372496, -0.927930,
		-0.768509, 0.589713, 0.248261,
		0.639688, 0.716580, 0.278053,
		32.657681, 32.759827, 47.614220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963177, 32.892975, 47.056793>,  <32.209900, 32.258221, 47.419582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963177, 32.892975, 47.056793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349602, 32.944057, 47.146606>,  <32.581455, 32.974709, 47.200493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349602, 32.944057, 47.146606>,  <31.963177, 32.892975, 47.056793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349602, 32.944057, 47.146606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180074, 0.290229, -0.939862,
		-0.185193, 0.948398, 0.257382,
		0.966062, 0.127708, 0.224530,
		32.639420, 32.982368, 47.213966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111481, 33.507812, 46.742550>,  <31.963177, 32.892975, 47.056793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111481, 33.507812, 46.742550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457493, 33.330555, 46.836651>,  <32.665100, 33.224201, 46.893112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457493, 33.330555, 46.836651>,  <32.111481, 33.507812, 46.742550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457493, 33.330555, 46.836651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367164, 0.239583, -0.898772,
		0.341922, 0.863842, 0.369953,
		0.865032, -0.443144, 0.235253,
		32.717003, 33.197613, 46.907227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565422, 33.964386, 46.497982>,  <32.111481, 33.507812, 46.742550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565422, 33.964386, 46.497982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.752110, 33.610714, 46.505936>,  <32.864124, 33.398510, 46.510708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.752110, 33.610714, 46.505936>,  <32.565422, 33.964386, 46.497982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752110, 33.610714, 46.505936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482269, 0.235593, -0.843749,
		0.741342, 0.403386, 0.536369,
		0.466721, -0.884181, 0.019885,
		32.892124, 33.345459, 46.511902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374062, 34.054604, 46.433701>,  <32.565422, 33.964386, 46.497982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374062, 34.054604, 46.433701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272152, 33.685375, 46.318443>,  <33.211006, 33.463837, 46.249290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272152, 33.685375, 46.318443>,  <33.374062, 34.054604, 46.433701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272152, 33.685375, 46.318443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638477, 0.063210, -0.767041,
		0.726248, -0.379397, 0.573256,
		-0.254777, -0.923072, -0.288143,
		33.195721, 33.408455, 46.232002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061680, 33.733524, 46.233704>,  <33.374062, 34.054604, 46.433701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061680, 33.733524, 46.233704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766586, 33.508629, 46.084232>,  <33.589531, 33.373692, 45.994549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766586, 33.508629, 46.084232>,  <34.061680, 33.733524, 46.233704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766586, 33.508629, 46.084232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567398, -0.216466, -0.794482,
		0.365802, -0.798140, 0.478708,
		-0.737732, -0.562241, -0.373679,
		33.545265, 33.339958, 45.972130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449177, 33.066658, 45.898392>,  <34.061680, 33.733524, 46.233704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449177, 33.066658, 45.898392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084763, 33.126465, 45.744686>,  <33.866116, 33.162350, 45.652462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084763, 33.126465, 45.744686>,  <34.449177, 33.066658, 45.898392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084763, 33.126465, 45.744686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386105, -0.017725, -0.922285,
		-0.144706, -0.988601, -0.041580,
		-0.911034, 0.149514, -0.384268,
		33.811451, 33.171318, 45.629406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441631, 32.705105, 45.288895>,  <34.449177, 33.066658, 45.898392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441631, 32.705105, 45.288895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146355, 32.970394, 45.239586>,  <33.969189, 33.129570, 45.209999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146355, 32.970394, 45.239586>,  <34.441631, 32.705105, 45.288895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146355, 32.970394, 45.239586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327562, 0.192667, -0.924977,
		-0.589720, -0.723193, -0.359474,
		-0.738196, 0.663228, -0.123271,
		33.924896, 33.169361, 45.202606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374226, 32.690548, 44.664768>,  <34.441631, 32.705105, 45.288895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374226, 32.690548, 44.664768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172276, 33.024429, 44.752743>,  <34.051105, 33.224758, 44.805527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172276, 33.024429, 44.752743>,  <34.374226, 32.690548, 44.664768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172276, 33.024429, 44.752743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214260, 0.367997, -0.904804,
		-0.836181, -0.409687, -0.364635,
		-0.504871, 0.834706, 0.219932,
		34.020813, 33.274841, 44.818722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029324, 32.867165, 44.089611>,  <34.374226, 32.690548, 44.664768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029324, 32.867165, 44.089611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055435, 33.213131, 44.288673>,  <34.071102, 33.420712, 44.408112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055435, 33.213131, 44.288673>,  <34.029324, 32.867165, 44.089611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055435, 33.213131, 44.288673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356247, 0.445650, -0.821270,
		-0.932108, 0.230901, -0.279032,
		0.065282, 0.864917, 0.497652,
		34.075020, 33.472607, 44.437969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813789, 33.345310, 43.554993>,  <34.029324, 32.867165, 44.089611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813789, 33.345310, 43.554993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028591, 33.526821, 43.839447>,  <34.157471, 33.635727, 44.010120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028591, 33.526821, 43.839447>,  <33.813789, 33.345310, 43.554993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028591, 33.526821, 43.839447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496852, 0.511128, -0.701346,
		-0.681738, 0.729952, 0.049015,
		0.537002, 0.453781, 0.711134,
		34.189693, 33.662956, 44.052788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751640, 34.073311, 43.428764>,  <33.813789, 33.345310, 43.554993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751640, 34.073311, 43.428764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072952, 34.075329, 43.666996>,  <34.265739, 34.076538, 43.809937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072952, 34.075329, 43.666996>,  <33.751640, 34.073311, 43.428764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072952, 34.075329, 43.666996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521878, 0.475931, -0.707908,
		-0.287025, 0.879468, 0.379674,
		0.803281, 0.005044, 0.595579,
		34.313938, 34.076843, 43.845669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060497, 34.774086, 43.417282>,  <33.751640, 34.073311, 43.428764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060497, 34.774086, 43.417282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358177, 34.546181, 43.556728>,  <34.536785, 34.409439, 43.640396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358177, 34.546181, 43.556728>,  <34.060497, 34.774086, 43.417282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358177, 34.546181, 43.556728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546275, 0.218822, -0.808518,
		0.384375, 0.792143, 0.474093,
		0.744204, -0.569759, 0.348618,
		34.581440, 34.375252, 43.661312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588791, 35.227997, 43.395531>,  <34.060497, 34.774086, 43.417282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588791, 35.227997, 43.395531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748657, 34.861916, 43.416206>,  <34.844578, 34.642269, 43.428612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748657, 34.861916, 43.416206>,  <34.588791, 35.227997, 43.395531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748657, 34.861916, 43.416206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595791, 0.216502, -0.773408,
		0.696633, 0.339903, 0.631798,
		0.399669, -0.915201, 0.051689,
		34.868557, 34.587357, 43.431713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329018, 35.285500, 43.397522>,  <34.588791, 35.227997, 43.395531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329018, 35.285500, 43.397522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231964, 34.927818, 43.247044>,  <35.173733, 34.713207, 43.156754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231964, 34.927818, 43.247044>,  <35.329018, 35.285500, 43.397522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231964, 34.927818, 43.247044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458523, 0.236035, -0.856764,
		0.854920, -0.380373, 0.352745,
		-0.242629, -0.894206, -0.376201,
		35.159176, 34.659557, 43.134182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940189, 34.931595, 43.278992>,  <35.329018, 35.285500, 43.397522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940189, 34.931595, 43.278992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667606, 34.782398, 43.027122>,  <35.504055, 34.692879, 42.875999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667606, 34.782398, 43.027122>,  <35.940189, 34.931595, 43.278992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667606, 34.782398, 43.027122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642840, 0.106187, -0.758605,
		0.349816, -0.921739, 0.167411,
		-0.681458, -0.372991, -0.629676,
		35.463169, 34.670502, 42.838219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.349068, 36.259708, 24.873383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016220, 36.052155, 24.795063>,  <46.816513, 35.927624, 24.748072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016220, 36.052155, 24.795063>,  <47.349068, 36.259708, 24.873383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016220, 36.052155, 24.795063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284885, 0.097006, 0.953641,
		-0.475834, 0.849323, -0.228542,
		-0.832119, -0.518883, -0.195801,
		46.766582, 35.896488, 24.736322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749203, 36.527683, 25.316652>,  <47.349068, 36.259708, 24.873383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749203, 36.527683, 25.316652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.654034, 36.145096, 25.249043>,  <46.596931, 35.915543, 25.208477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.654034, 36.145096, 25.249043>,  <46.749203, 36.527683, 25.316652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654034, 36.145096, 25.249043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237782, -0.111368, 0.964913,
		-0.941729, 0.269764, -0.200933,
		-0.237921, -0.956465, -0.169024,
		46.582657, 35.858158, 25.198336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015747, 36.403034, 25.541435>,  <46.749203, 36.527683, 25.316652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.015747, 36.403034, 25.541435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.215698, 36.057030, 25.558802>,  <46.335670, 35.849426, 25.569221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.215698, 36.057030, 25.558802>,  <46.015747, 36.403034, 25.541435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215698, 36.057030, 25.558802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299304, -0.125488, 0.945870,
		-0.812735, -0.485815, -0.321629,
		0.499878, -0.865007, 0.043418,
		46.365662, 35.797527, 25.571827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525898, 35.928246, 25.661858>,  <46.015747, 36.403034, 25.541435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525898, 35.928246, 25.661858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.876827, 35.762966, 25.759481>,  <46.087383, 35.663799, 25.818056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.876827, 35.762966, 25.759481>,  <45.525898, 35.928246, 25.661858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876827, 35.762966, 25.759481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342808, -0.183706, 0.921268,
		-0.335837, -0.891916, -0.302819,
		0.877323, -0.413205, 0.244060,
		46.140026, 35.639004, 25.832701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319042, 35.438362, 26.116491>,  <45.525898, 35.928246, 25.661858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319042, 35.438362, 26.116491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.705376, 35.382984, 26.204123>,  <45.937176, 35.349758, 26.256702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.705376, 35.382984, 26.204123>,  <45.319042, 35.438362, 26.116491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705376, 35.382984, 26.204123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251443, -0.295855, 0.921545,
		-0.062770, -0.945147, -0.320559,
		0.965835, -0.138448, 0.219080,
		45.995125, 35.341450, 26.269846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468895, 34.806965, 26.531023>,  <45.319042, 35.438362, 26.116491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468895, 34.806965, 26.531023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762596, 35.061729, 26.625021>,  <45.938816, 35.214588, 26.681419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762596, 35.061729, 26.625021>,  <45.468895, 34.806965, 26.531023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762596, 35.061729, 26.625021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068462, -0.274916, 0.959028,
		0.675418, -0.720255, -0.158253,
		0.734251, 0.636910, 0.234993,
		45.982872, 35.252804, 26.695518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808792, 34.491058, 27.116360>,  <45.468895, 34.806965, 26.531023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808792, 34.491058, 27.116360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.976139, 34.853138, 27.146273>,  <46.076546, 35.070385, 27.164221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.976139, 34.853138, 27.146273>,  <45.808792, 34.491058, 27.116360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976139, 34.853138, 27.146273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132259, -0.020741, 0.990998,
		0.898597, -0.424491, 0.111043,
		0.418367, 0.905194, 0.074780,
		46.101650, 35.124695, 27.168707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270653, 34.465816, 27.667122>,  <45.808792, 34.491058, 27.116360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270653, 34.465816, 27.667122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222004, 34.861828, 27.638678>,  <46.192814, 35.099434, 27.621611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222004, 34.861828, 27.638678>,  <46.270653, 34.465816, 27.667122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222004, 34.861828, 27.638678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104294, 0.058502, 0.992824,
		0.987082, 0.128163, 0.096139,
		-0.121619, 0.990026, -0.071113,
		46.185516, 35.158836, 27.617344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719627, 34.712345, 28.213503>,  <46.270653, 34.465816, 27.667122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719627, 34.712345, 28.213503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452789, 35.000313, 28.136868>,  <46.292686, 35.173092, 28.090887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452789, 35.000313, 28.136868>,  <46.719627, 34.712345, 28.213503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452789, 35.000313, 28.136868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209305, 0.065696, 0.975641,
		0.714968, 0.690943, 0.106857,
		-0.667092, 0.719918, -0.191589,
		46.252663, 35.216290, 28.079391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963444, 35.384624, 28.638977>,  <46.719627, 34.712345, 28.213503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963444, 35.384624, 28.638977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.572716, 35.383492, 28.553364>,  <46.338280, 35.382812, 28.501997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.572716, 35.383492, 28.553364>,  <46.963444, 35.384624, 28.638977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572716, 35.383492, 28.553364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213923, 0.047380, 0.975701,
		0.007379, 0.998873, -0.046887,
		-0.976823, -0.002830, -0.214031,
		46.279671, 35.382641, 28.489155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696384, 35.846268, 29.135296>,  <46.963444, 35.384624, 28.638977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696384, 35.846268, 29.135296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.368698, 35.672817, 28.985176>,  <46.172085, 35.568748, 28.895105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.368698, 35.672817, 28.985176>,  <46.696384, 35.846268, 29.135296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368698, 35.672817, 28.985176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499244, 0.217223, 0.838791,
		-0.282199, 0.874518, -0.394438,
		-0.819219, -0.433626, -0.375298,
		46.122932, 35.542728, 28.872587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131298, 36.271255, 29.318659>,  <46.696384, 35.846268, 29.135296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131298, 36.271255, 29.318659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988880, 35.903900, 29.249613>,  <45.903427, 35.683487, 29.208185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988880, 35.903900, 29.249613>,  <46.131298, 36.271255, 29.318659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988880, 35.903900, 29.249613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430549, -0.002720, 0.902563,
		-0.829372, 0.395674, -0.394442,
		-0.356048, -0.918387, -0.172613,
		45.882065, 35.628384, 29.197828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352036, 36.233940, 29.510145>,  <46.131298, 36.271255, 29.318659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352036, 36.233940, 29.510145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463287, 35.849743, 29.513975>,  <45.530037, 35.619225, 29.516273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463287, 35.849743, 29.513975>,  <45.352036, 36.233940, 29.510145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463287, 35.849743, 29.513975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404504, -0.108077, 0.908128,
		-0.871219, -0.256446, -0.418584,
		0.278125, -0.960497, 0.009574,
		45.546726, 35.561592, 29.516848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851086, 35.970390, 29.858181>,  <45.352036, 36.233940, 29.510145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851086, 35.970390, 29.858181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121735, 35.675861, 29.857887>,  <45.284126, 35.499142, 29.857712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121735, 35.675861, 29.857887>,  <44.851086, 35.970390, 29.858181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121735, 35.675861, 29.857887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352981, -0.325237, 0.877283,
		-0.646205, -0.593334, -0.479973,
		0.676627, -0.736326, -0.000734,
		45.324722, 35.454964, 29.857668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465694, 35.510281, 30.083902>,  <44.851086, 35.970390, 29.858181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465694, 35.510281, 30.083902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.845032, 35.400021, 30.146727>,  <45.072632, 35.333862, 30.184422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.845032, 35.400021, 30.146727>,  <44.465694, 35.510281, 30.083902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845032, 35.400021, 30.146727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262377, -0.403129, 0.876724,
		-0.178354, -0.872641, -0.454628,
		0.948340, -0.275651, 0.157061,
		45.129532, 35.317326, 30.193844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447212, 34.792137, 30.352501>,  <44.465694, 35.510281, 30.083902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447212, 34.792137, 30.352501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795631, 34.952789, 30.465612>,  <45.004684, 35.049179, 30.533480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795631, 34.952789, 30.465612>,  <44.447212, 34.792137, 30.352501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795631, 34.952789, 30.465612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183772, -0.267416, 0.945894,
		0.455517, -0.875890, -0.159125,
		0.871052, 0.401629, 0.282777,
		45.056946, 35.073277, 30.550446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682022, 34.379658, 30.721718>,  <44.447212, 34.792137, 30.352501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682022, 34.379658, 30.721718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897694, 34.693714, 30.843594>,  <45.027096, 34.882149, 30.916719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897694, 34.693714, 30.843594>,  <44.682022, 34.379658, 30.721718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897694, 34.693714, 30.843594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108872, -0.293766, 0.949657,
		0.835124, -0.545208, -0.072912,
		0.539180, 0.785143, 0.304689,
		45.059448, 34.929256, 30.934999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010498, 34.126209, 31.201994>,  <44.682022, 34.379658, 30.721718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010498, 34.126209, 31.201994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072311, 34.511845, 31.288389>,  <45.109398, 34.743225, 31.340227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072311, 34.511845, 31.288389>,  <45.010498, 34.126209, 31.201994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072311, 34.511845, 31.288389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211330, -0.181302, 0.960453,
		0.965121, -0.194067, 0.175724,
		0.154533, 0.964089, 0.215990,
		45.118671, 34.801071, 31.353186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429413, 34.114902, 31.778185>,  <45.010498, 34.126209, 31.201994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429413, 34.114902, 31.778185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241566, 34.468040, 31.775723>,  <45.128857, 34.679924, 31.774244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241566, 34.468040, 31.775723>,  <45.429413, 34.114902, 31.778185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241566, 34.468040, 31.775723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129957, -0.062229, 0.989565,
		0.873250, 0.465522, 0.143956,
		-0.469622, 0.882846, -0.006156,
		45.100677, 34.732895, 31.773876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560905, 34.373245, 32.514622>,  <45.429413, 34.114902, 31.778185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560905, 34.373245, 32.514622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276096, 34.612854, 32.368092>,  <45.105209, 34.756618, 32.280174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276096, 34.612854, 32.368092>,  <45.560905, 34.373245, 32.514622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276096, 34.612854, 32.368092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425069, 0.047519, 0.903913,
		0.558873, 0.799319, 0.220791,
		-0.712023, 0.599024, -0.366323,
		45.062489, 34.792561, 32.258194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592945, 34.831753, 33.021164>,  <45.560905, 34.373245, 32.514622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592945, 34.831753, 33.021164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241043, 34.818840, 32.831432>,  <45.029903, 34.811092, 32.717594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241043, 34.818840, 32.831432>,  <45.592945, 34.831753, 33.021164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241043, 34.818840, 32.831432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475189, 0.028077, 0.879436,
		-0.015074, 0.999085, -0.040042,
		-0.879755, -0.032285, -0.474331,
		44.977116, 34.809155, 32.689133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157631, 35.441402, 33.242764>,  <45.592945, 34.831753, 33.021164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157631, 35.441402, 33.242764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975395, 35.107784, 33.118305>,  <44.866055, 34.907612, 33.043633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975395, 35.107784, 33.118305>,  <45.157631, 35.441402, 33.242764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975395, 35.107784, 33.118305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579850, 0.012839, 0.814622,
		-0.675438, 0.551546, -0.489471,
		-0.455585, -0.834046, -0.311142,
		44.838718, 34.857571, 33.024963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622845, 35.727070, 33.684185>,  <45.157631, 35.441402, 33.242764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622845, 35.727070, 33.684185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945160, 35.952248, 33.757717>,  <46.138550, 36.087353, 33.801838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945160, 35.952248, 33.757717>,  <45.622845, 35.727070, 33.684185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945160, 35.952248, 33.757717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263456, 0.618781, -0.740069,
		-0.530371, 0.547907, 0.646919,
		0.805790, 0.562946, 0.183834,
		46.186897, 36.121132, 33.812866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460995, 36.412621, 33.742466>,  <45.622845, 35.727070, 33.684185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460995, 36.412621, 33.742466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848064, 36.396694, 33.642849>,  <46.080307, 36.387138, 33.583080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848064, 36.396694, 33.642849>,  <45.460995, 36.412621, 33.742466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848064, 36.396694, 33.642849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174790, 0.605972, -0.776045,
		0.181816, 0.794489, 0.579423,
		0.967673, -0.039820, -0.249044,
		46.138367, 36.384747, 33.568134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615021, 37.119320, 33.611645>,  <45.460995, 36.412621, 33.742466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615021, 37.119320, 33.611645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891518, 36.877419, 33.453426>,  <46.057415, 36.732277, 33.358498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891518, 36.877419, 33.453426>,  <45.615021, 37.119320, 33.611645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891518, 36.877419, 33.453426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031773, 0.521409, -0.852715,
		0.721920, 0.602004, 0.341208,
		0.691247, -0.604751, -0.395543,
		46.098892, 36.695992, 33.334763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196445, 37.531841, 33.345806>,  <45.615021, 37.119320, 33.611645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196445, 37.531841, 33.345806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.220516, 37.183891, 33.149971>,  <46.234959, 36.975121, 33.032471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.220516, 37.183891, 33.149971>,  <46.196445, 37.531841, 33.345806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220516, 37.183891, 33.149971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157353, 0.476076, -0.865212,
		0.985707, 0.129103, -0.108229,
		0.060177, -0.869876, -0.489586,
		46.238567, 36.922928, 33.003094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670486, 37.598743, 32.831360>,  <46.196445, 37.531841, 33.345806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670486, 37.598743, 32.831360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429981, 37.305672, 32.703823>,  <46.285679, 37.129829, 32.627300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429981, 37.305672, 32.703823>,  <46.670486, 37.598743, 32.831360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429981, 37.305672, 32.703823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073165, 0.346871, -0.935055,
		0.795694, -0.585542, -0.154955,
		-0.601264, -0.732680, -0.318844,
		46.249603, 37.085869, 32.608170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741875, 37.665600, 32.153694>,  <46.670486, 37.598743, 32.831360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741875, 37.665600, 32.153694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427704, 37.419880, 32.184017>,  <46.239201, 37.272449, 32.202209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427704, 37.419880, 32.184017>,  <46.741875, 37.665600, 32.153694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427704, 37.419880, 32.184017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294437, 0.263082, -0.918746,
		0.544441, -0.743925, -0.387504,
		-0.785424, -0.614298, 0.075807,
		46.192078, 37.235592, 32.206760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708088, 37.164551, 31.612055>,  <46.741875, 37.665600, 32.153694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708088, 37.164551, 31.612055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328098, 37.147598, 31.735834>,  <46.100105, 37.137428, 31.810102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328098, 37.147598, 31.735834>,  <46.708088, 37.164551, 31.612055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328098, 37.147598, 31.735834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310533, 0.234444, -0.921198,
		-0.033510, -0.971206, -0.235875,
		-0.949972, -0.042378, 0.309447,
		46.043106, 37.134884, 31.828669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.404835, 36.825699, 31.095722>,  <46.708088, 37.164551, 31.612055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.404835, 36.825699, 31.095722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.099190, 37.011818, 31.274443>,  <45.915802, 37.123489, 31.381676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.099190, 37.011818, 31.274443>,  <46.404835, 36.825699, 31.095722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099190, 37.011818, 31.274443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383259, 0.229677, -0.894629,
		-0.518889, -0.854837, 0.002831,
		-0.764111, 0.465298, 0.446801,
		45.869957, 37.151409, 31.408484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803349, 36.582546, 30.743633>,  <46.404835, 36.825699, 31.095722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803349, 36.582546, 30.743633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.718578, 36.928959, 30.924772>,  <45.667717, 37.136806, 31.033457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.718578, 36.928959, 30.924772>,  <45.803349, 36.582546, 30.743633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718578, 36.928959, 30.924772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496476, 0.303719, -0.813183,
		-0.841783, -0.397165, 0.365598,
		-0.211929, 0.866034, 0.452848,
		45.654999, 37.188770, 31.060627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159382, 36.646172, 30.595337>,  <45.803349, 36.582546, 30.743633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159382, 36.646172, 30.595337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276539, 37.019199, 30.679737>,  <45.346832, 37.243015, 30.730377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276539, 37.019199, 30.679737>,  <45.159382, 36.646172, 30.595337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276539, 37.019199, 30.679737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578610, 0.348559, -0.737372,
		-0.761199, 0.093884, 0.641686,
		0.292892, 0.932573, 0.211000,
		45.364407, 37.298973, 30.743038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620693, 37.100903, 30.685081>,  <45.159382, 36.646172, 30.595337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620693, 37.100903, 30.685081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.913177, 37.354431, 30.584206>,  <45.088669, 37.506546, 30.523680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.913177, 37.354431, 30.584206>,  <44.620693, 37.100903, 30.685081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913177, 37.354431, 30.584206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573606, 0.371213, -0.730190,
		-0.369192, 0.678582, 0.634999,
		0.731214, 0.633819, -0.252190,
		45.132542, 37.544579, 30.508549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272751, 37.855640, 30.554308>,  <44.620693, 37.100903, 30.685081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272751, 37.855640, 30.554308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625446, 37.860794, 30.365683>,  <44.837063, 37.863888, 30.252506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625446, 37.860794, 30.365683>,  <44.272751, 37.855640, 30.554308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625446, 37.860794, 30.365683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458603, 0.257686, -0.850460,
		0.110557, 0.966143, 0.233120,
		0.881737, 0.012885, -0.471565,
		44.889969, 37.864658, 30.224213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182602, 38.504017, 30.127804>,  <44.272751, 37.855640, 30.554308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182602, 38.504017, 30.127804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474285, 38.257008, 30.009882>,  <44.649296, 38.108803, 29.939129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474285, 38.257008, 30.009882>,  <44.182602, 38.504017, 30.127804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474285, 38.257008, 30.009882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330404, 0.059528, -0.941961,
		0.599235, 0.784294, -0.160624,
		0.729213, -0.617526, -0.294805,
		44.693050, 38.071751, 29.921440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346092, 38.754078, 29.461994>,  <44.182602, 38.504017, 30.127804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346092, 38.754078, 29.461994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527264, 38.398357, 29.436718>,  <44.635967, 38.184925, 29.421553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527264, 38.398357, 29.436718>,  <44.346092, 38.754078, 29.461994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527264, 38.398357, 29.436718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244812, -0.055905, -0.967957,
		0.857275, 0.453889, -0.243034,
		0.452932, -0.889303, -0.063192,
		44.663143, 38.131565, 29.417761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907806, 38.755722, 28.946802>,  <44.346092, 38.754078, 29.461994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907806, 38.755722, 28.946802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810143, 38.368355, 28.967024>,  <44.751545, 38.135937, 28.979156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810143, 38.368355, 28.967024>,  <44.907806, 38.755722, 28.946802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810143, 38.368355, 28.967024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198632, -0.001084, -0.980074,
		0.949174, -0.249338, -0.192094,
		-0.244162, -0.968416, 0.050555,
		44.736893, 38.077831, 28.982191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234493, 38.359539, 28.391531>,  <44.907806, 38.755722, 28.946802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234493, 38.359539, 28.391531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921886, 38.134983, 28.500393>,  <44.734322, 38.000248, 28.565710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921886, 38.134983, 28.500393>,  <45.234493, 38.359539, 28.391531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921886, 38.134983, 28.500393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287880, -0.062510, -0.955624,
		0.553489, -0.825188, -0.112760,
		-0.781521, -0.561389, 0.272153,
		44.687431, 37.966568, 28.582039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323551, 37.811207, 27.929396>,  <45.234493, 38.359539, 28.391531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323551, 37.811207, 27.929396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.953781, 37.808231, 28.081915>,  <44.731918, 37.806446, 28.173428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.953781, 37.808231, 28.081915>,  <45.323551, 37.811207, 27.929396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953781, 37.808231, 28.081915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371100, -0.212941, -0.903848,
		0.087921, -0.977037, 0.194085,
		-0.924421, -0.007442, 0.381300,
		44.676456, 37.806000, 28.196304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038216, 37.214787, 27.644991>,  <45.323551, 37.811207, 27.929396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038216, 37.214787, 27.644991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736942, 37.450897, 27.761126>,  <44.556179, 37.592564, 27.830807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736942, 37.450897, 27.761126>,  <45.038216, 37.214787, 27.644991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736942, 37.450897, 27.761126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482002, -0.194867, -0.854225,
		-0.447650, -0.783329, 0.431283,
		-0.753182, 0.590273, 0.290334,
		44.510986, 37.627979, 27.848227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464851, 36.799221, 27.571114>,  <45.038216, 37.214787, 27.644991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464851, 36.799221, 27.571114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332413, 37.176628, 27.576038>,  <44.252949, 37.403072, 27.578993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332413, 37.176628, 27.576038>,  <44.464851, 36.799221, 27.571114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332413, 37.176628, 27.576038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550584, -0.182580, -0.814569,
		-0.766311, -0.276479, 0.579936,
		-0.331096, 0.943517, 0.012312,
		44.233086, 37.459682, 27.579733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715481, 36.800243, 27.570183>,  <44.464851, 36.799221, 27.571114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715481, 36.800243, 27.570183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809975, 37.161217, 27.426071>,  <43.866669, 37.377800, 27.339603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809975, 37.161217, 27.426071>,  <43.715481, 36.800243, 27.570183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809975, 37.161217, 27.426071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606584, -0.152700, -0.780217,
		-0.759112, 0.402852, 0.511331,
		0.236232, 0.902437, -0.360280,
		43.880844, 37.431950, 27.317987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.607662, 34.882744, 40.718235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379086, 34.649479, 40.487278>,  <40.241940, 34.509521, 40.348705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379086, 34.649479, 40.487278>,  <40.607662, 34.882744, 40.718235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379086, 34.649479, 40.487278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766679, -0.128441, -0.629052,
		0.292678, -0.802138, 0.520494,
		-0.571439, -0.583161, -0.577391,
		40.207653, 34.474529, 40.314060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149509, 34.480640, 40.335808>,  <40.607662, 34.882744, 40.718235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149509, 34.480640, 40.335808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793766, 34.456047, 40.154583>,  <40.580318, 34.441292, 40.045849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793766, 34.456047, 40.154583>,  <41.149509, 34.480640, 40.335808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793766, 34.456047, 40.154583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453424, 0.008679, -0.891253,
		0.058732, -0.998070, 0.020161,
		-0.889358, -0.061486, -0.453058,
		40.526958, 34.437603, 40.018665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298794, 33.965397, 39.816242>,  <41.149509, 34.480640, 40.335808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298794, 33.965397, 39.816242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987312, 34.187351, 39.699131>,  <40.800423, 34.320522, 39.628864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987312, 34.187351, 39.699131>,  <41.298794, 33.965397, 39.816242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987312, 34.187351, 39.699131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454313, 0.176891, -0.873103,
		-0.432681, -0.812905, -0.389838,
		-0.778708, 0.554883, -0.292776,
		40.753700, 34.353817, 39.611298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233250, 33.909111, 39.091450>,  <41.298794, 33.965397, 39.816242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233250, 33.909111, 39.091450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998932, 34.221817, 39.176949>,  <40.858341, 34.409443, 39.228249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998932, 34.221817, 39.176949>,  <41.233250, 33.909111, 39.091450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998932, 34.221817, 39.176949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134768, 0.354020, -0.925477,
		-0.799179, -0.513329, -0.312739,
		-0.585790, 0.781769, 0.213745,
		40.823196, 34.456348, 39.241074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662083, 33.996819, 38.619678>,  <41.233250, 33.909111, 39.091450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662083, 33.996819, 38.619678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759979, 34.353111, 38.772881>,  <40.818718, 34.566887, 38.864803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759979, 34.353111, 38.772881>,  <40.662083, 33.996819, 38.619678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759979, 34.353111, 38.772881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205321, 0.338450, -0.918311,
		-0.947600, 0.303388, -0.100054,
		0.244741, 0.890734, 0.383007,
		40.833401, 34.620331, 38.887783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313183, 34.445854, 38.280853>,  <40.662083, 33.996819, 38.619678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313183, 34.445854, 38.280853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610909, 34.662273, 38.437447>,  <40.789543, 34.792126, 38.531403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610909, 34.662273, 38.437447>,  <40.313183, 34.445854, 38.280853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610909, 34.662273, 38.437447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233731, 0.338084, -0.911630,
		-0.625589, 0.770044, 0.125182,
		0.744317, 0.541047, 0.391485,
		40.834202, 34.824589, 38.554893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437420, 34.952503, 37.695759>,  <40.313183, 34.445854, 38.280853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437420, 34.952503, 37.695759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735188, 35.021503, 37.953777>,  <40.913849, 35.062904, 38.108589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735188, 35.021503, 37.953777>,  <40.437420, 34.952503, 37.695759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735188, 35.021503, 37.953777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556295, 0.374065, -0.742032,
		-0.369292, 0.911218, 0.182498,
		0.744419, 0.172503, 0.645045,
		40.958511, 35.073254, 38.147289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582264, 35.736412, 37.662430>,  <40.437420, 34.952503, 37.695759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582264, 35.736412, 37.662430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911690, 35.539898, 37.775833>,  <41.109344, 35.421989, 37.843876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911690, 35.539898, 37.775833>,  <40.582264, 35.736412, 37.662430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911690, 35.539898, 37.775833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532337, 0.496871, -0.685374,
		0.195846, 0.715373, 0.670735,
		0.823567, -0.491284, 0.283509,
		41.158760, 35.392513, 37.860886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100361, 36.211830, 37.551548>,  <40.582264, 35.736412, 37.662430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100361, 36.211830, 37.551548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285858, 35.857609, 37.562363>,  <41.397156, 35.645077, 37.568851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285858, 35.857609, 37.562363>,  <41.100361, 36.211830, 37.551548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285858, 35.857609, 37.562363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505030, 0.239158, -0.829306,
		0.727931, 0.398239, 0.558141,
		0.463746, -0.885556, 0.027032,
		41.424980, 35.591942, 37.570473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819473, 36.308857, 37.525913>,  <41.100361, 36.211830, 37.551548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819473, 36.308857, 37.525913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770802, 35.930733, 37.404869>,  <41.741600, 35.703857, 37.332241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770802, 35.930733, 37.404869>,  <41.819473, 36.308857, 37.525913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770802, 35.930733, 37.404869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444396, 0.220730, -0.868211,
		0.887529, -0.240121, 0.393236,
		-0.121677, -0.945315, -0.302613,
		41.734299, 35.647137, 37.314087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458691, 36.207966, 37.228401>,  <41.819473, 36.308857, 37.525913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458691, 36.207966, 37.228401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205273, 35.939156, 37.075031>,  <42.053223, 35.777870, 36.983009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205273, 35.939156, 37.075031>,  <42.458691, 36.207966, 37.228401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205273, 35.939156, 37.075031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551200, -0.044257, -0.833198,
		0.542958, -0.739208, 0.398457,
		-0.633541, -0.672022, -0.383422,
		42.015209, 35.737549, 36.960003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896942, 35.692436, 36.854401>,  <42.458691, 36.207966, 37.228401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896942, 35.692436, 36.854401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524090, 35.648960, 36.716228>,  <42.300377, 35.622875, 36.633327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524090, 35.648960, 36.716228>,  <42.896942, 35.692436, 36.854401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524090, 35.648960, 36.716228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355668, -0.095463, -0.929724,
		0.068075, -0.989481, 0.127641,
		-0.932130, -0.108689, -0.345428,
		42.244450, 35.616352, 36.612598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900612, 35.022331, 36.342186>,  <42.896942, 35.692436, 36.854401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900612, 35.022331, 36.342186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606159, 35.279770, 36.258381>,  <42.429485, 35.434231, 36.208099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606159, 35.279770, 36.258381>,  <42.900612, 35.022331, 36.342186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606159, 35.279770, 36.258381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275502, 0.002186, -0.961298,
		-0.618228, -0.765364, -0.178921,
		-0.736134, 0.643595, -0.209508,
		42.385319, 35.472847, 36.195530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499191, 34.901363, 35.855881>,  <42.900612, 35.022331, 36.342186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499191, 34.901363, 35.855881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464527, 35.299797, 35.848976>,  <42.443729, 35.538857, 35.844833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464527, 35.299797, 35.848976>,  <42.499191, 34.901363, 35.855881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464527, 35.299797, 35.848976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072978, -0.010934, -0.997274,
		-0.993561, -0.087686, -0.071745,
		-0.086662, 0.996088, -0.017263,
		42.438530, 35.598625, 35.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796944, 34.319714, 35.663288>,  <42.499191, 34.901363, 35.855881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796944, 34.319714, 35.663288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706776, 34.068493, 35.365364>,  <42.652676, 33.917759, 35.186611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706776, 34.068493, 35.365364>,  <42.796944, 34.319714, 35.663288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706776, 34.068493, 35.365364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484274, -0.591119, 0.645025,
		-0.845379, 0.506090, -0.170900,
		-0.225419, -0.628053, -0.744806,
		42.639149, 33.880077, 35.141922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022533, 34.226124, 35.540558>,  <42.796944, 34.319714, 35.663288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022533, 34.226124, 35.540558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203388, 33.897259, 35.402214>,  <42.311901, 33.699940, 35.319210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203388, 33.897259, 35.402214>,  <42.022533, 34.226124, 35.540558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203388, 33.897259, 35.402214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547655, -0.561948, 0.619911,
		-0.704024, -0.090871, -0.704339,
		0.452133, -0.822167, -0.345858,
		42.339027, 33.650608, 35.298458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549660, 33.746002, 35.309105>,  <42.022533, 34.226124, 35.540558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549660, 33.746002, 35.309105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870193, 33.533409, 35.418938>,  <42.062511, 33.405853, 35.484837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870193, 33.533409, 35.418938>,  <41.549660, 33.746002, 35.309105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870193, 33.533409, 35.418938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561825, -0.510966, 0.650589,
		-0.205473, -0.675605, -0.708053,
		0.801333, -0.531480, 0.274582,
		42.110592, 33.373966, 35.501312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338455, 33.039745, 35.286705>,  <41.549660, 33.746002, 35.309105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338455, 33.039745, 35.286705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649792, 33.061878, 35.536865>,  <41.836594, 33.075157, 35.686962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649792, 33.061878, 35.536865>,  <41.338455, 33.039745, 35.286705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649792, 33.061878, 35.536865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461084, -0.625704, 0.629202,
		0.426135, -0.778095, -0.461495,
		0.778338, 0.055337, 0.625402,
		41.883293, 33.078480, 35.724487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474018, 32.273239, 35.416145>,  <41.338455, 33.039745, 35.286705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474018, 32.273239, 35.416145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637146, 32.521008, 35.684475>,  <41.735023, 32.669670, 35.845474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637146, 32.521008, 35.684475>,  <41.474018, 32.273239, 35.416145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637146, 32.521008, 35.684475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425346, -0.521226, 0.739868,
		0.807939, -0.587063, 0.050903,
		0.407818, 0.619419, 0.670824,
		41.759491, 32.706833, 35.885723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519176, 31.907454, 36.039177>,  <41.474018, 32.273239, 35.416145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519176, 31.907454, 36.039177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614857, 32.266994, 36.186062>,  <41.672264, 32.482719, 36.274193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614857, 32.266994, 36.186062>,  <41.519176, 31.907454, 36.039177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614857, 32.266994, 36.186062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309018, -0.288057, 0.906383,
		0.920483, -0.330286, 0.208858,
		0.239202, 0.898852, 0.367216,
		41.686619, 32.536652, 36.296227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852776, 31.654053, 36.661263>,  <41.519176, 31.907454, 36.039177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852776, 31.654053, 36.661263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775887, 32.043827, 36.707783>,  <41.729752, 32.277691, 36.735695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775887, 32.043827, 36.707783>,  <41.852776, 31.654053, 36.661263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775887, 32.043827, 36.707783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176816, -0.150957, 0.972599,
		0.965291, 0.166392, 0.201313,
		-0.192222, 0.974436, 0.116296,
		41.718220, 32.336159, 36.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169346, 31.828054, 37.308102>,  <41.852776, 31.654053, 36.661263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169346, 31.828054, 37.308102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873058, 32.077717, 37.208691>,  <41.695286, 32.227512, 37.149044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873058, 32.077717, 37.208691>,  <42.169346, 31.828054, 37.308102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873058, 32.077717, 37.208691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381381, -0.086113, 0.920398,
		0.553070, 0.776540, 0.301826,
		-0.740718, 0.624155, -0.248531,
		41.650845, 32.264965, 37.134132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091965, 32.376919, 37.749191>,  <42.169346, 31.828054, 37.308102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091965, 32.376919, 37.749191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716911, 32.365383, 37.610622>,  <41.491879, 32.358463, 37.527481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716911, 32.365383, 37.610622>,  <42.091965, 32.376919, 37.749191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716911, 32.365383, 37.610622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346543, -0.000906, 0.938034,
		-0.027364, 0.999584, -0.009143,
		-0.937635, -0.028837, -0.346423,
		41.435619, 32.356731, 37.506695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682949, 32.619522, 38.270927>,  <42.091965, 32.376919, 37.749191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682949, 32.619522, 38.270927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395046, 32.435852, 38.062653>,  <41.222305, 32.325649, 37.937687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395046, 32.435852, 38.062653>,  <41.682949, 32.619522, 38.270927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395046, 32.435852, 38.062653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420250, -0.308806, 0.853246,
		-0.552581, 0.832945, 0.029295,
		-0.719753, -0.459176, -0.520685,
		41.179119, 32.298100, 37.906448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152599, 32.911865, 38.495369>,  <41.682949, 32.619522, 38.270927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152599, 32.911865, 38.495369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049156, 32.557892, 38.340443>,  <40.987091, 32.345509, 38.247486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049156, 32.557892, 38.340443>,  <41.152599, 32.911865, 38.495369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049156, 32.557892, 38.340443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453182, -0.242951, 0.857672,
		-0.853082, 0.397324, -0.338207,
		-0.258606, -0.884934, -0.387317,
		40.971573, 32.292412, 38.224247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449181, 32.836536, 38.645153>,  <41.152599, 32.911865, 38.495369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449181, 32.836536, 38.645153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558315, 32.465855, 38.541782>,  <40.623795, 32.243446, 38.479759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558315, 32.465855, 38.541782>,  <40.449181, 32.836536, 38.645153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558315, 32.465855, 38.541782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522544, -0.368287, 0.768969,
		-0.807780, -0.074764, -0.584724,
		0.272837, -0.926701, -0.258427,
		40.640167, 32.187843, 38.464252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808079, 32.485691, 38.795017>,  <40.449181, 32.836536, 38.645153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808079, 32.485691, 38.795017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073231, 32.187336, 38.768959>,  <40.232323, 32.008324, 38.753323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073231, 32.187336, 38.768959>,  <39.808079, 32.485691, 38.795017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073231, 32.187336, 38.768959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399913, -0.426276, 0.811393,
		-0.632975, -0.511805, -0.580859,
		0.662881, -0.745885, -0.065144,
		40.272095, 31.963572, 38.749416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420612, 31.837540, 38.947033>,  <39.808079, 32.485691, 38.795017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420612, 31.837540, 38.947033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807793, 31.788712, 39.034817>,  <40.040100, 31.759415, 39.087486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807793, 31.788712, 39.034817>,  <39.420612, 31.837540, 38.947033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807793, 31.788712, 39.034817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248653, -0.343663, 0.905576,
		-0.035125, -0.931125, -0.363004,
		0.967955, -0.122071, 0.219456,
		40.098179, 31.752090, 39.100655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346909, 31.227892, 38.470303>,  <39.420612, 31.837540, 38.947033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346909, 31.227892, 38.470303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024525, 31.006590, 38.386074>,  <38.831097, 30.873808, 38.335537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024525, 31.006590, 38.386074>,  <39.346909, 31.227892, 38.470303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024525, 31.006590, 38.386074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144418, 0.161203, -0.976297,
		0.574088, -0.817264, -0.050022,
		-0.805957, -0.553257, -0.210572,
		38.782738, 30.840612, 38.322903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559372, 30.838634, 37.992500>,  <39.346909, 31.227892, 38.470303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559372, 30.838634, 37.992500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164516, 30.811720, 37.934498>,  <38.927605, 30.795570, 37.899696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164516, 30.811720, 37.934498>,  <39.559372, 30.838634, 37.992500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164516, 30.811720, 37.934498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149100, -0.060390, -0.986976,
		0.057657, -0.995904, 0.069646,
		-0.987140, -0.067290, -0.145008,
		38.868374, 30.791533, 37.890995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425327, 30.196745, 37.541683>,  <39.559372, 30.838634, 37.992500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425327, 30.196745, 37.541683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115200, 30.448845, 37.525368>,  <38.929123, 30.600105, 37.515579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115200, 30.448845, 37.525368>,  <39.425327, 30.196745, 37.541683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115200, 30.448845, 37.525368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218851, 0.207517, -0.953436,
		-0.592437, -0.748147, -0.298823,
		-0.775321, 0.630249, -0.040792,
		38.882603, 30.637920, 37.513130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059116, 29.942051, 36.813194>,  <39.425327, 30.196745, 37.541683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059116, 29.942051, 36.813194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898163, 30.285809, 36.939388>,  <38.801590, 30.492064, 37.015106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898163, 30.285809, 36.939388>,  <39.059116, 29.942051, 36.813194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898163, 30.285809, 36.939388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148989, 0.401499, -0.903660,
		-0.903267, -0.316611, -0.289596,
		-0.402381, 0.859393, 0.315489,
		38.777447, 30.543627, 37.034035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601833, 30.095488, 36.234673>,  <39.059116, 29.942051, 36.813194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601833, 30.095488, 36.234673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695282, 30.424471, 36.442127>,  <38.751350, 30.621861, 36.566601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695282, 30.424471, 36.442127>,  <38.601833, 30.095488, 36.234673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695282, 30.424471, 36.442127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006785, 0.534765, -0.844973,
		-0.972303, 0.193887, 0.130515,
		0.233624, 0.822456, 0.518638,
		38.765369, 30.671207, 36.597717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024181, 30.586405, 36.135822>,  <38.601833, 30.095488, 36.234673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024181, 30.586405, 36.135822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361843, 30.770569, 36.245682>,  <38.564438, 30.881067, 36.311596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361843, 30.770569, 36.245682>,  <38.024181, 30.586405, 36.135822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361843, 30.770569, 36.245682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110325, 0.650522, -0.751432,
		-0.524632, 0.604021, 0.599934,
		0.844151, 0.460412, 0.274646,
		38.615089, 30.908693, 36.328075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831825, 31.339584, 36.143620>,  <38.024181, 30.586405, 36.135822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831825, 31.339584, 36.143620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230190, 31.316801, 36.115559>,  <38.469208, 31.303131, 36.098721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230190, 31.316801, 36.115559>,  <37.831825, 31.339584, 36.143620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230190, 31.316801, 36.115559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022190, 0.598415, -0.800879,
		0.087599, 0.799159, 0.594703,
		0.995908, -0.056960, -0.070154,
		38.528961, 31.299713, 36.094513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130802, 31.909746, 35.808136>,  <37.831825, 31.339584, 36.143620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130802, 31.909746, 35.808136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469177, 31.705551, 35.746437>,  <38.672203, 31.583035, 35.709419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469177, 31.705551, 35.746437>,  <38.130802, 31.909746, 35.808136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469177, 31.705551, 35.746437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190710, 0.559702, -0.806451,
		0.498016, 0.652791, 0.570828,
		0.845937, -0.510488, -0.154247,
		38.722958, 31.552404, 35.700165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491184, 32.433430, 35.498825>,  <38.130802, 31.909746, 35.808136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491184, 32.433430, 35.498825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692612, 32.095364, 35.427135>,  <38.813469, 31.892525, 35.384121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692612, 32.095364, 35.427135>,  <38.491184, 32.433430, 35.498825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692612, 32.095364, 35.427135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223630, 0.327883, -0.917868,
		0.834512, 0.422127, 0.354115,
		0.503566, -0.845163, -0.179222,
		38.843681, 31.841814, 35.373367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093075, 32.709106, 35.150928>,  <38.491184, 32.433430, 35.498825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093075, 32.709106, 35.150928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079132, 32.319073, 35.063293>,  <39.070766, 32.085052, 35.010712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079132, 32.319073, 35.063293>,  <39.093075, 32.709106, 35.150928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079132, 32.319073, 35.063293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107070, 0.214318, -0.970878,
		0.993640, -0.057296, 0.096933,
		-0.034853, -0.975082, -0.219090,
		39.068676, 32.026546, 34.997566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771191, 32.433624, 34.812057>,  <39.093075, 32.709106, 35.150928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771191, 32.433624, 34.812057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447147, 32.229088, 34.697334>,  <39.252720, 32.106365, 34.628502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447147, 32.229088, 34.697334>,  <39.771191, 32.433624, 34.812057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447147, 32.229088, 34.697334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165693, 0.269568, -0.948619,
		0.562378, -0.816007, -0.133655,
		-0.810109, -0.511337, -0.286806,
		39.204113, 32.075687, 34.611294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909573, 32.080856, 34.264500>,  <39.771191, 32.433624, 34.812057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909573, 32.080856, 34.264500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509861, 32.087448, 34.250866>,  <39.270035, 32.091404, 34.242687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509861, 32.087448, 34.250866>,  <39.909573, 32.080856, 34.264500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509861, 32.087448, 34.250866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033801, -0.017053, -0.999283,
		-0.017053, -0.999719, 0.016484,
		0.999283, -0.016484, 0.034082,
		39.210075, 32.092392, 34.240643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.212460, 29.183510, 41.973335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887890, 29.226095, 41.743462>,  <37.693150, 29.251646, 41.605537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887890, 29.226095, 41.743462>,  <38.212460, 29.183510, 41.973335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887890, 29.226095, 41.743462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581750, 0.241710, -0.776623,
		0.056225, -0.964491, -0.258063,
		-0.811423, 0.106462, -0.574682,
		37.644463, 29.258034, 41.571056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367207, 28.835381, 41.284603>,  <38.212460, 29.183510, 41.973335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367207, 28.835381, 41.284603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078754, 29.102476, 41.210739>,  <37.905685, 29.262733, 41.166420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078754, 29.102476, 41.210739>,  <38.367207, 28.835381, 41.284603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078754, 29.102476, 41.210739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519740, 0.345177, -0.781488,
		-0.458091, -0.659526, -0.595968,
		-0.721126, 0.667741, -0.184659,
		37.862415, 29.302799, 41.155342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015484, 28.744768, 40.560677>,  <38.367207, 28.835381, 41.284603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015484, 28.744768, 40.560677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937881, 29.122332, 40.667561>,  <37.891319, 29.348869, 40.731693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937881, 29.122332, 40.667561>,  <38.015484, 28.744768, 40.560677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937881, 29.122332, 40.667561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236196, 0.309318, -0.921159,
		-0.952142, -0.115593, -0.282955,
		-0.194003, 0.943907, 0.267212,
		37.879681, 29.405504, 40.747723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582443, 29.021439, 39.974335>,  <38.015484, 28.744768, 40.560677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582443, 29.021439, 39.974335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707111, 29.341143, 40.179874>,  <37.781914, 29.532965, 40.303200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707111, 29.341143, 40.179874>,  <37.582443, 29.021439, 39.974335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707111, 29.341143, 40.179874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343340, 0.409518, -0.845229,
		-0.885990, 0.439860, -0.146783,
		0.311672, 0.799261, 0.513850,
		37.800613, 29.580921, 40.334030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279942, 29.534557, 39.609413>,  <37.582443, 29.021439, 39.974335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279942, 29.534557, 39.609413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561340, 29.725822, 39.819729>,  <37.730179, 29.840582, 39.945919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561340, 29.725822, 39.819729>,  <37.279942, 29.534557, 39.609413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561340, 29.725822, 39.819729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146709, 0.626178, -0.765753,
		-0.695392, 0.615842, 0.370363,
		0.703496, 0.478163, 0.525789,
		37.772388, 29.869272, 39.977467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135624, 30.286163, 39.632523>,  <37.279942, 29.534557, 39.609413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135624, 30.286163, 39.632523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527702, 30.230314, 39.688698>,  <37.762951, 30.196806, 39.722404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527702, 30.230314, 39.688698>,  <37.135624, 30.286163, 39.632523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527702, 30.230314, 39.688698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191940, 0.495179, -0.847324,
		0.048761, 0.857499, 0.512170,
		0.980195, -0.139622, 0.140443,
		37.821762, 30.188427, 39.730831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411892, 30.872515, 39.282318>,  <37.135624, 30.286163, 39.632523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411892, 30.872515, 39.282318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737274, 30.642031, 39.313976>,  <37.932503, 30.503740, 39.332973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737274, 30.642031, 39.313976>,  <37.411892, 30.872515, 39.282318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737274, 30.642031, 39.313976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397960, 0.452172, -0.798228,
		0.424160, 0.680824, 0.597132,
		0.813459, -0.576211, 0.079148,
		37.981312, 30.469168, 39.337719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985645, 31.264706, 39.199516>,  <37.411892, 30.872515, 39.282318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985645, 31.264706, 39.199516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141579, 30.902779, 39.131004>,  <38.235138, 30.685623, 39.089897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141579, 30.902779, 39.131004>,  <37.985645, 31.264706, 39.199516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141579, 30.902779, 39.131004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396154, 0.332679, -0.855796,
		0.831318, 0.265768, 0.488137,
		0.389836, -0.904816, -0.171277,
		38.258530, 30.631334, 39.079620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750057, 31.395180, 39.069660>,  <37.985645, 31.264706, 39.199516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750057, 31.395180, 39.069660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670506, 31.036291, 38.911957>,  <38.622772, 30.820957, 38.817337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670506, 31.036291, 38.911957>,  <38.750057, 31.395180, 39.069660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670506, 31.036291, 38.911957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223409, 0.350193, -0.909644,
		0.954219, -0.268992, 0.130801,
		-0.198881, -0.897222, -0.394257,
		38.610840, 30.767124, 38.793678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403481, 31.151854, 39.300938>,  <38.750057, 31.395180, 39.069660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403481, 31.151854, 39.300938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.742619, 31.337830, 39.402908>,  <39.946102, 31.449415, 39.464092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.742619, 31.337830, 39.402908>,  <39.403481, 31.151854, 39.300938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742619, 31.337830, 39.402908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137018, -0.272344, 0.952394,
		0.512233, -0.842414, -0.167201,
		0.847846, 0.464939, 0.254929,
		39.996971, 31.477310, 39.479385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773106, 30.542910, 39.592762>,  <39.403481, 31.151854, 39.300938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773106, 30.542910, 39.592762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951252, 30.860968, 39.757393>,  <40.058140, 31.051802, 39.856171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951252, 30.860968, 39.757393>,  <39.773106, 30.542910, 39.592762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951252, 30.860968, 39.757393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058849, -0.432691, 0.899620,
		0.893413, -0.424879, -0.145911,
		0.445364, 0.795146, 0.411575,
		40.084862, 31.099512, 39.880867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023911, 30.278801, 40.165588>,  <39.773106, 30.542910, 39.592762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023911, 30.278801, 40.165588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098404, 30.663549, 40.245705>,  <40.143101, 30.894400, 40.293774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098404, 30.663549, 40.245705>,  <40.023911, 30.278801, 40.165588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098404, 30.663549, 40.245705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048264, -0.194653, 0.979684,
		0.981319, -0.192121, 0.010172,
		0.186237, 0.961873, 0.200289,
		40.154274, 30.952112, 40.305790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496540, 30.284586, 40.625851>,  <40.023911, 30.278801, 40.165588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496540, 30.284586, 40.625851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308472, 30.632660, 40.684799>,  <40.195629, 30.841503, 40.720169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308472, 30.632660, 40.684799>,  <40.496540, 30.284586, 40.625851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308472, 30.632660, 40.684799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000905, -0.166501, 0.986041,
		0.882573, 0.463745, 0.077497,
		-0.470175, 0.870183, 0.147369,
		40.167419, 30.893715, 40.729012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728661, 30.573833, 41.220940>,  <40.496540, 30.284586, 40.625851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728661, 30.573833, 41.220940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.387848, 30.778294, 41.175751>,  <40.183361, 30.900969, 41.148636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.387848, 30.778294, 41.175751>,  <40.728661, 30.573833, 41.220940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387848, 30.778294, 41.175751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144394, -0.022046, 0.989275,
		0.503176, 0.859209, 0.092591,
		-0.852035, 0.511149, -0.112972,
		40.132236, 30.931639, 41.141861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736053, 31.119827, 41.826103>,  <40.728661, 30.573833, 41.220940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736053, 31.119827, 41.826103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.360775, 31.092978, 41.690292>,  <40.135609, 31.076868, 41.608807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.360775, 31.092978, 41.690292>,  <40.736053, 31.119827, 41.826103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360775, 31.092978, 41.690292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342353, 0.036129, 0.938877,
		-0.050756, 0.997090, -0.056876,
		-0.938200, -0.067125, -0.339523,
		40.079315, 31.072840, 41.588436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359413, 31.619974, 42.142899>,  <40.736053, 31.119827, 41.826103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359413, 31.619974, 42.142899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083523, 31.341078, 42.064781>,  <39.917988, 31.173740, 42.017910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083523, 31.341078, 42.064781>,  <40.359413, 31.619974, 42.142899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083523, 31.341078, 42.064781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193119, -0.082808, 0.977675,
		-0.697846, 0.712039, -0.077536,
		-0.689722, -0.697240, -0.195296,
		39.876606, 31.131907, 42.006191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880348, 31.728573, 42.692684>,  <40.359413, 31.619974, 42.142899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880348, 31.728573, 42.692684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774178, 31.367102, 42.558273>,  <39.710476, 31.150219, 42.477627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774178, 31.367102, 42.558273>,  <39.880348, 31.728573, 42.692684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774178, 31.367102, 42.558273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368785, -0.226865, 0.901404,
		-0.890813, 0.363177, -0.273048,
		-0.265424, -0.903678, -0.336029,
		39.694550, 31.095999, 42.457466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174522, 31.594072, 42.839657>,  <39.880348, 31.728573, 42.692684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174522, 31.594072, 42.839657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311352, 31.222561, 42.782589>,  <39.393452, 30.999655, 42.748348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311352, 31.222561, 42.782589>,  <39.174522, 31.594072, 42.839657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311352, 31.222561, 42.782589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582718, -0.328785, 0.743196,
		-0.737173, -0.171092, -0.653685,
		0.342077, -0.928777, -0.142673,
		39.413975, 30.943928, 42.739788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542053, 31.174059, 42.822273>,  <39.174522, 31.594072, 42.839657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542053, 31.174059, 42.822273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824722, 30.900694, 42.895557>,  <38.994324, 30.736675, 42.939529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824722, 30.900694, 42.895557>,  <38.542053, 31.174059, 42.822273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824722, 30.900694, 42.895557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580662, -0.412201, 0.702084,
		-0.404277, -0.602540, -0.688117,
		0.706676, -0.683399, 0.183229,
		39.036724, 30.695671, 42.950523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245373, 30.563673, 42.778687>,  <38.542053, 31.174059, 42.822273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245373, 30.563673, 42.778687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566326, 30.505836, 43.010300>,  <38.758896, 30.471134, 43.149269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566326, 30.505836, 43.010300>,  <38.245373, 30.563673, 42.778687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566326, 30.505836, 43.010300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595833, -0.249699, 0.763304,
		0.034217, -0.957467, -0.286506,
		0.802379, -0.144592, 0.579035,
		38.807041, 30.462460, 43.184010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039021, 30.044104, 43.267361>,  <38.245373, 30.563673, 42.778687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039021, 30.044104, 43.267361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391102, 30.142557, 43.429672>,  <38.602352, 30.201630, 43.527058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391102, 30.142557, 43.429672>,  <38.039021, 30.044104, 43.267361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391102, 30.142557, 43.429672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319479, -0.324968, 0.890128,
		0.350957, -0.913134, -0.207404,
		0.880205, 0.246135, 0.405777,
		38.655163, 30.216398, 43.551407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373814, 29.448772, 43.689838>,  <38.039021, 30.044104, 43.267361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373814, 29.448772, 43.689838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540314, 29.779148, 43.841923>,  <38.640213, 29.977373, 43.933174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540314, 29.779148, 43.841923>,  <38.373814, 29.448772, 43.689838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540314, 29.779148, 43.841923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421732, -0.195079, 0.885486,
		0.805529, -0.528931, 0.267123,
		0.416251, 0.825939, 0.380209,
		38.665188, 30.026930, 43.955986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686455, 29.217117, 44.308502>,  <38.373814, 29.448772, 43.689838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686455, 29.217117, 44.308502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659382, 29.614676, 44.343353>,  <38.643139, 29.853210, 44.364262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659382, 29.614676, 44.343353>,  <38.686455, 29.217117, 44.308502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659382, 29.614676, 44.343353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299959, -0.103555, 0.948315,
		0.951548, 0.038051, 0.305137,
		-0.067683, 0.993896, 0.087124,
		38.639076, 29.912844, 44.369492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.370800, 32.604179, 42.192699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.734619, 32.481888, 42.305305>,  <32.952911, 32.408512, 42.372868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.734619, 32.481888, 42.305305>,  <32.370800, 32.604179, 42.192699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734619, 32.481888, 42.305305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373151, 0.302535, -0.877058,
		0.182976, 0.902774, 0.389254,
		0.909548, -0.305731, 0.281515,
		33.007484, 32.390167, 42.389759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839470, 33.110039, 42.126850>,  <32.370800, 32.604179, 42.192699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839470, 33.110039, 42.126850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059021, 32.776375, 42.105301>,  <33.190754, 32.576176, 42.092373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059021, 32.776375, 42.105301>,  <32.839470, 33.110039, 42.126850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059021, 32.776375, 42.105301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354636, 0.290740, -0.888653,
		0.756944, 0.468660, 0.455406,
		0.548880, -0.834163, -0.053870,
		33.223686, 32.526127, 42.089138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285225, 33.225002, 41.723225>,  <32.839470, 33.110039, 42.126850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285225, 33.225002, 41.723225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384930, 32.837669, 41.717464>,  <33.444752, 32.605270, 41.714008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384930, 32.837669, 41.717464>,  <33.285225, 33.225002, 41.723225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384930, 32.837669, 41.717464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510684, 0.144063, -0.847613,
		0.822843, 0.203921, 0.530420,
		0.249260, -0.968330, -0.014402,
		33.459709, 32.547169, 41.713142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990509, 33.238907, 41.658016>,  <33.285225, 33.225002, 41.723225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990509, 33.238907, 41.658016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850155, 32.887154, 41.529293>,  <33.765942, 32.676102, 41.452061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850155, 32.887154, 41.529293>,  <33.990509, 33.238907, 41.658016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850155, 32.887154, 41.529293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504735, 0.111857, -0.855997,
		0.788749, -0.462783, 0.404608,
		-0.350883, -0.879386, -0.321809,
		33.744888, 32.623337, 41.432751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606693, 33.087456, 41.422249>,  <33.990509, 33.238907, 41.658016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606693, 33.087456, 41.422249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325119, 32.863689, 41.247192>,  <34.156174, 32.729431, 41.142159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325119, 32.863689, 41.247192>,  <34.606693, 33.087456, 41.422249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325119, 32.863689, 41.247192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503764, 0.041129, -0.862862,
		0.500699, -0.827866, 0.252862,
		-0.703934, -0.559417, -0.437642,
		34.113937, 32.695866, 41.115898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012493, 32.682407, 41.029236>,  <34.606693, 33.087456, 41.422249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012493, 32.682407, 41.029236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661812, 32.676819, 40.836903>,  <34.451405, 32.673466, 40.721504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661812, 32.676819, 40.836903>,  <35.012493, 32.682407, 41.029236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661812, 32.676819, 40.836903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469409, 0.193588, -0.861498,
		0.105115, -0.980984, -0.163163,
		-0.876702, -0.013967, -0.480831,
		34.398800, 32.672626, 40.692654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187035, 32.488754, 40.316586>,  <35.012493, 32.682407, 41.029236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187035, 32.488754, 40.316586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.812298, 32.626091, 40.289902>,  <34.587456, 32.708492, 40.273891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.812298, 32.626091, 40.289902>,  <35.187035, 32.488754, 40.316586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812298, 32.626091, 40.289902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166392, 0.269745, -0.948447,
		-0.307649, -0.899641, -0.309837,
		-0.936838, 0.343343, -0.066707,
		34.531246, 32.729095, 40.269890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804699, 32.221954, 39.676216>,  <35.187035, 32.488754, 40.316586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804699, 32.221954, 39.676216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.633598, 32.569275, 39.776676>,  <34.530937, 32.777668, 39.836952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.633598, 32.569275, 39.776676>,  <34.804699, 32.221954, 39.676216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633598, 32.569275, 39.776676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086082, 0.315726, -0.944937,
		-0.899786, -0.382583, -0.209799,
		-0.427756, 0.868301, 0.251153,
		34.505272, 32.829765, 39.852020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437080, 32.424339, 39.134029>,  <34.804699, 32.221954, 39.676216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437080, 32.424339, 39.134029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461521, 32.763573, 39.344563>,  <34.476185, 32.967113, 39.470882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461521, 32.763573, 39.344563>,  <34.437080, 32.424339, 39.134029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461521, 32.763573, 39.344563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000473, 0.527292, -0.849684,
		-0.998131, 0.052167, 0.031818,
		0.061103, 0.848081, 0.526332,
		34.479851, 33.017998, 39.502460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990921, 32.878342, 38.820534>,  <34.437080, 32.424339, 39.134029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990921, 32.878342, 38.820534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222466, 33.134346, 39.022644>,  <34.361393, 33.287949, 39.143909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222466, 33.134346, 39.022644>,  <33.990921, 32.878342, 38.820534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222466, 33.134346, 39.022644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104539, 0.672785, -0.732415,
		-0.808696, 0.371147, 0.456356,
		0.578863, 0.640008, 0.505279,
		34.396126, 33.326347, 39.174229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760014, 33.551315, 38.591942>,  <33.990921, 32.878342, 38.820534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760014, 33.551315, 38.591942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116405, 33.601902, 38.766369>,  <34.330242, 33.632252, 38.871025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116405, 33.601902, 38.766369>,  <33.760014, 33.551315, 38.591942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116405, 33.601902, 38.766369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260673, 0.643891, -0.719342,
		-0.371754, 0.754593, 0.540729,
		0.890982, 0.126465, 0.436071,
		34.383701, 33.639843, 38.897190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827721, 34.236225, 38.574112>,  <33.760014, 33.551315, 38.591942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827721, 34.236225, 38.574112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192123, 34.072315, 38.592674>,  <34.410763, 33.973969, 38.603813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192123, 34.072315, 38.592674>,  <33.827721, 34.236225, 38.574112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192123, 34.072315, 38.592674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279267, 0.530188, -0.800569,
		0.303450, 0.742282, 0.597441,
		0.911004, -0.409778, 0.046410,
		34.465424, 33.949383, 38.606598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264896, 34.770676, 38.409546>,  <33.827721, 34.236225, 38.574112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264896, 34.770676, 38.409546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499802, 34.450676, 38.360348>,  <34.640743, 34.258678, 38.330830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499802, 34.450676, 38.360348>,  <34.264896, 34.770676, 38.409546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499802, 34.450676, 38.360348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267658, 0.335356, -0.903269,
		0.763859, 0.497537, 0.411068,
		0.587264, -0.799996, -0.122995,
		34.675980, 34.210678, 38.323448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893749, 35.035957, 38.026028>,  <34.264896, 34.770676, 38.409546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893749, 35.035957, 38.026028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851288, 34.648945, 37.934269>,  <34.825809, 34.416737, 37.879211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851288, 34.648945, 37.934269>,  <34.893749, 35.035957, 38.026028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851288, 34.648945, 37.934269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085242, 0.220998, -0.971542,
		0.990690, -0.122686, 0.059015,
		-0.106152, -0.967527, -0.229399,
		34.819443, 34.358688, 37.865448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595345, 34.961319, 38.493744>,  <34.893749, 35.035957, 38.026028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595345, 34.961319, 38.493744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829689, 35.245502, 38.649700>,  <35.970295, 35.416012, 38.743275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829689, 35.245502, 38.649700>,  <35.595345, 34.961319, 38.493744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829689, 35.245502, 38.649700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348082, -0.213863, 0.912744,
		0.731852, -0.670453, 0.122005,
		0.585859, 0.710461, 0.389889,
		36.005447, 35.458641, 38.766666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022884, 34.622360, 39.135777>,  <35.595345, 34.961319, 38.493744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022884, 34.622360, 39.135777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075104, 35.008911, 39.224380>,  <36.106434, 35.240841, 39.277542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075104, 35.008911, 39.224380>,  <36.022884, 34.622360, 39.135777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075104, 35.008911, 39.224380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103758, -0.208878, 0.972422,
		0.985998, -0.149928, 0.073001,
		0.130545, 0.966381, 0.221509,
		36.114265, 35.298824, 39.290833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482719, 34.628746, 39.631618>,  <36.022884, 34.622360, 39.135777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482719, 34.628746, 39.631618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343513, 35.001503, 39.672543>,  <36.259991, 35.225159, 39.697098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343513, 35.001503, 39.672543>,  <36.482719, 34.628746, 39.631618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343513, 35.001503, 39.672543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015121, -0.114695, 0.993285,
		0.937368, 0.344128, 0.054007,
		-0.348012, 0.931891, 0.102308,
		36.239109, 35.281071, 39.703236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927563, 34.931343, 40.205700>,  <36.482719, 34.628746, 39.631618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927563, 34.931343, 40.205700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.603783, 35.166180, 40.210056>,  <36.409515, 35.307083, 40.212669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.603783, 35.166180, 40.210056>,  <36.927563, 34.931343, 40.205700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603783, 35.166180, 40.210056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173766, -0.257211, 0.950604,
		0.560892, 0.767572, 0.310216,
		-0.809448, 0.587091, 0.010890,
		36.360947, 35.342308, 40.213322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027496, 35.422405, 40.746521>,  <36.927563, 34.931343, 40.205700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027496, 35.422405, 40.746521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636097, 35.384262, 40.673374>,  <36.401257, 35.361374, 40.629486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636097, 35.384262, 40.673374>,  <37.027496, 35.422405, 40.746521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636097, 35.384262, 40.673374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160011, -0.208355, 0.964875,
		-0.130113, 0.973393, 0.188617,
		-0.978502, -0.095362, -0.182864,
		36.342545, 35.355652, 40.618515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695000, 35.610294, 41.361713>,  <37.027496, 35.422405, 40.746521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695000, 35.610294, 41.361713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396416, 35.417042, 41.178684>,  <36.217266, 35.301090, 41.068867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396416, 35.417042, 41.178684>,  <36.695000, 35.610294, 41.361713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396416, 35.417042, 41.178684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350939, -0.298402, 0.887580,
		-0.565361, 0.823127, 0.053196,
		-0.746464, -0.483135, -0.457572,
		36.172478, 35.272102, 41.041412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135460, 35.841427, 41.724022>,  <36.695000, 35.610294, 41.361713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135460, 35.841427, 41.724022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970619, 35.529385, 41.535721>,  <35.871716, 35.342159, 41.422741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970619, 35.529385, 41.535721>,  <36.135460, 35.841427, 41.724022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970619, 35.529385, 41.535721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372489, -0.327271, 0.868416,
		-0.831520, 0.533224, -0.155713,
		-0.412100, -0.780107, -0.470752,
		35.846989, 35.295353, 41.394497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323296, 35.778217, 41.985718>,  <36.135460, 35.841427, 41.724022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323296, 35.778217, 41.985718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454529, 35.433643, 41.830650>,  <35.533268, 35.226898, 41.737610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454529, 35.433643, 41.830650>,  <35.323296, 35.778217, 41.985718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454529, 35.433643, 41.830650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482003, -0.505596, 0.715574,
		-0.812426, -0.047909, -0.581092,
		0.328080, -0.861440, -0.387667,
		35.552952, 35.175213, 41.714352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718948, 35.395592, 41.914410>,  <35.323296, 35.778217, 41.985718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718948, 35.395592, 41.914410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033817, 35.148952, 41.909191>,  <35.222740, 35.000969, 41.906059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033817, 35.148952, 41.909191>,  <34.718948, 35.395592, 41.914410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033817, 35.148952, 41.909191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388851, -0.512617, 0.765518,
		-0.478699, -0.597524, -0.643282,
		0.787173, -0.616594, -0.013041,
		35.269970, 34.963974, 41.905277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423389, 34.665073, 42.019581>,  <34.718948, 35.395592, 41.914410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423389, 34.665073, 42.019581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801315, 34.664673, 42.150623>,  <35.028072, 34.664433, 42.229248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801315, 34.664673, 42.150623>,  <34.423389, 34.665073, 42.019581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801315, 34.664673, 42.150623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309924, -0.326849, 0.892814,
		0.106184, -0.945076, -0.309122,
		0.944813, -0.001002, 0.327608,
		35.084759, 34.664371, 42.248905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497250, 34.024124, 42.234436>,  <34.423389, 34.665073, 42.019581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497250, 34.024124, 42.234436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802475, 34.210678, 42.413418>,  <34.985611, 34.322609, 42.520809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802475, 34.210678, 42.413418>,  <34.497250, 34.024124, 42.234436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802475, 34.210678, 42.413418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329448, -0.314954, 0.890094,
		0.556054, -0.826614, -0.086681,
		0.763065, 0.466384, 0.447457,
		35.031395, 34.350594, 42.547653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754841, 33.506126, 42.744427>,  <34.497250, 34.024124, 42.234436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754841, 33.506126, 42.744427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906567, 33.863720, 42.839848>,  <34.997601, 34.078278, 42.897102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906567, 33.863720, 42.839848>,  <34.754841, 33.506126, 42.744427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906567, 33.863720, 42.839848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002579, -0.256799, 0.966461,
		0.925264, -0.367209, -0.095102,
		0.379315, 0.893987, 0.238554,
		35.020363, 34.131916, 42.911415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234589, 33.337120, 43.336632>,  <34.754841, 33.506126, 42.744427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234589, 33.337120, 43.336632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118355, 33.718723, 43.366093>,  <35.048615, 33.947685, 43.383770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118355, 33.718723, 43.366093>,  <35.234589, 33.337120, 43.336632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118355, 33.718723, 43.366093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206210, -0.137600, 0.968785,
		0.934365, 0.266327, 0.236711,
		-0.290585, 0.954010, 0.073649,
		35.031178, 34.004925, 43.388187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481026, 33.548328, 44.081738>,  <35.234589, 33.337120, 43.336632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481026, 33.548328, 44.081738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204170, 33.805759, 43.951042>,  <35.038055, 33.960217, 43.872623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204170, 33.805759, 43.951042>,  <35.481026, 33.548328, 44.081738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204170, 33.805759, 43.951042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386442, 0.051910, 0.920852,
		0.609596, 0.763623, 0.212774,
		-0.692138, 0.643573, -0.326740,
		34.996529, 33.998833, 43.853020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012985, 34.067249, 44.239342>,  <35.481026, 33.548328, 44.081738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012985, 34.067249, 44.239342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377289, 33.969109, 44.372196>,  <36.595871, 33.910225, 44.451908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377289, 33.969109, 44.372196>,  <36.012985, 34.067249, 44.239342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377289, 33.969109, 44.372196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352686, 0.043864, -0.934713,
		0.214764, 0.968442, 0.126481,
		0.910763, -0.245350, 0.332135,
		36.650517, 33.895504, 44.471836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524422, 34.579369, 43.995964>,  <36.012985, 34.067249, 44.239342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524422, 34.579369, 43.995964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752235, 34.265610, 44.094234>,  <36.888924, 34.077354, 44.153198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752235, 34.265610, 44.094234>,  <36.524422, 34.579369, 43.995964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752235, 34.265610, 44.094234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531848, 0.123772, -0.837746,
		0.626716, 0.607787, 0.487671,
		0.569531, -0.784395, 0.245680,
		36.923096, 34.030293, 44.167938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206154, 34.840111, 43.833557>,  <36.524422, 34.579369, 43.995964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206154, 34.840111, 43.833557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248734, 34.444592, 43.875401>,  <37.274281, 34.207279, 43.900505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248734, 34.444592, 43.875401>,  <37.206154, 34.840111, 43.833557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248734, 34.444592, 43.875401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728868, 0.006036, -0.684628,
		0.676329, 0.149118, 0.721348,
		0.106445, -0.988801, 0.104605,
		37.280666, 34.147953, 43.906780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881512, 34.760582, 43.669189>,  <37.206154, 34.840111, 43.833557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881512, 34.760582, 43.669189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.727711, 34.392097, 43.645412>,  <37.635429, 34.171009, 43.631145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.727711, 34.392097, 43.645412>,  <37.881512, 34.760582, 43.669189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727711, 34.392097, 43.645412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750023, -0.274218, -0.601889,
		0.538165, -0.276010, 0.796365,
		-0.384505, -0.921207, -0.059440,
		37.612358, 34.115734, 43.627579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429161, 34.262474, 43.832733>,  <37.881512, 34.760582, 43.669189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429161, 34.262474, 43.832733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.146873, 34.099842, 43.600647>,  <37.977501, 34.002262, 43.461395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.146873, 34.099842, 43.600647>,  <38.429161, 34.262474, 43.832733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146873, 34.099842, 43.600647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705233, -0.324712, -0.630245,
		0.067843, -0.853964, 0.515890,
		-0.705722, -0.406580, -0.580215,
		37.935158, 33.977867, 43.426582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752087, 33.709381, 43.552284>,  <38.429161, 34.262474, 43.832733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752087, 33.709381, 43.552284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441727, 33.736691, 43.301426>,  <38.255508, 33.753075, 43.150909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441727, 33.736691, 43.301426>,  <38.752087, 33.709381, 43.552284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441727, 33.736691, 43.301426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605746, -0.197044, -0.770873,
		-0.176203, -0.978015, 0.111533,
		-0.775902, 0.068269, -0.627148,
		38.208958, 33.757172, 43.113281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861961, 33.226261, 43.022564>,  <38.752087, 33.709381, 43.552284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861961, 33.226261, 43.022564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.603821, 33.471531, 42.840336>,  <38.448936, 33.618690, 42.730999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.603821, 33.471531, 42.840336>,  <38.861961, 33.226261, 43.022564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603821, 33.471531, 42.840336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585454, 0.013936, -0.810586,
		-0.490679, -0.789827, -0.367977,
		-0.645351, 0.613171, -0.455569,
		38.410217, 33.655483, 42.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679695, 32.891541, 42.365875>,  <38.861961, 33.226261, 43.022564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679695, 32.891541, 42.365875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593712, 33.281605, 42.344498>,  <38.542122, 33.515644, 42.331673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593712, 33.281605, 42.344498>,  <38.679695, 32.891541, 42.365875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593712, 33.281605, 42.344498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425773, 0.044328, -0.903744,
		-0.878925, -0.217023, -0.424725,
		-0.214960, 0.975159, -0.053442,
		38.529224, 33.574154, 42.328465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488148, 33.027874, 41.638844>,  <38.679695, 32.891541, 42.365875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488148, 33.027874, 41.638844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574699, 33.388035, 41.789814>,  <38.626633, 33.604130, 41.880398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574699, 33.388035, 41.789814>,  <38.488148, 33.027874, 41.638844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574699, 33.388035, 41.789814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445465, 0.252949, -0.858824,
		-0.868758, 0.353966, -0.346364,
		0.216382, 0.900403, 0.377431,
		38.639614, 33.658157, 41.903042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190239, 33.505226, 41.196640>,  <38.488148, 33.027874, 41.638844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190239, 33.505226, 41.196640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494030, 33.687901, 41.381950>,  <38.676304, 33.797504, 41.493137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494030, 33.687901, 41.381950>,  <38.190239, 33.505226, 41.196640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494030, 33.687901, 41.381950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412420, 0.212727, -0.885808,
		-0.503089, 0.863820, -0.026784,
		0.759481, 0.456687, 0.463277,
		38.721874, 33.824905, 41.520935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245049, 34.055187, 40.822021>,  <38.190239, 33.505226, 41.196640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245049, 34.055187, 40.822021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590446, 33.990150, 41.012997>,  <38.797684, 33.951130, 41.127583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590446, 33.990150, 41.012997>,  <38.245049, 34.055187, 40.822021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590446, 33.990150, 41.012997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503347, 0.337908, -0.795273,
		-0.032029, 0.927029, 0.373618,
		0.863490, -0.162588, 0.477441,
		38.849495, 33.941376, 41.156227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557728, 34.636368, 40.733284>,  <38.245049, 34.055187, 40.822021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557728, 34.636368, 40.733284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.864357, 34.418350, 40.869106>,  <39.048332, 34.287540, 40.950600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.864357, 34.418350, 40.869106>,  <38.557728, 34.636368, 40.733284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864357, 34.418350, 40.869106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622942, 0.502769, -0.599305,
		0.155925, 0.670936, 0.724936,
		0.766571, -0.545040, 0.339560,
		39.094330, 34.254837, 40.970974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162003, 35.125015, 40.814548>,  <38.557728, 34.636368, 40.733284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162003, 35.125015, 40.814548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307308, 34.752338, 40.814823>,  <39.394489, 34.528732, 40.814987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307308, 34.752338, 40.814823>,  <39.162003, 35.125015, 40.814548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307308, 34.752338, 40.814823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680363, 0.264768, -0.683378,
		0.636513, 0.248710, 0.730065,
		0.363260, -0.931687, 0.000685,
		39.416286, 34.472832, 40.815029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866096, 35.098064, 40.947136>,  <39.162003, 35.125015, 40.814548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866096, 35.098064, 40.947136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803185, 34.756084, 40.749420>,  <39.765438, 34.550896, 40.630791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803185, 34.756084, 40.749420>,  <39.866096, 35.098064, 40.947136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803185, 34.756084, 40.749420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614608, 0.307034, -0.726627,
		0.772995, -0.418078, 0.477169,
		-0.157279, -0.854951, -0.494290,
		39.756001, 34.499599, 40.601131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.641102, 27.061655, 34.509998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897495, 27.274897, 34.289112>,  <30.051332, 27.402842, 34.156582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897495, 27.274897, 34.289112>,  <29.641102, 27.061655, 34.509998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897495, 27.274897, 34.289112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592630, -0.800943, -0.085327,
		-0.487778, -0.272563, -0.829326,
		0.640985, 0.533104, -0.552212,
		30.089790, 27.434828, 34.123447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239943, 27.724289, 34.412991>,  <29.641102, 27.061655, 34.509998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239943, 27.724289, 34.412991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.544298, 27.879227, 34.204754>,  <29.726912, 27.972189, 34.079811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.544298, 27.879227, 34.204754>,  <29.239943, 27.724289, 34.412991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544298, 27.879227, 34.204754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422853, 0.904529, 0.054981,
		0.492186, 0.178299, 0.852034,
		0.760887, 0.387346, -0.520591,
		29.772564, 27.995430, 34.048576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625542, 28.252125, 34.748997>,  <29.239943, 27.724289, 34.412991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625542, 28.252125, 34.748997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.595879, 28.333414, 34.358467>,  <29.578081, 28.382187, 34.124149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.595879, 28.333414, 34.358467>,  <29.625542, 28.252125, 34.748997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595879, 28.333414, 34.358467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566204, 0.797335, 0.208972,
		0.820922, 0.568294, 0.055936,
		-0.074158, 0.203221, -0.976320,
		29.573631, 28.394381, 34.065571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711842, 28.989508, 34.670498>,  <29.625542, 28.252125, 34.748997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711842, 28.989508, 34.670498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511053, 28.874363, 34.344269>,  <29.390579, 28.805277, 34.148533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511053, 28.874363, 34.344269>,  <29.711842, 28.989508, 34.670498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511053, 28.874363, 34.344269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686245, 0.706494, 0.173013,
		0.526394, 0.646531, -0.552184,
		-0.501973, -0.287861, -0.815573,
		29.360462, 28.788004, 34.099598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453491, 29.590899, 34.271969>,  <29.711842, 28.989508, 34.670498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453491, 29.590899, 34.271969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.199396, 29.297020, 34.176727>,  <29.046940, 29.120693, 34.119583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.199396, 29.297020, 34.176727>,  <29.453491, 29.590899, 34.271969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199396, 29.297020, 34.176727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767504, 0.634895, 0.088578,
		0.086096, 0.239016, -0.967191,
		-0.635236, -0.734697, -0.238108,
		29.008825, 29.076611, 34.105293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929203, 29.879864, 33.900200>,  <29.453491, 29.590899, 34.271969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929203, 29.879864, 33.900200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745907, 29.547365, 34.026085>,  <28.635929, 29.347866, 34.101616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745907, 29.547365, 34.026085>,  <28.929203, 29.879864, 33.900200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745907, 29.547365, 34.026085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867469, 0.495411, 0.045440,
		-0.193685, -0.252182, -0.948098,
		-0.458240, -0.831247, 0.314714,
		28.608435, 29.297991, 34.120499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363400, 29.959867, 33.576027>,  <28.929203, 29.879864, 33.900200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363400, 29.959867, 33.576027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.290049, 29.695374, 33.866997>,  <28.246038, 29.536678, 34.041580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.290049, 29.695374, 33.866997>,  <28.363400, 29.959867, 33.576027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290049, 29.695374, 33.866997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876352, 0.445226, 0.183793,
		-0.445398, -0.603776, -0.661117,
		-0.183377, -0.661233, 0.727423,
		28.235035, 29.497004, 34.085224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708242, 29.800755, 33.455215>,  <28.363400, 29.959867, 33.576027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708242, 29.800755, 33.455215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755707, 29.676750, 33.832535>,  <27.784185, 29.602348, 34.058926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755707, 29.676750, 33.832535>,  <27.708242, 29.800755, 33.455215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755707, 29.676750, 33.832535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863189, 0.437318, 0.252304,
		-0.490739, -0.844184, -0.215705,
		0.118659, -0.310010, 0.943299,
		27.791304, 29.583748, 34.115524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067350, 29.620829, 33.725117>,  <27.708242, 29.800755, 33.455215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067350, 29.620829, 33.725117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.292839, 29.689758, 34.048233>,  <27.428133, 29.731117, 34.242104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.292839, 29.689758, 34.048233>,  <27.067350, 29.620829, 33.725117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292839, 29.689758, 34.048233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696629, 0.624638, 0.352896,
		-0.443761, -0.761663, 0.472170,
		0.563723, 0.172326, 0.807787,
		27.461956, 29.741457, 34.290569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533974, 29.661716, 34.343842>,  <27.067350, 29.620829, 33.725117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533974, 29.661716, 34.343842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867128, 29.853506, 34.454407>,  <27.067020, 29.968580, 34.520748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867128, 29.853506, 34.454407>,  <26.533974, 29.661716, 34.343842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867128, 29.853506, 34.454407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553059, 0.702409, 0.448049,
		0.020669, -0.526049, 0.850203,
		0.832886, 0.479473, 0.276418,
		27.116995, 29.997349, 34.537331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406301, 29.983326, 35.092587>,  <26.533974, 29.661716, 34.343842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406301, 29.983326, 35.092587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707630, 30.202396, 34.946953>,  <26.888428, 30.333839, 34.859573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707630, 30.202396, 34.946953>,  <26.406301, 29.983326, 35.092587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707630, 30.202396, 34.946953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386203, 0.816506, 0.429145,
		0.532310, -0.182673, 0.826605,
		0.753322, 0.547675, -0.364086,
		26.933626, 30.366699, 34.837727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576813, 30.361250, 35.695904>,  <26.406301, 29.983326, 35.092587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576813, 30.361250, 35.695904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751925, 30.556690, 35.394012>,  <26.856991, 30.673954, 35.212879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751925, 30.556690, 35.394012>,  <26.576813, 30.361250, 35.695904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751925, 30.556690, 35.394012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501753, 0.829335, 0.245860,
		0.746051, 0.271055, 0.608224,
		0.437780, 0.488603, -0.754729,
		26.883259, 30.703272, 35.167595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077076, 30.849339, 35.958519>,  <26.576813, 30.361250, 35.695904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077076, 30.849339, 35.958519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996149, 30.977844, 35.588470>,  <26.947594, 31.054949, 35.366440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996149, 30.977844, 35.588470>,  <27.077076, 30.849339, 35.958519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996149, 30.977844, 35.588470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192683, 0.913137, 0.359241,
		0.960177, 0.250936, -0.122841,
		-0.202318, 0.321265, -0.925125,
		26.935453, 31.074224, 35.310932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433025, 31.477066, 35.973026>,  <27.077076, 30.849339, 35.958519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433025, 31.477066, 35.973026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175621, 31.477682, 35.666851>,  <27.021177, 31.478052, 35.483147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175621, 31.477682, 35.666851>,  <27.433025, 31.477066, 35.973026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175621, 31.477682, 35.666851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348811, 0.889540, 0.295040,
		0.681339, 0.456854, -0.571893,
		-0.643512, 0.001539, -0.765434,
		26.982567, 31.478144, 35.437222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566021, 32.138912, 35.560368>,  <27.433025, 31.477066, 35.973026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566021, 32.138912, 35.560368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192162, 32.026993, 35.472599>,  <26.967846, 31.959841, 35.419937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192162, 32.026993, 35.472599>,  <27.566021, 32.138912, 35.560368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192162, 32.026993, 35.472599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325385, 0.921855, 0.210495,
		0.143381, 0.268136, -0.952652,
		-0.934648, -0.279798, -0.219424,
		26.911768, 31.943054, 35.406773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356195, 32.637714, 35.120193>,  <27.566021, 32.138912, 35.560368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356195, 32.637714, 35.120193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020653, 32.479244, 35.269520>,  <26.819326, 32.384163, 35.359116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020653, 32.479244, 35.269520>,  <27.356195, 32.637714, 35.120193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020653, 32.479244, 35.269520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305633, 0.910282, 0.279239,
		-0.450453, 0.120143, -0.884679,
		-0.838856, -0.396172, 0.373320,
		26.768995, 32.360394, 35.381516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812473, 33.185921, 35.399799>,  <27.356195, 32.637714, 35.120193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812473, 33.185921, 35.399799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062265, 33.017849, 35.663155>,  <27.212141, 32.917007, 35.821167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062265, 33.017849, 35.663155>,  <26.812473, 33.185921, 35.399799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062265, 33.017849, 35.663155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379278, -0.573760, -0.725912,
		0.682768, 0.703030, -0.198938,
		0.624480, -0.420177, 0.658389,
		27.249609, 32.891796, 35.860672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503817, 33.343414, 35.170506>,  <26.812473, 33.185921, 35.399799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503817, 33.343414, 35.170506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511047, 33.014778, 35.398422>,  <27.515385, 32.817596, 35.535172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511047, 33.014778, 35.398422>,  <27.503817, 33.343414, 35.170506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511047, 33.014778, 35.398422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237334, -0.550070, -0.800684,
		0.971260, 0.149703, 0.185050,
		0.018075, -0.821591, 0.569790,
		27.516470, 32.768299, 35.569359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222532, 33.584007, 35.009464>,  <27.503817, 33.343414, 35.170506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222532, 33.584007, 35.009464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236952, 33.935387, 34.818874>,  <28.245604, 34.146214, 34.704521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236952, 33.935387, 34.818874>,  <28.222532, 33.584007, 35.009464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236952, 33.935387, 34.818874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390609, -0.451243, -0.802374,
		-0.919851, -0.157192, -0.359396,
		0.036048, 0.878448, -0.476477,
		28.247766, 34.198921, 34.675930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819513, 33.621769, 34.321068>,  <28.222532, 33.584007, 35.009464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819513, 33.621769, 34.321068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122835, 33.882195, 34.334282>,  <28.304829, 34.038448, 34.342213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122835, 33.882195, 34.334282>,  <27.819513, 33.621769, 34.321068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122835, 33.882195, 34.334282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451861, -0.488411, -0.746509,
		-0.469885, 0.581013, -0.664554,
		0.758307, 0.651060, 0.033040,
		28.350327, 34.077511, 34.344193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113153, 33.747223, 33.728230>,  <27.819513, 33.621769, 34.321068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113153, 33.747223, 33.728230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.418180, 33.821144, 33.976208>,  <28.601196, 33.865498, 34.124996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.418180, 33.821144, 33.976208>,  <28.113153, 33.747223, 33.728230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418180, 33.821144, 33.976208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606900, -0.536157, -0.586692,
		0.223966, 0.823640, -0.521015,
		0.762569, 0.184805, 0.619948,
		28.646952, 33.876587, 34.162193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632645, 33.825073, 33.328400>,  <28.113153, 33.747223, 33.728230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632645, 33.825073, 33.328400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815121, 33.762356, 33.678783>,  <28.924606, 33.724728, 33.889015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815121, 33.762356, 33.678783>,  <28.632645, 33.825073, 33.328400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815121, 33.762356, 33.678783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575533, -0.698783, -0.424810,
		0.678712, 0.697939, -0.228542,
		0.456192, -0.156790, 0.875960,
		28.951979, 33.715321, 33.941570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319178, 33.865635, 33.183712>,  <28.632645, 33.825073, 33.328400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319178, 33.865635, 33.183712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257126, 33.639599, 33.507835>,  <29.219894, 33.503975, 33.702309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257126, 33.639599, 33.507835>,  <29.319178, 33.865635, 33.183712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257126, 33.639599, 33.507835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414872, -0.781670, -0.465696,
		0.896558, 0.263931, 0.355703,
		-0.155131, -0.565095, 0.810310,
		29.210587, 33.470070, 33.750927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011084, 33.607437, 33.398537>,  <29.319178, 33.865635, 33.183712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011084, 33.607437, 33.398537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740103, 33.368935, 33.570835>,  <29.577515, 33.225834, 33.674213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740103, 33.368935, 33.570835>,  <30.011084, 33.607437, 33.398537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740103, 33.368935, 33.570835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515145, -0.802592, -0.300784,
		0.525058, 0.018131, 0.850873,
		-0.677450, -0.596252, 0.430748,
		29.536867, 33.190060, 33.700058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365948, 33.090755, 33.617207>,  <30.011084, 33.607437, 33.398537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365948, 33.090755, 33.617207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014137, 32.904259, 33.655258>,  <29.803051, 32.792358, 33.678089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014137, 32.904259, 33.655258>,  <30.365948, 33.090755, 33.617207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014137, 32.904259, 33.655258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444656, -0.876469, -0.184617,
		0.169452, -0.120077, 0.978196,
		-0.879526, -0.466245, 0.095126,
		29.750278, 32.764385, 33.683796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510168, 32.484745, 33.927120>,  <30.365948, 33.090755, 33.617207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510168, 32.484745, 33.927120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.145905, 32.415806, 33.776920>,  <29.927347, 32.374443, 33.686802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.145905, 32.415806, 33.776920>,  <30.510168, 32.484745, 33.927120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145905, 32.415806, 33.776920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325787, -0.858482, -0.396071,
		-0.254095, -0.483017, 0.837932,
		-0.910658, -0.172348, -0.375496,
		29.872707, 32.364101, 33.664272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431515, 31.832182, 34.140377>,  <30.510168, 32.484745, 33.927120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431515, 31.832182, 34.140377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.209702, 31.914177, 33.817768>,  <30.076614, 31.963375, 33.624203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.209702, 31.914177, 33.817768>,  <30.431515, 31.832182, 34.140377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209702, 31.914177, 33.817768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220086, -0.898548, -0.379701,
		-0.802531, -0.388060, 0.453160,
		-0.554533, 0.204988, -0.806519,
		30.043343, 31.975674, 33.575813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942827, 31.251894, 34.032909>,  <30.431515, 31.832182, 34.140377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942827, 31.251894, 34.032909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962435, 31.432051, 33.676315>,  <29.974199, 31.540144, 33.462360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962435, 31.432051, 33.676315>,  <29.942827, 31.251894, 34.032909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962435, 31.432051, 33.676315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018461, -0.892814, -0.450048,
		-0.998627, 0.005603, -0.052080,
		0.049019, 0.450391, -0.891485,
		29.977140, 31.567167, 33.408871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590988, 30.709261, 33.619267>,  <29.942827, 31.251894, 34.032909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590988, 30.709261, 33.619267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799442, 30.953005, 33.380234>,  <29.924515, 31.099251, 33.236816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799442, 30.953005, 33.380234>,  <29.590988, 30.709261, 33.619267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799442, 30.953005, 33.380234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358452, -0.791693, -0.494707,
		-0.774553, 0.043605, -0.631004,
		0.521133, 0.609362, -0.597577,
		29.955782, 31.135813, 33.200962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282135, 30.690023, 33.039677>,  <29.590988, 30.709261, 33.619267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282135, 30.690023, 33.039677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659868, 30.803984, 32.973869>,  <29.886509, 30.872360, 32.934383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659868, 30.803984, 32.973869>,  <29.282135, 30.690023, 33.039677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659868, 30.803984, 32.973869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191036, -0.881987, -0.430818,
		-0.267846, 0.375406, -0.887315,
		0.944332, 0.284902, -0.164521,
		29.943169, 30.889454, 32.924515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424894, 30.356510, 32.324459>,  <29.282135, 30.690023, 33.039677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424894, 30.356510, 32.324459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783215, 30.439215, 32.481834>,  <29.998207, 30.488836, 32.576260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783215, 30.439215, 32.481834>,  <29.424894, 30.356510, 32.324459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783215, 30.439215, 32.481834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392631, -0.782968, -0.482496,
		0.208289, 0.586695, -0.782563,
		0.895800, 0.206760, 0.393438,
		30.051954, 30.501244, 32.599865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837931, 30.638273, 31.819410>,  <29.424894, 30.356510, 32.324459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837931, 30.638273, 31.819410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105640, 30.500067, 32.082527>,  <30.266266, 30.417143, 32.240398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105640, 30.500067, 32.082527>,  <29.837931, 30.638273, 31.819410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105640, 30.500067, 32.082527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432347, -0.538898, -0.722956,
		0.604275, 0.768250, -0.211289,
		0.669274, -0.345514, 0.657793,
		30.306423, 30.396412, 32.279865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366659, 30.739649, 31.405655>,  <29.837931, 30.638273, 31.819410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366659, 30.739649, 31.405655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471113, 30.490519, 31.700651>,  <30.533785, 30.341040, 31.877649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471113, 30.490519, 31.700651>,  <30.366659, 30.739649, 31.405655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471113, 30.490519, 31.700651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493144, -0.570704, -0.656587,
		0.829830, 0.535147, 0.158113,
		0.261135, -0.622828, 0.737492,
		30.549454, 30.303671, 31.921898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997797, 30.506756, 31.293142>,  <30.366659, 30.739649, 31.405655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997797, 30.506756, 31.293142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863283, 30.217958, 31.535015>,  <30.782576, 30.044680, 31.680138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863283, 30.217958, 31.535015>,  <30.997797, 30.506756, 31.293142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863283, 30.217958, 31.535015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344932, -0.691883, -0.634287,
		0.876319, -0.004728, 0.481708,
		-0.336285, -0.721994, 0.604680,
		30.762398, 30.001360, 31.716419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489204, 29.839716, 31.170891>,  <30.997797, 30.506756, 31.293142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489204, 29.839716, 31.170891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158491, 29.688040, 31.337093>,  <30.960064, 29.597034, 31.436815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158491, 29.688040, 31.337093>,  <31.489204, 29.839716, 31.170891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158491, 29.688040, 31.337093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079190, -0.809750, -0.581406,
		0.556918, -0.447794, 0.699516,
		-0.826783, -0.379190, 0.415504,
		30.910456, 29.574284, 31.461744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598885, 29.112303, 31.403084>,  <31.489204, 29.839716, 31.170891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598885, 29.112303, 31.403084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199713, 29.137205, 31.396635>,  <30.960209, 29.152147, 31.392765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199713, 29.137205, 31.396635>,  <31.598885, 29.112303, 31.403084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199713, 29.137205, 31.396635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041172, -0.811059, -0.583514,
		-0.049403, -0.581642, 0.811943,
		-0.997930, 0.062257, -0.016121,
		30.900333, 29.155882, 31.391798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409559, 28.457182, 31.501629>,  <31.598885, 29.112303, 31.403084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409559, 28.457182, 31.501629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.090902, 28.643669, 31.347746>,  <30.899708, 28.755562, 31.255415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.090902, 28.643669, 31.347746>,  <31.409559, 28.457182, 31.501629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090902, 28.643669, 31.347746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223479, -0.818542, -0.529194,
		-0.561619, -0.335604, 0.756276,
		-0.796643, 0.466218, -0.384708,
		30.851910, 28.783535, 31.232334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916054, 27.892265, 31.455965>,  <31.409559, 28.457182, 31.501629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916054, 27.892265, 31.455965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748888, 28.171324, 31.223194>,  <30.648588, 28.338758, 31.083530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748888, 28.171324, 31.223194>,  <30.916054, 27.892265, 31.455965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748888, 28.171324, 31.223194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447604, -0.715523, -0.536356,
		-0.790569, 0.036324, 0.611295,
		-0.417913, 0.697644, -0.581929,
		30.623514, 28.380617, 31.048616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223803, 27.812220, 31.441980>,  <30.916054, 27.892265, 31.455965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223803, 27.812220, 31.441980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316084, 28.003790, 31.103182>,  <30.371452, 28.118732, 30.899902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316084, 28.003790, 31.103182>,  <30.223803, 27.812220, 31.441980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316084, 28.003790, 31.103182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546866, -0.656170, -0.519979,
		-0.804806, 0.583156, 0.110527,
		0.230704, 0.478926, -0.846998,
		30.385296, 28.147469, 30.849083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612415, 27.881664, 31.023159>,  <30.223803, 27.812220, 31.441980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612415, 27.881664, 31.023159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914207, 27.914301, 30.762667>,  <30.095284, 27.933884, 30.606371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914207, 27.914301, 30.762667>,  <29.612415, 27.881664, 31.023159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914207, 27.914301, 30.762667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502474, -0.566526, -0.653122,
		-0.422229, 0.819994, -0.386436,
		0.754482, 0.081593, -0.651229,
		30.140553, 27.938778, 30.567297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362392, 28.184771, 30.402813>,  <29.612415, 27.881664, 31.023159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362392, 28.184771, 30.402813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695255, 27.990555, 30.295656>,  <29.894972, 27.874025, 30.231361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695255, 27.990555, 30.295656>,  <29.362392, 28.184771, 30.402813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695255, 27.990555, 30.295656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530688, -0.557105, -0.638752,
		0.160895, 0.673709, -0.721268,
		0.832156, -0.485541, -0.267894,
		29.944902, 27.844893, 30.215288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355030, 28.108034, 29.640783>,  <29.362392, 28.184771, 30.402813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355030, 28.108034, 29.640783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616100, 27.835239, 29.772789>,  <29.772743, 27.671562, 29.851992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.616100, 27.835239, 29.772789>,  <29.355030, 28.108034, 29.640783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616100, 27.835239, 29.772789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379156, -0.671127, -0.637047,
		0.655939, 0.290659, -0.696607,
		0.652676, -0.681987, 0.330013,
		29.811903, 27.630644, 29.871794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.426273, 29.841587, 45.269806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116100, 30.038048, 45.111069>,  <38.929996, 30.155924, 45.015827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116100, 30.038048, 45.111069>,  <39.426273, 29.841587, 45.269806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116100, 30.038048, 45.111069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469406, -0.028024, 0.882538,
		0.422339, 0.870624, 0.252280,
		-0.775428, 0.491151, -0.396840,
		38.883472, 30.185392, 44.992016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401073, 30.310408, 45.780281>,  <39.426273, 29.841587, 45.269806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401073, 30.310408, 45.780281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044724, 30.306099, 45.598637>,  <38.830914, 30.303514, 45.489651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044724, 30.306099, 45.598637>,  <39.401073, 30.310408, 45.780281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044724, 30.306099, 45.598637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454239, 0.016904, 0.890720,
		-0.001916, 0.999799, -0.019951,
		-0.890878, -0.010769, -0.454115,
		38.777458, 30.302868, 45.462402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002350, 30.901524, 46.097141>,  <39.401073, 30.310408, 45.780281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002350, 30.901524, 46.097141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731434, 30.664478, 45.922749>,  <38.568886, 30.522251, 45.818111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731434, 30.664478, 45.922749>,  <39.002350, 30.901524, 46.097141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731434, 30.664478, 45.922749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619951, 0.140620, 0.771937,
		-0.396153, 0.793116, -0.462634,
		-0.677291, -0.592616, -0.435986,
		38.528248, 30.486694, 45.791954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413940, 31.258274, 46.144531>,  <39.002350, 30.901524, 46.097141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413940, 31.258274, 46.144531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297924, 30.880091, 46.085217>,  <38.228313, 30.653181, 46.049629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297924, 30.880091, 46.085217>,  <38.413940, 31.258274, 46.144531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297924, 30.880091, 46.085217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718607, 0.112823, 0.686203,
		-0.632045, 0.305588, -0.712135,
		-0.290040, -0.945456, -0.148288,
		38.210911, 30.596455, 46.040730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685661, 31.363085, 46.080475>,  <38.413940, 31.258274, 46.144531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685661, 31.363085, 46.080475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736488, 30.976807, 46.171059>,  <37.766983, 30.745039, 46.225410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736488, 30.976807, 46.171059>,  <37.685661, 31.363085, 46.080475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736488, 30.976807, 46.171059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797749, 0.036185, 0.601903,
		-0.589450, -0.257142, -0.765785,
		0.127064, -0.965696, 0.226464,
		37.774609, 30.687098, 46.238998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066013, 31.205898, 46.185986>,  <37.685661, 31.363085, 46.080475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066013, 31.205898, 46.185986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232666, 30.874771, 46.336258>,  <37.332657, 30.676096, 46.426422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232666, 30.874771, 46.336258>,  <37.066013, 31.205898, 46.185986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232666, 30.874771, 46.336258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721625, -0.049829, 0.690489,
		-0.552879, -0.558782, -0.618133,
		0.416633, -0.827816, 0.375681,
		37.357655, 30.626427, 46.448963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452530, 30.713219, 46.352871>,  <37.066013, 31.205898, 46.185986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452530, 30.713219, 46.352871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781002, 30.613081, 46.558002>,  <36.978085, 30.552998, 46.681084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781002, 30.613081, 46.558002>,  <36.452530, 30.713219, 46.352871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781002, 30.613081, 46.558002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568877, -0.287834, 0.770409,
		-0.045255, -0.924381, -0.378777,
		0.821177, -0.250342, 0.512833,
		37.027355, 30.537977, 46.711853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229538, 30.114771, 46.593037>,  <36.452530, 30.713219, 46.352871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229538, 30.114771, 46.593037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525181, 30.228226, 46.837418>,  <36.702568, 30.296299, 46.984047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525181, 30.228226, 46.837418>,  <36.229538, 30.114771, 46.593037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525181, 30.228226, 46.837418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575049, -0.206622, 0.791598,
		0.350762, -0.936407, 0.010388,
		0.739111, 0.283636, 0.610955,
		36.746914, 30.313316, 47.020702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309258, 29.616917, 47.075123>,  <36.229538, 30.114771, 46.593037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309258, 29.616917, 47.075123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449318, 29.948687, 47.249226>,  <36.533352, 30.147749, 47.353687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449318, 29.948687, 47.249226>,  <36.309258, 29.616917, 47.075123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449318, 29.948687, 47.249226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595150, -0.161826, 0.787152,
		0.723321, -0.534663, 0.436969,
		0.350148, 0.829426, 0.435257,
		36.554363, 30.197514, 47.379803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311176, 29.450684, 47.723679>,  <36.309258, 29.616917, 47.075123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311176, 29.450684, 47.723679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.340347, 29.849579, 47.729321>,  <36.357849, 30.088917, 47.732704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.340347, 29.849579, 47.729321>,  <36.311176, 29.450684, 47.723679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340347, 29.849579, 47.729321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641853, 0.036108, 0.765977,
		0.763352, -0.064913, 0.642713,
		0.072929, 0.997237, 0.014102,
		36.362225, 30.148750, 47.733551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322742, 29.598753, 48.436409>,  <36.311176, 29.450684, 47.723679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322742, 29.598753, 48.436409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225826, 29.947041, 48.265228>,  <36.167675, 30.156013, 48.162518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225826, 29.947041, 48.265228>,  <36.322742, 29.598753, 48.436409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225826, 29.947041, 48.265228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662744, 0.173609, 0.728444,
		0.708566, 0.460119, 0.534999,
		-0.242290, 0.870718, -0.427955,
		36.153141, 30.208256, 48.136841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384865, 30.051989, 48.971397>,  <36.322742, 29.598753, 48.436409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384865, 30.051989, 48.971397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136448, 30.234789, 48.716698>,  <35.987396, 30.344469, 48.563877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136448, 30.234789, 48.716698>,  <36.384865, 30.051989, 48.971397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136448, 30.234789, 48.716698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726935, -0.032111, 0.685954,
		0.293034, 0.888887, 0.352152,
		-0.621044, 0.456999, -0.636754,
		35.950134, 30.371889, 48.525673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024509, 30.732996, 49.153320>,  <36.384865, 30.051989, 48.971397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024509, 30.732996, 49.153320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.765659, 30.548492, 48.910515>,  <35.610348, 30.437790, 48.764832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.765659, 30.548492, 48.910515>,  <36.024509, 30.732996, 49.153320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765659, 30.548492, 48.910515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659745, -0.060181, 0.749076,
		-0.382050, 0.885221, -0.265369,
		-0.647128, -0.461260, -0.607012,
		35.571522, 30.410114, 48.728413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351246, 30.868874, 49.384956>,  <36.024509, 30.732996, 49.153320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351246, 30.868874, 49.384956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265224, 30.559551, 49.146378>,  <35.213612, 30.373959, 49.003231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265224, 30.559551, 49.146378>,  <35.351246, 30.868874, 49.384956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265224, 30.559551, 49.146378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765949, -0.245331, 0.594251,
		-0.605865, 0.584646, -0.539553,
		-0.215057, -0.773306, -0.596446,
		35.200706, 30.327559, 48.967445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298656, 31.598671, 49.187626>,  <35.351246, 30.868874, 49.384956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298656, 31.598671, 49.187626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258442, 31.972599, 49.323864>,  <35.234314, 32.196957, 49.405605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258442, 31.972599, 49.323864>,  <35.298656, 31.598671, 49.187626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258442, 31.972599, 49.323864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002531, 0.342568, -0.939490,
		-0.994930, -0.093594, -0.036808,
		-0.100540, 0.934819, 0.340594,
		35.228279, 32.253044, 49.426041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835331, 31.919996, 48.830589>,  <35.298656, 31.598671, 49.187626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835331, 31.919996, 48.830589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023033, 32.242332, 48.975044>,  <35.135654, 32.435734, 49.061718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023033, 32.242332, 48.975044>,  <34.835331, 31.919996, 48.830589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023033, 32.242332, 48.975044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112117, 0.351278, -0.929534,
		-0.875915, 0.476679, 0.074491,
		0.469257, 0.805842, 0.361134,
		35.163811, 32.484085, 49.083385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570930, 32.420113, 48.375202>,  <34.835331, 31.919996, 48.830589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570930, 32.420113, 48.375202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894306, 32.574448, 48.552990>,  <35.088333, 32.667049, 48.659664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894306, 32.574448, 48.552990>,  <34.570930, 32.420113, 48.375202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894306, 32.574448, 48.552990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269827, 0.428172, -0.862475,
		-0.523086, 0.817188, 0.242041,
		0.808439, 0.385839, 0.444470,
		35.136837, 32.690201, 48.686333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554436, 33.174915, 48.183998>,  <34.570930, 32.420113, 48.375202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554436, 33.174915, 48.183998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923161, 33.102131, 48.320908>,  <35.144398, 33.058460, 48.403053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923161, 33.102131, 48.320908>,  <34.554436, 33.174915, 48.183998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923161, 33.102131, 48.320908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387380, 0.464247, -0.796500,
		-0.013967, 0.866813, 0.498437,
		0.921815, -0.181960, 0.342270,
		35.199703, 33.047543, 48.423588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776638, 33.841270, 48.042000>,  <34.554436, 33.174915, 48.183998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776638, 33.841270, 48.042000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092365, 33.600323, 48.089550>,  <35.281803, 33.455753, 48.118080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092365, 33.600323, 48.089550>,  <34.776638, 33.841270, 48.042000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092365, 33.600323, 48.089550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437187, 0.415458, -0.797661,
		0.431097, 0.681578, 0.591275,
		0.789318, -0.602367, 0.118874,
		35.329163, 33.419613, 48.125214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315483, 34.252640, 48.056347>,  <34.776638, 33.841270, 48.042000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315483, 34.252640, 48.056347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461922, 33.893349, 47.959049>,  <35.549786, 33.677773, 47.900673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461922, 33.893349, 47.959049>,  <35.315483, 34.252640, 48.056347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461922, 33.893349, 47.959049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525659, 0.415296, -0.742437,
		0.767893, 0.143939, 0.624197,
		0.366092, -0.898227, -0.243239,
		35.571751, 33.623882, 47.886078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950962, 34.345051, 47.975468>,  <35.315483, 34.252640, 48.056347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950962, 34.345051, 47.975468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917542, 34.006157, 47.765629>,  <35.897488, 33.802818, 47.639725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917542, 34.006157, 47.765629>,  <35.950962, 34.345051, 47.975468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917542, 34.006157, 47.765629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603038, 0.376116, -0.703479,
		0.793325, -0.375130, 0.479493,
		-0.083551, -0.847239, -0.524599,
		35.892475, 33.751984, 47.608250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528713, 34.253220, 47.621609>,  <35.950962, 34.345051, 47.975468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528713, 34.253220, 47.621609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290192, 34.001194, 47.422634>,  <36.147079, 33.849979, 47.303249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290192, 34.001194, 47.422634>,  <36.528713, 34.253220, 47.621609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290192, 34.001194, 47.422634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463173, 0.236081, -0.854246,
		0.655666, -0.739787, 0.151054,
		-0.596299, -0.630064, -0.497439,
		36.111301, 33.812176, 47.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998489, 34.017281, 47.188141>,  <36.528713, 34.253220, 47.621609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998489, 34.017281, 47.188141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636253, 33.931458, 47.041786>,  <36.418911, 33.879963, 46.953976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636253, 33.931458, 47.041786>,  <36.998489, 34.017281, 47.188141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636253, 33.931458, 47.041786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380849, -0.031609, -0.924097,
		0.186711, -0.976199, 0.110341,
		-0.905590, -0.214563, -0.365883,
		36.364578, 33.867088, 46.932022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154690, 33.615429, 46.650173>,  <36.998489, 34.017281, 47.188141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154690, 33.615429, 46.650173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776489, 33.717796, 46.569653>,  <36.549568, 33.779217, 46.521339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776489, 33.717796, 46.569653>,  <37.154690, 33.615429, 46.650173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776489, 33.717796, 46.569653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186471, -0.081222, -0.979097,
		-0.266923, -0.963279, 0.029074,
		-0.945505, 0.255923, -0.201303,
		36.492836, 33.794575, 46.509262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830853, 33.023407, 46.301098>,  <37.154690, 33.615429, 46.650173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830853, 33.023407, 46.301098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618916, 33.351719, 46.215702>,  <36.491753, 33.548706, 46.164463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618916, 33.351719, 46.215702>,  <36.830853, 33.023407, 46.301098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618916, 33.351719, 46.215702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328325, -0.033588, -0.943967,
		-0.781964, -0.570250, -0.251687,
		-0.529844, 0.820784, -0.213492,
		36.459961, 33.597954, 46.151653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409592, 32.881020, 45.703690>,  <36.830853, 33.023407, 46.301098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409592, 32.881020, 45.703690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457447, 33.277924, 45.717041>,  <36.486160, 33.516064, 45.725052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457447, 33.277924, 45.717041>,  <36.409592, 32.881020, 45.703690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457447, 33.277924, 45.717041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335045, -0.008705, -0.942162,
		-0.934576, 0.123900, -0.333492,
		0.119637, 0.992256, 0.033376,
		36.493340, 33.575600, 45.727055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197788, 32.996506, 45.070686>,  <36.409592, 32.881020, 45.703690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197788, 32.996506, 45.070686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388699, 33.329132, 45.184326>,  <36.503246, 33.528706, 45.252510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388699, 33.329132, 45.184326>,  <36.197788, 32.996506, 45.070686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388699, 33.329132, 45.184326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334154, 0.127265, -0.933887,
		-0.812740, 0.540657, -0.217128,
		0.477279, 0.831561, 0.284096,
		36.531883, 33.578602, 45.269554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863274, 33.552910, 44.722744>,  <36.197788, 32.996506, 45.070686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863274, 33.552910, 44.722744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231159, 33.670918, 44.826351>,  <36.451889, 33.741722, 44.888515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231159, 33.670918, 44.826351>,  <35.863274, 33.552910, 44.722744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231159, 33.670918, 44.826351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177156, 0.276907, -0.944425,
		-0.350346, 0.914487, 0.202411,
		0.919714, 0.295017, 0.259021,
		36.507072, 33.759422, 44.904057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374367, 34.045551, 44.673954>,  <35.863274, 33.552910, 44.722744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374367, 34.045551, 44.673954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063374, 34.053982, 44.422531>,  <34.876778, 34.059040, 44.271679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063374, 34.053982, 44.422531>,  <35.374367, 34.045551, 44.673954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063374, 34.053982, 44.422531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620068, -0.192676, 0.760521,
		-0.105082, 0.981036, 0.162868,
		-0.777479, 0.021072, -0.628555,
		34.830132, 34.060303, 44.233963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767094, 34.374908, 44.998158>,  <35.374367, 34.045551, 44.673954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767094, 34.374908, 44.998158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575397, 34.161320, 44.719532>,  <34.460381, 34.033165, 44.552357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575397, 34.161320, 44.719532>,  <34.767094, 34.374908, 44.998158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575397, 34.161320, 44.719532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687093, -0.265563, 0.676298,
		-0.546106, 0.802714, -0.239620,
		-0.479240, -0.533972, -0.696565,
		34.431625, 34.001129, 44.510563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088299, 34.605450, 45.034576>,  <34.767094, 34.374908, 44.998158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088299, 34.605450, 45.034576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096783, 34.243164, 44.865234>,  <34.101871, 34.025791, 44.763630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096783, 34.243164, 44.865234>,  <34.088299, 34.605450, 45.034576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096783, 34.243164, 44.865234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706915, -0.313023, 0.634261,
		-0.706980, 0.285826, -0.646902,
		0.021207, -0.905715, -0.423356,
		34.103146, 33.971451, 44.738228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494488, 34.405979, 45.022549>,  <34.088299, 34.605450, 45.034576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494488, 34.405979, 45.022549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656681, 34.043949, 44.971298>,  <33.753998, 33.826733, 44.940548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656681, 34.043949, 44.971298>,  <33.494488, 34.405979, 45.022549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656681, 34.043949, 44.971298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573135, -0.360921, 0.735699,
		-0.712107, -0.224883, -0.665080,
		0.405488, -0.905077, -0.128126,
		33.778328, 33.772427, 44.932861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914143, 33.981098, 45.090496>,  <33.494488, 34.405979, 45.022549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914143, 33.981098, 45.090496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230255, 33.740349, 45.136456>,  <33.419922, 33.595898, 45.164032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230255, 33.740349, 45.136456>,  <32.914143, 33.981098, 45.090496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230255, 33.740349, 45.136456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480782, -0.492832, 0.725235,
		-0.379873, -0.628382, -0.678846,
		0.790282, -0.601874, 0.114900,
		33.467339, 33.559788, 45.170925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687431, 33.278687, 45.054993>,  <32.914143, 33.981098, 45.090496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687431, 33.278687, 45.054993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030346, 33.253830, 45.259422>,  <33.236095, 33.238914, 45.382080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030346, 33.253830, 45.259422>,  <32.687431, 33.278687, 45.054993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030346, 33.253830, 45.259422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493292, -0.383310, 0.780856,
		0.147373, -0.921527, -0.359263,
		0.857289, -0.062145, 0.511072,
		33.287533, 33.235188, 45.412743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746944, 32.560566, 45.353870>,  <32.687431, 33.278687, 45.054993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746944, 32.560566, 45.353870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975109, 32.818111, 45.557858>,  <33.112007, 32.972637, 45.680248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975109, 32.818111, 45.557858>,  <32.746944, 32.560566, 45.353870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975109, 32.818111, 45.557858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466868, -0.256665, 0.846261,
		0.675767, -0.720807, 0.154194,
		0.570415, 0.643863, 0.509968,
		33.146233, 33.011269, 45.710846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986370, 31.854595, 45.364445>,  <32.746944, 32.560566, 45.353870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986370, 31.854595, 45.364445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661221, 31.699646, 45.190464>,  <32.466133, 31.606676, 45.086075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661221, 31.699646, 45.190464>,  <32.986370, 31.854595, 45.364445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661221, 31.699646, 45.190464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397431, 0.177012, -0.900397,
		0.425780, -0.904771, 0.010066,
		-0.812871, -0.387372, -0.434952,
		32.417358, 31.583435, 45.059978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140259, 31.384827, 44.917412>,  <32.986370, 31.854595, 45.364445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140259, 31.384827, 44.917412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776413, 31.469227, 44.774258>,  <32.558105, 31.519867, 44.688366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776413, 31.469227, 44.774258>,  <33.140259, 31.384827, 44.917412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776413, 31.469227, 44.774258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385443, 0.107137, -0.916491,
		-0.155039, -0.971596, -0.178783,
		-0.909613, 0.211003, -0.357884,
		32.503529, 31.532528, 44.666893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037800, 30.915539, 44.260166>,  <33.140259, 31.384827, 44.917412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037800, 30.915539, 44.260166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780041, 31.219864, 44.229408>,  <32.625385, 31.402458, 44.210953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780041, 31.219864, 44.229408>,  <33.037800, 30.915539, 44.260166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780041, 31.219864, 44.229408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291110, 0.151085, -0.944684,
		-0.707109, -0.631140, -0.318839,
		-0.644400, 0.760812, -0.076898,
		32.586720, 31.448107, 44.206341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061924, 31.003971, 43.604328>,  <33.037800, 30.915539, 44.260166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061924, 31.003971, 43.604328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822552, 31.312765, 43.690041>,  <32.678928, 31.498041, 43.741467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822552, 31.312765, 43.690041>,  <33.061924, 31.003971, 43.604328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822552, 31.312765, 43.690041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212277, 0.410680, -0.886724,
		-0.772540, -0.485157, -0.409639,
		-0.598431, 0.771987, 0.214279,
		32.643021, 31.544361, 43.754326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502396, 31.014391, 43.272476>,  <33.061924, 31.003971, 43.604328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502396, 31.014391, 43.272476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621227, 31.392288, 43.327904>,  <32.692524, 31.619026, 43.361160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621227, 31.392288, 43.327904>,  <32.502396, 31.014391, 43.272476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621227, 31.392288, 43.327904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111896, 0.109678, -0.987649,
		-0.948274, 0.308914, -0.073131,
		0.297077, 0.944745, 0.138571,
		32.710350, 31.675713, 43.369476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559910, 31.276665, 42.613430>,  <32.502396, 31.014391, 43.272476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559910, 31.276665, 42.613430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715473, 31.573805, 42.831394>,  <32.808811, 31.752089, 42.962173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715473, 31.573805, 42.831394>,  <32.559910, 31.276665, 42.613430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715473, 31.573805, 42.831394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362309, 0.420490, -0.831817,
		-0.847045, 0.520923, -0.105611,
		0.388904, 0.742851, 0.544909,
		32.832146, 31.796659, 42.994865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362488, 31.862104, 42.295788>,  <32.559910, 31.276665, 42.613430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362488, 31.862104, 42.295788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664970, 31.980049, 42.529438>,  <32.846458, 32.050816, 42.669628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664970, 31.980049, 42.529438>,  <32.362488, 31.862104, 42.295788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664970, 31.980049, 42.529438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435425, 0.439593, -0.785597,
		-0.488421, 0.848419, 0.204035,
		0.756208, 0.294860, 0.584129,
		32.891834, 32.068508, 42.704678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.430710, 29.843174, 46.641155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587738, 30.210701, 46.657486>,  <33.681953, 30.431217, 46.667286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587738, 30.210701, 46.657486>,  <33.430710, 29.843174, 46.641155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587738, 30.210701, 46.657486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524702, -0.187280, -0.830430,
		-0.755367, 0.347421, -0.555625,
		0.392566, 0.918817, 0.040827,
		33.705509, 30.486345, 46.669735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295002, 30.209364, 45.988350>,  <33.430710, 29.843174, 46.641155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295002, 30.209364, 45.988350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605961, 30.385069, 46.168442>,  <33.792538, 30.490492, 46.276497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605961, 30.385069, 46.168442>,  <33.295002, 30.209364, 45.988350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605961, 30.385069, 46.168442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509826, -0.020789, -0.860026,
		-0.368417, 0.898119, -0.240108,
		0.777397, 0.439261, 0.450226,
		33.839180, 30.516848, 46.303509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563877, 30.703075, 45.562298>,  <33.295002, 30.209364, 45.988350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563877, 30.703075, 45.562298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849689, 30.545740, 45.793724>,  <34.021175, 30.451340, 45.932579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849689, 30.545740, 45.793724>,  <33.563877, 30.703075, 45.562298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849689, 30.545740, 45.793724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572706, -0.146124, -0.806632,
		0.401820, 0.907708, 0.120856,
		0.714527, -0.393336, 0.578566,
		34.064049, 30.427740, 45.967293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192448, 30.991497, 45.335403>,  <33.563877, 30.703075, 45.562298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192448, 30.991497, 45.335403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284542, 30.654238, 45.529762>,  <34.339798, 30.451883, 45.646378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284542, 30.654238, 45.529762>,  <34.192448, 30.991497, 45.335403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284542, 30.654238, 45.529762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720807, -0.187697, -0.667239,
		0.653782, 0.503858, 0.564532,
		0.230233, -0.843147, 0.485897,
		34.353611, 30.401293, 45.675533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851707, 30.935072, 45.282352>,  <34.192448, 30.991497, 45.335403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851707, 30.935072, 45.282352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799225, 30.557253, 45.402760>,  <34.767735, 30.330561, 45.475002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799225, 30.557253, 45.402760>,  <34.851707, 30.935072, 45.282352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799225, 30.557253, 45.402760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746152, -0.294011, -0.597341,
		0.652720, 0.146232, 0.743353,
		-0.131204, -0.944550, 0.301018,
		34.759865, 30.273888, 45.493065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546684, 30.640747, 45.414318>,  <34.851707, 30.935072, 45.282352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546684, 30.640747, 45.414318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324162, 30.320084, 45.326801>,  <35.190647, 30.127686, 45.274292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324162, 30.320084, 45.326801>,  <35.546684, 30.640747, 45.414318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324162, 30.320084, 45.326801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742025, -0.360704, -0.565059,
		0.374067, -0.476691, 0.795512,
		-0.556303, -0.801660, -0.218789,
		35.157272, 30.079586, 45.261166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988636, 30.065638, 45.269650>,  <35.546684, 30.640747, 45.414318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988636, 30.065638, 45.269650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652836, 29.933256, 45.097275>,  <35.451355, 29.853827, 44.993851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652836, 29.933256, 45.097275>,  <35.988636, 30.065638, 45.269650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652836, 29.933256, 45.097275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541463, -0.443370, -0.714311,
		0.045340, -0.833002, 0.551410,
		-0.839501, -0.330955, -0.430937,
		35.400986, 29.833969, 44.967995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178303, 29.360378, 45.043476>,  <35.988636, 30.065638, 45.269650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178303, 29.360378, 45.043476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.830616, 29.420452, 44.855045>,  <35.622005, 29.456497, 44.741989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.830616, 29.420452, 44.855045>,  <36.178303, 29.360378, 45.043476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830616, 29.420452, 44.855045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337118, -0.516934, -0.786848,
		-0.361687, -0.842747, 0.398697,
		-0.869215, 0.150185, -0.471074,
		35.569851, 29.465508, 44.713722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921417, 28.685482, 44.821003>,  <36.178303, 29.360378, 45.043476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921417, 28.685482, 44.821003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747120, 28.971205, 44.601952>,  <35.642544, 29.142639, 44.470520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747120, 28.971205, 44.601952>,  <35.921417, 28.685482, 44.821003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747120, 28.971205, 44.601952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285204, -0.467496, -0.836724,
		-0.853692, -0.520778, -0.000018,
		-0.435739, 0.714309, -0.547626,
		35.616398, 29.185497, 44.437664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623302, 28.275148, 44.213589>,  <35.921417, 28.685482, 44.821003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623302, 28.275148, 44.213589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623592, 28.654905, 44.087948>,  <35.623768, 28.882759, 44.012566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623592, 28.654905, 44.087948>,  <35.623302, 28.275148, 44.213589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623592, 28.654905, 44.087948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348231, -0.294678, -0.889887,
		-0.937408, -0.108734, -0.330821,
		0.000725, 0.949390, -0.314099,
		35.623810, 28.939722, 43.993717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170486, 28.354872, 43.681950>,  <35.623302, 28.275148, 44.213589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170486, 28.354872, 43.681950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448174, 28.637487, 43.627022>,  <35.614788, 28.807056, 43.594063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448174, 28.637487, 43.627022>,  <35.170486, 28.354872, 43.681950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448174, 28.637487, 43.627022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252201, -0.417477, -0.872988,
		-0.674129, 0.571415, -0.468011,
		0.694222, 0.706540, -0.137322,
		35.656441, 28.849449, 43.585827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085621, 28.510143, 43.014351>,  <35.170486, 28.354872, 43.681950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085621, 28.510143, 43.014351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.427589, 28.695927, 43.106770>,  <35.632771, 28.807396, 43.162220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.427589, 28.695927, 43.106770>,  <35.085621, 28.510143, 43.014351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427589, 28.695927, 43.106770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406285, -0.322551, -0.854923,
		-0.322551, 0.824766, -0.464459,
		0.854923, 0.464459, 0.231051,
		35.684067, 28.835264, 43.176086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638573, 28.972158, 42.906506>,  <35.085621, 28.510143, 43.014351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638573, 28.972158, 42.906506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258694, 29.045023, 42.804615>,  <34.030766, 29.088741, 42.743481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258694, 29.045023, 42.804615>,  <34.638573, 28.972158, 42.906506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258694, 29.045023, 42.804615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310322, -0.438242, 0.843590,
		0.042040, 0.880205, 0.472728,
		-0.949702, 0.182162, -0.254723,
		33.973782, 29.099672, 42.728199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370106, 29.267769, 43.494080>,  <34.638573, 28.972158, 42.906506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370106, 29.267769, 43.494080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.048992, 29.137468, 43.294308>,  <33.856323, 29.059288, 43.174446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.048992, 29.137468, 43.294308>,  <34.370106, 29.267769, 43.494080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048992, 29.137468, 43.294308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365644, -0.392680, 0.843864,
		-0.471004, 0.860052, 0.196128,
		-0.802782, -0.325750, -0.499427,
		33.808159, 29.039743, 43.144478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739532, 29.503553, 43.840878>,  <34.370106, 29.267769, 43.494080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739532, 29.503553, 43.840878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603706, 29.190670, 43.631939>,  <33.522209, 29.002939, 43.506577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603706, 29.190670, 43.631939>,  <33.739532, 29.503553, 43.840878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603706, 29.190670, 43.631939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457099, -0.348122, 0.818457,
		-0.822044, 0.516682, -0.239338,
		-0.339564, -0.782209, -0.522347,
		33.501839, 28.956007, 43.475235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963840, 29.457148, 43.944603>,  <33.739532, 29.503553, 43.840878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963840, 29.457148, 43.944603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.031723, 29.086685, 43.809887>,  <33.072453, 28.864407, 43.729057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.031723, 29.086685, 43.809887>,  <32.963840, 29.457148, 43.944603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031723, 29.086685, 43.809887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626250, -0.365228, 0.688781,
		-0.760926, 0.094023, -0.641990,
		0.169711, -0.926158, -0.336794,
		33.082638, 28.808838, 43.708847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248325, 29.128132, 43.827431>,  <32.963840, 29.457148, 43.944603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248325, 29.128132, 43.827431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515785, 28.839411, 43.898888>,  <32.676262, 28.666178, 43.941761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515785, 28.839411, 43.898888>,  <32.248325, 29.128132, 43.827431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515785, 28.839411, 43.898888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596031, -0.376622, 0.709157,
		-0.444590, -0.580652, -0.682043,
		0.668646, -0.721802, 0.178644,
		32.716377, 28.622869, 43.952480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905338, 28.491392, 43.832279>,  <32.248325, 29.128132, 43.827431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905338, 28.491392, 43.832279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.244343, 28.358686, 43.998005>,  <32.447746, 28.279064, 44.097439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.244343, 28.358686, 43.998005>,  <31.905338, 28.491392, 43.832279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244343, 28.358686, 43.998005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529798, -0.481392, 0.698267,
		-0.032210, -0.811293, -0.583753,
		0.847513, -0.331762, 0.414315,
		32.498596, 28.259157, 44.122299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786482, 27.802896, 44.009235>,  <31.905338, 28.491392, 43.832279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786482, 27.802896, 44.009235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.073002, 27.932877, 44.256241>,  <32.244915, 28.010864, 44.404442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.073002, 27.932877, 44.256241>,  <31.786482, 27.802896, 44.009235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073002, 27.932877, 44.256241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473668, -0.423398, 0.772252,
		0.512397, -0.845660, -0.149361,
		0.716301, 0.324952, 0.617510,
		32.287891, 28.030361, 44.441494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026165, 27.225880, 44.476192>,  <31.786482, 27.802896, 44.009235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026165, 27.225880, 44.476192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117302, 27.552303, 44.688660>,  <32.171986, 27.748158, 44.816139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117302, 27.552303, 44.688660>,  <32.026165, 27.225880, 44.476192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117302, 27.552303, 44.688660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466224, -0.387481, 0.795295,
		0.854824, -0.428843, 0.292182,
		0.227841, 0.816059, 0.531165,
		32.185654, 27.797121, 44.848007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925577, 27.005537, 45.189861>,  <32.026165, 27.225880, 44.476192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925577, 27.005537, 45.189861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002380, 27.394640, 45.241821>,  <32.048462, 27.628101, 45.272999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002380, 27.394640, 45.241821>,  <31.925577, 27.005537, 45.189861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002380, 27.394640, 45.241821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288640, -0.070538, 0.954836,
		0.937987, -0.220831, 0.267233,
		0.192007, 0.972758, 0.129905,
		32.059982, 27.686468, 45.280792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466938, 27.046057, 45.771732>,  <31.925577, 27.005537, 45.189861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466938, 27.046057, 45.771732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.266575, 27.391104, 45.743492>,  <32.146358, 27.598131, 45.726547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.266575, 27.391104, 45.743492>,  <32.466938, 27.046057, 45.771732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266575, 27.391104, 45.743492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318932, -0.108137, 0.941588,
		0.804597, 0.494162, 0.329283,
		-0.500905, 0.862618, -0.070597,
		32.116302, 27.649889, 45.722313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557549, 27.368124, 46.431671>,  <32.466938, 27.046057, 45.771732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557549, 27.368124, 46.431671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.255184, 27.588387, 46.290039>,  <32.073765, 27.720543, 46.205059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.255184, 27.588387, 46.290039>,  <32.557549, 27.368124, 46.431671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255184, 27.588387, 46.290039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397749, 0.043302, 0.916472,
		0.519992, 0.833609, 0.186289,
		-0.755913, 0.550654, -0.354084,
		32.028412, 27.753582, 46.183815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560207, 27.942257, 46.837784>,  <32.557549, 27.368124, 46.431671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560207, 27.942257, 46.837784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.195656, 27.920584, 46.674595>,  <31.976923, 27.907579, 46.576679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.195656, 27.920584, 46.674595>,  <32.560207, 27.942257, 46.837784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195656, 27.920584, 46.674595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411552, 0.125792, 0.902664,
		0.002410, 0.990576, -0.136944,
		-0.911383, -0.054184, -0.407977,
		31.922241, 27.904329, 46.552200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176807, 28.592487, 46.980820>,  <32.560207, 27.942257, 46.837784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176807, 28.592487, 46.980820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.929323, 28.282896, 46.926929>,  <31.780832, 28.097141, 46.894596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.929323, 28.282896, 46.926929>,  <32.176807, 28.592487, 46.980820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929323, 28.282896, 46.926929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431196, 0.191208, 0.881765,
		-0.656708, 0.603650, -0.452040,
		-0.618712, -0.773980, -0.134724,
		31.743710, 28.050701, 46.886513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589752, 28.917576, 47.283115>,  <32.176807, 28.592487, 46.980820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589752, 28.917576, 47.283115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483595, 28.536438, 47.224262>,  <31.419899, 28.307755, 47.188950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483595, 28.536438, 47.224262>,  <31.589752, 28.917576, 47.283115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483595, 28.536438, 47.224262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578266, 0.035201, 0.815088,
		-0.771475, 0.301404, -0.560341,
		-0.265396, -0.952846, -0.147135,
		31.403976, 28.250584, 47.180122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346865, 29.289194, 46.700115>,  <31.589752, 28.917576, 47.283115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346865, 29.289194, 46.700115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.202499, 29.603010, 46.901802>,  <31.115881, 29.791300, 47.022816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.202499, 29.603010, 46.901802>,  <31.346865, 29.289194, 46.700115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202499, 29.603010, 46.901802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156238, 0.583884, -0.796662,
		-0.919419, -0.208747, -0.333306,
		-0.360913, 0.784541, 0.504220,
		31.094225, 29.838373, 47.053066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784380, 29.736809, 46.331787>,  <31.346865, 29.289194, 46.700115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784380, 29.736809, 46.331787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.967554, 29.977343, 46.593685>,  <31.077457, 30.121664, 46.750824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.967554, 29.977343, 46.593685>,  <30.784380, 29.736809, 46.331787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967554, 29.977343, 46.593685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147559, 0.674875, -0.723028,
		-0.876655, 0.427713, 0.220315,
		0.457933, 0.601337, 0.654745,
		31.104935, 30.157743, 46.790108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473570, 30.420553, 46.169220>,  <30.784380, 29.736809, 46.331787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473570, 30.420553, 46.169220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827852, 30.479652, 46.345261>,  <31.040422, 30.515112, 46.450886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827852, 30.479652, 46.345261>,  <30.473570, 30.420553, 46.169220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827852, 30.479652, 46.345261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201134, 0.732287, -0.650616,
		-0.418410, 0.664776, 0.618875,
		0.885708, 0.147748, 0.440105,
		31.093565, 30.523977, 46.477291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543018, 31.086823, 46.022690>,  <30.473570, 30.420553, 46.169220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543018, 31.086823, 46.022690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904930, 30.981375, 46.156483>,  <31.122078, 30.918106, 46.236759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904930, 30.981375, 46.156483>,  <30.543018, 31.086823, 46.022690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904930, 30.981375, 46.156483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424558, 0.620159, -0.659662,
		-0.033534, 0.738856, 0.673029,
		0.904780, -0.263618, 0.334483,
		31.176365, 30.902288, 46.256828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929075, 31.686213, 46.154537>,  <30.543018, 31.086823, 46.022690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929075, 31.686213, 46.154537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.236795, 31.433189, 46.118664>,  <31.421429, 31.281376, 46.097141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.236795, 31.433189, 46.118664>,  <30.929075, 31.686213, 46.154537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236795, 31.433189, 46.118664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492680, 0.676745, -0.547067,
		0.406743, 0.376676, 0.832271,
		0.769303, -0.632559, -0.089680,
		31.467587, 31.243422, 46.091759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425949, 32.112274, 46.115585>,  <30.929075, 31.686213, 46.154537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425949, 32.112274, 46.115585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.579138, 31.771832, 45.971951>,  <31.671051, 31.567566, 45.885769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.579138, 31.771832, 45.971951>,  <31.425949, 32.112274, 46.115585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579138, 31.771832, 45.971951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550135, 0.522411, -0.651490,
		0.742082, 0.051953, 0.668292,
		0.382970, -0.851110, -0.359091,
		31.694029, 31.516499, 45.864223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119190, 32.223480, 46.055267>,  <31.425949, 32.112274, 46.115585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119190, 32.223480, 46.055267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978209, 31.941559, 45.809006>,  <31.893620, 31.772406, 45.661247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978209, 31.941559, 45.809006>,  <32.119190, 32.223480, 46.055267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978209, 31.941559, 45.809006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443050, 0.453803, -0.773155,
		0.824308, -0.545265, 0.152319,
		-0.352452, -0.704804, -0.615654,
		31.872473, 31.730118, 45.624310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926411, 32.176674, 46.036232>,  <32.119190, 32.223480, 46.055267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926411, 32.176674, 46.036232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.031078, 32.559498, 46.086151>,  <33.093880, 32.789192, 46.116104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.031078, 32.559498, 46.086151>,  <32.926411, 32.176674, 46.036232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031078, 32.559498, 46.086151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241410, -0.060293, 0.968548,
		0.934479, -0.283566, 0.215266,
		0.261668, 0.957055, 0.124799,
		33.109577, 32.846615, 46.123592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349270, 32.177162, 46.651073>,  <32.926411, 32.176674, 46.036232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349270, 32.177162, 46.651073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.211868, 32.548023, 46.591206>,  <33.129429, 32.770538, 46.555286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.211868, 32.548023, 46.591206>,  <33.349270, 32.177162, 46.651073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211868, 32.548023, 46.591206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110440, 0.118381, 0.986807,
		0.932635, 0.355502, 0.061729,
		-0.343504, 0.927148, -0.149668,
		33.108818, 32.826168, 46.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873306, 32.620888, 47.107559>,  <33.349270, 32.177162, 46.651073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873306, 32.620888, 47.107559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532425, 32.821835, 47.049076>,  <33.327896, 32.942402, 47.013985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532425, 32.821835, 47.049076>,  <33.873306, 32.620888, 47.107559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532425, 32.821835, 47.049076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162125, 0.012143, 0.986696,
		0.497461, 0.864568, 0.071098,
		-0.852202, 0.502369, -0.146209,
		33.276764, 32.972546, 47.005215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918682, 33.186752, 47.524189>,  <33.873306, 32.620888, 47.107559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918682, 33.186752, 47.524189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532417, 33.124050, 47.441311>,  <33.300659, 33.086430, 47.391582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532417, 33.124050, 47.441311>,  <33.918682, 33.186752, 47.524189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532417, 33.124050, 47.441311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219499, 0.065523, 0.973410,
		-0.139011, 0.985462, -0.097681,
		-0.965658, -0.156755, -0.207199,
		33.242722, 33.077023, 47.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525352, 33.702015, 47.926121>,  <33.918682, 33.186752, 47.524189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525352, 33.702015, 47.926121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264549, 33.415154, 47.827679>,  <33.108067, 33.243038, 47.768612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264549, 33.415154, 47.827679>,  <33.525352, 33.702015, 47.926121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264549, 33.415154, 47.827679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212734, -0.138522, 0.967241,
		-0.727753, 0.683009, -0.062244,
		-0.652012, -0.717154, -0.246109,
		33.068947, 33.200008, 47.753845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805431, 33.790154, 48.260384>,  <33.525352, 33.702015, 47.926121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805431, 33.790154, 48.260384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778812, 33.399769, 48.177368>,  <32.762840, 33.165539, 48.127560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778812, 33.399769, 48.177368>,  <32.805431, 33.790154, 48.260384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778812, 33.399769, 48.177368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351885, -0.171681, 0.920164,
		-0.933675, 0.134264, -0.332001,
		-0.066547, -0.975960, -0.207540,
		32.758850, 33.106979, 48.115105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106262, 33.574093, 48.478664>,  <32.805431, 33.790154, 48.260384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106262, 33.574093, 48.478664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.339012, 33.250107, 48.449310>,  <32.478661, 33.055717, 48.431698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.339012, 33.250107, 48.449310>,  <32.106262, 33.574093, 48.478664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339012, 33.250107, 48.449310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378691, -0.349691, 0.856918,
		-0.719736, -0.470824, -0.510201,
		0.581870, -0.809963, -0.073388,
		32.513573, 33.007118, 48.427296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713905, 33.209835, 48.864811>,  <32.106262, 33.574093, 48.478664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713905, 33.209835, 48.864811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.044651, 32.994473, 48.799801>,  <32.243099, 32.865257, 48.760796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.044651, 32.994473, 48.799801>,  <31.713905, 33.209835, 48.864811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044651, 32.994473, 48.799801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149498, -0.489012, 0.859370,
		-0.542168, -0.686285, -0.484837,
		0.826864, -0.538405, -0.162528,
		32.292709, 32.832951, 48.751041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536144, 32.450535, 48.914921>,  <31.713905, 33.209835, 48.864811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536144, 32.450535, 48.914921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.915335, 32.528751, 49.015404>,  <32.142849, 32.575684, 49.075695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.915335, 32.528751, 49.015404>,  <31.536144, 32.450535, 48.914921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915335, 32.528751, 49.015404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145252, -0.436493, 0.887905,
		0.283276, -0.878200, -0.385381,
		0.947975, 0.195545, 0.251208,
		32.199726, 32.587414, 49.090767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.980343, 36.197224, 34.804199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257229, 36.088493, 35.071617>,  <39.423359, 36.023254, 35.232067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257229, 36.088493, 35.071617>,  <38.980343, 36.197224, 34.804199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257229, 36.088493, 35.071617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690238, 0.021156, 0.723273,
		-0.210747, -0.962114, -0.172979,
		0.692212, -0.271824, 0.668547,
		39.464893, 36.006947, 35.272182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651016, 35.631893, 35.152462>,  <38.980343, 36.197224, 34.804199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651016, 35.631893, 35.152462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928349, 35.794765, 35.390282>,  <39.094749, 35.892490, 35.532974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928349, 35.794765, 35.390282>,  <38.651016, 35.631893, 35.152462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928349, 35.794765, 35.390282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594976, -0.142023, 0.791096,
		0.406561, -0.902237, 0.143794,
		0.693334, 0.407183, 0.594550,
		39.136349, 35.916920, 35.568645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681313, 35.250889, 35.619053>,  <38.651016, 35.631893, 35.152462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681313, 35.250889, 35.619053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811150, 35.595673, 35.774834>,  <38.889053, 35.802544, 35.868301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811150, 35.595673, 35.774834>,  <38.681313, 35.250889, 35.619053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811150, 35.595673, 35.774834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500909, -0.192612, 0.843795,
		0.802327, -0.468970, 0.369241,
		0.324594, 0.861956, 0.389449,
		38.908527, 35.854259, 35.891666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877186, 35.024029, 36.329323>,  <38.681313, 35.250889, 35.619053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877186, 35.024029, 36.329323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848492, 35.422249, 36.353775>,  <38.831276, 35.661179, 36.368446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848492, 35.422249, 36.353775>,  <38.877186, 35.024029, 36.329323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848492, 35.422249, 36.353775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570378, -0.091225, 0.816301,
		0.818244, 0.023686, 0.574383,
		-0.071733, 0.995548, 0.061135,
		38.826973, 35.720913, 36.372116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064106, 35.234726, 37.019669>,  <38.877186, 35.024029, 36.329323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064106, 35.234726, 37.019669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835453, 35.521908, 36.860786>,  <38.698261, 35.694218, 36.765457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835453, 35.521908, 36.860786>,  <39.064106, 35.234726, 37.019669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835453, 35.521908, 36.860786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638912, -0.085753, 0.764485,
		0.514807, 0.690783, 0.507732,
		-0.571633, 0.717959, -0.397204,
		38.663963, 35.737297, 36.741627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917175, 35.755421, 37.533287>,  <39.064106, 35.234726, 37.019669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917175, 35.755421, 37.533287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628521, 35.814571, 37.262768>,  <38.455330, 35.850060, 37.100456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628521, 35.814571, 37.262768>,  <38.917175, 35.755421, 37.533287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628521, 35.814571, 37.262768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686942, -0.031971, 0.726009,
		0.085735, 0.988490, 0.124651,
		-0.721637, 0.147873, -0.676294,
		38.412029, 35.858932, 37.059879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389324, 36.233978, 37.870693>,  <38.917175, 35.755421, 37.533287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389324, 36.233978, 37.870693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197048, 36.053753, 37.569778>,  <38.081684, 35.945618, 37.389229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197048, 36.053753, 37.569778>,  <38.389324, 36.233978, 37.870693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197048, 36.053753, 37.569778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809680, -0.101338, 0.578056,
		-0.336686, 0.886975, -0.316098,
		-0.480689, -0.450562, -0.752285,
		38.052841, 35.918583, 37.344093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715645, 36.618519, 37.946346>,  <38.389324, 36.233978, 37.870693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715645, 36.618519, 37.946346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655075, 36.287186, 37.730591>,  <37.618732, 36.088387, 37.601139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655075, 36.287186, 37.730591>,  <37.715645, 36.618519, 37.946346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655075, 36.287186, 37.730591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798136, -0.219462, 0.561084,
		-0.583138, 0.515468, -0.627888,
		-0.151424, -0.828329, -0.539390,
		37.609650, 36.038689, 37.568775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073727, 36.647007, 37.789520>,  <37.715645, 36.618519, 37.946346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073727, 36.647007, 37.789520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161247, 36.259014, 37.747086>,  <37.213760, 36.026218, 37.721626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161247, 36.259014, 37.747086>,  <37.073727, 36.647007, 37.789520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161247, 36.259014, 37.747086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874367, -0.243162, 0.419945,
		-0.433136, 0.000869, -0.901328,
		0.218804, -0.969985, -0.106082,
		37.226887, 35.968018, 37.715260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470486, 36.377678, 37.377567>,  <37.073727, 36.647007, 37.789520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470486, 36.377678, 37.377567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646767, 36.085548, 37.586338>,  <36.752537, 35.910271, 37.711601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646767, 36.085548, 37.586338>,  <36.470486, 36.377678, 37.377567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646767, 36.085548, 37.586338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789111, -0.038048, 0.613070,
		-0.427880, -0.682044, -0.593073,
		0.440706, -0.730321, 0.521928,
		36.778980, 35.866451, 37.742916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901920, 36.011246, 37.595306>,  <36.470486, 36.377678, 37.377567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901920, 36.011246, 37.595306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199608, 35.879555, 37.827774>,  <36.378220, 35.800541, 37.967255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199608, 35.879555, 37.827774>,  <35.901920, 36.011246, 37.595306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199608, 35.879555, 37.827774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631684, -0.064152, 0.772567,
		-0.217070, -0.942068, -0.255713,
		0.744215, -0.329231, 0.581163,
		36.422874, 35.780788, 38.002125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584812, 35.477619, 37.924828>,  <35.901920, 36.011246, 37.595306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584812, 35.477619, 37.924828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898418, 35.534309, 38.166565>,  <36.086582, 35.568325, 38.311607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898418, 35.534309, 38.166565>,  <35.584812, 35.477619, 37.924828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898418, 35.534309, 38.166565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616356, 0.062286, 0.785000,
		0.073636, -0.987940, 0.136205,
		0.784017, 0.141755, 0.604337,
		36.133625, 35.576828, 38.347866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773457, 34.816383, 37.616779>,  <35.584812, 35.477619, 37.924828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773457, 34.816383, 37.616779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550327, 34.488655, 37.563789>,  <35.416451, 34.292019, 37.531994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550327, 34.488655, 37.563789>,  <35.773457, 34.816383, 37.616779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550327, 34.488655, 37.563789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122057, 0.076899, -0.989540,
		0.820937, -0.568155, 0.057108,
		-0.557820, -0.819320, -0.132477,
		35.382980, 34.242859, 37.524048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065060, 34.449287, 37.043518>,  <35.773457, 34.816383, 37.616779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065060, 34.449287, 37.043518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693108, 34.305012, 37.072437>,  <35.469936, 34.218445, 37.089790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693108, 34.305012, 37.072437>,  <36.065060, 34.449287, 37.043518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693108, 34.305012, 37.072437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013397, -0.163198, -0.986502,
		0.367620, -0.918297, 0.146923,
		-0.929880, -0.360689, 0.072298,
		35.414143, 34.196804, 37.094128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022865, 33.735104, 36.673954>,  <36.065060, 34.449287, 37.043518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022865, 33.735104, 36.673954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653378, 33.887917, 36.685211>,  <35.431686, 33.979607, 36.691963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653378, 33.887917, 36.685211>,  <36.022865, 33.735104, 36.673954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653378, 33.887917, 36.685211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044294, -0.033551, -0.998455,
		-0.380503, -0.923537, 0.047914,
		-0.923718, 0.382037, 0.028141,
		35.376263, 34.002529, 36.693653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631725, 33.268669, 36.260536>,  <36.022865, 33.735104, 36.673954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631725, 33.268669, 36.260536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416950, 33.605888, 36.273022>,  <35.288086, 33.808220, 36.280514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416950, 33.605888, 36.273022>,  <35.631725, 33.268669, 36.260536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416950, 33.605888, 36.273022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026906, 0.054093, -0.998173,
		-0.843193, -0.535117, -0.051727,
		-0.536937, 0.843044, 0.031213,
		35.255867, 33.858803, 36.282387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024899, 33.173008, 35.804504>,  <35.631725, 33.268669, 36.260536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024899, 33.173008, 35.804504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055744, 33.570297, 35.839294>,  <35.074249, 33.808670, 35.860168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055744, 33.570297, 35.839294>,  <35.024899, 33.173008, 35.804504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055744, 33.570297, 35.839294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171195, 0.099131, -0.980237,
		-0.982215, 0.060697, 0.177679,
		0.077111, 0.993222, 0.086977,
		35.078876, 33.868263, 35.865387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445118, 33.408180, 35.421188>,  <35.024899, 33.173008, 35.804504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445118, 33.408180, 35.421188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687340, 33.726044, 35.438255>,  <34.832672, 33.916763, 35.448498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687340, 33.726044, 35.438255>,  <34.445118, 33.408180, 35.421188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687340, 33.726044, 35.438255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154362, 0.169889, -0.973299,
		-0.780691, 0.582797, 0.225542,
		0.605553, 0.794660, 0.042669,
		34.869007, 33.964443, 35.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061768, 34.047867, 35.043324>,  <34.445118, 33.408180, 35.421188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061768, 34.047867, 35.043324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457600, 34.100323, 35.067131>,  <34.695099, 34.131794, 35.081417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457600, 34.100323, 35.067131>,  <34.061768, 34.047867, 35.043324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457600, 34.100323, 35.067131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043682, 0.120520, -0.991749,
		-0.137230, 0.984011, 0.113535,
		0.989576, 0.131138, 0.059523,
		34.754471, 34.139664, 35.084988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184814, 34.587120, 34.576180>,  <34.061768, 34.047867, 35.043324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184814, 34.587120, 34.576180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540264, 34.408993, 34.620064>,  <34.753536, 34.302116, 34.646393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540264, 34.408993, 34.620064>,  <34.184814, 34.587120, 34.576180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540264, 34.408993, 34.620064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167446, 0.092318, -0.981549,
		0.426971, 0.890602, 0.156603,
		0.888627, -0.445316, 0.109711,
		34.806850, 34.275398, 34.652977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607903, 35.016792, 34.291279>,  <34.184814, 34.587120, 34.576180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607903, 35.016792, 34.291279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822830, 34.679630, 34.302567>,  <34.951786, 34.477333, 34.309338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822830, 34.679630, 34.302567>,  <34.607903, 35.016792, 34.291279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822830, 34.679630, 34.302567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081053, 0.018310, -0.996541,
		0.839477, 0.537744, 0.078159,
		0.537316, -0.842909, 0.028215,
		34.984024, 34.426758, 34.311031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129143, 35.094933, 33.776848>,  <34.607903, 35.016792, 34.291279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129143, 35.094933, 33.776848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134396, 34.695801, 33.802689>,  <35.137547, 34.456322, 33.818192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134396, 34.695801, 33.802689>,  <35.129143, 35.094933, 33.776848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134396, 34.695801, 33.802689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275443, -0.058498, -0.959536,
		0.961228, 0.030391, 0.274076,
		0.013128, -0.997825, 0.064601,
		35.138332, 34.396454, 33.822067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782009, 34.771561, 33.475872>,  <35.129143, 35.094933, 33.776848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782009, 34.771561, 33.475872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477207, 34.514484, 33.444149>,  <35.294327, 34.360237, 33.425117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477207, 34.514484, 33.444149>,  <35.782009, 34.771561, 33.475872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477207, 34.514484, 33.444149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087556, 0.019087, -0.995977,
		0.641623, -0.765884, 0.041727,
		-0.762006, -0.642695, -0.079305,
		35.248604, 34.321674, 33.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046070, 34.112347, 33.404495>,  <35.782009, 34.771561, 33.475872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046070, 34.112347, 33.404495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691074, 34.188786, 33.236763>,  <35.478077, 34.234650, 33.136124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691074, 34.188786, 33.236763>,  <36.046070, 34.112347, 33.404495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691074, 34.188786, 33.236763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432458, 0.031047, -0.901119,
		-0.159180, -0.981080, -0.110194,
		-0.887492, 0.191094, -0.419334,
		35.424828, 34.246113, 33.110962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666245, 33.473412, 33.038425>,  <36.046070, 34.112347, 33.404495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666245, 33.473412, 33.038425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606651, 33.845818, 32.905151>,  <35.570896, 34.069263, 32.825188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606651, 33.845818, 32.905151>,  <35.666245, 33.473412, 33.038425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606651, 33.845818, 32.905151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564110, -0.196713, -0.801925,
		-0.812148, -0.307424, -0.495889,
		-0.148983, 0.931018, -0.333181,
		35.561954, 34.125122, 32.805199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909096, 33.415146, 32.455265>,  <35.666245, 33.473412, 33.038425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909096, 33.415146, 32.455265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859421, 33.811958, 32.463753>,  <35.829617, 34.050045, 32.468845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859421, 33.811958, 32.463753>,  <35.909096, 33.415146, 32.455265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859421, 33.811958, 32.463753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382517, 0.067598, -0.921473,
		-0.915564, -0.106319, -0.387864,
		-0.124189, 0.992032, 0.021222,
		35.822163, 34.109570, 32.470119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455124, 32.973701, 32.558167>,  <35.909096, 33.415146, 32.455265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455124, 32.973701, 32.558167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616646, 32.625042, 32.447044>,  <36.713558, 32.415848, 32.380371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616646, 32.625042, 32.447044>,  <36.455124, 32.973701, 32.558167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616646, 32.625042, 32.447044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339445, -0.424738, 0.839271,
		-0.849541, -0.244601, -0.467386,
		0.403803, -0.871647, -0.277804,
		36.737785, 32.363548, 32.363705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891304, 32.412884, 32.560318>,  <36.455124, 32.973701, 32.558167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891304, 32.412884, 32.560318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270206, 32.309429, 32.636017>,  <36.497547, 32.247356, 32.681435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270206, 32.309429, 32.636017>,  <35.891304, 32.412884, 32.560318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270206, 32.309429, 32.636017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290601, -0.444207, 0.847485,
		-0.135129, -0.857779, -0.495938,
		0.947255, -0.258640, 0.189247,
		36.554382, 32.231838, 32.692791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875835, 31.717907, 32.700657>,  <35.891304, 32.412884, 32.560318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875835, 31.717907, 32.700657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194675, 31.852495, 32.901226>,  <36.385979, 31.933249, 33.021568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194675, 31.852495, 32.901226>,  <35.875835, 31.717907, 32.700657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194675, 31.852495, 32.901226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291854, -0.512277, 0.807709,
		0.528637, -0.790164, -0.310135,
		0.797098, 0.336470, 0.501421,
		36.433804, 31.953436, 33.051651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286785, 31.143959, 32.977097>,  <35.875835, 31.717907, 32.700657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286785, 31.143959, 32.977097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332783, 31.461817, 33.215530>,  <36.360382, 31.652531, 33.358589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332783, 31.461817, 33.215530>,  <36.286785, 31.143959, 32.977097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332783, 31.461817, 33.215530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267931, -0.553013, 0.788917,
		0.956551, -0.250431, 0.149316,
		0.114996, 0.794645, 0.596083,
		36.367283, 31.700211, 33.394356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494190, 30.949434, 33.683460>,  <36.286785, 31.143959, 32.977097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494190, 30.949434, 33.683460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441887, 31.340624, 33.748543>,  <36.410503, 31.575336, 33.787590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441887, 31.340624, 33.748543>,  <36.494190, 30.949434, 33.683460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441887, 31.340624, 33.748543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193879, -0.135719, 0.971592,
		0.972272, 0.158588, -0.171862,
		-0.130757, 0.977973, 0.162703,
		36.402660, 31.634016, 33.797352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053265, 31.173502, 34.105167>,  <36.494190, 30.949434, 33.683460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053265, 31.173502, 34.105167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735756, 31.411020, 34.157822>,  <36.545250, 31.553532, 34.189415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735756, 31.411020, 34.157822>,  <37.053265, 31.173502, 34.105167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735756, 31.411020, 34.157822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184577, 0.028951, 0.982392,
		0.579531, 0.804094, -0.132582,
		-0.793773, 0.593797, 0.131639,
		36.497623, 31.589159, 34.197315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189308, 31.468981, 34.732498>,  <37.053265, 31.173502, 34.105167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189308, 31.468981, 34.732498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804928, 31.574791, 34.700024>,  <36.574299, 31.638277, 34.680538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804928, 31.574791, 34.700024>,  <37.189308, 31.468981, 34.732498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804928, 31.574791, 34.700024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089786, -0.020554, 0.995749,
		0.261734, 0.964159, 0.043502,
		-0.960955, 0.264527, -0.081188,
		36.516640, 31.654148, 34.675667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027515, 31.945429, 35.234489>,  <37.189308, 31.468981, 34.732498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027515, 31.945429, 35.234489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666245, 31.799732, 35.143627>,  <36.449482, 31.712315, 35.089111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666245, 31.799732, 35.143627>,  <37.027515, 31.945429, 35.234489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666245, 31.799732, 35.143627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174796, -0.171245, 0.969599,
		-0.392069, 0.915424, 0.090996,
		-0.903177, -0.364243, -0.227152,
		36.395290, 31.690458, 35.075481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569675, 32.085228, 35.882565>,  <37.027515, 31.945429, 35.234489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569675, 32.085228, 35.882565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354359, 31.820616, 35.673714>,  <36.225166, 31.661848, 35.548405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354359, 31.820616, 35.673714>,  <36.569675, 32.085228, 35.882565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354359, 31.820616, 35.673714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437595, -0.310077, 0.844016,
		-0.720243, 0.682808, -0.122571,
		-0.538294, -0.661533, -0.522124,
		36.192871, 31.622156, 35.517075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949245, 32.153831, 36.064514>,  <36.569675, 32.085228, 35.882565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949245, 32.153831, 36.064514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952618, 31.772554, 35.943611>,  <35.954639, 31.543789, 35.871071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952618, 31.772554, 35.943611>,  <35.949245, 32.153831, 36.064514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952618, 31.772554, 35.943611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404450, -0.279687, 0.870744,
		-0.914521, 0.114910, -0.387874,
		0.008426, -0.953190, -0.302255,
		35.955147, 31.486597, 35.852936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302963, 31.873631, 36.081448>,  <35.949245, 32.153831, 36.064514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302963, 31.873631, 36.081448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533592, 31.547792, 36.106735>,  <35.671970, 31.352289, 36.121906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533592, 31.547792, 36.106735>,  <35.302963, 31.873631, 36.081448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533592, 31.547792, 36.106735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496432, -0.287823, 0.818971,
		-0.648935, -0.503580, -0.570343,
		0.576575, -0.814595, 0.063215,
		35.706566, 31.303413, 36.125698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861755, 31.225969, 36.175392>,  <35.302963, 31.873631, 36.081448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861755, 31.225969, 36.175392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207436, 31.065117, 36.296352>,  <35.414845, 30.968605, 36.368927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207436, 31.065117, 36.296352>,  <34.861755, 31.225969, 36.175392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207436, 31.065117, 36.296352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434950, -0.294957, 0.850775,
		-0.252931, -0.866769, -0.429811,
		0.864202, -0.402134, 0.302397,
		35.466698, 30.944477, 36.387070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689262, 30.532495, 36.381870>,  <34.861755, 31.225969, 36.175392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689262, 30.532495, 36.381870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041607, 30.607428, 36.555763>,  <35.253014, 30.652386, 36.660099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041607, 30.607428, 36.555763>,  <34.689262, 30.532495, 36.381870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041607, 30.607428, 36.555763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355584, -0.344394, 0.868880,
		0.312487, -0.919946, -0.236751,
		0.880859, 0.187329, 0.434737,
		35.305866, 30.663626, 36.686184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828247, 29.942890, 36.650311>,  <34.689262, 30.532495, 36.381870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828247, 29.942890, 36.650311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041492, 30.208971, 36.859421>,  <35.169441, 30.368620, 36.984886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041492, 30.208971, 36.859421>,  <34.828247, 29.942890, 36.650311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041492, 30.208971, 36.859421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317250, -0.415639, 0.852406,
		0.784307, -0.620283, -0.010549,
		0.533117, 0.665202, 0.522774,
		35.201427, 30.408531, 37.016254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953663, 29.517437, 37.210548>,  <34.828247, 29.942890, 36.650311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953663, 29.517437, 37.210548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052898, 29.888956, 37.320663>,  <35.112442, 30.111868, 37.386734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052898, 29.888956, 37.320663>,  <34.953663, 29.517437, 37.210548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052898, 29.888956, 37.320663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325465, -0.187739, 0.926729,
		0.912427, -0.319512, 0.255715,
		0.248093, 0.928798, 0.275288,
		35.127327, 30.167595, 37.403252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327324, 29.414728, 37.834206>,  <34.953663, 29.517437, 37.210548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327324, 29.414728, 37.834206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183956, 29.787939, 37.821594>,  <35.097935, 30.011866, 37.814030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183956, 29.787939, 37.821594>,  <35.327324, 29.414728, 37.834206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183956, 29.787939, 37.821594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292428, -0.080138, 0.952924,
		0.886577, 0.350770, 0.301566,
		-0.358424, 0.933027, -0.031527,
		35.076427, 30.067846, 37.812138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550049, 29.661575, 38.436172>,  <35.327324, 29.414728, 37.834206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550049, 29.661575, 38.436172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246979, 29.906748, 38.346516>,  <35.065136, 30.053852, 38.292721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246979, 29.906748, 38.346516>,  <35.550049, 29.661575, 38.436172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246979, 29.906748, 38.346516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367868, -0.117421, 0.922435,
		0.539070, 0.781363, 0.314445,
		-0.757678, 0.612931, -0.224140,
		35.019676, 30.090628, 38.279274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552132, 30.179131, 38.930389>,  <35.550049, 29.661575, 38.436172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552132, 30.179131, 38.930389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181919, 30.189335, 38.779270>,  <34.959789, 30.195457, 38.688599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181919, 30.189335, 38.779270>,  <35.552132, 30.179131, 38.930389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181919, 30.189335, 38.779270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373337, 0.105274, 0.921703,
		0.063286, 0.994116, -0.087911,
		-0.925535, 0.025510, -0.377803,
		34.904259, 30.196987, 38.665928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246330, 30.735363, 39.218391>,  <35.552132, 30.179131, 38.930389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246330, 30.735363, 39.218391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926834, 30.526506, 39.098808>,  <34.735134, 30.401192, 39.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926834, 30.526506, 39.098808>,  <35.246330, 30.735363, 39.218391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926834, 30.526506, 39.098808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393963, 0.078312, 0.915784,
		-0.454756, 0.849256, -0.268255,
		-0.798743, -0.522141, -0.298962,
		34.687210, 30.369864, 39.009121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696918, 31.170269, 39.395462>,  <35.246330, 30.735363, 39.218391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696918, 31.170269, 39.395462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562958, 30.796492, 39.347034>,  <34.482582, 30.572226, 39.317978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562958, 30.796492, 39.347034>,  <34.696918, 31.170269, 39.395462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562958, 30.796492, 39.347034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352418, 0.005058, 0.935829,
		-0.873867, 0.356077, -0.331008,
		-0.334902, -0.934443, -0.121068,
		34.462486, 30.516159, 39.310715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073971, 31.191650, 39.718994>,  <34.696918, 31.170269, 39.395462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073971, 31.191650, 39.718994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103622, 30.793465, 39.695129>,  <34.121414, 30.554554, 39.680813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103622, 30.793465, 39.695129>,  <34.073971, 31.191650, 39.718994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103622, 30.793465, 39.695129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393847, -0.084184, 0.915313,
		-0.916182, -0.044356, -0.398300,
		0.074131, -0.995463, -0.059658,
		34.125862, 30.494825, 39.677231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581261, 30.981726, 40.136276>,  <34.073971, 31.191650, 39.718994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581261, 30.981726, 40.136276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791218, 30.642254, 40.110256>,  <33.917191, 30.438570, 40.094643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791218, 30.642254, 40.110256>,  <33.581261, 30.981726, 40.136276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791218, 30.642254, 40.110256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334298, -0.275835, 0.901199,
		-0.782772, -0.451286, -0.428495,
		0.524893, -0.848679, -0.065052,
		33.948685, 30.387650, 40.090740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066456, 30.458122, 40.384804>,  <33.581261, 30.981726, 40.136276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066456, 30.458122, 40.384804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428612, 30.291334, 40.416840>,  <33.645905, 30.191261, 40.436062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428612, 30.291334, 40.416840>,  <33.066456, 30.458122, 40.384804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428612, 30.291334, 40.416840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202148, -0.257443, 0.944912,
		-0.373382, -0.871699, -0.317375,
		0.905385, -0.416970, 0.080088,
		33.700226, 30.166243, 40.440865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898502, 29.764856, 40.551567>,  <33.066456, 30.458122, 40.384804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898502, 29.764856, 40.551567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275997, 29.825605, 40.669067>,  <33.502495, 29.862055, 40.739567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275997, 29.825605, 40.669067>,  <32.898502, 29.764856, 40.551567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275997, 29.825605, 40.669067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176717, -0.519203, 0.836181,
		0.279508, -0.841049, -0.463155,
		0.943741, 0.151872, 0.293749,
		33.559120, 29.871166, 40.757191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993069, 29.250021, 41.044415>,  <32.898502, 29.764856, 40.551567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993069, 29.250021, 41.044415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312809, 29.472029, 41.136494>,  <33.504654, 29.605232, 41.191742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312809, 29.472029, 41.136494>,  <32.993069, 29.250021, 41.044415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312809, 29.472029, 41.136494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157142, -0.562880, 0.811463,
		0.579951, -0.612471, -0.537156,
		0.799352, 0.555018, 0.230198,
		33.552616, 29.638535, 41.205551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591648, 28.813551, 41.190025>,  <32.993069, 29.250021, 41.044415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591648, 28.813551, 41.190025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669476, 29.165749, 41.362938>,  <33.716171, 29.377068, 41.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669476, 29.165749, 41.362938>,  <33.591648, 28.813551, 41.190025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669476, 29.165749, 41.362938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188686, -0.466073, 0.864392,
		0.962569, -0.086621, -0.256822,
		0.194572, 0.880496, 0.432283,
		33.727848, 29.429897, 41.492622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145149, 28.687326, 41.575321>,  <33.591648, 28.813551, 41.190025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145149, 28.687326, 41.575321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998779, 29.012171, 41.757122>,  <33.910957, 29.207077, 41.866203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998779, 29.012171, 41.757122>,  <34.145149, 28.687326, 41.575321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998779, 29.012171, 41.757122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025766, -0.497029, 0.867351,
		0.930288, 0.305674, 0.202800,
		-0.365924, 0.812112, 0.454504,
		33.889004, 29.255804, 41.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497326, 28.764341, 42.182297>,  <34.145149, 28.687326, 41.575321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497326, 28.764341, 42.182297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153450, 28.964201, 42.224796>,  <33.947124, 29.084116, 42.250298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153450, 28.964201, 42.224796>,  <34.497326, 28.764341, 42.182297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153450, 28.964201, 42.224796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128105, -0.412230, 0.902029,
		0.494498, 0.761851, 0.418396,
		-0.859687, 0.499650, 0.106250,
		33.895542, 29.114096, 42.256672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239414, 28.951061, 42.348003>,  <34.497326, 28.764341, 42.182297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239414, 28.951061, 42.348003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589806, 28.927179, 42.539459>,  <35.800041, 28.912851, 42.654331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589806, 28.927179, 42.539459>,  <35.239414, 28.951061, 42.348003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589806, 28.927179, 42.539459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470178, 0.327179, -0.819687,
		-0.107661, 0.943074, 0.314674,
		0.875981, -0.059704, 0.478637,
		35.852600, 28.909267, 42.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670143, 29.443075, 42.010044>,  <35.239414, 28.951061, 42.348003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670143, 29.443075, 42.010044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929626, 29.216007, 42.212799>,  <36.085316, 29.079767, 42.334450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929626, 29.216007, 42.212799>,  <35.670143, 29.443075, 42.010044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929626, 29.216007, 42.212799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694790, 0.169967, -0.698840,
		0.310555, 0.805521, 0.504669,
		0.648708, -0.567668, 0.506885,
		36.124237, 29.045708, 42.364864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259262, 29.849920, 42.168285>,  <35.670143, 29.443075, 42.010044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259262, 29.849920, 42.168285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389462, 29.471775, 42.160965>,  <36.467583, 29.244888, 42.156570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389462, 29.471775, 42.160965>,  <36.259262, 29.849920, 42.168285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389462, 29.471775, 42.160965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750641, 0.270130, -0.602966,
		0.574967, 0.182528, 0.797557,
		0.325502, -0.945364, -0.018303,
		36.487114, 29.188166, 42.155476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029175, 29.822113, 42.324074>,  <36.259262, 29.849920, 42.168285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029175, 29.822113, 42.324074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972107, 29.459925, 42.164192>,  <36.937866, 29.242611, 42.068264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972107, 29.459925, 42.164192>,  <37.029175, 29.822113, 42.324074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972107, 29.459925, 42.164192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815578, 0.121253, -0.565800,
		0.560781, -0.406715, 0.721184,
		-0.142673, -0.905472, -0.399705,
		36.929306, 29.188284, 42.044281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622131, 29.514944, 42.372589>,  <37.029175, 29.822113, 42.324074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622131, 29.514944, 42.372589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420258, 29.363411, 42.062290>,  <37.299133, 29.272491, 41.876110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420258, 29.363411, 42.062290>,  <37.622131, 29.514944, 42.372589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420258, 29.363411, 42.062290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788523, 0.163538, -0.592863,
		0.351461, -0.910900, 0.216185,
		-0.504685, -0.378835, -0.775743,
		37.268852, 29.249760, 41.829567>
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
